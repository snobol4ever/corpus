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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 736], rax
 pop rsi
proc_event_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string ""
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
 xchain0_n2_α:
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
 je xchain0_n3_α
 jmp xchain0_n4_α
xchain0_n2_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n8_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string ""
 xchain0_n4_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n8_α
 xchain0_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n3_α
 xchain0_n6_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "PLAC"
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
 xchain0_n9_α:
  .section .rodata
  .Lcall10_pname: .string "gedval"
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
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n12_α
xchain0_n9_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n12_α
# IR_UNOP
 xchain0_n10_α:
 mov eax, dword ptr [r12 + 768]
 cmp eax, 99
 je xchain0_n11_α
 cmp eax, 0
 jne xchain0_n11_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain0_n13_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n18_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "   "
 xchain0_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n8_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n13_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n18_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "   "
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n18_α
 xchain0_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain0_n8_α
 xchain0_n15_β:
 jmp xchain0_n8_α
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n18_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string " "
# IR_RETURN
 xchain0_n18_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_event_γ
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n18_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string " "
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n18_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [r12 + 752]
 cmp eax, 99
 je xchain0_n23_α
 cmp eax, 0
 je xchain0_n23_α
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n18_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "            "
# IR_UNOP
 xchain0_n24_α:
 mov eax, dword ptr [r12 + 752]
 cmp eax, 99
 je xchain0_n18_α
 cmp eax, 0
 je xchain0_n18_α
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain0_n23_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain0_n30_α
 xchain0_n25_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain0_n18_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n18_α
 xchain0_n27_α:
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
  .Lrkfn38: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 96]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n28_α:
 jmp qword ptr [r12 + 416]
 xchain0_n28_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n29_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain0_n18_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n18_α
 xchain0_n29_β:
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n28_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "  "
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n31_α:
 jmp qword ptr [r12 + 64]
 xchain0_n31_β:
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n28_α
 xchain0_n33_α:
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
 je xchain0_n18_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n34_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain0_n28_α]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n18_α
 xchain0_n34_β:
 jmp xchain0_n18_α
proc_event_β:
jmp proc_event_ω
proc_event_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 736]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_refto_α_body:
# IR_LIT_STRING
 xchain52_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain52_n1_α
 xchain52_n0_β:
 jmp xchain52_n3_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "   "
# IR_VAR
 xchain52_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain52_n2_α
 xchain52_n1_β:
 jmp xchain52_n3_α
# IR_LIT_STRING
 xchain52_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain52_n4_α
 xchain52_n2_β:
 jmp xchain52_n3_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string " ["
# IR_RETURN
 xchain52_n3_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_refto_γ
# IR_VAR_REF gva
 xchain52_n4_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain52_n5_α
 xchain52_n4_β:
 jmp xchain52_n3_α
# IR_VAR
 xchain52_n5_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
 jmp xchain52_n6_α
 xchain52_n5_β:
 jmp xchain52_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain52_n6_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain52_n3_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain52_n7_α
 xchain52_n6_β:
 jmp xchain52_n3_α
# IR_DEREF variable -> value
 xchain52_n7_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain52_n3_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain52_n8_α
 xchain52_n7_β:
 jmp xchain52_n3_α
# IR_FIELD_GET
 xchain52_n8_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain52_n3_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain52_n9_α
 xchain52_n8_β:
 jmp xchain52_n3_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "n"
# IR_LIT_STRING
 xchain52_n9_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain52_n10_α
 xchain52_n9_β:
 jmp xchain52_n3_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "] "
# IR_VAR
 xchain52_n10_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
 jmp xchain52_n11_α
 xchain52_n10_β:
 jmp xchain52_n3_α
 xchain52_n11_α:
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
 je xchain52_n3_α
 jmp xchain52_n12_α
xchain52_n11_β:
 jmp xchain52_n3_α
 xchain52_n12_α:
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
 je xchain52_n3_α
 jmp xchain52_n3_α
 xchain52_n12_β:
 jmp xchain52_n3_α
proc_refto_β:
jmp proc_refto_ω
proc_refto_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 112], rax
 pop rsi
proc_sortkey_α_body:
# IR_VAR
 xchain71_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain71_n1_α
 xchain71_n0_β:
 jmp proc_sortkey_ω
 xchain71_n1_α:
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
# IR_RETURN
 xchain71_n3_α:
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 112]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2352], rax
 pop rsi
proc_gedload_α_body:
# IR_LIT_INTEGER
 xchain78_n0_α:
 mov qword ptr [r12 + 2336], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 2344], rax
 jmp xchain78_n1_α
 xchain78_n0_β:
 jmp xchain78_n2_α
.Lx79_0:
 .quad 0
 xchain78_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain78_n2_α
 xchain78_n1_β:
 jmp xchain78_n2_α
# IR_LIT_INTEGER
 xchain78_n2_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain78_n3_α
 xchain78_n2_β:
 jmp xchain78_n8_α
.Lx81_0:
 .quad 18446744073709551615
# IR_KEYWORD_null
 xchain78_n3_α:
 mov qword ptr [r12 + 2160], 0
 mov qword ptr [r12 + 2168], 0
 jmp xchain78_n4_α
 xchain78_n3_β:
 jmp xchain78_n8_α
# IR_LIT_STRING
 xchain78_n4_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain78_n5_α
 xchain78_n4_β:
 jmp xchain78_n8_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "ROOT"
# IR_LIT_STRING
 xchain78_n5_α:
 mov qword ptr [r12 + 2208], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain78_n6_α
 xchain78_n5_β:
 jmp xchain78_n8_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string ""
# IR_VAR
 xchain78_n6_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2232], rax
 jmp xchain78_n7_α
 xchain78_n6_β:
 jmp xchain78_n8_α
# IR_KEYWORD_null
 xchain78_n7_α:
 mov qword ptr [r12 + 2240], 0
 mov qword ptr [r12 + 2248], 0
 jmp xchain78_n9_α
 xchain78_n7_β:
 jmp xchain78_n8_α
 xchain78_n8_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn89: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 1968]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain78_n11_α
 jmp xchain78_n10_α
 xchain78_n8_β:
 jmp xchain78_n11_α
# IR_KEYWORD_null
 xchain78_n9_α:
 mov qword ptr [r12 + 2272], 0
 mov qword ptr [r12 + 2280], 0
 jmp xchain78_n12_α
 xchain78_n9_β:
 jmp xchain78_n8_α
 xchain78_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain78_n11_α
 xchain78_n10_β:
 jmp xchain78_n11_α
# IR_MAKE_LIST
 xchain78_n11_α:
 lea rdi, [r12 + 1936]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain78_n13_α
 xchain78_n11_β:
 jmp xchain78_n15_α
# IR_MAKE_LIST
 xchain78_n12_α:
 lea rdi, [r12 + 2320]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain78_n14_α
 xchain78_n12_β:
 jmp xchain78_n8_α
 xchain78_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain78_n15_α
 xchain78_n13_β:
 jmp xchain78_n15_α
 xchain78_n14_α:
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
  .Lrkfn98: .string "gednode"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn98]
 lea rsi, [r12 + 2016]
 mov edx, 8
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain78_n8_α
 jmp xchain78_n16_α
 xchain78_n14_β:
 jmp xchain78_n8_α
# IR_MAKE_LIST
 xchain78_n15_α:
 lea rdi, [r12 + 1904]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain78_n17_α
 xchain78_n15_β:
 jmp xchain78_n19_α
 xchain78_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain78_n18_α
 xchain78_n16_β:
 jmp xchain78_n8_α
 xchain78_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1888]
 mov rdx, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain78_n19_α
 xchain78_n17_β:
 jmp xchain78_n19_α
 xchain78_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain78_n8_α
 xchain78_n18_β:
 jmp xchain78_n8_α
# IR_VAR
 xchain78_n19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain78_n20_α
 xchain78_n19_β:
 jmp xchain78_n21_α
 xchain78_n20_α:
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
 je xchain78_n21_α
 jmp xchain78_n22_α
 xchain78_n20_β:
 jmp xchain78_n21_α
# IR_VAR
 xchain78_n21_α:
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 216], rax
 jmp xchain78_n23_α
 xchain78_n21_β:
 jmp xchain78_n24_α
# IR_LIT_CHARSET
 xchain78_n22_α:
 mov qword ptr [r12 + 464], 1
 mov dword ptr [r12 + 468], -1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain78_n25_α
 xchain78_n22_β:
 jmp xchain78_n21_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "\t\n "
 xchain78_n23_α:
  .section .rodata
  .Lcall76_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall76_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain78_n24_α
 jmp xchain78_n26_α
xchain78_n23_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain78_n24_α
 jmp xchain78_n26_α
# IR_VAR
 xchain78_n24_α:
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 120], rax
 jmp xchain78_n27_α
 xchain78_n24_β:
 jmp proc_gedload_ω
 xchain78_n25_α:
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
  .Lrkfn115: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain78_n21_α
 jmp xchain78_n28_α
 xchain78_n25_β:
 jmp xchain78_n21_α
 xchain78_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain78_n29_α
 xchain78_n26_β:
 jmp xchain78_n24_α
# IR_VAR
 xchain78_n27_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 136], rax
 jmp xchain78_n30_α
 xchain78_n27_β:
 jmp proc_gedload_ω
 xchain78_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain78_n31_α
 xchain78_n28_β:
 jmp xchain78_n21_α
# IR_VAR
 xchain78_n29_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 248], rax
 jmp xchain78_n32_α
 xchain78_n29_β:
 jmp xchain78_n23_β
# IR_VAR
 xchain78_n30_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 152], rax
 jmp xchain78_n33_α
 xchain78_n30_β:
 jmp proc_gedload_ω
# IR_VAR
 xchain78_n31_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1848], rax
 jmp xchain78_n34_α
 xchain78_n31_β:
 jmp xchain78_n35_α
# IR_FIELD_GET lv
 xchain78_n32_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n23_β
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain78_n36_α
 xchain78_n32_β:
 jmp xchain78_n23_β
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "ref"
# IR_VAR
 xchain78_n33_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 168], rax
 jmp xchain78_n37_α
 xchain78_n33_β:
 jmp proc_gedload_ω
# IR_LIT_INTEGER
 xchain78_n34_α:
 mov qword ptr [r12 + 1856], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain78_n38_α
 xchain78_n34_β:
 jmp xchain78_n35_α
.Lx00003_0:
 .quad 1
# IR_VAR
 xchain78_n35_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1784], rax
 jmp xchain78_n39_α
 xchain78_n35_β:
 jmp xchain78_n40_α
# IR_VAR_REF local
 xchain78_n36_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain78_n41_α
 xchain78_n36_β:
 jmp xchain78_n23_β
 xchain78_n37_α:
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
  .Lrkfn135: .string "gedcom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 48]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_gedload_ω
 jmp xchain78_n42_α
 xchain78_n37_β:
 jmp proc_gedload_ω
 xchain78_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2496]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 1856]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 2496]
 cmp eax, 6
 jne .Lx00004_2
 mov eax, dword ptr [r12 + 1856]
 cmp eax, 6
 jne .Lx00004_2
.Lx00004_1:
 mov rax, qword ptr [r12 + 2504]
 mov rcx, qword ptr [r12 + 1864]
 add rax, rcx
 mov qword ptr [r12 + 1824], 6
 mov qword ptr [r12 + 1832], rax
 jmp xchain78_n43_α
.Lx00004_0:
 mov rdi, qword ptr [r12 + 2496]
 mov rsi, qword ptr [r12 + 2504]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 mov r8d, 0
 lea r9, [r12 + 1824]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00004_3
.Lx00004_2:
 mov rdi, qword ptr [r12 + 2496]
 mov rsi, qword ptr [r12 + 2504]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain78_n35_α
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
.Lx00004_3:
 jmp xchain78_n43_α
 xchain78_n38_β:
 jmp xchain78_n35_α
# IR_UNOP
 xchain78_n39_α:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain78_n44_α
 xchain78_n39_β:
 jmp xchain78_n40_α
# IR_VAR
 xchain78_n40_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1704], rax
 jmp xchain78_n45_α
 xchain78_n40_β:
 jmp xchain78_n46_α
# IR_VAR
 xchain78_n41_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 312], rax
 jmp xchain78_n47_α
 xchain78_n41_β:
 jmp xchain78_n23_β
# IR_RETURN
 xchain78_n42_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedload_γ
 xchain78_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain78_n35_α
 xchain78_n43_β:
 jmp xchain78_n35_α
# IR_LIT_INTEGER
 xchain78_n44_α:
 mov qword ptr [r12 + 1792], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain78_n48_α
 xchain78_n44_β:
 jmp xchain78_n40_α
.Lx00005_0:
 .quad 0
 xchain78_n45_α:
  .section .rodata
  .Lcall98_pname: .string "gedscan"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall98_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain78_n46_α
 jmp xchain78_n49_α
xchain78_n45_β:
 jmp xchain78_n46_α
# IR_KEYWORD_null
 xchain78_n46_α:
 mov qword ptr [r12 + 1632], 0
 mov qword ptr [r12 + 1640], 0
 jmp xchain78_n50_α
 xchain78_n46_β:
 jmp xchain78_n51_α
# IR_FIELD_GET
 xchain78_n47_α:
 mov rdi, qword ptr [rip + .Lx00006_0]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n23_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain78_n52_α
 xchain78_n47_β:
 jmp xchain78_n23_β
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "data"
 xchain78_n48_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [r12 + 1760]
 cmp eax, 6
 jne .Lx00007_2
 mov eax, dword ptr [r12 + 1792]
 cmp eax, 6
 jne .Lx00007_2
.Lx00007_1:
 mov rax, qword ptr [r12 + 1768]
 mov rcx, qword ptr [r12 + 1800]
 cmp rax, rcx
 jne xchain78_n40_α
 mov rcx, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rcx
 mov rcx, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rcx
 jmp xchain78_n19_α
.Lx00007_0:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 9
 lea r9, [r12 + 1744]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00007_1
 cmp eax, 1
 je xchain78_n40_α
 jmp xchain78_n19_α
.Lx00007_2:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1792]
 mov rcx, qword ptr [r12 + 1800]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain78_n40_α
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
 jmp xchain78_n19_α
 xchain78_n48_β:
 jmp xchain78_n40_α
 xchain78_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain78_n51_α
 xchain78_n49_β:
 jmp xchain78_n46_α
# IR_KEYWORD_read
 xchain78_n50_α:
 mov rdi, qword ptr [rip + .Lx00008_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain78_n54_α
 xchain78_n50_β:
 jmp xchain78_n19_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "&errout"
# IR_VAR
 xchain78_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1368], rax
 jmp xchain78_n55_α
 xchain78_n51_β:
 jmp xchain78_n56_α
# IR_SUBSCRIPT x[i] variable
 xchain78_n52_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain78_n23_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain78_n57_α
 xchain78_n52_β:
 jmp xchain78_n23_β
 xchain78_n53_α:
 jmp xchain78_n19_α
xchain78_n53_β:
 jmp xchain78_n19_α
# IR_LIT_STRING
 xchain78_n54_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain78_n58_α
 xchain78_n54_β:
 jmp xchain78_n19_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "ERR, line "
# IR_FIELD_GET lv
 xchain78_n55_α:
 mov rdi, qword ptr [rip + .Lx00010_0]
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n56_α
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain78_n59_α
 xchain78_n55_β:
 jmp xchain78_n56_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "lnum"
# IR_VAR
 xchain78_n56_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1304], rax
 jmp xchain78_n60_α
 xchain78_n56_β:
 jmp xchain78_n61_α
# IR_DEREF variable -> value
 xchain78_n57_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain78_n23_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain78_n62_α
 xchain78_n57_β:
 jmp xchain78_n23_β
# IR_VAR
 xchain78_n58_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1592], rax
 jmp xchain78_n63_α
 xchain78_n58_β:
 jmp xchain78_n19_α
