  .intel_syntax noprefix
  .text
  .globl proc_event_α
proc_event_α:
#=======================================================================================================================
    .global proc_event_α
    .global proc_event_β
    .global proc_event_γ
    .global proc_event_ω
push r12
  mov r12, rdi
proc_event_α_body:
xchain0_n0_α:
# IR_LIT_STRING
bb1_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string ""
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
xchain0_n2_α:
bb3_α:
  .section .rodata
  .Lcall3_pname: .string "geddate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall3_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n4_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_STRING
bb5_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n10_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string ""
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n4_α
 xchain0_n5_β:
 jmp xchain0_n4_α
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n10_α
xchain0_n7_α:
# IR_LIT_STRING
bb8_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "PLAC"
xchain0_n8_α:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "gedval"
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
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
xchain0_n8_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
xchain0_n9_α:
bb10_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n10_α
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n14_α
xchain0_n11_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n10_α
 xchain0_n11_β:
 jmp xchain0_n10_α
xchain0_n12_α:
# IR_UNOP
bb13_α:
 mov eax, dword ptr [r12 + 752]
 cmp eax, 99
 je xchain0_n14_α
 cmp eax, 0
 jne xchain0_n14_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
# IR_LIT_STRING
bb14_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n24_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "   "
xchain0_n14_α:
# IR_LIT_STRING
bb15_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n24_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "   "
xchain0_n15_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n24_α
xchain0_n16_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n24_α
xchain0_n17_α:
# IR_LIT_STRING
bb18_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n24_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string " "
xchain0_n18_α:
# IR_LIT_STRING
bb19_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n24_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string " "
xchain0_n19_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n24_α
xchain0_n20_α:
# IR_VAR
bb21_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n26_α
xchain0_n21_α:
# IR_UNOP
bb22_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain0_n24_α
 cmp eax, 0
 je xchain0_n24_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
xchain0_n22_α:
# IR_UNOP
bb23_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain0_n26_α
 cmp eax, 0
 je xchain0_n26_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n26_α
xchain0_n23_α:
bb24_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+96]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+112]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 120], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
# marshal arg3 = producer-box slot [r12+208] -> [r12+144]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn32: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 96]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_RETURN
bb25_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_event_γ
xchain0_n25_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb26_α:
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain0_n26_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain0_n31_α
 xchain0_n25_β:
 jmp xchain0_n24_α
xchain0_n26_α:
# IR_LIT_STRING
bb27_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n24_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "            "
xchain0_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb28_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain0_n24_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n24_α
 xchain0_n27_β:
 jmp xchain0_n24_α
xchain0_n28_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb29_α:
 jmp qword ptr [r12 + 416]
 xchain0_n28_β:
 jmp xchain0_n24_α
xchain0_n29_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb30_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain0_n24_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n24_α
xchain0_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb31_α:
 jmp qword ptr [r12 + 64]
 xchain0_n30_β:
 jmp xchain0_n24_α
xchain0_n31_α:
# IR_LIT_STRING
bb32_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n28_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "  "
xchain0_n32_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n28_α
xchain0_n33_α:
bb34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+256]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+272]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 280], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+288]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 296], rax
# marshal arg3 = producer-box slot [r12+400] -> [r12+304]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 312], rax
# marshal arg4 = producer-box slot [r12+480] -> [r12+320]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 328], rax
# marshal arg5 = producer-box slot [r12+496] -> [r12+336]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn49: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn49]
 lea rsi, [r12 + 256]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n24_α
xchain0_n34_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb35_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain0_n28_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n24_α
 xchain0_n34_β:
 jmp xchain0_n24_α
proc_event_β:
jmp proc_event_ω
proc_event_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_event_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_refto_α
proc_refto_α:
#=======================================================================================================================
    .global proc_refto_α
    .global proc_refto_β
    .global proc_refto_γ
    .global proc_refto_ω
push r12
  mov r12, rdi
proc_refto_α_body:
xchain52_n0_α:
# IR_LIT_STRING
bb36_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp xchain52_n7_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "   "
xchain52_n1_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain52_n2_α
 xchain52_n1_β:
 jmp xchain52_n7_α
xchain52_n2_α:
# IR_LIT_STRING
bb38_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain52_n3_α
 xchain52_n2_β:
 jmp xchain52_n7_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string " ["
xchain52_n3_α:
# IR_VAR_REF gva
bb39_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain52_n4_α
 xchain52_n3_β:
 jmp xchain52_n7_α
xchain52_n4_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
 jmp xchain52_n5_α
 xchain52_n4_β:
 jmp xchain52_n7_α
xchain52_n5_α:
# IR_SUBSCRIPT x[i] variable
bb41_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain52_n7_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain52_n6_α
 xchain52_n5_β:
 jmp xchain52_n7_α
xchain52_n6_α:
# IR_DEREF variable -> value
bb42_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain52_n7_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain52_n8_α
 xchain52_n6_β:
 jmp xchain52_n7_α
xchain52_n7_α:
# IR_RETURN
bb43_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_refto_γ
xchain52_n8_α:
# IR_FIELD_GET
bb44_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain52_n7_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain52_n9_α
 xchain52_n8_β:
 jmp xchain52_n7_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "n"
xchain52_n9_α:
# IR_LIT_STRING
bb45_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain52_n10_α
 xchain52_n9_β:
 jmp xchain52_n7_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "] "
xchain52_n10_α:
# IR_VAR
bb46_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
 jmp xchain52_n11_α
 xchain52_n10_β:
 jmp xchain52_n7_α
xchain52_n11_α:
bb47_α:
  .section .rodata
  .Lcall47_pname: .string "gedfnf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain52_n7_α
 jmp xchain52_n12_α
xchain52_n11_β:
 jmp xchain52_n7_α
xchain52_n12_α:
bb48_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+64]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+80]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 88], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+96]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 104], rax
# marshal arg3 = producer-box slot [r12+208] -> [r12+112]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 120], rax
# marshal arg4 = producer-box slot [r12+288] -> [r12+128]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 136], rax
# marshal arg5 = producer-box slot [r12+304] -> [r12+144]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn70: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn70]
 lea rsi, [r12 + 64]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain52_n7_α
 jmp xchain52_n7_α
 xchain52_n12_β:
 jmp xchain52_n7_α
proc_refto_β:
jmp proc_refto_ω
proc_refto_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_refto_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_sortkey_α
proc_sortkey_α:
#=======================================================================================================================
    .global proc_sortkey_α
    .global proc_sortkey_β
    .global proc_sortkey_γ
    .global proc_sortkey_ω
push r12
  mov r12, rdi
proc_sortkey_α_body:
xchain71_n0_α:
# IR_VAR
bb49_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain71_n1_α
 xchain71_n0_β:
 jmp proc_sortkey_ω
xchain71_n1_α:
bb50_α:
  .section .rodata
  .Lcall50_pname: .string "gedlnf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall50_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain71_n2_α
xchain71_n1_β:
 jmp proc_sortkey_ω
xchain71_n2_α:
bb51_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn76: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain71_n3_α
 xchain71_n2_β:
 jmp proc_sortkey_ω
xchain71_n3_α:
# IR_RETURN
bb52_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_sortkey_γ
proc_sortkey_β:
jmp proc_sortkey_ω
proc_sortkey_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_sortkey_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedload_α
proc_gedload_α:
#=======================================================================================================================
    .global proc_gedload_α
    .global proc_gedload_β
    .global proc_gedload_γ
    .global proc_gedload_ω
push r12
  mov r12, rdi
proc_gedload_α_body:
xchain78_n0_α:
# IR_LIT_INTEGER
bb53_α:
 mov qword ptr [r12 + 2336], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 2344], rax
 jmp xchain78_n1_α
 xchain78_n0_β:
 jmp xchain78_n2_α
.Lx79_0:
 .quad 0
xchain78_n1_α:
bb54_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain78_n2_α
 xchain78_n1_β:
 jmp xchain78_n2_α
xchain78_n2_α:
# IR_LIT_INTEGER
bb55_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain78_n3_α
 xchain78_n2_β:
 jmp xchain78_n12_α
.Lx81_0:
 .quad 18446744073709551615
xchain78_n3_α:
# IR_KEYWORD_null
bb56_α:
 mov qword ptr [r12 + 2160], 0
 mov qword ptr [r12 + 2168], 0
 jmp xchain78_n4_α
 xchain78_n3_β:
 jmp xchain78_n12_α
xchain78_n4_α:
# IR_LIT_STRING
bb57_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain78_n5_α
 xchain78_n4_β:
 jmp xchain78_n12_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "ROOT"
xchain78_n5_α:
# IR_LIT_STRING
bb58_α:
 mov qword ptr [r12 + 2208], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain78_n6_α
 xchain78_n5_β:
 jmp xchain78_n12_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string ""
xchain78_n6_α:
# IR_VAR
bb59_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2232], rax
 jmp xchain78_n7_α
 xchain78_n6_β:
 jmp xchain78_n12_α
xchain78_n7_α:
# IR_KEYWORD_null
bb60_α:
 mov qword ptr [r12 + 2240], 0
 mov qword ptr [r12 + 2248], 0
 jmp xchain78_n8_α
 xchain78_n7_β:
 jmp xchain78_n12_α
xchain78_n8_α:
# IR_KEYWORD_null
bb61_α:
 mov qword ptr [r12 + 2272], 0
 mov qword ptr [r12 + 2280], 0
 jmp xchain78_n9_α
 xchain78_n8_β:
 jmp xchain78_n12_α
xchain78_n9_α:
# IR_MAKE_LIST
bb62_α:
 lea rdi, [r12 + 2320]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain78_n10_α
 xchain78_n9_β:
 jmp xchain78_n12_α
xchain78_n10_α:
bb63_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2144] -> [r12+2016]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [r12+2160] -> [r12+2032]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2040], rax
# marshal arg2 = producer-box slot [r12+2192] -> [r12+2048]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2056], rax
# marshal arg3 = producer-box slot [r12+2208] -> [r12+2064]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2072], rax
# marshal arg4 = producer-box slot [r12+2224] -> [r12+2080]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2088], rax
# marshal arg5 = producer-box slot [r12+2240] -> [r12+2096]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2104], rax
# marshal arg6 = producer-box slot [r12+2272] -> [r12+2112]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2120], rax
# marshal arg7 = producer-box slot [r12+2304] -> [r12+2128]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn92: .string "gednode"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 2016]
 mov edx, 8
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain78_n12_α
 jmp xchain78_n11_α
 xchain78_n10_β:
 jmp xchain78_n12_α
xchain78_n11_α:
bb64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain78_n13_α
 xchain78_n11_β:
 jmp xchain78_n12_α
xchain78_n12_α:
bb65_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn95: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn95]
 lea rsi, [r12 + 1968]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain78_n15_α
 jmp xchain78_n14_α
 xchain78_n12_β:
 jmp xchain78_n15_α
xchain78_n13_α:
bb66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain78_n12_α
 xchain78_n13_β:
 jmp xchain78_n12_α
xchain78_n14_α:
bb67_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain78_n15_α
 xchain78_n14_β:
 jmp xchain78_n15_α
xchain78_n15_α:
# IR_MAKE_LIST
bb68_α:
 lea rdi, [r12 + 1936]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain78_n16_α
 xchain78_n15_β:
 jmp xchain78_n17_α
xchain78_n16_α:
bb69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain78_n17_α
 xchain78_n16_β:
 jmp xchain78_n17_α
xchain78_n17_α:
# IR_MAKE_LIST
bb70_α:
 lea rdi, [r12 + 1904]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain78_n18_α
 xchain78_n17_β:
 jmp xchain78_n19_α
xchain78_n18_α:
bb71_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1888]
 mov rdx, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain78_n19_α
 xchain78_n18_β:
 jmp xchain78_n19_α
xchain78_n19_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain78_n20_α
 xchain78_n19_β:
 jmp xchain78_n22_α
xchain78_n20_α:
bb73_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn107: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain78_n22_α
 jmp xchain78_n21_α
 xchain78_n20_β:
 jmp xchain78_n22_α
xchain78_n21_α:
# IR_LIT_CHARSET
bb74_α:
 mov qword ptr [r12 + 464], 1
 mov dword ptr [r12 + 468], -1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain78_n23_α
 xchain78_n21_β:
 jmp xchain78_n22_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "\t\n "
xchain78_n22_α:
# IR_VAR
bb75_α:
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 216], rax
 jmp xchain78_n24_α
 xchain78_n22_β:
 jmp xchain78_n27_α
xchain78_n23_α:
bb76_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn112: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain78_n22_α
 jmp xchain78_n25_α
 xchain78_n23_β:
 jmp xchain78_n22_α
xchain78_n24_α:
bb77_α:
  .section .rodata
  .Lcall77_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain78_n27_α
 jmp xchain78_n26_α
xchain78_n24_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain78_n27_α
 jmp xchain78_n26_α
xchain78_n25_α:
bb78_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain78_n28_α
 xchain78_n25_β:
 jmp xchain78_n22_α
xchain78_n26_α:
bb79_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain78_n29_α
 xchain78_n26_β:
 jmp xchain78_n27_α
xchain78_n27_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 120], rax
 jmp xchain78_n30_α
 xchain78_n27_β:
 jmp proc_gedload_ω
xchain78_n28_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1848], rax
 jmp xchain78_n31_α
 xchain78_n28_β:
 jmp xchain78_n38_α
xchain78_n29_α:
# IR_VAR
bb82_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 248], rax
 jmp xchain78_n32_α
 xchain78_n29_β:
 jmp xchain78_n24_β
xchain78_n30_α:
# IR_VAR
bb83_α:
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 136], rax
 jmp xchain78_n33_α
 xchain78_n30_β:
 jmp proc_gedload_ω
xchain78_n31_α:
# IR_LIT_INTEGER
bb84_α:
 mov qword ptr [r12 + 1856], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain78_n34_α
 xchain78_n31_β:
 jmp xchain78_n38_α
.Lx00002_0:
 .quad 1
xchain78_n32_α:
# IR_FIELD_GET lv
bb85_α:
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n24_β
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain78_n35_α
 xchain78_n32_β:
 jmp xchain78_n24_β
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "ref"
xchain78_n33_α:
# IR_VAR
bb86_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 152], rax
 jmp xchain78_n36_α
 xchain78_n33_β:
 jmp proc_gedload_ω
xchain78_n34_α:
bb87_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2480]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 1856]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 2480]
 cmp eax, 6
 jne .Lx00004_2
 mov eax, dword ptr [r12 + 1856]
 cmp eax, 6
 jne .Lx00004_2
.Lx00004_1:
 mov rax, qword ptr [r12 + 2488]
 mov rcx, qword ptr [r12 + 1864]
 add rax, rcx
 mov qword ptr [r12 + 1824], 6
 mov qword ptr [r12 + 1832], rax
 jmp xchain78_n37_α
.Lx00004_0:
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 mov r8d, 0
 lea r9, [r12 + 1824]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00004_3
.Lx00004_2:
 mov rdi, qword ptr [r12 + 2480]
 mov rsi, qword ptr [r12 + 2488]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain78_n38_α
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
.Lx00004_3:
 jmp xchain78_n37_α
 xchain78_n34_β:
 jmp xchain78_n38_α
xchain78_n35_α:
# IR_VAR_REF local
bb88_α:
 lea rdi, [r12 + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain78_n39_α
 xchain78_n35_β:
 jmp xchain78_n24_β
xchain78_n36_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain78_n40_α
 xchain78_n36_β:
 jmp proc_gedload_ω
xchain78_n37_α:
bb90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain78_n38_α
 xchain78_n37_β:
 jmp xchain78_n38_α
xchain78_n38_α:
# IR_VAR
bb91_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1784], rax
 jmp xchain78_n41_α
 xchain78_n38_β:
 jmp xchain78_n45_α
xchain78_n39_α:
# IR_VAR
bb92_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 312], rax
 jmp xchain78_n42_α
 xchain78_n39_β:
 jmp xchain78_n24_β
xchain78_n40_α:
bb93_α:
# BOX IR_CALL gedcom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+48]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [r12+128] -> [r12+64]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 72], rax
# marshal arg2 = producer-box slot [r12+144] -> [r12+80]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 88], rax
# marshal arg3 = producer-box slot [r12+160] -> [r12+96]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn139: .string "gedcom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 48]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_gedload_ω
 jmp xchain78_n43_α
 xchain78_n40_β:
 jmp proc_gedload_ω
xchain78_n41_α:
# IR_UNOP
bb94_α:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain78_n44_α
 xchain78_n41_β:
 jmp xchain78_n45_α
xchain78_n42_α:
# IR_FIELD_GET
bb95_α:
 mov rdi, qword ptr [rip + .Lx00005_0]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n24_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain78_n46_α
 xchain78_n42_β:
 jmp xchain78_n24_β
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "data"
xchain78_n43_α:
# IR_RETURN
bb96_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedload_γ
xchain78_n44_α:
# IR_LIT_INTEGER
bb97_α:
 mov qword ptr [r12 + 1792], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain78_n47_α
 xchain78_n44_β:
 jmp xchain78_n45_α
.Lx00006_0:
 .quad 0
xchain78_n45_α:
# IR_VAR
bb98_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1704], rax
 jmp xchain78_n48_α
 xchain78_n45_β:
 jmp xchain78_n52_α
xchain78_n46_α:
# IR_SUBSCRIPT x[i] variable
bb99_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain78_n24_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain78_n49_α
 xchain78_n46_β:
 jmp xchain78_n24_β
xchain78_n47_α:
bb00007_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 6
 jne .Lx00008_2
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00008_2
.Lx00008_1:
 mov rax, qword ptr [r12 + 1768]
 mov rcx, qword ptr [r12 + 1800]
 cmp rax, rcx
 jne xchain78_n45_α
 mov rcx, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rcx
 mov rcx, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rcx
 jmp xchain78_n19_α
.Lx00008_0:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 9
 lea r9, [r12 + 1744]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00008_1
 cmp eax, 1
 je xchain78_n45_α
 jmp xchain78_n19_α
.Lx00008_2:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain78_n45_α
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
 jmp xchain78_n19_α
 xchain78_n47_β:
 jmp xchain78_n45_α
xchain78_n48_α:
bb00009_α:
  .section .rodata
  .Lcall00009_pname: .string "gedscan"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00009_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain78_n52_α
 jmp xchain78_n51_α
xchain78_n48_β:
 jmp xchain78_n52_α
xchain78_n49_α:
# IR_DEREF variable -> value
bb00010_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain78_n24_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain78_n53_α
 xchain78_n49_β:
 jmp xchain78_n24_β
xchain78_n50_α:
 jmp xchain78_n19_α
xchain78_n50_β:
 jmp xchain78_n19_α
xchain78_n51_α:
bb00011_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain78_n54_α
 xchain78_n51_β:
 jmp xchain78_n52_α
