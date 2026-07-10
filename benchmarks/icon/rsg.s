  .intel_syntax noprefix
  .text
  .globl proc_alts_α
proc_alts_α:
#=======================================================================================================================
    .global proc_alts_α
    .global proc_alts_β
    .global proc_alts_γ
    .global proc_alts_ω
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
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_alts_α_body:
# IR_MAKE_LIST
 xchain0_n0_α:
 lea rdi, [r12 + 464]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
# IR_GEN_SCAN
 xchain0_n3_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_alts_ω
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n10_α
# IR_RETURN
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_alts_γ
# IR_LIT_CHARSET
 xchain0_n7_α:
 mov qword ptr [r12 + 320], 1
 mov dword ptr [r12 + 324], -1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n13_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "|"
 xchain0_n8_α:
 jmp xchain0_n10_α
xchain0_n8_β:
 jmp xchain0_n10_α
# IR_SCAN_UPTO
 xchain0_n9_α:
 mov qword ptr [r12 + 304], r14
.Lx16_0:
 mov rax, qword ptr [r12 + 304]
 cmp rax, r15
 jge xchain0_n13_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx16_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx16_1
 mov qword ptr [r12 + 288], 6
 add rax, 1
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n11_α
.Lx16_1:
 inc qword ptr [r12 + 304]
 jmp .Lx16_0
 xchain0_n9_β:
 inc qword ptr [r12 + 304]
 jmp .Lx16_0
.Lx16_2:
 .quad .Lx16_2_s
.Lx16_2_s:
 .string "|"
# IR_GEN_SCAN
 xchain0_n10_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain0_n4_α
 xchain0_n10_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain0_n13_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n10_α
# IR_SCAN_TAB
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 248]
 cmp rax, 1
 jge .Lx22_0
 add rax, r15
 add rax, 1
.Lx22_0:
 cmp rax, 1
 jl xchain0_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n10_α
 mov qword ptr [r12 + 224], r14
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
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 mov r14, qword ptr [r12 + 224]
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n10_α
.Lx23_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n14_α:
 jmp qword ptr [r12 + 256]
 xchain0_n14_β:
 jmp xchain0_n10_α
 xchain0_n15_α:
  .section .rodata
  .Lcall16_pname: .string "syms"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall16_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n17_α
xchain0_n15_β:
 jmp xchain0_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n16_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain0_n8_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain0_n12_α
 xchain0_n16_β:
 jmp xchain0_n10_α
 xchain0_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn30: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n10_α
.Lx31_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain0_n19_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain0_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n10_α
 mov qword ptr [r12 + 384], r14
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
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 mov r14, qword ptr [r12 + 384]
 jmp xchain0_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n20_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
 lea rax, [rip + xchain0_n21_α]
 mov qword ptr [r12 + 352], rax
 jmp xchain0_n5_α
 xchain0_n20_β:
 jmp xchain0_n5_α
 xchain0_n21_α:
 jmp xchain0_n10_α
xchain0_n21_β:
 jmp xchain0_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n22_α:
 jmp qword ptr [r12 + 352]
 xchain0_n22_β:
 jmp xchain0_n5_α
proc_alts_β:
jmp proc_alts_ω
proc_alts_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 464]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_alts_ω:
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
  .globl proc_comment_α
proc_comment_α:
#=======================================================================================================================
    .global proc_comment_α
    .global proc_comment_β
    .global proc_comment_γ
    .global proc_comment_ω
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
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_comment_α_body:
# IR_VAR_REF
 xchain39_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain39_n1_α
 xchain39_n0_β:
 jmp proc_comment_ω
# IR_LIT_INTEGER
 xchain39_n1_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain39_n2_α
 xchain39_n1_β:
 jmp proc_comment_ω
.Lx42_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain39_n2_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain39_n3_α
 xchain39_n2_β:
 jmp proc_comment_ω
# IR_DEREF variable -> value
 xchain39_n3_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_deref@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain39_n4_α
 xchain39_n3_β:
 jmp proc_comment_ω
# IR_LIT_STRING
 xchain39_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain39_n5_α
 xchain39_n4_β:
 jmp proc_comment_ω
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "#"
 xchain39_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_comment_ω
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain39_n6_α
 xchain39_n5_β:
 jmp proc_comment_ω
# IR_RETURN
 xchain39_n6_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_comment_γ
proc_comment_β:
jmp proc_comment_ω
proc_comment_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 160]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_comment_ω:
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
  .globl proc_define_α
proc_define_α:
#=======================================================================================================================
    .global proc_define_α
    .global proc_define_β
    .global proc_define_γ
    .global proc_define_ω
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_define_α_body:
# IR_VAR
 xchain48_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain48_n1_α
 xchain48_n0_β:
 jmp proc_define_ω
# IR_GEN_SCAN
 xchain48_n1_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain48_n2_α
 xchain48_n1_β:
 jmp proc_define_ω
# IR_VAR_REF
 xchain48_n2_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain48_n3_α
 xchain48_n2_β:
 jmp xchain48_n10_α
# IR_LIT_STRING
 xchain48_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain48_n4_α
 xchain48_n3_β:
 jmp xchain48_n6_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain48_n4_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain48_n6_α
 mov rdi, qword ptr [rip + .Lx57_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain48_n6_α
 mov qword ptr [r12 + 224], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 232], rax
 jmp xchain48_n5_α
 xchain48_n4_β:
 jmp xchain48_n6_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain48_n5_α:
 mov rax, qword ptr [r12 + 232]
 cmp rax, 1
 jge .Lx59_0
 add rax, r15
 add rax, 1
.Lx59_0:
 cmp rax, 1
 jl xchain48_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain48_n6_α
 mov qword ptr [r12 + 208], r14
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
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain48_n6_α
 xchain48_n5_β:
 mov r14, qword ptr [r12 + 208]
 jmp xchain48_n6_α
# IR_LIT_STRING
 xchain48_n6_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain48_n7_α
 xchain48_n6_β:
 jmp xchain48_n10_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string ">::="
# IR_SCAN_FIND
 xchain48_n7_α:
 mov qword ptr [r12 + 160], r14
.Lx62_0:
 mov rax, qword ptr [r12 + 160]
 mov rcx, r15
 sub rcx, 4
 cmp rax, rcx
 jg xchain48_n10_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx62_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx62_1
 mov rcx, rax
 add rcx, 2
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx62_1
 mov rcx, rax
 add rcx, 3
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 61
 jne .Lx62_1
 mov qword ptr [r12 + 144], 6
 add rax, 1
 mov qword ptr [r12 + 152], rax
 jmp xchain48_n8_α
.Lx62_1:
 inc qword ptr [r12 + 160]
 jmp .Lx62_0
 xchain48_n7_β:
 inc qword ptr [r12 + 160]
 jmp .Lx62_0
# IR_SCAN_TAB
 xchain48_n8_α:
 mov rax, qword ptr [r12 + 152]
 cmp rax, 1
 jge .Lx64_0
 add rax, r15
 add rax, 1
.Lx64_0:
 cmp rax, 1
 jl xchain48_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain48_n10_α
 mov qword ptr [r12 + 128], r14
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
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain48_n9_α
 xchain48_n8_β:
 mov r14, qword ptr [r12 + 128]
 jmp xchain48_n10_α
 xchain48_n9_α:
 jmp xchain48_n11_α
xchain48_n9_β:
 jmp xchain48_n10_α
# IR_GEN_SCAN
 xchain48_n10_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_define_ω
 xchain48_n10_β:
 jmp proc_define_ω
# IR_SUBSCRIPT x[i] variable
 xchain48_n11_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain48_n10_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain48_n12_α
 xchain48_n11_β:
 jmp xchain48_n10_α
# IR_LIT_INTEGER
 xchain48_n12_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain48_n13_α
 xchain48_n12_β:
 jmp xchain48_n14_α
.Lx69_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain48_n13_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain48_n14_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain48_n14_α
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
 jmp xchain48_n14_α
 xchain48_n13_β:
 mov r14, qword ptr [r12 + 400]
 jmp xchain48_n14_α
# IR_LIT_INTEGER
 xchain48_n14_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain48_n15_α
 xchain48_n14_β:
 jmp xchain48_n10_α
.Lx72_0:
 .quad 0
# IR_SCAN_TAB
 xchain48_n15_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx74_0
 add rax, r15
 add rax, 1
.Lx74_0:
 cmp rax, 1
 jl xchain48_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain48_n10_α
 mov qword ptr [r12 + 352], r14
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
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain48_n16_α
 xchain48_n15_β:
 mov r14, qword ptr [r12 + 352]
 jmp xchain48_n10_α
 xchain48_n16_α:
  .section .rodata
  .Lcall47_pname: .string "alts"
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
 je xchain48_n10_α
 jmp xchain48_n17_α
xchain48_n16_β:
 jmp xchain48_n10_α
 xchain48_n17_α:
 jmp xchain48_n18_α
xchain48_n17_β:
 jmp xchain48_n10_α
# IR_ASSIGN_VAR
 xchain48_n18_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain48_n10_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain48_n19_α
 xchain48_n18_β:
 jmp xchain48_n10_α
# IR_GEN_SCAN
 xchain48_n19_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 72], rax
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp xchain48_n20_α
 xchain48_n19_β:
 jmp proc_define_ω
# IR_RETURN
 xchain48_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_define_γ
proc_define_β:
jmp proc_define_ω
proc_define_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_define_ω:
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
  .globl proc_defnon_α
proc_defnon_α:
#=======================================================================================================================
    .global proc_defnon_α
    .global proc_defnon_β
    .global proc_defnon_γ
    .global proc_defnon_ω
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
 mov qword ptr [r12 + 496], rax
 pop rsi
proc_defnon_α_body:
# IR_VAR
 xchain81_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain81_n1_α
 xchain81_n0_β:
 jmp xchain81_n2_α
# IR_GEN_SCAN
 xchain81_n1_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain81_n3_α
 xchain81_n1_β:
 jmp xchain81_n2_α
# IR_VAR
 xchain81_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain81_n4_α
 xchain81_n2_β:
 jmp proc_defnon_ω
# IR_LIT_STRING
 xchain81_n3_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain81_n5_α
 xchain81_n3_β:
 jmp xchain81_n8_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "'"
 xchain81_n4_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn90: .string "nonterm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain81_n6_α
 xchain81_n4_β:
 jmp proc_defnon_ω
# IR_SCAN_MATCH
 xchain81_n5_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain81_n8_α
 mov rdi, qword ptr [rip + .Lx92_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain81_n8_α
 mov qword ptr [r12 + 432], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 440], rax
 jmp xchain81_n7_α
 xchain81_n5_β:
 jmp xchain81_n8_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "'"
# IR_RETURN
 xchain81_n6_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_defnon_γ
# IR_SCAN_TAB
 xchain81_n7_α:
 mov rax, qword ptr [r12 + 440]
 cmp rax, 1
 jge .Lx95_0
 add rax, r15
 add rax, 1
.Lx95_0:
 cmp rax, 1
 jl xchain81_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n8_α
 mov qword ptr [r12 + 416], r14
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
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain81_n9_α
 xchain81_n7_β:
 mov r14, qword ptr [r12 + 416]
 jmp xchain81_n8_α
# IR_GEN_SCAN
 xchain81_n8_α:
 lea rdi, [r12 + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 160]
 mov r14, qword ptr [r12 + 168]
 mov r15, qword ptr [r12 + 176]
 jmp xchain81_n2_α
 xchain81_n8_β:
 jmp xchain81_n2_α
# IR_LIT_INTEGER
 xchain81_n9_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain81_n10_α
 xchain81_n9_β:
 jmp xchain81_n8_α
.Lx98_0:
 .quad 18446744073709551615
# IR_SCAN_TAB
 xchain81_n10_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00001_0
 add rax, r15
 add rax, 1
.Lx00001_0:
 cmp rax, 1
 jl xchain81_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n8_α
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
 jmp xchain81_n11_α
 xchain81_n10_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain81_n8_α
 xchain81_n11_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn102: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain81_n8_α
 jmp xchain81_n12_α
 xchain81_n11_β:
 jmp xchain81_n8_α
 xchain81_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain81_n13_α
 xchain81_n12_β:
 jmp xchain81_n8_α
# IR_LIT_STRING
 xchain81_n13_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain81_n14_α
 xchain81_n13_β:
 jmp xchain81_n8_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "'"
# IR_SCAN_MATCH
 xchain81_n14_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain81_n8_α
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain81_n8_α
 mov qword ptr [r12 + 256], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 264], rax
 jmp xchain81_n15_α
 xchain81_n14_β:
 jmp xchain81_n8_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "'"
# IR_SCAN_TAB
 xchain81_n15_α:
 mov rax, qword ptr [r12 + 264]
 cmp rax, 1
 jge .Lx00004_0
 add rax, r15
 add rax, 1
.Lx00004_0:
 cmp rax, 1
 jl xchain81_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n8_α
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
 jmp xchain81_n16_α
 xchain81_n15_β:
 mov r14, qword ptr [r12 + 240]
 jmp xchain81_n8_α
 xchain81_n16_α:
 jmp xchain81_n17_α
xchain81_n16_β:
 jmp xchain81_n8_α
# IR_GEN_SCAN
 xchain81_n17_α:
 lea rdi, [r12 + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 160]
 mov r14, qword ptr [r12 + 168]
 mov r15, qword ptr [r12 + 176]
 jmp xchain81_n18_α
 xchain81_n17_β:
 jmp xchain81_n2_α
# IR_VAR
 xchain81_n18_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 104], rax
 jmp xchain81_n19_α
 xchain81_n18_β:
 jmp proc_defnon_ω
 xchain81_n19_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn115: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain81_n20_α
 xchain81_n19_β:
 jmp proc_defnon_ω
# IR_RETURN
 xchain81_n20_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_defnon_γ
proc_defnon_β:
jmp proc_defnon_ω
proc_defnon_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 496]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_defnon_ω:
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
  .globl proc_error_α
proc_error_α:
#=======================================================================================================================
    .global proc_error_α
    .global proc_error_β
    .global proc_error_γ
    .global proc_error_ω
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
 mov qword ptr [r12 + 112], rax
 pop rsi
proc_error_α_body:
# IR_LIT_STRING
 xchain00005_n0_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00005_n1_α
 xchain00005_n0_β:
 jmp xchain00005_n3_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "*** erroneous line:  "
# IR_VAR
 xchain00005_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00005_n2_α
 xchain00005_n1_β:
 jmp xchain00005_n3_α
 xchain00005_n2_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [zr+96] -> [zr+64]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn122: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00005_n3_α
 jmp xchain00005_n3_α
 xchain00005_n2_β:
 jmp xchain00005_n3_α
# IR_RETURN
 xchain00005_n3_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_error_γ
proc_error_β:
jmp proc_error_ω
proc_error_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 112]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_error_ω:
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
  .globl proc_gener_α
proc_gener_α:
#=======================================================================================================================
    .global proc_gener_α
    .global proc_gener_β
    .global proc_gener_γ
    .global proc_gener_ω
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
 mov qword ptr [r12 + 1504], rax
 pop rsi
proc_gener_α_body:
# IR_VAR
 xchain00007_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00007_n1_α
 xchain00007_n0_β:
 jmp xchain00007_n2_α
 xchain00007_n1_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn128: .string "nonterm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n3_α
 xchain00007_n1_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n2_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 104], rax
 jmp xchain00007_n4_α
 xchain00007_n2_β:
 jmp xchain00007_n5_α
# IR_MAKE_LIST
 xchain00007_n3_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1448], rax
 lea rdi, [r12 + 1440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00007_n6_α
 xchain00007_n3_β:
 jmp xchain00007_n2_α
 xchain00007_n4_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn134: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn134]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n7_α
 xchain00007_n4_β:
 jmp xchain00007_n5_α
 xchain00007_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn136: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_gener_ω
 jmp proc_gener_γ
 xchain00007_n5_β:
 jmp proc_gener_ω
 xchain00007_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00007_n2_α
 xchain00007_n6_β:
 jmp xchain00007_n2_α
 xchain00007_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00007_n8_α
 xchain00007_n7_β:
 jmp xchain00007_n5_α
# IR_VAR
 xchain00007_n8_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00007_n9_α
 xchain00007_n8_β:
 jmp xchain00007_n10_α
# IR_UNOP
 xchain00007_n9_α:
 mov eax, dword ptr [r12 + 1392]
 cmp eax, 99
 je xchain00007_n10_α
 cmp eax, 0
 je xchain00007_n10_α
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00007_n11_α
 xchain00007_n9_β:
 jmp xchain00007_n10_α
# IR_VAR
 xchain00007_n10_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 168], rax
 jmp xchain00007_n12_α
 xchain00007_n10_β:
 jmp xchain00007_n2_α
# IR_KEYWORD_read
 xchain00007_n11_α:
 mov rdi, qword ptr [rip + .Lx00008_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00007_n13_α
 xchain00007_n11_β:
 jmp xchain00007_n10_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "&errout"
 xchain00007_n12_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn145: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n14_α
 xchain00007_n12_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n13_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00007_n15_α
 xchain00007_n13_β:
 jmp xchain00007_n10_α
# IR_LIT_STRING
 xchain00007_n14_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00007_n16_α
 xchain00007_n14_β:
 jmp xchain00007_n2_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "string"
 xchain00007_n15_α:
  .section .rodata
  .Lcall92_pname: .string "symimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall92_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00007_n10_α
 jmp xchain00007_n17_α
xchain00007_n15_β:
 jmp xchain00007_n10_α
 xchain00007_n16_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+1120]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1136]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn151: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain00007_n19_α
 jmp xchain00007_n18_α
 xchain00007_n16_β:
 jmp xchain00007_n19_α
# IR_VAR
 xchain00007_n17_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00007_n20_α
 xchain00007_n17_β:
 jmp xchain00007_n10_α
# IR_VAR
 xchain00007_n18_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00007_n21_α
 xchain00007_n18_β:
 jmp xchain00007_n2_α
# IR_LIT_STRING
 xchain00007_n19_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00007_n22_α
 xchain00007_n19_β:
 jmp xchain00007_n2_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "charset"
 xchain00007_n20_α:
  .section .rodata
  .Lcall97_pname: .string "listimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall97_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00007_n10_α
 jmp xchain00007_n23_α