# IR_VAR
 xchain78_n59_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1400], rax
 jmp xchain78_n65_α
 xchain78_n59_β:
 jmp xchain78_n56_α
# IR_FIELD_GET lv
 xchain78_n60_α:
 mov rdi, qword ptr [rip + .Lx00011_0]
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n61_α
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain78_n66_α
 xchain78_n60_β:
 jmp xchain78_n61_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "sub"
# IR_VAR
 xchain78_n61_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1192], rax
 jmp xchain78_n67_α
 xchain78_n61_β:
 jmp xchain78_n68_α
# IR_ASSIGN_VAR write through variable
 xchain78_n62_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n23_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain78_n23_β
 xchain78_n62_β:
 jmp xchain78_n23_β
# IR_LIT_STRING
 xchain78_n63_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain78_n69_α
 xchain78_n63_β:
 jmp xchain78_n19_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string ": "
 xchain78_n64_α:
 jmp xchain78_n19_α
xchain78_n64_β:
 jmp xchain78_n19_α
# IR_ASSIGN_VAR write through variable
 xchain78_n65_α:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n56_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain78_n56_α
 xchain78_n65_β:
 jmp xchain78_n56_α
# IR_MAKE_LIST
 xchain78_n66_α:
 lea rdi, [r12 + 1344]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain78_n70_α
 xchain78_n66_β:
 jmp xchain78_n61_α
# IR_FIELD_GET
 xchain78_n67_α:
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n68_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain78_n71_α
 xchain78_n67_β:
 jmp xchain78_n68_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "level"
# IR_VAR
 xchain78_n68_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain78_n72_α
 xchain78_n68_β:
 jmp xchain78_n73_α
# IR_VAR
 xchain78_n69_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1624], rax
 jmp xchain78_n74_α
 xchain78_n69_β:
 jmp xchain78_n19_α
# IR_ASSIGN_VAR write through variable
 xchain78_n70_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1328]
 mov rcx, qword ptr [r12 + 1336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n61_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain78_n61_α
 xchain78_n70_β:
 jmp xchain78_n61_α
# IR_VAR
 xchain78_n71_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1224], rax
 jmp xchain78_n75_α
 xchain78_n71_β:
 jmp xchain78_n68_α
# IR_FIELD_GET
 xchain78_n72_α:
 mov rdi, qword ptr [rip + .Lx00014_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n73_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain78_n76_α
 xchain78_n72_β:
 jmp xchain78_n73_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "sub"
# IR_VAR
 xchain78_n73_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1016], rax
 jmp xchain78_n77_α
 xchain78_n73_β:
 jmp xchain78_n78_α
 xchain78_n74_α:
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
  .Lrkfn185: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 1456]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain78_n19_α
 jmp xchain78_n19_α
 xchain78_n74_β:
 jmp xchain78_n19_α
# IR_FIELD_GET
 xchain78_n75_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov rsi, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n68_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain78_n79_α
 xchain78_n75_β:
 jmp xchain78_n68_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "level"
# IR_VAR
 xchain78_n76_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1144], rax
 jmp xchain78_n80_α
 xchain78_n76_β:
 jmp xchain78_n73_α
# IR_FIELD_GET lv
 xchain78_n77_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain78_n78_α
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain78_n81_α
 xchain78_n77_β:
 jmp xchain78_n78_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "parent"
# IR_VAR
 xchain78_n78_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 984], rax
 jmp xchain78_n82_α
 xchain78_n78_β:
 jmp xchain78_n83_α
 xchain78_n79_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 6
 jne .Lx00017_2
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [r12 + 1176]
 mov rcx, qword ptr [r12 + 1208]
 cmp rax, rcx
 jl xchain78_n68_α
 mov rcx, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rcx
 mov rcx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rcx
 jmp xchain78_n84_α
.Lx00017_0:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 8
 lea r9, [r12 + 1152]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00017_1
 cmp eax, 1
 je xchain78_n68_α
 jmp xchain78_n84_α
.Lx00017_2:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain78_n68_α
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
 jmp xchain78_n84_α
 xchain78_n79_β:
 jmp xchain78_n68_α
 xchain78_n80_α:
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
  .Lrkfn194: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain78_n73_α
 jmp xchain78_n73_α
 xchain78_n80_β:
 jmp xchain78_n73_α
# IR_VAR
 xchain78_n81_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1048], rax
 jmp xchain78_n85_α
 xchain78_n81_β:
 jmp xchain78_n78_α
 xchain78_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain78_n83_α
 xchain78_n82_β:
 jmp xchain78_n83_α
# IR_VAR_REF local
 xchain78_n83_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain78_n86_α
 xchain78_n83_β:
 jmp xchain78_n89_α
# IR_VAR
 xchain78_n84_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1272], rax
 jmp xchain78_n87_α
 xchain78_n84_β:
 jmp xchain78_n61_α
# IR_ASSIGN_VAR write through variable
 xchain78_n85_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n78_α
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain78_n78_α
 xchain78_n85_β:
 jmp xchain78_n78_α
# IR_VAR
 xchain78_n86_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 904], rax
 jmp xchain78_n88_α
 xchain78_n86_β:
 jmp xchain78_n89_α
# IR_FIELD_GET
 xchain78_n87_α:
 mov rdi, qword ptr [rip + .Lx00018_0]
 mov rsi, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n61_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain78_n90_α
 xchain78_n87_β:
 jmp xchain78_n61_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "parent"
# IR_FIELD_GET
 xchain78_n88_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n89_α
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain78_n91_α
 xchain78_n88_β:
 jmp xchain78_n89_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "id"
# IR_VAR
 xchain78_n89_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 520], rax
 jmp xchain78_n92_α
 xchain78_n89_β:
 jmp xchain78_n19_α
 xchain78_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain78_n61_α
 xchain78_n90_β:
 jmp xchain78_n61_α
# IR_UNOP
 xchain78_n91_α:
 mov eax, dword ptr [r12 + 880]
 cmp eax, 99
 je xchain78_n89_α
 cmp eax, 0
 je xchain78_n89_α
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 872], rax
 jmp xchain78_n93_α
 xchain78_n91_β:
 jmp xchain78_n89_α
# IR_FIELD_GET
 xchain78_n92_α:
 mov rdi, qword ptr [rip + .Lx00020_0]
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain78_n19_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain78_n94_α
 xchain78_n92_β:
 jmp xchain78_n19_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "tag"
# IR_SUBSCRIPT x[i] variable
 xchain78_n93_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain78_n89_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain78_n95_α
 xchain78_n93_β:
 jmp xchain78_n89_α
# IR_LIT_STRING
 xchain78_n94_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain78_n96_α
 xchain78_n94_β:
 jmp xchain78_n19_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "FAM"
# IR_VAR
 xchain78_n95_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 952], rax
 jmp xchain78_n97_α
 xchain78_n95_β:
 jmp xchain78_n89_α
 xchain78_n96_α:
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
  .Lrkfn217: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn217]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain78_n99_α
 jmp xchain78_n98_α
 xchain78_n96_β:
 jmp xchain78_n99_α
# IR_ASSIGN_VAR write through variable
 xchain78_n97_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain78_n89_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain78_n89_α
 xchain78_n97_β:
 jmp xchain78_n89_α
# IR_VAR
 xchain78_n98_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 760], rax
 jmp xchain78_n00022_α
 xchain78_n98_β:
 jmp xchain78_n19_α
# IR_LIT_STRING
 xchain78_n99_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain78_n00024_α
 xchain78_n99_β:
 jmp xchain78_n19_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "INDI"
# IR_VAR
 xchain78_n00022_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 776], rax
 jmp xchain78_n00025_α
 xchain78_n00022_β:
 jmp xchain78_n19_α
 xchain78_n00024_α:
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
 jmp xchain78_n00026_α
 xchain78_n00024_β:
 jmp xchain78_n19_α
 xchain78_n00025_α:
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
 jmp xchain78_n00027_α
 xchain78_n00025_β:
 jmp xchain78_n19_α
# IR_VAR
 xchain78_n00026_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 600], rax
 jmp xchain78_n00028_α
 xchain78_n00026_β:
 jmp xchain78_n19_α
 xchain78_n00027_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain78_n00029_α
 xchain78_n00027_β:
 jmp xchain78_n19_α
# IR_VAR
 xchain78_n00028_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 616], rax
 jmp xchain78_n00030_α
 xchain78_n00028_β:
 jmp xchain78_n19_α
# IR_VAR
 xchain78_n00029_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 488], rax
 jmp xchain78_n00031_α
 xchain78_n00029_β:
 jmp xchain78_n19_α
 xchain78_n00030_α:
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
 jmp xchain78_n00032_α
 xchain78_n00030_β:
 jmp xchain78_n19_α
 xchain78_n00031_α:
 jmp xchain78_n19_α
xchain78_n00031_β:
 jmp xchain78_n19_α
 xchain78_n00032_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain78_n00029_α
 xchain78_n00032_β:
 jmp xchain78_n19_α
proc_gedload_β:
jmp proc_gedload_ω
proc_gedload_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1248], rax
 pop rsi
proc_gedscan_α_body:
# IR_VAR_REF gva
 xchain00033_n0_α:
 lea rdi, [rbx + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00033_n1_α
 xchain00033_n0_β:
 jmp xchain00033_n3_α
# IR_UNOP_TEST lv
 xchain00033_n1_α:
 mov eax, dword ptr [r12 + 1184]
 cmp eax, 99
 je xchain00033_n3_α
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00033_n3_α
 cmp eax, 0
 jne xchain00033_n3_α
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00033_n2_α
 xchain00033_n1_β:
 jmp xchain00033_n3_α
# IR_LIT_INTEGER
 xchain00033_n2_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00033_n4_α
 xchain00033_n2_β:
 jmp xchain00033_n3_α
.Lx00034_0:
 .quad 1
# IR_VAR
 xchain00033_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00033_n5_α
 xchain00033_n3_β:
 jmp proc_gedscan_ω
# IR_ASSIGN_VAR write through variable
 xchain00033_n4_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1232]
 mov rcx, qword ptr [r12 + 1240]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00033_n3_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00033_n6_α
 xchain00033_n4_β:
 jmp xchain00033_n3_α
# IR_GEN_SCAN
 xchain00033_n5_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00033_n7_α
 xchain00033_n5_β:
 jmp proc_gedscan_ω
# IR_LIT_CHARSET
 xchain00033_n6_α:
 mov qword ptr [r12 + 1136], 1
 mov dword ptr [r12 + 1140], -1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00033_n8_α
 xchain00033_n6_β:
 jmp xchain00033_n3_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00033_n7_α:
 mov qword ptr [r12 + 1024], 1
 mov dword ptr [r12 + 1028], -1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00033_n9_α
 xchain00033_n7_β:
 jmp xchain00033_n13_α
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "\t\n "
# IR_LIT_CHARSET
 xchain00033_n8_α:
 mov qword ptr [r12 + 1152], 1
 mov dword ptr [r12 + 1156], -1
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00033_n10_α
 xchain00033_n8_β:
 jmp xchain00033_n3_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string "0123456789"
# IR_SCAN_MANY
 xchain00033_n9_α:
 mov eax, r14d
.Lx00038_0:
 cmp eax, r15d
 jge .Lx00038_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00038_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00038_1
 add eax, 1
 jmp .Lx00038_0
.Lx00038_1:
 cmp eax, r14d
 je xchain00033_n13_α
 mov qword ptr [r12 + 1008], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 1016], rcx
 jmp xchain00033_n11_α
 xchain00033_n9_β:
 jmp xchain00033_n13_α
.Lx00038_2:
 .quad .Lx00038_2_s
.Lx00038_2_s:
 .string "\t\n "
 xchain00033_n10_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1136]
 mov rsi, qword ptr [r12 + 1144]
 mov rdx, qword ptr [r12 + 1152]
 mov rcx, qword ptr [r12 + 1160]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00033_n3_α
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00033_n12_α
 xchain00033_n10_β:
 jmp xchain00033_n3_α
# IR_SCAN_TAB
 xchain00033_n11_α:
 mov rax, qword ptr [r12 + 1016]
 cmp rax, 1
 jge .Lx00039_0
 add rax, r15
 add rax, 1
.Lx00039_0:
 cmp rax, 1
 jl xchain00033_n13_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n13_α
 mov qword ptr [r12 + 992], r14
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
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00033_n13_α
 xchain00033_n11_β:
 mov r14, qword ptr [r12 + 992]
 jmp xchain00033_n13_α
# IR_LIT_CHARSET
 xchain00033_n12_α:
 mov qword ptr [r12 + 1168], 1
 mov dword ptr [r12 + 1172], -1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain00033_n14_α
 xchain00033_n12_β:
 jmp xchain00033_n3_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "_"
# IR_LIT_CHARSET
 xchain00033_n13_α:
 mov qword ptr [r12 + 960], 1
 mov dword ptr [r12 + 964], -1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00033_n15_α
 xchain00033_n13_β:
 jmp proc_gedscan_ω
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "0123456789"
 xchain00033_n14_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1168]
 mov rcx, qword ptr [r12 + 1176]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00033_n3_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00033_n16_α
 xchain00033_n14_β:
 jmp xchain00033_n3_α
# IR_SCAN_MANY
 xchain00033_n15_α:
 mov eax, r14d
.Lx00042_0:
 cmp eax, r15d
 jge .Lx00042_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00042_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00042_1
 add eax, 1
 jmp .Lx00042_0
.Lx00042_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [r12 + 944], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 952], rcx
 jmp xchain00033_n17_α
 xchain00033_n15_β:
 jmp proc_gedscan_ω
.Lx00042_2:
 .quad .Lx00042_2_s
.Lx00042_2_s:
 .string "0123456789"
# IR_ASSIGN gva
 xchain00033_n16_α:
 mov rax, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00033_n18_α
 xchain00033_n16_β:
 jmp xchain00033_n3_α
# IR_SCAN_TAB
 xchain00033_n17_α:
 mov rax, qword ptr [r12 + 952]
 cmp rax, 1
 jge .Lx00043_0
 add rax, r15
 add rax, 1
.Lx00043_0:
 cmp rax, 1
 jl proc_gedscan_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedscan_ω
 mov qword ptr [r12 + 928], r14
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
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00033_n19_α
 xchain00033_n17_β:
 mov r14, qword ptr [r12 + 928]
 jmp proc_gedscan_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00033_n18_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
 lea rax, [rip + xchain00033_n3_α]
 mov qword ptr [r12 + 1072], rax
 jmp xchain00033_n3_α
 xchain00033_n18_β:
 jmp xchain00033_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00033_n19_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [r12 + 896], rax
 jmp xchain00033_n21_α
 xchain00033_n19_β:
 jmp xchain00033_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00033_n20_α:
 jmp qword ptr [r12 + 1072]
 xchain00033_n20_β:
 jmp xchain00033_n3_α
 xchain00033_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00033_n23_α
 xchain00033_n21_β:
 jmp xchain00033_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00033_n22_α:
 jmp qword ptr [r12 + 896]
 xchain00033_n22_β:
 jmp xchain00033_n23_α
# IR_LIT_CHARSET
 xchain00033_n23_α:
 mov qword ptr [r12 + 848], 1
 mov dword ptr [r12 + 852], -1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00033_n24_α
 xchain00033_n23_β:
 jmp xchain00033_n26_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00033_n24_α:
 mov eax, r14d
.Lx00045_0:
 cmp eax, r15d
 jge .Lx00045_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00045_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00045_1
 add eax, 1
 jmp .Lx00045_0
.Lx00045_1:
 cmp eax, r14d
 je xchain00033_n26_α
 mov qword ptr [r12 + 832], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 840], rcx
 jmp xchain00033_n25_α
 xchain00033_n24_β:
 jmp xchain00033_n26_α
.Lx00045_2:
 .quad .Lx00045_2_s
.Lx00045_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00033_n25_α:
 mov rax, qword ptr [r12 + 840]
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jl xchain00033_n26_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n26_α
 mov qword ptr [r12 + 816], r14
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
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00033_n26_α
 xchain00033_n25_β:
 mov r14, qword ptr [r12 + 816]
 jmp xchain00033_n26_α