xchain78_n52_α:
# IR_KEYWORD_null
bb00012_α:
 mov qword ptr [r12 + 1632], 0
 mov qword ptr [r12 + 1640], 0
 jmp xchain78_n55_α
 xchain78_n52_β:
 jmp xchain78_n54_α
xchain78_n53_α:
# IR_ASSIGN_VAR write through variable
bb00013_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n24_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain78_n24_β
 xchain78_n53_β:
 jmp xchain78_n24_β
xchain78_n54_α:
# IR_VAR
bb00014_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 1368], rax
 jmp xchain78_n56_α
 xchain78_n54_β:
 jmp xchain78_n62_α
xchain78_n55_α:
# IR_KEYWORD_read
bb00001_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain78_n57_α
 xchain78_n55_β:
 jmp xchain78_n19_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "&errout"
xchain78_n56_α:
# IR_FIELD_GET lv
bb00016_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n62_α
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain78_n58_α
 xchain78_n56_β:
 jmp xchain78_n62_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "lnum"
xchain78_n57_α:
# IR_LIT_STRING
bb00018_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain78_n59_α
 xchain78_n57_β:
 jmp xchain78_n19_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "ERR, line "
xchain78_n58_α:
# IR_VAR
bb00020_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1400], rax
 jmp xchain78_n60_α
 xchain78_n58_β:
 jmp xchain78_n62_α
xchain78_n59_α:
# IR_VAR
bb00021_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1592], rax
 jmp xchain78_n61_α
 xchain78_n59_β:
 jmp xchain78_n19_α
xchain78_n60_α:
# IR_ASSIGN_VAR write through variable
bb00022_α:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n62_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain78_n62_α
 xchain78_n60_β:
 jmp xchain78_n62_α
xchain78_n61_α:
# IR_LIT_STRING
bb00023_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain78_n63_α
 xchain78_n61_β:
 jmp xchain78_n19_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string ": "
xchain78_n62_α:
# IR_VAR
bb00025_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 1304], rax
 jmp xchain78_n64_α
 xchain78_n62_β:
 jmp xchain78_n69_α
xchain78_n63_α:
# IR_VAR
bb00026_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1624], rax
 jmp xchain78_n65_α
 xchain78_n63_β:
 jmp xchain78_n19_α
xchain78_n64_α:
# IR_FIELD_GET lv
bb00027_α:
 mov rdi, qword ptr [rip + .Lx00028_0]
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n69_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain78_n66_α
 xchain78_n64_β:
 jmp xchain78_n69_α
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "sub"
xchain78_n65_α:
bb00029_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1536] -> [r12+1456]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [r12+1568] -> [r12+1472]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [r12+1584] -> [r12+1488]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1496], rax
# marshal arg3 = producer-box slot [r12+1600] -> [r12+1504]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1512], rax
# marshal arg4 = producer-box slot [r12+1616] -> [r12+1520]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn171: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 1456]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain78_n19_α
 jmp xchain78_n19_α
 xchain78_n65_β:
 jmp xchain78_n19_α
xchain78_n66_α:
# IR_MAKE_LIST
bb00030_α:
 lea rdi, [r12 + 1344]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain78_n68_α
 xchain78_n66_β:
 jmp xchain78_n69_α
xchain78_n67_α:
 jmp xchain78_n19_α
xchain78_n67_β:
 jmp xchain78_n19_α
xchain78_n68_α:
# IR_ASSIGN_VAR write through variable
bb00031_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n69_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain78_n69_α
 xchain78_n68_β:
 jmp xchain78_n69_α
xchain78_n69_α:
# IR_VAR
bb00032_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1192], rax
 jmp xchain78_n70_α
 xchain78_n69_β:
 jmp xchain78_n75_α
xchain78_n70_α:
# IR_FIELD_GET
bb00033_α:
 mov rdi, qword ptr [rip + .Lx00034_0]
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n75_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain78_n71_α
 xchain78_n70_β:
 jmp xchain78_n75_α
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "level"
xchain78_n71_α:
# IR_VAR
bb00002_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 1224], rax
 jmp xchain78_n72_α
 xchain78_n71_β:
 jmp xchain78_n75_α
xchain78_n72_α:
# IR_FIELD_GET
bb00003_α:
 mov rdi, qword ptr [rip + .Lx00035_0]
 mov rsi, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n75_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain78_n73_α
 xchain78_n72_β:
 jmp xchain78_n75_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "level"
xchain78_n73_α:
bb00036_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 100
 je .Lx00037_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00037_0
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 6
 jne .Lx00037_2
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00037_2
.Lx00037_1:
 mov rax, qword ptr [r12 + 1176]
 mov rcx, qword ptr [r12 + 1208]
 cmp rax, rcx
 jl xchain78_n75_α
 mov rcx, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rcx
 mov rcx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rcx
 jmp xchain78_n74_α
.Lx00037_0:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 8
 lea r9, [r12 + 1152]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00037_1
 cmp eax, 1
 je xchain78_n75_α
 jmp xchain78_n74_α
.Lx00037_2:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain78_n75_α
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
 jmp xchain78_n74_α
 xchain78_n73_β:
 jmp xchain78_n75_α
xchain78_n74_α:
# IR_VAR
bb00038_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1272], rax
 jmp xchain78_n76_α
 xchain78_n74_β:
 jmp xchain78_n69_α
xchain78_n75_α:
# IR_VAR
bb00004_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1128], rax
 jmp xchain78_n77_α
 xchain78_n75_β:
 jmp xchain78_n81_α
xchain78_n76_α:
# IR_FIELD_GET
bb00039_α:
 mov rdi, qword ptr [rip + .Lx00040_0]
 mov rsi, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n69_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain78_n78_α
 xchain78_n76_β:
 jmp xchain78_n69_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "parent"
xchain78_n77_α:
# IR_FIELD_GET
bb00041_α:
 mov rdi, qword ptr [rip + .Lx00042_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n81_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain78_n79_α
 xchain78_n77_β:
 jmp xchain78_n81_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "sub"
xchain78_n78_α:
bb00043_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain78_n69_α
 xchain78_n78_β:
 jmp xchain78_n69_α
xchain78_n79_α:
# IR_VAR
bb00044_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 1144], rax
 jmp xchain78_n80_α
 xchain78_n79_β:
 jmp xchain78_n81_α
xchain78_n80_α:
bb00045_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn193: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain78_n81_α
 jmp xchain78_n81_α
 xchain78_n80_β:
 jmp xchain78_n81_α
xchain78_n81_α:
# IR_VAR
bb00046_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 1016], rax
 jmp xchain78_n82_α
 xchain78_n81_β:
 jmp xchain78_n85_α
xchain78_n82_α:
# IR_FIELD_GET lv
bb00047_α:
 mov rdi, qword ptr [rip + .Lx00048_0]
 mov rsi, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n85_α
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain78_n83_α
 xchain78_n82_β:
 jmp xchain78_n85_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "parent"
xchain78_n83_α:
# IR_VAR
bb00049_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 1048], rax
 jmp xchain78_n84_α
 xchain78_n83_β:
 jmp xchain78_n85_α
xchain78_n84_α:
# IR_ASSIGN_VAR write through variable
bb00050_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n85_α
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain78_n85_α
 xchain78_n84_β:
 jmp xchain78_n85_α
xchain78_n85_α:
# IR_VAR
bb00051_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 984], rax
 jmp xchain78_n86_α
 xchain78_n85_β:
 jmp xchain78_n87_α
xchain78_n86_α:
bb00052_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain78_n87_α
 xchain78_n86_β:
 jmp xchain78_n87_α
xchain78_n87_α:
# IR_VAR_REF local
bb00053_α:
 lea rdi, [r12 + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain78_n88_α
 xchain78_n87_β:
 jmp xchain78_n92_α
xchain78_n88_α:
# IR_VAR
bb00005_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 904], rax
 jmp xchain78_n89_α
 xchain78_n88_β:
 jmp xchain78_n92_α
xchain78_n89_α:
# IR_FIELD_GET
bb00054_α:
 mov rdi, qword ptr [rip + .Lx00055_0]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n92_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain78_n90_α
 xchain78_n89_β:
 jmp xchain78_n92_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "id"
xchain78_n90_α:
# IR_UNOP
bb00006_α:
 mov eax, dword ptr [r12 + 880]
 cmp eax, 99
 je xchain78_n92_α
 cmp eax, 0
 je xchain78_n92_α
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 872], rax
 jmp xchain78_n91_α
 xchain78_n90_β:
 jmp xchain78_n92_α
xchain78_n91_α:
# IR_SUBSCRIPT x[i] variable
bb00056_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain78_n92_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain78_n93_α
 xchain78_n91_β:
 jmp xchain78_n92_α
xchain78_n92_α:
# IR_VAR
bb00057_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 520], rax
 jmp xchain78_n94_α
 xchain78_n92_β:
 jmp xchain78_n19_α
xchain78_n93_α:
# IR_VAR
bb00058_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 952], rax
 jmp xchain78_n95_α
 xchain78_n93_β:
 jmp xchain78_n92_α
xchain78_n94_α:
# IR_FIELD_GET
bb00008_α:
 mov rdi, qword ptr [rip + .Lx00059_0]
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n19_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain78_n96_α
 xchain78_n94_β:
 jmp xchain78_n19_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "tag"
xchain78_n95_α:
# IR_ASSIGN_VAR write through variable
bb00060_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n92_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain78_n92_α
 xchain78_n95_β:
 jmp xchain78_n92_α
xchain78_n96_α:
# IR_LIT_STRING
bb00061_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain78_n97_α
 xchain78_n96_β:
 jmp xchain78_n19_α
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string "FAM"
xchain78_n97_α:
bb00063_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+816]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+832]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn218: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain78_n99_α
 jmp xchain78_n98_α
 xchain78_n97_β:
 jmp xchain78_n99_α
xchain78_n98_α:
# IR_VAR
bb00064_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 760], rax
 jmp xchain78_n00007_α
 xchain78_n98_β:
 jmp xchain78_n19_α
xchain78_n99_α:
# IR_LIT_STRING
bb00065_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain78_n00009_α
 xchain78_n99_β:
 jmp xchain78_n19_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "INDI"
xchain78_n00007_α:
# IR_VAR
bb00067_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 776], rax
 jmp xchain78_n00010_α
 xchain78_n00007_β:
 jmp xchain78_n19_α
xchain78_n00009_α:
bb00068_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+656]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+672]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn225: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn225]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain78_n19_α
 jmp xchain78_n00069_α
 xchain78_n00009_β:
 jmp xchain78_n19_α
xchain78_n00010_α:
bb00070_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn227: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain78_n19_α
 jmp xchain78_n00011_α
 xchain78_n00010_β:
 jmp xchain78_n19_α
xchain78_n00069_α:
# IR_VAR
bb00015_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 600], rax
 jmp xchain78_n00012_α
 xchain78_n00069_β:
 jmp xchain78_n19_α
xchain78_n00011_α:
bb00017_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain78_n00013_α
 xchain78_n00011_β:
 jmp xchain78_n19_α
xchain78_n00012_α:
# IR_VAR
bb00019_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 616], rax
 jmp xchain78_n00014_α
 xchain78_n00012_β:
 jmp xchain78_n19_α
xchain78_n00013_α:
# IR_VAR
bb00071_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 488], rax
 jmp xchain78_n00001_α
 xchain78_n00013_β:
 jmp xchain78_n19_α
xchain78_n00014_α:
bb00072_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn236: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain78_n19_α
 jmp xchain78_n00016_α
 xchain78_n00014_β:
 jmp xchain78_n19_α
xchain78_n00001_α:
 jmp xchain78_n19_α
xchain78_n00001_β:
 jmp xchain78_n19_α
xchain78_n00016_α:
bb00073_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain78_n00013_α
 xchain78_n00016_β:
 jmp xchain78_n19_α
proc_gedload_β:
jmp proc_gedload_ω
proc_gedload_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedload_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedscan_α
proc_gedscan_α:
#=======================================================================================================================
    .global proc_gedscan_α
    .global proc_gedscan_β
    .global proc_gedscan_γ
    .global proc_gedscan_ω
push r12
  mov r12, rdi
proc_gedscan_α_body:
xchain00074_n0_α:
# IR_VAR_REF gva
bb00075_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 jmp xchain00074_n3_α
xchain00074_n1_α:
# IR_UNOP_TEST lv
bb00024_α:
 mov eax, dword ptr [r12 + 1152]
 cmp eax, 99
 je xchain00074_n3_α
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00074_n3_α
 cmp eax, 0
 jne xchain00074_n3_α
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00074_n2_α
 xchain00074_n1_β:
 jmp xchain00074_n3_α
xchain00074_n2_α:
# IR_LIT_INTEGER
bb00076_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00074_n4_α
 xchain00074_n2_β:
 jmp xchain00074_n3_α
.Lx00077_0:
 .quad 1
xchain00074_n3_α:
# IR_VAR
bb00078_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00074_n5_α
 xchain00074_n3_β:
 jmp proc_gedscan_ω
xchain00074_n4_α:
# IR_ASSIGN_VAR write through variable
bb00079_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00074_n3_α
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00074_n6_α
 xchain00074_n4_β:
 jmp xchain00074_n3_α
xchain00074_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00074_n7_α
 xchain00074_n5_β:
 jmp proc_gedscan_ω
xchain00074_n6_α:
# IR_LIT_CHARSET
bb00028_α:
 mov qword ptr [r12 + 1104], 1
 mov dword ptr [r12 + 1108], -1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00074_n8_α
 xchain00074_n6_β:
 jmp xchain00074_n3_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00074_n7_α:
# IR_LIT_CHARSET
bb00081_α:
 mov qword ptr [r12 + 992], 1
 mov dword ptr [r12 + 996], -1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00074_n9_α
 xchain00074_n7_β:
 jmp xchain00074_n13_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "\t\n "
xchain00074_n8_α:
# IR_LIT_CHARSET
bb00083_α:
 mov qword ptr [r12 + 1120], 1
 mov dword ptr [r12 + 1124], -1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00074_n10_α
 xchain00074_n8_β:
 jmp xchain00074_n3_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "0123456789"
xchain00074_n9_α:
# IR_SCAN_MANY
bb00085_α:
 mov eax, r14d
.Lx00086_0:
 cmp eax, r15d
 jge .Lx00086_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00086_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00086_1
 add eax, 1
 jmp .Lx00086_0
.Lx00086_1:
 cmp eax, r14d
 je xchain00074_n13_α
 mov qword ptr [r12 + 976], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 984], rcx
 jmp xchain00074_n11_α
 xchain00074_n9_β:
 jmp xchain00074_n13_α
.Lx00086_2:
 .quad .Lx00086_2_s
.Lx00086_2_s:
 .string "\t\n "
xchain00074_n10_α:
bb00087_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00074_n3_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00074_n12_α
 xchain00074_n10_β:
 jmp xchain00074_n3_α
xchain00074_n11_α:
# IR_SCAN_TAB
bb00088_α:
 mov rax, qword ptr [r12 + 984]
 cmp rax, 1
 jge .Lx00089_0
 add rax, r15
 add rax, 1
.Lx00089_0:
 cmp rax, 1
 jl xchain00074_n13_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n13_α
 mov qword ptr [r12 + 960], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00074_n13_α
 xchain00074_n11_β:
 mov r14, qword ptr [r12 + 960]
 jmp xchain00074_n13_α
xchain00074_n12_α:
# IR_LIT_CHARSET
bb00090_α:
 mov qword ptr [r12 + 1136], 1
 mov dword ptr [r12 + 1140], -1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00074_n14_α
 xchain00074_n12_β:
 jmp xchain00074_n3_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "_"
xchain00074_n13_α:
# IR_LIT_CHARSET
bb00092_α:
 mov qword ptr [r12 + 928], 1
 mov dword ptr [r12 + 932], -1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00074_n15_α
 xchain00074_n13_β:
 jmp proc_gedscan_ω
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "0123456789"
xchain00074_n14_α:
bb00094_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1088]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00074_n3_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00074_n16_α
 xchain00074_n14_β:
 jmp xchain00074_n3_α
xchain00074_n15_α:
# IR_SCAN_MANY
bb00034_α:
 mov eax, r14d
.Lx00095_0:
 cmp eax, r15d
 jge .Lx00095_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00095_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00095_1
 add eax, 1
 jmp .Lx00095_0
.Lx00095_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [r12 + 912], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 920], rcx
 jmp xchain00074_n17_α
 xchain00074_n15_β:
 jmp proc_gedscan_ω
.Lx00095_2:
 .quad .Lx00095_2_s
.Lx00095_2_s:
 .string "0123456789"
xchain00074_n16_α:
# IR_ASSIGN gva
bb00096_α:
 mov rax, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00074_n18_α
 xchain00074_n16_β:
 jmp xchain00074_n3_α
xchain00074_n17_α:
# IR_SCAN_TAB
bb00097_α:
 mov rax, qword ptr [r12 + 920]
 cmp rax, 1
 jge .Lx00098_0
 add rax, r15
 add rax, 1
.Lx00098_0:
 cmp rax, 1
 jl proc_gedscan_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedscan_ω
 mov qword ptr [r12 + 896], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00074_n19_α
 xchain00074_n17_β:
 mov r14, qword ptr [r12 + 896]
 jmp proc_gedscan_ω
xchain00074_n18_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00035_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 lea rax, [rip + xchain00074_n3_α]
 mov qword ptr [r12 + 1040], rax
 jmp xchain00074_n3_α
 xchain00074_n18_β:
 jmp xchain00074_n3_α
xchain00074_n19_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00037_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [r12 + 864], rax
 jmp xchain00074_n21_α
 xchain00074_n19_β:
 jmp xchain00074_n23_α
xchain00074_n20_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00099_α:
 jmp qword ptr [r12 + 1040]
 xchain00074_n20_β:
 jmp xchain00074_n3_α
xchain00074_n21_α:
bb00100_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00074_n23_α
 xchain00074_n21_β:
 jmp xchain00074_n23_α
xchain00074_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00101_α:
 jmp qword ptr [r12 + 864]
 xchain00074_n22_β:
 jmp xchain00074_n23_α
xchain00074_n23_α:
# IR_LIT_CHARSET
bb00102_α:
 mov qword ptr [r12 + 816], 1
 mov dword ptr [r12 + 820], -1
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00074_n24_α
 xchain00074_n23_β:
 jmp xchain00074_n26_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "\t\n "
xchain00074_n24_α:
# IR_SCAN_MANY
bb00040_α:
 mov eax, r14d
.Lx00104_0:
 cmp eax, r15d
 jge .Lx00104_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00104_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00104_1
 add eax, 1
 jmp .Lx00104_0