xchain00007_n20_β:
 jmp xchain00007_n10_α
 xchain00007_n21_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1056]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn159: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n24_α
 xchain00007_n21_β:
 jmp xchain00007_n2_α
 xchain00007_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+992]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+1008]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn161: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain00007_n26_α
 jmp xchain00007_n25_α
 xchain00007_n22_β:
 jmp xchain00007_n26_α
 xchain00007_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1224], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1232]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn163: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain00007_n10_α
 jmp xchain00007_n27_α
 xchain00007_n23_β:
 jmp xchain00007_n10_α
 xchain00007_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00007_n28_α
 xchain00007_n24_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n25_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 936], rax
 jmp xchain00007_n29_α
 xchain00007_n25_β:
 jmp xchain00007_n2_α
# IR_LIT_STRING
 xchain00007_n26_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00007_n30_α
 xchain00007_n26_β:
 jmp xchain00007_n2_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "nonterm"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00007_n27_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00007_n10_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00007_n10_α
 xchain00007_n27_β:
 jmp xchain00007_n10_α
# IR_VAR
 xchain00007_n28_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 120], rax
 jmp xchain00007_n32_α
 xchain00007_n28_β:
 jmp xchain00007_n2_α
# IR_FIELD_GET
 xchain00007_n29_α:
 mov rdi, qword ptr [rip + .Lx00012_0]
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00007_n33_α
 xchain00007_n29_β:
 jmp xchain00007_n2_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "chars"
 xchain00007_n30_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+816]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+832]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn174: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n34_α
 xchain00007_n30_β:
 jmp xchain00007_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00007_n31_α:
 jmp qword ptr [r12 + 1168]
 xchain00007_n31_β:
 jmp xchain00007_n10_α
 xchain00007_n32_α:
 jmp xchain00007_n2_α
xchain00007_n32_β:
 jmp xchain00007_n2_α
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00007_n33_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00007_n35_α
 xchain00007_n33_β:
 jmp xchain00007_n2_α
# IR_VAR_REF
 xchain00007_n34_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00007_n36_α
 xchain00007_n34_β:
 jmp xchain00007_n39_α
# IR_DEREF variable -> value
 xchain00007_n35_α:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00007_n37_α
 xchain00007_n35_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n36_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 712], rax
 jmp xchain00007_n38_α
 xchain00007_n36_β:
 jmp xchain00007_n39_α
 xchain00007_n37_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn185: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n40_α
 xchain00007_n37_β:
 jmp xchain00007_n2_α
# IR_FIELD_GET
 xchain00007_n38_α:
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n39_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00007_n41_α
 xchain00007_n38_β:
 jmp xchain00007_n39_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "name"
# IR_KEYWORD_read
 xchain00007_n39_α:
 mov rdi, qword ptr [rip + .Lx00014_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00007_n42_α
 xchain00007_n39_β:
 jmp xchain00007_n5_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "&errout"
 xchain00007_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00007_n28_α
 xchain00007_n40_β:
 jmp xchain00007_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00007_n41_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00007_n39_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00007_n43_α
 xchain00007_n41_β:
 jmp xchain00007_n39_α
# IR_LIT_STRING
 xchain00007_n42_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00007_n44_α
 xchain00007_n42_β:
 jmp xchain00007_n5_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "*** undefined nonterminal:  <"
# IR_DEREF variable -> value
 xchain00007_n43_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n39_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00007_n45_α
 xchain00007_n43_β:
 jmp xchain00007_n39_α
# IR_VAR
 xchain00007_n44_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 600], rax
 jmp xchain00007_n46_α
 xchain00007_n44_β:
 jmp xchain00007_n5_α
# IR_UNOP
 xchain00007_n45_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00007_n39_α
 cmp eax, 0
 je xchain00007_n39_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 664], rax
 jmp xchain00007_n48_α
 xchain00007_n45_β:
 jmp xchain00007_n39_α
# IR_FIELD_GET
 xchain00007_n46_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n5_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00007_n49_α
 xchain00007_n46_β:
 jmp xchain00007_n5_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "name"
 xchain00007_n47_α:
 jmp xchain00007_n5_α
xchain00007_n47_β:
 jmp xchain00007_n5_α
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00007_n48_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00007_n39_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00007_n50_α
 xchain00007_n48_β:
 jmp xchain00007_n39_α
# IR_LIT_STRING
 xchain00007_n49_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00007_n51_α
 xchain00007_n49_β:
 jmp xchain00007_n5_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string ">"
# IR_DEREF variable -> value
 xchain00007_n50_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n39_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00007_n52_α
 xchain00007_n50_β:
 jmp xchain00007_n39_α
 xchain00007_n51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+480]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+496]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 504], rax
# marshal arg3 = producer-box slot [zr+608] -> [zr+512]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn201: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 464]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n5_α
 xchain00007_n51_β:
 jmp xchain00007_n5_α
# IR_VAR
 xchain00007_n52_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 776], rax
 jmp xchain00007_n53_α
 xchain00007_n52_β:
 jmp xchain00007_n39_α
 xchain00007_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 call str_concat_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00007_n54_α
 xchain00007_n53_β:
 jmp xchain00007_n39_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00007_n54_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 424], rax
 lea rax, [rip + xchain00007_n39_α]
 mov qword ptr [r12 + 432], rax
 jmp xchain00007_n55_α
 xchain00007_n54_β:
 jmp xchain00007_n57_α
 xchain00007_n55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00007_n57_α
 xchain00007_n55_β:
 jmp xchain00007_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00007_n56_α:
 jmp qword ptr [r12 + 432]
 xchain00007_n56_β:
 jmp xchain00007_n57_α
# IR_VAR
 xchain00007_n57_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 360], rax
 jmp xchain00007_n58_α
 xchain00007_n57_β:
 jmp xchain00007_n2_α
# IR_UNOP
 xchain00007_n58_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 call rt_size_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00007_n59_α
 xchain00007_n58_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n59_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00007_n60_α
 xchain00007_n59_β:
 jmp xchain00007_n2_α
# IR_UNOP
 xchain00007_n60_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00007_n2_α
 cmp eax, 0
 je xchain00007_n2_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
 jmp xchain00007_n61_α
 xchain00007_n60_β:
 jmp xchain00007_n2_α
 xchain00007_n61_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00018_2
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00018_2
.Lx00018_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jle xchain00007_n2_α
 mov rcx, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rcx
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rcx
 jmp xchain00007_n62_α
.Lx00018_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 7
 lea r9, [r12 + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00018_1
 cmp eax, 1
 je xchain00007_n2_α
 jmp xchain00007_n62_α
.Lx00018_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00007_n2_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
 jmp xchain00007_n62_α
 xchain00007_n61_β:
 jmp xchain00007_n2_α
# IR_KEYWORD_read
 xchain00007_n62_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00007_n63_α
 xchain00007_n62_β:
 jmp xchain00007_n5_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00007_n63_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00007_n64_α
 xchain00007_n63_β:
 jmp xchain00007_n5_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "*** excessive symbols remaining"
 xchain00007_n64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn219: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n5_α
 xchain00007_n64_β:
 jmp xchain00007_n5_α
 xchain00007_n65_α:
 jmp xchain00007_n5_α
xchain00007_n65_β:
 jmp xchain00007_n5_α
proc_gener_β:
jmp proc_gener_ω
proc_gener_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1504]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_gener_ω:
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
  .globl proc_generate_α
proc_generate_α:
#=======================================================================================================================
    .global proc_generate_α
    .global proc_generate_β
    .global proc_generate_γ
    .global proc_generate_ω
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
 mov qword ptr [r12 + 704], rax
 pop rsi
proc_generate_α_body:
 mov qword ptr [r12 + 496], 0
# IR_VAR
 xchain00021_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain00021_n1_α
 xchain00021_n0_β:
 jmp proc_generate_ω
# IR_GEN_SCAN
 xchain00021_n1_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00021_n2_α
 xchain00021_n1_β:
 jmp proc_generate_ω
# IR_LIT_STRING
 xchain00021_n2_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00021_n3_α
 xchain00021_n2_β:
 jmp xchain00021_n5_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain00021_n3_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00021_n5_α
 mov rdi, qword ptr [rip + .Lx00023_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00021_n5_α
 mov qword ptr [r12 + 640], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 648], rax
 jmp xchain00021_n4_α
 xchain00021_n3_β:
 jmp xchain00021_n5_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain00021_n4_α:
 mov rax, qword ptr [r12 + 648]
 cmp rax, 1
 jge .Lx00024_0
 add rax, r15
 add rax, 1
.Lx00024_0:
 cmp rax, 1
 jl xchain00021_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00021_n5_α
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
 jmp xchain00021_n6_α
 xchain00021_n4_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00021_n5_α
# IR_GEN_SCAN
 xchain00021_n5_α:
 lea rdi, [r12 + 176]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 176]
 mov r14, qword ptr [r12 + 184]
 mov r15, qword ptr [r12 + 192]
 jmp proc_generate_ω
 xchain00021_n5_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00021_n6_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00021_n7_α
 xchain00021_n6_β:
 jmp xchain00021_n5_α
.Lx00025_0:
 .quad 1
# IR_LIT_CHARSET
 xchain00021_n7_α:
 mov qword ptr [r12 + 592], 1
 mov dword ptr [r12 + 596], -1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00021_n8_α
 xchain00021_n7_β:
 jmp xchain00021_n5_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00021_n8_α:
 mov qword ptr [r12 + 576], r14
.Lx00027_0:
 mov rax, qword ptr [r12 + 576]
 cmp rax, r15
 jge xchain00021_n5_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00027_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00027_1
 mov qword ptr [r12 + 560], 6
 add rax, 1
 mov qword ptr [r12 + 568], rax
 jmp xchain00021_n9_α
.Lx00027_1:
 inc qword ptr [r12 + 576]
 jmp .Lx00027_0
 xchain00021_n8_β:
 inc qword ptr [r12 + 576]
 jmp .Lx00027_0
.Lx00027_2:
 .quad .Lx00027_2_s
.Lx00027_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00021_n9_α:
 mov rax, qword ptr [r12 + 568]
 cmp rax, 1
 jge .Lx00028_0
 add rax, r15
 add rax, 1
.Lx00028_0:
 cmp rax, 1
 jl xchain00021_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00021_n5_α
 mov qword ptr [r12 + 544], r14
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
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00021_n10_α
 xchain00021_n9_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain00021_n5_α
# IR_LIMIT
 xchain00021_n10_α:
 mov rax, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 520]
 cmp rax, rcx
 jge xchain00021_n5_α
 inc qword ptr [r12 + 496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
 jmp xchain00021_n11_α
 xchain00021_n10_β:
 jmp xchain00021_n9_β
 xchain00021_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00021_n12_α
 xchain00021_n11_β:
 jmp xchain00021_n5_α
# IR_LIT_INTEGER
 xchain00021_n12_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00021_n13_α
 xchain00021_n12_β:
 jmp xchain00021_n5_α
.Lx00029_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00021_n13_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00021_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00021_n5_α
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
 jmp xchain00021_n14_α
 xchain00021_n13_β:
 mov r14, qword ptr [r12 + 432]
 jmp xchain00021_n5_α
# IR_LIT_INTEGER
 xchain00021_n14_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00021_n15_α
 xchain00021_n14_β:
 jmp xchain00021_n17_α
.Lx00030_0:
 .quad 0
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00021_n15_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jl xchain00021_n17_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00021_n17_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00021_n17_α
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain00021_n16_α
 xchain00021_n15_β:
 jmp xchain00021_n17_α
# IR_LIT_INTEGER
 xchain00021_n16_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00021_n18_α
 xchain00021_n16_β:
 jmp xchain00021_n17_α
.Lx00032_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00021_n17_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00021_n19_α
 xchain00021_n17_β:
 jmp xchain00021_n5_α
.Lx00033_0:
 .quad 0
 xchain00021_n18_α:
 jmp xchain00021_n20_α
xchain00021_n18_β:
 jmp xchain00021_n17_α
# IR_SCAN_TAB
 xchain00021_n19_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00034_0
 add rax, r15
 add rax, 1
.Lx00034_0:
 cmp rax, 1
 jl xchain00021_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00021_n5_α
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
 jmp xchain00021_n21_α
 xchain00021_n19_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain00021_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00021_n20_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00021_n24_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00021_n23_α
 xchain00021_n20_β:
 jmp xchain00021_n5_α
 xchain00021_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn257: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn257]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00021_n5_α
 jmp xchain00021_n26_α
 xchain00021_n21_β:
 jmp xchain00021_n5_α
 xchain00021_n22_α:
 jmp xchain00021_n5_α
xchain00021_n22_β:
 jmp xchain00021_n5_α
 xchain00021_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00021_n27_α
 xchain00021_n23_β:
 jmp xchain00021_n5_α
 xchain00021_n24_α:
 jmp xchain00021_n17_α
xchain00021_n24_β:
 jmp xchain00021_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00021_n25_α:
 jmp qword ptr [r12 + 272]
 xchain00021_n25_β:
 jmp xchain00021_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00021_n26_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00021_n22_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00021_n23_α
 xchain00021_n26_β:
 jmp xchain00021_n5_α
 xchain00021_n27_α:
 jmp xchain00021_n28_α
xchain00021_n27_β:
 jmp xchain00021_n5_α
# IR_GEN_SCAN
 xchain00021_n28_α:
 lea rdi, [r12 + 176]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 176]
 mov r14, qword ptr [r12 + 184]
 mov r15, qword ptr [r12 + 192]
 jmp xchain00021_n29_α
 xchain00021_n28_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00021_n29_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00021_n30_α
 xchain00021_n29_β:
 jmp xchain00021_n32_α
.Lx00035_0:
 .quad 1
# IR_VAR
 xchain00021_n30_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 120], rax
 jmp xchain00021_n31_α
 xchain00021_n30_β:
 jmp xchain00021_n32_α
# IR_TO
 xchain00021_n31_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00036_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00021_n32_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00021_n33_α
 xchain00021_n31_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00036_0
# IR_RETURN
 xchain00021_n32_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_generate_γ
# IR_VAR
 xchain00021_n33_α:
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 168], rax
 jmp xchain00021_n34_α
 xchain00021_n33_β:
 jmp xchain00021_n31_β
 xchain00021_n34_α:
  .section .rodata
  .Lcall00037_pname: .string "gener"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00037_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00021_n31_β
 jmp xchain00021_n31_β
xchain00021_n34_β:
 jmp xchain00021_n31_β
proc_generate_β:
jmp proc_generate_ω
proc_generate_γ:
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
proc_generate_ω:
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
  .globl proc_getrhs_α
proc_getrhs_α:
#=======================================================================================================================
    .global proc_getrhs_α
    .global proc_getrhs_β
    .global proc_getrhs_γ
    .global proc_getrhs_ω
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_getrhs_α_body:
# IR_LIT_STRING
 xchain00038_n0_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00038_n1_α
 xchain00038_n0_β:
 jmp xchain00038_n2_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string ""
 xchain00038_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00038_n2_α
 xchain00038_n1_β:
 jmp xchain00038_n2_α
# IR_VAR
 xchain00038_n2_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 136], rax
 jmp xchain00038_n3_α
 xchain00038_n2_β:
 jmp xchain00038_n4_α
# IR_VAR
 xchain00038_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00038_n5_α
 xchain00038_n3_β:
 jmp xchain00038_n4_α
# IR_VAR
 xchain00038_n4_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 56], rax
 jmp xchain00038_n6_α
 xchain00038_n4_β:
 jmp proc_getrhs_ω
# IR_LIST_BANG
 xchain00038_n5_α:
 mov qword ptr [r12 + 208], 0
.Lx00040_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 208]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp rax, 99
 je xchain00038_n4_α
 jmp xchain00038_n7_α
 xchain00038_n5_β:
 inc qword ptr [r12 + 208]
 jmp .Lx00040_0
# IR_LIT_INTEGER
 xchain00038_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00038_n8_α
 xchain00038_n6_β:
 jmp proc_getrhs_ω
.Lx00041_0:
 .quad 1
 xchain00038_n7_α:
  .section .rodata
  .Lcall00042_pname: .string "listimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00042_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00038_n4_α
 jmp xchain00038_n9_α
xchain00038_n7_β:
 jmp xchain00038_n4_α
# IR_LIT_INTEGER
 xchain00038_n8_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00038_n10_α
 xchain00038_n8_β:
 jmp proc_getrhs_ω
.Lx00043_0:
 .quad 18446744073709551615
# IR_LIT_STRING
 xchain00038_n9_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00038_n11_α
 xchain00038_n9_β:
 jmp xchain00038_n5_β
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "|"
# IR_SUBSCRIPT section
 xchain00038_n10_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
 call subscript_get2@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00038_n12_α
 xchain00038_n10_β:
 jmp proc_getrhs_ω
 xchain00038_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00038_n13_α
 xchain00038_n11_β:
 jmp xchain00038_n4_α
# IR_RETURN
 xchain00038_n12_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getrhs_γ
 xchain00038_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00038_n14_α
 xchain00038_n13_β:
 jmp xchain00038_n4_α
 xchain00038_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00038_n5_β
 xchain00038_n14_β:
 jmp xchain00038_n4_α
proc_getrhs_β:
jmp proc_getrhs_ω
proc_getrhs_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_getrhs_ω:
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
  .globl proc_grammar_α
proc_grammar_α:
#=======================================================================================================================
    .global proc_grammar_α
    .global proc_grammar_β
    .global proc_grammar_γ
    .global proc_grammar_ω
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
 mov qword ptr [r12 + 1248], rax
 pop rsi
proc_grammar_α_body:
# IR_VAR
 xchain00045_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00045_n1_α
 xchain00045_n0_β:
 jmp proc_grammar_ω
# IR_GEN_SCAN
 xchain00045_n1_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00045_n2_α
 xchain00045_n1_β:
 jmp proc_grammar_ω
# IR_LIT_STRING
 xchain00045_n2_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00045_n3_α
 xchain00045_n2_β:
 jmp xchain00045_n6_α
.Lx00046_0:
 .quad .Lx00046_0_s
.Lx00046_0_s:
 .string "->"
# IR_SCAN_FIND
 xchain00045_n3_α:
 mov qword ptr [r12 + 1200], r14
.Lx00047_0:
 mov rax, qword ptr [r12 + 1200]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00045_n6_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 45
 jne .Lx00047_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx00047_1
 mov qword ptr [r12 + 1184], 6
 add rax, 1
 mov qword ptr [r12 + 1192], rax
 jmp xchain00045_n4_α