# IR_LIT_STRING
 xchain00033_n26_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00033_n27_α
 xchain00033_n26_β:
 jmp xchain00033_n29_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "@"
# IR_SCAN_MATCH
 xchain00033_n27_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00033_n29_α
 mov rdi, qword ptr [rip + .Lx00048_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00033_n29_α
 mov qword ptr [r12 + 640], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 648], rax
 jmp xchain00033_n28_α
 xchain00033_n27_β:
 jmp xchain00033_n29_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00033_n28_α:
 mov rax, qword ptr [r12 + 648]
 cmp rax, 1
 jge .Lx00049_0
 add rax, r15
 add rax, 1
.Lx00049_0:
 cmp rax, 1
 jl xchain00033_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n29_α
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
 jmp xchain00033_n30_α
 xchain00033_n28_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00033_n29_α
# IR_VAR gva
 xchain00033_n29_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00033_n31_α
 xchain00033_n29_β:
 jmp proc_gedscan_ω
# IR_LIT_CHARSET
 xchain00033_n30_α:
 mov qword ptr [r12 + 768], 1
 mov dword ptr [r12 + 772], -1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00033_n32_α
 xchain00033_n30_β:
 jmp xchain00033_n29_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "@"
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00033_n31_α:
 mov eax, r14d
.Lx00051_0:
 cmp eax, r15d
 jge .Lx00051_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [r12 + 472]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00051_1
 add eax, 1
 jmp .Lx00051_0
.Lx00051_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [r12 + 448], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 456], rcx
 jmp xchain00033_n33_α
 xchain00033_n31_β:
 jmp proc_gedscan_ω
# IR_SCAN_UPTO
 xchain00033_n32_α:
 mov qword ptr [r12 + 752], r14
.Lx00052_0:
 mov rax, qword ptr [r12 + 752]
 cmp rax, r15
 jge xchain00033_n29_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00052_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00052_1
 mov qword ptr [r12 + 736], 6
 add rax, 1
 mov qword ptr [r12 + 744], rax
 jmp xchain00033_n34_α
.Lx00052_1:
 inc qword ptr [r12 + 752]
 jmp .Lx00052_0
 xchain00033_n32_β:
 inc qword ptr [r12 + 752]
 jmp .Lx00052_0
.Lx00052_2:
 .quad .Lx00052_2_s
.Lx00052_2_s:
 .string "@"
# IR_SCAN_TAB
 xchain00033_n33_α:
 mov rax, qword ptr [r12 + 456]
 cmp rax, 1
 jge .Lx00053_0
 add rax, r15
 add rax, 1
.Lx00053_0:
 cmp rax, 1
 jl proc_gedscan_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedscan_ω
 mov qword ptr [r12 + 432], r14
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
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00033_n35_α
 xchain00033_n33_β:
 mov r14, qword ptr [r12 + 432]
 jmp proc_gedscan_ω
# IR_LIT_INTEGER
 xchain00033_n34_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00033_n36_α
 xchain00033_n34_β:
 jmp xchain00033_n29_α
.Lx00054_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00033_n35_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [r12 + 400], rax
 jmp xchain00033_n37_α
 xchain00033_n35_β:
 jmp xchain00033_n40_α
 xchain00033_n36_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00055_2
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00055_2
.Lx00055_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 792]
 add rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00033_n39_α
.Lx00055_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 0
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00055_3
.Lx00055_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00033_n29_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00055_3:
 jmp xchain00033_n39_α
 xchain00033_n36_β:
 jmp xchain00033_n29_α
 xchain00033_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00033_n40_α
 xchain00033_n37_β:
 jmp xchain00033_n40_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00033_n38_α:
 jmp qword ptr [r12 + 400]
 xchain00033_n38_β:
 jmp xchain00033_n40_α
# IR_SCAN_TAB
 xchain00033_n39_α:
 mov rax, qword ptr [r12 + 728]
 cmp rax, 1
 jge .Lx00056_0
 add rax, r15
 add rax, 1
.Lx00056_0:
 cmp rax, 1
 jl xchain00033_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n29_α
 mov qword ptr [r12 + 704], r14
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
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00033_n41_α
 xchain00033_n39_β:
 mov r14, qword ptr [r12 + 704]
 jmp xchain00033_n29_α
# IR_LIT_CHARSET
 xchain00033_n40_α:
 mov qword ptr [r12 + 352], 1
 mov dword ptr [r12 + 356], -1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00033_n42_α
 xchain00033_n40_β:
 jmp xchain00033_n46_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "\t\n "
 xchain00033_n41_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call str_concat_d@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00033_n43_α
 xchain00033_n41_β:
 jmp xchain00033_n29_α
# IR_SCAN_MANY
 xchain00033_n42_α:
 mov eax, r14d
.Lx00058_0:
 cmp eax, r15d
 jge .Lx00058_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00058_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00058_1
 add eax, 1
 jmp .Lx00058_0
.Lx00058_1:
 cmp eax, r14d
 je xchain00033_n46_α
 mov qword ptr [r12 + 336], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 344], rcx
 jmp xchain00033_n44_α
 xchain00033_n42_β:
 jmp xchain00033_n46_α
.Lx00058_2:
 .quad .Lx00058_2_s
.Lx00058_2_s:
 .string "\t\n "
 xchain00033_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00033_n45_α
 xchain00033_n43_β:
 jmp xchain00033_n29_α
# IR_SCAN_TAB
 xchain00033_n44_α:
 mov rax, qword ptr [r12 + 344]
 cmp rax, 1
 jge .Lx00059_0
 add rax, r15
 add rax, 1
.Lx00059_0:
 cmp rax, 1
 jl xchain00033_n46_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n46_α
 mov qword ptr [r12 + 320], r14
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
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00033_n46_α
 xchain00033_n44_β:
 mov r14, qword ptr [r12 + 320]
 jmp xchain00033_n46_α
# IR_LIT_CHARSET
 xchain00033_n45_α:
 mov qword ptr [r12 + 560], 1
 mov dword ptr [r12 + 564], -1
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00033_n47_α
 xchain00033_n45_β:
 jmp xchain00033_n29_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00033_n46_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00033_n48_α
 xchain00033_n46_β:
 jmp xchain00033_n51_α
.Lx00061_0:
 .quad 0
# IR_SCAN_MANY
 xchain00033_n47_α:
 mov eax, r14d
.Lx00062_0:
 cmp eax, r15d
 jge .Lx00062_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00062_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00062_1
 add eax, 1
 jmp .Lx00062_0
.Lx00062_1:
 cmp eax, r14d
 je xchain00033_n29_α
 mov qword ptr [r12 + 544], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 552], rcx
 jmp xchain00033_n49_α
 xchain00033_n47_β:
 jmp xchain00033_n29_α
.Lx00062_2:
 .quad .Lx00062_2_s
.Lx00062_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00033_n48_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00063_0
 add rax, r15
 add rax, 1
.Lx00063_0:
 cmp rax, 1
 jl xchain00033_n51_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n51_α
 mov qword ptr [r12 + 272], r14
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
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00033_n50_α
 xchain00033_n48_β:
 mov r14, qword ptr [r12 + 272]
 jmp xchain00033_n51_α
# IR_SCAN_TAB
 xchain00033_n49_α:
 mov rax, qword ptr [r12 + 552]
 cmp rax, 1
 jge .Lx00064_0
 add rax, r15
 add rax, 1
.Lx00064_0:
 cmp rax, 1
 jl xchain00033_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00033_n29_α
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
 jmp xchain00033_n52_α
 xchain00033_n49_β:
 mov r14, qword ptr [r12 + 528]
 jmp xchain00033_n29_α
 xchain00033_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00033_n51_α
 xchain00033_n50_β:
 jmp xchain00033_n51_α
# IR_VAR
 xchain00033_n51_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 184], rax
 jmp xchain00033_n53_α
 xchain00033_n51_β:
 jmp proc_gedscan_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00033_n52_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
 lea rax, [rip + xchain00033_n29_α]
 mov qword ptr [r12 + 496], rax
 jmp xchain00033_n29_α
 xchain00033_n52_β:
 jmp xchain00033_n29_α
# IR_VAR
 xchain00033_n53_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 200], rax
 jmp xchain00033_n55_α
 xchain00033_n53_β:
 jmp proc_gedscan_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00033_n54_α:
 jmp qword ptr [r12 + 496]
 xchain00033_n54_β:
 jmp xchain00033_n29_α
# IR_VAR
 xchain00033_n55_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 216], rax
 jmp xchain00033_n56_α
 xchain00033_n55_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00033_n56_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 232], rax
 jmp xchain00033_n57_α
 xchain00033_n56_β:
 jmp proc_gedscan_ω
 xchain00033_n57_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+112]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+208] -> [r12+144]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
# marshal arg3 = producer-box slot [r12+224] -> [r12+160]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn330: .string "gednode"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn330]
 lea rsi, [r12 + 112]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_gedscan_ω
 jmp xchain00033_n58_α
 xchain00033_n57_β:
 jmp proc_gedscan_ω
# IR_RETURN
 xchain00033_n58_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1248]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_gedwalk_α_body:
lea rax, [rip + xchain00065_n3_β]
mov qword ptr [r12 + 160], rax
# IR_VAR
 xchain00065_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00065_n1_α
 xchain00065_n0_β:
 jmp xchain00065_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00065_n1_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00065_n2_α]
 mov qword ptr [r12 + 48], rax
 jmp xchain00065_n3_α
 xchain00065_n1_β:
 jmp proc_gedwalk_ω
# IR_VAR
 xchain00065_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00065_n5_α
 xchain00065_n2_β:
 jmp proc_gedwalk_ω
# IR_SUSPEND yield+resume
 xchain00065_n3_α:
 lea rax, [rip + xchain00065_n3_β]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedwalk_γ
 xchain00065_n3_β:
 jmp proc_gedwalk_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00065_n4_α:
 jmp qword ptr [r12 + 48]
 xchain00065_n4_β:
 jmp proc_gedwalk_ω
# IR_FIELD_GET
 xchain00065_n5_α:
 mov rdi, qword ptr [rip + .Lx00066_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedwalk_ω
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00065_n6_α
 xchain00065_n5_β:
 jmp proc_gedwalk_ω
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00065_n6_α:
 mov qword ptr [r12 + 96], 0
.Lx00067_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je proc_gedwalk_ω
 jmp xchain00065_n7_α
 xchain00065_n6_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00067_0
 xchain00065_n7_α:
  .section .rodata
  .Lcall00068_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00068_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedwalk_ω
 jmp xchain00065_n8_α
xchain00065_n7_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_gedwalk_ω
 jmp xchain00065_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00065_n8_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
 lea rax, [rip + xchain00065_n7_β]
 mov qword ptr [r12 + 48], rax
 jmp xchain00065_n3_α
 xchain00065_n8_β:
 jmp proc_gedwalk_ω
proc_gedwalk_β:
jmp qword ptr [r12 + 160]
proc_gedwalk_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 176]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_gedsub_α_body:
lea rax, [rip + xchain00069_n17_β]
mov qword ptr [r12 + 576], rax
# IR_VAR
 xchain00069_n0_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 568], rax
 jmp xchain00069_n1_α
 xchain00069_n0_β:
 jmp proc_gedsub_ω
 xchain00069_n1_α:
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
 jmp xchain00069_n2_α
 xchain00069_n1_β:
 jmp proc_gedsub_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00069_n2_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 512], rax
 jmp xchain00069_n3_α
 xchain00069_n2_β:
 jmp xchain00069_n5_α
 xchain00069_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00069_n5_α
 xchain00069_n3_β:
 jmp xchain00069_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00069_n4_α:
 jmp qword ptr [r12 + 512]
 xchain00069_n4_β:
 jmp xchain00069_n5_α
# IR_VAR
 xchain00069_n5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00069_n6_α
 xchain00069_n5_β:
 jmp proc_gedsub_ω
# IR_FIELD_GET
 xchain00069_n6_α:
 mov rdi, qword ptr [rip + .Lx00070_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedsub_ω
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00069_n7_α
 xchain00069_n6_β:
 jmp proc_gedsub_ω
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00069_n7_α:
 mov qword ptr [r12 + 80], 0
.Lx00071_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp rax, 99
 je proc_gedsub_ω
 jmp xchain00069_n8_α
 xchain00069_n7_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00071_0
 xchain00069_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00069_n9_α
 xchain00069_n8_β:
 jmp proc_gedsub_ω
# IR_VAR
 xchain00069_n9_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 456], rax
 jmp xchain00069_n10_α
 xchain00069_n9_β:
 jmp xchain00069_n7_β
# IR_FIELD_GET
 xchain00069_n10_α:
 mov rdi, qword ptr [rip + .Lx00072_0]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00069_n7_β
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00069_n11_α
 xchain00069_n10_β:
 jmp xchain00069_n7_β
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "tag"
# IR_VAR
 xchain00069_n11_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 472], rax
 jmp xchain00069_n12_α
 xchain00069_n11_β:
 jmp xchain00069_n7_β
 xchain00069_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00069_n7_β
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00069_n13_α
 xchain00069_n12_β:
 jmp xchain00069_n7_β
# IR_VAR
 xchain00069_n13_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 392], rax
 jmp xchain00069_n14_α
 xchain00069_n13_β:
 jmp xchain00069_n15_α
# IR_UNOP
 xchain00069_n14_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00069_n16_α
 xchain00069_n14_β:
 jmp xchain00069_n15_α
# IR_VAR
 xchain00069_n15_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 344], rax
 jmp xchain00069_n17_α
 xchain00069_n15_β:
 jmp proc_gedsub_ω
# IR_LIT_INTEGER
 xchain00069_n16_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00069_n18_α
 xchain00069_n16_β:
 jmp xchain00069_n15_α
.Lx00073_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain00069_n17_α:
 lea rax, [rip + xchain00069_n17_β]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedsub_γ
 xchain00069_n17_β:
 jmp xchain00069_n19_α
 xchain00069_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00074_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00074_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00074_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00074_2
.Lx00074_1:
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 408]
 cmp rax, rcx
 jle xchain00069_n15_α
 mov rcx, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rcx
 mov rcx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rcx
 jmp xchain00069_n20_α
.Lx00074_0:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 7
 lea r9, [r12 + 352]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00074_1
 cmp eax, 1
 je xchain00069_n15_α
 jmp xchain00069_n20_α
.Lx00074_2:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00069_n15_α
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
 jmp xchain00069_n20_α
 xchain00069_n18_β:
 jmp xchain00069_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00069_n19_α:
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 176], rax
 jmp xchain00069_n21_α
 xchain00069_n19_β:
 jmp xchain00069_n7_β
# IR_LIT_STRING
 xchain00069_n20_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00069_n23_α
 xchain00069_n20_β:
 jmp proc_gedsub_ω
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "gedsub"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00069_n21_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rax, [rip + xchain00069_n22_α]
 mov qword ptr [r12 + 144], rax
 jmp xchain00069_n7_β
 xchain00069_n21_β:
 jmp xchain00069_n7_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00069_n22_α:
 jmp qword ptr [r12 + 176]
 xchain00069_n22_β:
 jmp xchain00069_n7_β
# IR_VAR
 xchain00069_n23_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 312], rax
 jmp xchain00069_n25_α
 xchain00069_n23_β:
 jmp proc_gedsub_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00069_n24_α:
 jmp qword ptr [r12 + 144]
 xchain00069_n24_β:
 jmp xchain00069_n7_β
# IR_VAR
 xchain00069_n25_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 328], rax
 jmp xchain00069_n26_α
 xchain00069_n25_β:
 jmp proc_gedsub_ω
 xchain00069_n26_α:
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
 jmp xchain00069_n27_α
 xchain00069_n26_β:
 jmp proc_gedsub_ω
 xchain00069_n27_α:
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
 jmp xchain00069_n28_α
 xchain00069_n27_β:
 jmp proc_gedsub_ω