.Lx00104_1:
 cmp eax, r14d
 je xchain00074_n26_α
 mov qword ptr [r12 + 800], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 808], rcx
 jmp xchain00074_n25_α
 xchain00074_n24_β:
 jmp xchain00074_n26_α
.Lx00104_2:
 .quad .Lx00104_2_s
.Lx00104_2_s:
 .string "\t\n "
xchain00074_n25_α:
# IR_SCAN_TAB
bb00042_α:
 mov rax, qword ptr [r12 + 808]
 cmp rax, 1
 jge .Lx00105_0
 add rax, r15
 add rax, 1
.Lx00105_0:
 cmp rax, 1
 jl xchain00074_n26_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n26_α
 mov qword ptr [r12 + 784], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00074_n26_α
 xchain00074_n25_β:
 mov r14, qword ptr [r12 + 784]
 jmp xchain00074_n26_α
xchain00074_n26_α:
# IR_LIT_STRING
bb00106_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00074_n27_α
 xchain00074_n26_β:
 jmp xchain00074_n29_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "@"
xchain00074_n27_α:
# IR_SCAN_MATCH
bb00108_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00074_n29_α
 mov rdi, qword ptr [rip + .Lx00109_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00074_n29_α
 mov qword ptr [r12 + 608], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 616], rax
 jmp xchain00074_n28_α
 xchain00074_n27_β:
 jmp xchain00074_n29_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "@"
xchain00074_n28_α:
# IR_SCAN_TAB
bb00110_α:
 mov rax, qword ptr [r12 + 616]
 cmp rax, 1
 jge .Lx00111_0
 add rax, r15
 add rax, 1
.Lx00111_0:
 cmp rax, 1
 jl xchain00074_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n29_α
 mov qword ptr [r12 + 592], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00074_n30_α
 xchain00074_n28_β:
 mov r14, qword ptr [r12 + 592]
 jmp xchain00074_n29_α
xchain00074_n29_α:
# IR_VAR gva
bb00112_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00074_n31_α
 xchain00074_n29_β:
 jmp proc_gedscan_ω
xchain00074_n30_α:
# IR_LIT_CHARSET
bb00113_α:
 mov qword ptr [r12 + 736], 1
 mov dword ptr [r12 + 740], -1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00074_n32_α
 xchain00074_n30_β:
 jmp xchain00074_n29_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "@"
xchain00074_n31_α:
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
bb00115_α:
 mov eax, r14d
.Lx00116_0:
 cmp eax, r15d
 jge .Lx00116_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [r12 + 440]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00116_1
 add eax, 1
 jmp .Lx00116_0
.Lx00116_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [r12 + 416], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 424], rcx
 jmp xchain00074_n33_α
 xchain00074_n31_β:
 jmp proc_gedscan_ω
xchain00074_n32_α:
# IR_SCAN_UPTO
bb00117_α:
 mov qword ptr [r12 + 720], r14
.Lx00118_0:
 mov rax, qword ptr [r12 + 720]
 cmp rax, r15
 jge xchain00074_n29_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00118_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00118_1
 mov qword ptr [r12 + 704], 6
 add rax, 1
 mov qword ptr [r12 + 712], rax
 jmp xchain00074_n34_α
.Lx00118_1:
 inc qword ptr [r12 + 720]
 jmp .Lx00118_0
 xchain00074_n32_β:
 inc qword ptr [r12 + 720]
 jmp .Lx00118_0
.Lx00118_2:
 .quad .Lx00118_2_s
.Lx00118_2_s:
 .string "@"
xchain00074_n33_α:
# IR_SCAN_TAB
bb00048_α:
 mov rax, qword ptr [r12 + 424]
 cmp rax, 1
 jge .Lx00119_0
 add rax, r15
 add rax, 1
.Lx00119_0:
 cmp rax, 1
 jl proc_gedscan_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedscan_ω
 mov qword ptr [r12 + 400], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00074_n35_α
 xchain00074_n33_β:
 mov r14, qword ptr [r12 + 400]
 jmp proc_gedscan_ω
xchain00074_n34_α:
# IR_LIT_INTEGER
bb00120_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00074_n36_α
 xchain00074_n34_β:
 jmp xchain00074_n29_α
.Lx00121_0:
 .quad 1
xchain00074_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00122_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [r12 + 368], rax
 jmp xchain00074_n37_α
 xchain00074_n35_β:
 jmp xchain00074_n40_α
xchain00074_n36_α:
bb00123_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 704]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [r12 + 704]
 cmp eax, 6
 jne .Lx00124_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx00124_2
.Lx00124_1:
 mov rax, qword ptr [r12 + 712]
 mov rcx, qword ptr [r12 + 760]
 add rax, rcx
 mov qword ptr [r12 + 688], 6
 mov qword ptr [r12 + 696], rax
 jmp xchain00074_n39_α
.Lx00124_0:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 0
 lea r9, [r12 + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00124_3
.Lx00124_2:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00074_n29_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx00124_3:
 jmp xchain00074_n39_α
 xchain00074_n36_β:
 jmp xchain00074_n29_α
xchain00074_n37_α:
bb00125_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00074_n40_α
 xchain00074_n37_β:
 jmp xchain00074_n40_α
xchain00074_n38_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00126_α:
 jmp qword ptr [r12 + 368]
 xchain00074_n38_β:
 jmp xchain00074_n40_α
xchain00074_n39_α:
# IR_SCAN_TAB
bb00127_α:
 mov rax, qword ptr [r12 + 696]
 cmp rax, 1
 jge .Lx00128_0
 add rax, r15
 add rax, 1
.Lx00128_0:
 cmp rax, 1
 jl xchain00074_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n29_α
 mov qword ptr [r12 + 672], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00074_n41_α
 xchain00074_n39_β:
 mov r14, qword ptr [r12 + 672]
 jmp xchain00074_n29_α
xchain00074_n40_α:
# IR_LIT_CHARSET
bb00129_α:
 mov qword ptr [r12 + 320], 1
 mov dword ptr [r12 + 324], -1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00074_n42_α
 xchain00074_n40_β:
 jmp xchain00074_n46_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "\t\n "
xchain00074_n41_α:
bb00131_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call str_concat_d@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00074_n43_α
 xchain00074_n41_β:
 jmp xchain00074_n29_α
xchain00074_n42_α:
# IR_SCAN_MANY
bb00132_α:
 mov eax, r14d
.Lx00133_0:
 cmp eax, r15d
 jge .Lx00133_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00133_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00133_1
 add eax, 1
 jmp .Lx00133_0
.Lx00133_1:
 cmp eax, r14d
 je xchain00074_n46_α
 mov qword ptr [r12 + 304], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 312], rcx
 jmp xchain00074_n44_α
 xchain00074_n42_β:
 jmp xchain00074_n46_α
.Lx00133_2:
 .quad .Lx00133_2_s
.Lx00133_2_s:
 .string "\t\n "
xchain00074_n43_α:
bb00134_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00074_n45_α
 xchain00074_n43_β:
 jmp xchain00074_n29_α
xchain00074_n44_α:
# IR_SCAN_TAB
bb00055_α:
 mov rax, qword ptr [r12 + 312]
 cmp rax, 1
 jge .Lx00135_0
 add rax, r15
 add rax, 1
.Lx00135_0:
 cmp rax, 1
 jl xchain00074_n46_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n46_α
 mov qword ptr [r12 + 288], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00074_n46_α
 xchain00074_n44_β:
 mov r14, qword ptr [r12 + 288]
 jmp xchain00074_n46_α
xchain00074_n45_α:
# IR_LIT_CHARSET
bb00136_α:
 mov qword ptr [r12 + 528], 1
 mov dword ptr [r12 + 532], -1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00074_n47_α
 xchain00074_n45_β:
 jmp xchain00074_n29_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "\t\n "
xchain00074_n46_α:
# IR_LIT_INTEGER
bb00138_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00074_n48_α
 xchain00074_n46_β:
 jmp xchain00074_n51_α
.Lx00139_0:
 .quad 0
xchain00074_n47_α:
# IR_SCAN_MANY
bb00140_α:
 mov eax, r14d
.Lx00141_0:
 cmp eax, r15d
 jge .Lx00141_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00141_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00141_1
 add eax, 1
 jmp .Lx00141_0
.Lx00141_1:
 cmp eax, r14d
 je xchain00074_n29_α
 mov qword ptr [r12 + 512], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 520], rcx
 jmp xchain00074_n49_α
 xchain00074_n47_β:
 jmp xchain00074_n29_α
.Lx00141_2:
 .quad .Lx00141_2_s
.Lx00141_2_s:
 .string "\t\n "
xchain00074_n48_α:
# IR_SCAN_TAB
bb00142_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00143_0
 add rax, r15
 add rax, 1
.Lx00143_0:
 cmp rax, 1
 jl xchain00074_n51_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n51_α
 mov qword ptr [r12 + 240], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00074_n50_α
 xchain00074_n48_β:
 mov r14, qword ptr [r12 + 240]
 jmp xchain00074_n51_α
xchain00074_n49_α:
# IR_SCAN_TAB
bb00144_α:
 mov rax, qword ptr [r12 + 520]
 cmp rax, 1
 jge .Lx00145_0
 add rax, r15
 add rax, 1
.Lx00145_0:
 cmp rax, 1
 jl xchain00074_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00074_n29_α
 mov qword ptr [r12 + 496], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00074_n52_α
 xchain00074_n49_β:
 mov r14, qword ptr [r12 + 496]
 jmp xchain00074_n29_α
xchain00074_n50_α:
bb00146_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00074_n51_α
 xchain00074_n50_β:
 jmp xchain00074_n51_α
xchain00074_n51_α:
# IR_VAR
bb00059_α:
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 152], rax
 jmp xchain00074_n53_α
 xchain00074_n51_β:
 jmp proc_gedscan_ω
xchain00074_n52_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00147_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain00074_n29_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain00074_n29_α
 xchain00074_n52_β:
 jmp xchain00074_n29_α
xchain00074_n53_α:
# IR_VAR
bb00062_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 168], rax
 jmp xchain00074_n55_α
 xchain00074_n53_β:
 jmp proc_gedscan_ω
xchain00074_n54_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00148_α:
 jmp qword ptr [r12 + 464]
 xchain00074_n54_β:
 jmp xchain00074_n29_α
xchain00074_n55_α:
# IR_VAR
bb00149_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 184], rax
 jmp xchain00074_n56_α
 xchain00074_n55_β:
 jmp proc_gedscan_ω
xchain00074_n56_α:
# IR_VAR
bb00150_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 200], rax
 jmp xchain00074_n57_α
 xchain00074_n56_β:
 jmp proc_gedscan_ω
xchain00074_n57_α:
bb00151_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+80]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+96]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [r12+176] -> [r12+112]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 120], rax
# marshal arg3 = producer-box slot [r12+192] -> [r12+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn330: .string "gednode"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn330]
 lea rsi, [r12 + 80]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedscan_ω
 jmp xchain00074_n58_α
 xchain00074_n57_β:
 jmp proc_gedscan_ω
xchain00074_n58_α:
# IR_RETURN
bb00066_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedscan_γ
proc_gedscan_β:
jmp proc_gedscan_ω
proc_gedscan_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedscan_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedwalk_α
proc_gedwalk_α:
#=======================================================================================================================
    .global proc_gedwalk_α
    .global proc_gedwalk_β
    .global proc_gedwalk_γ
    .global proc_gedwalk_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_gedwalk_β
proc_gedwalk_α_body:
lea rax, [rip + xchain00152_n2_β]
mov qword ptr [r12 + 160], rax
xchain00152_n0_α:
# IR_VAR
bb00153_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00152_n1_α
 xchain00152_n0_β:
 jmp xchain00152_n3_α
xchain00152_n1_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00154_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00152_n3_α]
 mov qword ptr [r12 + 48], rax
 jmp xchain00152_n2_α
 xchain00152_n1_β:
 jmp proc_gedwalk_ω
xchain00152_n2_α:
# IR_SUSPEND yield+resume
bb00155_α:
 lea rax, [rip + xchain00152_n2_β]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedwalk_γ
 xchain00152_n2_β:
 jmp proc_gedwalk_ω
xchain00152_n3_α:
# IR_VAR
bb00156_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00152_n5_α
 xchain00152_n3_β:
 jmp proc_gedwalk_ω
xchain00152_n4_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00157_α:
 jmp qword ptr [r12 + 48]
 xchain00152_n4_β:
 jmp proc_gedwalk_ω
xchain00152_n5_α:
# IR_FIELD_GET
bb00158_α:
 mov rdi, qword ptr [rip + .Lx00159_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedwalk_ω
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00152_n6_α
 xchain00152_n5_β:
 jmp proc_gedwalk_ω
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "sub"
xchain00152_n6_α:
# IR_LIST_BANG
bb00160_α:
 mov qword ptr [r12 + 96], 0
.Lx00161_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je proc_gedwalk_ω
 jmp xchain00152_n7_α
 xchain00152_n6_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00161_0
xchain00152_n7_α:
bb00162_α:
  .section .rodata
  .Lcall00162_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00162_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedwalk_ω
 jmp xchain00152_n8_α
xchain00152_n7_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedwalk_ω
 jmp xchain00152_n8_α
xchain00152_n8_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00163_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00152_n7_β]
 mov qword ptr [r12 + 48], rax
 jmp xchain00152_n2_α
 xchain00152_n8_β:
 jmp proc_gedwalk_ω
proc_gedwalk_β:
jmp qword ptr [r12 + 160]
proc_gedwalk_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedwalk_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedsub_α
proc_gedsub_α:
#=======================================================================================================================
    .global proc_gedsub_α
    .global proc_gedsub_β
    .global proc_gedsub_γ
    .global proc_gedsub_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_gedsub_β
proc_gedsub_α_body:
lea rax, [rip + xchain00164_n18_β]
mov qword ptr [r12 + 576], rax
xchain00164_n0_α:
# IR_VAR
bb00165_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 568], rax
 jmp xchain00164_n1_α
 xchain00164_n0_β:
 jmp proc_gedsub_ω
xchain00164_n1_α:
bb00166_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+544]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn353: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00164_n2_α
 xchain00164_n1_β:
 jmp proc_gedsub_ω
xchain00164_n2_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00167_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 512], rax
 jmp xchain00164_n3_α
 xchain00164_n2_β:
 jmp xchain00164_n5_α
xchain00164_n3_α:
bb00168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00164_n5_α
 xchain00164_n3_β:
 jmp xchain00164_n5_α
xchain00164_n4_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00169_α:
 jmp qword ptr [r12 + 512]
 xchain00164_n4_β:
 jmp xchain00164_n5_α
xchain00164_n5_α:
# IR_VAR
bb00170_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00164_n6_α
 xchain00164_n5_β:
 jmp proc_gedsub_ω
xchain00164_n6_α:
# IR_FIELD_GET
bb00171_α:
 mov rdi, qword ptr [rip + .Lx00172_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedsub_ω
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00164_n7_α
 xchain00164_n6_β:
 jmp proc_gedsub_ω
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "sub"
xchain00164_n7_α:
# IR_LIST_BANG
bb00173_α:
 mov qword ptr [r12 + 80], 0
.Lx00174_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp rax, 99
 je proc_gedsub_ω
 jmp xchain00164_n8_α
 xchain00164_n7_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00174_0
xchain00164_n8_α:
bb00074_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00164_n9_α
 xchain00164_n8_β:
 jmp proc_gedsub_ω
xchain00164_n9_α:
# IR_VAR
bb00175_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 456], rax
 jmp xchain00164_n10_α
 xchain00164_n9_β:
 jmp xchain00164_n7_β
xchain00164_n10_α:
# IR_FIELD_GET
bb00176_α:
 mov rdi, qword ptr [rip + .Lx00177_0]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00164_n7_β
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00164_n11_α
 xchain00164_n10_β:
 jmp xchain00164_n7_β
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "tag"
xchain00164_n11_α:
# IR_VAR
bb00178_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 472], rax
 jmp xchain00164_n12_α
 xchain00164_n11_β:
 jmp xchain00164_n7_β
xchain00164_n12_α:
bb00077_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00164_n7_β
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 424], rax
 jmp xchain00164_n13_α
 xchain00164_n12_β:
 jmp xchain00164_n7_β
xchain00164_n13_α:
# IR_VAR
bb00179_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 392], rax
 jmp xchain00164_n14_α
 xchain00164_n13_β:
 jmp xchain00164_n16_α
xchain00164_n14_α:
# IR_UNOP
bb00180_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00164_n15_α
 xchain00164_n14_β:
 jmp xchain00164_n16_α
xchain00164_n15_α:
# IR_LIT_INTEGER
bb00181_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00164_n17_α
 xchain00164_n15_β:
 jmp xchain00164_n16_α
.Lx00182_0:
 .quad 0
xchain00164_n16_α:
# IR_VAR
bb00183_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 344], rax
 jmp xchain00164_n18_α
 xchain00164_n16_β:
 jmp proc_gedsub_ω
xchain00164_n17_α:
bb00184_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00185_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00185_2
.Lx00185_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 408]
 cmp rax, rcx
 jle xchain00164_n16_α
 mov rcx, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rcx
 mov rcx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rcx
 jmp xchain00164_n19_α
.Lx00185_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 7
 lea r9, [r12 + 352]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00185_1
 cmp eax, 1
 je xchain00164_n16_α
 jmp xchain00164_n19_α
.Lx00185_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00164_n16_α
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
 jmp xchain00164_n19_α
 xchain00164_n17_β:
 jmp xchain00164_n16_α
xchain00164_n18_α:
# IR_SUSPEND yield+resume
bb00080_α:
 lea rax, [rip + xchain00164_n18_β]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedsub_γ
 xchain00164_n18_β:
 jmp xchain00164_n20_α
xchain00164_n19_α:
# IR_LIT_STRING
bb00082_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00164_n21_α
 xchain00164_n19_β:
 jmp proc_gedsub_ω
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "gedsub"
xchain00164_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00084_α:
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 176], rax
 jmp xchain00164_n22_α
 xchain00164_n20_β:
 jmp xchain00164_n7_β
xchain00164_n21_α:
# IR_VAR
bb00187_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 312], rax
 jmp xchain00164_n24_α
 xchain00164_n21_β:
 jmp proc_gedsub_ω
xchain00164_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00086_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rax, [rip + xchain00164_n23_α]
 mov qword ptr [r12 + 144], rax
 jmp xchain00164_n7_β
 xchain00164_n22_β:
 jmp xchain00164_n7_β
xchain00164_n23_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00188_α:
 jmp qword ptr [r12 + 176]
 xchain00164_n23_β:
 jmp xchain00164_n7_β
xchain00164_n24_α:
# IR_VAR
bb00189_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 328], rax
 jmp xchain00164_n26_α
 xchain00164_n24_β:
 jmp proc_gedsub_ω
xchain00164_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00089_α:
 jmp qword ptr [r12 + 144]
 xchain00164_n25_β:
 jmp xchain00164_n7_β