.Lx00047_1:
 inc qword ptr [r12 + 1200]
 jmp .Lx00047_0
 xchain00045_n3_β:
 inc qword ptr [r12 + 1200]
 jmp .Lx00047_0
# IR_SCAN_TAB
 xchain00045_n4_α:
 mov rax, qword ptr [r12 + 1192]
 cmp rax, 1
 jge .Lx00048_0
 add rax, r15
 add rax, 1
.Lx00048_0:
 cmp rax, 1
 jl xchain00045_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00045_n6_α
 mov qword ptr [r12 + 1168], r14
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
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00045_n5_α
 xchain00045_n4_β:
 mov r14, qword ptr [r12 + 1168]
 jmp xchain00045_n6_α
 xchain00045_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00045_n7_α
 xchain00045_n5_β:
 jmp xchain00045_n6_α
# IR_GEN_SCAN
 xchain00045_n6_α:
 lea rdi, [r12 + 576]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 576]
 mov r14, qword ptr [r12 + 584]
 mov r15, qword ptr [r12 + 592]
 jmp proc_grammar_ω
 xchain00045_n6_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00045_n7_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00045_n8_α
 xchain00045_n7_β:
 jmp xchain00045_n6_α
.Lx00049_0:
 .quad 2
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00045_n8_α:
 mov rax, 2
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00045_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00045_n6_α
 mov qword ptr [r12 + 1104], r14
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
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00045_n9_α
 xchain00045_n8_β:
 mov r14, qword ptr [r12 + 1104]
 jmp xchain00045_n6_α
# IR_LIT_INTEGER
 xchain00045_n9_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00045_n10_α
 xchain00045_n9_β:
 jmp xchain00045_n6_α
.Lx00050_0:
 .quad 0
# IR_SCAN_TAB
 xchain00045_n10_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00051_0
 add rax, r15
 add rax, 1
.Lx00051_0:
 cmp rax, 1
 jl xchain00045_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00045_n6_α
 mov qword ptr [r12 + 1056], r14
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
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00045_n11_α
 xchain00045_n10_β:
 mov r14, qword ptr [r12 + 1056]
 jmp xchain00045_n6_α
 xchain00045_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00045_n12_α
 xchain00045_n11_β:
 jmp xchain00045_n6_α
# IR_VAR
 xchain00045_n12_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00045_n13_α
 xchain00045_n12_β:
 jmp xchain00045_n14_α
# IR_UNOP
 xchain00045_n13_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 call rt_size_d@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00045_n15_α
 xchain00045_n13_β:
 jmp xchain00045_n14_α
# IR_VAR
 xchain00045_n14_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 936], rax
 jmp xchain00045_n16_α
 xchain00045_n14_β:
 jmp xchain00045_n17_α
# IR_LIT_INTEGER
 xchain00045_n15_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00045_n18_α
 xchain00045_n15_β:
 jmp xchain00045_n14_α
.Lx00052_0:
 .quad 0
# IR_LIT_STRING
 xchain00045_n16_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00045_n19_α
 xchain00045_n16_β:
 jmp xchain00045_n17_α
.Lx00053_0:
 .quad .Lx00053_0_s
.Lx00053_0_s:
 .string "w"
# IR_KEYWORD_read
 xchain00045_n17_α:
 mov rdi, qword ptr [rip + .Lx00054_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00045_n20_α
 xchain00045_n17_β:
 jmp proc_grammar_ω
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "&errout"
 xchain00045_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00055_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00055_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00055_2
.Lx00055_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1016]
 cmp rax, rcx
 jne xchain00045_n14_α
 mov rcx, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rcx
 mov rcx, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rcx
 jmp xchain00045_n21_α
.Lx00055_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 9
 lea r9, [r12 + 960]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00055_1
 cmp eax, 1
 je xchain00045_n14_α
 jmp xchain00045_n21_α
.Lx00055_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00045_n14_α
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
 jmp xchain00045_n21_α
 xchain00045_n18_β:
 jmp xchain00045_n14_α
 xchain00045_n19_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn327: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00045_n17_α
 jmp xchain00045_n22_α
 xchain00045_n19_β:
 jmp xchain00045_n17_α
# IR_LIT_STRING
 xchain00045_n20_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00045_n23_α
 xchain00045_n20_β:
 jmp proc_grammar_ω
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "*** cannot open "
# IR_KEYWORD_read
 xchain00045_n21_α:
 mov rdi, qword ptr [rip + .Lx00057_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00045_n24_α
 xchain00045_n21_β:
 jmp xchain00045_n6_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "&output"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n22_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00045_n17_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00045_n25_α
 xchain00045_n22_β:
 jmp xchain00045_n6_α
# IR_VAR
 xchain00045_n23_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 872], rax
 jmp xchain00045_n27_α
 xchain00045_n23_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n24_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00045_n29_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00045_n28_α
 xchain00045_n24_β:
 jmp xchain00045_n6_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n25_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00045_n26_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00045_n28_α
 xchain00045_n25_β:
 jmp xchain00045_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00045_n26_α:
 jmp qword ptr [r12 + 736]
 xchain00045_n26_β:
 jmp xchain00045_n6_α
 xchain00045_n27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn341: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_grammar_ω
 jmp proc_grammar_ω
 xchain00045_n27_β:
 jmp proc_grammar_ω
 xchain00045_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00045_n31_α
 xchain00045_n28_β:
 jmp xchain00045_n6_α
 xchain00045_n29_α:
 jmp xchain00045_n6_α
xchain00045_n29_β:
 jmp xchain00045_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00045_n30_α:
 jmp qword ptr [r12 + 672]
 xchain00045_n30_β:
 jmp xchain00045_n6_α
 xchain00045_n31_α:
 jmp xchain00045_n32_α
xchain00045_n31_β:
 jmp xchain00045_n6_α
# IR_GEN_SCAN
 xchain00045_n32_α:
 lea rdi, [r12 + 576]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 576]
 mov r14, qword ptr [r12 + 584]
 mov r15, qword ptr [r12 + 592]
 jmp xchain00045_n33_α
 xchain00045_n32_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00045_n33_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 552], rax
 jmp xchain00045_n34_α
 xchain00045_n33_β:
 jmp xchain00045_n35_α
# IR_UNOP
 xchain00045_n34_α:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 call rt_size_d@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00045_n36_α
 xchain00045_n34_β:
 jmp xchain00045_n35_α
# IR_VAR_REF
 xchain00045_n35_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00045_n37_α
 xchain00045_n35_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00045_n36_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00045_n38_α
 xchain00045_n36_β:
 jmp xchain00045_n35_α
.Lx00058_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00045_n37_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00045_n39_α
 xchain00045_n37_β:
 jmp proc_grammar_ω
.Lx00059_0:
 .quad 1
 xchain00045_n38_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00060_2
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00060_2
.Lx00060_1:
 mov rax, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 jne xchain00045_n35_α
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rcx
 jmp xchain00045_n40_α
.Lx00060_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 lea r9, [r12 + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00060_1
 cmp eax, 1
 je xchain00045_n35_α
 jmp xchain00045_n40_α
.Lx00060_2:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00045_n35_α
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
 jmp xchain00045_n40_α
 xchain00045_n38_β:
 jmp xchain00045_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain00045_n39_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00045_n41_α
 xchain00045_n39_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n40_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00045_n35_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00045_n42_α
 xchain00045_n40_β:
 jmp xchain00045_n42_α
# IR_DEREF variable -> value
 xchain00045_n41_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00045_n44_α
 xchain00045_n41_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00045_n42_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 264], rax
 jmp xchain00045_n45_α
 xchain00045_n42_β:
 jmp xchain00045_n46_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00045_n43_α:
 jmp qword ptr [r12 + 304]
 xchain00045_n43_β:
 jmp xchain00045_n42_α
# IR_LIT_STRING
 xchain00045_n44_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00045_n47_α
 xchain00045_n44_β:
 jmp proc_grammar_ω
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "<"
# IR_VAR
 xchain00045_n45_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 280], rax
 jmp xchain00045_n48_α
 xchain00045_n45_β:
 jmp xchain00045_n46_α
# IR_VAR
 xchain00045_n46_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 184], rax
 jmp xchain00045_n49_α
 xchain00045_n46_β:
 jmp xchain00045_n50_α
 xchain00045_n47_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00045_n51_α
 xchain00045_n47_β:
 jmp proc_grammar_ω
 xchain00045_n48_α:
  .section .rodata
  .Lcall00062_pname: .string "pwrite"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00062_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00045_n46_α
 jmp xchain00045_n46_α
xchain00045_n48_β:
 jmp xchain00045_n46_α
# IR_UNOP
 xchain00045_n49_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 call rt_size_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00045_n52_α
 xchain00045_n49_β:
 jmp xchain00045_n50_α
# IR_RETURN
 xchain00045_n50_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_grammar_γ
# IR_VAR_REF
 xchain00045_n51_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00045_n53_α
 xchain00045_n51_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00045_n52_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00045_n54_α
 xchain00045_n52_β:
 jmp xchain00045_n50_α
.Lx00063_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00045_n53_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00045_n55_α
 xchain00045_n53_β:
 jmp proc_grammar_ω
.Lx00064_0:
 .quad 18446744073709551615
 xchain00045_n54_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00065_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00065_2
.Lx00065_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 200]
 cmp rax, rcx
 je xchain00045_n50_α
 mov rcx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rcx
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rcx
 jmp xchain00045_n56_α
.Lx00065_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 10
 lea r9, [r12 + 144]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00065_1
 cmp eax, 1
 je xchain00045_n50_α
 jmp xchain00045_n56_α
.Lx00065_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00045_n50_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
 jmp xchain00045_n56_α
 xchain00045_n54_β:
 jmp xchain00045_n50_α
# IR_SUBSCRIPT x[i] variable
 xchain00045_n55_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00045_n57_α
 xchain00045_n55_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00045_n56_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 136], rax
 jmp xchain00045_n59_α
 xchain00045_n56_β:
 jmp xchain00045_n50_α
# IR_DEREF variable -> value
 xchain00045_n57_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00045_n60_α
 xchain00045_n57_β:
 jmp proc_grammar_ω
 xchain00045_n58_α:
 jmp proc_grammar_ω
xchain00045_n58_β:
 jmp proc_grammar_ω
 xchain00045_n59_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn385: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn385]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00045_n50_α
 jmp xchain00045_n61_α
 xchain00045_n59_β:
 jmp xchain00045_n50_α
# IR_LIT_STRING
 xchain00045_n60_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00045_n62_α
 xchain00045_n60_β:
 jmp proc_grammar_ω
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string ">"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n61_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain00045_n50_α]
 mov qword ptr [r12 + 80], rax
 jmp xchain00045_n50_α
 xchain00045_n61_β:
 jmp xchain00045_n50_α
 xchain00045_n62_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00045_n64_α
 xchain00045_n62_β:
 jmp proc_grammar_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00045_n63_α:
 jmp qword ptr [r12 + 80]
 xchain00045_n63_β:
 jmp xchain00045_n50_α
 xchain00045_n64_α:
 jmp xchain00045_n65_α
xchain00045_n64_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00045_n65_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00045_n58_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00045_n42_α
 xchain00045_n65_β:
 jmp xchain00045_n42_α
proc_grammar_β:
jmp proc_grammar_ω
proc_grammar_γ:
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
proc_grammar_ω:
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
  .globl proc_listimage_α
proc_listimage_α:
#=======================================================================================================================
    .global proc_listimage_α
    .global proc_listimage_β
    .global proc_listimage_γ
    .global proc_listimage_ω
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
proc_listimage_α_body:
# IR_LIT_STRING
 xchain00067_n0_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00067_n1_α
 xchain00067_n0_β:
 jmp xchain00067_n2_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string ""
 xchain00067_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00067_n2_α
 xchain00067_n1_β:
 jmp xchain00067_n2_α
# IR_VAR
 xchain00067_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00067_n3_α
 xchain00067_n2_β:
 jmp xchain00067_n4_α
# IR_LIST_BANG
 xchain00067_n3_α:
 mov qword ptr [r12 + 80], 0
.Lx00069_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp rax, 99
 je xchain00067_n4_α
 jmp xchain00067_n5_α
 xchain00067_n3_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00069_0
# IR_VAR
 xchain00067_n4_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 40], rax
 jmp xchain00067_n6_α
 xchain00067_n4_β:
 jmp proc_listimage_ω
 xchain00067_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00067_n7_α
 xchain00067_n5_β:
 jmp xchain00067_n4_α
# IR_RETURN
 xchain00067_n6_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listimage_γ
# IR_VAR
 xchain00067_n7_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 152], rax
 jmp xchain00067_n8_α
 xchain00067_n7_β:
 jmp xchain00067_n3_β
# IR_VAR
 xchain00067_n8_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 200], rax
 jmp xchain00067_n9_α
 xchain00067_n8_β:
 jmp xchain00067_n3_β
 xchain00067_n9_α:
  .section .rodata
  .Lcall00035_pname: .string "symimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00035_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00067_n3_β
 jmp xchain00067_n10_α
xchain00067_n9_β:
 jmp xchain00067_n3_β
 xchain00067_n10_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00067_n11_α
 xchain00067_n10_β:
 jmp xchain00067_n3_β
 xchain00067_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00067_n3_β
 xchain00067_n11_β:
 jmp xchain00067_n3_β
proc_listimage_β:
jmp proc_listimage_ω
proc_listimage_γ:
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
proc_listimage_ω:
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
  .globl proc_prompter_α
proc_prompter_α:
#=======================================================================================================================
    .global proc_prompter_α
    .global proc_prompter_β
    .global proc_prompter_γ
    .global proc_prompter_ω
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
proc_prompter_α_body:
# IR_VAR_REF
 xchain00070_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 jmp proc_prompter_ω
# IR_LIT_INTEGER
 xchain00070_n1_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00070_n2_α
 xchain00070_n1_β:
 jmp proc_prompter_ω
.Lx00071_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00070_n2_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00070_n3_α
 xchain00070_n2_β:
 jmp proc_prompter_ω
# IR_DEREF variable -> value
 xchain00070_n3_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00070_n4_α
 xchain00070_n3_β:
 jmp proc_prompter_ω
# IR_LIT_STRING
 xchain00070_n4_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00070_n5_α
 xchain00070_n4_β:
 jmp proc_prompter_ω
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "="
 xchain00070_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_prompter_ω
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00070_n6_α
 xchain00070_n5_β:
 jmp proc_prompter_ω
# IR_VAR
 xchain00070_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00070_n7_α
 xchain00070_n6_β:
 jmp xchain00070_n8_α
# IR_LIT_INTEGER
 xchain00070_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00070_n9_α
 xchain00070_n7_β:
 jmp xchain00070_n8_α
.Lx00073_0:
 .quad 2
# IR_RETURN
 xchain00070_n8_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_prompter_γ
# IR_LIT_INTEGER
 xchain00070_n9_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00070_n10_α
 xchain00070_n9_β:
 jmp xchain00070_n8_α
.Lx00074_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00070_n10_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8, qword ptr [r12 + 128]
 mov r9, qword ptr [r12 + 136]
 call subscript_get2@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00070_n11_α
 xchain00070_n10_β:
 jmp xchain00070_n8_α
# IR_ASSIGN gva
 xchain00070_n11_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00070_n8_α
 xchain00070_n11_β:
 jmp xchain00070_n8_α
proc_prompter_β:
jmp proc_prompter_ω
proc_prompter_γ:
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
proc_prompter_ω:
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
  .globl proc_pwrite_α
proc_pwrite_α:
#=======================================================================================================================
    .global proc_pwrite_α
    .global proc_pwrite_β
    .global proc_pwrite_γ
    .global proc_pwrite_ω
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
 mov qword ptr [r12 + 1488], rax
 pop rsi
proc_pwrite_α_body:
# IR_VAR_REF
 xchain00075_n0_α:
 lea rdi, [rbx + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00075_n1_α
 xchain00075_n0_β:
 jmp xchain00075_n3_α
# IR_NULLTEST_VAR
 xchain00075_n1_α:
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 99
 je xchain00075_n3_α
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00075_n3_α
 cmp eax, 0
 jne xchain00075_n3_α
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00075_n2_α
 xchain00075_n1_β:
 jmp xchain00075_n3_α
# IR_LIT_INTEGER
 xchain00075_n2_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00075_n4_α
 xchain00075_n2_β:
 jmp xchain00075_n3_α
.Lx00076_0:
 .quad 1
# IR_VAR
 xchain00075_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00075_n5_α
 xchain00075_n3_β:
 jmp xchain00075_n6_α
# IR_ASSIGN_VAR
 xchain00075_n4_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00075_n3_α
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00075_n7_α
 xchain00075_n4_β:
 jmp xchain00075_n3_α
# IR_UNOP
 xchain00075_n5_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00075_n8_α
 xchain00075_n5_β:
 jmp xchain00075_n6_α
# IR_VAR
 xchain00075_n6_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 840], rax
 jmp xchain00075_n9_α
 xchain00075_n6_β:
 jmp xchain00075_n10_α
# IR_LIT_STRING
 xchain00075_n7_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00075_n11_α
 xchain00075_n7_β:
 jmp xchain00075_n3_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "lb"
# IR_LIT_INTEGER
 xchain00075_n8_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00075_n12_α
 xchain00075_n8_β:
 jmp xchain00075_n6_α
.Lx00078_0:
 .quad 0
# IR_VAR
 xchain00075_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
 jmp xchain00075_n13_α
 xchain00075_n9_β:
 jmp xchain00075_n10_α
# IR_LIT_STRING
 xchain00075_n10_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00075_n14_α
 xchain00075_n10_β:
 jmp proc_pwrite_ω
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "*** undefined nonterminal:  "
# IR_LIT_STRING
 xchain00075_n11_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00075_n15_α
 xchain00075_n11_β:
 jmp xchain00075_n3_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "rb"
 xchain00075_n12_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx00081_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00081_2
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx00081_2
.Lx00081_1:
 mov rax, qword ptr [r12 + 1064]
 mov rcx, qword ptr [r12 + 1096]
 cmp rax, rcx
 jne xchain00075_n6_α
 mov rcx, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1040], rcx
 mov rcx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1048], rcx
 jmp xchain00075_n16_α
.Lx00081_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 9
 lea r9, [r12 + 1040]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00081_1
 cmp eax, 1
 je xchain00075_n6_α
 jmp xchain00075_n16_α
.Lx00081_2:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00075_n6_α
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00075_n16_α
 xchain00075_n12_β:
 jmp xchain00075_n6_α
# IR_LIT_STRING
 xchain00075_n13_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00075_n17_α
 xchain00075_n13_β:
 jmp xchain00075_n10_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "::="