# IR_SUSPEND yield+resume
 xchain00069_n28_α:
 lea rax, [rip + xchain00069_n28_β]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedsub_γ
 xchain00069_n28_β:
 jmp xchain00069_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00069_n29_α:
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [r12 + 176], rax
 jmp xchain00069_n21_α
 xchain00069_n29_β:
 jmp xchain00069_n7_β
proc_gedsub_β:
jmp qword ptr [r12 + 576]
proc_gedsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 592]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 144], rax
 pop rsi
proc_gedval_α_body:
lea rax, [rip + xchain00076_n4_β]
mov qword ptr [r12 + 128], rax
# IR_LIT_STRING
 xchain00076_n0_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00076_n1_α
 xchain00076_n0_β:
 jmp proc_gedval_ω
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "gedsub"
# IR_VAR
 xchain00076_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00076_n2_α
 xchain00076_n1_β:
 jmp proc_gedval_ω
 xchain00076_n2_α:
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
 jmp xchain00076_n3_α
 xchain00076_n2_β:
 jmp proc_gedval_ω
# IR_FIELD_GET
 xchain00076_n3_α:
 mov rdi, qword ptr [rip + .Lx00078_0]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00076_n4_α
 xchain00076_n3_β:
 jmp proc_gedval_ω
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "data"
# IR_SUSPEND yield+resume
 xchain00076_n4_α:
 lea rax, [rip + xchain00076_n4_β]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedval_γ
 xchain00076_n4_β:
 jmp proc_gedval_ω
proc_gedval_β:
jmp qword ptr [r12 + 128]
proc_gedval_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 144]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_gedref_α_body:
lea rax, [rip + xchain00079_n5_β]
mov qword ptr [r12 + 144], rax
# IR_LIT_STRING
 xchain00079_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00079_n1_α
 xchain00079_n0_β:
 jmp proc_gedref_ω
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "gedsub"
# IR_VAR
 xchain00079_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00079_n2_α
 xchain00079_n1_β:
 jmp proc_gedref_ω
 xchain00079_n2_α:
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
 jmp xchain00079_n3_α
 xchain00079_n2_β:
 jmp proc_gedref_ω
# IR_FIELD_GET
 xchain00079_n3_α:
 mov rdi, qword ptr [rip + .Lx00081_0]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00079_n4_α
 xchain00079_n3_β:
 jmp proc_gedref_ω
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "ref"
# IR_UNOP
 xchain00079_n4_α:
 mov eax, dword ptr [r12 + 48]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
 jmp xchain00079_n5_α
 xchain00079_n4_β:
 jmp proc_gedref_ω
# IR_SUSPEND yield+resume
 xchain00079_n5_α:
 lea rax, [rip + xchain00079_n5_β]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_gedref_γ
 xchain00079_n5_β:
 jmp proc_gedref_ω
proc_gedref_β:
jmp qword ptr [r12 + 144]
proc_gedref_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 160]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 960], rax
 pop rsi
proc_gedfnf_α_body:
# IR_VAR
 xchain00082_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 936], rax
 jmp xchain00082_n1_α
 xchain00082_n0_β:
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00082_n1_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00082_n2_α
 xchain00082_n1_β:
 jmp proc_gedfnf_ω
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "NAME"
 xchain00082_n2_α:
  .section .rodata
  .Lcall00044_pname: .string "gedval"
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
   lea rdi, [rip + .Lcall00044_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00082_n3_α
xchain00082_n2_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00082_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n3_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
 lea rax, [rip + xchain00082_n2_β]
 mov qword ptr [r12 + 896], rax
 jmp xchain00082_n4_α
 xchain00082_n3_β:
 jmp xchain00082_n6_α
 xchain00082_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00082_n6_α
 xchain00082_n4_β:
 jmp xchain00082_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00082_n5_α:
 jmp qword ptr [r12 + 896]
 xchain00082_n5_β:
 jmp xchain00082_n6_α
# IR_VAR
 xchain00082_n6_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 856], rax
 jmp xchain00082_n7_α
 xchain00082_n6_β:
 jmp xchain00082_n8_α
# IR_GEN_SCAN
 xchain00082_n7_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00082_n9_α
 xchain00082_n7_β:
 jmp xchain00082_n8_α
# IR_VAR
 xchain00082_n8_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 376], rax
 jmp xchain00082_n10_α
 xchain00082_n8_β:
 jmp xchain00082_n11_α
# IR_LIT_CHARSET
 xchain00082_n9_α:
 mov qword ptr [r12 + 832], 1
 mov dword ptr [r12 + 836], -1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00082_n12_α
 xchain00082_n9_β:
 jmp xchain00082_n22_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "/"
# IR_UNOP
 xchain00082_n10_α:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_size_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00082_n13_α
 xchain00082_n10_β:
 jmp xchain00082_n11_α
# IR_VAR
 xchain00082_n11_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 328], rax
 jmp xchain00082_n14_α
 xchain00082_n11_β:
 jmp xchain00082_n15_α
# IR_SCAN_UPTO
 xchain00082_n12_α:
 mov qword ptr [r12 + 816], r14
.Lx00085_0:
 mov rax, qword ptr [r12 + 816]
 cmp rax, r15
 jge xchain00082_n22_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00085_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00085_1
 mov qword ptr [r12 + 800], 6
 add rax, 1
 mov qword ptr [r12 + 808], rax
 jmp xchain00082_n16_α
.Lx00085_1:
 inc qword ptr [r12 + 816]
 jmp .Lx00085_0
 xchain00082_n12_β:
 inc qword ptr [r12 + 816]
 jmp .Lx00085_0
.Lx00085_2:
 .quad .Lx00085_2_s
.Lx00085_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00082_n13_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00082_n17_α
 xchain00082_n13_β:
 jmp xchain00082_n11_α
.Lx00086_0:
 .quad 0
 xchain00082_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00082_n18_α
 xchain00082_n14_β:
 jmp xchain00082_n15_α
# IR_VAR
 xchain00082_n15_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 88], rax
 jmp xchain00082_n19_α
 xchain00082_n15_β:
 jmp xchain00082_n20_α
# IR_SCAN_TAB
 xchain00082_n16_α:
 mov rax, qword ptr [r12 + 808]
 cmp rax, 1
 jge .Lx00087_0
 add rax, r15
 add rax, 1
.Lx00087_0:
 cmp rax, 1
 jl xchain00082_n22_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00082_n22_α
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
 jmp xchain00082_n21_α
 xchain00082_n16_β:
 mov r14, qword ptr [r12 + 784]
 jmp xchain00082_n22_α
 xchain00082_n17_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx00088_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx00088_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx00088_2
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx00088_2
.Lx00088_1:
 mov rax, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jle xchain00082_n11_α
 mov rcx, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rcx
 mov rcx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rcx
 jmp xchain00082_n23_α
.Lx00088_0:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 7
 lea r9, [r12 + 336]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00088_1
 cmp eax, 1
 je xchain00082_n11_α
 jmp xchain00082_n23_α
.Lx00088_2:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00082_n11_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
 jmp xchain00082_n23_α
 xchain00082_n17_β:
 jmp xchain00082_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n18_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00082_n15_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00082_n15_α
 xchain00082_n18_β:
 jmp xchain00082_n15_α
# IR_LIT_STRING
 xchain00082_n19_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00082_n25_α
 xchain00082_n19_β:
 jmp xchain00082_n20_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string " "
# IR_VAR
 xchain00082_n20_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 40], rax
 jmp xchain00082_n26_α
 xchain00082_n20_β:
 jmp proc_gedfnf_ω
 xchain00082_n21_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+752]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn455: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn455]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain00082_n22_α
 jmp xchain00082_n27_α
 xchain00082_n21_β:
 jmp xchain00082_n22_α
# IR_LIT_INTEGER
 xchain00082_n22_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00082_n28_α
 xchain00082_n22_β:
 jmp proc_gedfnf_ω
.Lx00090_0:
 .quad 0
# IR_VAR
 xchain00082_n23_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 264], rax
 jmp xchain00082_n29_α
 xchain00082_n23_β:
 jmp xchain00082_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00082_n24_α:
 jmp qword ptr [r12 + 192]
 xchain00082_n24_β:
 jmp xchain00082_n15_α
# IR_VAR
 xchain00082_n25_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00082_n30_α
 xchain00082_n25_β:
 jmp xchain00082_n20_α
# IR_RETURN
 xchain00082_n26_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedfnf_γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n27_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 632], rax
 lea rax, [rip + xchain00082_n22_α]
 mov qword ptr [r12 + 640], rax
 jmp xchain00082_n31_α
 xchain00082_n27_β:
 jmp xchain00082_n36_α
# IR_SCAN_TAB
 xchain00082_n28_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00091_0
 add rax, r15
 add rax, 1
.Lx00091_0:
 cmp rax, 1
 jl proc_gedfnf_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedfnf_ω
 mov qword ptr [r12 + 688], r14
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
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00082_n33_α
 xchain00082_n28_β:
 mov r14, qword ptr [r12 + 688]
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00082_n29_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00082_n34_α
 xchain00082_n29_β:
 jmp xchain00082_n15_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string " "
# IR_LIT_STRING
 xchain00082_n30_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00082_n35_α
 xchain00082_n30_β:
 jmp xchain00082_n20_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "TITL"
 xchain00082_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00082_n36_α
 xchain00082_n31_β:
 jmp xchain00082_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00082_n32_α:
 jmp qword ptr [r12 + 640]
 xchain00082_n32_β:
 jmp xchain00082_n36_α
# IR_LIT_STRING
 xchain00082_n33_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00082_n37_α
 xchain00082_n33_β:
 jmp proc_gedfnf_ω
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "/"
 xchain00082_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00082_n38_α
 xchain00082_n34_β:
 jmp xchain00082_n15_α
 xchain00082_n35_α:
  .section .rodata
  .Lcall00059_pname: .string "gedval"
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
   lea rdi, [rip + .Lcall00059_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00082_n20_α
 jmp xchain00082_n39_α
xchain00082_n35_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00082_n20_α
 jmp xchain00082_n39_α
# IR_LIT_CHARSET
 xchain00082_n36_α:
 mov qword ptr [r12 + 592], 1
 mov dword ptr [r12 + 596], -1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00082_n40_α
 xchain00082_n36_β:
 jmp xchain00082_n48_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "/"
 xchain00082_n37_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx00096_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx00096_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx00096_2
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx00096_2
.Lx00096_1:
 mov rax, qword ptr [r12 + 680]
 mov rcx, qword ptr [r12 + 728]
 cmp rax, rcx
 jne proc_gedfnf_ω
 mov rcx, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rcx
 mov rcx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rcx
 jmp xchain00082_n41_α
.Lx00096_0:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 9
 lea r9, [r12 + 656]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00096_1
 cmp eax, 1
 je proc_gedfnf_ω
 jmp xchain00082_n41_α
.Lx00096_2:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedfnf_ω
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
 jmp xchain00082_n41_α
 xchain00082_n37_β:
 jmp proc_gedfnf_ω
# IR_VAR
 xchain00082_n38_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 296], rax
 jmp xchain00082_n42_α
 xchain00082_n38_β:
 jmp xchain00082_n15_α
 xchain00082_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00082_n43_α
 xchain00082_n39_β:
 jmp xchain00082_n20_α
# IR_SCAN_UPTO
 xchain00082_n40_α:
 mov qword ptr [r12 + 576], r14
.Lx00097_0:
 mov rax, qword ptr [r12 + 576]
 cmp rax, r15
 jge xchain00082_n48_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00097_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00097_1
 mov qword ptr [r12 + 560], 6
 add rax, 1
 mov qword ptr [r12 + 568], rax
 jmp xchain00082_n44_α
.Lx00097_1:
 inc qword ptr [r12 + 576]
 jmp .Lx00097_0
 xchain00082_n40_β:
 inc qword ptr [r12 + 576]
 jmp .Lx00097_0
.Lx00097_2:
 .quad .Lx00097_2_s
.Lx00097_2_s:
 .string "/"
# IR_RETURN
 xchain00082_n41_α:
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedfnf_γ
 xchain00082_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00082_n45_α
 xchain00082_n42_β:
 jmp xchain00082_n15_α
 xchain00082_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00082_n46_α
 xchain00082_n43_β:
 jmp xchain00082_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n44_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
 lea rax, [rip + xchain00082_n48_α]
 mov qword ptr [r12 + 528], rax
 jmp xchain00082_n47_α
 xchain00082_n44_β:
 jmp xchain00082_n52_α
 xchain00082_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00082_n50_α
 xchain00082_n45_β:
 jmp xchain00082_n15_α
 xchain00082_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00082_n20_α
 xchain00082_n46_β:
 jmp xchain00082_n20_α
# IR_SCAN_TAB
 xchain00082_n47_α:
 mov rax, qword ptr [r12 + 520]
 cmp rax, 1
 jge .Lx00098_0
 add rax, r15
 add rax, 1
.Lx00098_0:
 cmp rax, 1
 jl xchain00082_n52_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00082_n52_α
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
 jmp xchain00082_n51_α
 xchain00082_n47_β:
 mov r14, qword ptr [r12 + 496]
 jmp xchain00082_n52_α
# IR_LIT_INTEGER
 xchain00082_n48_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00082_n53_α
 xchain00082_n48_β:
 jmp xchain00082_n52_α
.Lx00099_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00082_n49_α:
 jmp qword ptr [r12 + 528]
 xchain00082_n49_β:
 jmp xchain00082_n52_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n50_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00082_n15_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00082_n15_α
 xchain00082_n50_β:
 jmp xchain00082_n15_α
 xchain00082_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00082_n54_α
 xchain00082_n51_β:
 jmp xchain00082_n52_α
# IR_GEN_SCAN
 xchain00082_n52_α:
 lea rdi, [r12 + 400]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 400]
 mov r14, qword ptr [r12 + 408]
 mov r15, qword ptr [r12 + 416]
 jmp xchain00082_n8_α
 xchain00082_n52_β:
 jmp xchain00082_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00082_n53_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
 lea rax, [rip + xchain00082_n52_α]
 mov qword ptr [r12 + 528], rax
 jmp xchain00082_n47_α
 xchain00082_n53_β:
 jmp xchain00082_n52_α
 xchain00082_n54_α:
 jmp xchain00082_n55_α
xchain00082_n54_β:
 jmp xchain00082_n52_α
# IR_GEN_SCAN
 xchain00082_n55_α:
 lea rdi, [r12 + 400]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 400]
 mov r14, qword ptr [r12 + 408]
 mov r15, qword ptr [r12 + 416]
 jmp xchain00082_n8_α
 xchain00082_n55_β:
 jmp xchain00082_n8_α
proc_gedfnf_β:
jmp proc_gedfnf_ω
proc_gedfnf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 960]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 832], rax
 pop rsi
proc_gedlnf_α_body:
# IR_VAR
 xchain00100_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 808], rax
 jmp xchain00100_n1_α
 xchain00100_n0_β:
 jmp proc_gedlnf_ω
# IR_LIT_STRING
 xchain00100_n1_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00100_n2_α
 xchain00100_n1_β:
 jmp proc_gedlnf_ω
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "NAME"
 xchain00100_n2_α:
  .section .rodata
  .Lcall00102_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00102_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00100_n3_α
xchain00100_n2_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00100_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00100_n3_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
 lea rax, [rip + xchain00100_n2_β]
 mov qword ptr [r12 + 768], rax
 jmp xchain00100_n4_α
 xchain00100_n3_β:
 jmp xchain00100_n6_α
 xchain00100_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00100_n6_α
 xchain00100_n4_β:
 jmp xchain00100_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00100_n5_α:
 jmp qword ptr [r12 + 768]
 xchain00100_n5_β:
 jmp xchain00100_n6_α
# IR_VAR
 xchain00100_n6_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 728], rax
 jmp xchain00100_n7_α
 xchain00100_n6_β:
 jmp xchain00100_n8_α
# IR_GEN_SCAN
 xchain00100_n7_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00100_n9_α
 xchain00100_n7_β:
 jmp xchain00100_n8_α