xchain00164_n26_α:
bb00091_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn394: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00164_n27_α
 xchain00164_n26_β:
 jmp proc_gedsub_ω
xchain00164_n27_α:
bb00093_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn396: .string "__apply__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn396]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00164_n28_α
 xchain00164_n27_β:
 jmp proc_gedsub_ω
xchain00164_n28_α:
# IR_SUSPEND yield+resume
bb00190_α:
 lea rax, [rip + xchain00164_n28_β]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedsub_γ
 xchain00164_n28_β:
 jmp xchain00164_n29_α
xchain00164_n29_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00191_α:
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 176], rax
 jmp xchain00164_n22_α
 xchain00164_n29_β:
 jmp xchain00164_n7_β
proc_gedsub_β:
jmp qword ptr [r12 + 576]
proc_gedsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedsub_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedval_α
proc_gedval_α:
#=======================================================================================================================
    .global proc_gedval_α
    .global proc_gedval_β
    .global proc_gedval_γ
    .global proc_gedval_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_gedval_β
proc_gedval_α_body:
lea rax, [rip + xchain00192_n4_β]
mov qword ptr [r12 + 128], rax
xchain00192_n0_α:
# IR_LIT_STRING
bb00095_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00192_n1_α
 xchain00192_n0_β:
 jmp proc_gedval_ω
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "gedsub"
xchain00192_n1_α:
# IR_VAR
bb00194_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00192_n2_α
 xchain00192_n1_β:
 jmp proc_gedval_ω
xchain00192_n2_α:
bb00195_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn406: .string "__apply__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn406]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_gedval_ω
 jmp xchain00192_n3_α
 xchain00192_n2_β:
 jmp proc_gedval_ω
xchain00192_n3_α:
# IR_FIELD_GET
bb00098_α:
 mov rdi, qword ptr [rip + .Lx00196_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00192_n4_α
 xchain00192_n3_β:
 jmp proc_gedval_ω
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "data"
xchain00192_n4_α:
# IR_SUSPEND yield+resume
bb00197_α:
 lea rax, [rip + xchain00192_n4_β]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedval_γ
 xchain00192_n4_β:
 jmp proc_gedval_ω
proc_gedval_β:
jmp qword ptr [r12 + 128]
proc_gedval_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedval_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedref_α
proc_gedref_α:
#=======================================================================================================================
    .global proc_gedref_α
    .global proc_gedref_β
    .global proc_gedref_γ
    .global proc_gedref_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_gedref_β
proc_gedref_α_body:
lea rax, [rip + xchain00198_n5_β]
mov qword ptr [r12 + 144], rax
xchain00198_n0_α:
# IR_LIT_STRING
bb00199_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00198_n1_α
 xchain00198_n0_β:
 jmp proc_gedref_ω
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "gedsub"
xchain00198_n1_α:
# IR_VAR
bb00201_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00198_n2_α
 xchain00198_n1_β:
 jmp proc_gedref_ω
xchain00198_n2_α:
bb00202_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [r12+128] -> [r12+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn415: .string "__apply__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn415]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedref_ω
 jmp xchain00198_n3_α
 xchain00198_n2_β:
 jmp proc_gedref_ω
xchain00198_n3_α:
# IR_FIELD_GET
bb00203_α:
 mov rdi, qword ptr [rip + .Lx00204_0]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00198_n4_α
 xchain00198_n3_β:
 jmp proc_gedref_ω
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "ref"
xchain00198_n4_α:
# IR_UNOP
bb00205_α:
 mov eax, dword ptr [r12 + 48]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
 jmp xchain00198_n5_α
 xchain00198_n4_β:
 jmp proc_gedref_ω
xchain00198_n5_α:
# IR_SUSPEND yield+resume
bb00206_α:
 lea rax, [rip + xchain00198_n5_β]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedref_γ
 xchain00198_n5_β:
 jmp proc_gedref_ω
proc_gedref_β:
jmp qword ptr [r12 + 144]
proc_gedref_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedref_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedfnf_α
proc_gedfnf_α:
#=======================================================================================================================
    .global proc_gedfnf_α
    .global proc_gedfnf_β
    .global proc_gedfnf_γ
    .global proc_gedfnf_ω
push r12
  mov r12, rdi
proc_gedfnf_α_body:
xchain00207_n0_α:
# IR_VAR
bb00208_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 904], rax
 jmp xchain00207_n1_α
 xchain00207_n0_β:
 jmp proc_gedfnf_ω
xchain00207_n1_α:
# IR_LIT_STRING
bb00209_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00207_n2_α
 xchain00207_n1_β:
 jmp proc_gedfnf_ω
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "NAME"
xchain00207_n2_α:
bb00103_α:
  .section .rodata
  .Lcall00103_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00103_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00207_n3_α
xchain00207_n2_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00207_n3_α
xchain00207_n3_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00211_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00207_n2_β]
 mov qword ptr [r12 + 864], rax
 jmp xchain00207_n4_α
 xchain00207_n3_β:
 jmp xchain00207_n6_α
xchain00207_n4_α:
bb00104_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00207_n6_α
 xchain00207_n4_β:
 jmp xchain00207_n6_α
xchain00207_n5_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00212_α:
 jmp qword ptr [r12 + 864]
 xchain00207_n5_β:
 jmp xchain00207_n6_α
xchain00207_n6_α:
# IR_VAR
bb00105_α:
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 824], rax
 jmp xchain00207_n7_α
 xchain00207_n6_β:
 jmp xchain00207_n30_α
xchain00207_n7_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00207_n8_α
 xchain00207_n7_β:
 jmp xchain00207_n30_α
xchain00207_n8_α:
# IR_LIT_CHARSET
bb00213_α:
 mov qword ptr [r12 + 800], 1
 mov dword ptr [r12 + 804], -1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00207_n9_α
 xchain00207_n8_β:
 jmp xchain00207_n12_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "/"
xchain00207_n9_α:
# IR_SCAN_UPTO
bb00109_α:
 mov qword ptr [r12 + 784], r14
.Lx00215_0:
 mov rax, qword ptr [r12 + 784]
 cmp rax, r15
 jge xchain00207_n12_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00215_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00215_1
 mov qword ptr [r12 + 768], 6
 add rax, 1
 mov qword ptr [r12 + 776], rax
 jmp xchain00207_n10_α
.Lx00215_1:
 inc qword ptr [r12 + 784]
 jmp .Lx00215_0
 xchain00207_n9_β:
 inc qword ptr [r12 + 784]
 jmp .Lx00215_0
.Lx00215_2:
 .quad .Lx00215_2_s
.Lx00215_2_s:
 .string "/"
xchain00207_n10_α:
# IR_SCAN_TAB
bb00216_α:
 mov rax, qword ptr [r12 + 776]
 cmp rax, 1
 jge .Lx00217_0
 add rax, r15
 add rax, 1
.Lx00217_0:
 cmp rax, 1
 jl xchain00207_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00207_n12_α
 mov qword ptr [r12 + 752], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00207_n11_α
 xchain00207_n10_β:
 mov r14, qword ptr [r12 + 752]
 jmp xchain00207_n12_α
xchain00207_n11_α:
bb00111_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+720]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn440: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain00207_n12_α
 jmp xchain00207_n13_α
 xchain00207_n11_β:
 jmp xchain00207_n12_α
xchain00207_n12_α:
# IR_LIT_INTEGER
bb00218_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00207_n14_α
 xchain00207_n12_β:
 jmp proc_gedfnf_ω
.Lx00219_0:
 .quad 0
xchain00207_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00114_α:
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00207_n12_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00207_n15_α
 xchain00207_n13_β:
 jmp xchain00207_n18_α
xchain00207_n14_α:
# IR_SCAN_TAB
bb00220_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00221_0
 add rax, r15
 add rax, 1
.Lx00221_0:
 cmp rax, 1
 jl proc_gedfnf_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedfnf_ω
 mov qword ptr [r12 + 656], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00207_n17_α
 xchain00207_n14_β:
 mov r14, qword ptr [r12 + 656]
 jmp proc_gedfnf_ω
xchain00207_n15_α:
bb00116_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00207_n18_α
 xchain00207_n15_β:
 jmp xchain00207_n18_α
xchain00207_n16_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00222_α:
 jmp qword ptr [r12 + 608]
 xchain00207_n16_β:
 jmp xchain00207_n18_α
xchain00207_n17_α:
# IR_LIT_STRING
bb00118_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00207_n19_α
 xchain00207_n17_β:
 jmp proc_gedfnf_ω
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "/"
xchain00207_n18_α:
# IR_LIT_CHARSET
bb00224_α:
 mov qword ptr [r12 + 560], 1
 mov dword ptr [r12 + 564], -1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00207_n20_α
 xchain00207_n18_β:
 jmp xchain00207_n24_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "/"
xchain00207_n19_α:
bb00119_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx00226_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 100
 je .Lx00226_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx00226_2
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx00226_2
.Lx00226_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 696]
 cmp rax, rcx
 jne proc_gedfnf_ω
 mov rcx, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rcx
 mov rcx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rcx
 jmp xchain00207_n21_α
.Lx00226_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 9
 lea r9, [r12 + 624]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00226_1
 cmp eax, 1
 je proc_gedfnf_ω
 jmp xchain00207_n21_α
.Lx00226_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedfnf_ω
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp xchain00207_n21_α
 xchain00207_n19_β:
 jmp proc_gedfnf_ω
xchain00207_n20_α:
# IR_SCAN_UPTO
bb00121_α:
 mov qword ptr [r12 + 544], r14
.Lx00227_0:
 mov rax, qword ptr [r12 + 544]
 cmp rax, r15
 jge xchain00207_n24_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00227_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00227_1
 mov qword ptr [r12 + 528], 6
 add rax, 1
 mov qword ptr [r12 + 536], rax
 jmp xchain00207_n22_α
.Lx00227_1:
 inc qword ptr [r12 + 544]
 jmp .Lx00227_0
 xchain00207_n20_β:
 inc qword ptr [r12 + 544]
 jmp .Lx00227_0
.Lx00227_2:
 .quad .Lx00227_2_s
.Lx00227_2_s:
 .string "/"
xchain00207_n21_α:
# IR_RETURN
bb00228_α:
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedfnf_γ
xchain00207_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00229_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
 lea rax, [rip + xchain00207_n24_α]
 mov qword ptr [r12 + 496], rax
 jmp xchain00207_n23_α
 xchain00207_n22_β:
 jmp xchain00207_n27_α
xchain00207_n23_α:
# IR_SCAN_TAB
bb00124_α:
 mov rax, qword ptr [r12 + 488]
 cmp rax, 1
 jge .Lx00230_0
 add rax, r15
 add rax, 1
.Lx00230_0:
 cmp rax, 1
 jl xchain00207_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00207_n27_α
 mov qword ptr [r12 + 464], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00207_n26_α
 xchain00207_n23_β:
 mov r14, qword ptr [r12 + 464]
 jmp xchain00207_n27_α
xchain00207_n24_α:
# IR_LIT_INTEGER
bb00231_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00207_n28_α
 xchain00207_n24_β:
 jmp xchain00207_n27_α
.Lx00232_0:
 .quad 0
xchain00207_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00233_α:
 jmp qword ptr [r12 + 496]
 xchain00207_n25_β:
 jmp xchain00207_n27_α
xchain00207_n26_α:
bb00234_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00207_n29_α
 xchain00207_n26_β:
 jmp xchain00207_n27_α
xchain00207_n27_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 400]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 400]
 mov r14, qword ptr [r12 + 408]
 mov r15, qword ptr [r12 + 416]
 jmp xchain00207_n30_α
 xchain00207_n27_β:
 jmp xchain00207_n30_α
xchain00207_n28_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00128_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
 lea rax, [rip + xchain00207_n27_α]
 mov qword ptr [r12 + 496], rax
 jmp xchain00207_n23_α
 xchain00207_n28_β:
 jmp xchain00207_n27_α
xchain00207_n29_α:
 jmp xchain00207_n31_α
xchain00207_n29_β:
 jmp xchain00207_n27_α
xchain00207_n30_α:
# IR_VAR
bb00235_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 376], rax
 jmp xchain00207_n32_α
 xchain00207_n30_β:
 jmp xchain00207_n34_α
xchain00207_n31_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 400]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 400]
 mov r14, qword ptr [r12 + 408]
 mov r15, qword ptr [r12 + 416]
 jmp xchain00207_n30_α
 xchain00207_n31_β:
 jmp xchain00207_n30_α
xchain00207_n32_α:
# IR_UNOP
bb00133_α:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_size_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00207_n33_α
 xchain00207_n32_β:
 jmp xchain00207_n34_α
xchain00207_n33_α:
# IR_LIT_INTEGER
bb00236_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00207_n35_α
 xchain00207_n33_β:
 jmp xchain00207_n34_α
.Lx00237_0:
 .quad 0
xchain00207_n34_α:
# IR_VAR
bb00238_α:
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 328], rax
 jmp xchain00207_n36_α
 xchain00207_n34_β:
 jmp xchain00207_n40_α
xchain00207_n35_α:
bb00135_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx00239_2
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx00239_2
.Lx00239_1:
 mov rax, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jle xchain00207_n34_α
 mov rcx, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rcx
 mov rcx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rcx
 jmp xchain00207_n37_α
.Lx00239_0:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 7
 lea r9, [r12 + 336]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00239_1
 cmp eax, 1
 je xchain00207_n34_α
 jmp xchain00207_n37_α
.Lx00239_2:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00207_n34_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
 jmp xchain00207_n37_α
 xchain00207_n35_β:
 jmp xchain00207_n34_α
xchain00207_n36_α:
bb00137_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00207_n38_α
 xchain00207_n36_β:
 jmp xchain00207_n40_α
xchain00207_n37_α:
# IR_VAR
bb00139_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 264], rax
 jmp xchain00207_n39_α
 xchain00207_n37_β:
 jmp xchain00207_n40_α
xchain00207_n38_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00240_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00207_n40_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00207_n40_α
 xchain00207_n38_β:
 jmp xchain00207_n40_α
xchain00207_n39_α:
# IR_LIT_STRING
bb00141_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00207_n42_α
 xchain00207_n39_β:
 jmp xchain00207_n40_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string " "
xchain00207_n40_α:
# IR_VAR
bb00242_α:
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 88], rax
 jmp xchain00207_n43_α
 xchain00207_n40_β:
 jmp xchain00207_n52_α
xchain00207_n41_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00143_α:
 jmp qword ptr [r12 + 192]
 xchain00207_n41_β:
 jmp xchain00207_n40_α
xchain00207_n42_α:
bb00243_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00207_n44_α
 xchain00207_n42_β:
 jmp xchain00207_n40_α
xchain00207_n43_α:
# IR_LIT_STRING
bb00145_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00207_n45_α
 xchain00207_n43_β:
 jmp xchain00207_n52_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string " "
xchain00207_n44_α:
# IR_VAR
bb00245_α:
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 296], rax
 jmp xchain00207_n46_α
 xchain00207_n44_β:
 jmp xchain00207_n40_α
xchain00207_n45_α:
# IR_VAR
bb00246_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00207_n47_α
 xchain00207_n45_β:
 jmp xchain00207_n52_α
xchain00207_n46_α:
bb00247_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00207_n48_α
 xchain00207_n46_β:
 jmp xchain00207_n40_α
xchain00207_n47_α:
# IR_LIT_STRING
bb00248_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00207_n49_α
 xchain00207_n47_β:
 jmp xchain00207_n52_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "TITL"
xchain00207_n48_α:
bb00250_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00207_n50_α
 xchain00207_n48_β:
 jmp xchain00207_n40_α
xchain00207_n49_α:
bb00251_α:
  .section .rodata
  .Lcall00251_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00251_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00207_n52_α
 jmp xchain00207_n51_α
xchain00207_n49_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00207_n52_α
 jmp xchain00207_n51_α
xchain00207_n50_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00252_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00207_n40_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00207_n40_α
 xchain00207_n50_β:
 jmp xchain00207_n40_α
xchain00207_n51_α:
bb00253_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00207_n53_α
 xchain00207_n51_β:
 jmp xchain00207_n52_α
xchain00207_n52_α:
# IR_VAR
bb00254_α:
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 40], rax
 jmp xchain00207_n54_α
 xchain00207_n52_β:
 jmp proc_gedfnf_ω
xchain00207_n53_α:
bb00255_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00207_n55_α
 xchain00207_n53_β:
 jmp xchain00207_n52_α
xchain00207_n54_α:
# IR_RETURN
bb00256_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedfnf_γ
xchain00207_n55_α:
bb00257_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00207_n52_α
 xchain00207_n55_β:
 jmp xchain00207_n52_α
proc_gedfnf_β:
jmp proc_gedfnf_ω
proc_gedfnf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedfnf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_gedlnf_α
proc_gedlnf_α:
#=======================================================================================================================
    .global proc_gedlnf_α
    .global proc_gedlnf_β
    .global proc_gedlnf_γ
    .global proc_gedlnf_ω
push r12
  mov r12, rdi
proc_gedlnf_α_body:
xchain00258_n0_α:
# IR_VAR
bb00259_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 776], rax
 jmp xchain00258_n1_α
 xchain00258_n0_β:
 jmp proc_gedlnf_ω
xchain00258_n1_α:
# IR_LIT_STRING
bb00260_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00258_n2_α
 xchain00258_n1_β:
 jmp proc_gedlnf_ω
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "NAME"
xchain00258_n2_α:
bb00262_α:
  .section .rodata
  .Lcall00262_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00262_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00258_n3_α
xchain00258_n2_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00258_n3_α
xchain00258_n3_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00263_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00258_n2_β]
 mov qword ptr [r12 + 736], rax
 jmp xchain00258_n4_α
 xchain00258_n3_β:
 jmp xchain00258_n6_α
xchain00258_n4_α:
bb00152_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00258_n6_α
 xchain00258_n4_β:
 jmp xchain00258_n6_α
xchain00258_n5_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00264_α:
 jmp qword ptr [r12 + 736]
 xchain00258_n5_β:
 jmp xchain00258_n6_α
xchain00258_n6_α:
# IR_VAR
bb00265_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 696], rax
 jmp xchain00258_n7_α
 xchain00258_n6_β:
 jmp xchain00258_n30_α
xchain00258_n7_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00258_n8_α
 xchain00258_n7_β:
 jmp xchain00258_n30_α
xchain00258_n8_α:
# IR_LIT_CHARSET
bb00266_α:
 mov qword ptr [r12 + 672], 1
 mov dword ptr [r12 + 676], -1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00258_n9_α
 xchain00258_n8_β:
 jmp xchain00258_n12_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "/"
xchain00258_n9_α:
# IR_SCAN_UPTO
bb00268_α:
 mov qword ptr [r12 + 656], r14
.Lx00269_0:
 mov rax, qword ptr [r12 + 656]
 cmp rax, r15
 jge xchain00258_n12_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00269_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00269_1
 mov qword ptr [r12 + 640], 6
 add rax, 1
 mov qword ptr [r12 + 648], rax
 jmp xchain00258_n10_α