# IR_VAR
 xchain00075_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 744], rax
 jmp xchain00075_n18_α
 xchain00075_n14_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00075_n15_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00075_n19_α
 xchain00075_n15_β:
 jmp xchain00075_n3_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "vb"
# IR_VAR
 xchain00075_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00075_n20_α
 xchain00075_n16_β:
 jmp xchain00075_n21_α
# IR_VAR_REF
 xchain00075_n17_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00075_n22_α
 xchain00075_n17_β:
 jmp xchain00075_n10_α
 xchain00075_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn454: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00075_n23_α
 xchain00075_n18_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00075_n19_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00075_n24_α
 xchain00075_n19_β:
 jmp xchain00075_n3_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "nl"
# IR_LIT_INTEGER
 xchain00075_n20_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00075_n25_α
 xchain00075_n20_β:
 jmp xchain00075_n21_α
.Lx00085_0:
 .quad 3
# IR_VAR
 xchain00075_n21_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 136], rax
 jmp xchain00075_n26_α
 xchain00075_n21_β:
 jmp xchain00075_n34_α
# IR_VAR
 xchain00075_n22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain00075_n28_α
 xchain00075_n22_β:
 jmp xchain00075_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00075_n23_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + proc_pwrite_ω]
 mov qword ptr [r12 + 656], rax
 jmp xchain00075_n29_α
 xchain00075_n23_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00075_n24_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00075_n31_α
 xchain00075_n24_β:
 jmp xchain00075_n3_α
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string ""
 xchain00075_n25_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn465: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn465]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00075_n21_α
 jmp xchain00075_n32_α
 xchain00075_n25_β:
 jmp xchain00075_n21_α
 xchain00075_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn467: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00075_n34_α
 jmp xchain00075_n33_α
 xchain00075_n26_β:
 jmp xchain00075_n34_α
 xchain00075_n27_α:
 jmp xchain00075_n34_α
xchain00075_n27_β:
 jmp xchain00075_n34_α
# IR_LIT_INTEGER
 xchain00075_n28_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00075_n35_α
 xchain00075_n28_β:
 jmp xchain00075_n10_α
.Lx00087_0:
 .quad 2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00075_n29_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00075_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_γ
 xchain00075_n29_β:
 jmp proc_pwrite_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00075_n30_α:
 jmp qword ptr [r12 + 656]
 xchain00075_n30_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00075_n31_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00075_n37_α
 xchain00075_n31_β:
 jmp xchain00075_n3_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "&lcase"
 xchain00075_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00075_n21_α
 xchain00075_n32_β:
 jmp xchain00075_n21_α
 xchain00075_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00075_n38_α
 xchain00075_n33_β:
 jmp xchain00075_n34_α
 xchain00075_n34_α:
 jmp xchain00075_n39_α
xchain00075_n34_β:
 jmp proc_pwrite_ω
# IR_LIT_INTEGER
 xchain00075_n35_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00075_n40_α
 xchain00075_n35_β:
 jmp xchain00075_n10_α
.Lx00089_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00075_n36_α:
 jmp qword ptr [r12 + 64]
 xchain00075_n36_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00075_n37_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00075_n41_α
 xchain00075_n37_β:
 jmp xchain00075_n3_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "&ucase"
# IR_VAR
 xchain00075_n38_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 488], rax
 jmp xchain00075_n42_α
 xchain00075_n38_β:
 jmp xchain00075_n43_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00075_n39_α:
 lea rax, [rip + xchain00075_n21_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_γ
 xchain00075_n39_β:
 jmp proc_pwrite_ω
# IR_SUBSCRIPT section
 xchain00075_n40_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8, qword ptr [r12 + 992]
 mov r9, qword ptr [r12 + 1000]
 call subscript_get2@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00075_n44_α
 xchain00075_n40_β:
 jmp xchain00075_n10_α
# IR_LIT_STRING
 xchain00075_n41_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00075_n45_α
 xchain00075_n41_β:
 jmp xchain00075_n3_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "&digit"
# IR_VAR
 xchain00075_n42_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00075_n46_α
 xchain00075_n42_β:
 jmp xchain00075_n43_α
# IR_VAR
 xchain00075_n43_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
 jmp xchain00075_n47_α
 xchain00075_n43_β:
 jmp xchain00075_n21_α
# IR_SUBSCRIPT x[i] variable
 xchain00075_n44_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00075_n10_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00075_n48_α
 xchain00075_n44_β:
 jmp xchain00075_n10_α
# IR_MAKE_LIST
 xchain00075_n45_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1192], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1208], rax
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1240], rax
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1288], rax
 lea rdi, [r12 + 1168]
 mov esi, 8
 call rt_make_list@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain00075_n49_α
 xchain00075_n45_β:
 jmp xchain00075_n3_α
# IR_LIST_BANG
 xchain00075_n46_α:
 mov qword ptr [r12 + 512], 0
.Lx00092_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 512]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp rax, 99
 je xchain00075_n43_α
 jmp xchain00075_n50_α
 xchain00075_n46_β:
 inc qword ptr [r12 + 512]
 jmp .Lx00092_0
# IR_LIT_STRING
 xchain00075_n47_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00075_n51_α
 xchain00075_n47_β:
 jmp xchain00075_n21_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "<"
# IR_DEREF variable -> value
 xchain00075_n48_α:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00075_n10_α
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00075_n52_α
 xchain00075_n48_β:
 jmp xchain00075_n10_α
# IR_ASSIGN gva
 xchain00075_n49_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00075_n53_α
 xchain00075_n49_β:
 jmp xchain00075_n3_α
 xchain00075_n50_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00075_n46_β
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00075_n54_α
 xchain00075_n50_β:
 jmp xchain00075_n46_β
# IR_VAR
 xchain00075_n51_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 280], rax
 jmp xchain00075_n55_α
 xchain00075_n51_β:
 jmp xchain00075_n21_α
# IR_UNOP
 xchain00075_n52_α:
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 99
 je xchain00075_n10_α
 cmp eax, 0
 je xchain00075_n10_α
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 920], rax
 jmp xchain00075_n56_α
 xchain00075_n52_β:
 jmp xchain00075_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00075_n53_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00075_n3_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00075_n3_α
 xchain00075_n53_β:
 jmp xchain00075_n3_α
# IR_VAR
 xchain00075_n54_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 456], rax
 jmp xchain00075_n58_α
 xchain00075_n54_β:
 jmp xchain00075_n21_α
# IR_LIT_STRING
 xchain00075_n55_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00075_n60_α
 xchain00075_n55_β:
 jmp xchain00075_n21_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string ">::="
 xchain00075_n56_α:
  .section .rodata
  .Lcall00095_pname: .string "getrhs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00095_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00075_n10_α
 jmp xchain00075_n61_α
xchain00075_n56_β:
 jmp xchain00075_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00075_n57_α:
 jmp qword ptr [r12 + 1120]
 xchain00075_n57_β:
 jmp xchain00075_n3_α
 xchain00075_n58_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn512: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn512]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00075_n21_α
 jmp xchain00075_n21_α
 xchain00075_n58_β:
 jmp xchain00075_n21_α
 xchain00075_n59_α:
 jmp xchain00075_n21_α
xchain00075_n59_β:
 jmp xchain00075_n21_α
# IR_VAR
 xchain00075_n60_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 376], rax
 jmp xchain00075_n62_α
 xchain00075_n60_β:
 jmp xchain00075_n21_α
 xchain00075_n61_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
# marshal arg3 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn517: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn517]
 lea rsi, [r12 + 768]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00075_n10_α
 jmp xchain00075_n63_α
 xchain00075_n61_β:
 jmp xchain00075_n10_α
 xchain00075_n62_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+352]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn519: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn519]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00075_n21_α
 jmp xchain00075_n64_α
 xchain00075_n62_β:
 jmp xchain00075_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00075_n63_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00075_n10_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00075_n29_α
 xchain00075_n63_β:
 jmp proc_pwrite_ω
 xchain00075_n64_α:
  .section .rodata
  .Lcall00096_pname: .string "getrhs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00096_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00075_n21_α
 jmp xchain00075_n65_α
xchain00075_n64_β:
 jmp xchain00075_n21_α
 xchain00075_n65_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+160]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+176]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 184], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+192]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 200], rax
# marshal arg3 = producer-box slot [zr+288] -> [zr+208]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 216], rax
# marshal arg4 = producer-box slot [zr+304] -> [zr+224]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn524: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn524]
 lea rsi, [r12 + 160]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00075_n21_α
 jmp xchain00075_n66_α
 xchain00075_n65_β:
 jmp xchain00075_n21_α
 xchain00075_n66_α:
 jmp xchain00075_n21_α
xchain00075_n66_β:
 jmp xchain00075_n21_α
proc_pwrite_β:
jmp proc_pwrite_ω
proc_pwrite_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1488]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_pwrite_ω:
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
  .globl proc_source_α
proc_source_α:
#=======================================================================================================================
    .global proc_source_α
    .global proc_source_β
    .global proc_source_γ
    .global proc_source_ω
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
 mov qword ptr [r12 + 608], rax
 pop rsi
proc_source_α_body:
# IR_VAR
 xchain00097_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 600], rax
 jmp xchain00097_n1_α
 xchain00097_n0_β:
 jmp proc_source_ω
# IR_GEN_SCAN
 xchain00097_n1_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00097_n2_α
 xchain00097_n1_β:
 jmp proc_source_ω
# IR_LIT_STRING
 xchain00097_n2_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00097_n3_α
 xchain00097_n2_β:
 jmp xchain00097_n5_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "@"
# IR_SCAN_MATCH
 xchain00097_n3_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00097_n5_α
 mov rdi, qword ptr [rip + .Lx00099_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00097_n5_α
 mov qword ptr [r12 + 544], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 552], rax
 jmp xchain00097_n4_α
 xchain00097_n3_β:
 jmp xchain00097_n5_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00097_n4_α:
 mov rax, qword ptr [r12 + 552]
 cmp rax, 1
 jge .Lx00100_0
 add rax, r15
 add rax, 1
.Lx00100_0:
 cmp rax, 1
 jl xchain00097_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00097_n5_α
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
 jmp xchain00097_n6_α
 xchain00097_n4_β:
 mov r14, qword ptr [r12 + 528]
 jmp xchain00097_n5_α
# IR_GEN_SCAN
 xchain00097_n5_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_source_ω
 xchain00097_n5_β:
 jmp proc_source_ω
# IR_LIT_INTEGER
 xchain00097_n6_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00097_n7_α
 xchain00097_n6_β:
 jmp xchain00097_n9_α
.Lx00101_0:
 .quad 0
# IR_SCAN_TAB
 xchain00097_n7_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00102_0
 add rax, r15
 add rax, 1
.Lx00102_0:
 cmp rax, 1
 jl xchain00097_n9_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00097_n9_α
 mov qword ptr [r12 + 480], r14
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
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00097_n8_α
 xchain00097_n7_β:
 mov r14, qword ptr [r12 + 480]
 jmp xchain00097_n9_α
 xchain00097_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00097_n10_α
 xchain00097_n8_β:
 jmp xchain00097_n9_α
# IR_KEYWORD_read
 xchain00097_n9_α:
 mov rdi, qword ptr [rip + .Lx00103_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00097_n11_α
 xchain00097_n9_β:
 jmp proc_source_ω
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "&errout"
 xchain00097_n10_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn544: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn544]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00097_n9_α
 jmp xchain00097_n12_α
 xchain00097_n10_β:
 jmp xchain00097_n9_α
# IR_LIT_STRING
 xchain00097_n11_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00097_n13_α
 xchain00097_n11_β:
 jmp proc_source_ω
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "*** cannot open "
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00097_n12_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00097_n9_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00097_n14_α
 xchain00097_n12_β:
 jmp xchain00097_n17_α
# IR_VAR
 xchain00097_n13_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 408], rax
 jmp xchain00097_n16_α
 xchain00097_n13_β:
 jmp proc_source_ω
 xchain00097_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00097_n17_α
 xchain00097_n14_β:
 jmp xchain00097_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00097_n15_α:
 jmp qword ptr [r12 + 272]
 xchain00097_n15_β:
 jmp xchain00097_n17_α
 xchain00097_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn554: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_source_ω
 jmp proc_source_ω
 xchain00097_n16_β:
 jmp proc_source_ω
# IR_VAR
 xchain00097_n17_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00097_n18_α
 xchain00097_n17_β:
 jmp xchain00097_n19_α
# IR_VAR
 xchain00097_n18_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00097_n20_α
 xchain00097_n18_β:
 jmp xchain00097_n19_α
# IR_RETURN
 xchain00097_n19_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_source_γ
 xchain00097_n20_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn559: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00097_n19_α
 jmp xchain00097_n21_α
 xchain00097_n20_β:
 jmp xchain00097_n19_α
# IR_VAR
 xchain00097_n21_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 152], rax
 jmp xchain00097_n22_α
 xchain00097_n21_β:
 jmp xchain00097_n19_α
# IR_ASSIGN gva
 xchain00097_n22_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00097_n23_α
 xchain00097_n22_β:
 jmp xchain00097_n19_α
 xchain00097_n23_α:
 jmp xchain00097_n19_α
xchain00097_n23_β:
 jmp xchain00097_n19_α
proc_source_β:
jmp proc_source_ω
proc_source_γ:
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
proc_source_ω:
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
  .globl proc_symimage_α
proc_symimage_α:
#=======================================================================================================================
    .global proc_symimage_α
    .global proc_symimage_β
    .global proc_symimage_γ
    .global proc_symimage_ω
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
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_symimage_α_body:
# IR_VAR
 xchain00105_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00105_n1_α
 xchain00105_n0_β:
 jmp proc_symimage_ω
 xchain00105_n1_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+64]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn568: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn568]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00105_n2_α
 xchain00105_n1_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00105_n2_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00105_n3_α
 xchain00105_n2_β:
 jmp proc_symimage_ω
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "string"
 xchain00105_n3_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+512]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn571: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn571]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00105_n5_α
 jmp xchain00105_n4_α
 xchain00105_n3_β:
 jmp xchain00105_n5_α
# IR_VAR
 xchain00105_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 472], rax
 jmp xchain00105_n6_α
 xchain00105_n4_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00105_n5_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00105_n7_α
 xchain00105_n5_β:
 jmp proc_symimage_ω
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "nonterm"
 xchain00105_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00105_n8_α
 xchain00105_n6_β:
 jmp proc_symimage_ω
 xchain00105_n7_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+416]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+432]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn577: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn577]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00105_n10_α
 jmp xchain00105_n9_α
 xchain00105_n7_β:
 jmp xchain00105_n10_α
# IR_VAR
 xchain00105_n8_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 40], rax
 jmp xchain00105_n11_α
 xchain00105_n8_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00105_n9_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00105_n12_α
 xchain00105_n9_β:
 jmp proc_symimage_ω
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "<"
# IR_LIT_STRING
 xchain00105_n10_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00105_n13_α
 xchain00105_n10_β:
 jmp proc_symimage_ω
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "charset"
# IR_RETURN
 xchain00105_n11_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_symimage_γ
# IR_VAR
 xchain00105_n12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00105_n14_α
 xchain00105_n12_β:
 jmp proc_symimage_ω
 xchain00105_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+240]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+96] -> [zr+256]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn586: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn586]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00105_n15_α
 xchain00105_n13_β:
 jmp proc_symimage_ω
# IR_FIELD_GET
 xchain00105_n14_α:
 mov rdi, qword ptr [rip + .Lx00110_0]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00105_n16_α
 xchain00105_n14_β:
 jmp proc_symimage_ω
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "name"
# IR_LIT_STRING
 xchain00105_n15_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00105_n17_α
 xchain00105_n15_β:
 jmp proc_symimage_ω
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "<'"
 xchain00105_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00105_n18_α
 xchain00105_n16_β:
 jmp proc_symimage_ω
# IR_VAR
 xchain00105_n17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00105_n19_α
 xchain00105_n17_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00105_n18_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00105_n20_α
 xchain00105_n18_β:
 jmp proc_symimage_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string ">"
# IR_FIELD_GET
 xchain00105_n19_α:
 mov rdi, qword ptr [rip + .Lx00113_0]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00105_n21_α
 xchain00105_n19_β:
 jmp proc_symimage_ω
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "chars"
 xchain00105_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00105_n22_α
 xchain00105_n20_β:
 jmp proc_symimage_ω
 xchain00105_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00105_n23_α
 xchain00105_n21_β:
 jmp proc_symimage_ω
 xchain00105_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00105_n8_α
 xchain00105_n22_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00105_n23_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00105_n24_α
 xchain00105_n23_β:
 jmp proc_symimage_ω
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "'>"
 xchain00105_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00105_n25_α
 xchain00105_n24_β:
 jmp proc_symimage_ω
 xchain00105_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00105_n8_α
 xchain00105_n25_β:
 jmp proc_symimage_ω
proc_symimage_β:
jmp proc_symimage_ω
proc_symimage_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_symimage_ω:
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
  .globl proc_syms_α
proc_syms_α:
#=======================================================================================================================
    .global proc_syms_α
    .global proc_syms_β
    .global proc_syms_γ
    .global proc_syms_ω
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
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_syms_α_body:
# IR_VAR_REF
 xchain00115_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00115_n1_α
 xchain00115_n0_β:
 jmp xchain00115_n3_α
# IR_NULLTEST_VAR
 xchain00115_n1_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00115_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00115_n3_α
 cmp eax, 0
 jne xchain00115_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00115_n2_α
 xchain00115_n1_β:
 jmp xchain00115_n3_α
# IR_LIT_INTEGER
 xchain00115_n2_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00115_n4_α
 xchain00115_n2_β:
 jmp xchain00115_n3_α
.Lx00116_0:
 .quad 1
# IR_MAKE_LIST
 xchain00115_n3_α:
 lea rdi, [r12 + 656]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00115_n5_α
 xchain00115_n3_β:
 jmp xchain00115_n7_α
# IR_ASSIGN_VAR
 xchain00115_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00115_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00115_n6_α
 xchain00115_n4_β:
 jmp xchain00115_n3_α
 xchain00115_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00115_n7_α
 xchain00115_n5_β:
 jmp xchain00115_n7_α
# IR_LIT_CHARSET
 xchain00115_n6_α:
 mov qword ptr [r12 + 720], 1
 mov dword ptr [r12 + 724], -1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00115_n8_α
 xchain00115_n6_β:
 jmp xchain00115_n3_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "<"