# IR_VAR
 xchain00100_n8_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 232], rax
 jmp xchain00100_n10_α
 xchain00100_n8_β:
 jmp xchain00100_n11_α
# IR_LIT_CHARSET
 xchain00100_n9_α:
 mov qword ptr [r12 + 704], 1
 mov dword ptr [r12 + 708], -1
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00100_n12_α
 xchain00100_n9_β:
 jmp xchain00100_n21_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "/"
# IR_LIT_STRING
 xchain00100_n10_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00100_n13_α
 xchain00100_n10_β:
 jmp xchain00100_n11_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string ", "
# IR_VAR
 xchain00100_n11_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 88], rax
 jmp xchain00100_n14_α
 xchain00100_n11_β:
 jmp xchain00100_n15_α
# IR_SCAN_UPTO
 xchain00100_n12_α:
 mov qword ptr [r12 + 688], r14
.Lx00105_0:
 mov rax, qword ptr [r12 + 688]
 cmp rax, r15
 jge xchain00100_n21_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00105_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00105_1
 mov qword ptr [r12 + 672], 6
 add rax, 1
 mov qword ptr [r12 + 680], rax
 jmp xchain00100_n16_α
.Lx00105_1:
 inc qword ptr [r12 + 688]
 jmp .Lx00105_0
 xchain00100_n12_β:
 inc qword ptr [r12 + 688]
 jmp .Lx00105_0
.Lx00105_2:
 .quad .Lx00105_2_s
.Lx00105_2_s:
 .string "/"
 xchain00100_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00100_n17_α
 xchain00100_n13_β:
 jmp xchain00100_n11_α
# IR_LIT_STRING
 xchain00100_n14_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00100_n18_α
 xchain00100_n14_β:
 jmp xchain00100_n15_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string " "
# IR_VAR
 xchain00100_n15_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 40], rax
 jmp xchain00100_n19_α
 xchain00100_n15_β:
 jmp proc_gedlnf_ω
# IR_SCAN_TAB
 xchain00100_n16_α:
 mov rax, qword ptr [r12 + 680]
 cmp rax, 1
 jge .Lx00107_0
 add rax, r15
 add rax, 1
.Lx00107_0:
 cmp rax, 1
 jl xchain00100_n21_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00100_n21_α
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
 jmp xchain00100_n20_α
 xchain00100_n16_β:
 mov r14, qword ptr [r12 + 656]
 jmp xchain00100_n21_α
# IR_VAR
 xchain00100_n17_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 264], rax
 jmp xchain00100_n22_α
 xchain00100_n17_β:
 jmp xchain00100_n11_α
# IR_VAR
 xchain00100_n18_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00100_n23_α
 xchain00100_n18_β:
 jmp xchain00100_n15_α
# IR_RETURN
 xchain00100_n19_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedlnf_γ
 xchain00100_n20_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+624]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn539: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn539]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00100_n21_α
 jmp xchain00100_n24_α
 xchain00100_n20_β:
 jmp xchain00100_n21_α
# IR_LIT_INTEGER
 xchain00100_n21_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00100_n25_α
 xchain00100_n21_β:
 jmp proc_gedlnf_ω
.Lx00108_0:
 .quad 0
 xchain00100_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 880]
 mov rcx, qword ptr [r12 + 888]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00100_n26_α
 xchain00100_n22_β:
 jmp xchain00100_n11_α
# IR_LIT_STRING
 xchain00100_n23_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00100_n27_α
 xchain00100_n23_β:
 jmp xchain00100_n15_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "TITL"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00100_n24_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00100_n21_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00100_n28_α
 xchain00100_n24_β:
 jmp xchain00100_n32_α
# IR_SCAN_TAB
 xchain00100_n25_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00110_0
 add rax, r15
 add rax, 1
.Lx00110_0:
 cmp rax, 1
 jl proc_gedlnf_ω
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg proc_gedlnf_ω
 mov qword ptr [r12 + 560], r14
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
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00100_n30_α
 xchain00100_n25_β:
 mov r14, qword ptr [r12 + 560]
 jmp proc_gedlnf_ω
 xchain00100_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00100_n11_α
 xchain00100_n26_β:
 jmp xchain00100_n11_α
 xchain00100_n27_α:
  .section .rodata
  .Lcall00111_pname: .string "gedval"
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
   lea rdi, [rip + .Lcall00111_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00100_n15_α
 jmp xchain00100_n31_α
xchain00100_n27_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00100_n15_α
 jmp xchain00100_n31_α
 xchain00100_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00100_n32_α
 xchain00100_n28_β:
 jmp xchain00100_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00100_n29_α:
 jmp qword ptr [r12 + 512]
 xchain00100_n29_β:
 jmp xchain00100_n32_α
# IR_LIT_STRING
 xchain00100_n30_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00100_n33_α
 xchain00100_n30_β:
 jmp proc_gedlnf_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "/"
 xchain00100_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00100_n34_α
 xchain00100_n31_β:
 jmp xchain00100_n15_α
# IR_LIT_CHARSET
 xchain00100_n32_α:
 mov qword ptr [r12 + 464], 1
 mov dword ptr [r12 + 468], -1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00100_n35_α
 xchain00100_n32_β:
 jmp xchain00100_n40_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "/"
 xchain00100_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 592]
 cmp eax, 100
 je .Lx00114_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00114_2
 mov eax, dword ptr [r12 + 592]
 cmp eax, 6
 jne .Lx00114_2
.Lx00114_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 600]
 cmp rax, rcx
 jne proc_gedlnf_ω
 mov rcx, qword ptr [r12 + 592]
 mov qword ptr [r12 + 528], rcx
 mov rcx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 536], rcx
 jmp xchain00100_n36_α
.Lx00114_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 lea r9, [r12 + 528]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00114_1
 cmp eax, 1
 je proc_gedlnf_ω
 jmp xchain00100_n36_α
.Lx00114_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 592]
 mov rcx, qword ptr [r12 + 600]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedlnf_ω
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 536], rax
 jmp xchain00100_n36_α
 xchain00100_n33_β:
 jmp proc_gedlnf_ω
 xchain00100_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call str_concat_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00100_n37_α
 xchain00100_n34_β:
 jmp xchain00100_n15_α
# IR_SCAN_UPTO
 xchain00100_n35_α:
 mov qword ptr [r12 + 448], r14
.Lx00115_0:
 mov rax, qword ptr [r12 + 448]
 cmp rax, r15
 jge xchain00100_n40_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00115_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00115_1
 mov qword ptr [r12 + 432], 6
 add rax, 1
 mov qword ptr [r12 + 440], rax
 jmp xchain00100_n38_α
.Lx00115_1:
 inc qword ptr [r12 + 448]
 jmp .Lx00115_0
 xchain00100_n35_β:
 inc qword ptr [r12 + 448]
 jmp .Lx00115_0
.Lx00115_2:
 .quad .Lx00115_2_s
.Lx00115_2_s:
 .string "/"
# IR_RETURN
 xchain00100_n36_α:
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_gedlnf_γ
 xchain00100_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00100_n15_α
 xchain00100_n37_β:
 jmp xchain00100_n15_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00100_n38_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00100_n40_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00100_n39_α
 xchain00100_n38_β:
 jmp xchain00100_n43_α
# IR_SCAN_TAB
 xchain00100_n39_α:
 mov rax, qword ptr [r12 + 392]
 cmp rax, 1
 jge .Lx00116_0
 add rax, r15
 add rax, 1
.Lx00116_0:
 cmp rax, 1
 jl xchain00100_n43_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00100_n43_α
 mov qword ptr [r12 + 368], r14
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
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00100_n42_α
 xchain00100_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00100_n43_α
# IR_LIT_INTEGER
 xchain00100_n40_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00100_n44_α
 xchain00100_n40_β:
 jmp xchain00100_n43_α
.Lx00117_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00100_n41_α:
 jmp qword ptr [r12 + 400]
 xchain00100_n41_β:
 jmp xchain00100_n43_α
 xchain00100_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00100_n45_α
 xchain00100_n42_β:
 jmp xchain00100_n43_α
# IR_GEN_SCAN
 xchain00100_n43_α:
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00100_n8_α
 xchain00100_n43_β:
 jmp xchain00100_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00100_n44_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00100_n43_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00100_n39_α
 xchain00100_n44_β:
 jmp xchain00100_n43_α
 xchain00100_n45_α:
 jmp xchain00100_n46_α
xchain00100_n45_β:
 jmp xchain00100_n43_α
# IR_GEN_SCAN
 xchain00100_n46_α:
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00100_n8_α
 xchain00100_n46_β:
 jmp xchain00100_n8_α
proc_gedlnf_β:
jmp proc_gedlnf_ω
proc_gedlnf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 832]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2496], rax
 pop rsi
proc_geddate_α_body:
# IR_VAR_REF gva
 xchain00118_n0_α:
 lea rdi, [rbx + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00118_n1_α
 xchain00118_n0_β:
 jmp xchain00118_n3_α
# IR_UNOP_TEST lv
 xchain00118_n1_α:
 mov eax, dword ptr [r12 + 2432]
 cmp eax, 99
 je xchain00118_n3_α
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00118_n3_α
 cmp eax, 0
 jne xchain00118_n3_α
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00118_n2_α
 xchain00118_n1_β:
 jmp xchain00118_n3_α
# IR_LIT_INTEGER
 xchain00118_n2_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain00118_n4_α
 xchain00118_n2_β:
 jmp xchain00118_n3_α
.Lx00119_0:
 .quad 1
# IR_VAR
 xchain00118_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain00118_n5_α
 xchain00118_n3_β:
 jmp proc_geddate_ω
# IR_ASSIGN_VAR write through variable
 xchain00118_n4_α:
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2480]
 mov rcx, qword ptr [r12 + 2488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n3_α
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00118_n6_α
 xchain00118_n4_β:
 jmp xchain00118_n3_α
# IR_LIT_STRING
 xchain00118_n5_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00118_n7_α
 xchain00118_n5_β:
 jmp proc_geddate_ω
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "DATE"
 xchain00118_n6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn586: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn586]
 lea rsi, [r12 + 2432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je xchain00118_n9_α
 jmp xchain00118_n8_α
 xchain00118_n6_β:
 jmp xchain00118_n9_α
 xchain00118_n7_α:
  .section .rodata
  .Lcall00075_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00075_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00118_n10_α
xchain00118_n7_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00118_n10_α
# IR_ASSIGN gva
 xchain00118_n8_α:
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00118_n9_α
 xchain00118_n8_β:
 jmp xchain00118_n9_α
# IR_VAR_REF gva
 xchain00118_n9_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00118_n11_α
 xchain00118_n9_β:
 jmp xchain00118_n16_α
# IR_LIT_CHARSET
 xchain00118_n10_α:
 mov qword ptr [r12 + 992], 1
 mov dword ptr [r12 + 996], -1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00118_n12_α
 xchain00118_n10_β:
 jmp xchain00118_n7_β
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "\t\n "
# IR_LIT_STRING
 xchain00118_n11_α:
 mov qword ptr [r12 + 2336], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00118_n13_α
 xchain00118_n11_β:
 jmp xchain00118_n16_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "JAN"
 xchain00118_n12_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn594: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn594]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00118_n14_α
 xchain00118_n12_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00118_n13_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2336]
 mov rcx, qword ptr [r12 + 2344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n16_α
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00118_n15_α
 xchain00118_n13_β:
 jmp xchain00118_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n14_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
 lea rax, [rip + xchain00118_n7_β]
 mov qword ptr [r12 + 880], rax
 jmp xchain00118_n17_α
 xchain00118_n14_β:
 jmp xchain00118_n21_α
# IR_LIT_STRING
 xchain00118_n15_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain00118_n19_α
 xchain00118_n15_β:
 jmp xchain00118_n16_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "Jan"
# IR_VAR_REF gva
 xchain00118_n16_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00118_n20_α
 xchain00118_n16_β:
 jmp xchain00118_n25_α
 xchain00118_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00118_n21_α
 xchain00118_n17_β:
 jmp xchain00118_n21_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00118_n18_α:
 jmp qword ptr [r12 + 880]
 xchain00118_n18_β:
 jmp xchain00118_n21_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n19_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 mov rdx, qword ptr [r12 + 2384]
 mov rcx, qword ptr [r12 + 2392]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n16_α
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain00118_n16_α
 xchain00118_n19_β:
 jmp xchain00118_n16_α
# IR_LIT_STRING
 xchain00118_n20_α:
 mov qword ptr [r12 + 2256], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 2264], rax
 jmp xchain00118_n22_α
 xchain00118_n20_β:
 jmp xchain00118_n25_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "FEB"
# IR_LIT_STRING
 xchain00118_n21_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00118_n23_α
 xchain00118_n21_β:
 jmp xchain00118_n26_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string ""
# IR_SUBSCRIPT x[i] variable
 xchain00118_n22_α:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2256]
 mov rcx, qword ptr [r12 + 2264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n25_α
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00118_n24_α
 xchain00118_n22_β:
 jmp xchain00118_n25_α
 xchain00118_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00118_n26_α
 xchain00118_n23_β:
 jmp xchain00118_n26_α
# IR_LIT_STRING
 xchain00118_n24_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00118_n27_α
 xchain00118_n24_β:
 jmp xchain00118_n25_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "Feb"
# IR_VAR_REF gva
 xchain00118_n25_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00118_n28_α
 xchain00118_n25_β:
 jmp xchain00118_n36_α
# IR_VAR
 xchain00118_n26_α:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 808], rax
 jmp xchain00118_n29_α
 xchain00118_n26_β:
 jmp xchain00118_n30_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n27_α:
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n25_α
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00118_n25_α
 xchain00118_n27_β:
 jmp xchain00118_n25_α
# IR_LIT_STRING
 xchain00118_n28_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00118_n31_α
 xchain00118_n28_β:
 jmp xchain00118_n36_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "MAR"
# IR_GEN_SCAN
 xchain00118_n29_α:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00118_n32_α
 xchain00118_n29_β:
 jmp xchain00118_n30_α
# IR_VAR
 xchain00118_n30_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 248], rax
 jmp xchain00118_n33_α
 xchain00118_n30_β:
 jmp xchain00118_n34_α
# IR_SUBSCRIPT x[i] variable
 xchain00118_n31_α:
 mov rdi, qword ptr [r12 + 2160]
 mov rsi, qword ptr [r12 + 2168]
 mov rdx, qword ptr [r12 + 2176]
 mov rcx, qword ptr [r12 + 2184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n36_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00118_n35_α
 xchain00118_n31_β:
 jmp xchain00118_n36_α
# IR_LIT_INTEGER
 xchain00118_n32_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00118_n37_α
 xchain00118_n32_β:
 jmp xchain00118_n43_α
.Lx00128_0:
 .quad 0
# IR_UNOP
 xchain00118_n33_α:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 call rt_size_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00118_n38_α
 xchain00118_n33_β:
 jmp xchain00118_n34_α
# IR_VAR
 xchain00118_n34_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 184], rax
 jmp xchain00118_n39_α
 xchain00118_n34_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00118_n35_α:
 mov qword ptr [r12 + 2224], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00118_n40_α
 xchain00118_n35_β:
 jmp xchain00118_n36_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "Mar"
# IR_VAR_REF gva
 xchain00118_n36_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00118_n41_α
 xchain00118_n36_β:
 jmp xchain00118_n52_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00118_n37_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00130_0
 add rax, r15
 add rax, 1
.Lx00130_0:
 cmp rax, 1
 jl xchain00118_n43_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00118_n43_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00118_n43_α
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xchain00118_n47_α
 xchain00118_n37_β:
 jmp xchain00118_n43_α
# IR_LIT_INTEGER
 xchain00118_n38_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00118_n44_α
 xchain00118_n38_β:
 jmp xchain00118_n34_α
.Lx00131_0:
 .quad 13
# IR_LIT_INTEGER
 xchain00118_n39_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00118_n45_α
 xchain00118_n39_β:
 jmp proc_geddate_ω
.Lx00132_0:
 .quad 12