.Lx00269_1:
 inc qword ptr [r12 + 656]
 jmp .Lx00269_0
 xchain00258_n9_β:
 inc qword ptr [r12 + 656]
 jmp .Lx00269_0
.Lx00269_2:
 .quad .Lx00269_2_s
.Lx00269_2_s:
 .string "/"
xchain00258_n10_α:
# IR_SCAN_TAB
bb00270_α:
 mov rax, qword ptr [r12 + 648]
 cmp rax, 1
 jge .Lx00271_0
 add rax, r15
 add rax, 1
.Lx00271_0:
 cmp rax, 1
 jl xchain00258_n12_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00258_n12_α
 mov qword ptr [r12 + 624], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00258_n11_α
 xchain00258_n10_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00258_n12_α
xchain00258_n11_α:
bb00272_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn525: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00258_n12_α
 jmp xchain00258_n13_α
 xchain00258_n11_β:
 jmp xchain00258_n12_α
xchain00258_n12_α:
# IR_LIT_INTEGER
bb00273_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00258_n14_α
 xchain00258_n12_β:
 jmp proc_gedlnf_ω
.Lx00274_0:
 .quad 0
xchain00258_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00275_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain00258_n12_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain00258_n15_α
 xchain00258_n13_β:
 jmp xchain00258_n18_α
xchain00258_n14_α:
# IR_SCAN_TAB
bb00276_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00277_0
 add rax, r15
 add rax, 1
.Lx00277_0:
 cmp rax, 1
 jl proc_gedlnf_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedlnf_ω
 mov qword ptr [r12 + 528], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00258_n17_α
 xchain00258_n14_β:
 mov r14, qword ptr [r12 + 528]
 jmp proc_gedlnf_ω
xchain00258_n15_α:
bb00159_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00258_n18_α
 xchain00258_n15_β:
 jmp xchain00258_n18_α
xchain00258_n16_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00278_α:
 jmp qword ptr [r12 + 480]
 xchain00258_n16_β:
 jmp xchain00258_n18_α
xchain00258_n17_α:
# IR_LIT_STRING
bb00161_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00258_n19_α
 xchain00258_n17_β:
 jmp proc_gedlnf_ω
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "/"
xchain00258_n18_α:
# IR_LIT_CHARSET
bb00280_α:
 mov qword ptr [r12 + 432], 1
 mov dword ptr [r12 + 436], -1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00258_n20_α
 xchain00258_n18_β:
 jmp xchain00258_n24_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "/"
xchain00258_n19_α:
bb00282_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00283_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00283_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00283_2
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00283_2
.Lx00283_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 jne proc_gedlnf_ω
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 496], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 504], rcx
 jmp xchain00258_n21_α
.Lx00283_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 lea r9, [r12 + 496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00283_1
 cmp eax, 1
 je proc_gedlnf_ω
 jmp xchain00258_n21_α
.Lx00283_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedlnf_ω
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 504], rax
 jmp xchain00258_n21_α
 xchain00258_n19_β:
 jmp proc_gedlnf_ω
xchain00258_n20_α:
# IR_SCAN_UPTO
bb00284_α:
 mov qword ptr [r12 + 416], r14
.Lx00285_0:
 mov rax, qword ptr [r12 + 416]
 cmp rax, r15
 jge xchain00258_n24_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00285_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00285_1
 mov qword ptr [r12 + 400], 6
 add rax, 1
 mov qword ptr [r12 + 408], rax
 jmp xchain00258_n22_α
.Lx00285_1:
 inc qword ptr [r12 + 416]
 jmp .Lx00285_0
 xchain00258_n20_β:
 inc qword ptr [r12 + 416]
 jmp .Lx00285_0
.Lx00285_2:
 .quad .Lx00285_2_s
.Lx00285_2_s:
 .string "/"
xchain00258_n21_α:
# IR_RETURN
bb00164_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedlnf_γ
xchain00258_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00286_α:
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
 lea rax, [rip + xchain00258_n24_α]
 mov qword ptr [r12 + 368], rax
 jmp xchain00258_n23_α
 xchain00258_n22_β:
 jmp xchain00258_n27_α
xchain00258_n23_α:
# IR_SCAN_TAB
bb00287_α:
 mov rax, qword ptr [r12 + 360]
 cmp rax, 1
 jge .Lx00288_0
 add rax, r15
 add rax, 1
.Lx00288_0:
 cmp rax, 1
 jl xchain00258_n27_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00258_n27_α
 mov qword ptr [r12 + 336], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00258_n26_α
 xchain00258_n23_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain00258_n27_α
xchain00258_n24_α:
# IR_LIT_INTEGER
bb00289_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00258_n28_α
 xchain00258_n24_β:
 jmp xchain00258_n27_α
.Lx00290_0:
 .quad 0
xchain00258_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00291_α:
 jmp qword ptr [r12 + 368]
 xchain00258_n25_β:
 jmp xchain00258_n27_α
xchain00258_n26_α:
bb00292_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00258_n29_α
 xchain00258_n26_β:
 jmp xchain00258_n27_α
xchain00258_n27_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00258_n30_α
 xchain00258_n27_β:
 jmp xchain00258_n30_α
xchain00258_n28_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00293_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
 lea rax, [rip + xchain00258_n27_α]
 mov qword ptr [r12 + 368], rax
 jmp xchain00258_n23_α
 xchain00258_n28_β:
 jmp xchain00258_n27_α
xchain00258_n29_α:
 jmp xchain00258_n31_α
xchain00258_n29_β:
 jmp xchain00258_n27_α
xchain00258_n30_α:
# IR_VAR
bb00294_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 232], rax
 jmp xchain00258_n32_α
 xchain00258_n30_β:
 jmp xchain00258_n35_α
xchain00258_n31_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00258_n30_α
 xchain00258_n31_β:
 jmp xchain00258_n30_α
xchain00258_n32_α:
# IR_LIT_STRING
bb00295_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00258_n33_α
 xchain00258_n32_β:
 jmp xchain00258_n35_α
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string ", "
xchain00258_n33_α:
bb00172_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00258_n34_α
 xchain00258_n33_β:
 jmp xchain00258_n35_α
xchain00258_n34_α:
# IR_VAR
bb00297_α:
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 264], rax
 jmp xchain00258_n36_α
 xchain00258_n34_β:
 jmp xchain00258_n35_α
xchain00258_n35_α:
# IR_VAR
bb00174_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 88], rax
 jmp xchain00258_n37_α
 xchain00258_n35_β:
 jmp xchain00258_n43_α
xchain00258_n36_α:
bb00298_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00258_n38_α
 xchain00258_n36_β:
 jmp xchain00258_n35_α
xchain00258_n37_α:
# IR_LIT_STRING
bb00299_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00258_n39_α
 xchain00258_n37_β:
 jmp xchain00258_n43_α
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string " "
xchain00258_n38_α:
bb00301_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00258_n35_α
 xchain00258_n38_β:
 jmp xchain00258_n35_α
xchain00258_n39_α:
# IR_VAR
bb00177_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00258_n40_α
 xchain00258_n39_β:
 jmp xchain00258_n43_α
xchain00258_n40_α:
# IR_LIT_STRING
bb00302_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00258_n41_α
 xchain00258_n40_β:
 jmp xchain00258_n43_α
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "TITL"
xchain00258_n41_α:
bb00304_α:
  .section .rodata
  .Lcall00304_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00304_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00258_n43_α
 jmp xchain00258_n42_α
xchain00258_n41_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00258_n43_α
 jmp xchain00258_n42_α
xchain00258_n42_α:
bb00305_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00258_n44_α
 xchain00258_n42_β:
 jmp xchain00258_n43_α
xchain00258_n43_α:
# IR_VAR
bb00306_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 40], rax
 jmp xchain00258_n45_α
 xchain00258_n43_β:
 jmp proc_gedlnf_ω
xchain00258_n44_α:
bb00307_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00258_n46_α
 xchain00258_n44_β:
 jmp xchain00258_n43_α
xchain00258_n45_α:
# IR_RETURN
bb00308_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedlnf_γ
xchain00258_n46_α:
bb00182_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00258_n43_α
 xchain00258_n46_β:
 jmp xchain00258_n43_α
proc_gedlnf_β:
jmp proc_gedlnf_ω
proc_gedlnf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gedlnf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_geddate_α
proc_geddate_α:
#=======================================================================================================================
    .global proc_geddate_α
    .global proc_geddate_β
    .global proc_geddate_γ
    .global proc_geddate_ω
push r12
  mov r12, rdi
proc_geddate_α_body:
xchain00309_n0_α:
# IR_VAR_REF gva
bb00310_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00309_n1_α
 xchain00309_n0_β:
 jmp xchain00309_n3_α
xchain00309_n1_α:
# IR_UNOP_TEST lv
bb00311_α:
 mov eax, dword ptr [r12 + 2400]
 cmp eax, 99
 je xchain00309_n3_α
 mov rdi, qword ptr [r12 + 2400]
 mov rsi, qword ptr [r12 + 2408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00309_n3_α
 cmp eax, 0
 jne xchain00309_n3_α
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2424], rax
 jmp xchain00309_n2_α
 xchain00309_n1_β:
 jmp xchain00309_n3_α
xchain00309_n2_α:
# IR_LIT_INTEGER
bb00185_α:
 mov qword ptr [r12 + 2448], 6
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00309_n4_α
 xchain00309_n2_β:
 jmp xchain00309_n3_α
.Lx00312_0:
 .quad 1
xchain00309_n3_α:
# IR_VAR
bb00313_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 936], rax
 jmp xchain00309_n5_α
 xchain00309_n3_β:
 jmp proc_geddate_ω
xchain00309_n4_α:
# IR_ASSIGN_VAR write through variable
bb00314_α:
 mov rdi, qword ptr [r12 + 2416]
 mov rsi, qword ptr [r12 + 2424]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n3_α
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00309_n6_α
 xchain00309_n4_β:
 jmp xchain00309_n3_α
xchain00309_n5_α:
# IR_LIT_STRING
bb00186_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00309_n7_α
 xchain00309_n5_β:
 jmp proc_geddate_ω
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "DATE"
xchain00309_n6_α:
bb00316_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn586: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn586]
 lea rsi, [r12 + 2400]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain00309_n9_α
 jmp xchain00309_n8_α
 xchain00309_n6_β:
 jmp xchain00309_n9_α
xchain00309_n7_α:
bb00317_α:
  .section .rodata
  .Lcall00317_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00317_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00309_n10_α
xchain00309_n7_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00309_n10_α
xchain00309_n8_α:
# IR_ASSIGN gva
bb00318_α:
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain00309_n9_α
 xchain00309_n8_β:
 jmp xchain00309_n9_α
xchain00309_n9_α:
# IR_VAR_REF gva
bb00319_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00309_n11_α
 xchain00309_n9_β:
 jmp xchain00309_n16_α
xchain00309_n10_α:
# IR_LIT_CHARSET
bb00320_α:
 mov qword ptr [r12 + 960], 1
 mov dword ptr [r12 + 964], -1
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00309_n12_α
 xchain00309_n10_β:
 jmp xchain00309_n7_β
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "\t\n "
xchain00309_n11_α:
# IR_LIT_STRING
bb00322_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00309_n13_α
 xchain00309_n11_β:
 jmp xchain00309_n16_α
.Lx00323_0:
 .quad .Lx00323_0_s
.Lx00323_0_s:
 .string "JAN"
xchain00309_n12_α:
bb00324_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+912] -> [r12+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+896]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn594: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn594]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00309_n14_α
 xchain00309_n12_β:
 jmp proc_geddate_ω
xchain00309_n13_α:
# IR_SUBSCRIPT x[i] variable
bb00325_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n16_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00309_n15_α
 xchain00309_n13_β:
 jmp xchain00309_n16_α
xchain00309_n14_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00326_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain00309_n7_β]
 mov qword ptr [r12 + 848], rax
 jmp xchain00309_n17_α
 xchain00309_n14_β:
 jmp xchain00309_n21_α
xchain00309_n15_α:
# IR_LIT_STRING
bb00327_α:
 mov qword ptr [r12 + 2352], 1
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00309_n19_α
 xchain00309_n15_β:
 jmp xchain00309_n16_α
.Lx00328_0:
 .quad .Lx00328_0_s
.Lx00328_0_s:
 .string "Jan"
xchain00309_n16_α:
# IR_VAR_REF gva
bb00329_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00309_n20_α
 xchain00309_n16_β:
 jmp xchain00309_n25_α
xchain00309_n17_α:
bb00330_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00309_n21_α
 xchain00309_n17_β:
 jmp xchain00309_n21_α
xchain00309_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00331_α:
 jmp qword ptr [r12 + 848]
 xchain00309_n18_β:
 jmp xchain00309_n21_α
xchain00309_n19_α:
# IR_ASSIGN_VAR write through variable
bb00332_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n16_α
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00309_n16_α
 xchain00309_n19_β:
 jmp xchain00309_n16_α
xchain00309_n20_α:
# IR_LIT_STRING
bb00333_α:
 mov qword ptr [r12 + 2224], 1
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00309_n22_α
 xchain00309_n20_β:
 jmp xchain00309_n25_α
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "FEB"
xchain00309_n21_α:
# IR_LIT_STRING
bb00335_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00309_n23_α
 xchain00309_n21_β:
 jmp xchain00309_n26_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string ""
xchain00309_n22_α:
# IR_SUBSCRIPT x[i] variable
bb00337_α:
 mov rdi, qword ptr [r12 + 2208]
 mov rsi, qword ptr [r12 + 2216]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n25_α
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00309_n24_α
 xchain00309_n22_β:
 jmp xchain00309_n25_α
xchain00309_n23_α:
bb00338_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00309_n26_α
 xchain00309_n23_β:
 jmp xchain00309_n26_α
xchain00309_n24_α:
# IR_LIT_STRING
bb00339_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain00309_n27_α
 xchain00309_n24_β:
 jmp xchain00309_n25_α
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "Feb"
xchain00309_n25_α:
# IR_VAR_REF gva
bb00341_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00309_n28_α
 xchain00309_n25_β:
 jmp xchain00309_n33_α
xchain00309_n26_α:
# IR_VAR
bb00192_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 776], rax
 jmp xchain00309_n29_α
 xchain00309_n26_β:
 jmp xchain00309_n40_α
xchain00309_n27_α:
# IR_ASSIGN_VAR write through variable
bb00193_α:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n25_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00309_n25_α
 xchain00309_n27_β:
 jmp xchain00309_n25_α
xchain00309_n28_α:
# IR_LIT_STRING
bb00342_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00309_n30_α
 xchain00309_n28_β:
 jmp xchain00309_n33_α
.Lx00343_0:
 .quad .Lx00343_0_s
.Lx00343_0_s:
 .string "MAR"
xchain00309_n29_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00309_n31_α
 xchain00309_n29_β:
 jmp xchain00309_n40_α
xchain00309_n30_α:
# IR_SUBSCRIPT x[i] variable
bb00344_α:
 mov rdi, qword ptr [r12 + 2128]
 mov rsi, qword ptr [r12 + 2136]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n33_α
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00309_n32_α
 xchain00309_n30_β:
 jmp xchain00309_n33_α
xchain00309_n31_α:
# IR_LIT_INTEGER
bb00345_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00309_n34_α
 xchain00309_n31_β:
 jmp xchain00309_n38_α
.Lx00346_0:
 .quad 0
xchain00309_n32_α:
# IR_LIT_STRING
bb00196_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00309_n35_α
 xchain00309_n32_β:
 jmp xchain00309_n33_α
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "Mar"
xchain00309_n33_α:
# IR_VAR_REF gva
bb00348_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00309_n36_α
 xchain00309_n33_β:
 jmp xchain00309_n43_α
xchain00309_n34_α:
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
bb00349_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00350_0
 add rax, r15
 add rax, 1
.Lx00350_0:
 cmp rax, 1
 jl xchain00309_n38_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00309_n38_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00309_n38_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00309_n37_α
 xchain00309_n34_β:
 jmp xchain00309_n38_α
xchain00309_n35_α:
# IR_ASSIGN_VAR write through variable
bb00198_α:
 mov rdi, qword ptr [r12 + 2160]
 mov rsi, qword ptr [r12 + 2168]
 mov rdx, qword ptr [r12 + 2192]
 mov rcx, qword ptr [r12 + 2200]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n33_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00309_n33_α
 xchain00309_n35_β:
 jmp xchain00309_n33_α
xchain00309_n36_α:
# IR_LIT_STRING
bb00200_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00309_n39_α
 xchain00309_n36_β:
 jmp xchain00309_n43_α
.Lx00351_0:
 .quad .Lx00351_0_s
.Lx00351_0_s:
 .string "APR"
xchain00309_n37_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00309_n40_α
 xchain00309_n37_β:
 jmp xchain00309_n40_α
xchain00309_n38_α:
# IR_KEYWORD_null
bb00352_α:
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 jmp xchain00309_n41_α
 xchain00309_n38_β:
 jmp xchain00309_n37_α
xchain00309_n39_α:
# IR_SUBSCRIPT x[i] variable
bb00353_α:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n43_α
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00309_n42_α
 xchain00309_n39_β:
 jmp xchain00309_n43_α
xchain00309_n40_α:
# IR_VAR
bb00354_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 248], rax
 jmp xchain00309_n44_α
 xchain00309_n40_β:
 jmp xchain00309_n49_α
xchain00309_n41_α:
# IR_LIT_CHARSET
bb00204_α:
 mov qword ptr [r12 + 752], 1
 mov dword ptr [r12 + 756], -1
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00309_n45_α
 xchain00309_n41_β:
 jmp xchain00309_n54_α
.Lx00355_0:
 .quad .Lx00355_0_s
.Lx00355_0_s:
 .string "\t\n "
xchain00309_n42_α:
# IR_LIT_STRING
bb00356_α:
 mov qword ptr [r12 + 2112], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00309_n46_α
 xchain00309_n42_β:
 jmp xchain00309_n43_α
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string "Apr"
xchain00309_n43_α:
# IR_VAR_REF gva
bb00358_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00309_n47_α
 xchain00309_n43_β:
 jmp xchain00309_n56_α
xchain00309_n44_α:
# IR_UNOP
bb00359_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 call rt_size_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00309_n48_α
 xchain00309_n44_β:
 jmp xchain00309_n49_α
xchain00309_n45_α:
# IR_SCAN_MANY
bb00207_α:
 mov eax, r14d
.Lx00360_0:
 cmp eax, r15d
 jge .Lx00360_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00360_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00360_1
 add eax, 1
 jmp .Lx00360_0
.Lx00360_1:
 cmp eax, r14d
 je xchain00309_n54_α
 mov qword ptr [r12 + 736], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 744], rcx
 jmp xchain00309_n50_α
 xchain00309_n45_β:
 jmp xchain00309_n54_α