# IR_VAR
 xchain00115_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00115_n9_α
 xchain00115_n7_β:
 jmp xchain00115_n10_α
# IR_UNOP
 xchain00115_n8_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00115_n11_α
 xchain00115_n8_β:
 jmp xchain00115_n3_α
# IR_GEN_SCAN
 xchain00115_n9_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00115_n12_α
 xchain00115_n9_β:
 jmp xchain00115_n10_α
# IR_VAR
 xchain00115_n10_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 40], rax
 jmp xchain00115_n13_α
 xchain00115_n10_β:
 jmp proc_syms_ω
# IR_ASSIGN gva
 xchain00115_n11_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00115_n14_α
 xchain00115_n11_β:
 jmp xchain00115_n3_α
# IR_VAR
 xchain00115_n12_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 168], rax
 jmp xchain00115_n15_α
 xchain00115_n12_β:
 jmp xchain00115_n20_α
# IR_RETURN
 xchain00115_n13_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_syms_γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00115_n14_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00115_n3_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00115_n3_α
 xchain00115_n14_β:
 jmp xchain00115_n3_α
# IR_VAR
 xchain00115_n15_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00115_n18_α
 xchain00115_n15_β:
 jmp xchain00115_n19_α
 xchain00115_n16_α:
 jmp xchain00115_n20_α
xchain00115_n16_β:
 jmp xchain00115_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00115_n17_α:
 jmp qword ptr [r12 + 672]
 xchain00115_n17_β:
 jmp xchain00115_n3_α
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00115_n18_α:
 mov eax, r14d
.Lx00118_0:
 cmp eax, r15d
 jge .Lx00118_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [r12 + 600]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00118_1
 add eax, 1
 jmp .Lx00118_0
.Lx00118_1:
 cmp eax, r14d
 je xchain00115_n19_α
 mov qword ptr [r12 + 576], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 584], rcx
 jmp xchain00115_n21_α
 xchain00115_n18_β:
 jmp xchain00115_n19_α
# IR_LIT_INTEGER
 xchain00115_n19_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00115_n22_α
 xchain00115_n19_β:
 jmp xchain00115_n20_α
.Lx00119_0:
 .quad 2
# IR_GEN_SCAN
 xchain00115_n20_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00115_n10_α
 xchain00115_n20_β:
 jmp xchain00115_n10_α
# IR_SCAN_TAB
 xchain00115_n21_α:
 mov rax, qword ptr [r12 + 584]
 cmp rax, 1
 jge .Lx00120_0
 add rax, r15
 add rax, 1
.Lx00120_0:
 cmp rax, 1
 jl xchain00115_n19_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00115_n19_α
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
 jmp xchain00115_n23_α
 xchain00115_n21_β:
 mov r14, qword ptr [r12 + 560]
 jmp xchain00115_n19_α
# IR_LIT_STRING
 xchain00115_n22_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00115_n24_α
 xchain00115_n22_β:
 jmp xchain00115_n20_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "<"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00115_n23_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00115_n19_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00115_n25_α
 xchain00115_n23_β:
 jmp xchain00115_n20_α
# IR_SCAN_MATCH
 xchain00115_n24_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00115_n20_α
 mov rdi, qword ptr [rip + .Lx00122_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00115_n20_α
 mov qword ptr [r12 + 368], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 376], rax
 jmp xchain00115_n27_α
 xchain00115_n24_β:
 jmp xchain00115_n20_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "<"
 xchain00115_n25_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn640: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn640]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00115_n20_α
 jmp xchain00115_n12_α
 xchain00115_n25_β:
 jmp xchain00115_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00115_n26_α:
 jmp qword ptr [r12 + 192]
 xchain00115_n26_β:
 jmp xchain00115_n20_α
# IR_SCAN_TAB
 xchain00115_n27_α:
 mov rax, qword ptr [r12 + 376]
 cmp rax, 1
 jge .Lx00123_0
 add rax, r15
 add rax, 1
.Lx00123_0:
 cmp rax, 1
 jl xchain00115_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00115_n20_α
 mov qword ptr [r12 + 352], r14
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
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00115_n28_α
 xchain00115_n27_β:
 mov r14, qword ptr [r12 + 352]
 jmp xchain00115_n20_α
# IR_LIT_CHARSET
 xchain00115_n28_α:
 mov qword ptr [r12 + 480], 1
 mov dword ptr [r12 + 484], -1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00115_n29_α
 xchain00115_n28_β:
 jmp xchain00115_n20_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00115_n29_α:
 mov qword ptr [r12 + 464], r14
.Lx00125_0:
 mov rax, qword ptr [r12 + 464]
 cmp rax, r15
 jge xchain00115_n20_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00125_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00125_1
 mov qword ptr [r12 + 448], 6
 add rax, 1
 mov qword ptr [r12 + 456], rax
 jmp xchain00115_n30_α
.Lx00125_1:
 inc qword ptr [r12 + 464]
 jmp .Lx00125_0
 xchain00115_n29_β:
 inc qword ptr [r12 + 464]
 jmp .Lx00125_0
.Lx00125_2:
 .quad .Lx00125_2_s
.Lx00125_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00115_n30_α:
 mov rax, qword ptr [r12 + 456]
 cmp rax, 1
 jge .Lx00126_0
 add rax, r15
 add rax, 1
.Lx00126_0:
 cmp rax, 1
 jl xchain00115_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00115_n20_α
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
 jmp xchain00115_n31_α
 xchain00115_n30_β:
 mov r14, qword ptr [r12 + 432]
 jmp xchain00115_n20_α
# IR_LIT_INTEGER
 xchain00115_n31_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00115_n32_α
 xchain00115_n31_β:
 jmp xchain00115_n20_α
.Lx00127_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00115_n32_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00115_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00115_n20_α
 mov qword ptr [r12 + 512], r14
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
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00115_n33_α
 xchain00115_n32_β:
 mov r14, qword ptr [r12 + 512]
 jmp xchain00115_n20_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain00115_n33_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 312], rax
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 lea rdx, [r12 + 272]
 mov ecx, 3
 call rt_call_value@PLT
 cmp eax, 99
 je xchain00115_n20_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00115_n34_α
 xchain00115_n33_β:
 jmp xchain00115_n20_α
 xchain00115_n34_α:
  .section .rodata
  .Lcall00128_pname: .string "defnon"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00128_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00115_n20_α
 jmp xchain00115_n35_α
xchain00115_n34_β:
 jmp xchain00115_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00115_n35_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00115_n16_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00115_n25_α
 xchain00115_n35_β:
 jmp xchain00115_n20_α
proc_syms_β:
jmp proc_syms_ω
proc_syms_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 800]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_syms_ω:
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
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
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
 mov qword ptr [r12 + 2368], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00129_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00129_n1_α
 xchain00129_n0_β:
 jmp xchain00129_n3_α
# IR_NULLTEST_VAR
 xchain00129_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00129_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00129_n3_α
 cmp eax, 0
 jne xchain00129_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00129_n2_α
 xchain00129_n1_β:
 jmp xchain00129_n3_α
# IR_LIT_CHARSET
 xchain00129_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00129_n4_α
 xchain00129_n2_β:
 jmp xchain00129_n3_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00129_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn664: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn664]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00129_n6_α
 jmp xchain00129_n5_α
 xchain00129_n3_β:
 jmp xchain00129_n6_α
 xchain00129_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn666: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn666]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00129_n3_α
 jmp xchain00129_n7_α
 xchain00129_n4_β:
 jmp xchain00129_n3_α
 xchain00129_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00129_n6_α
 xchain00129_n5_β:
 jmp xchain00129_n6_α
# IR_MAKE_LIST
 xchain00129_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00129_n8_α
 xchain00129_n6_β:
 jmp xchain00129_n9_α
# IR_ASSIGN_VAR
 xchain00129_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00129_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00129_n3_α
 xchain00129_n7_β:
 jmp xchain00129_n3_α
 xchain00129_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00129_n9_α
 xchain00129_n8_β:
 jmp xchain00129_n9_α
# IR_VAR
 xchain00129_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00129_n10_α
 xchain00129_n9_β:
 jmp xchain00129_n11_α
 xchain00129_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn675: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn675]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00129_n11_α
 jmp xchain00129_n12_α
 xchain00129_n10_β:
 jmp xchain00129_n11_α
# IR_VAR
 xchain00129_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00129_n13_α
 xchain00129_n11_β:
 jmp xchain00129_n14_α
 xchain00129_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00129_n15_α
 xchain00129_n12_β:
 jmp xchain00129_n11_α
# IR_VAR
 xchain00129_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00129_n16_α
 xchain00129_n13_β:
 jmp xchain00129_n14_α
# IR_VAR
 xchain00129_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00129_n17_α
 xchain00129_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00129_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00129_n18_α
 xchain00129_n15_β:
 jmp xchain00129_n9_α
 xchain00129_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn686: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn686]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00129_n14_α
 jmp xchain00129_n19_α
 xchain00129_n16_β:
 jmp xchain00129_n14_α
# IR_RETURN
 xchain00129_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00129_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00129_n20_α
 xchain00129_n18_β:
 jmp xchain00129_n9_α
 xchain00129_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn691: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn691]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00129_n14_α
 jmp xchain00129_n11_α
 xchain00129_n19_β:
 jmp xchain00129_n14_α
# IR_LIT_STRING
 xchain00129_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00129_n21_α
 xchain00129_n20_β:
 jmp xchain00129_n23_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00129_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00129_n23_α
 mov rdi, qword ptr [rip + .Lx00132_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00129_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00129_n22_α
 xchain00129_n21_β:
 jmp xchain00129_n23_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00129_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00133_0
 add rax, r15
 add rax, 1
.Lx00133_0:
 cmp rax, 1
 jl xchain00129_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n23_α
 mov qword ptr [r12 + 2128], r14
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
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00129_n24_α
 xchain00129_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00129_n23_α
# IR_VAR
 xchain00129_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00129_n25_α
 xchain00129_n23_β:
 jmp xchain00129_n26_α
# IR_LIT_INTEGER
 xchain00129_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00129_n27_α
 xchain00129_n24_β:
 jmp xchain00129_n29_α
.Lx00134_0:
 .quad 0
# IR_VAR
 xchain00129_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00129_n28_α
 xchain00129_n25_β:
 jmp xchain00129_n26_α
# IR_GEN_SCAN
 xchain00129_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00129_n9_α
 xchain00129_n26_β:
 jmp xchain00129_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00129_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00135_0
 add rax, r15
 add rax, 1
.Lx00135_0:
 cmp rax, 1
 jl xchain00129_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00129_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00129_n23_α
 xchain00129_n27_β:
 jmp xchain00129_n29_α
 xchain00129_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn707: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn707]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00129_n26_α
 jmp xchain00129_n30_α
 xchain00129_n28_β:
 jmp xchain00129_n26_α
# IR_KEYWORD_null
 xchain00129_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00129_n31_α
 xchain00129_n29_β:
 jmp xchain00129_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00129_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00129_n32_α
 xchain00129_n30_β:
 jmp xchain00129_n26_α
 xchain00129_n31_α:
 jmp xchain00129_n34_α
xchain00129_n31_β:
 jmp xchain00129_n23_α
# IR_GEN_SCAN
 xchain00129_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00129_n9_α
 xchain00129_n32_β:
 jmp xchain00129_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00129_n33_β:
 jmp xchain00129_n26_α
# IR_LIT_STRING
 xchain00129_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00129_n35_α
 xchain00129_n34_β:
 jmp xchain00129_n37_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00129_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00129_n37_α
 mov rdi, qword ptr [rip + .Lx00137_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00129_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00129_n36_α
 xchain00129_n35_β:
 jmp xchain00129_n37_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00129_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00138_0
 add rax, r15
 add rax, 1
.Lx00138_0:
 cmp rax, 1
 jl xchain00129_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n37_α
 mov qword ptr [r12 + 1920], r14
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
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00129_n38_α
 xchain00129_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00129_n37_α
# IR_LIT_INTEGER
 xchain00129_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00129_n39_α
 xchain00129_n37_β:
 jmp xchain00129_n45_α
.Lx00139_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00129_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00129_n40_α
 xchain00129_n38_β:
 jmp xchain00129_n37_α
.Lx00140_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00129_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00129_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n45_α
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
 jmp xchain00129_n41_α
 xchain00129_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00129_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00129_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00141_0
 add rax, r15
 add rax, 1
.Lx00141_0:
 cmp rax, 1
 jl xchain00129_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00129_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00129_n43_α
 xchain00129_n40_β:
 jmp xchain00129_n37_α
 xchain00129_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00129_n44_α
 xchain00129_n41_β:
 jmp xchain00129_n45_α
 xchain00129_n42_α:
 jmp xchain00129_n45_α
xchain00129_n42_β:
 jmp xchain00129_n45_α
 xchain00129_n43_α:
 jmp xchain00129_n11_α
xchain00129_n43_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00129_n47_α
 xchain00129_n44_β:
 jmp xchain00129_n48_α
 xchain00129_n45_α:
 jmp xchain00129_n49_α
xchain00129_n45_β:
 jmp xchain00129_n26_α
 xchain00129_n46_α:
 jmp xchain00129_n11_α
xchain00129_n46_β:
 jmp xchain00129_n11_α
# IR_VAR
 xchain00129_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00129_n50_α
 xchain00129_n47_β:
 jmp xchain00129_n48_α
# IR_LIT_STRING
 xchain00129_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00129_n51_α
 xchain00129_n48_β:
 jmp xchain00129_n37_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n49_α:
 lea rax, [rip + xchain00129_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00129_n32_α
 xchain00129_n49_β:
 jmp xchain00129_n26_α
 xchain00129_n50_α:
# BOX IR_CALL_BUILTIN_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
 mov qword ptr [r12 + 1776], 0
.Lx00143_60:
  .section .rodata
  .Lbynamegenfn740: .string "find"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamegenfn740]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00129_n48_α
 jmp xchain00129_n53_α
xchain00129_n50_β:
 jmp .Lx00143_60
# IR_VAR
 xchain00129_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00129_n54_α
 xchain00129_n51_β:
 jmp xchain00129_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00129_n52_β:
 jmp xchain00129_n37_α
# IR_LIT_INTEGER
 xchain00129_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00129_n55_α
 xchain00129_n53_β:
 jmp xchain00129_n50_β
.Lx00144_0:
 .quad 1
 xchain00129_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn747: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn747]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00129_n37_α
 jmp xchain00129_n56_α
 xchain00129_n54_β:
 jmp xchain00129_n37_α
 xchain00129_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00145_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00145_2
.Lx00145_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00129_n57_α
.Lx00145_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00145_3
.Lx00145_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00129_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00145_3:
 jmp xchain00129_n57_α
 xchain00129_n55_β:
 jmp xchain00129_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00129_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00129_n37_α
 xchain00129_n56_β:
 jmp xchain00129_n37_α
 xchain00129_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00129_n58_α
 xchain00129_n57_β:
 jmp xchain00129_n48_α
# IR_VAR_REF
 xchain00129_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00129_n59_α
 xchain00129_n58_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00129_n60_α
 xchain00129_n59_β:
 jmp xchain00129_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00129_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00129_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00129_n61_α
 xchain00129_n60_β:
 jmp xchain00129_n37_α
# IR_LIT_CHARSET
 xchain00129_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00129_n62_α
 xchain00129_n61_β:
 jmp xchain00129_n65_α
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00129_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00129_n63_α
 xchain00129_n62_β:
 jmp xchain00129_n65_α
# IR_VAR
 xchain00129_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00129_n64_α
 xchain00129_n63_β:
 jmp xchain00129_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00129_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00129_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00129_n66_α
 xchain00129_n64_β:
 jmp xchain00129_n65_α
# IR_LIT_INTEGER
 xchain00129_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00129_n67_α
 xchain00129_n65_β:
 jmp xchain00129_n37_α
.Lx00147_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00129_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00129_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00129_n68_α
 xchain00129_n66_β:
 jmp xchain00129_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00129_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00129_n69_α
 xchain00129_n67_β:
 jmp xchain00129_n37_α
 xchain00129_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00129_n71_α
 xchain00129_n68_β:
 jmp xchain00129_n65_α
# IR_ASSIGN_VAR
 xchain00129_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00129_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00129_n72_α
 xchain00129_n69_β:
 jmp xchain00129_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00129_n70_β:
 jmp xchain00129_n37_α
 xchain00129_n71_α:
# BOX IR_CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lbynamefn507: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn507]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00129_n65_α
 jmp xchain00129_n73_α
 xchain00129_n71_β:
 jmp xchain00129_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00129_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00129_n37_α
 xchain00129_n72_β:
 jmp xchain00129_n37_α
# IR_LIT_STRING
 xchain00129_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00129_n74_α
 xchain00129_n73_β:
 jmp xchain00129_n77_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00129_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00129_n75_α
 xchain00129_n74_β:
 jmp xchain00129_n77_α
.Lx00149_0:
 .quad 0
# IR_SCAN_TAB
 xchain00129_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00150_0
 add rax, r15
 add rax, 1
.Lx00150_0:
 cmp rax, 1
 jl xchain00129_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00129_n77_α
 mov qword ptr [r12 + 1424], r14
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
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00129_n76_α
 xchain00129_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00129_n77_α
 xchain00129_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00129_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00129_n78_α
 xchain00129_n76_β:
 jmp xchain00129_n77_α
# IR_VAR
 xchain00129_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00129_n79_α
 xchain00129_n77_β:
 jmp xchain00129_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00129_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00129_n81_α
 xchain00129_n78_β:
 jmp xchain00129_n85_α
 xchain00129_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn784: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn784]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00129_n80_α
 jmp xchain00129_n83_α
 xchain00129_n79_β:
 jmp xchain00129_n80_α
# IR_LIT_STRING
 xchain00129_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00129_n84_α
 xchain00129_n80_β:
 jmp xchain00129_n85_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "No parameter following -"
 xchain00129_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00129_n85_α
 xchain00129_n81_β:
 jmp xchain00129_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00129_n82_β:
 jmp xchain00129_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00129_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00129_n81_α
 xchain00129_n83_β:
 jmp xchain00129_n85_α
# IR_VAR
 xchain00129_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00129_n86_α
 xchain00129_n84_β:
 jmp xchain00129_n85_α
# IR_VAR
 xchain00129_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00129_n87_α
 xchain00129_n85_β:
 jmp xchain00129_n37_α
 xchain00129_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn796: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00129_n85_α
 jmp xchain00129_n88_α
 xchain00129_n86_β:
 jmp xchain00129_n85_α