# IR_ASSIGN_VAR write through variable
 xchain00118_n40_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n36_α
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00118_n36_α
 xchain00118_n40_β:
 jmp xchain00118_n36_α
# IR_LIT_STRING
 xchain00118_n41_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00118_n46_α
 xchain00118_n41_β:
 jmp xchain00118_n52_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "APR"
 xchain00118_n42_α:
 jmp xchain00118_n47_α
xchain00118_n42_β:
 jmp xchain00118_n47_α
# IR_KEYWORD_null
 xchain00118_n43_α:
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain00118_n48_α
 xchain00118_n43_β:
 jmp xchain00118_n47_α
 xchain00118_n44_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 256]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00134_2
 mov eax, dword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx00134_2
.Lx00134_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 264]
 cmp rax, rcx
 jle xchain00118_n34_α
 mov rcx, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rcx
 mov rcx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rcx
 jmp xchain00118_n49_α
.Lx00134_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8d, 7
 lea r9, [r12 + 208]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00134_1
 cmp eax, 1
 je xchain00118_n34_α
 jmp xchain00118_n49_α
.Lx00134_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00118_n34_α
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
 jmp xchain00118_n49_α
 xchain00118_n44_β:
 jmp xchain00118_n34_α
 xchain00118_n45_α:
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
  .Lrkfn638: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00118_n50_α
 xchain00118_n45_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00118_n46_α:
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 mov rdx, qword ptr [r12 + 2096]
 mov rcx, qword ptr [r12 + 2104]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n52_α
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00118_n51_α
 xchain00118_n46_β:
 jmp xchain00118_n52_α
# IR_GEN_SCAN
 xchain00118_n47_α:
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00118_n30_α
 xchain00118_n47_β:
 jmp xchain00118_n30_α
# IR_LIT_CHARSET
 xchain00118_n48_α:
 mov qword ptr [r12 + 784], 1
 mov dword ptr [r12 + 788], -1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00118_n53_α
 xchain00118_n48_β:
 jmp xchain00118_n60_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "\t\n "
# IR_VAR
 xchain00118_n49_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 88], rax
 jmp xchain00118_n54_α
 xchain00118_n49_β:
 jmp proc_geddate_ω
# IR_RETURN
 xchain00118_n50_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_geddate_γ
# IR_LIT_STRING
 xchain00118_n51_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00118_n55_α
 xchain00118_n51_β:
 jmp xchain00118_n52_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "Apr"
# IR_VAR_REF gva
 xchain00118_n52_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00118_n56_α
 xchain00118_n52_β:
 jmp xchain00118_n63_α
# IR_SCAN_MANY
 xchain00118_n53_α:
 mov eax, r14d
.Lx00137_0:
 cmp eax, r15d
 jge .Lx00137_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00137_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00137_1
 add eax, 1
 jmp .Lx00137_0
.Lx00137_1:
 cmp eax, r14d
 je xchain00118_n60_α
 mov qword ptr [r12 + 768], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 776], rcx
 jmp xchain00118_n57_α
 xchain00118_n53_β:
 jmp xchain00118_n60_α
.Lx00137_2:
 .quad .Lx00137_2_s
.Lx00137_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00118_n54_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00118_n58_α
 xchain00118_n54_β:
 jmp proc_geddate_ω
.Lx00138_0:
 .quad 2
# IR_ASSIGN_VAR write through variable
 xchain00118_n55_α:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2144]
 mov rcx, qword ptr [r12 + 2152]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n52_α
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00118_n52_α
 xchain00118_n55_β:
 jmp xchain00118_n52_α
# IR_LIT_STRING
 xchain00118_n56_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00118_n59_α
 xchain00118_n56_β:
 jmp xchain00118_n63_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "MAY"
# IR_SCAN_TAB
 xchain00118_n57_α:
 mov rax, qword ptr [r12 + 776]
 cmp rax, 1
 jge .Lx00140_0
 add rax, r15
 add rax, 1
.Lx00140_0:
 cmp rax, 1
 jl xchain00118_n60_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00118_n60_α
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
 jmp xchain00118_n60_α
 xchain00118_n57_β:
 mov r14, qword ptr [r12 + 752]
 jmp xchain00118_n60_α
# IR_LIT_INTEGER
 xchain00118_n58_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00118_n61_α
 xchain00118_n58_β:
 jmp proc_geddate_ω
.Lx00141_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain00118_n59_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2016]
 mov rcx, qword ptr [r12 + 2024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n63_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00118_n62_α
 xchain00118_n59_β:
 jmp xchain00118_n63_α
# IR_LIT_CHARSET
 xchain00118_n60_α:
 mov qword ptr [r12 + 720], 1
 mov dword ptr [r12 + 724], -1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00118_n64_α
 xchain00118_n60_β:
 jmp xchain00118_n71_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "\t\n "
# IR_SUBSCRIPT section
 xchain00118_n61_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_get2@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00118_n65_α
 xchain00118_n61_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00118_n62_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00118_n66_α
 xchain00118_n62_β:
 jmp xchain00118_n63_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "May"
# IR_VAR_REF gva
 xchain00118_n63_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00118_n67_α
 xchain00118_n63_β:
 jmp xchain00118_n74_α
# IR_SCAN_UPTO
 xchain00118_n64_α:
 mov qword ptr [r12 + 704], r14
.Lx00144_0:
 mov rax, qword ptr [r12 + 704]
 cmp rax, r15
 jge xchain00118_n71_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00144_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00144_1
 mov qword ptr [r12 + 688], 6
 add rax, 1
 mov qword ptr [r12 + 696], rax
 jmp xchain00118_n68_α
.Lx00144_1:
 inc qword ptr [r12 + 704]
 jmp .Lx00144_0
 xchain00118_n64_β:
 inc qword ptr [r12 + 704]
 jmp .Lx00144_0
.Lx00144_2:
 .quad .Lx00144_2_s
.Lx00144_2_s:
 .string "\t\n "
# IR_RETURN
 xchain00118_n65_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_geddate_γ
# IR_ASSIGN_VAR write through variable
 xchain00118_n66_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n63_α
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00118_n63_α
 xchain00118_n66_β:
 jmp xchain00118_n63_α
# IR_LIT_STRING
 xchain00118_n67_α:
 mov qword ptr [r12 + 1936], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00118_n69_α
 xchain00118_n67_β:
 jmp xchain00118_n74_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "JUN"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n68_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00118_n71_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00118_n70_α
 xchain00118_n68_β:
 jmp xchain00118_n76_α
# IR_SUBSCRIPT x[i] variable
 xchain00118_n69_α:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1936]
 mov rcx, qword ptr [r12 + 1944]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n74_α
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00118_n73_α
 xchain00118_n69_β:
 jmp xchain00118_n74_α
# IR_SCAN_TAB
 xchain00118_n70_α:
 mov rax, qword ptr [r12 + 648]
 cmp rax, 1
 jge .Lx00146_0
 add rax, r15
 add rax, 1
.Lx00146_0:
 cmp rax, 1
 jl xchain00118_n76_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00118_n76_α
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
 jmp xchain00118_n75_α
 xchain00118_n70_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00118_n76_α
# IR_LIT_INTEGER
 xchain00118_n71_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00118_n77_α
 xchain00118_n71_β:
 jmp xchain00118_n76_α
.Lx00147_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00118_n72_α:
 jmp qword ptr [r12 + 656]
 xchain00118_n72_β:
 jmp xchain00118_n76_α
# IR_LIT_STRING
 xchain00118_n73_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00118_n78_α
 xchain00118_n73_β:
 jmp xchain00118_n74_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "Jun"
# IR_VAR_REF gva
 xchain00118_n74_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain00118_n79_α
 xchain00118_n74_β:
 jmp xchain00118_n84_α
 xchain00118_n75_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00118_n76_α
 xchain00118_n75_β:
 jmp xchain00118_n76_α
# IR_VAR
 xchain00118_n76_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 424], rax
 jmp xchain00118_n80_α
 xchain00118_n76_β:
 jmp xchain00118_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n77_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00118_n76_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00118_n70_α
 xchain00118_n77_β:
 jmp xchain00118_n76_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n78_α:
 mov rdi, qword ptr [r12 + 1952]
 mov rsi, qword ptr [r12 + 1960]
 mov rdx, qword ptr [r12 + 1984]
 mov rcx, qword ptr [r12 + 1992]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n74_α
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain00118_n74_α
 xchain00118_n78_β:
 jmp xchain00118_n74_α
# IR_LIT_STRING
 xchain00118_n79_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00118_n81_α
 xchain00118_n79_β:
 jmp xchain00118_n84_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "JUL"
# IR_LIT_STRING
 xchain00118_n80_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00118_n82_α
 xchain00118_n80_β:
 jmp xchain00118_n32_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string " "
# IR_SUBSCRIPT x[i] variable
 xchain00118_n81_α:
 mov rdi, qword ptr [r12 + 1840]
 mov rsi, qword ptr [r12 + 1848]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n84_α
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain00118_n83_α
 xchain00118_n81_β:
 jmp xchain00118_n84_α
# IR_VAR_REF gva
 xchain00118_n82_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00118_n85_α
 xchain00118_n82_β:
 jmp xchain00118_n89_α
# IR_LIT_STRING
 xchain00118_n83_α:
 mov qword ptr [r12 + 1904], 1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00118_n86_α
 xchain00118_n83_β:
 jmp xchain00118_n84_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "Jul"
# IR_VAR_REF gva
 xchain00118_n84_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00118_n87_α
 xchain00118_n84_β:
 jmp xchain00118_n94_α
# IR_VAR
 xchain00118_n85_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 552], rax
 jmp xchain00118_n88_α
 xchain00118_n85_β:
 jmp xchain00118_n89_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n86_α:
 mov rdi, qword ptr [r12 + 1872]
 mov rsi, qword ptr [r12 + 1880]
 mov rdx, qword ptr [r12 + 1904]
 mov rcx, qword ptr [r12 + 1912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n84_α
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00118_n84_α
 xchain00118_n86_β:
 jmp xchain00118_n84_α
# IR_LIT_STRING
 xchain00118_n87_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain00118_n90_α
 xchain00118_n87_β:
 jmp xchain00118_n94_α
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "AUG"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n88_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n89_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00118_n91_α
 xchain00118_n88_β:
 jmp xchain00118_n89_α
# IR_VAR
 xchain00118_n89_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 504], rax
 jmp xchain00118_n92_α
 xchain00118_n89_β:
 jmp xchain00118_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00118_n90_α:
 mov rdi, qword ptr [r12 + 1760]
 mov rsi, qword ptr [r12 + 1768]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n94_α
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00118_n93_α
 xchain00118_n90_β:
 jmp xchain00118_n94_α
# IR_DEREF variable -> value
 xchain00118_n91_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00118_n89_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00118_n95_α
 xchain00118_n91_β:
 jmp xchain00118_n89_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n92_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain00118_n32_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain00118_n96_α
 xchain00118_n92_β:
 jmp xchain00118_n32_α
# IR_LIT_STRING
 xchain00118_n93_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00118_n98_α
 xchain00118_n93_β:
 jmp xchain00118_n94_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "Aug"
# IR_VAR_REF gva
 xchain00118_n94_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00118_n99_α
 xchain00118_n94_β:
 jmp xchain00118_n00028_α
# IR_UNOP
 xchain00118_n95_α:
 mov eax, dword ptr [r12 + 576]
 cmp eax, 99
 je xchain00118_n89_α
 cmp eax, 0
 je xchain00118_n89_α
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 520], rax
 jmp xchain00118_n00022_α
 xchain00118_n95_β:
 jmp xchain00118_n89_α
 xchain00118_n96_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00118_n00024_α
 xchain00118_n96_β:
 jmp xchain00118_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00118_n97_α:
 jmp qword ptr [r12 + 480]
 xchain00118_n97_β:
 jmp xchain00118_n32_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n98_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n94_α
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00118_n94_α
 xchain00118_n98_β:
 jmp xchain00118_n94_α
# IR_LIT_STRING
 xchain00118_n99_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00118_n00025_α
 xchain00118_n99_β:
 jmp xchain00118_n00028_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "SEP"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n00022_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain00118_n89_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain00118_n96_α
 xchain00118_n00022_β:
 jmp xchain00118_n32_α
 xchain00118_n00024_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call str_concat_d@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00118_n00026_α
 xchain00118_n00024_β:
 jmp xchain00118_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00025_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00028_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00118_n00027_α
 xchain00118_n00025_β:
 jmp xchain00118_n00028_α
 xchain00118_n00026_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00118_n00029_α
 xchain00118_n00026_β:
 jmp xchain00118_n32_α
# IR_LIT_STRING
 xchain00118_n00027_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00118_n00030_α
 xchain00118_n00027_β:
 jmp xchain00118_n00028_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "Sep"
# IR_VAR_REF gva
 xchain00118_n00028_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00118_n00031_α
 xchain00118_n00028_β:
 jmp xchain00118_n00156_α
 xchain00118_n00029_α:
 jmp xchain00118_n32_α
xchain00118_n00029_β:
 jmp xchain00118_n32_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00030_α:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00028_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00118_n00028_α
 xchain00118_n00030_β:
 jmp xchain00118_n00028_α
# IR_LIT_STRING
 xchain00118_n00031_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00118_n00032_α
 xchain00118_n00031_β:
 jmp xchain00118_n00156_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "OCT"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00032_α:
 mov rdi, qword ptr [r12 + 1600]
 mov rsi, qword ptr [r12 + 1608]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00156_α
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00118_n00001_α
 xchain00118_n00032_β:
 jmp xchain00118_n00156_α
# IR_LIT_STRING
 xchain00118_n00001_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00118_n00159_α
 xchain00118_n00001_β:
 jmp xchain00118_n00156_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "Oct"
# IR_VAR_REF gva
 xchain00118_n00156_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00118_n00160_α
 xchain00118_n00156_β:
 jmp xchain00118_n00161_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00159_α:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00156_α
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00118_n00156_α
 xchain00118_n00159_β:
 jmp xchain00118_n00156_α
# IR_LIT_STRING
 xchain00118_n00160_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00118_n00163_α
 xchain00118_n00160_β:
 jmp xchain00118_n00161_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "NOV"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00163_α:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00161_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00118_n00164_α
 xchain00118_n00163_β:
 jmp xchain00118_n00161_α
# IR_LIT_STRING
 xchain00118_n00164_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain00118_n00166_α
 xchain00118_n00164_β:
 jmp xchain00118_n00161_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "Nov"
# IR_VAR_REF gva
 xchain00118_n00161_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00118_n00167_α
 xchain00118_n00161_β:
 jmp xchain00118_n00168_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00166_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00161_α
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00118_n00161_α
 xchain00118_n00166_β:
 jmp xchain00118_n00161_α
# IR_LIT_STRING
 xchain00118_n00167_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00118_n00170_α
 xchain00118_n00167_β:
 jmp xchain00118_n00168_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "DEC"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00170_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00168_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00118_n00171_α
 xchain00118_n00170_β:
 jmp xchain00118_n00168_α
# IR_LIT_STRING
 xchain00118_n00171_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00118_n00173_α
 xchain00118_n00171_β:
 jmp xchain00118_n00168_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "Dec"
# IR_VAR_REF gva
 xchain00118_n00168_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00118_n00174_α
 xchain00118_n00168_β:
 jmp xchain00118_n00002_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00173_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00168_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain00118_n00168_α
 xchain00118_n00173_β:
 jmp xchain00118_n00168_α
# IR_LIT_STRING
 xchain00118_n00174_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00118_n00176_α
 xchain00118_n00174_β:
 jmp xchain00118_n00002_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "ABT"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00176_α:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00002_α
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00118_n00177_α
 xchain00118_n00176_β:
 jmp xchain00118_n00002_α
# IR_LIT_STRING
 xchain00118_n00177_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00118_n00179_α
 xchain00118_n00177_β:
 jmp xchain00118_n00002_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "abt"