.Lx00360_2:
 .quad .Lx00360_2_s
.Lx00360_2_s:
 .string "\t\n "
xchain00309_n46_α:
# IR_ASSIGN_VAR write through variable
bb00361_α:
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 mov rdx, qword ptr [r12 + 2112]
 mov rcx, qword ptr [r12 + 2120]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n43_α
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00309_n43_α
 xchain00309_n46_β:
 jmp xchain00309_n43_α
xchain00309_n47_α:
# IR_LIT_STRING
bb00362_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00309_n51_α
 xchain00309_n47_β:
 jmp xchain00309_n56_α
.Lx00363_0:
 .quad .Lx00363_0_s
.Lx00363_0_s:
 .string "MAY"
xchain00309_n48_α:
# IR_LIT_INTEGER
bb00210_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00309_n52_α
 xchain00309_n48_β:
 jmp xchain00309_n49_α
.Lx00364_0:
 .quad 13
xchain00309_n49_α:
# IR_VAR
bb00365_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 184], rax
 jmp xchain00309_n53_α
 xchain00309_n49_β:
 jmp proc_geddate_ω
xchain00309_n50_α:
# IR_SCAN_TAB
bb00366_α:
 mov rax, qword ptr [r12 + 744]
 cmp rax, 1
 jge .Lx00367_0
 add rax, r15
 add rax, 1
.Lx00367_0:
 cmp rax, 1
 jl xchain00309_n54_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00309_n54_α
 mov qword ptr [r12 + 720], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00309_n54_α
 xchain00309_n50_β:
 mov r14, qword ptr [r12 + 720]
 jmp xchain00309_n54_α
xchain00309_n51_α:
# IR_SUBSCRIPT x[i] variable
bb00368_α:
 mov rdi, qword ptr [r12 + 1968]
 mov rsi, qword ptr [r12 + 1976]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n56_α
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00309_n55_α
 xchain00309_n51_β:
 jmp xchain00309_n56_α
xchain00309_n52_α:
bb00369_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00370_0
 mov eax, dword ptr [r12 + 256]
 cmp eax, 100
 je .Lx00370_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00370_2
 mov eax, dword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx00370_2
.Lx00370_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 264]
 cmp rax, rcx
 jle xchain00309_n49_α
 mov rcx, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rcx
 mov rcx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rcx
 jmp xchain00309_n57_α
.Lx00370_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8d, 7
 lea r9, [r12 + 208]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00370_1
 cmp eax, 1
 je xchain00309_n49_α
 jmp xchain00309_n57_α
.Lx00370_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00309_n49_α
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
 jmp xchain00309_n57_α
 xchain00309_n52_β:
 jmp xchain00309_n49_α
xchain00309_n53_α:
# IR_LIT_INTEGER
bb00371_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00309_n58_α
 xchain00309_n53_β:
 jmp proc_geddate_ω
.Lx00372_0:
 .quad 12
xchain00309_n54_α:
# IR_LIT_CHARSET
bb00373_α:
 mov qword ptr [r12 + 688], 1
 mov dword ptr [r12 + 692], -1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00309_n59_α
 xchain00309_n54_β:
 jmp xchain00309_n68_α
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "\t\n "
xchain00309_n55_α:
# IR_LIT_STRING
bb00375_α:
 mov qword ptr [r12 + 2032], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00309_n60_α
 xchain00309_n55_β:
 jmp xchain00309_n56_α
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "May"
xchain00309_n56_α:
# IR_VAR_REF gva
bb00377_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00309_n61_α
 xchain00309_n56_β:
 jmp xchain00309_n71_α
xchain00309_n57_α:
# IR_VAR
bb00378_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 88], rax
 jmp xchain00309_n62_α
 xchain00309_n57_β:
 jmp proc_geddate_ω
xchain00309_n58_α:
bb00379_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn657: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00309_n63_α
 xchain00309_n58_β:
 jmp proc_geddate_ω
xchain00309_n59_α:
# IR_SCAN_UPTO
bb00214_α:
 mov qword ptr [r12 + 672], r14
.Lx00380_0:
 mov rax, qword ptr [r12 + 672]
 cmp rax, r15
 jge xchain00309_n68_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00380_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00380_1
 mov qword ptr [r12 + 656], 6
 add rax, 1
 mov qword ptr [r12 + 664], rax
 jmp xchain00309_n64_α
.Lx00380_1:
 inc qword ptr [r12 + 672]
 jmp .Lx00380_0
 xchain00309_n59_β:
 inc qword ptr [r12 + 672]
 jmp .Lx00380_0
.Lx00380_2:
 .quad .Lx00380_2_s
.Lx00380_2_s:
 .string "\t\n "
xchain00309_n60_α:
# IR_ASSIGN_VAR write through variable
bb00381_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2032]
 mov rcx, qword ptr [r12 + 2040]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n56_α
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00309_n56_α
 xchain00309_n60_β:
 jmp xchain00309_n56_α
xchain00309_n61_α:
# IR_LIT_STRING
bb00215_α:
 mov qword ptr [r12 + 1904], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00309_n65_α
 xchain00309_n61_β:
 jmp xchain00309_n71_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "JUN"
xchain00309_n62_α:
# IR_LIT_INTEGER
bb00383_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00309_n66_α
 xchain00309_n62_β:
 jmp proc_geddate_ω
.Lx00384_0:
 .quad 2
xchain00309_n63_α:
# IR_RETURN
bb00217_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_geddate_γ
xchain00309_n64_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00385_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 lea rax, [rip + xchain00309_n68_α]
 mov qword ptr [r12 + 624], rax
 jmp xchain00309_n67_α
 xchain00309_n64_β:
 jmp xchain00309_n74_α
xchain00309_n65_α:
# IR_SUBSCRIPT x[i] variable
bb00386_α:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, qword ptr [r12 + 1904]
 mov rcx, qword ptr [r12 + 1912]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n71_α
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00309_n70_α
 xchain00309_n65_β:
 jmp xchain00309_n71_α
xchain00309_n66_α:
# IR_LIT_INTEGER
bb00219_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00387_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00309_n72_α
 xchain00309_n66_β:
 jmp proc_geddate_ω
.Lx00387_0:
 .quad 0
xchain00309_n67_α:
# IR_SCAN_TAB
bb00388_α:
 mov rax, qword ptr [r12 + 616]
 cmp rax, 1
 jge .Lx00389_0
 add rax, r15
 add rax, 1
.Lx00389_0:
 cmp rax, 1
 jl xchain00309_n74_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00309_n74_α
 mov qword ptr [r12 + 592], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00309_n73_α
 xchain00309_n67_β:
 mov r14, qword ptr [r12 + 592]
 jmp xchain00309_n74_α
xchain00309_n68_α:
# IR_LIT_INTEGER
bb00390_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00309_n75_α
 xchain00309_n68_β:
 jmp xchain00309_n74_α
.Lx00391_0:
 .quad 0
xchain00309_n69_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00392_α:
 jmp qword ptr [r12 + 624]
 xchain00309_n69_β:
 jmp xchain00309_n74_α
xchain00309_n70_α:
# IR_LIT_STRING
bb00221_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00309_n76_α
 xchain00309_n70_β:
 jmp xchain00309_n71_α
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "Jun"
xchain00309_n71_α:
# IR_VAR_REF gva
bb00394_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00309_n77_α
 xchain00309_n71_β:
 jmp xchain00309_n83_α
xchain00309_n72_α:
# IR_SUBSCRIPT section
bb00395_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_get2@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00309_n78_α
 xchain00309_n72_β:
 jmp proc_geddate_ω
xchain00309_n73_α:
bb00396_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00309_n74_α
 xchain00309_n73_β:
 jmp xchain00309_n74_α
xchain00309_n74_α:
# IR_VAR
bb00223_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 392], rax
 jmp xchain00309_n79_α
 xchain00309_n74_β:
 jmp xchain00309_n31_α
xchain00309_n75_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00225_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
 lea rax, [rip + xchain00309_n74_α]
 mov qword ptr [r12 + 624], rax
 jmp xchain00309_n67_α
 xchain00309_n75_β:
 jmp xchain00309_n74_α
xchain00309_n76_α:
# IR_ASSIGN_VAR write through variable
bb00226_α:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n71_α
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain00309_n71_α
 xchain00309_n76_β:
 jmp xchain00309_n71_α
xchain00309_n77_α:
# IR_LIT_STRING
bb00397_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00309_n80_α
 xchain00309_n77_β:
 jmp xchain00309_n83_α
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "JUL"
xchain00309_n78_α:
# IR_RETURN
bb00227_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_geddate_γ
xchain00309_n79_α:
# IR_LIT_STRING
bb00399_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00309_n81_α
 xchain00309_n79_β:
 jmp xchain00309_n31_α
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string " "
xchain00309_n80_α:
# IR_SUBSCRIPT x[i] variable
bb00401_α:
 mov rdi, qword ptr [r12 + 1808]
 mov rsi, qword ptr [r12 + 1816]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n83_α
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00309_n82_α
 xchain00309_n80_β:
 jmp xchain00309_n83_α
xchain00309_n81_α:
# IR_VAR_REF gva
bb00402_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00309_n84_α
 xchain00309_n81_β:
 jmp xchain00309_n90_α
xchain00309_n82_α:
# IR_LIT_STRING
bb00403_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00309_n85_α
 xchain00309_n82_β:
 jmp xchain00309_n83_α
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "Jul"
xchain00309_n83_α:
# IR_VAR_REF gva
bb00230_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00309_n86_α
 xchain00309_n83_β:
 jmp xchain00309_n92_α
xchain00309_n84_α:
# IR_VAR
bb00232_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 520], rax
 jmp xchain00309_n87_α
 xchain00309_n84_β:
 jmp xchain00309_n90_α
xchain00309_n85_α:
# IR_ASSIGN_VAR write through variable
bb00405_α:
 mov rdi, qword ptr [r12 + 1840]
 mov rsi, qword ptr [r12 + 1848]
 mov rdx, qword ptr [r12 + 1872]
 mov rcx, qword ptr [r12 + 1880]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n83_α
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00309_n83_α
 xchain00309_n85_β:
 jmp xchain00309_n83_α
xchain00309_n86_α:
# IR_LIT_STRING
bb00406_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00309_n88_α
 xchain00309_n86_β:
 jmp xchain00309_n92_α
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "AUG"
xchain00309_n87_α:
# IR_SUBSCRIPT x[i] variable
bb00408_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n90_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00309_n89_α
 xchain00309_n87_β:
 jmp xchain00309_n90_α
xchain00309_n88_α:
# IR_SUBSCRIPT x[i] variable
bb00409_α:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n92_α
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00309_n91_α
 xchain00309_n88_β:
 jmp xchain00309_n92_α
xchain00309_n89_α:
# IR_DEREF variable -> value
bb00410_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00309_n90_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00309_n93_α
 xchain00309_n89_β:
 jmp xchain00309_n90_α
xchain00309_n90_α:
# IR_VAR
bb00411_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 472], rax
 jmp xchain00309_n94_α
 xchain00309_n90_β:
 jmp xchain00309_n31_α
xchain00309_n91_α:
# IR_LIT_STRING
bb00412_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00309_n95_α
 xchain00309_n91_β:
 jmp xchain00309_n92_α
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "Aug"
xchain00309_n92_α:
# IR_VAR_REF gva
bb00414_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00309_n96_α
 xchain00309_n92_β:
 jmp xchain00309_n00069_α
xchain00309_n93_α:
# IR_UNOP
bb00415_α:
 mov eax, dword ptr [r12 + 544]
 cmp eax, 99
 je xchain00309_n90_α
 cmp eax, 0
 je xchain00309_n90_α
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 488], rax
 jmp xchain00309_n97_α
 xchain00309_n93_β:
 jmp xchain00309_n90_α
xchain00309_n94_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00416_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00309_n31_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00309_n98_α
 xchain00309_n94_β:
 jmp xchain00309_n31_α
xchain00309_n95_α:
# IR_ASSIGN_VAR write through variable
bb00417_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n92_α
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00309_n92_α
 xchain00309_n95_β:
 jmp xchain00309_n92_α
xchain00309_n96_α:
# IR_LIT_STRING
bb00418_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00309_n00007_α
 xchain00309_n96_β:
 jmp xchain00309_n00069_α
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "SEP"
xchain00309_n97_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00420_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00309_n90_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00309_n98_α
 xchain00309_n97_β:
 jmp xchain00309_n31_α
xchain00309_n98_α:
bb00237_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00309_n00009_α
 xchain00309_n98_β:
 jmp xchain00309_n31_α
xchain00309_n99_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00421_α:
 jmp qword ptr [r12 + 448]
 xchain00309_n99_β:
 jmp xchain00309_n31_α
xchain00309_n00007_α:
# IR_SUBSCRIPT x[i] variable
bb00422_α:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00069_α
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00309_n00010_α
 xchain00309_n00007_β:
 jmp xchain00309_n00069_α
xchain00309_n00009_α:
bb00239_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00309_n00011_α
 xchain00309_n00009_β:
 jmp xchain00309_n31_α
xchain00309_n00010_α:
# IR_LIT_STRING
bb00423_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00309_n00012_α
 xchain00309_n00010_β:
 jmp xchain00309_n00069_α
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "Sep"
xchain00309_n00069_α:
# IR_VAR_REF gva
bb00425_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00309_n00013_α
 xchain00309_n00069_β:
 jmp xchain00309_n00018_α
xchain00309_n00011_α:
bb00426_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00309_n00014_α
 xchain00309_n00011_β:
 jmp xchain00309_n31_α
xchain00309_n00012_α:
# IR_ASSIGN_VAR write through variable
bb00427_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00069_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00309_n00069_α
 xchain00309_n00012_β:
 jmp xchain00309_n00069_α
xchain00309_n00013_α:
# IR_LIT_STRING
bb00428_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00309_n00001_α
 xchain00309_n00013_β:
 jmp xchain00309_n00018_α
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "OCT"
xchain00309_n00014_α:
 jmp xchain00309_n31_α
xchain00309_n00014_β:
 jmp xchain00309_n31_α
xchain00309_n00001_α:
# IR_SUBSCRIPT x[i] variable
bb00430_α:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00018_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00309_n00016_α
 xchain00309_n00001_β:
 jmp xchain00309_n00018_α
xchain00309_n00016_α:
# IR_LIT_STRING
bb00431_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain00309_n00020_α
 xchain00309_n00016_β:
 jmp xchain00309_n00018_α
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "Oct"
xchain00309_n00018_α:
# IR_VAR_REF gva
bb00433_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00309_n00021_α
 xchain00309_n00018_β:
 jmp xchain00309_n00025_α
xchain00309_n00020_α:
# IR_ASSIGN_VAR write through variable
bb00434_α:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00018_α
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00309_n00018_α
 xchain00309_n00020_β:
 jmp xchain00309_n00018_α
xchain00309_n00021_α:
# IR_LIT_STRING
bb00435_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00309_n00022_α
 xchain00309_n00021_β:
 jmp xchain00309_n00025_α
.Lx00436_0:
 .quad .Lx00436_0_s
.Lx00436_0_s:
 .string "NOV"
xchain00309_n00022_α:
# IR_SUBSCRIPT x[i] variable
bb00244_α:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00025_α
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00309_n00023_α
 xchain00309_n00022_β:
 jmp xchain00309_n00025_α
xchain00309_n00023_α:
# IR_LIT_STRING
bb00437_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx00438_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00309_n00026_α
 xchain00309_n00023_β:
 jmp xchain00309_n00025_α
.Lx00438_0:
 .quad .Lx00438_0_s
.Lx00438_0_s:
 .string "Nov"
xchain00309_n00025_α:
# IR_VAR_REF gva
bb00439_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00309_n00027_α
 xchain00309_n00025_β:
 jmp xchain00309_n00440_α
xchain00309_n00026_α:
# IR_ASSIGN_VAR write through variable
bb00441_α:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1552]
 mov rcx, qword ptr [r12 + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00025_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00309_n00025_α
 xchain00309_n00026_β:
 jmp xchain00309_n00025_α
xchain00309_n00027_α:
# IR_LIT_STRING
bb00442_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00309_n00029_α
 xchain00309_n00027_β:
 jmp xchain00309_n00440_α
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "DEC"
xchain00309_n00029_α:
# IR_SUBSCRIPT x[i] variable
bb00444_α:
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00440_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00309_n00030_α
 xchain00309_n00029_β:
 jmp xchain00309_n00440_α
xchain00309_n00030_α:
# IR_LIT_STRING
bb00249_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00309_n00031_α
 xchain00309_n00030_β:
 jmp xchain00309_n00440_α
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "Dec"
xchain00309_n00440_α:
# IR_VAR_REF gva
bb00446_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00309_n00032_α
 xchain00309_n00440_β:
 jmp xchain00309_n00003_α
xchain00309_n00031_α:
# IR_ASSIGN_VAR write through variable
bb00447_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00440_α
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00309_n00440_α
 xchain00309_n00031_β:
 jmp xchain00309_n00440_α
xchain00309_n00032_α:
# IR_LIT_STRING
bb00448_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00309_n00033_α
 xchain00309_n00032_β:
 jmp xchain00309_n00003_α
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "ABT"
xchain00309_n00033_α:
# IR_SUBSCRIPT x[i] variable
bb00450_α:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00003_α
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00309_n00002_α
 xchain00309_n00033_β:
 jmp xchain00309_n00003_α
xchain00309_n00002_α:
# IR_LIT_STRING
bb00451_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00309_n00036_α
 xchain00309_n00002_β:
 jmp xchain00309_n00003_α
.Lx00452_0:
 .quad .Lx00452_0_s
.Lx00452_0_s:
 .string "abt"
xchain00309_n00003_α:
# IR_VAR_REF gva
bb00453_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00309_n00038_α
 xchain00309_n00003_β:
 jmp xchain00309_n00041_α
xchain00309_n00036_α:
# IR_ASSIGN_VAR write through variable
bb00454_α:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00003_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00309_n00003_α
 xchain00309_n00036_β:
 jmp xchain00309_n00003_α
xchain00309_n00038_α:
# IR_LIT_STRING
bb00455_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx00456_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00309_n00004_α
 xchain00309_n00038_β:
 jmp xchain00309_n00041_α
.Lx00456_0:
 .quad .Lx00456_0_s
.Lx00456_0_s:
 .string "BEF"
xchain00309_n00004_α:
# IR_SUBSCRIPT x[i] variable
bb00457_α:
 mov rdi, qword ptr [r12 + 1248]
 mov rsi, qword ptr [r12 + 1256]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00041_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00309_n00039_α
 xchain00309_n00004_β:
 jmp xchain00309_n00041_α
xchain00309_n00039_α:
# IR_LIT_STRING
bb00458_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00459_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00309_n00043_α
 xchain00309_n00039_β:
 jmp xchain00309_n00041_α
.Lx00459_0:
 .quad .Lx00459_0_s
.Lx00459_0_s:
 .string "bef"
xchain00309_n00041_α:
# IR_VAR_REF gva
bb00258_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00309_n00044_α
 xchain00309_n00041_β:
 jmp xchain00309_n00047_α
xchain00309_n00043_α:
# IR_ASSIGN_VAR write through variable
bb00460_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00041_α
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00309_n00041_α
 xchain00309_n00043_β:
 jmp xchain00309_n00041_α
xchain00309_n00044_α:
# IR_LIT_STRING
bb00461_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00309_n00045_α
 xchain00309_n00044_β:
 jmp xchain00309_n00047_α
.Lx00462_0:
 .quad .Lx00462_0_s
.Lx00462_0_s:
 .string "AFT"
xchain00309_n00045_α:
# IR_SUBSCRIPT x[i] variable
bb00261_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00047_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00309_n00046_α
 xchain00309_n00045_β:
 jmp xchain00309_n00047_α
xchain00309_n00046_α:
# IR_LIT_STRING
bb00463_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00309_n00049_α
 xchain00309_n00046_β:
 jmp xchain00309_n00047_α
.Lx00464_0:
 .quad .Lx00464_0_s
.Lx00464_0_s:
 .string "aft"
xchain00309_n00047_α:
# IR_VAR_REF gva
bb00465_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00309_n00050_α
 xchain00309_n00047_β:
 jmp xchain00309_n00053_α
xchain00309_n00049_α:
# IR_ASSIGN_VAR write through variable
bb00466_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1232]
 mov rcx, qword ptr [r12 + 1240]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00047_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00309_n00047_α
 xchain00309_n00049_β:
 jmp xchain00309_n00047_α