# IR_LIT_STRING
 xchain00129_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00129_n89_α
 xchain00129_n87_β:
 jmp xchain00129_n37_α
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00129_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00129_n81_α
 xchain00129_n88_β:
 jmp xchain00129_n85_α
 xchain00129_n89_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1168]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn801: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn801]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00129_n91_α
 jmp xchain00129_n90_α
 xchain00129_n89_β:
 jmp xchain00129_n91_α
# IR_VAR
 xchain00129_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00129_n92_α
 xchain00129_n90_β:
 jmp xchain00129_n37_α
# IR_LIT_STRING
 xchain00129_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00129_n93_α
 xchain00129_n91_β:
 jmp xchain00129_n37_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "+"
 xchain00129_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00129_n94_α
 xchain00129_n92_β:
 jmp xchain00129_n37_α
 xchain00129_n93_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1072]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn807: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn807]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00129_n96_α
 jmp xchain00129_n95_α
 xchain00129_n93_β:
 jmp xchain00129_n96_α
# IR_VAR
 xchain00129_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00129_n97_α
 xchain00129_n94_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00129_n98_α
 xchain00129_n95_β:
 jmp xchain00129_n99_α
# IR_LIT_STRING
 xchain00129_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00129_n00001_α
 xchain00129_n96_β:
 jmp xchain00129_n37_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "."
 xchain00129_n97_α:
 jmp xchain00129_n00155_α
xchain00129_n97_β:
 jmp xchain00129_n37_α
 xchain00129_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn815: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn815]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00129_n99_α
 jmp xchain00129_n00156_α
 xchain00129_n98_β:
 jmp xchain00129_n99_α
# IR_LIT_STRING
 xchain00129_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00129_n00158_α
 xchain00129_n99_β:
 jmp xchain00129_n37_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "-"
 xchain00129_n00001_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+800]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+816]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn818: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00129_n37_α
 jmp xchain00129_n00002_α
 xchain00129_n00001_β:
 jmp xchain00129_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n00155_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00129_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00129_n69_α
 xchain00129_n00155_β:
 jmp xchain00129_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n00156_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00129_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00129_n00159_α
 xchain00129_n00156_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n00158_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00129_n00003_α
 xchain00129_n00158_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n00002_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00129_n00160_α
 xchain00129_n00002_β:
 jmp xchain00129_n00004_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n00161_α:
 jmp qword ptr [r12 + 864]
 xchain00129_n00161_β:
 jmp xchain00129_n37_α
# IR_LIT_STRING
 xchain00129_n00003_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00129_n00163_α
 xchain00129_n00003_β:
 jmp xchain00129_n37_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string " needs numeric parameter"
 xchain00129_n00160_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn831: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn831]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00129_n00004_α
 jmp xchain00129_n00164_α
 xchain00129_n00160_β:
 jmp xchain00129_n00004_α
# IR_LIT_STRING
 xchain00129_n00004_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00129_n00166_α
 xchain00129_n00004_β:
 jmp xchain00129_n37_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "-"
 xchain00129_n00159_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00129_n94_α
 xchain00129_n00159_β:
 jmp xchain00129_n37_α
 xchain00129_n00163_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn835: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn835]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00129_n37_α
 jmp xchain00129_n00167_α
 xchain00129_n00163_β:
 jmp xchain00129_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n00164_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00129_n00004_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00129_n00168_α
 xchain00129_n00164_β:
 jmp xchain00129_n37_α
# IR_VAR
 xchain00129_n00166_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00129_n00169_α
 xchain00129_n00166_β:
 jmp xchain00129_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n00167_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00129_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00129_n00159_α
 xchain00129_n00167_β:
 jmp xchain00129_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n00170_α:
 jmp qword ptr [r12 + 592]
 xchain00129_n00170_β:
 jmp xchain00129_n37_α
# IR_LIT_STRING
 xchain00129_n00169_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00129_n00005_α
 xchain00129_n00169_β:
 jmp xchain00129_n37_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string " needs numeric parameter"
 xchain00129_n00168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00129_n94_α
 xchain00129_n00168_β:
 jmp xchain00129_n37_α
 xchain00129_n00005_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn847: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn847]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00129_n37_α
 jmp xchain00129_n00006_α
 xchain00129_n00005_β:
 jmp xchain00129_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00129_n00006_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00129_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00129_n00168_α
 xchain00129_n00006_β:
 jmp xchain00129_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2368]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_options_ω:
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
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
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
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00172_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00172_n1_α
 xchain00172_n0_β:
 jmp xchain00172_n2_α
# IR_ASSIGN gva
 xchain00172_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00172_n2_α
 xchain00172_n1_β:
 jmp xchain00172_n2_α
 xchain00172_n2_α:
  .section .rodata
  .Lcall00173_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00173_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00172_n3_α
 jmp xchain00172_n3_α
xchain00172_n2_β:
 jmp xchain00172_n3_α
 xchain00172_n3_α:
  .section .rodata
  .Lcall00174_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00174_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00172_n4_α
 jmp xchain00172_n4_α
xchain00172_n3_β:
 jmp xchain00172_n4_α
 xchain00172_n4_α:
  .section .rodata
  .Lcall00175_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00175_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00172_n5_α
 jmp xchain00172_n5_α
xchain00172_n4_β:
 jmp xchain00172_n5_α
# IR_LIT_STRING
 xchain00172_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00172_n6_α
 xchain00172_n5_β:
 jmp xchain00172_n8_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "OUTPUT"
 xchain00172_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn859: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00172_n8_α
 jmp xchain00172_n7_α
 xchain00172_n6_β:
 jmp xchain00172_n8_α
# IR_LIT_STRING
 xchain00172_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00172_n9_α
 xchain00172_n7_β:
 jmp xchain00172_n12_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00172_n8_α:
 mov rdi, qword ptr [rip + .Lx00178_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00172_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00172_n10_α
 xchain00172_n8_β:
 jmp xchain00172_n11_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "write"
 xchain00172_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn863: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn863]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00172_n12_α
 jmp xchain00172_n12_α
 xchain00172_n9_β:
 jmp xchain00172_n12_α
# IR_ASSIGN gva
 xchain00172_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00172_n11_α
 xchain00172_n10_β:
 jmp xchain00172_n11_α
# IR_VAR
 xchain00172_n11_α:
 mov rdi, qword ptr [rip + .Lx00179_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00172_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00172_n13_α
 xchain00172_n11_β:
 jmp xchain00172_n14_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "writes"
# IR_RETURN
 xchain00172_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00172_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00172_n14_α
 xchain00172_n13_β:
 jmp xchain00172_n14_α
# IR_LIT_INTEGER
 xchain00172_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00172_n15_α
 xchain00172_n14_β:
 jmp xchain00172_n17_α
.Lx00180_0:
 .quad 1
# IR_ASSIGN global
 xchain00172_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00181_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00172_n16_α
 xchain00172_n15_β:
 jmp xchain00172_n17_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00172_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00182_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00172_n17_α
 xchain00172_n16_β:
 jmp xchain00172_n17_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "write"
# IR_RETURN
 xchain00172_n17_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Init___ω:
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
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
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
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00183_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00183_n1_α
 xchain00183_n0_β:
 jmp xchain00183_n3_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "OUTPUT"
 xchain00183_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn875: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn875]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00183_n3_α
 jmp xchain00183_n2_α
 xchain00183_n1_β:
 jmp xchain00183_n3_α
# IR_VAR
 xchain00183_n2_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00183_n4_α
 xchain00183_n2_β:
 jmp xchain00183_n5_α
# IR_KEYWORD_null
 xchain00183_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00183_n6_α
 xchain00183_n3_β:
 jmp xchain00183_n2_α
# IR_LIT_STRING
 xchain00183_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00183_n7_α
 xchain00183_n4_β:
 jmp xchain00183_n5_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string " elapsed time = "
 xchain00183_n5_α:
  .section .rodata
  .Lcall00186_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00186_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00183_n8_α
 jmp xchain00183_n8_α
xchain00183_n5_β:
 jmp xchain00183_n8_α
# IR_VAR
 xchain00183_n6_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00183_n9_α
 xchain00183_n6_β:
 jmp xchain00183_n10_α
 xchain00183_n7_α:
  .section .rodata
  .Lcall00108_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00108_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00183_n5_α
 jmp xchain00183_n11_α
xchain00183_n7_β:
 jmp xchain00183_n5_α
 xchain00183_n8_α:
  .section .rodata
  .Lcall00109_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00109_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00183_n12_α
 jmp xchain00183_n12_α
xchain00183_n8_β:
 jmp xchain00183_n12_α
# IR_ASSIGN global
 xchain00183_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00187_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00183_n10_α
 xchain00183_n9_β:
 jmp xchain00183_n10_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "write"
# IR_VAR
 xchain00183_n10_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00183_n13_α
 xchain00183_n10_β:
 jmp xchain00183_n2_α
 xchain00183_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn886: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn886]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00183_n5_α
 jmp xchain00183_n5_α
 xchain00183_n11_β:
 jmp xchain00183_n5_α
 xchain00183_n12_α:
  .section .rodata
  .Lcall00188_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00188_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00183_n14_α
 jmp xchain00183_n14_α
xchain00183_n12_β:
 jmp xchain00183_n14_α
# IR_ASSIGN global
 xchain00183_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00189_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00183_n15_α
 xchain00183_n13_β:
 jmp xchain00183_n2_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "writes"
# IR_RETURN
 xchain00183_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00183_n15_α:
 jmp xchain00183_n16_α
xchain00183_n15_β:
 jmp xchain00183_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00183_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00183_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00183_n2_α
 xchain00183_n16_β:
 jmp xchain00183_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00183_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00183_n17_β:
 jmp xchain00183_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Term___ω:
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
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
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
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00190_n0_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00190_n1_α
 xchain00190_n0_β:
 jmp xchain00190_n3_α
# IR_NULLTEST_VAR
 xchain00190_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00190_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n3_α
 cmp eax, 0
 jne xchain00190_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00190_n2_α
 xchain00190_n1_β:
 jmp xchain00190_n3_α
# IR_LIT_INTEGER
 xchain00190_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00190_n4_α
 xchain00190_n2_β:
 jmp xchain00190_n3_α
.Lx00191_0:
 .quad 1
# IR_MAKE_LIST
 xchain00190_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00190_n5_α
 xchain00190_n3_β:
 jmp xchain00190_n7_α
# IR_ASSIGN_VAR
 xchain00190_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00190_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00190_n6_α
 xchain00190_n4_β:
 jmp xchain00190_n3_α
 xchain00190_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00190_n7_α
 xchain00190_n5_β:
 jmp xchain00190_n7_α
# IR_LIT_STRING
 xchain00190_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00190_n8_α
 xchain00190_n6_β:
 jmp xchain00190_n3_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "total"
# IR_VAR
 xchain00190_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00190_n9_α
 xchain00190_n7_β:
 jmp xchain00190_n10_α
# IR_LIT_STRING
 xchain00190_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00190_n11_α
 xchain00190_n8_β:
 jmp xchain00190_n3_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "static"
# IR_KEYWORD_gen
 xchain00190_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00194_1:
 mov rdi, qword ptr [rip + .Lx00194_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00190_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00190_n12_α
 xchain00190_n9_β:
 jmp .Lx00194_1
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00190_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00190_n13_α
 xchain00190_n10_β:
 jmp xchain00190_n15_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00190_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00190_n14_α
 xchain00190_n11_β:
 jmp xchain00190_n3_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "string"
 xchain00190_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn912: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn912]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00190_n10_α
 jmp xchain00190_n9_β
 xchain00190_n12_β:
 jmp xchain00190_n10_α
 xchain00190_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn914: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn914]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00190_n15_α
 jmp xchain00190_n15_α
 xchain00190_n13_β:
 jmp xchain00190_n15_α
# IR_LIT_STRING
 xchain00190_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00190_n16_α
 xchain00190_n14_β:
 jmp xchain00190_n3_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00190_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00190_n17_α
 xchain00190_n15_β:
 jmp xchain00190_n20_α
.Lx00198_0:
 .quad 1
# IR_MAKE_LIST
 xchain00190_n16_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 lea rdi, [r12 + 592]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00190_n18_α
 xchain00190_n16_β:
 jmp xchain00190_n3_α
# IR_VAR
 xchain00190_n17_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00190_n19_α
 xchain00190_n17_β:
 jmp xchain00190_n20_α
# IR_ASSIGN gva
 xchain00190_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00190_n21_α
 xchain00190_n18_β:
 jmp xchain00190_n3_α
# IR_UNOP
 xchain00190_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00190_n22_α
 xchain00190_n19_β:
 jmp xchain00190_n20_α
# IR_RETURN
 xchain00190_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00190_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00190_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00190_n3_α
 xchain00190_n21_β:
 jmp xchain00190_n3_α
# IR_TO
 xchain00190_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00199_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00190_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00190_n24_α
 xchain00190_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00199_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00190_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00190_n23_β:
 jmp xchain00190_n3_α
 xchain00190_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00190_n25_α
 xchain00190_n24_β:
 jmp xchain00190_n20_α
# IR_VAR_REF
 xchain00190_n25_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00190_n26_α
 xchain00190_n25_β:
 jmp xchain00190_n22_β
# IR_VAR
 xchain00190_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00190_n27_α
 xchain00190_n26_β:
 jmp xchain00190_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00190_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00190_n28_α
 xchain00190_n27_β:
 jmp xchain00190_n22_β
# IR_DEREF variable -> value
 xchain00190_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00190_n29_α
 xchain00190_n28_β:
 jmp xchain00190_n22_β
# IR_VAR_REF
 xchain00190_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00190_n30_α
 xchain00190_n29_β:
 jmp xchain00190_n22_β
# IR_VAR
 xchain00190_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00190_n31_α
 xchain00190_n30_β:
 jmp xchain00190_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00190_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00190_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00190_n32_α
 xchain00190_n31_β:
 jmp xchain00190_n22_β
# IR_DEREF variable -> value
 xchain00190_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00190_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00190_n33_α
 xchain00190_n32_β:
 jmp xchain00190_n22_β
# IR_LIT_INTEGER
 xchain00190_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00190_n34_α
 xchain00190_n33_β:
 jmp xchain00190_n22_β
.Lx00200_0:
 .quad 8
 xchain00190_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn944: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn944]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00190_n22_β
 jmp xchain00190_n35_α
 xchain00190_n34_β:
 jmp xchain00190_n22_β
 xchain00190_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn946: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn946]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00190_n22_β
 jmp xchain00190_n22_β
 xchain00190_n35_β:
 jmp xchain00190_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Collections___ω:
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
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00201_n0_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00201_n1_α
 xchain00201_n0_β:
 jmp xchain00201_n3_α
# IR_NULLTEST_VAR
 xchain00201_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00201_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00201_n3_α
 cmp eax, 0
 jne xchain00201_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00201_n2_α
 xchain00201_n1_β:
 jmp xchain00201_n3_α
# IR_LIT_INTEGER
 xchain00201_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00201_n4_α
 xchain00201_n2_β:
 jmp xchain00201_n3_α
.Lx00202_0:
 .quad 1
# IR_MAKE_LIST
 xchain00201_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00201_n5_α
 xchain00201_n3_β:
 jmp xchain00201_n7_α
# IR_ASSIGN_VAR
 xchain00201_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00201_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00201_n6_α
 xchain00201_n4_β:
 jmp xchain00201_n3_α
 xchain00201_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00201_n7_α
 xchain00201_n5_β:
 jmp xchain00201_n7_α
# IR_LIT_STRING
 xchain00201_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00201_n8_α
 xchain00201_n6_β:
 jmp xchain00201_n3_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "static"
# IR_VAR
 xchain00201_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00201_n9_α
 xchain00201_n7_β:
 jmp xchain00201_n10_α
# IR_LIT_STRING
 xchain00201_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00201_n11_α
 xchain00201_n8_β:
 jmp xchain00201_n3_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00201_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00205_1:
 mov rdi, qword ptr [rip + .Lx00205_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00201_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00201_n12_α
 xchain00201_n9_β:
 jmp .Lx00205_1
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00201_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00201_n13_α
 xchain00201_n10_β:
 jmp xchain00201_n15_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00201_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00201_n14_α
 xchain00201_n11_β:
 jmp xchain00201_n3_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "block"
 xchain00201_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn964: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn964]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00201_n10_α
 jmp xchain00201_n9_β
 xchain00201_n12_β:
 jmp xchain00201_n10_α
 xchain00201_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn966: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn966]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00201_n15_α
 jmp xchain00201_n15_α
 xchain00201_n13_β:
 jmp xchain00201_n15_α
# IR_MAKE_LIST
 xchain00201_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00201_n16_α
 xchain00201_n14_β:
 jmp xchain00201_n3_α
# IR_LIT_INTEGER
 xchain00201_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00201_n17_α
 xchain00201_n15_β:
 jmp xchain00201_n20_α
.Lx00208_0:
 .quad 1
# IR_ASSIGN gva
 xchain00201_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00201_n18_α
 xchain00201_n16_β:
 jmp xchain00201_n3_α
# IR_VAR
 xchain00201_n17_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00201_n19_α
 xchain00201_n17_β:
 jmp xchain00201_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00201_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00201_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00201_n3_α
 xchain00201_n18_β:
 jmp xchain00201_n3_α
# IR_UNOP
 xchain00201_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00201_n22_α
 xchain00201_n19_β:
 jmp xchain00201_n20_α
# IR_RETURN
 xchain00201_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00201_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00201_n21_β:
 jmp xchain00201_n3_α
# IR_TO
 xchain00201_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00209_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00201_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00201_n23_α
 xchain00201_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00209_0
 xchain00201_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00201_n24_α
 xchain00201_n23_β:
 jmp xchain00201_n20_α
# IR_VAR_REF
 xchain00201_n24_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00201_n25_α
 xchain00201_n24_β:
 jmp xchain00201_n22_β
# IR_VAR
 xchain00201_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00201_n26_α
 xchain00201_n25_β:
 jmp xchain00201_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00201_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00201_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00201_n27_α
 xchain00201_n26_β:
 jmp xchain00201_n22_β
# IR_DEREF variable -> value
 xchain00201_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00201_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00201_n28_α
 xchain00201_n27_β:
 jmp xchain00201_n22_β
# IR_VAR_REF
 xchain00201_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00201_n29_α
 xchain00201_n28_β:
 jmp xchain00201_n22_β