# IR_VAR_REF gva
 xchain00118_n00002_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00118_n00180_α
 xchain00118_n00002_β:
 jmp xchain00118_n00181_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00179_α:
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00002_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00118_n00002_α
 xchain00118_n00179_β:
 jmp xchain00118_n00002_α
# IR_LIT_STRING
 xchain00118_n00180_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00118_n00003_α
 xchain00118_n00180_β:
 jmp xchain00118_n00181_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "BEF"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00003_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00181_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain00118_n00183_α
 xchain00118_n00003_β:
 jmp xchain00118_n00181_α
# IR_LIT_STRING
 xchain00118_n00183_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00118_n00185_α
 xchain00118_n00183_β:
 jmp xchain00118_n00181_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "bef"
# IR_VAR_REF gva
 xchain00118_n00181_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00118_n00186_α
 xchain00118_n00181_β:
 jmp xchain00118_n00004_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00185_α:
 mov rdi, qword ptr [r12 + 1312]
 mov rsi, qword ptr [r12 + 1320]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00181_α
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00118_n00181_α
 xchain00118_n00185_β:
 jmp xchain00118_n00181_α
# IR_LIT_STRING
 xchain00118_n00186_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00118_n00188_α
 xchain00118_n00186_β:
 jmp xchain00118_n00004_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "AFT"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00188_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00004_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00118_n00189_α
 xchain00118_n00188_β:
 jmp xchain00118_n00004_α
# IR_LIT_STRING
 xchain00118_n00189_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00118_n00191_α
 xchain00118_n00189_β:
 jmp xchain00118_n00004_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "aft"
# IR_VAR_REF gva
 xchain00118_n00004_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00118_n00192_α
 xchain00118_n00004_β:
 jmp xchain00118_n00193_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00191_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00004_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00118_n00004_α
 xchain00118_n00191_β:
 jmp xchain00118_n00004_α
# IR_LIT_STRING
 xchain00118_n00192_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00118_n00195_α
 xchain00118_n00192_β:
 jmp xchain00118_n00193_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "CAL"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00195_α:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n00193_α
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00118_n00196_α
 xchain00118_n00195_β:
 jmp xchain00118_n00193_α
# IR_LIT_STRING
 xchain00118_n00196_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00118_n00198_α
 xchain00118_n00196_β:
 jmp xchain00118_n00193_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "cal"
# IR_VAR_REF gva
 xchain00118_n00193_α:
 lea rdi, [rbx + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00118_n00199_α
 xchain00118_n00193_β:
 jmp xchain00118_n3_α
# IR_ASSIGN_VAR write through variable
 xchain00118_n00198_α:
 mov rdi, qword ptr [r12 + 1152]
 mov rsi, qword ptr [r12 + 1160]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n00193_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00118_n00193_α
 xchain00118_n00198_β:
 jmp xchain00118_n00193_α
# IR_LIT_STRING
 xchain00118_n00199_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00118_n00005_α
 xchain00118_n00199_β:
 jmp xchain00118_n3_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "EST"
# IR_SUBSCRIPT x[i] variable
 xchain00118_n00005_α:
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00118_n3_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00118_n00201_α
 xchain00118_n00005_β:
 jmp xchain00118_n3_α
# IR_LIT_STRING
 xchain00118_n00201_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00118_n00203_α
 xchain00118_n00201_β:
 jmp xchain00118_n3_α
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "est"
# IR_ASSIGN_VAR write through variable
 xchain00118_n00203_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00118_n3_α
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00118_n00006_α
 xchain00118_n00203_β:
 jmp xchain00118_n3_α
 xchain00118_n00006_α:
 jmp xchain00118_n00007_α
xchain00118_n00006_β:
 jmp xchain00118_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00118_n00007_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1016], rax
 lea rax, [rip + xchain00118_n3_α]
 mov qword ptr [r12 + 1024], rax
 jmp xchain00118_n3_α
 xchain00118_n00007_β:
 jmp xchain00118_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00118_n00204_α:
 jmp qword ptr [r12 + 1024]
 xchain00118_n00204_β:
 jmp xchain00118_n3_α
proc_geddate_β:
jmp proc_geddate_ω
proc_geddate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2496]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 3408], rax
 pop rsi
main_α_body:
# IR_VAR
 xchain00205_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3384], rax
 jmp xchain00205_n1_α
 xchain00205_n0_β:
 jmp xchain00205_n2_α
# IR_UNOP
 xchain00205_n1_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain00205_n3_α
 xchain00205_n1_β:
 jmp xchain00205_n2_α
# IR_KEYWORD_read
 xchain00205_n2_α:
 mov rdi, qword ptr [rip + .Lx00206_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 jmp xchain00205_n4_α
 xchain00205_n2_β:
 jmp xchain00205_n8_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "&input"
# IR_LIT_INTEGER
 xchain00205_n3_α:
 mov qword ptr [r12 + 3392], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 3400], rax
 jmp xchain00205_n5_α
 xchain00205_n3_β:
 jmp xchain00205_n2_α
.Lx00207_0:
 .quad 0
 xchain00205_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3312]
 mov rdx, qword ptr [r12 + 3320]
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain00205_n6_α
 xchain00205_n4_β:
 jmp xchain00205_n8_α
 xchain00205_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 100
 je .Lx00208_0
 mov eax, dword ptr [r12 + 3392]
 cmp eax, 100
 je .Lx00208_0
 mov eax, dword ptr [r12 + 3360]
 cmp eax, 6
 jne .Lx00208_2
 mov eax, dword ptr [r12 + 3392]
 cmp eax, 6
 jne .Lx00208_2
.Lx00208_1:
 mov rax, qword ptr [r12 + 3368]
 mov rcx, qword ptr [r12 + 3400]
 cmp rax, rcx
 jle xchain00205_n2_α
 mov rcx, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3344], rcx
 mov rcx, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3352], rcx
 jmp xchain00205_n7_α
.Lx00208_0:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3392]
 mov rcx, qword ptr [r12 + 3400]
 mov r8d, 7
 lea r9, [r12 + 3344]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00208_1
 cmp eax, 1
 je xchain00205_n2_α
 jmp xchain00205_n7_α
.Lx00208_2:
 mov rdi, qword ptr [r12 + 3360]
 mov rsi, qword ptr [r12 + 3368]
 mov rdx, qword ptr [r12 + 3392]
 mov rcx, qword ptr [r12 + 3400]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00205_n2_α
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3352], rax
 jmp xchain00205_n7_α
 xchain00205_n5_β:
 jmp xchain00205_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n6_α:
 mov rax, qword ptr [r12 + 3296]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3304]
 mov qword ptr [r12 + 3000], rax
 lea rax, [rip + xchain00205_n8_α]
 mov qword ptr [r12 + 3008], rax
 jmp xchain00205_n8_α
 xchain00205_n6_β:
 jmp xchain00205_n8_α
# IR_VAR_REF local
 xchain00205_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain00205_n10_α
 xchain00205_n7_β:
 jmp xchain00205_n18_α
# IR_VAR
 xchain00205_n8_α:
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 2984], rax
 jmp xchain00205_n11_α
 xchain00205_n8_β:
 jmp xchain00205_n12_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00205_n9_α:
 jmp qword ptr [r12 + 3008]
 xchain00205_n9_β:
 jmp xchain00205_n8_α
# IR_LIT_INTEGER
 xchain00205_n10_α:
 mov qword ptr [r12 + 3248], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 3256], rax
 jmp xchain00205_n13_α
 xchain00205_n10_β:
 jmp xchain00205_n18_α
.Lx00209_0:
 .quad 1
 xchain00205_n11_α:
  .section .rodata
  .Lcall00210_pname: .string "gedload"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2976]
 mov rdx, qword ptr [r12 + 2984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00210_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 cmp eax, 99
 je xchain00205_n12_α
 jmp xchain00205_n14_α
xchain00205_n11_β:
 jmp xchain00205_n12_α
# IR_VAR
 xchain00205_n12_α:
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 2920], rax
 jmp xchain00205_n15_α
 xchain00205_n12_β:
 jmp xchain00205_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00205_n13_α:
 mov rdi, qword ptr [r12 + 3232]
 mov rsi, qword ptr [r12 + 3240]
 mov rdx, qword ptr [r12 + 3248]
 mov rcx, qword ptr [r12 + 3256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00205_n18_α
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain00205_n17_α
 xchain00205_n13_β:
 jmp xchain00205_n18_α
 xchain00205_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2944]
 mov rdx, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00205_n12_α
 xchain00205_n14_β:
 jmp xchain00205_n12_α
 xchain00205_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2912] -> [r12+2896]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2904], rax
  .section .rodata
  .Lrkfn797: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn797]
 lea rsi, [r12 + 2896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain00205_n16_α
 jmp xchain00205_n16_α
 xchain00205_n15_β:
 jmp xchain00205_n16_α
# IR_MAKE_LIST
 xchain00205_n16_α:
 lea rdi, [r12 + 2880]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00205_n19_α
 xchain00205_n16_β:
 jmp xchain00205_n22_α
# IR_DEREF variable -> value
 xchain00205_n17_α:
 mov rdi, qword ptr [r12 + 3264]
 mov rsi, qword ptr [r12 + 3272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00205_n18_α
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain00205_n20_α
 xchain00205_n17_β:
 jmp xchain00205_n18_α
# IR_LIT_STRING
 xchain00205_n18_α:
 mov qword ptr [r12 + 3120], 1
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 3128], rax
 jmp xchain00205_n21_α
 xchain00205_n18_β:
 jmp xchain00205_n8_α
.Lx00211_0:
 .quad .Lx00211_0_s
.Lx00211_0_s:
 .string "can't open "
 xchain00205_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain00205_n22_α
 xchain00205_n19_β:
 jmp xchain00205_n22_α
 xchain00205_n20_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3280] -> [r12+3216]
 mov rax, qword ptr [r12 + 3280]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn804: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn804]
 lea rsi, [r12 + 3216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je xchain00205_n18_α
 jmp xchain00205_n23_α
 xchain00205_n20_β:
 jmp xchain00205_n18_α
# IR_VAR_REF local
 xchain00205_n21_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain00205_n24_α
 xchain00205_n21_β:
 jmp xchain00205_n8_α
 xchain00205_n22_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn808: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn808]
 lea rsi, [r12 + 2848]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain00205_n26_α
 jmp xchain00205_n25_α
 xchain00205_n22_β:
 jmp xchain00205_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n23_α:
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3048], rax
 lea rax, [rip + xchain00205_n18_α]
 mov qword ptr [r12 + 3056], rax
 jmp xchain00205_n27_α
 xchain00205_n23_β:
 jmp xchain00205_n8_α
# IR_LIT_INTEGER
 xchain00205_n24_α:
 mov qword ptr [r12 + 3152], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain00205_n29_α
 xchain00205_n24_β:
 jmp xchain00205_n8_α
.Lx00212_0:
 .quad 1
# IR_ASSIGN gva
 xchain00205_n25_α:
 mov rax, qword ptr [r12 + 2832]
 mov rdx, qword ptr [r12 + 2840]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00205_n26_α
 xchain00205_n25_β:
 jmp xchain00205_n26_α
# IR_VAR
 xchain00205_n26_α:
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00205_n30_α
 xchain00205_n26_β:
 jmp xchain00205_n31_α
 xchain00205_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3040]
 mov rdx, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00205_n32_α
 xchain00205_n27_β:
 jmp xchain00205_n8_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00205_n28_α:
 jmp qword ptr [r12 + 3056]
 xchain00205_n28_β:
 jmp xchain00205_n8_α
# IR_SUBSCRIPT x[i] variable
 xchain00205_n29_α:
 mov rdi, qword ptr [r12 + 3136]
 mov rsi, qword ptr [r12 + 3144]
 mov rdx, qword ptr [r12 + 3152]
 mov rcx, qword ptr [r12 + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00205_n8_α
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 jmp xchain00205_n33_α
 xchain00205_n29_β:
 jmp xchain00205_n8_α
# IR_FIELD_GET
 xchain00205_n30_α:
 mov rdi, qword ptr [rip + .Lx00213_0]
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n31_α
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain00205_n34_α
 xchain00205_n30_β:
 jmp xchain00205_n31_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "ind"
# IR_VAR
 xchain00205_n31_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 2440], rax
 jmp xchain00205_n35_α
 xchain00205_n31_β:
 jmp xchain00205_n36_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n32_α:
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3000], rax
 lea rax, [rip + xchain00205_n28_α]
 mov qword ptr [r12 + 3008], rax
 jmp xchain00205_n8_α
 xchain00205_n32_β:
 jmp xchain00205_n8_α
# IR_DEREF variable -> value
 xchain00205_n33_α:
 mov rdi, qword ptr [r12 + 3168]
 mov rsi, qword ptr [r12 + 3176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00205_n8_α
 mov qword ptr [r12 + 3184], rax
 mov qword ptr [r12 + 3192], rdx
 jmp xchain00205_n37_α
 xchain00205_n33_β:
 jmp xchain00205_n8_α
# IR_LIST_BANG
 xchain00205_n34_α:
 mov qword ptr [r12 + 2496], 0
.Lx00214_0:
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 mov rdx, qword ptr [r12 + 2496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp rax, 99
 je xchain00205_n31_α
 jmp xchain00205_n38_α
 xchain00205_n34_β:
 inc qword ptr [r12 + 2496]
 jmp .Lx00214_0
# IR_LIT_INTEGER
 xchain00205_n35_α:
 mov qword ptr [r12 + 2448], 6
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00205_n39_α
 xchain00205_n35_β:
 jmp xchain00205_n36_α
.Lx00215_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00205_n36_α:
 mov qword ptr [r12 + 2352], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00205_n40_α
 xchain00205_n36_β:
 jmp xchain00205_n44_α
.Lx00216_0:
 .quad 0
 xchain00205_n37_α:
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
  .Lrkfn830: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn830]
 lea rsi, [r12 + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain00205_n8_α
 jmp xchain00205_n41_α
 xchain00205_n37_β:
 jmp xchain00205_n8_α
 xchain00205_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00205_n42_α
 xchain00205_n38_β:
 jmp xchain00205_n31_α
 xchain00205_n39_α:
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
  .Lrkfn833: .string "sortf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn833]
 lea rsi, [r12 + 2400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain00205_n36_α
 jmp xchain00205_n43_α
 xchain00205_n39_β:
 jmp xchain00205_n36_α
 xchain00205_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2352]
 mov rdx, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00205_n44_α
 xchain00205_n40_β:
 jmp xchain00205_n44_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n41_α:
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3048], rax
 lea rax, [rip + xchain00205_n8_α]
 mov qword ptr [r12 + 3056], rax
 jmp xchain00205_n27_α
 xchain00205_n41_β:
 jmp xchain00205_n8_α
# IR_VAR
 xchain00205_n42_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00205_n45_α
 xchain00205_n42_β:
 jmp xchain00205_n34_β
 xchain00205_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain00205_n36_α
 xchain00205_n43_β:
 jmp xchain00205_n36_α
# IR_VAR
 xchain00205_n44_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00205_n46_α
 xchain00205_n44_β:
 jmp xchain00205_n47_α
# IR_VAR_REF gva
 xchain00205_n45_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00205_n48_α
 xchain00205_n45_β:
 jmp xchain00205_n34_β
# IR_LIST_BANG
 xchain00205_n46_α:
 mov qword ptr [r12 + 2224], 0
.Lx00217_0:
 mov rdi, qword ptr [r12 + 2240]
 mov rsi, qword ptr [r12 + 2248]
 mov rdx, qword ptr [r12 + 2224]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp rax, 99
 je xchain00205_n47_α
 jmp xchain00205_n49_α
 xchain00205_n46_β:
 inc qword ptr [r12 + 2224]
 jmp .Lx00217_0
# IR_VAR
 xchain00205_n47_α:
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 88], rax
 jmp xchain00205_n50_α
 xchain00205_n47_β:
 jmp main_ω
# IR_VAR
 xchain00205_n48_α:
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 2632], rax
 jmp xchain00205_n51_α
 xchain00205_n48_β:
 jmp xchain00205_n34_β