xchain00309_n00050_α:
# IR_LIT_STRING
bb00467_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00309_n00051_α
 xchain00309_n00050_β:
 jmp xchain00309_n00053_α
.Lx00468_0:
 .quad .Lx00468_0_s
.Lx00468_0_s:
 .string "CAL"
xchain00309_n00051_α:
# IR_SUBSCRIPT x[i] variable
bb00469_α:
 mov rdi, qword ptr [r12 + 1088]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n00053_α
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00309_n00052_α
 xchain00309_n00051_β:
 jmp xchain00309_n00053_α
xchain00309_n00052_α:
# IR_LIT_STRING
bb00470_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00309_n00005_α
 xchain00309_n00052_β:
 jmp xchain00309_n00053_α
.Lx00471_0:
 .quad .Lx00471_0_s
.Lx00471_0_s:
 .string "cal"
xchain00309_n00053_α:
# IR_VAR_REF gva
bb00472_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00309_n00054_α
 xchain00309_n00053_β:
 jmp xchain00309_n3_α
xchain00309_n00005_α:
# IR_ASSIGN_VAR write through variable
bb00473_α:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n00053_α
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00309_n00053_α
 xchain00309_n00005_β:
 jmp xchain00309_n00053_α
xchain00309_n00054_α:
# IR_LIT_STRING
bb00474_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00309_n00006_α
 xchain00309_n00054_β:
 jmp xchain00309_n3_α
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "EST"
xchain00309_n00006_α:
# IR_SUBSCRIPT x[i] variable
bb00476_α:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00309_n3_α
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00309_n00056_α
 xchain00309_n00006_β:
 jmp xchain00309_n3_α
xchain00309_n00056_α:
# IR_LIT_STRING
bb00267_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00309_n00057_α
 xchain00309_n00056_β:
 jmp xchain00309_n3_α
.Lx00477_0:
 .quad .Lx00477_0_s
.Lx00477_0_s:
 .string "est"
xchain00309_n00057_α:
# IR_ASSIGN_VAR write through variable
bb00478_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00309_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00309_n00058_α
 xchain00309_n00057_β:
 jmp xchain00309_n3_α
xchain00309_n00058_α:
 jmp xchain00309_n00008_α
xchain00309_n00058_β:
 jmp xchain00309_n3_α
xchain00309_n00008_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00479_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 984], rax
 lea rax, [rip + xchain00309_n3_α]
 mov qword ptr [r12 + 992], rax
 jmp xchain00309_n3_α
 xchain00309_n00008_β:
 jmp xchain00309_n3_α
xchain00309_n00060_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00271_α:
 jmp qword ptr [r12 + 992]
 xchain00309_n00060_β:
 jmp xchain00309_n3_α
proc_geddate_β:
jmp proc_geddate_ω
proc_geddate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_geddate_ω:
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
  .Lclassspec0: .string "person(n,k,r)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "gedcom(tree,id,fam,ind)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
  .section .rodata
  .Lclassspec2: .string "gednode(level,id,tag,data,lnum,parent,ref,sub)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec2]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "event"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_event_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "refto"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_refto_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "sortkey"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_sortkey_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "gedload"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_gedload_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "gedscan"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_gedscan_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_gedwalk_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "gedsub"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_gedsub_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  .section .rodata
  .Lstartup_pname7: .string "gedval"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_gedval_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  .section .rodata
  .Lstartup_pname8: .string "gedref"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_gedref_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  .section .rodata
  .Lstartup_pname9: .string "gedfnf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_gedfnf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname10: .string "gedlnf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_gedlnf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname11: .string "geddate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_geddate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ptab"
  .Lgvan1: .string "gedscan__STATIC__alnum"
  .Lgvan2: .string "gedscan__INITFLAG__0"
  .Lgvan3: .string "geddate__STATIC__ftab"
  .Lgvan4: .string "geddate__INITFLAG__0"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .bss
  .align 16
__gva: .space 80, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 5
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
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
xchain00480_n0_α:
# IR_VAR
bb00481_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3384], rax
 jmp xchain00480_n1_α
 xchain00480_n0_β:
 jmp xchain00480_n3_α
xchain00480_n1_α:
# IR_UNOP
bb00482_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain00480_n2_α
 xchain00480_n1_β:
 jmp xchain00480_n3_α
xchain00480_n2_α:
# IR_LIT_INTEGER
bb00274_α:
 mov qword ptr [r12 + 3392], 6
 mov rax, qword ptr [rip + .Lx00483_0]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00480_n4_α
 xchain00480_n2_β:
 jmp xchain00480_n3_α
.Lx00483_0:
 .quad 0
xchain00480_n3_α:
# IR_KEYWORD_read
bb00484_α:
 mov rdi, qword ptr [rip + .Lx00485_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 jmp xchain00480_n5_α
 xchain00480_n3_β:
 jmp xchain00480_n9_α
.Lx00485_0:
 .quad .Lx00485_0_s
.Lx00485_0_s:
 .string "&input"
xchain00480_n4_α:
bb00486_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 100
 je .Lx00487_0
 mov eax, dword ptr [r12 + 3392]
 cmp eax, 100
 je .Lx00487_0
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 6
 jne .Lx00487_2
 mov eax, dword ptr [r12 + 3392]
 cmp eax, 6
 jne .Lx00487_2
.Lx00487_1:
 mov rax, qword ptr [r12 + 3368]
 mov rcx, qword ptr [r12 + 3400]
 cmp rax, rcx
 jle xchain00480_n3_α
 mov rcx, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3344], rcx
 mov rcx, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3352], rcx
 jmp xchain00480_n6_α
.Lx00487_0:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3392]
 mov rcx, qword ptr [r12 + 3400]
 mov r8d, 7
 lea r9, [r12 + 3344]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00487_1
 cmp eax, 1
 je xchain00480_n3_α
 jmp xchain00480_n6_α
.Lx00487_2:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3392]
 mov rcx, qword ptr [r12 + 3400]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00480_n3_α
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3352], rax
 jmp xchain00480_n6_α
 xchain00480_n4_β:
 jmp xchain00480_n3_α
xchain00480_n5_α:
bb00488_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3312]
 mov rdx, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain00480_n7_α
 xchain00480_n5_β:
 jmp xchain00480_n9_α
xchain00480_n6_α:
# IR_VAR_REF local
bb00277_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain00480_n8_α
 xchain00480_n6_β:
 jmp xchain00480_n14_α
xchain00480_n7_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00489_α:
 mov rax, qword ptr [r12 + 3296]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3304]
 mov qword ptr [r12 + 3000], rax
 lea rax, [rip + xchain00480_n9_α]
 mov qword ptr [r12 + 3008], rax
 jmp xchain00480_n9_α
 xchain00480_n7_β:
 jmp xchain00480_n9_α
xchain00480_n8_α:
# IR_LIT_INTEGER
bb00490_α:
 mov qword ptr [r12 + 3248], 6
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [r12 + 3256], rax
 jmp xchain00480_n11_α
 xchain00480_n8_β:
 jmp xchain00480_n14_α
.Lx00491_0:
 .quad 1
xchain00480_n9_α:
# IR_VAR
bb00492_α:
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 2984], rax
 jmp xchain00480_n12_α
 xchain00480_n9_β:
 jmp xchain00480_n16_α
xchain00480_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00279_α:
 jmp qword ptr [r12 + 3008]
 xchain00480_n10_β:
 jmp xchain00480_n9_α
xchain00480_n11_α:
# IR_SUBSCRIPT x[i] variable
bb00281_α:
 mov rdi, qword ptr [r12 + 3232]
 mov rsi, qword ptr [r12 + 3240]
 mov rdx, qword ptr [r12 + 3248]
 mov rcx, qword ptr [r12 + 3256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n14_α
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00480_n13_α
 xchain00480_n11_β:
 jmp xchain00480_n14_α
xchain00480_n12_α:
bb00283_α:
  .section .rodata
  .Lcall00283_pname: .string "gedload"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00283_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 cmp eax, 99
 je xchain00480_n16_α
 jmp xchain00480_n15_α
xchain00480_n12_β:
 jmp xchain00480_n16_α
xchain00480_n13_α:
# IR_DEREF variable -> value
bb00493_α:
 mov rdi, qword ptr [r12 + 3264]
 mov rsi, qword ptr [r12 + 3272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00480_n14_α
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00480_n17_α
 xchain00480_n13_β:
 jmp xchain00480_n14_α
xchain00480_n14_α:
# IR_LIT_STRING
bb00285_α:
 mov qword ptr [r12 + 3120], 1
 mov rax, qword ptr [rip + .Lx00494_0]
 mov qword ptr [r12 + 3128], rax
 jmp xchain00480_n18_α
 xchain00480_n14_β:
 jmp xchain00480_n9_α
.Lx00494_0:
 .quad .Lx00494_0_s
.Lx00494_0_s:
 .string "can't open "
xchain00480_n15_α:
bb00495_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2944]
 mov rdx, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00480_n16_α
 xchain00480_n15_β:
 jmp xchain00480_n16_α
xchain00480_n16_α:
# IR_VAR
bb00496_α:
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00480_n19_α
 xchain00480_n16_β:
 jmp xchain00480_n22_α
xchain00480_n17_α:
bb00497_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3280] -> [r12+3216]
 mov rax, qword ptr [r12 + 3280]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn798: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn798]
 lea rsi, [r12 + 3216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain00480_n14_α
 jmp xchain00480_n20_α
 xchain00480_n17_β:
 jmp xchain00480_n14_α
xchain00480_n18_α:
# IR_VAR_REF local
bb00498_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain00480_n21_α
 xchain00480_n18_β:
 jmp xchain00480_n9_α
xchain00480_n19_α:
bb00288_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2912] -> [r12+2896]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2904], rax
  .section .rodata
  .Lrkfn802: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn802]
 lea rsi, [r12 + 2896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain00480_n22_α
 jmp xchain00480_n22_α
 xchain00480_n19_β:
 jmp xchain00480_n22_α
xchain00480_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00290_α:
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3048], rax
 lea rax, [rip + xchain00480_n14_α]
 mov qword ptr [r12 + 3056], rax
 jmp xchain00480_n23_α
 xchain00480_n20_β:
 jmp xchain00480_n9_α
xchain00480_n21_α:
# IR_LIT_INTEGER
bb00499_α:
 mov qword ptr [r12 + 3152], 6
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain00480_n25_α
 xchain00480_n21_β:
 jmp xchain00480_n9_α
.Lx00500_0:
 .quad 1
xchain00480_n22_α:
# IR_MAKE_LIST
bb00501_α:
 lea rdi, [r12 + 2880]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00480_n26_α
 xchain00480_n22_β:
 jmp xchain00480_n29_α
xchain00480_n23_α:
bb00502_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00480_n27_α
 xchain00480_n23_β:
 jmp xchain00480_n9_α
xchain00480_n24_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00503_α:
 jmp qword ptr [r12 + 3056]
 xchain00480_n24_β:
 jmp xchain00480_n9_α
xchain00480_n25_α:
# IR_SUBSCRIPT x[i] variable
bb00504_α:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3152]
 mov rcx, qword ptr [r12 + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n9_α
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 jmp xchain00480_n28_α
 xchain00480_n25_β:
 jmp xchain00480_n9_α
xchain00480_n26_α:
bb00505_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain00480_n29_α
 xchain00480_n26_β:
 jmp xchain00480_n29_α
xchain00480_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00506_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3000], rax
 lea rax, [rip + xchain00480_n24_α]
 mov qword ptr [r12 + 3008], rax
 jmp xchain00480_n9_α
 xchain00480_n27_β:
 jmp xchain00480_n9_α
xchain00480_n28_α:
# IR_DEREF variable -> value
bb00507_α:
 mov rdi, qword ptr [r12 + 3168]
 mov rsi, qword ptr [r12 + 3176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00480_n9_α
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain00480_n30_α
 xchain00480_n28_β:
 jmp xchain00480_n9_α
xchain00480_n29_α:
bb00508_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn817: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn817]
 lea rsi, [r12 + 2848]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain00480_n32_α
 jmp xchain00480_n31_α
 xchain00480_n29_β:
 jmp xchain00480_n32_α
xchain00480_n30_α:
bb00509_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3120] -> [r12+3088]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [r12+3184] -> [r12+3104]
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3112], rax
  .section .rodata
  .Lrkfn819: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn819]
 lea rsi, [r12 + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain00480_n9_α
 jmp xchain00480_n33_α
 xchain00480_n30_β:
 jmp xchain00480_n9_α
xchain00480_n31_α:
# IR_ASSIGN gva
bb00510_α:
 mov rax, qword ptr [r12 + 2832]
 mov rdx, qword ptr [r12 + 2840]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00480_n32_α
 xchain00480_n31_β:
 jmp xchain00480_n32_α
xchain00480_n32_α:
# IR_VAR
bb00511_α:
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00480_n34_α
 xchain00480_n32_β:
 jmp xchain00480_n48_α
xchain00480_n33_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00296_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
 lea rax, [rip + xchain00480_n9_α]
 mov qword ptr [r12 + 3056], rax
 jmp xchain00480_n23_α
 xchain00480_n33_β:
 jmp xchain00480_n9_α
xchain00480_n34_α:
# IR_FIELD_GET
bb00512_α:
 mov rdi, qword ptr [rip + .Lx00513_0]
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n48_α
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00480_n35_α
 xchain00480_n34_β:
 jmp xchain00480_n48_α
.Lx00513_0:
 .quad .Lx00513_0_s
.Lx00513_0_s:
 .string "ind"
xchain00480_n35_α:
# IR_LIST_BANG
bb00514_α:
 mov qword ptr [r12 + 2496], 0
.Lx00515_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00480_n48_α
 jmp xchain00480_n36_α
 xchain00480_n35_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00515_0
xchain00480_n36_α:
bb00516_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00480_n37_α
 xchain00480_n36_β:
 jmp xchain00480_n48_α
xchain00480_n37_α:
# IR_VAR
bb00517_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00480_n38_α
 xchain00480_n37_β:
 jmp xchain00480_n35_β
xchain00480_n38_α:
# IR_VAR_REF gva
bb00518_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00480_n39_α
 xchain00480_n38_β:
 jmp xchain00480_n35_β
xchain00480_n39_α:
# IR_VAR
bb00519_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 2632], rax
 jmp xchain00480_n40_α
 xchain00480_n39_β:
 jmp xchain00480_n35_β
xchain00480_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00300_α:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n35_β
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain00480_n41_α
 xchain00480_n40_β:
 jmp xchain00480_n35_β
xchain00480_n41_α:
# IR_LIT_INTEGER
bb00520_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00480_n42_α
 xchain00480_n41_β:
 jmp xchain00480_n35_β
.Lx00521_0:
 .quad 0
xchain00480_n42_α:
# IR_VAR
bb00522_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 2792], rax
 jmp xchain00480_n43_α
 xchain00480_n42_β:
 jmp xchain00480_n35_β
xchain00480_n43_α:
bb00523_α:
  .section .rodata
  .Lcall00523_pname: .string "sortkey"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2784]
 mov rdx, qword ptr [r12 + 2792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00523_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain00480_n35_β
 jmp xchain00480_n44_α
xchain00480_n43_β:
 jmp xchain00480_n35_β
xchain00480_n44_α:
# IR_VAR
bb00303_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00480_n45_α
 xchain00480_n44_β:
 jmp xchain00480_n35_β
xchain00480_n45_α:
bb00524_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2736] -> [r12+2688]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2696], rax
# marshal arg1 = producer-box slot [r12+2752] -> [r12+2704]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
# marshal arg2 = producer-box slot [r12+2800] -> [r12+2720]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2728], rax
  .section .rodata
  .Lrkfn843: .string "person"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn843]
 lea rsi, [r12 + 2688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain00480_n35_β
 jmp xchain00480_n46_α
 xchain00480_n45_β:
 jmp xchain00480_n35_β
xchain00480_n46_α:
# IR_ASSIGN_VAR write through variable
bb00525_α:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00480_n35_β
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain00480_n47_α
 xchain00480_n46_β:
 jmp xchain00480_n35_β
xchain00480_n47_α:
bb00526_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2592] -> [r12+2560]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2568], rax
# marshal arg1 = producer-box slot [r12+2656] -> [r12+2576]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2584], rax
  .section .rodata
  .Lrkfn846: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn846]
 lea rsi, [r12 + 2560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain00480_n35_β
 jmp xchain00480_n35_β
 xchain00480_n47_β:
 jmp xchain00480_n35_β
xchain00480_n48_α:
# IR_VAR
bb00527_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 2440], rax
 jmp xchain00480_n49_α
 xchain00480_n48_β:
 jmp xchain00480_n52_α
xchain00480_n49_α:
# IR_LIT_INTEGER
bb00528_α:
 mov qword ptr [r12 + 2448], 6
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00480_n50_α
 xchain00480_n49_β:
 jmp xchain00480_n52_α
.Lx00529_0:
 .quad 2