# IR_VAR
 xchain00201_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00201_n30_α
 xchain00201_n29_β:
 jmp xchain00201_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00201_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00201_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00201_n31_α
 xchain00201_n30_β:
 jmp xchain00201_n22_β
# IR_DEREF variable -> value
 xchain00201_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00201_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00201_n32_α
 xchain00201_n31_β:
 jmp xchain00201_n22_β
# IR_LIT_INTEGER
 xchain00201_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00201_n33_α
 xchain00201_n32_β:
 jmp xchain00201_n22_β
.Lx00210_0:
 .quad 8
 xchain00201_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn995: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn995]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00201_n22_β
 jmp xchain00201_n34_α
 xchain00201_n33_β:
 jmp xchain00201_n22_β
 xchain00201_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn997: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn997]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00201_n22_β
 jmp xchain00201_n22_β
 xchain00201_n34_β:
 jmp xchain00201_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Regions___ω:
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
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_Signature___α_body:
# IR_KEYWORD_read
 xchain00211_n0_α:
 mov rdi, qword ptr [rip + .Lx00212_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00211_n1_α
 xchain00211_n0_β:
 jmp xchain00211_n2_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "&version"
 xchain00211_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1001: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1001]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00211_n2_α
 jmp xchain00211_n2_α
 xchain00211_n1_β:
 jmp xchain00211_n2_α
# IR_KEYWORD_read
 xchain00211_n2_α:
 mov rdi, qword ptr [rip + .Lx00213_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00211_n3_α
 xchain00211_n2_β:
 jmp xchain00211_n4_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "&host"
 xchain00211_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn1004: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1004]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00211_n4_α
 jmp xchain00211_n4_α
 xchain00211_n3_β:
 jmp xchain00211_n4_α
# IR_KEYWORD_gen
 xchain00211_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00214_1:
 mov rdi, qword ptr [rip + .Lx00214_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00211_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00211_n5_α
 xchain00211_n4_β:
 jmp .Lx00214_1
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "&features"
 xchain00211_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn1007: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1007]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00211_n6_α
 jmp xchain00211_n4_β
 xchain00211_n5_β:
 jmp xchain00211_n6_α
# IR_RETURN
 xchain00211_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Signature___γ
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Signature___ω:
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
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00215_n0_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00215_n1_α
 xchain00215_n0_β:
 jmp xchain00215_n3_α
# IR_NULLTEST_VAR
 xchain00215_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00215_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00215_n3_α
 cmp eax, 0
 jne xchain00215_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00215_n2_α
 xchain00215_n1_β:
 jmp xchain00215_n3_α
# IR_LIT_INTEGER
 xchain00215_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00215_n4_α
 xchain00215_n2_β:
 jmp xchain00215_n3_α
.Lx00216_0:
 .quad 1
# IR_MAKE_LIST
 xchain00215_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00215_n5_α
 xchain00215_n3_β:
 jmp xchain00215_n7_α
# IR_ASSIGN_VAR
 xchain00215_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00215_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00215_n6_α
 xchain00215_n4_β:
 jmp xchain00215_n3_α
 xchain00215_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00215_n7_α
 xchain00215_n5_β:
 jmp xchain00215_n7_α
# IR_LIT_STRING
 xchain00215_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00215_n8_α
 xchain00215_n6_β:
 jmp xchain00215_n3_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "static"
# IR_VAR
 xchain00215_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00215_n9_α
 xchain00215_n7_β:
 jmp xchain00215_n10_α
# IR_LIT_STRING
 xchain00215_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00215_n11_α
 xchain00215_n8_β:
 jmp xchain00215_n3_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00215_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00219_1:
 mov rdi, qword ptr [rip + .Lx00219_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00215_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00215_n12_α
 xchain00215_n9_β:
 jmp .Lx00219_1
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00215_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00215_n13_α
 xchain00215_n10_β:
 jmp xchain00215_n15_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00215_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00215_n14_α
 xchain00215_n11_β:
 jmp xchain00215_n3_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "block"
 xchain00215_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1026: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1026]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00215_n10_α
 jmp xchain00215_n9_β
 xchain00215_n12_β:
 jmp xchain00215_n10_α
 xchain00215_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn1028: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1028]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00215_n15_α
 jmp xchain00215_n15_α
 xchain00215_n13_β:
 jmp xchain00215_n15_α
# IR_MAKE_LIST
 xchain00215_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00215_n16_α
 xchain00215_n14_β:
 jmp xchain00215_n3_α
# IR_LIT_INTEGER
 xchain00215_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00215_n17_α
 xchain00215_n15_β:
 jmp xchain00215_n20_α
.Lx00222_0:
 .quad 1
# IR_ASSIGN gva
 xchain00215_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00215_n18_α
 xchain00215_n16_β:
 jmp xchain00215_n3_α
# IR_VAR
 xchain00215_n17_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00215_n19_α
 xchain00215_n17_β:
 jmp xchain00215_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00215_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00215_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00215_n3_α
 xchain00215_n18_β:
 jmp xchain00215_n3_α
# IR_UNOP
 xchain00215_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00215_n22_α
 xchain00215_n19_β:
 jmp xchain00215_n20_α
# IR_RETURN
 xchain00215_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00215_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00215_n21_β:
 jmp xchain00215_n3_α
# IR_TO
 xchain00215_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00223_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00215_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00215_n23_α
 xchain00215_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00223_0
 xchain00215_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00215_n24_α
 xchain00215_n23_β:
 jmp xchain00215_n20_α
# IR_VAR_REF
 xchain00215_n24_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00215_n25_α
 xchain00215_n24_β:
 jmp xchain00215_n22_β
# IR_VAR
 xchain00215_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00215_n26_α
 xchain00215_n25_β:
 jmp xchain00215_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00215_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00215_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00215_n27_α
 xchain00215_n26_β:
 jmp xchain00215_n22_β
# IR_DEREF variable -> value
 xchain00215_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00215_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00215_n28_α
 xchain00215_n27_β:
 jmp xchain00215_n22_β
# IR_VAR_REF
 xchain00215_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00215_n29_α
 xchain00215_n28_β:
 jmp xchain00215_n22_β
# IR_VAR
 xchain00215_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00215_n30_α
 xchain00215_n29_β:
 jmp xchain00215_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00215_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00215_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00215_n31_α
 xchain00215_n30_β:
 jmp xchain00215_n22_β
# IR_DEREF variable -> value
 xchain00215_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00215_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00215_n32_α
 xchain00215_n31_β:
 jmp xchain00215_n22_β
# IR_LIT_INTEGER
 xchain00215_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00215_n33_α
 xchain00215_n32_β:
 jmp xchain00215_n22_β
.Lx00224_0:
 .quad 8
 xchain00215_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1057: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1057]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00215_n22_β
 jmp xchain00215_n34_α
 xchain00215_n33_β:
 jmp xchain00215_n22_β
 xchain00215_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1059: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1059]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00215_n22_β
 jmp xchain00215_n22_β
 xchain00215_n34_β:
 jmp xchain00215_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Storage___ω:
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
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00225_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00225_n1_α
 xchain00225_n0_β:
 jmp xchain00225_n3_α
# IR_NULLTEST_VAR
 xchain00225_n1_α:
 mov eax, dword ptr [r12 + 160]
 cmp eax, 99
 je xchain00225_n3_α
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00225_n3_α
 cmp eax, 0
 jne xchain00225_n3_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 184], rax
 jmp xchain00225_n2_α
 xchain00225_n1_β:
 jmp xchain00225_n3_α
# IR_LIT_INTEGER
 xchain00225_n2_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00225_n4_α
 xchain00225_n2_β:
 jmp xchain00225_n3_α
.Lx00226_0:
 .quad 1
# IR_KEYWORD_read
 xchain00225_n3_α:
 mov rdi, qword ptr [rip + .Lx00227_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00225_n5_α
 xchain00225_n3_β:
 jmp proc_Time___ω
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00225_n4_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00225_n3_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00225_n6_α
 xchain00225_n4_β:
 jmp xchain00225_n3_α
# IR_VAR
 xchain00225_n5_α:
 mov rax, qword ptr [rbx + 304]
 mov rdx, qword ptr [rbx + 312]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00225_n7_α
 xchain00225_n5_β:
 jmp proc_Time___ω
# IR_KEYWORD_read
 xchain00225_n6_α:
 mov rdi, qword ptr [rip + .Lx00228_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00225_n8_α
 xchain00225_n6_β:
 jmp xchain00225_n3_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "&time"
 xchain00225_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00229_2
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00229_2
.Lx00229_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00225_n9_α
.Lx00229_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00229_3
.Lx00229_2:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00229_3:
 jmp xchain00225_n9_α
 xchain00225_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00225_n8_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 304], rax
 mov qword ptr [rbx + 312], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00225_n10_α
 xchain00225_n8_β:
 jmp xchain00225_n3_α
# IR_RETURN
 xchain00225_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00225_n10_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00225_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00225_n3_α
 xchain00225_n10_β:
 jmp xchain00225_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00225_n11_α:
 jmp qword ptr [r12 + 96]
 xchain00225_n11_β:
 jmp xchain00225_n3_α
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Time___ω:
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
  .Lclassspec0: .string "nonterm(name)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "charset(chars)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "alts"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_alts_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "comment"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_comment_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "define"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_define_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "defnon"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_defnon_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "error"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_error_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "gener"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_gener_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "generate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_generate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname7: .string "getrhs"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_getrhs_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname8: .string "grammar"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_grammar_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname9: .string "listimage"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_listimage_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname10: .string "prompter"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_prompter_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname11: .string "pwrite"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_pwrite_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname12: .string "source"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_source_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname13: .string "symimage"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_symimage_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname14: .string "syms"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_syms_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname15: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname16: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname17: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname18: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname19: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname20: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname21: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname22: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "defs"
  .Lgvan1: .string "ifile"
  .Lgvan2: .string "in"
  .Lgvan3: .string "limit"
  .Lgvan4: .string "prompt"
  .Lgvan5: .string "tswitch"
  .Lgvan6: .string "Save__"
  .Lgvan7: .string "Saves__"
  .Lgvan8: .string "Name__"
  .Lgvan9: .string "pwrite__STATIC__builtin"
  .Lgvan10: .string "pwrite__INITFLAG__0"
  .Lgvan11: .string "syms__STATIC__nonbrack"
  .Lgvan12: .string "syms__INITFLAG__0"
  .Lgvan13: .string "Collections____STATIC__labels"
  .Lgvan14: .string "Collections____INITFLAG__0"
  .Lgvan15: .string "Regions____STATIC__labels"
  .Lgvan16: .string "Regions____INITFLAG__0"
  .Lgvan17: .string "Storage____STATIC__labels"
  .Lgvan18: .string "Storage____INITFLAG__0"
  .Lgvan19: .string "Time____STATIC__lasttime"
  .Lgvan20: .string "Time____INITFLAG__0"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .section .bss
  .align 16
__gva: .space 336, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 21
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
 mov qword ptr [r12 + 2880], rax
 pop rsi
main_α_body:
 xchain00230_n0_α:
  .section .rodata
  .Lcall00136_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00136_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain00230_n1_α
 jmp xchain00230_n1_α
xchain00230_n0_β:
 jmp xchain00230_n1_α
# IR_PROC_VALUE first-class procedure value
 xchain00230_n1_α:
 mov rdi, qword ptr [rip + .Lx00231_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain00230_n2_α
 xchain00230_n1_β:
 jmp xchain00230_n10_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "define"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n2_α:
 mov rdi, qword ptr [rip + .Lx00232_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00230_n3_α
 xchain00230_n2_β:
 jmp xchain00230_n10_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "generate"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n3_α:
 mov rdi, qword ptr [rip + .Lx00233_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain00230_n4_α
 xchain00230_n3_β:
 jmp xchain00230_n10_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "grammar"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n4_α:
 mov rdi, qword ptr [rip + .Lx00234_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00230_n5_α
 xchain00230_n4_β:
 jmp xchain00230_n10_α
.Lx00234_0:
 .quad .Lx00234_0_s
.Lx00234_0_s:
 .string "source"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n5_α:
 mov rdi, qword ptr [rip + .Lx00235_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00230_n6_α
 xchain00230_n5_β:
 jmp xchain00230_n10_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "comment"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n6_α:
 mov rdi, qword ptr [rip + .Lx00236_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 jmp xchain00230_n7_α
 xchain00230_n6_β:
 jmp xchain00230_n10_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "prompter"
# IR_PROC_VALUE first-class procedure value
 xchain00230_n7_α:
 mov rdi, qword ptr [rip + .Lx00237_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain00230_n8_α
 xchain00230_n7_β:
 jmp xchain00230_n10_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "error"
# IR_MAKE_LIST
 xchain00230_n8_α:
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2648], rax
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2664], rax
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2680], rax
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2696], rax
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2712], rax
 mov rax, qword ptr [r12 + 2832]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2840]
 mov qword ptr [r12 + 2728], rax
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 2744], rax
 lea rdi, [r12 + 2640]
 mov esi, 7
 call rt_make_list@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00230_n9_α
 xchain00230_n8_β:
 jmp xchain00230_n10_α
 xchain00230_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00230_n10_α
 xchain00230_n9_β:
 jmp xchain00230_n10_α
 xchain00230_n10_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1096: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1096]
 lea rsi, [r12 + 2608]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00230_n12_α
 jmp xchain00230_n11_α
 xchain00230_n10_β:
 jmp xchain00230_n12_α
# IR_ASSIGN gva
 xchain00230_n11_α:
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00230_n12_α
 xchain00230_n11_β:
 jmp xchain00230_n12_α
# IR_VAR_REF
 xchain00230_n12_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00230_n13_α
 xchain00230_n12_β:
 jmp xchain00230_n16_α
# IR_LIT_STRING
 xchain00230_n13_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00230_n14_α
 xchain00230_n13_β:
 jmp xchain00230_n16_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "lb"
# IR_SUBSCRIPT x[i] variable
 xchain00230_n14_α:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n16_α
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00230_n15_α
 xchain00230_n14_β:
 jmp xchain00230_n16_α
# IR_LIT_STRING
 xchain00230_n15_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00230_n17_α
 xchain00230_n15_β:
 jmp xchain00230_n16_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "<"
# IR_VAR_REF
 xchain00230_n16_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00230_n18_α
 xchain00230_n16_β:
 jmp xchain00230_n23_α
# IR_MAKE_LIST
 xchain00230_n17_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2552], rax
 lea rdi, [r12 + 2544]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00230_n19_α
 xchain00230_n17_β:
 jmp xchain00230_n16_α
# IR_LIT_STRING
 xchain00230_n18_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00230_n20_α
 xchain00230_n18_β:
 jmp xchain00230_n23_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "rb"
# IR_MAKE_LIST
 xchain00230_n19_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2520], rax
 lea rdi, [r12 + 2512]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain00230_n21_α
 xchain00230_n19_β:
 jmp xchain00230_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n20_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n23_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00230_n22_α
 xchain00230_n20_β:
 jmp xchain00230_n23_α
# IR_ASSIGN_VAR
 xchain00230_n21_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 mov rdx, qword ptr [r12 + 2496]
 mov rcx, qword ptr [r12 + 2504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n16_α
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00230_n16_α
 xchain00230_n21_β:
 jmp xchain00230_n16_α
# IR_LIT_STRING
 xchain00230_n22_α:
 mov qword ptr [r12 + 2416], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 2424], rax
 jmp xchain00230_n24_α
 xchain00230_n22_β:
 jmp xchain00230_n23_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string ">"
# IR_VAR_REF
 xchain00230_n23_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00230_n25_α
 xchain00230_n23_β:
 jmp xchain00230_n30_α
# IR_MAKE_LIST
 xchain00230_n24_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2408], rax
 lea rdi, [r12 + 2400]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00230_n26_α
 xchain00230_n24_β:
 jmp xchain00230_n23_α
# IR_LIT_STRING
 xchain00230_n25_α:
 mov qword ptr [r12 + 2160], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00230_n27_α
 xchain00230_n25_β:
 jmp xchain00230_n30_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "vb"
# IR_MAKE_LIST
 xchain00230_n26_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2376], rax
 lea rdi, [r12 + 2368]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00230_n28_α
 xchain00230_n26_β:
 jmp xchain00230_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n27_α:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n30_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00230_n29_α
 xchain00230_n27_β:
 jmp xchain00230_n30_α
# IR_ASSIGN_VAR
 xchain00230_n28_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n23_α
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00230_n23_α
 xchain00230_n28_β:
 jmp xchain00230_n23_α
# IR_LIT_STRING
 xchain00230_n29_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain00230_n31_α
 xchain00230_n29_β:
 jmp xchain00230_n30_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "|"
# IR_VAR_REF
 xchain00230_n30_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00230_n32_α
 xchain00230_n30_β:
 jmp xchain00230_n37_α
# IR_MAKE_LIST
 xchain00230_n31_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2264], rax
 lea rdi, [r12 + 2256]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00230_n33_α
 xchain00230_n31_β:
 jmp xchain00230_n30_α
# IR_LIT_STRING
 xchain00230_n32_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00230_n34_α
 xchain00230_n32_β:
 jmp xchain00230_n37_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "nl"
# IR_MAKE_LIST
 xchain00230_n33_α:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2232], rax
 lea rdi, [r12 + 2224]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00230_n35_α
 xchain00230_n33_β:
 jmp xchain00230_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n34_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2016]
 mov rcx, qword ptr [r12 + 2024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n37_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00230_n36_α
 xchain00230_n34_β:
 jmp xchain00230_n37_α
# IR_ASSIGN_VAR
 xchain00230_n35_α:
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 mov rdx, qword ptr [r12 + 2208]
 mov rcx, qword ptr [r12 + 2216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n30_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00230_n30_α
 xchain00230_n35_β:
 jmp xchain00230_n30_α
# IR_LIT_STRING
 xchain00230_n36_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain00230_n38_α
 xchain00230_n36_β:
 jmp xchain00230_n37_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "\n"
# IR_VAR_REF
 xchain00230_n37_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00230_n39_α
 xchain00230_n37_β:
 jmp xchain00230_n44_α
# IR_MAKE_LIST
 xchain00230_n38_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2120], rax
 lea rdi, [r12 + 2112]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00230_n40_α
 xchain00230_n38_β:
 jmp xchain00230_n37_α
# IR_LIT_STRING
 xchain00230_n39_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00230_n41_α
 xchain00230_n39_β:
 jmp xchain00230_n44_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string ""
# IR_MAKE_LIST
 xchain00230_n40_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2088], rax
 lea rdi, [r12 + 2080]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00230_n42_α
 xchain00230_n40_β:
 jmp xchain00230_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n41_α:
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 mov rdx, qword ptr [r12 + 1872]
 mov rcx, qword ptr [r12 + 1880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n44_α
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00230_n43_α
 xchain00230_n41_β:
 jmp xchain00230_n44_α
# IR_ASSIGN_VAR
 xchain00230_n42_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n37_α
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00230_n37_α
 xchain00230_n42_β:
 jmp xchain00230_n37_α
# IR_LIT_STRING
 xchain00230_n43_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00230_n45_α
 xchain00230_n43_β:
 jmp xchain00230_n44_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string ""
# IR_VAR_REF
 xchain00230_n44_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00230_n46_α
 xchain00230_n44_β:
 jmp xchain00230_n51_α
# IR_MAKE_LIST
 xchain00230_n45_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1976], rax
 lea rdi, [r12 + 1968]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00230_n47_α
 xchain00230_n45_β:
 jmp xchain00230_n44_α