# IR_FIELD_GET lv
 xchain00205_n49_α:
 mov rdi, qword ptr [rip + .Lx00218_0]
 mov rsi, qword ptr [r12 + 2208]
 mov rdx, qword ptr [r12 + 2216]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00205_n47_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00205_n52_α
 xchain00205_n49_β:
 jmp xchain00205_n47_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "n"
# IR_LIST_BANG
 xchain00205_n50_α:
 mov qword ptr [r12 + 64], 0
.Lx00219_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00205_n53_α
 xchain00205_n50_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00219_0
# IR_SUBSCRIPT x[i] variable
 xchain00205_n51_α:
 mov rdi, qword ptr [r12 + 2608]
 mov rsi, qword ptr [r12 + 2616]
 mov rdx, qword ptr [r12 + 2624]
 mov rcx, qword ptr [r12 + 2632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00205_n34_β
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain00205_n54_α
 xchain00205_n51_β:
 jmp xchain00205_n34_β
# IR_VAR
 xchain00205_n52_α:
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00205_n55_α
 xchain00205_n52_β:
 jmp xchain00205_n46_β
 xchain00205_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00205_n56_α
 xchain00205_n53_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain00205_n54_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00205_n57_α
 xchain00205_n54_β:
 jmp xchain00205_n34_β
.Lx00220_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00205_n55_α:
 mov qword ptr [r12 + 2320], 6
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00205_n58_α
 xchain00205_n55_β:
 jmp xchain00205_n46_β
.Lx00221_0:
 .quad 1
 xchain00205_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn860: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn860]
 lea rsi, [r12 + 2192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain00205_n59_α
 jmp xchain00205_n59_α
 xchain00205_n56_β:
 jmp xchain00205_n59_α
# IR_VAR
 xchain00205_n57_α:
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 2792], rax
 jmp xchain00205_n60_α
 xchain00205_n57_β:
 jmp xchain00205_n34_β
 xchain00205_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 3504]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 3504]
 cmp eax, 6
 jne .Lx00222_2
 mov eax, dword ptr [r12 + 2320]
 cmp eax, 6
 jne .Lx00222_2
.Lx00222_1:
 mov rax, qword ptr [r12 + 3512]
 mov rcx, qword ptr [r12 + 2328]
 add rax, rcx
 mov qword ptr [r12 + 2288], 6
 mov qword ptr [r12 + 2296], rax
 jmp xchain00205_n61_α
.Lx00222_0:
 mov rdi, qword ptr [r12 + 3504]
 mov rsi, qword ptr [r12 + 3512]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 0
 lea r9, [r12 + 2288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00222_3
.Lx00222_2:
 mov rdi, qword ptr [r12 + 3504]
 mov rsi, qword ptr [r12 + 3512]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00205_n46_β
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
.Lx00222_3:
 jmp xchain00205_n61_α
 xchain00205_n58_β:
 jmp xchain00205_n46_β
# IR_LIT_STRING
 xchain00205_n59_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00205_n62_α
 xchain00205_n59_β:
 jmp xchain00205_n66_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "["
 xchain00205_n60_α:
  .section .rodata
  .Lcall00224_pname: .string "sortkey"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2784]
 mov rdx, qword ptr [r12 + 2792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00224_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain00205_n34_β
 jmp xchain00205_n63_α
xchain00205_n60_β:
 jmp xchain00205_n34_β
 xchain00205_n61_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00205_n64_α
 xchain00205_n61_β:
 jmp xchain00205_n46_β
# IR_VAR
 xchain00205_n62_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00205_n65_α
 xchain00205_n62_β:
 jmp xchain00205_n66_α
# IR_VAR
 xchain00205_n63_α:
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00205_n67_α
 xchain00205_n63_β:
 jmp xchain00205_n34_β
# IR_ASSIGN_VAR write through variable
 xchain00205_n64_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00205_n47_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00205_n46_β
 xchain00205_n64_β:
 jmp xchain00205_n47_α
# IR_FIELD_GET
 xchain00205_n65_α:
 mov rdi, qword ptr [rip + .Lx00225_0]
 mov rsi, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n66_α
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00205_n68_α
 xchain00205_n65_β:
 jmp xchain00205_n66_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "n"
# IR_VAR
 xchain00205_n66_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00205_n69_α
 xchain00205_n66_β:
 jmp xchain00205_n70_α
 xchain00205_n67_α:
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
  .Lrkfn876: .string "person"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn876]
 lea rsi, [r12 + 2688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain00205_n34_β
 jmp xchain00205_n71_α
 xchain00205_n67_β:
 jmp xchain00205_n34_β
# IR_LIT_STRING
 xchain00205_n68_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00205_n72_α
 xchain00205_n68_β:
 jmp xchain00205_n66_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "] "
# IR_FIELD_GET
 xchain00205_n69_α:
 mov rdi, qword ptr [rip + .Lx00227_0]
 mov rsi, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n70_α
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00205_n73_α
 xchain00205_n69_β:
 jmp xchain00205_n70_α
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00205_n70_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain00205_n74_α
 xchain00205_n70_β:
 jmp xchain00205_n79_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "b."
# IR_ASSIGN_VAR write through variable
 xchain00205_n71_α:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00205_n34_β
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain00205_n75_α
 xchain00205_n71_β:
 jmp xchain00205_n34_β
# IR_VAR
 xchain00205_n72_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00205_n76_α
 xchain00205_n72_β:
 jmp xchain00205_n66_α
# IR_LIT_STRING
 xchain00205_n73_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain00205_n77_α
 xchain00205_n73_β:
 jmp xchain00205_n70_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "FAMC"
# IR_VAR
 xchain00205_n74_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00205_n78_α
 xchain00205_n74_β:
 jmp xchain00205_n79_α
 xchain00205_n75_α:
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
  .Lrkfn887: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn887]
 lea rsi, [r12 + 2560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain00205_n34_β
 jmp xchain00205_n34_β
 xchain00205_n75_β:
 jmp xchain00205_n34_β
# IR_FIELD_GET
 xchain00205_n76_α:
 mov rdi, qword ptr [rip + .Lx00230_0]
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n66_α
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00205_n80_α
 xchain00205_n76_β:
 jmp xchain00205_n66_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "r"
 xchain00205_n77_α:
  .section .rodata
  .Lcall00231_pname: .string "gedref"
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
   lea rdi, [rip + .Lcall00231_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain00205_n70_α
 jmp xchain00205_n81_α
xchain00205_n77_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain00205_n70_α
 jmp xchain00205_n81_α
# IR_FIELD_GET
 xchain00205_n78_α:
 mov rdi, qword ptr [rip + .Lx00232_0]
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n79_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00205_n82_α
 xchain00205_n78_β:
 jmp xchain00205_n79_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "r"
# IR_KEYWORD_null
 xchain00205_n79_α:
 mov qword ptr [r12 + 1472], 0
 mov qword ptr [r12 + 1480], 0
 jmp xchain00205_n83_α
 xchain00205_n79_β:
 jmp xchain00205_n87_α
 xchain00205_n80_α:
  .section .rodata
  .Lcall00124_pname: .string "gedlnf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00124_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain00205_n66_α
 jmp xchain00205_n84_α
xchain00205_n80_β:
 jmp xchain00205_n66_α
 xchain00205_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00205_n85_α
 xchain00205_n81_β:
 jmp xchain00205_n70_α
# IR_LIT_STRING
 xchain00205_n82_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00205_n86_α
 xchain00205_n82_β:
 jmp xchain00205_n79_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "BIRT"
 xchain00205_n83_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00205_n87_α
 xchain00205_n83_β:
 jmp xchain00205_n87_α
 xchain00205_n84_α:
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
  .Lrkfn897: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn897]
 lea rsi, [r12 + 1984]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00205_n66_α
 jmp xchain00205_n66_α
 xchain00205_n84_β:
 jmp xchain00205_n66_α
# IR_LIT_STRING
 xchain00205_n85_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00205_n88_α
 xchain00205_n85_β:
 jmp xchain00205_n93_α
.Lx00234_0:
 .quad .Lx00234_0_s
.Lx00234_0_s:
 .string "father"
 xchain00205_n86_α:
  .section .rodata
  .Lcall00235_pname: .string "gedsub"
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
   lea rdi, [rip + .Lcall00235_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain00205_n79_α
 jmp xchain00205_n89_α
xchain00205_n86_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain00205_n79_α
 jmp xchain00205_n89_α
# IR_VAR
 xchain00205_n87_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 280], rax
 jmp xchain00205_n90_α
 xchain00205_n87_β:
 jmp xchain00205_n91_α
# IR_VAR
 xchain00205_n88_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00205_n92_α
 xchain00205_n88_β:
 jmp xchain00205_n93_α
 xchain00205_n89_α:
  .section .rodata
  .Lcall00236_pname: .string "event"
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
   lea rdi, [rip + .Lcall00236_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain00205_n79_α
 jmp xchain00205_n79_α
xchain00205_n89_β:
 jmp xchain00205_n79_α
# IR_FIELD_GET
 xchain00205_n90_α:
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n91_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00205_n94_α
 xchain00205_n90_β:
 jmp xchain00205_n91_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00205_n91_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00205_n95_α
 xchain00205_n91_β:
 jmp xchain00205_n50_β
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "d."
# IR_LIT_STRING
 xchain00205_n92_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00205_n96_α
 xchain00205_n92_β:
 jmp xchain00205_n93_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "HUSB"
# IR_LIT_STRING
 xchain00205_n93_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00205_n97_α
 xchain00205_n93_β:
 jmp xchain00205_n70_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "mother"
# IR_LIT_STRING
 xchain00205_n94_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00205_n98_α
 xchain00205_n94_β:
 jmp xchain00205_n91_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "FAMS"
# IR_VAR
 xchain00205_n95_α:
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 200], rax
 jmp xchain00205_n99_α
 xchain00205_n95_β:
 jmp xchain00205_n50_β
 xchain00205_n96_α:
  .section .rodata
  .Lcall00128_pname: .string "gedref"
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
   lea rdi, [rip + .Lcall00128_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain00205_n93_α
 jmp xchain00205_n00022_α
xchain00205_n96_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain00205_n93_α
 jmp xchain00205_n00022_α
# IR_VAR
 xchain00205_n97_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00205_n00024_α
 xchain00205_n97_β:
 jmp xchain00205_n70_α
 xchain00205_n98_α:
  .section .rodata
  .Lcall00242_pname: .string "gedref"
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
   lea rdi, [rip + .Lcall00242_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00205_n91_α
 jmp xchain00205_n00025_α
xchain00205_n98_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00205_n91_α
 jmp xchain00205_n00025_α
# IR_FIELD_GET
 xchain00205_n99_α:
 mov rdi, qword ptr [rip + .Lx00243_0]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00205_n50_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00205_n00026_α
 xchain00205_n99_β:
 jmp xchain00205_n50_β
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "r"
 xchain00205_n00022_α:
  .section .rodata
  .Lcall00129_pname: .string "refto"
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
   lea rdi, [rip + .Lcall00129_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain00205_n93_α
 jmp xchain00205_n93_α
xchain00205_n00022_β:
 jmp xchain00205_n93_α
# IR_LIT_STRING
 xchain00205_n00024_α:
 mov qword ptr [r12 + 1760], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00205_n00027_α
 xchain00205_n00024_β:
 jmp xchain00205_n70_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "WIFE"
 xchain00205_n00025_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00205_n00028_α
 xchain00205_n00025_β:
 jmp xchain00205_n91_α
# IR_LIT_STRING
 xchain00205_n00026_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00205_n00029_α
 xchain00205_n00026_β:
 jmp xchain00205_n50_β
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "DEAT"
 xchain00205_n00027_α:
  .section .rodata
  .Lcall00130_pname: .string "gedref"
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
   lea rdi, [rip + .Lcall00130_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00205_n70_α
 jmp xchain00205_n00030_α
xchain00205_n00027_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00205_n70_α
 jmp xchain00205_n00030_α
# IR_LIT_STRING
 xchain00205_n00028_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00205_n00031_α
 xchain00205_n00028_β:
 jmp xchain00205_n00159_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "m."
 xchain00205_n00029_α:
  .section .rodata
  .Lcall00132_pname: .string "gedsub"
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
   lea rdi, [rip + .Lcall00132_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00205_n50_β
 jmp xchain00205_n00032_α
xchain00205_n00029_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00205_n50_β
 jmp xchain00205_n00032_α
 xchain00205_n00030_α:
  .section .rodata
  .Lcall00247_pname: .string "refto"
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
   lea rdi, [rip + .Lcall00247_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain00205_n70_α
 jmp xchain00205_n00001_α
xchain00205_n00030_β:
 jmp xchain00205_n70_α
# IR_VAR
 xchain00205_n00031_α:
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00205_n00156_α
 xchain00205_n00031_β:
 jmp xchain00205_n00159_α
 xchain00205_n00032_α:
  .section .rodata
  .Lcall00248_pname: .string "event"
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
   lea rdi, [rip + .Lcall00248_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00205_n50_β
 jmp xchain00205_n00160_α
xchain00205_n00032_β:
 jmp xchain00205_n50_β
 xchain00205_n00001_α:
 jmp xchain00205_n00163_α
xchain00205_n00001_β:
 jmp xchain00205_n70_α
# IR_LIT_STRING
 xchain00205_n00156_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00205_n00164_α
 xchain00205_n00156_β:
 jmp xchain00205_n00159_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "MARR"
# IR_LIT_STRING
 xchain00205_n00159_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00205_n00161_α
 xchain00205_n00159_β:
 jmp xchain00205_n00161_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "  husb"
 xchain00205_n00160_α:
 jmp xchain00205_n50_β
xchain00205_n00160_β:
 jmp xchain00205_n50_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n00163_α:
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
 lea rax, [rip + xchain00205_n00027_β]
 mov qword ptr [r12 + 1648], rax
 jmp xchain00205_n70_α
 xchain00205_n00163_β:
 jmp xchain00205_n70_α
 xchain00205_n00164_α:
  .section .rodata
  .Lcall00251_pname: .string "gedsub"
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
   lea rdi, [rip + .Lcall00251_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00205_n00159_α
 jmp xchain00205_n00167_α
xchain00205_n00164_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain00205_n00159_α
 jmp xchain00205_n00167_α
# IR_LIT_STRING
 xchain00205_n00161_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00205_n00170_α
 xchain00205_n00161_β:
 jmp xchain00205_n00170_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "  wife"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00205_n00166_α:
 jmp qword ptr [r12 + 1648]
 xchain00205_n00166_β:
 jmp xchain00205_n70_α
 xchain00205_n00167_α:
  .section .rodata
  .Lcall00253_pname: .string "event"
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
   lea rdi, [rip + .Lcall00253_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain00205_n00159_α
 jmp xchain00205_n00171_α
xchain00205_n00167_β:
 jmp xchain00205_n00159_α
# IR_VAR
 xchain00205_n00170_α:
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00205_n00168_α
 xchain00205_n00170_β:
 jmp main_γ
 xchain00205_n00171_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00205_n00159_α
 xchain00205_n00171_β:
 jmp xchain00205_n00159_α
# IR_UNOP
 xchain00205_n00168_α:
 mov eax, dword ptr [r12 + 3472]
 cmp eax, 99
 je main_γ
 cmp eax, 0
 je main_γ
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00205_n00173_α
 xchain00205_n00168_β:
 jmp main_γ
# IR_LIT_STRING
 xchain00205_n00173_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00205_n00174_α
 xchain00205_n00173_β:
 jmp main_γ
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "   m."
 xchain00205_n00174_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1072]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn945: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn945]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je main_γ
 jmp xchain00205_n00176_α
 xchain00205_n00174_β:
 jmp main_γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00205_n00176_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 lea rax, [rip + main_γ]
 mov qword ptr [r12 + 1040], rax
 jmp main_γ
 xchain00205_n00176_β:
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00205_n00177_α:
 jmp qword ptr [r12 + 1040]
 xchain00205_n00177_β:
 jmp main_γ
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 3408]
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
pop r12
ret