xchain00480_n50_α:
bb00530_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2432] -> [r12+2400]
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2408], rax
# marshal arg1 = producer-box slot [r12+2448] -> [r12+2416]
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn851: .string "sortf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn851]
 lea rsi, [r12 + 2400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain00480_n52_α
 jmp xchain00480_n51_α
 xchain00480_n50_β:
 jmp xchain00480_n52_α
xchain00480_n51_α:
bb00531_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain00480_n52_α
 xchain00480_n51_β:
 jmp xchain00480_n52_α
xchain00480_n52_α:
# IR_LIT_INTEGER
bb00309_α:
 mov qword ptr [r12 + 2352], 6
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00480_n53_α
 xchain00480_n52_β:
 jmp xchain00480_n54_α
.Lx00532_0:
 .quad 0
xchain00480_n53_α:
bb00533_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2352]
 mov rdx, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00480_n54_α
 xchain00480_n53_β:
 jmp xchain00480_n54_α
xchain00480_n54_α:
# IR_VAR
bb00534_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00480_n55_α
 xchain00480_n54_β:
 jmp xchain00480_n57_α
xchain00480_n55_α:
# IR_LIST_BANG
bb00535_α:
 mov qword ptr [r12 + 2224], 0
.Lx00536_0:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2224]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp rax, 99
 je xchain00480_n57_α
 jmp xchain00480_n56_α
 xchain00480_n55_β:
 inc qword ptr [r12 + 2224]
 jmp .Lx00536_0
xchain00480_n56_α:
# IR_FIELD_GET lv
bb00312_α:
 mov rdi, qword ptr [rip + .Lx00537_0]
 mov rsi, qword ptr [r12 + 2208]
 mov rdx, qword ptr [r12 + 2216]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00480_n57_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00480_n58_α
 xchain00480_n56_β:
 jmp xchain00480_n57_α
.Lx00537_0:
 .quad .Lx00537_0_s
.Lx00537_0_s:
 .string "n"
xchain00480_n57_α:
# IR_VAR
bb00538_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 88], rax
 jmp xchain00480_n59_α
 xchain00480_n57_β:
 jmp main_ω
xchain00480_n58_α:
# IR_VAR
bb00539_α:
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00480_n60_α
 xchain00480_n58_β:
 jmp xchain00480_n55_β
xchain00480_n59_α:
# IR_LIST_BANG
bb00540_α:
 mov qword ptr [r12 + 64], 0
.Lx00541_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00480_n61_α
 xchain00480_n59_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00541_0
xchain00480_n60_α:
# IR_LIT_INTEGER
bb00315_α:
 mov qword ptr [r12 + 2320], 6
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00480_n62_α
 xchain00480_n60_β:
 jmp xchain00480_n55_β
.Lx00542_0:
 .quad 1
xchain00480_n61_α:
bb00543_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00480_n63_α
 xchain00480_n61_β:
 jmp main_ω
xchain00480_n62_α:
bb00544_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3488]
 cmp eax, 100
 je .Lx00545_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00545_0
 mov eax, dword ptr [r12 + 3488]
 cmp eax, 6
 jne .Lx00545_2
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00545_2
.Lx00545_1:
 mov rax, qword ptr [r12 + 3496]
 mov rcx, qword ptr [r12 + 2328]
 add rax, rcx
 mov qword ptr [r12 + 2288], 6
 mov qword ptr [r12 + 2296], rax
 jmp xchain00480_n64_α
.Lx00545_0:
 mov rdi, qword ptr [r12 + 3488]
 mov rsi, qword ptr [r12 + 3496]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 0
 lea r9, [r12 + 2288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00545_3
.Lx00545_2:
 mov rdi, qword ptr [r12 + 3488]
 mov rsi, qword ptr [r12 + 3496]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00480_n55_β
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
.Lx00545_3:
 jmp xchain00480_n64_α
 xchain00480_n62_β:
 jmp xchain00480_n55_β
xchain00480_n63_α:
bb00546_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn870: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn870]
 lea rsi, [r12 + 2192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain00480_n65_α
 jmp xchain00480_n65_α
 xchain00480_n63_β:
 jmp xchain00480_n65_α
xchain00480_n64_α:
bb00547_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00480_n66_α
 xchain00480_n64_β:
 jmp xchain00480_n55_β
xchain00480_n65_α:
# IR_LIT_STRING
bb00548_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00480_n67_α
 xchain00480_n65_β:
 jmp xchain00480_n74_α
.Lx00549_0:
 .quad .Lx00549_0_s
.Lx00549_0_s:
 .string "["
xchain00480_n66_α:
# IR_ASSIGN_VAR write through variable
bb00550_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00480_n57_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00480_n55_β
 xchain00480_n66_β:
 jmp xchain00480_n57_α
xchain00480_n67_α:
# IR_VAR
bb00321_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00480_n68_α
 xchain00480_n67_β:
 jmp xchain00480_n74_α
xchain00480_n68_α:
# IR_FIELD_GET
bb00323_α:
 mov rdi, qword ptr [rip + .Lx00551_0]
 mov rsi, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n74_α
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00480_n69_α
 xchain00480_n68_β:
 jmp xchain00480_n74_α
.Lx00551_0:
 .quad .Lx00551_0_s
.Lx00551_0_s:
 .string "n"
xchain00480_n69_α:
# IR_LIT_STRING
bb00552_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00480_n70_α
 xchain00480_n69_β:
 jmp xchain00480_n74_α
.Lx00553_0:
 .quad .Lx00553_0_s
.Lx00553_0_s:
 .string "] "
xchain00480_n70_α:
# IR_VAR
bb00554_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00480_n71_α
 xchain00480_n70_β:
 jmp xchain00480_n74_α
xchain00480_n71_α:
# IR_FIELD_GET
bb00555_α:
 mov rdi, qword ptr [rip + .Lx00556_0]
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n74_α
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00480_n72_α
 xchain00480_n71_β:
 jmp xchain00480_n74_α
.Lx00556_0:
 .quad .Lx00556_0_s
.Lx00556_0_s:
 .string "r"
xchain00480_n72_α:
bb00557_α:
  .section .rodata
  .Lcall00557_pname: .string "gedlnf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00557_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain00480_n74_α
 jmp xchain00480_n73_α
xchain00480_n72_β:
 jmp xchain00480_n74_α
xchain00480_n73_α:
bb00558_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2048] -> [r12+1984]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1992], rax
# marshal arg1 = producer-box slot [r12+2064] -> [r12+2000]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2008], rax
# marshal arg2 = producer-box slot [r12+2096] -> [r12+2016]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2024], rax
# marshal arg3 = producer-box slot [r12+2112] -> [r12+2032]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn883: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn883]
 lea rsi, [r12 + 1984]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00480_n74_α
 jmp xchain00480_n74_α
 xchain00480_n73_β:
 jmp xchain00480_n74_α
xchain00480_n74_α:
# IR_VAR
bb00328_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00480_n75_α
 xchain00480_n74_β:
 jmp xchain00480_n79_α
xchain00480_n75_α:
# IR_FIELD_GET
bb00559_α:
 mov rdi, qword ptr [rip + .Lx00560_0]
 mov rsi, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n79_α
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00480_n76_α
 xchain00480_n75_β:
 jmp xchain00480_n79_α
.Lx00560_0:
 .quad .Lx00560_0_s
.Lx00560_0_s:
 .string "r"
xchain00480_n76_α:
# IR_LIT_STRING
bb00561_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00480_n77_α
 xchain00480_n76_β:
 jmp xchain00480_n79_α
.Lx00562_0:
 .quad .Lx00562_0_s
.Lx00562_0_s:
 .string "FAMC"
xchain00480_n77_α:
bb00563_α:
  .section .rodata
  .Lcall00563_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00563_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain00480_n79_α
 jmp xchain00480_n78_α
xchain00480_n77_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain00480_n79_α
 jmp xchain00480_n78_α
xchain00480_n78_α:
bb00564_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00480_n80_α
 xchain00480_n78_β:
 jmp xchain00480_n79_α
xchain00480_n79_α:
# IR_LIT_STRING
bb00565_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx00566_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00480_n81_α
 xchain00480_n79_β:
 jmp xchain00480_n91_α
.Lx00566_0:
 .quad .Lx00566_0_s
.Lx00566_0_s:
 .string "b."
xchain00480_n80_α:
# IR_LIT_STRING
bb00567_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00480_n82_α
 xchain00480_n80_β:
 jmp xchain00480_n89_α
.Lx00568_0:
 .quad .Lx00568_0_s
.Lx00568_0_s:
 .string "father"
xchain00480_n81_α:
# IR_VAR
bb00334_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00480_n83_α
 xchain00480_n81_β:
 jmp xchain00480_n91_α
xchain00480_n82_α:
# IR_VAR
bb00336_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00480_n84_α
 xchain00480_n82_β:
 jmp xchain00480_n89_α
xchain00480_n83_α:
# IR_FIELD_GET
bb00569_α:
 mov rdi, qword ptr [rip + .Lx00570_0]
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n91_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00480_n85_α
 xchain00480_n83_β:
 jmp xchain00480_n91_α
.Lx00570_0:
 .quad .Lx00570_0_s
.Lx00570_0_s:
 .string "r"
xchain00480_n84_α:
# IR_LIT_STRING
bb00571_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00480_n86_α
 xchain00480_n84_β:
 jmp xchain00480_n89_α
.Lx00572_0:
 .quad .Lx00572_0_s
.Lx00572_0_s:
 .string "HUSB"
xchain00480_n85_α:
# IR_LIT_STRING
bb00340_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00480_n87_α
 xchain00480_n85_β:
 jmp xchain00480_n91_α
.Lx00573_0:
 .quad .Lx00573_0_s
.Lx00573_0_s:
 .string "BIRT"
xchain00480_n86_α:
bb00574_α:
  .section .rodata
  .Lcall00574_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00574_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain00480_n89_α
 jmp xchain00480_n88_α
xchain00480_n86_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain00480_n89_α
 jmp xchain00480_n88_α
xchain00480_n87_α:
bb00575_α:
  .section .rodata
  .Lcall00575_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1584]
 mov rdx, qword ptr [r12 + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00575_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain00480_n91_α
 jmp xchain00480_n90_α
xchain00480_n87_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain00480_n91_α
 jmp xchain00480_n90_α
xchain00480_n88_α:
bb00576_α:
  .section .rodata
  .Lcall00576_pname: .string "refto"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1840]
 mov rdx, qword ptr [r12 + 1848]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00576_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain00480_n89_α
 jmp xchain00480_n89_α
xchain00480_n88_β:
 jmp xchain00480_n89_α
xchain00480_n89_α:
# IR_LIT_STRING
bb00577_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00480_n92_α
 xchain00480_n89_β:
 jmp xchain00480_n79_α
.Lx00578_0:
 .quad .Lx00578_0_s
.Lx00578_0_s:
 .string "mother"
xchain00480_n90_α:
bb00579_α:
  .section .rodata
  .Lcall00579_pname: .string "event"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00579_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain00480_n91_α
 jmp xchain00480_n91_α
xchain00480_n90_β:
 jmp xchain00480_n91_α
xchain00480_n91_α:
# IR_KEYWORD_null
bb00343_α:
 mov qword ptr [r12 + 1472], 0
 mov qword ptr [r12 + 1480], 0
 jmp xchain00480_n93_α
 xchain00480_n91_β:
 jmp xchain00480_n95_α
xchain00480_n92_α:
# IR_VAR
bb00580_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00480_n94_α
 xchain00480_n92_β:
 jmp xchain00480_n79_α
xchain00480_n93_α:
bb00581_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00480_n95_α
 xchain00480_n93_β:
 jmp xchain00480_n95_α
xchain00480_n94_α:
# IR_LIT_STRING
bb00582_α:
 mov qword ptr [r12 + 1760], 1
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00480_n96_α
 xchain00480_n94_β:
 jmp xchain00480_n79_α
.Lx00583_0:
 .quad .Lx00583_0_s
.Lx00583_0_s:
 .string "WIFE"
xchain00480_n95_α:
# IR_VAR
bb00346_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 280], rax
 jmp xchain00480_n97_α
 xchain00480_n95_β:
 jmp xchain00480_n00011_α
xchain00480_n96_α:
bb00347_α:
  .section .rodata
  .Lcall00347_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00347_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00480_n79_α
 jmp xchain00480_n98_α
xchain00480_n96_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00480_n79_α
 jmp xchain00480_n98_α
xchain00480_n97_α:
# IR_FIELD_GET
bb00584_α:
 mov rdi, qword ptr [rip + .Lx00585_0]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n00011_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00480_n99_α
 xchain00480_n97_β:
 jmp xchain00480_n00011_α
.Lx00585_0:
 .quad .Lx00585_0_s
.Lx00585_0_s:
 .string "r"
xchain00480_n98_α:
bb00586_α:
  .section .rodata
  .Lcall00586_pname: .string "refto"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00586_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain00480_n79_α
 jmp xchain00480_n00007_α
xchain00480_n98_β:
 jmp xchain00480_n79_α
xchain00480_n99_α:
# IR_LIT_STRING
bb00587_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00480_n00009_α
 xchain00480_n99_β:
 jmp xchain00480_n00011_α
.Lx00588_0:
 .quad .Lx00588_0_s
.Lx00588_0_s:
 .string "FAMS"
xchain00480_n00007_α:
 jmp xchain00480_n00010_α
xchain00480_n00007_β:
 jmp xchain00480_n79_α
xchain00480_n00009_α:
bb00589_α:
  .section .rodata
  .Lcall00589_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00589_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00480_n00011_α
 jmp xchain00480_n00069_α
xchain00480_n00009_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00480_n00011_α
 jmp xchain00480_n00069_α
xchain00480_n00010_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00351_α:
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00480_n96_β]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00480_n79_α
 xchain00480_n00010_β:
 jmp xchain00480_n79_α
xchain00480_n00069_α:
bb00590_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00480_n00013_α
 xchain00480_n00069_β:
 jmp xchain00480_n00011_α
xchain00480_n00011_α:
# IR_LIT_STRING
bb00591_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00480_n00014_α
 xchain00480_n00011_β:
 jmp xchain00480_n59_β
.Lx00592_0:
 .quad .Lx00592_0_s
.Lx00592_0_s:
 .string "d."
xchain00480_n00012_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00593_α:
 jmp qword ptr [r12 + 1648]
 xchain00480_n00012_β:
 jmp xchain00480_n79_α
xchain00480_n00013_α:
# IR_LIT_STRING
bb00594_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00595_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00480_n00001_α
 xchain00480_n00013_β:
 jmp xchain00480_n00025_α
.Lx00595_0:
 .quad .Lx00595_0_s
.Lx00595_0_s:
 .string "m."
xchain00480_n00014_α:
# IR_VAR
bb00596_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 200], rax
 jmp xchain00480_n00016_α
 xchain00480_n00014_β:
 jmp xchain00480_n59_β
xchain00480_n00001_α:
# IR_VAR
bb00597_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00480_n00018_α
 xchain00480_n00001_β:
 jmp xchain00480_n00025_α
xchain00480_n00016_α:
# IR_FIELD_GET
bb00355_α:
 mov rdi, qword ptr [rip + .Lx00598_0]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00480_n59_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00480_n00020_α
 xchain00480_n00016_β:
 jmp xchain00480_n59_β
.Lx00598_0:
 .quad .Lx00598_0_s
.Lx00598_0_s:
 .string "r"
xchain00480_n00018_α:
# IR_LIT_STRING
bb00357_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00480_n00021_α
 xchain00480_n00018_β:
 jmp xchain00480_n00025_α
.Lx00599_0:
 .quad .Lx00599_0_s
.Lx00599_0_s:
 .string "MARR"
xchain00480_n00020_α:
# IR_LIT_STRING
bb00600_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00480_n00022_α
 xchain00480_n00020_β:
 jmp xchain00480_n59_β
.Lx00601_0:
 .quad .Lx00601_0_s
.Lx00601_0_s:
 .string "DEAT"
xchain00480_n00021_α:
bb00602_α:
  .section .rodata
  .Lcall00602_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1440]
 mov rdx, qword ptr [r12 + 1448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00602_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00480_n00025_α
 jmp xchain00480_n00023_α
xchain00480_n00021_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00480_n00025_α
 jmp xchain00480_n00023_α
xchain00480_n00022_α:
bb00603_α:
  .section .rodata
  .Lcall00603_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00603_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00480_n59_β
 jmp xchain00480_n00026_α
xchain00480_n00022_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00480_n59_β
 jmp xchain00480_n00026_α
xchain00480_n00023_α:
bb00604_α:
  .section .rodata
  .Lcall00604_pname: .string "event"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1392]
 mov rdx, qword ptr [r12 + 1400]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00604_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain00480_n00025_α
 jmp xchain00480_n00027_α
xchain00480_n00023_β:
 jmp xchain00480_n00025_α
xchain00480_n00025_α:
# IR_LIT_STRING
bb00360_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00605_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00480_n00029_α
 xchain00480_n00025_β:
 jmp xchain00480_n00029_α
.Lx00605_0:
 .quad .Lx00605_0_s
.Lx00605_0_s:
 .string "  husb"
xchain00480_n00026_α:
bb00606_α:
  .section .rodata
  .Lcall00606_pname: .string "event"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00606_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00480_n59_β
 jmp xchain00480_n00030_α
xchain00480_n00026_β:
 jmp xchain00480_n59_β
xchain00480_n00027_α:
bb00363_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00480_n00025_α
 xchain00480_n00027_β:
 jmp xchain00480_n00025_α
xchain00480_n00029_α:
# IR_LIT_STRING
bb00364_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00480_n00440_α
 xchain00480_n00029_β:
 jmp xchain00480_n00440_α
.Lx00607_0:
 .quad .Lx00607_0_s
.Lx00607_0_s:
 .string "  wife"
xchain00480_n00030_α:
 jmp xchain00480_n59_β
xchain00480_n00030_β:
 jmp xchain00480_n59_β
xchain00480_n00440_α:
# IR_VAR
bb00608_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00480_n00031_α
 xchain00480_n00440_β:
 jmp main_γ
xchain00480_n00031_α:
# IR_UNOP
bb00609_α:
 mov eax, dword ptr [r12 + 3456]
 cmp eax, 99
 je main_γ
 cmp eax, 0
 je main_γ
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00480_n00032_α
 xchain00480_n00031_β:
 jmp main_γ
xchain00480_n00032_α:
# IR_LIT_STRING
bb00367_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00480_n00033_α
 xchain00480_n00032_β:
 jmp main_γ
.Lx00610_0:
 .quad .Lx00610_0_s
.Lx00610_0_s:
 .string "   m."
xchain00480_n00033_α:
bb00611_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn944: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn944]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je main_γ
 jmp xchain00480_n00002_α
 xchain00480_n00033_β:
 jmp main_γ
xchain00480_n00002_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00370_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 lea rax, [rip + main_γ]
 mov qword ptr [r12 + 1040], rax
 jmp main_γ
 xchain00480_n00002_β:
 jmp main_γ
xchain00480_n00003_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00372_α:
 jmp qword ptr [r12 + 1040]
 xchain00480_n00003_β:
 jmp main_γ
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