# IR_LIT_STRING
 xchain00230_n46_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00230_n48_α
 xchain00230_n46_β:
 jmp xchain00230_n51_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "&lcase"
# IR_MAKE_LIST
 xchain00230_n47_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1944], rax
 lea rdi, [r12 + 1936]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00230_n49_α
 xchain00230_n47_β:
 jmp xchain00230_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n48_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n51_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00230_n50_α
 xchain00230_n48_β:
 jmp xchain00230_n51_α
# IR_ASSIGN_VAR
 xchain00230_n49_α:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, qword ptr [r12 + 1920]
 mov rcx, qword ptr [r12 + 1928]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n44_α
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00230_n44_α
 xchain00230_n49_β:
 jmp xchain00230_n44_α
# IR_LIT_CHARSET
 xchain00230_n50_α:
 mov qword ptr [r12 + 1840], 1
 mov dword ptr [r12 + 1844], -1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00230_n52_α
 xchain00230_n50_β:
 jmp xchain00230_n51_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR_REF
 xchain00230_n51_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00230_n53_α
 xchain00230_n51_β:
 jmp xchain00230_n58_α
 xchain00230_n52_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1824]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn1156: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1156]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00230_n51_α
 jmp xchain00230_n54_α
 xchain00230_n52_β:
 jmp xchain00230_n51_α
# IR_LIT_STRING
 xchain00230_n53_α:
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00230_n55_α
 xchain00230_n53_β:
 jmp xchain00230_n58_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "&ucase"
# IR_MAKE_LIST
 xchain00230_n54_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1800], rax
 lea rdi, [r12 + 1792]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00230_n56_α
 xchain00230_n54_β:
 jmp xchain00230_n51_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n55_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n58_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00230_n57_α
 xchain00230_n55_β:
 jmp xchain00230_n58_α
# IR_MAKE_LIST
 xchain00230_n56_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1768], rax
 lea rdi, [r12 + 1760]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00230_n59_α
 xchain00230_n56_β:
 jmp xchain00230_n51_α
# IR_LIT_CHARSET
 xchain00230_n57_α:
 mov qword ptr [r12 + 1664], 1
 mov dword ptr [r12 + 1668], -1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00230_n60_α
 xchain00230_n57_β:
 jmp xchain00230_n58_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# IR_VAR_REF
 xchain00230_n58_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00230_n61_α
 xchain00230_n58_β:
 jmp xchain00230_n66_α
# IR_ASSIGN_VAR
 xchain00230_n59_α:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n51_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00230_n51_α
 xchain00230_n59_β:
 jmp xchain00230_n51_α
 xchain00230_n60_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1648]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn1168: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1168]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain00230_n58_α
 jmp xchain00230_n62_α
 xchain00230_n60_β:
 jmp xchain00230_n58_α
# IR_LIT_STRING
 xchain00230_n61_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00230_n63_α
 xchain00230_n61_β:
 jmp xchain00230_n66_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "&digit"
# IR_MAKE_LIST
 xchain00230_n62_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1624], rax
 lea rdi, [r12 + 1616]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00230_n64_α
 xchain00230_n62_β:
 jmp xchain00230_n58_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n63_α:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n66_α
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00230_n65_α
 xchain00230_n63_β:
 jmp xchain00230_n66_α
# IR_MAKE_LIST
 xchain00230_n64_α:
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1592], rax
 lea rdi, [r12 + 1584]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00230_n67_α
 xchain00230_n64_β:
 jmp xchain00230_n58_α
# IR_LIT_CHARSET
 xchain00230_n65_α:
 mov qword ptr [r12 + 1488], 1
 mov dword ptr [r12 + 1492], -1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00230_n68_α
 xchain00230_n65_β:
 jmp xchain00230_n66_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "0123456789"
# IR_VAR
 xchain00230_n66_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00230_n69_α
 xchain00230_n66_β:
 jmp xchain00230_n70_α
# IR_ASSIGN_VAR
 xchain00230_n67_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n58_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00230_n58_α
 xchain00230_n67_β:
 jmp xchain00230_n58_α
 xchain00230_n68_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn1180: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1180]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00230_n66_α
 jmp xchain00230_n71_α
 xchain00230_n68_β:
 jmp xchain00230_n66_α
# IR_LIT_STRING
 xchain00230_n69_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00230_n72_α
 xchain00230_n69_β:
 jmp xchain00230_n70_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "tl+s+"
# IR_VAR_REF
 xchain00230_n70_α:
 lea rdi, [r12 + 2928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00230_n73_α
 xchain00230_n70_β:
 jmp xchain00230_n79_α
# IR_MAKE_LIST
 xchain00230_n71_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1448], rax
 lea rdi, [r12 + 1440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00230_n74_α
 xchain00230_n71_β:
 jmp xchain00230_n66_α
 xchain00230_n72_α:
  .section .rodata
  .Lcall00255_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00255_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00230_n70_α
 jmp xchain00230_n75_α
xchain00230_n72_β:
 jmp xchain00230_n70_α
# IR_LIT_STRING
 xchain00230_n73_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00230_n76_α
 xchain00230_n73_β:
 jmp xchain00230_n79_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "l"
# IR_MAKE_LIST
 xchain00230_n74_α:
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1416], rax
 lea rdi, [r12 + 1408]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00230_n77_α
 xchain00230_n74_β:
 jmp xchain00230_n66_α
 xchain00230_n75_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00230_n70_α
 xchain00230_n75_β:
 jmp xchain00230_n70_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n76_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n79_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00230_n78_α
 xchain00230_n76_β:
 jmp xchain00230_n79_α
# IR_ASSIGN_VAR
 xchain00230_n77_α:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00230_n66_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00230_n66_α
 xchain00230_n77_β:
 jmp xchain00230_n66_α
# IR_DEREF variable -> value
 xchain00230_n78_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00230_n79_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00230_n80_α
 xchain00230_n78_β:
 jmp xchain00230_n79_α
# IR_LIT_INTEGER
 xchain00230_n79_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00230_n81_α
 xchain00230_n79_β:
 jmp xchain00230_n84_α
.Lx00257_0:
 .quad 1000
# IR_UNOP
 xchain00230_n80_α:
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 99
 je xchain00230_n79_α
 cmp eax, 0
 je xchain00230_n79_α
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00230_n82_α
 xchain00230_n80_β:
 jmp xchain00230_n79_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00230_n81_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00230_n84_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00230_n83_α
 xchain00230_n81_β:
 jmp xchain00230_n84_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00230_n82_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00230_n79_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00230_n83_α
 xchain00230_n82_β:
 jmp xchain00230_n84_α
# IR_ASSIGN gva
 xchain00230_n83_α:
 mov rax, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00230_n84_α
 xchain00230_n83_β:
 jmp xchain00230_n84_α
# IR_VAR_REF
 xchain00230_n84_α:
 lea rdi, [r12 + 2928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00230_n86_α
 xchain00230_n84_β:
 jmp xchain00230_n89_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00230_n85_α:
 jmp qword ptr [r12 + 1120]
 xchain00230_n85_β:
 jmp xchain00230_n84_α
# IR_LIT_STRING
 xchain00230_n86_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00230_n87_α
 xchain00230_n86_β:
 jmp xchain00230_n89_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "t"
# IR_SUBSCRIPT x[i] variable
 xchain00230_n87_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n89_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00230_n88_α
 xchain00230_n87_β:
 jmp xchain00230_n89_α
# IR_DEREF variable -> value
 xchain00230_n88_α:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00230_n89_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00230_n90_α
 xchain00230_n88_β:
 jmp xchain00230_n89_α
# IR_VAR_REF
 xchain00230_n89_α:
 lea rdi, [r12 + 2928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00230_n91_α
 xchain00230_n89_β:
 jmp xchain00230_n95_α
# IR_UNOP
 xchain00230_n90_α:
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 99
 je xchain00230_n89_α
 cmp eax, 0
 je xchain00230_n89_α
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00230_n92_α
 xchain00230_n90_β:
 jmp xchain00230_n89_α
# IR_LIT_STRING
 xchain00230_n91_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00230_n93_α
 xchain00230_n91_β:
 jmp xchain00230_n95_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "s"
# IR_ASSIGN gva
 xchain00230_n92_α:
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00230_n89_α
 xchain00230_n92_β:
 jmp xchain00230_n89_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n93_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n95_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00230_n94_α
 xchain00230_n93_β:
 jmp xchain00230_n95_α
# IR_DEREF variable -> value
 xchain00230_n94_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00230_n95_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00230_n96_α
 xchain00230_n94_β:
 jmp xchain00230_n95_α
# IR_KEYWORD_read
 xchain00230_n95_α:
 mov rdi, qword ptr [rip + .Lx00260_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00230_n97_α
 xchain00230_n95_β:
 jmp xchain00230_n00001_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "&input"
# IR_UNOP
 xchain00230_n96_α:
 mov eax, dword ptr [r12 + 976]
 cmp eax, 99
 je xchain00230_n95_α
 cmp eax, 0
 je xchain00230_n95_α
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 920], rax
 jmp xchain00230_n98_α
 xchain00230_n96_β:
 jmp xchain00230_n95_α
# IR_MAKE_LIST
 xchain00230_n97_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 856], rax
 lea rdi, [r12 + 848]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00230_n99_α
 xchain00230_n97_β:
 jmp xchain00230_n00001_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00230_n98_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00230_n95_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00230_n95_α
 xchain00230_n98_β:
 jmp xchain00230_n95_α
# IR_ASSIGN gva
 xchain00230_n99_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00230_n00001_α
 xchain00230_n99_β:
 jmp xchain00230_n00001_α
# IR_LIT_STRING
 xchain00230_n00001_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00230_n00155_α
 xchain00230_n00001_β:
 jmp xchain00230_n00156_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string ""
# IR_ASSIGN gva
 xchain00230_n00155_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00230_n00156_α
 xchain00230_n00155_β:
 jmp xchain00230_n00156_α
# IR_VAR
 xchain00230_n00156_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00230_n00158_α
 xchain00230_n00156_β:
 jmp xchain00230_n00002_α
 xchain00230_n00158_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn1225: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1225]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00230_n00002_α
 jmp xchain00230_n00161_α
 xchain00230_n00158_β:
 jmp xchain00230_n00002_α
 xchain00230_n00002_α:
  .section .rodata
  .Lcall00262_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00262_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00230_n00002_β:
 jmp main_ω
# IR_ASSIGN gva
 xchain00230_n00161_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00230_n00003_α
 xchain00230_n00161_β:
 jmp xchain00230_n00002_α
# IR_VAR
 xchain00230_n00003_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00230_n00160_α
 xchain00230_n00003_β:
 jmp xchain00230_n00004_α
# IR_UNOP
 xchain00230_n00160_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_size_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00230_n00159_α
 xchain00230_n00160_β:
 jmp xchain00230_n00004_α
# IR_VAR
 xchain00230_n00004_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00230_n00163_α
 xchain00230_n00004_β:
 jmp xchain00230_n00170_α
# IR_LIT_INTEGER
 xchain00230_n00159_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00230_n00166_α
 xchain00230_n00159_β:
 jmp xchain00230_n00004_α
.Lx00263_0:
 .quad 0
 xchain00230_n00163_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+608]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn1233: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1233]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain00230_n00170_α
 jmp xchain00230_n00167_α
 xchain00230_n00163_β:
 jmp xchain00230_n00170_α
 xchain00230_n00164_α:
 jmp xchain00230_n00170_α
xchain00230_n00164_β:
 jmp xchain00230_n00170_α
 xchain00230_n00166_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00264_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx00264_2
.Lx00264_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 776]
 cmp rax, rcx
 je xchain00230_n00004_α
 mov rcx, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rcx
 jmp xchain00230_n00169_α
.Lx00264_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 10
 lea r9, [r12 + 720]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00264_1
 cmp eax, 1
 je xchain00230_n00004_α
 jmp xchain00230_n00169_α
.Lx00264_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00230_n00004_α
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
 jmp xchain00230_n00169_α
 xchain00230_n00166_β:
 jmp xchain00230_n00004_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00230_n00167_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00230_n00164_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00230_n00168_α
 xchain00230_n00167_β:
 jmp xchain00230_n00265_α
# IR_VAR
 xchain00230_n00170_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00230_n00006_α
 xchain00230_n00170_β:
 jmp xchain00230_n00156_α
# IR_VAR
 xchain00230_n00169_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00230_n00266_α
 xchain00230_n00169_β:
 jmp xchain00230_n00004_α
 xchain00230_n00168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00230_n00265_α
 xchain00230_n00168_β:
 jmp xchain00230_n00265_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00230_n00005_α:
 jmp qword ptr [r12 + 576]
 xchain00230_n00005_β:
 jmp xchain00230_n00265_α
 xchain00230_n00006_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1244: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1244]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00230_n00156_α
 jmp xchain00230_n00267_α
 xchain00230_n00006_β:
 jmp xchain00230_n00156_α
 xchain00230_n00266_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+688]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn1246: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1246]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain00230_n00004_α
 jmp xchain00230_n00268_α
 xchain00230_n00266_β:
 jmp xchain00230_n00004_α
# IR_VAR_REF
 xchain00230_n00265_α:
 lea rdi, [r12 + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00230_n00269_α
 xchain00230_n00265_β:
 jmp xchain00230_n00270_α
 xchain00230_n00267_α:
 jmp xchain00230_n00156_α
xchain00230_n00267_β:
 jmp xchain00230_n00156_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00230_n00268_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00230_n00004_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00230_n00004_α
 xchain00230_n00268_β:
 jmp xchain00230_n00004_α
# IR_LIT_INTEGER
 xchain00230_n00269_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00230_n00272_α
 xchain00230_n00269_β:
 jmp xchain00230_n00270_α
.Lx00271_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00230_n00007_α:
 jmp qword ptr [r12 + 656]
 xchain00230_n00007_β:
 jmp xchain00230_n00004_α
# IR_SUBSCRIPT x[i] variable
 xchain00230_n00272_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00230_n00270_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00230_n00273_α
 xchain00230_n00272_β:
 jmp xchain00230_n00270_α
# IR_DEREF variable -> value
 xchain00230_n00273_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00230_n00270_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00230_n00274_α
 xchain00230_n00273_β:
 jmp xchain00230_n00270_α
# IR_VAR
 xchain00230_n00270_α:
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 200], rax
 jmp xchain00230_n00275_α
 xchain00230_n00270_β:
 jmp xchain00230_n00003_α
# IR_LIT_STRING
 xchain00230_n00274_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00230_n00277_α
 xchain00230_n00274_β:
 jmp xchain00230_n00270_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "\\"
# IR_LIST_BANG
 xchain00230_n00275_α:
 mov qword ptr [r12 + 176], 0
.Lx00278_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 176]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp rax, 99
 je xchain00230_n00003_α
 jmp xchain00230_n00279_α
 xchain00230_n00275_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00278_0
 xchain00230_n00277_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00230_n00270_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00230_n00280_α
 xchain00230_n00277_β:
 jmp xchain00230_n00270_α
# IR_VAR
 xchain00230_n00279_α:
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 264], rax
 jmp xchain00230_n00281_α
 xchain00230_n00279_β:
 jmp xchain00230_n00003_α
# IR_VAR
 xchain00230_n00280_α:
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 456], rax
 jmp xchain00230_n00282_α
 xchain00230_n00280_β:
 jmp xchain00230_n00270_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain00230_n00281_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 lea rdx, [r12 + 224]
 mov ecx, 1
 call rt_call_value@PLT
 cmp eax, 99
 je xchain00230_n00003_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00230_n00283_α
 xchain00230_n00281_β:
 jmp xchain00230_n00003_α
# IR_LIT_INTEGER
 xchain00230_n00282_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00230_n00285_α
 xchain00230_n00282_β:
 jmp xchain00230_n00270_α
.Lx00284_0:
 .quad 1
 xchain00230_n00286_α:
 jmp xchain00230_n00270_α
xchain00230_n00286_β:
 jmp xchain00230_n00270_α
 xchain00230_n00283_α:
 jmp xchain00230_n00003_α
xchain00230_n00283_β:
 jmp xchain00230_n00003_α
# IR_LIT_INTEGER
 xchain00230_n00285_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00230_n00288_α
 xchain00230_n00285_β:
 jmp xchain00230_n00270_α
.Lx00287_0:
 .quad 18446744073709551615
# IR_SUBSCRIPT section
 xchain00230_n00288_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8, qword ptr [r12 + 480]
 mov r9, qword ptr [r12 + 488]
 call subscript_get2@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00230_n00289_α
 xchain00230_n00288_β:
 jmp xchain00230_n00270_α
# IR_VAR
 xchain00230_n00289_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00230_n00290_α
 xchain00230_n00289_β:
 jmp xchain00230_n00270_α
 xchain00230_n00290_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+512]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn1276: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1276]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00230_n00270_α
 jmp xchain00230_n00291_α
 xchain00230_n00290_β:
 jmp xchain00230_n00270_α
 xchain00230_n00291_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00230_n00292_α
 xchain00230_n00291_β:
 jmp xchain00230_n00270_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00230_n00292_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00230_n00286_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00230_n00008_α
 xchain00230_n00292_β:
 jmp xchain00230_n00265_α
 xchain00230_n00008_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00230_n00265_α
 xchain00230_n00008_β:
 jmp xchain00230_n00265_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00230_n00293_α:
 jmp qword ptr [r12 + 400]
 xchain00230_n00293_β:
 jmp xchain00230_n00265_α
main_β:
jmp main_ω
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
 mov rdi, qword ptr [r12 + 2880]
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
