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
proc_alts_α_body:
xchain0_n0_α:
# IR_MAKE_LIST
bb1_α:
 lea rdi, [r12 + 464]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n17_α
xchain0_n3_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n17_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n15_α
xchain0_n5_α:
# IR_LIT_CHARSET
bb6_α:
 mov qword ptr [r12 + 320], 1
 mov dword ptr [r12 + 324], -1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n9_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "|"
xchain0_n6_α:
# IR_SCAN_UPTO
bb7_α:
 mov qword ptr [r12 + 304], r14
.Lx12_0:
 mov rax, qword ptr [r12 + 304]
 cmp rax, r15
 jge xchain0_n9_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx12_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx12_1
 mov qword ptr [r12 + 288], 6
 add rax, 1
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n7_α
.Lx12_1:
 inc qword ptr [r12 + 304]
 jmp .Lx12_0
 xchain0_n6_β:
 inc qword ptr [r12 + 304]
 jmp .Lx12_0
.Lx12_2:
 .quad .Lx12_2_s
.Lx12_2_s:
 .string "|"
xchain0_n7_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb8_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain0_n9_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n15_α
xchain0_n8_α:
# IR_SCAN_TAB
bb9_α:
 mov rax, qword ptr [r12 + 248]
 cmp rax, 1
 jge .Lx16_0
 add rax, r15
 add rax, 1
.Lx16_0:
 cmp rax, 1
 jl xchain0_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n15_α
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
 jmp xchain0_n11_α
 xchain0_n8_β:
 mov r14, qword ptr [r12 + 224]
 jmp xchain0_n15_α
xchain0_n9_α:
# IR_LIT_INTEGER
bb10_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n13_α
 xchain0_n9_β:
 jmp xchain0_n15_α
.Lx17_0:
 .quad 0
xchain0_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb11_α:
 jmp qword ptr [r12 + 256]
 xchain0_n10_β:
 jmp xchain0_n15_α
xchain0_n11_α:
bb12_α:
  .section .rodata
  .Lcall12_pname: .string "syms"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall12_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
xchain0_n11_β:
 jmp xchain0_n15_α
xchain0_n12_α:
 jmp xchain0_n15_α
xchain0_n12_β:
 jmp xchain0_n15_α
xchain0_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb14_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain0_n12_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain0_n8_α
 xchain0_n13_β:
 jmp xchain0_n15_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn25: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n17_α
xchain0_n16_α:
# IR_LIT_INTEGER
bb17_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n15_α
.Lx28_0:
 .quad 1
xchain0_n17_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp proc_alts_ω
xchain0_n18_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb19_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain0_n15_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain0_n15_α
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
 xchain0_n18_β:
 mov r14, qword ptr [r12 + 384]
 jmp xchain0_n15_α
xchain0_n19_α:
# IR_RETURN
bb20_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_alts_γ
xchain0_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb21_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
 lea rax, [rip + xchain0_n21_α]
 mov qword ptr [r12 + 352], rax
 jmp xchain0_n4_α
 xchain0_n20_β:
 jmp xchain0_n4_α
xchain0_n21_α:
 jmp xchain0_n15_α
xchain0_n21_β:
 jmp xchain0_n15_α
xchain0_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb23_α:
 jmp qword ptr [r12 + 352]
 xchain0_n22_β:
 jmp xchain0_n4_α
proc_alts_β:
jmp proc_alts_ω
proc_alts_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_alts_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_comment_α_body:
xchain39_n0_α:
# IR_VAR_REF local
bb24_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain39_n1_α
 xchain39_n0_β:
 jmp proc_comment_ω
xchain39_n1_α:
# IR_LIT_INTEGER
bb25_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain39_n2_α
 xchain39_n1_β:
 jmp proc_comment_ω
.Lx42_0:
 .quad 1
xchain39_n2_α:
# IR_SUBSCRIPT x[i] variable
bb26_α:
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
xchain39_n3_α:
# IR_DEREF variable -> value
bb27_α:
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
xchain39_n4_α:
# IR_LIT_STRING
bb28_α:
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
bb29_α:
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
xchain39_n6_α:
# IR_RETURN
bb30_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_comment_γ
proc_comment_β:
jmp proc_comment_ω
proc_comment_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_comment_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_define_α_body:
xchain48_n0_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain48_n1_α
 xchain48_n0_β:
 jmp proc_define_ω
xchain48_n1_α:
# IR_GEN_SCAN
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
xchain48_n2_α:
# IR_VAR_REF gva
bb33_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain48_n3_α
 xchain48_n2_β:
 jmp xchain48_n10_α
xchain48_n3_α:
# IR_LIT_STRING
bb34_α:
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
xchain48_n4_α:
# IR_SCAN_MATCH
bb35_α:
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
xchain48_n5_α:
# IR_SCAN_TAB
bb36_α:
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
xchain48_n6_α:
# IR_LIT_STRING
bb37_α:
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
xchain48_n7_α:
# IR_SCAN_FIND
bb38_α:
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
xchain48_n8_α:
# IR_SCAN_TAB
bb39_α:
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
xchain48_n10_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_define_ω
 xchain48_n10_β:
 jmp proc_define_ω
xchain48_n11_α:
# IR_SUBSCRIPT x[i] variable
bb42_α:
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
xchain48_n12_α:
# IR_LIT_INTEGER
bb43_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain48_n13_α
 xchain48_n12_β:
 jmp xchain48_n14_α
.Lx69_0:
 .quad 4
xchain48_n13_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb44_α:
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
xchain48_n14_α:
# IR_LIT_INTEGER
bb45_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain48_n15_α
 xchain48_n14_β:
 jmp xchain48_n10_α
.Lx72_0:
 .quad 0
xchain48_n15_α:
# IR_SCAN_TAB
bb46_α:
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
bb47_α:
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
xchain48_n18_α:
# IR_ASSIGN_VAR write through variable
bb49_α:
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
xchain48_n19_α:
# IR_GEN_SCAN
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
xchain48_n20_α:
# IR_RETURN
bb51_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_define_γ
proc_define_β:
jmp proc_define_ω
proc_define_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_define_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_defnon_α_body:
xchain81_n0_α:
# IR_VAR
bb52_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 488], rax
 jmp xchain81_n1_α
 xchain81_n0_β:
 jmp xchain81_n7_α
xchain81_n1_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain81_n2_α
 xchain81_n1_β:
 jmp xchain81_n7_α
xchain81_n2_α:
# IR_LIT_STRING
bb54_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain81_n3_α
 xchain81_n2_β:
 jmp xchain81_n5_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "'"
xchain81_n3_α:
# IR_SCAN_MATCH
bb55_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain81_n5_α
 mov rdi, qword ptr [rip + .Lx88_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain81_n5_α
 mov qword ptr [r12 + 432], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 440], rax
 jmp xchain81_n4_α
 xchain81_n3_β:
 jmp xchain81_n5_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "'"
xchain81_n4_α:
# IR_SCAN_TAB
bb56_α:
 mov rax, qword ptr [r12 + 440]
 cmp rax, 1
 jge .Lx90_0
 add rax, r15
 add rax, 1
.Lx90_0:
 cmp rax, 1
 jl xchain81_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n5_α
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
 jmp xchain81_n6_α
 xchain81_n4_β:
 mov r14, qword ptr [r12 + 416]
 jmp xchain81_n5_α
xchain81_n5_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 160]
 mov r14, qword ptr [r12 + 168]
 mov r15, qword ptr [r12 + 176]
 jmp xchain81_n7_α
 xchain81_n5_β:
 jmp xchain81_n7_α
xchain81_n6_α:
# IR_LIT_INTEGER
bb58_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain81_n8_α
 xchain81_n6_β:
 jmp xchain81_n5_α
.Lx93_0:
 .quad 18446744073709551615
xchain81_n7_α:
# IR_VAR
bb59_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain81_n9_α
 xchain81_n7_β:
 jmp proc_defnon_ω
xchain81_n8_α:
# IR_SCAN_TAB
bb60_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx97_0
 add rax, r15
 add rax, 1
.Lx97_0:
 cmp rax, 1
 jl xchain81_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n5_α
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
 jmp xchain81_n10_α
 xchain81_n8_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain81_n5_α
xchain81_n9_α:
bb61_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn99: .string "nonterm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn99]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain81_n11_α
 xchain81_n9_β:
 jmp proc_defnon_ω
xchain81_n10_α:
bb62_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn101: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain81_n5_α
 jmp xchain81_n12_α
 xchain81_n10_β:
 jmp xchain81_n5_α
xchain81_n11_α:
# IR_RETURN
bb63_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_defnon_γ
xchain81_n12_α:
bb64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain81_n13_α
 xchain81_n12_β:
 jmp xchain81_n5_α
xchain81_n13_α:
# IR_LIT_STRING
bb65_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain81_n14_α
 xchain81_n13_β:
 jmp xchain81_n5_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "'"
xchain81_n14_α:
# IR_SCAN_MATCH
bb66_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain81_n5_α
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain81_n5_α
 mov qword ptr [r12 + 256], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 264], rax
 jmp xchain81_n15_α
 xchain81_n14_β:
 jmp xchain81_n5_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "'"
xchain81_n15_α:
# IR_SCAN_TAB
bb67_α:
 mov rax, qword ptr [r12 + 264]
 cmp rax, 1
 jge .Lx00003_0
 add rax, r15
 add rax, 1
.Lx00003_0:
 cmp rax, 1
 jl xchain81_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain81_n5_α
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
 jmp xchain81_n5_α
xchain81_n16_α:
 jmp xchain81_n17_α
xchain81_n16_β:
 jmp xchain81_n5_α
xchain81_n17_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 160]
 mov r14, qword ptr [r12 + 168]
 mov r15, qword ptr [r12 + 176]
 jmp xchain81_n18_α
 xchain81_n17_β:
 jmp xchain81_n7_α
xchain81_n18_α:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 104], rax
 jmp xchain81_n19_α
 xchain81_n18_β:
 jmp proc_defnon_ω
xchain81_n19_α:
bb71_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+80]
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
xchain81_n20_α:
# IR_RETURN
bb72_α:
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
pop r12
ret
proc_defnon_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_error_α_body:
xchain00004_n0_α:
# IR_LIT_STRING
bb73_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00004_n1_α
 xchain00004_n0_β:
 jmp xchain00004_n3_α
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "*** erroneous line:  "
xchain00004_n1_α:
# IR_VAR
bb74_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00004_n2_α
 xchain00004_n1_β:
 jmp xchain00004_n3_α
xchain00004_n2_α:
bb75_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+64]
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
 je xchain00004_n3_α
 jmp xchain00004_n3_α
 xchain00004_n2_β:
 jmp xchain00004_n3_α
xchain00004_n3_α:
# IR_RETURN
bb76_α:
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
pop r12
ret
proc_error_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_gener_α_body:
xchain00006_n0_α:
# IR_VAR
bb77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00006_n1_α
 xchain00006_n0_β:
 jmp xchain00006_n3_α
xchain00006_n1_α:
bb78_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1472]
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
 je xchain00006_n3_α
 jmp xchain00006_n2_α
 xchain00006_n1_β:
 jmp xchain00006_n3_α
xchain00006_n2_α:
# IR_MAKE_LIST
bb79_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1448], rax
 lea rdi, [r12 + 1440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00006_n4_α
 xchain00006_n2_β:
 jmp xchain00006_n3_α
xchain00006_n3_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 104], rax
 jmp xchain00006_n5_α
 xchain00006_n3_β:
 jmp xchain00006_n7_α
xchain00006_n4_α:
bb81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00006_n3_α
 xchain00006_n4_β:
 jmp xchain00006_n3_α
xchain00006_n5_α:
bb82_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn135: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00006_n7_α
 jmp xchain00006_n6_α
 xchain00006_n5_β:
 jmp xchain00006_n7_α
xchain00006_n6_α:
bb83_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00006_n8_α
 xchain00006_n6_β:
 jmp xchain00006_n7_α
xchain00006_n7_α:
bb84_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn138: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_gener_ω
 jmp proc_gener_γ
 xchain00006_n7_β:
 jmp proc_gener_ω
xchain00006_n8_α:
# IR_VAR gva
bb85_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00006_n9_α
 xchain00006_n8_β:
 jmp xchain00006_n11_α
xchain00006_n9_α:
# IR_UNOP
bb86_α:
 mov eax, dword ptr [r12 + 1392]
 cmp eax, 99
 je xchain00006_n11_α
 cmp eax, 0
 je xchain00006_n11_α
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00006_n10_α
 xchain00006_n9_β:
 jmp xchain00006_n11_α
xchain00006_n10_α:
# IR_KEYWORD_read
bb87_α:
 mov rdi, qword ptr [rip + .Lx00007_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain00006_n12_α
 xchain00006_n10_β:
 jmp xchain00006_n11_α
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "&errout"
xchain00006_n11_α:
# IR_VAR
bb88_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 168], rax
 jmp xchain00006_n13_α
 xchain00006_n11_β:
 jmp xchain00006_n3_α
xchain00006_n12_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00006_n14_α
 xchain00006_n12_β:
 jmp xchain00006_n11_α
xchain00006_n13_α:
bb90_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn147: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00006_n3_α
 jmp xchain00006_n15_α
 xchain00006_n13_β:
 jmp xchain00006_n3_α
xchain00006_n14_α:
bb91_α:
  .section .rodata
  .Lcall91_pname: .string "symimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00006_n11_α
 jmp xchain00006_n16_α
xchain00006_n14_β:
 jmp xchain00006_n11_α
xchain00006_n15_α:
# IR_LIT_STRING
bb92_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00006_n17_α
 xchain00006_n15_β:
 jmp xchain00006_n3_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "string"
xchain00006_n16_α:
# IR_VAR
bb93_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00006_n18_α
 xchain00006_n16_β:
 jmp xchain00006_n11_α
xchain00006_n17_α:
bb94_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+1120]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+1136]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn153: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain00006_n20_α
 jmp xchain00006_n19_α
 xchain00006_n17_β:
 jmp xchain00006_n20_α
xchain00006_n18_α:
bb95_α:
  .section .rodata
  .Lcall95_pname: .string "listimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall95_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00006_n11_α
 jmp xchain00006_n21_α
xchain00006_n18_β:
 jmp xchain00006_n11_α
xchain00006_n19_α:
# IR_VAR
bb96_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00006_n22_α
 xchain00006_n19_β:
 jmp xchain00006_n3_α
xchain00006_n20_α:
# IR_LIT_STRING
bb97_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00006_n23_α
 xchain00006_n20_β:
 jmp xchain00006_n3_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "charset"
xchain00006_n21_α:
bb98_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1248] -> [r12+1200]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [r12+1280] -> [r12+1216]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1224], rax
# marshal arg2 = producer-box slot [r12+1328] -> [r12+1232]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn159: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain00006_n11_α
 jmp xchain00006_n24_α
 xchain00006_n21_β:
 jmp xchain00006_n11_α
xchain00006_n22_α:
bb99_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1056]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn161: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain00006_n3_α
 jmp xchain00006_n25_α
 xchain00006_n22_β:
 jmp xchain00006_n3_α
xchain00006_n23_α:
bb00010_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+992]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+1008]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn163: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain00006_n27_α
 jmp xchain00006_n26_α
 xchain00006_n23_β:
 jmp xchain00006_n27_α
xchain00006_n24_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00011_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00006_n11_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00006_n11_α
 xchain00006_n24_β:
 jmp xchain00006_n11_α
xchain00006_n25_α:
bb00012_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00006_n29_α
 xchain00006_n25_β:
 jmp xchain00006_n3_α
xchain00006_n26_α:
# IR_VAR
bb00013_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 936], rax
 jmp xchain00006_n30_α
 xchain00006_n26_β:
 jmp xchain00006_n3_α
xchain00006_n27_α:
# IR_LIT_STRING
bb00001_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00006_n31_α
 xchain00006_n27_β:
 jmp xchain00006_n3_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "nonterm"
xchain00006_n28_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00015_α:
 jmp qword ptr [r12 + 1168]
 xchain00006_n28_β:
 jmp xchain00006_n11_α
xchain00006_n29_α:
# IR_VAR
bb00002_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 120], rax
 jmp xchain00006_n32_α
 xchain00006_n29_β:
 jmp xchain00006_n3_α
xchain00006_n30_α:
# IR_FIELD_GET
bb00016_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00006_n3_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00006_n33_α
 xchain00006_n30_β:
 jmp xchain00006_n3_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "chars"
xchain00006_n31_α:
bb00003_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+816]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+832]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn176: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn176]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain00006_n3_α
 jmp xchain00006_n34_α
 xchain00006_n31_β:
 jmp xchain00006_n3_α
xchain00006_n32_α:
 jmp xchain00006_n3_α
xchain00006_n32_β:
 jmp xchain00006_n3_α
xchain00006_n33_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb00018_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00006_n3_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00006_n35_α
 xchain00006_n33_β:
 jmp xchain00006_n3_α
xchain00006_n34_α:
# IR_VAR_REF gva
bb00019_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00006_n36_α
 xchain00006_n34_β:
 jmp xchain00006_n42_α
xchain00006_n35_α:
# IR_DEREF variable -> value
bb00020_α:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00006_n3_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00006_n37_α
 xchain00006_n35_β:
 jmp xchain00006_n3_α
xchain00006_n36_α:
# IR_VAR
bb00021_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 712], rax
 jmp xchain00006_n38_α
 xchain00006_n36_β:
 jmp xchain00006_n42_α
xchain00006_n37_α:
bb00022_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+880]
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
 je xchain00006_n3_α
 jmp xchain00006_n39_α
 xchain00006_n37_β:
 jmp xchain00006_n3_α
xchain00006_n38_α:
# IR_FIELD_GET
bb00023_α:
 mov rdi, qword ptr [rip + .Lx00024_0]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00006_n42_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00006_n40_α
 xchain00006_n38_β:
 jmp xchain00006_n42_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "name"
xchain00006_n39_α:
bb00025_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00006_n29_α
 xchain00006_n39_β:
 jmp xchain00006_n3_α
xchain00006_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00004_α:
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00006_n42_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00006_n41_α
 xchain00006_n40_β:
 jmp xchain00006_n42_α
xchain00006_n41_α:
# IR_DEREF variable -> value
bb00005_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00006_n42_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00006_n43_α
 xchain00006_n41_β:
 jmp xchain00006_n42_α
xchain00006_n42_α:
# IR_KEYWORD_read
bb00026_α:
 mov rdi, qword ptr [rip + .Lx00027_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00006_n44_α
 xchain00006_n42_β:
 jmp xchain00006_n7_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "&errout"
xchain00006_n43_α:
# IR_UNOP
bb00028_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00006_n42_α
 cmp eax, 0
 je xchain00006_n42_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 664], rax
 jmp xchain00006_n45_α
 xchain00006_n43_β:
 jmp xchain00006_n42_α
xchain00006_n44_α:
# IR_LIT_STRING
bb00029_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00006_n46_α
 xchain00006_n44_β:
 jmp xchain00006_n7_α
.Lx00030_0:
 .quad .Lx00030_0_s
.Lx00030_0_s:
 .string "*** undefined nonterminal:  <"
xchain00006_n45_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb00031_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00006_n42_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00006_n47_α
 xchain00006_n45_β:
 jmp xchain00006_n42_α
xchain00006_n46_α:
# IR_VAR
bb00032_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 600], rax
 jmp xchain00006_n48_α
 xchain00006_n46_β:
 jmp xchain00006_n7_α
xchain00006_n47_α:
# IR_DEREF variable -> value
bb00006_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00006_n42_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00006_n49_α
 xchain00006_n47_β:
 jmp xchain00006_n42_α
xchain00006_n48_α:
# IR_FIELD_GET
bb00033_α:
 mov rdi, qword ptr [rip + .Lx00034_0]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00006_n7_α
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00006_n50_α
 xchain00006_n48_β:
 jmp xchain00006_n7_α
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "name"
xchain00006_n49_α:
# IR_VAR
bb00035_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 776], rax
 jmp xchain00006_n51_α
 xchain00006_n49_β:
 jmp xchain00006_n42_α
xchain00006_n50_α:
# IR_LIT_STRING
bb00036_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00006_n52_α
 xchain00006_n50_β:
 jmp xchain00006_n7_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string ">"
xchain00006_n51_α:
bb00038_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call str_concat_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00006_n53_α
 xchain00006_n51_β:
 jmp xchain00006_n42_α
xchain00006_n52_α:
bb00039_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+464]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+480]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [r12+576] -> [r12+496]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 504], rax
# marshal arg3 = producer-box slot [r12+608] -> [r12+512]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn203: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 464]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00006_n7_α
 jmp xchain00006_n7_α
 xchain00006_n52_β:
 jmp xchain00006_n7_α
xchain00006_n53_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00040_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 424], rax
 lea rax, [rip + xchain00006_n42_α]
 mov qword ptr [r12 + 432], rax
 jmp xchain00006_n55_α
 xchain00006_n53_β:
 jmp xchain00006_n57_α
xchain00006_n54_α:
 jmp xchain00006_n7_α
xchain00006_n54_β:
 jmp xchain00006_n7_α
xchain00006_n55_α:
bb00041_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00006_n57_α
 xchain00006_n55_β:
 jmp xchain00006_n57_α
xchain00006_n56_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00042_α:
 jmp qword ptr [r12 + 432]
 xchain00006_n56_β:
 jmp xchain00006_n57_α
xchain00006_n57_α:
# IR_VAR
bb00043_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 360], rax
 jmp xchain00006_n58_α
 xchain00006_n57_β:
 jmp xchain00006_n3_α
xchain00006_n58_α:
# IR_UNOP
bb00044_α:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 call rt_size_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00006_n59_α
 xchain00006_n58_β:
 jmp xchain00006_n3_α
xchain00006_n59_α:
# IR_VAR gva
bb00045_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00006_n60_α
 xchain00006_n59_β:
 jmp xchain00006_n3_α
xchain00006_n60_α:
# IR_UNOP
bb00046_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00006_n3_α
 cmp eax, 0
 je xchain00006_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
 jmp xchain00006_n61_α
 xchain00006_n60_β:
 jmp xchain00006_n3_α
xchain00006_n61_α:
bb00047_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 100
 je .Lx00048_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx00048_2
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx00048_2
.Lx00048_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jle xchain00006_n3_α
 mov rcx, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rcx
 mov rcx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rcx
 jmp xchain00006_n62_α
.Lx00048_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 7
 lea r9, [r12 + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00048_1
 cmp eax, 1
 je xchain00006_n3_α
 jmp xchain00006_n62_α
.Lx00048_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00006_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
 jmp xchain00006_n62_α
 xchain00006_n61_β:
 jmp xchain00006_n3_α
xchain00006_n62_α:
# IR_KEYWORD_read
bb00049_α:
 mov rdi, qword ptr [rip + .Lx00050_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00006_n63_α
 xchain00006_n62_β:
 jmp xchain00006_n7_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "&errout"
xchain00006_n63_α:
# IR_LIT_STRING
bb00051_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00006_n64_α
 xchain00006_n63_β:
 jmp xchain00006_n7_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "*** excessive symbols remaining"
xchain00006_n64_α:
bb00007_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+256]
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
 je xchain00006_n7_α
 jmp xchain00006_n7_α
 xchain00006_n64_β:
 jmp xchain00006_n7_α
xchain00006_n65_α:
 jmp xchain00006_n7_α
xchain00006_n65_β:
 jmp xchain00006_n7_α
proc_gener_β:
jmp proc_gener_ω
proc_gener_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_gener_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_generate_α_body:
 mov qword ptr [r12 + 496], 0
xchain00053_n0_α:
# IR_VAR
bb00054_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain00053_n1_α
 xchain00053_n0_β:
 jmp proc_generate_ω
xchain00053_n1_α:
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
 jmp xchain00053_n2_α
 xchain00053_n1_β:
 jmp proc_generate_ω
xchain00053_n2_α:
# IR_LIT_STRING
bb00055_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00053_n3_α
 xchain00053_n2_β:
 jmp xchain00053_n5_α
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "<"
xchain00053_n3_α:
# IR_SCAN_MATCH
bb00057_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00053_n5_α
 mov rdi, qword ptr [rip + .Lx00058_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00053_n5_α
 mov qword ptr [r12 + 640], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 648], rax
 jmp xchain00053_n4_α
 xchain00053_n3_β:
 jmp xchain00053_n5_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "<"
xchain00053_n4_α:
# IR_SCAN_TAB
bb00059_α:
 mov rax, qword ptr [r12 + 648]
 cmp rax, 1
 jge .Lx00060_0
 add rax, r15
 add rax, 1
.Lx00060_0:
 cmp rax, 1
 jl xchain00053_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00053_n5_α
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
 jmp xchain00053_n6_α
 xchain00053_n4_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00053_n5_α
xchain00053_n5_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 176]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 176]
 mov r14, qword ptr [r12 + 184]
 mov r15, qword ptr [r12 + 192]
 jmp proc_generate_ω
 xchain00053_n5_β:
 jmp proc_generate_ω
xchain00053_n6_α:
# IR_LIT_INTEGER
bb00008_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00053_n7_α
 xchain00053_n6_β:
 jmp xchain00053_n5_α
.Lx00061_0:
 .quad 1
xchain00053_n7_α:
# IR_LIT_CHARSET
bb00062_α:
 mov qword ptr [r12 + 592], 1
 mov dword ptr [r12 + 596], -1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00053_n8_α
 xchain00053_n7_β:
 jmp xchain00053_n5_α
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string ">"
xchain00053_n8_α:
# IR_SCAN_UPTO
bb00064_α:
 mov qword ptr [r12 + 576], r14
.Lx00065_0:
 mov rax, qword ptr [r12 + 576]
 cmp rax, r15
 jge xchain00053_n5_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00065_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00065_1
 mov qword ptr [r12 + 560], 6
 add rax, 1
 mov qword ptr [r12 + 568], rax
 jmp xchain00053_n9_α
.Lx00065_1:
 inc qword ptr [r12 + 576]
 jmp .Lx00065_0
 xchain00053_n8_β:
 inc qword ptr [r12 + 576]
 jmp .Lx00065_0
.Lx00065_2:
 .quad .Lx00065_2_s
.Lx00065_2_s:
 .string ">"
xchain00053_n9_α:
# IR_SCAN_TAB
bb00066_α:
 mov rax, qword ptr [r12 + 568]
 cmp rax, 1
 jge .Lx00067_0
 add rax, r15
 add rax, 1
.Lx00067_0:
 cmp rax, 1
 jl xchain00053_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00053_n5_α
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
 jmp xchain00053_n10_α
 xchain00053_n9_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain00053_n5_α
xchain00053_n10_α:
# IR_LIMIT
bb00068_α:
 mov rax, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 520]
 cmp rax, rcx
 jge xchain00053_n5_α
 inc qword ptr [r12 + 496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
 jmp xchain00053_n11_α
 xchain00053_n10_β:
 jmp xchain00053_n9_β
xchain00053_n11_α:
bb00069_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00053_n12_α
 xchain00053_n11_β:
 jmp xchain00053_n5_α
xchain00053_n12_α:
# IR_LIT_INTEGER
bb00070_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00053_n13_α
 xchain00053_n12_β:
 jmp xchain00053_n5_α
.Lx00071_0:
 .quad 1
xchain00053_n13_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00072_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00053_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00053_n5_α
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
 jmp xchain00053_n14_α
 xchain00053_n13_β:
 mov r14, qword ptr [r12 + 432]
 jmp xchain00053_n5_α
xchain00053_n14_α:
# IR_LIT_INTEGER
bb00009_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00053_n15_α
 xchain00053_n14_β:
 jmp xchain00053_n17_α
.Lx00073_0:
 .quad 0
xchain00053_n15_α:
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
bb00074_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00075_0
 add rax, r15
 add rax, 1
.Lx00075_0:
 cmp rax, 1
 jl xchain00053_n17_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00053_n17_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00053_n17_α
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain00053_n16_α
 xchain00053_n15_β:
 jmp xchain00053_n17_α
xchain00053_n16_α:
# IR_LIT_INTEGER
bb00076_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00053_n18_α
 xchain00053_n16_β:
 jmp xchain00053_n17_α
.Lx00077_0:
 .quad 1
xchain00053_n17_α:
# IR_LIT_INTEGER
bb00078_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00053_n19_α
 xchain00053_n17_β:
 jmp xchain00053_n5_α
.Lx00079_0:
 .quad 0
xchain00053_n18_α:
 jmp xchain00053_n20_α
xchain00053_n18_β:
 jmp xchain00053_n17_α
xchain00053_n19_α:
# IR_SCAN_TAB
bb00080_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00081_0
 add rax, r15
 add rax, 1
.Lx00081_0:
 cmp rax, 1
 jl xchain00053_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00053_n5_α
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
 jmp xchain00053_n21_α
 xchain00053_n19_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain00053_n5_α
xchain00053_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00082_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00053_n24_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00053_n23_α
 xchain00053_n20_β:
 jmp xchain00053_n5_α
xchain00053_n21_α:
bb00083_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+304]
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
 je xchain00053_n5_α
 jmp xchain00053_n26_α
 xchain00053_n21_β:
 jmp xchain00053_n5_α
xchain00053_n22_α:
 jmp xchain00053_n5_α
xchain00053_n22_β:
 jmp xchain00053_n5_α
xchain00053_n23_α:
bb00084_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00053_n27_α
 xchain00053_n23_β:
 jmp xchain00053_n5_α
xchain00053_n24_α:
 jmp xchain00053_n17_α
xchain00053_n24_β:
 jmp xchain00053_n17_α
xchain00053_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00085_α:
 jmp qword ptr [r12 + 272]
 xchain00053_n25_β:
 jmp xchain00053_n5_α
xchain00053_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00014_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00053_n22_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00053_n23_α
 xchain00053_n26_β:
 jmp xchain00053_n5_α
xchain00053_n27_α:
 jmp xchain00053_n28_α
xchain00053_n27_β:
 jmp xchain00053_n5_α
xchain00053_n28_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 176]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 176]
 mov r14, qword ptr [r12 + 184]
 mov r15, qword ptr [r12 + 192]
 jmp xchain00053_n29_α
 xchain00053_n28_β:
 jmp proc_generate_ω
xchain00053_n29_α:
# IR_LIT_INTEGER
bb00086_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00053_n30_α
 xchain00053_n29_β:
 jmp xchain00053_n34_α
.Lx00087_0:
 .quad 1
xchain00053_n30_α:
# IR_VAR
bb00088_α:
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 120], rax
 jmp xchain00053_n31_α
 xchain00053_n30_β:
 jmp xchain00053_n34_α
xchain00053_n31_α:
# IR_TO
bb00017_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00089_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00053_n34_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00053_n32_α
 xchain00053_n31_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00089_0
xchain00053_n32_α:
# IR_VAR
bb00090_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 168], rax
 jmp xchain00053_n33_α
 xchain00053_n32_β:
 jmp xchain00053_n31_β
xchain00053_n33_α:
bb00091_α:
  .section .rodata
  .Lcall00091_pname: .string "gener"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00091_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00053_n31_β
 jmp xchain00053_n31_β
xchain00053_n33_β:
 jmp xchain00053_n31_β
xchain00053_n34_α:
# IR_RETURN
bb00092_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_generate_γ
proc_generate_β:
jmp proc_generate_ω
proc_generate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_generate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_getrhs_α_body:
xchain00093_n0_α:
# IR_LIT_STRING
bb00094_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00093_n1_α
 xchain00093_n0_β:
 jmp xchain00093_n2_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string ""
xchain00093_n1_α:
bb00096_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00093_n2_α
 xchain00093_n1_β:
 jmp xchain00093_n2_α
xchain00093_n2_α:
# IR_VAR
bb00097_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 136], rax
 jmp xchain00093_n3_α
 xchain00093_n2_β:
 jmp xchain00093_n7_α
xchain00093_n3_α:
# IR_VAR
bb00098_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00093_n4_α
 xchain00093_n3_β:
 jmp xchain00093_n7_α
xchain00093_n4_α:
# IR_LIST_BANG
bb00099_α:
 mov qword ptr [r12 + 208], 0
.Lx00100_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 208]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp rax, 99
 je xchain00093_n7_α
 jmp xchain00093_n5_α
 xchain00093_n4_β:
 inc qword ptr [r12 + 208]
 jmp .Lx00100_0
xchain00093_n5_α:
bb00101_α:
  .section .rodata
  .Lcall00101_pname: .string "listimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00101_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00093_n7_α
 jmp xchain00093_n6_α
xchain00093_n5_β:
 jmp xchain00093_n7_α
xchain00093_n6_α:
# IR_LIT_STRING
bb00102_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00093_n8_α
 xchain00093_n6_β:
 jmp xchain00093_n4_β
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "|"
xchain00093_n7_α:
# IR_VAR
bb00104_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 56], rax
 jmp xchain00093_n9_α
 xchain00093_n7_β:
 jmp proc_getrhs_ω
xchain00093_n8_α:
bb00024_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00093_n10_α
 xchain00093_n8_β:
 jmp xchain00093_n7_α
xchain00093_n9_α:
# IR_LIT_INTEGER
bb00105_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00093_n11_α
 xchain00093_n9_β:
 jmp proc_getrhs_ω
.Lx00106_0:
 .quad 1
xchain00093_n10_α:
bb00107_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00093_n12_α
 xchain00093_n10_β:
 jmp xchain00093_n7_α
xchain00093_n11_α:
# IR_LIT_INTEGER
bb00108_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00093_n13_α
 xchain00093_n11_β:
 jmp proc_getrhs_ω
.Lx00109_0:
 .quad 18446744073709551615
xchain00093_n12_α:
bb00027_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00093_n4_β
 xchain00093_n12_β:
 jmp xchain00093_n7_α
xchain00093_n13_α:
# IR_SUBSCRIPT section
bb00110_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
 call subscript_get2@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00093_n14_α
 xchain00093_n13_β:
 jmp proc_getrhs_ω
xchain00093_n14_α:
# IR_RETURN
bb00030_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getrhs_γ
proc_getrhs_β:
jmp proc_getrhs_ω
proc_getrhs_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_getrhs_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_grammar_α_body:
xchain00111_n0_α:
# IR_VAR
bb00112_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00111_n1_α
 xchain00111_n0_β:
 jmp proc_grammar_ω
xchain00111_n1_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00111_n2_α
 xchain00111_n1_β:
 jmp proc_grammar_ω
xchain00111_n2_α:
# IR_LIT_STRING
bb00113_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00111_n3_α
 xchain00111_n2_β:
 jmp xchain00111_n6_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "->"
xchain00111_n3_α:
# IR_SCAN_FIND
bb00115_α:
 mov qword ptr [r12 + 1200], r14
.Lx00116_0:
 mov rax, qword ptr [r12 + 1200]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00111_n6_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 45
 jne .Lx00116_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx00116_1
 mov qword ptr [r12 + 1184], 6
 add rax, 1
 mov qword ptr [r12 + 1192], rax
 jmp xchain00111_n4_α
.Lx00116_1:
 inc qword ptr [r12 + 1200]
 jmp .Lx00116_0
 xchain00111_n3_β:
 inc qword ptr [r12 + 1200]
 jmp .Lx00116_0
xchain00111_n4_α:
# IR_SCAN_TAB
bb00034_α:
 mov rax, qword ptr [r12 + 1192]
 cmp rax, 1
 jge .Lx00117_0
 add rax, r15
 add rax, 1
.Lx00117_0:
 cmp rax, 1
 jl xchain00111_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00111_n6_α
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
 jmp xchain00111_n5_α
 xchain00111_n4_β:
 mov r14, qword ptr [r12 + 1168]
 jmp xchain00111_n6_α
xchain00111_n5_α:
bb00118_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00111_n7_α
 xchain00111_n5_β:
 jmp xchain00111_n6_α
xchain00111_n6_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 576]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 576]
 mov r14, qword ptr [r12 + 584]
 mov r15, qword ptr [r12 + 592]
 jmp proc_grammar_ω
 xchain00111_n6_β:
 jmp proc_grammar_ω
xchain00111_n7_α:
# IR_LIT_INTEGER
bb00037_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00111_n8_α
 xchain00111_n7_β:
 jmp xchain00111_n6_α
.Lx00119_0:
 .quad 2
xchain00111_n8_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00120_α:
 mov rax, 2
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00111_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00111_n6_α
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
 jmp xchain00111_n9_α
 xchain00111_n8_β:
 mov r14, qword ptr [r12 + 1104]
 jmp xchain00111_n6_α
xchain00111_n9_α:
# IR_LIT_INTEGER
bb00121_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00111_n10_α
 xchain00111_n9_β:
 jmp xchain00111_n6_α
.Lx00122_0:
 .quad 0
xchain00111_n10_α:
# IR_SCAN_TAB
bb00123_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00124_0
 add rax, r15
 add rax, 1
.Lx00124_0:
 cmp rax, 1
 jl xchain00111_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00111_n6_α
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
 jmp xchain00111_n11_α
 xchain00111_n10_β:
 mov r14, qword ptr [r12 + 1056]
 jmp xchain00111_n6_α
xchain00111_n11_α:
bb00125_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00111_n12_α
 xchain00111_n11_β:
 jmp xchain00111_n6_α
xchain00111_n12_α:
# IR_VAR
bb00126_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00111_n13_α
 xchain00111_n12_β:
 jmp xchain00111_n15_α
xchain00111_n13_α:
# IR_UNOP
bb00127_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_size_d@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00111_n14_α
 xchain00111_n13_β:
 jmp xchain00111_n15_α
xchain00111_n14_α:
# IR_LIT_INTEGER
bb00128_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00111_n16_α
 xchain00111_n14_β:
 jmp xchain00111_n15_α
.Lx00129_0:
 .quad 0
xchain00111_n15_α:
# IR_VAR
bb00130_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 936], rax
 jmp xchain00111_n17_α
 xchain00111_n15_β:
 jmp xchain00111_n22_α
xchain00111_n16_α:
bb00131_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx00132_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1016]
 cmp rax, rcx
 jne xchain00111_n15_α
 mov rcx, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rcx
 mov rcx, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rcx
 jmp xchain00111_n18_α
.Lx00132_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 9
 lea r9, [r12 + 960]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00132_1
 cmp eax, 1
 je xchain00111_n15_α
 jmp xchain00111_n18_α
.Lx00132_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00111_n15_α
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
 jmp xchain00111_n18_α
 xchain00111_n16_β:
 jmp xchain00111_n15_α
xchain00111_n17_α:
# IR_LIT_STRING
bb00133_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00111_n19_α
 xchain00111_n17_β:
 jmp xchain00111_n22_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "w"
xchain00111_n18_α:
# IR_KEYWORD_read
bb00135_α:
 mov rdi, qword ptr [rip + .Lx00136_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00111_n20_α
 xchain00111_n18_β:
 jmp xchain00111_n6_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "&output"
xchain00111_n19_α:
bb00137_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+912]
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
 je xchain00111_n22_α
 jmp xchain00111_n21_α
 xchain00111_n19_β:
 jmp xchain00111_n22_α
xchain00111_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00138_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00111_n24_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00111_n23_α
 xchain00111_n20_β:
 jmp xchain00111_n6_α
xchain00111_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00139_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 728], rax
 lea rax, [rip + xchain00111_n22_α]
 mov qword ptr [r12 + 736], rax
 jmp xchain00111_n26_α
 xchain00111_n21_β:
 jmp xchain00111_n6_α
xchain00111_n22_α:
# IR_KEYWORD_read
bb00048_α:
 mov rdi, qword ptr [rip + .Lx00140_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00111_n28_α
 xchain00111_n22_β:
 jmp proc_grammar_ω
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "&errout"
xchain00111_n23_α:
bb00050_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00111_n29_α
 xchain00111_n23_β:
 jmp xchain00111_n6_α
xchain00111_n24_α:
 jmp xchain00111_n6_α
xchain00111_n24_β:
 jmp xchain00111_n6_α
xchain00111_n25_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00141_α:
 jmp qword ptr [r12 + 672]
 xchain00111_n25_β:
 jmp xchain00111_n6_α
xchain00111_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00142_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00111_n27_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00111_n23_α
 xchain00111_n26_β:
 jmp xchain00111_n6_α
xchain00111_n27_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00143_α:
 jmp qword ptr [r12 + 736]
 xchain00111_n27_β:
 jmp xchain00111_n6_α
xchain00111_n28_α:
# IR_LIT_STRING
bb00053_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00111_n30_α
 xchain00111_n28_β:
 jmp proc_grammar_ω
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "*** cannot open "
xchain00111_n29_α:
 jmp xchain00111_n31_α
xchain00111_n29_β:
 jmp xchain00111_n6_α
xchain00111_n30_α:
# IR_VAR
bb00145_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 872], rax
 jmp xchain00111_n32_α
 xchain00111_n30_β:
 jmp proc_grammar_ω
xchain00111_n31_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 576]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 576]
 mov r14, qword ptr [r12 + 584]
 mov r15, qword ptr [r12 + 592]
 jmp xchain00111_n33_α
 xchain00111_n31_β:
 jmp proc_grammar_ω
xchain00111_n32_α:
bb00146_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn348: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_grammar_ω
 jmp proc_grammar_ω
 xchain00111_n32_β:
 jmp proc_grammar_ω
xchain00111_n33_α:
# IR_VAR
bb00147_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 552], rax
 jmp xchain00111_n34_α
 xchain00111_n33_β:
 jmp xchain00111_n36_α
xchain00111_n34_α:
# IR_UNOP
bb00056_α:
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 call rt_size_d@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00111_n35_α
 xchain00111_n34_β:
 jmp xchain00111_n36_α
xchain00111_n35_α:
# IR_LIT_INTEGER
bb00148_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00111_n37_α
 xchain00111_n35_β:
 jmp xchain00111_n36_α
.Lx00149_0:
 .quad 0
xchain00111_n36_α:
# IR_VAR_REF local
bb00058_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00111_n38_α
 xchain00111_n36_β:
 jmp proc_grammar_ω
xchain00111_n37_α:
bb00150_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 jne xchain00111_n36_α
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rcx
 jmp xchain00111_n39_α
.Lx00151_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 lea r9, [r12 + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00151_1
 cmp eax, 1
 je xchain00111_n36_α
 jmp xchain00111_n39_α
.Lx00151_2:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00111_n36_α
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
 jmp xchain00111_n39_α
 xchain00111_n37_β:
 jmp xchain00111_n36_α
xchain00111_n38_α:
# IR_LIT_INTEGER
bb00060_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00111_n40_α
 xchain00111_n38_β:
 jmp proc_grammar_ω
.Lx00152_0:
 .quad 1
xchain00111_n39_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00153_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00111_n36_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00111_n41_α
 xchain00111_n39_β:
 jmp xchain00111_n41_α
xchain00111_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00154_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00111_n43_α
 xchain00111_n40_β:
 jmp proc_grammar_ω
xchain00111_n41_α:
# IR_VAR
bb00061_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 264], rax
 jmp xchain00111_n44_α
 xchain00111_n41_β:
 jmp xchain00111_n48_α
xchain00111_n42_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00063_α:
 jmp qword ptr [r12 + 304]
 xchain00111_n42_β:
 jmp xchain00111_n41_α
xchain00111_n43_α:
# IR_DEREF variable -> value
bb00155_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00111_n45_α
 xchain00111_n43_β:
 jmp proc_grammar_ω
xchain00111_n44_α:
# IR_VAR
bb00065_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 280], rax
 jmp xchain00111_n46_α
 xchain00111_n44_β:
 jmp xchain00111_n48_α
xchain00111_n45_α:
# IR_LIT_STRING
bb00156_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00111_n47_α
 xchain00111_n45_β:
 jmp proc_grammar_ω
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "<"
xchain00111_n46_α:
bb00067_α:
  .section .rodata
  .Lcall00067_pname: .string "pwrite"
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
   lea rdi, [rip + .Lcall00067_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00111_n48_α
 jmp xchain00111_n48_α
xchain00111_n46_β:
 jmp xchain00111_n48_α
xchain00111_n47_α:
bb00158_α:
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
 jmp xchain00111_n49_α
 xchain00111_n47_β:
 jmp proc_grammar_ω
xchain00111_n48_α:
# IR_VAR
bb00159_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 184], rax
 jmp xchain00111_n50_α
 xchain00111_n48_β:
 jmp xchain00111_n53_α
xchain00111_n49_α:
# IR_VAR_REF local
bb00160_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00111_n51_α
 xchain00111_n49_β:
 jmp proc_grammar_ω
xchain00111_n50_α:
# IR_UNOP
bb00071_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_size_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00111_n52_α
 xchain00111_n50_β:
 jmp xchain00111_n53_α
xchain00111_n51_α:
# IR_LIT_INTEGER
bb00161_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00111_n54_α
 xchain00111_n51_β:
 jmp proc_grammar_ω
.Lx00162_0:
 .quad 18446744073709551615
xchain00111_n52_α:
# IR_LIT_INTEGER
bb00163_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00111_n55_α
 xchain00111_n52_β:
 jmp xchain00111_n53_α
.Lx00164_0:
 .quad 0
xchain00111_n53_α:
# IR_RETURN
bb00073_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_grammar_γ
xchain00111_n54_α:
# IR_SUBSCRIPT x[i] variable
bb00165_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00111_n56_α
 xchain00111_n54_β:
 jmp proc_grammar_ω
xchain00111_n55_α:
bb00075_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00166_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00166_2
.Lx00166_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 200]
 cmp rax, rcx
 je xchain00111_n53_α
 mov rcx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rcx
 mov rcx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rcx
 jmp xchain00111_n58_α
.Lx00166_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 10
 lea r9, [r12 + 144]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00166_1
 cmp eax, 1
 je xchain00111_n53_α
 jmp xchain00111_n58_α
.Lx00166_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00111_n53_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
 jmp xchain00111_n58_α
 xchain00111_n55_β:
 jmp xchain00111_n53_α
xchain00111_n56_α:
# IR_DEREF variable -> value
bb00077_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00111_n59_α
 xchain00111_n56_β:
 jmp proc_grammar_ω
xchain00111_n57_α:
 jmp proc_grammar_ω
xchain00111_n57_β:
 jmp proc_grammar_ω
xchain00111_n58_α:
# IR_VAR
bb00167_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 136], rax
 jmp xchain00111_n60_α
 xchain00111_n58_β:
 jmp xchain00111_n53_α
xchain00111_n59_α:
# IR_LIT_STRING
bb00168_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00111_n61_α
 xchain00111_n59_β:
 jmp proc_grammar_ω
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string ">"
xchain00111_n60_α:
bb00081_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn386: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00111_n53_α
 jmp xchain00111_n62_α
 xchain00111_n60_β:
 jmp xchain00111_n53_α
xchain00111_n61_α:
bb00170_α:
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
 jmp xchain00111_n63_α
 xchain00111_n61_β:
 jmp proc_grammar_ω
xchain00111_n62_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00171_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 72], rax
 lea rax, [rip + xchain00111_n53_α]
 mov qword ptr [r12 + 80], rax
 jmp xchain00111_n53_α
 xchain00111_n62_β:
 jmp xchain00111_n53_α
xchain00111_n63_α:
 jmp xchain00111_n65_α
xchain00111_n63_β:
 jmp proc_grammar_ω
xchain00111_n64_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00172_α:
 jmp qword ptr [r12 + 80]
 xchain00111_n64_β:
 jmp xchain00111_n53_α
xchain00111_n65_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00173_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00111_n57_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00111_n41_α
 xchain00111_n65_β:
 jmp xchain00111_n41_α
proc_grammar_β:
jmp proc_grammar_ω
proc_grammar_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_grammar_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_listimage_α_body:
xchain00174_n0_α:
# IR_LIT_STRING
bb00175_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00174_n1_α
 xchain00174_n0_β:
 jmp xchain00174_n2_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string ""
xchain00174_n1_α:
bb00177_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00174_n2_α
 xchain00174_n1_β:
 jmp xchain00174_n2_α
xchain00174_n2_α:
# IR_VAR
bb00178_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00174_n3_α
 xchain00174_n2_β:
 jmp xchain00174_n10_α
xchain00174_n3_α:
# IR_LIST_BANG
bb00179_α:
 mov qword ptr [r12 + 80], 0
.Lx00180_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp rax, 99
 je xchain00174_n10_α
 jmp xchain00174_n4_α
 xchain00174_n3_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00180_0
xchain00174_n4_α:
bb00181_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00174_n5_α
 xchain00174_n4_β:
 jmp xchain00174_n10_α
xchain00174_n5_α:
# IR_VAR
bb00182_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 152], rax
 jmp xchain00174_n6_α
 xchain00174_n5_β:
 jmp xchain00174_n3_β
xchain00174_n6_α:
# IR_VAR
bb00183_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 200], rax
 jmp xchain00174_n7_α
 xchain00174_n6_β:
 jmp xchain00174_n3_β
xchain00174_n7_α:
bb00184_α:
  .section .rodata
  .Lcall00184_pname: .string "symimage"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00184_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00174_n3_β
 jmp xchain00174_n8_α
xchain00174_n7_β:
 jmp xchain00174_n3_β
xchain00174_n8_α:
bb00185_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00174_n9_α
 xchain00174_n8_β:
 jmp xchain00174_n3_β
xchain00174_n9_α:
bb00087_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00174_n3_β
 xchain00174_n9_β:
 jmp xchain00174_n3_β
xchain00174_n10_α:
# IR_VAR
bb00186_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 40], rax
 jmp xchain00174_n11_α
 xchain00174_n10_β:
 jmp proc_listimage_ω
xchain00174_n11_α:
# IR_RETURN
bb00187_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listimage_γ
proc_listimage_β:
jmp proc_listimage_ω
proc_listimage_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_listimage_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_prompter_α_body:
xchain00188_n0_α:
# IR_VAR_REF local
bb00189_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00188_n1_α
 xchain00188_n0_β:
 jmp proc_prompter_ω
xchain00188_n1_α:
# IR_LIT_INTEGER
bb00089_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00188_n2_α
 xchain00188_n1_β:
 jmp proc_prompter_ω
.Lx00190_0:
 .quad 1
xchain00188_n2_α:
# IR_SUBSCRIPT x[i] variable
bb00191_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00188_n3_α
 xchain00188_n2_β:
 jmp proc_prompter_ω
xchain00188_n3_α:
# IR_DEREF variable -> value
bb00192_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00188_n4_α
 xchain00188_n3_β:
 jmp proc_prompter_ω
xchain00188_n4_α:
# IR_LIT_STRING
bb00193_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00188_n5_α
 xchain00188_n4_β:
 jmp proc_prompter_ω
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "="
xchain00188_n5_α:
bb00195_α:
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
 jmp xchain00188_n6_α
 xchain00188_n5_β:
 jmp proc_prompter_ω
xchain00188_n6_α:
# IR_VAR
bb00093_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00188_n7_α
 xchain00188_n6_β:
 jmp xchain00188_n11_α
xchain00188_n7_α:
# IR_LIT_INTEGER
bb00095_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00188_n8_α
 xchain00188_n7_β:
 jmp xchain00188_n11_α
.Lx00196_0:
 .quad 2
xchain00188_n8_α:
# IR_LIT_INTEGER
bb00197_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00188_n9_α
 xchain00188_n8_β:
 jmp xchain00188_n11_α
.Lx00198_0:
 .quad 0
xchain00188_n9_α:
# IR_SUBSCRIPT section
bb00199_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8, qword ptr [r12 + 128]
 mov r9, qword ptr [r12 + 136]
 call subscript_get2@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00188_n10_α
 xchain00188_n9_β:
 jmp xchain00188_n11_α
xchain00188_n10_α:
# IR_ASSIGN gva
bb00200_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00188_n11_α
 xchain00188_n10_β:
 jmp xchain00188_n11_α
xchain00188_n11_α:
# IR_RETURN
bb00201_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prompter_γ
proc_prompter_β:
jmp proc_prompter_ω
proc_prompter_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_prompter_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_pwrite_α_body:
xchain00202_n0_α:
# IR_VAR_REF gva
bb00203_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00202_n1_α
 xchain00202_n0_β:
 jmp xchain00202_n3_α
xchain00202_n1_α:
# IR_UNOP_TEST lv
bb00204_α:
 mov eax, dword ptr [r12 + 1424]
 cmp eax, 99
 je xchain00202_n3_α
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00202_n3_α
 cmp eax, 0
 jne xchain00202_n3_α
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00202_n2_α
 xchain00202_n1_β:
 jmp xchain00202_n3_α
xchain00202_n2_α:
# IR_LIT_INTEGER
bb00100_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00202_n4_α
 xchain00202_n2_β:
 jmp xchain00202_n3_α
.Lx00205_0:
 .quad 1
xchain00202_n3_α:
# IR_VAR
bb00206_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00202_n5_α
 xchain00202_n3_β:
 jmp xchain00202_n8_α
xchain00202_n4_α:
# IR_ASSIGN_VAR write through variable
bb00103_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00202_n3_α
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain00202_n6_α
 xchain00202_n4_β:
 jmp xchain00202_n3_α
xchain00202_n5_α:
# IR_UNOP
bb00207_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00202_n7_α
 xchain00202_n5_β:
 jmp xchain00202_n8_α
xchain00202_n6_α:
# IR_LIT_STRING
bb00208_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00202_n9_α
 xchain00202_n6_β:
 jmp xchain00202_n3_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "lb"
xchain00202_n7_α:
# IR_LIT_INTEGER
bb00210_α:
 mov qword ptr [r12 + 1088], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain00202_n10_α
 xchain00202_n7_β:
 jmp xchain00202_n8_α
.Lx00211_0:
 .quad 0
xchain00202_n8_α:
# IR_VAR
bb00106_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 840], rax
 jmp xchain00202_n11_α
 xchain00202_n8_β:
 jmp xchain00202_n36_α
xchain00202_n9_α:
# IR_LIT_STRING
bb00212_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00202_n12_α
 xchain00202_n9_β:
 jmp xchain00202_n3_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "rb"
xchain00202_n10_α:
bb00109_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 100
 je .Lx00214_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx00214_2
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx00214_2
.Lx00214_1:
 mov rax, qword ptr [r12 + 1064]
 mov rcx, qword ptr [r12 + 1096]
 cmp rax, rcx
 jne xchain00202_n8_α
 mov rcx, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1040], rcx
 mov rcx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1048], rcx
 jmp xchain00202_n13_α
.Lx00214_0:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 9
 lea r9, [r12 + 1040]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00214_1
 cmp eax, 1
 je xchain00202_n8_α
 jmp xchain00202_n13_α
.Lx00214_2:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00202_n8_α
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00202_n13_α
 xchain00202_n10_β:
 jmp xchain00202_n8_α
xchain00202_n11_α:
# IR_VAR
bb00215_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
 jmp xchain00202_n14_α
 xchain00202_n11_β:
 jmp xchain00202_n36_α
xchain00202_n12_α:
# IR_LIT_STRING
bb00216_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain00202_n15_α
 xchain00202_n12_β:
 jmp xchain00202_n3_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "vb"
xchain00202_n13_α:
# IR_VAR gva
bb00218_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00202_n16_α
 xchain00202_n13_β:
 jmp xchain00202_n23_α
xchain00202_n14_α:
# IR_LIT_STRING
bb00111_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00202_n17_α
 xchain00202_n14_β:
 jmp xchain00202_n36_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "::="
xchain00202_n15_α:
# IR_LIT_STRING
bb00220_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00202_n18_α
 xchain00202_n15_β:
 jmp xchain00202_n3_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "nl"
xchain00202_n16_α:
# IR_LIT_INTEGER
bb00222_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00202_n19_α
 xchain00202_n16_β:
 jmp xchain00202_n23_α
.Lx00223_0:
 .quad 3
xchain00202_n17_α:
# IR_VAR_REF gva
bb00224_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00202_n20_α
 xchain00202_n17_β:
 jmp xchain00202_n36_α
xchain00202_n18_α:
# IR_LIT_STRING
bb00225_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00202_n21_α
 xchain00202_n18_β:
 jmp xchain00202_n3_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string ""
xchain00202_n19_α:
bb00114_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn454: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain00202_n23_α
 jmp xchain00202_n22_α
 xchain00202_n19_β:
 jmp xchain00202_n23_α
xchain00202_n20_α:
# IR_VAR
bb00227_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain00202_n24_α
 xchain00202_n20_β:
 jmp xchain00202_n36_α
xchain00202_n21_α:
# IR_LIT_STRING
bb00116_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00202_n25_α
 xchain00202_n21_β:
 jmp xchain00202_n3_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "&lcase"
xchain00202_n22_α:
bb00229_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00202_n23_α
 xchain00202_n22_β:
 jmp xchain00202_n23_α
xchain00202_n23_α:
# IR_VAR
bb00117_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 136], rax
 jmp xchain00202_n26_α
 xchain00202_n23_β:
 jmp xchain00202_n34_α
xchain00202_n24_α:
# IR_LIT_INTEGER
bb00230_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00202_n27_α
 xchain00202_n24_β:
 jmp xchain00202_n36_α
.Lx00231_0:
 .quad 2
xchain00202_n25_α:
# IR_LIT_STRING
bb00232_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00202_n28_α
 xchain00202_n25_β:
 jmp xchain00202_n3_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "&ucase"
xchain00202_n26_α:
bb00234_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn464: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn464]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00202_n34_α
 jmp xchain00202_n29_α
 xchain00202_n26_β:
 jmp xchain00202_n34_α
xchain00202_n27_α:
# IR_LIT_INTEGER
bb00119_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00202_n31_α
 xchain00202_n27_β:
 jmp xchain00202_n36_α
.Lx00235_0:
 .quad 18446744073709551615
xchain00202_n28_α:
# IR_LIT_STRING
bb00236_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain00202_n32_α
 xchain00202_n28_β:
 jmp xchain00202_n3_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "&digit"
xchain00202_n29_α:
bb00238_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00202_n33_α
 xchain00202_n29_β:
 jmp xchain00202_n34_α
xchain00202_n30_α:
 jmp xchain00202_n34_α
xchain00202_n30_β:
 jmp xchain00202_n34_α
xchain00202_n31_α:
# IR_SUBSCRIPT section
bb00239_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 mov r8, qword ptr [r12 + 992]
 mov r9, qword ptr [r12 + 1000]
 call subscript_get2@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00202_n35_α
 xchain00202_n31_β:
 jmp xchain00202_n36_α
xchain00202_n32_α:
# IR_MAKE_LIST
bb00124_α:
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
 jmp xchain00202_n37_α
 xchain00202_n32_β:
 jmp xchain00202_n3_α
xchain00202_n33_α:
# IR_VAR
bb00240_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 488], rax
 jmp xchain00202_n38_α
 xchain00202_n33_β:
 jmp xchain00202_n52_α
xchain00202_n34_α:
 jmp xchain00202_n39_α
xchain00202_n34_β:
 jmp proc_pwrite_ω
xchain00202_n35_α:
# IR_SUBSCRIPT x[i] variable
bb00241_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00202_n36_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00202_n40_α
 xchain00202_n35_β:
 jmp xchain00202_n36_α
xchain00202_n36_α:
# IR_LIT_STRING
bb00242_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00202_n41_α
 xchain00202_n36_β:
 jmp proc_pwrite_ω
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "*** undefined nonterminal:  "
xchain00202_n37_α:
# IR_ASSIGN gva
bb00129_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00202_n42_α
 xchain00202_n37_β:
 jmp xchain00202_n3_α
xchain00202_n38_α:
# IR_VAR gva
bb00244_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00202_n43_α
 xchain00202_n38_β:
 jmp xchain00202_n52_α
xchain00202_n39_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00245_α:
 lea rax, [rip + xchain00202_n23_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_γ
 xchain00202_n39_β:
 jmp proc_pwrite_ω
xchain00202_n40_α:
# IR_DEREF variable -> value
bb00132_α:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00202_n36_α
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00202_n45_α
 xchain00202_n40_β:
 jmp xchain00202_n36_α
xchain00202_n41_α:
# IR_VAR
bb00134_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 744], rax
 jmp xchain00202_n46_α
 xchain00202_n41_β:
 jmp proc_pwrite_ω
xchain00202_n42_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00136_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00202_n3_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00202_n3_α
 xchain00202_n42_β:
 jmp xchain00202_n3_α
xchain00202_n43_α:
# IR_LIST_BANG
bb00246_α:
 mov qword ptr [r12 + 512], 0
.Lx00247_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 512]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp rax, 99
 je xchain00202_n52_α
 jmp xchain00202_n48_α
 xchain00202_n43_β:
 inc qword ptr [r12 + 512]
 jmp .Lx00247_0
xchain00202_n44_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00248_α:
 jmp qword ptr [r12 + 64]
 xchain00202_n44_β:
 jmp proc_pwrite_ω
xchain00202_n45_α:
# IR_UNOP
bb00249_α:
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 99
 je xchain00202_n36_α
 cmp eax, 0
 je xchain00202_n36_α
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 920], rax
 jmp xchain00202_n49_α
 xchain00202_n45_β:
 jmp xchain00202_n36_α
xchain00202_n46_α:
bb00250_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn492: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn492]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00202_n50_α
 xchain00202_n46_β:
 jmp proc_pwrite_ω
xchain00202_n47_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00251_α:
 jmp qword ptr [r12 + 1120]
 xchain00202_n47_β:
 jmp xchain00202_n3_α
xchain00202_n48_α:
bb00252_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00202_n52_α
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00202_n51_α
 xchain00202_n48_β:
 jmp xchain00202_n52_α
xchain00202_n49_α:
bb00140_α:
  .section .rodata
  .Lcall00140_pname: .string "getrhs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00140_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00202_n36_α
 jmp xchain00202_n53_α
xchain00202_n49_β:
 jmp xchain00202_n36_α
xchain00202_n50_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00253_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + proc_pwrite_ω]
 mov qword ptr [r12 + 656], rax
 jmp xchain00202_n54_α
 xchain00202_n50_β:
 jmp proc_pwrite_ω
xchain00202_n51_α:
# IR_VAR
bb00254_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 456], rax
 jmp xchain00202_n56_α
 xchain00202_n51_β:
 jmp xchain00202_n23_α
xchain00202_n52_α:
# IR_VAR
bb00255_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
 jmp xchain00202_n57_α
 xchain00202_n52_β:
 jmp xchain00202_n23_α
xchain00202_n53_α:
bb00256_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+768]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+784]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+800]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 808], rax
# marshal arg3 = producer-box slot [r12+880] -> [r12+816]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn504: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn504]
 lea rsi, [r12 + 768]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain00202_n36_α
 jmp xchain00202_n58_α
 xchain00202_n53_β:
 jmp xchain00202_n36_α
xchain00202_n54_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00257_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00202_n55_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_γ
 xchain00202_n54_β:
 jmp proc_pwrite_ω
xchain00202_n55_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00258_α:
 jmp qword ptr [r12 + 656]
 xchain00202_n55_β:
 jmp proc_pwrite_ω
xchain00202_n56_α:
bb00259_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn510: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn510]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00202_n23_α
 jmp xchain00202_n23_α
 xchain00202_n56_β:
 jmp xchain00202_n23_α
xchain00202_n57_α:
# IR_LIT_STRING
bb00260_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00202_n60_α
 xchain00202_n57_β:
 jmp xchain00202_n23_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "<"
xchain00202_n58_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00144_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00202_n36_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00202_n54_α
 xchain00202_n58_β:
 jmp proc_pwrite_ω
xchain00202_n59_α:
 jmp xchain00202_n23_α
xchain00202_n59_β:
 jmp xchain00202_n23_α
xchain00202_n60_α:
# IR_VAR
bb00262_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 280], rax
 jmp xchain00202_n61_α
 xchain00202_n60_β:
 jmp xchain00202_n23_α
xchain00202_n61_α:
# IR_LIT_STRING
bb00263_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00202_n62_α
 xchain00202_n61_β:
 jmp xchain00202_n23_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string ">::="
xchain00202_n62_α:
# IR_VAR
bb00265_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 376], rax
 jmp xchain00202_n63_α
 xchain00202_n62_β:
 jmp xchain00202_n23_α
xchain00202_n63_α:
bb00266_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+352]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn521: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn521]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00202_n23_α
 jmp xchain00202_n64_α
 xchain00202_n63_β:
 jmp xchain00202_n23_α
xchain00202_n64_α:
bb00267_α:
  .section .rodata
  .Lcall00267_pname: .string "getrhs"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00267_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00202_n23_α
 jmp xchain00202_n65_α
xchain00202_n64_β:
 jmp xchain00202_n23_α
xchain00202_n65_α:
bb00268_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+240] -> [r12+160]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+176]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 184], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+192]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 200], rax
# marshal arg3 = producer-box slot [r12+288] -> [r12+208]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 216], rax
# marshal arg4 = producer-box slot [r12+304] -> [r12+224]
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
 je xchain00202_n23_α
 jmp xchain00202_n66_α
 xchain00202_n65_β:
 jmp xchain00202_n23_α
xchain00202_n66_α:
 jmp xchain00202_n23_α
xchain00202_n66_β:
 jmp xchain00202_n23_α
proc_pwrite_β:
jmp proc_pwrite_ω
proc_pwrite_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_pwrite_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_source_α_body:
xchain00269_n0_α:
# IR_VAR
bb00270_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 600], rax
 jmp xchain00269_n1_α
 xchain00269_n0_β:
 jmp proc_source_ω
xchain00269_n1_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00269_n2_α
 xchain00269_n1_β:
 jmp proc_source_ω
xchain00269_n2_α:
# IR_LIT_STRING
bb00149_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00269_n3_α
 xchain00269_n2_β:
 jmp xchain00269_n5_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "@"
xchain00269_n3_α:
# IR_SCAN_MATCH
bb00272_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00269_n5_α
 mov rdi, qword ptr [rip + .Lx00273_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00269_n5_α
 mov qword ptr [r12 + 544], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 552], rax
 jmp xchain00269_n4_α
 xchain00269_n3_β:
 jmp xchain00269_n5_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "@"
xchain00269_n4_α:
# IR_SCAN_TAB
bb00274_α:
 mov rax, qword ptr [r12 + 552]
 cmp rax, 1
 jge .Lx00275_0
 add rax, r15
 add rax, 1
.Lx00275_0:
 cmp rax, 1
 jl xchain00269_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00269_n5_α
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
 jmp xchain00269_n6_α
 xchain00269_n4_β:
 mov r14, qword ptr [r12 + 528]
 jmp xchain00269_n5_α
xchain00269_n5_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_source_ω
 xchain00269_n5_β:
 jmp proc_source_ω
xchain00269_n6_α:
# IR_LIT_INTEGER
bb00152_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00269_n7_α
 xchain00269_n6_β:
 jmp xchain00269_n9_α
.Lx00276_0:
 .quad 0
xchain00269_n7_α:
# IR_SCAN_TAB
bb00277_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00278_0
 add rax, r15
 add rax, 1
.Lx00278_0:
 cmp rax, 1
 jl xchain00269_n9_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00269_n9_α
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
 jmp xchain00269_n8_α
 xchain00269_n7_β:
 mov r14, qword ptr [r12 + 480]
 jmp xchain00269_n9_α
xchain00269_n8_α:
bb00279_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00269_n10_α
 xchain00269_n8_β:
 jmp xchain00269_n9_α
xchain00269_n9_α:
# IR_KEYWORD_read
bb00280_α:
 mov rdi, qword ptr [rip + .Lx00281_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00269_n11_α
 xchain00269_n9_β:
 jmp proc_source_ω
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "&errout"
xchain00269_n10_α:
bb00282_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
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
 je xchain00269_n9_α
 jmp xchain00269_n12_α
 xchain00269_n10_β:
 jmp xchain00269_n9_α
xchain00269_n11_α:
# IR_LIT_STRING
bb00283_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00269_n13_α
 xchain00269_n11_β:
 jmp proc_source_ω
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "*** cannot open "
xchain00269_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00285_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00269_n9_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00269_n14_α
 xchain00269_n12_β:
 jmp xchain00269_n17_α
xchain00269_n13_α:
# IR_VAR
bb00286_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 408], rax
 jmp xchain00269_n16_α
 xchain00269_n13_β:
 jmp proc_source_ω
xchain00269_n14_α:
bb00287_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00269_n17_α
 xchain00269_n14_β:
 jmp xchain00269_n17_α
xchain00269_n15_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00288_α:
 jmp qword ptr [r12 + 272]
 xchain00269_n15_β:
 jmp xchain00269_n17_α
xchain00269_n16_α:
bb00289_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+320]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+400] -> [r12+336]
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
 xchain00269_n16_β:
 jmp proc_source_ω
xchain00269_n17_α:
# IR_VAR gva
bb00157_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00269_n18_α
 xchain00269_n17_β:
 jmp xchain00269_n21_α
xchain00269_n18_α:
# IR_VAR gva
bb00290_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00269_n19_α
 xchain00269_n18_β:
 jmp xchain00269_n21_α
xchain00269_n19_α:
bb00291_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn558: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn558]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00269_n21_α
 jmp xchain00269_n20_α
 xchain00269_n19_β:
 jmp xchain00269_n21_α
xchain00269_n20_α:
# IR_VAR
bb00292_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 152], rax
 jmp xchain00269_n22_α
 xchain00269_n20_β:
 jmp xchain00269_n21_α
xchain00269_n21_α:
# IR_RETURN
bb00293_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_source_γ
xchain00269_n22_α:
# IR_ASSIGN gva
bb00294_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00269_n23_α
 xchain00269_n22_β:
 jmp xchain00269_n21_α
xchain00269_n23_α:
 jmp xchain00269_n21_α
xchain00269_n23_β:
 jmp xchain00269_n21_α
proc_source_β:
jmp proc_source_ω
proc_source_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_source_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_symimage_α_body:
xchain00295_n0_α:
# IR_VAR
bb00296_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00295_n1_α
 xchain00295_n0_β:
 jmp proc_symimage_ω
xchain00295_n1_α:
bb00162_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+64]
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
 jmp xchain00295_n2_α
 xchain00295_n1_β:
 jmp proc_symimage_ω
xchain00295_n2_α:
# IR_LIT_STRING
bb00164_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00295_n3_α
 xchain00295_n2_β:
 jmp proc_symimage_ω
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "string"
xchain00295_n3_α:
bb00298_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+512]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+528]
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
 je xchain00295_n5_α
 jmp xchain00295_n4_α
 xchain00295_n3_β:
 jmp xchain00295_n5_α
xchain00295_n4_α:
# IR_VAR
bb00299_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 472], rax
 jmp xchain00295_n6_α
 xchain00295_n4_β:
 jmp proc_symimage_ω
xchain00295_n5_α:
# IR_LIT_STRING
bb00166_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00295_n7_α
 xchain00295_n5_β:
 jmp proc_symimage_ω
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "nonterm"
xchain00295_n6_α:
bb00301_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00295_n8_α
 xchain00295_n6_β:
 jmp proc_symimage_ω
xchain00295_n7_α:
bb00302_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+416]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+432]
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
 je xchain00295_n10_α
 jmp xchain00295_n9_α
 xchain00295_n7_β:
 jmp xchain00295_n10_α
xchain00295_n8_α:
# IR_VAR
bb00303_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 40], rax
 jmp xchain00295_n11_α
 xchain00295_n8_β:
 jmp proc_symimage_ω
xchain00295_n9_α:
# IR_LIT_STRING
bb00304_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00295_n12_α
 xchain00295_n9_β:
 jmp proc_symimage_ω
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "<"
xchain00295_n10_α:
# IR_LIT_STRING
bb00169_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00295_n13_α
 xchain00295_n10_β:
 jmp proc_symimage_ω
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "charset"
xchain00295_n11_α:
# IR_RETURN
bb00307_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_symimage_γ
xchain00295_n12_α:
# IR_VAR
bb00308_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00295_n14_α
 xchain00295_n12_β:
 jmp proc_symimage_ω
xchain00295_n13_α:
bb00309_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+240]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+256]
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
 jmp xchain00295_n15_α
 xchain00295_n13_β:
 jmp proc_symimage_ω
xchain00295_n14_α:
# IR_FIELD_GET
bb00310_α:
 mov rdi, qword ptr [rip + .Lx00311_0]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00295_n16_α
 xchain00295_n14_β:
 jmp proc_symimage_ω
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "name"
xchain00295_n15_α:
# IR_LIT_STRING
bb00312_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00295_n17_α
 xchain00295_n15_β:
 jmp proc_symimage_ω
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "<'"
xchain00295_n16_α:
bb00314_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00295_n18_α
 xchain00295_n16_β:
 jmp proc_symimage_ω
xchain00295_n17_α:
# IR_VAR
bb00315_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00295_n19_α
 xchain00295_n17_β:
 jmp proc_symimage_ω
xchain00295_n18_α:
# IR_LIT_STRING
bb00316_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00295_n20_α
 xchain00295_n18_β:
 jmp proc_symimage_ω
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string ">"
xchain00295_n19_α:
# IR_FIELD_GET
bb00318_α:
 mov rdi, qword ptr [rip + .Lx00319_0]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00295_n21_α
 xchain00295_n19_β:
 jmp proc_symimage_ω
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "chars"
xchain00295_n20_α:
bb00320_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00295_n22_α
 xchain00295_n20_β:
 jmp proc_symimage_ω
xchain00295_n21_α:
bb00174_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00295_n23_α
 xchain00295_n21_β:
 jmp proc_symimage_ω
xchain00295_n22_α:
bb00176_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00295_n8_α
 xchain00295_n22_β:
 jmp proc_symimage_ω
xchain00295_n23_α:
# IR_LIT_STRING
bb00321_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00295_n24_α
 xchain00295_n23_β:
 jmp proc_symimage_ω
.Lx00322_0:
 .quad .Lx00322_0_s
.Lx00322_0_s:
 .string "'>"
xchain00295_n24_α:
bb00323_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00295_n25_α
 xchain00295_n24_β:
 jmp proc_symimage_ω
xchain00295_n25_α:
bb00324_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00295_n8_α
 xchain00295_n25_β:
 jmp proc_symimage_ω
proc_symimage_β:
jmp proc_symimage_ω
proc_symimage_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_symimage_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
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
proc_syms_α_body:
xchain00325_n0_α:
# IR_VAR_REF gva
bb00326_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00325_n1_α
 xchain00325_n0_β:
 jmp xchain00325_n3_α
xchain00325_n1_α:
# IR_UNOP_TEST lv
bb00180_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00325_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00325_n3_α
 cmp eax, 0
 jne xchain00325_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00325_n2_α
 xchain00325_n1_β:
 jmp xchain00325_n3_α
xchain00325_n2_α:
# IR_LIT_INTEGER
bb00327_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00325_n4_α
 xchain00325_n2_β:
 jmp xchain00325_n3_α
.Lx00328_0:
 .quad 1
xchain00325_n3_α:
# IR_MAKE_LIST
bb00329_α:
 lea rdi, [r12 + 656]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00325_n5_α
 xchain00325_n3_β:
 jmp xchain00325_n7_α
xchain00325_n4_α:
# IR_ASSIGN_VAR write through variable
bb00330_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00325_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00325_n6_α
 xchain00325_n4_β:
 jmp xchain00325_n3_α
xchain00325_n5_α:
bb00331_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00325_n7_α
 xchain00325_n5_β:
 jmp xchain00325_n7_α
xchain00325_n6_α:
# IR_LIT_CHARSET
bb00332_α:
 mov qword ptr [r12 + 720], 1
 mov dword ptr [r12 + 724], -1
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00325_n8_α
 xchain00325_n6_β:
 jmp xchain00325_n3_α
.Lx00333_0:
 .quad .Lx00333_0_s
.Lx00333_0_s:
 .string "<"
xchain00325_n7_α:
# IR_VAR
bb00334_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00325_n9_α
 xchain00325_n7_β:
 jmp xchain00325_n26_α
xchain00325_n8_α:
# IR_UNOP
bb00335_α:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00325_n10_α
 xchain00325_n8_β:
 jmp xchain00325_n3_α
xchain00325_n9_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00325_n11_α
 xchain00325_n9_β:
 jmp xchain00325_n26_α
xchain00325_n10_α:
# IR_ASSIGN gva
bb00336_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00325_n12_α
 xchain00325_n10_β:
 jmp xchain00325_n3_α
xchain00325_n11_α:
# IR_VAR
bb00337_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 168], rax
 jmp xchain00325_n13_α
 xchain00325_n11_β:
 jmp xchain00325_n24_α
xchain00325_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00338_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
 lea rax, [rip + xchain00325_n3_α]
 mov qword ptr [r12 + 672], rax
 jmp xchain00325_n3_α
 xchain00325_n12_β:
 jmp xchain00325_n3_α
xchain00325_n13_α:
# IR_VAR gva
bb00188_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00325_n15_α
 xchain00325_n13_β:
 jmp xchain00325_n18_α
xchain00325_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00339_α:
 jmp qword ptr [r12 + 672]
 xchain00325_n14_β:
 jmp xchain00325_n3_α
xchain00325_n15_α:
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
bb00340_α:
 mov eax, r14d
.Lx00341_0:
 cmp eax, r15d
 jge .Lx00341_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [r12 + 600]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00341_1
 add eax, 1
 jmp .Lx00341_0
.Lx00341_1:
 cmp eax, r14d
 je xchain00325_n18_α
 mov qword ptr [r12 + 576], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 584], rcx
 jmp xchain00325_n16_α
 xchain00325_n15_β:
 jmp xchain00325_n18_α
xchain00325_n16_α:
# IR_SCAN_TAB
bb00190_α:
 mov rax, qword ptr [r12 + 584]
 cmp rax, 1
 jge .Lx00342_0
 add rax, r15
 add rax, 1
.Lx00342_0:
 cmp rax, 1
 jl xchain00325_n18_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00325_n18_α
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
 jmp xchain00325_n17_α
 xchain00325_n16_β:
 mov r14, qword ptr [r12 + 560]
 jmp xchain00325_n18_α
xchain00325_n17_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00343_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00325_n18_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00325_n19_α
 xchain00325_n17_β:
 jmp xchain00325_n24_α
xchain00325_n18_α:
# IR_LIT_INTEGER
bb00344_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00325_n21_α
 xchain00325_n18_β:
 jmp xchain00325_n24_α
.Lx00345_0:
 .quad 2
xchain00325_n19_α:
bb00194_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn631: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn631]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00325_n24_α
 jmp xchain00325_n11_α
 xchain00325_n19_β:
 jmp xchain00325_n24_α
xchain00325_n20_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00346_α:
 jmp qword ptr [r12 + 192]
 xchain00325_n20_β:
 jmp xchain00325_n24_α
xchain00325_n21_α:
# IR_LIT_STRING
bb00347_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00325_n23_α
 xchain00325_n21_β:
 jmp xchain00325_n24_α
.Lx00348_0:
 .quad .Lx00348_0_s
.Lx00348_0_s:
 .string "<"
xchain00325_n22_α:
 jmp xchain00325_n24_α
xchain00325_n22_β:
 jmp xchain00325_n24_α
xchain00325_n23_α:
# IR_SCAN_MATCH
bb00196_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00325_n24_α
 mov rdi, qword ptr [rip + .Lx00349_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00325_n24_α
 mov qword ptr [r12 + 368], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 376], rax
 jmp xchain00325_n25_α
 xchain00325_n23_β:
 jmp xchain00325_n24_α
.Lx00349_0:
 .quad .Lx00349_0_s
.Lx00349_0_s:
 .string "<"
xchain00325_n24_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain00325_n26_α
 xchain00325_n24_β:
 jmp xchain00325_n26_α
xchain00325_n25_α:
# IR_SCAN_TAB
bb00350_α:
 mov rax, qword ptr [r12 + 376]
 cmp rax, 1
 jge .Lx00351_0
 add rax, r15
 add rax, 1
.Lx00351_0:
 cmp rax, 1
 jl xchain00325_n24_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00325_n24_α
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
 jmp xchain00325_n27_α
 xchain00325_n25_β:
 mov r14, qword ptr [r12 + 352]
 jmp xchain00325_n24_α
xchain00325_n26_α:
# IR_VAR
bb00352_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 40], rax
 jmp xchain00325_n28_α
 xchain00325_n26_β:
 jmp proc_syms_ω
xchain00325_n27_α:
# IR_LIT_CHARSET
bb00353_α:
 mov qword ptr [r12 + 480], 1
 mov dword ptr [r12 + 484], -1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00325_n29_α
 xchain00325_n27_β:
 jmp xchain00325_n24_α
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string ">"
xchain00325_n28_α:
# IR_RETURN
bb00202_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_syms_γ
xchain00325_n29_α:
# IR_SCAN_UPTO
bb00355_α:
 mov qword ptr [r12 + 464], r14
.Lx00356_0:
 mov rax, qword ptr [r12 + 464]
 cmp rax, r15
 jge xchain00325_n24_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00356_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00356_1
 mov qword ptr [r12 + 448], 6
 add rax, 1
 mov qword ptr [r12 + 456], rax
 jmp xchain00325_n30_α
.Lx00356_1:
 inc qword ptr [r12 + 464]
 jmp .Lx00356_0
 xchain00325_n29_β:
 inc qword ptr [r12 + 464]
 jmp .Lx00356_0
.Lx00356_2:
 .quad .Lx00356_2_s
.Lx00356_2_s:
 .string ">"
xchain00325_n30_α:
# IR_SCAN_TAB
bb00357_α:
 mov rax, qword ptr [r12 + 456]
 cmp rax, 1
 jge .Lx00358_0
 add rax, r15
 add rax, 1
.Lx00358_0:
 cmp rax, 1
 jl xchain00325_n24_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00325_n24_α
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
 jmp xchain00325_n31_α
 xchain00325_n30_β:
 mov r14, qword ptr [r12 + 432]
 jmp xchain00325_n24_α
xchain00325_n31_α:
# IR_LIT_INTEGER
bb00359_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00325_n32_α
 xchain00325_n31_β:
 jmp xchain00325_n24_α
.Lx00360_0:
 .quad 1
xchain00325_n32_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00205_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00325_n24_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00325_n24_α
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
 jmp xchain00325_n33_α
 xchain00325_n32_β:
 mov r14, qword ptr [r12 + 512]
 jmp xchain00325_n24_α
xchain00325_n33_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb00361_α:
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
 je xchain00325_n24_α
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00325_n34_α
 xchain00325_n33_β:
 jmp xchain00325_n24_α
xchain00325_n34_α:
bb00362_α:
  .section .rodata
  .Lcall00362_pname: .string "defnon"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00362_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00325_n24_α
 jmp xchain00325_n35_α
xchain00325_n34_β:
 jmp xchain00325_n24_α
xchain00325_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00363_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00325_n22_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00325_n19_α
 xchain00325_n35_β:
 jmp xchain00325_n24_α
proc_syms_β:
jmp proc_syms_ω
proc_syms_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_syms_ω:
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
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "defs"
  .Lgvan1: .string "ifile"
  .Lgvan2: .string "in"
  .Lgvan3: .string "limit"
  .Lgvan4: .string "prompt"
  .Lgvan5: .string "tswitch"
  .Lgvan6: .string "pwrite__STATIC__builtin"
  .Lgvan7: .string "pwrite__INITFLAG__0"
  .Lgvan8: .string "syms__STATIC__nonbrack"
  .Lgvan9: .string "syms__INITFLAG__0"
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
  .section .bss
  .align 16
__gva: .space 160, 0
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
  mov edx, 10
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
xchain00364_n0_α:
bb00365_α:
# BOX IR_CALL Init__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn660: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn660]
 lea rsi, [r12 + 2880]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je xchain00364_n1_α
 jmp xchain00364_n1_α
xchain00364_n0_β:
 jmp xchain00364_n1_α
xchain00364_n1_α:
# IR_PROC_VALUE first-class procedure value
bb00209_α:
 mov rdi, qword ptr [rip + .Lx00366_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain00364_n2_α
 xchain00364_n1_β:
 jmp xchain00364_n10_α
.Lx00366_0:
 .quad .Lx00366_0_s
.Lx00366_0_s:
 .string "define"
xchain00364_n2_α:
# IR_PROC_VALUE first-class procedure value
bb00211_α:
 mov rdi, qword ptr [rip + .Lx00367_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00364_n3_α
 xchain00364_n2_β:
 jmp xchain00364_n10_α
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "generate"
xchain00364_n3_α:
# IR_PROC_VALUE first-class procedure value
bb00368_α:
 mov rdi, qword ptr [rip + .Lx00369_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain00364_n4_α
 xchain00364_n3_β:
 jmp xchain00364_n10_α
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string "grammar"
xchain00364_n4_α:
# IR_PROC_VALUE first-class procedure value
bb00370_α:
 mov rdi, qword ptr [rip + .Lx00371_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain00364_n5_α
 xchain00364_n4_β:
 jmp xchain00364_n10_α
.Lx00371_0:
 .quad .Lx00371_0_s
.Lx00371_0_s:
 .string "source"
xchain00364_n5_α:
# IR_PROC_VALUE first-class procedure value
bb00213_α:
 mov rdi, qword ptr [rip + .Lx00372_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00364_n6_α
 xchain00364_n5_β:
 jmp xchain00364_n10_α
.Lx00372_0:
 .quad .Lx00372_0_s
.Lx00372_0_s:
 .string "comment"
xchain00364_n6_α:
# IR_PROC_VALUE first-class procedure value
bb00214_α:
 mov rdi, qword ptr [rip + .Lx00373_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 jmp xchain00364_n7_α
 xchain00364_n6_β:
 jmp xchain00364_n10_α
.Lx00373_0:
 .quad .Lx00373_0_s
.Lx00373_0_s:
 .string "prompter"
xchain00364_n7_α:
# IR_PROC_VALUE first-class procedure value
bb00374_α:
 mov rdi, qword ptr [rip + .Lx00375_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain00364_n8_α
 xchain00364_n7_β:
 jmp xchain00364_n10_α
.Lx00375_0:
 .quad .Lx00375_0_s
.Lx00375_0_s:
 .string "error"
xchain00364_n8_α:
# IR_MAKE_LIST
bb00376_α:
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
 jmp xchain00364_n9_α
 xchain00364_n8_β:
 jmp xchain00364_n10_α
xchain00364_n9_α:
bb00217_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain00364_n10_α
 xchain00364_n9_β:
 jmp xchain00364_n10_α
xchain00364_n10_α:
bb00377_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn679: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn679]
 lea rsi, [r12 + 2608]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00364_n12_α
 jmp xchain00364_n11_α
 xchain00364_n10_β:
 jmp xchain00364_n12_α
xchain00364_n11_α:
# IR_ASSIGN gva
bb00219_α:
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00364_n12_α
 xchain00364_n11_β:
 jmp xchain00364_n12_α
xchain00364_n12_α:
# IR_VAR_REF gva
bb00221_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00364_n13_α
 xchain00364_n12_β:
 jmp xchain00364_n16_α
xchain00364_n13_α:
# IR_LIT_STRING
bb00223_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain00364_n14_α
 xchain00364_n13_β:
 jmp xchain00364_n16_α
.Lx00378_0:
 .quad .Lx00378_0_s
.Lx00378_0_s:
 .string "lb"
xchain00364_n14_α:
# IR_SUBSCRIPT x[i] variable
bb00379_α:
 mov rdi, qword ptr [r12 + 2432]
 mov rsi, qword ptr [r12 + 2440]
 mov rdx, qword ptr [r12 + 2448]
 mov rcx, qword ptr [r12 + 2456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n16_α
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain00364_n15_α
 xchain00364_n14_β:
 jmp xchain00364_n16_α
xchain00364_n15_α:
# IR_LIT_STRING
bb00380_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain00364_n17_α
 xchain00364_n15_β:
 jmp xchain00364_n16_α
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "<"
xchain00364_n16_α:
# IR_VAR_REF gva
bb00226_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00364_n18_α
 xchain00364_n16_β:
 jmp xchain00364_n23_α
xchain00364_n17_α:
# IR_MAKE_LIST
bb00382_α:
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2552], rax
 lea rdi, [r12 + 2544]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00364_n19_α
 xchain00364_n17_β:
 jmp xchain00364_n16_α
xchain00364_n18_α:
# IR_LIT_STRING
bb00383_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00364_n20_α
 xchain00364_n18_β:
 jmp xchain00364_n23_α
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string "rb"
xchain00364_n19_α:
# IR_MAKE_LIST
bb00385_α:
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2520], rax
 lea rdi, [r12 + 2512]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain00364_n21_α
 xchain00364_n19_β:
 jmp xchain00364_n16_α
xchain00364_n20_α:
# IR_SUBSCRIPT x[i] variable
bb00386_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2304]
 mov rcx, qword ptr [r12 + 2312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n23_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00364_n22_α
 xchain00364_n20_β:
 jmp xchain00364_n23_α
xchain00364_n21_α:
# IR_ASSIGN_VAR write through variable
bb00228_α:
 mov rdi, qword ptr [r12 + 2464]
 mov rsi, qword ptr [r12 + 2472]
 mov rdx, qword ptr [r12 + 2496]
 mov rcx, qword ptr [r12 + 2504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n16_α
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00364_n16_α
 xchain00364_n21_β:
 jmp xchain00364_n16_α
xchain00364_n22_α:
# IR_LIT_STRING
bb00387_α:
 mov qword ptr [r12 + 2416], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [r12 + 2424], rax
 jmp xchain00364_n24_α
 xchain00364_n22_β:
 jmp xchain00364_n23_α
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string ">"
xchain00364_n23_α:
# IR_VAR_REF gva
bb00389_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00364_n25_α
 xchain00364_n23_β:
 jmp xchain00364_n30_α
xchain00364_n24_α:
# IR_MAKE_LIST
bb00390_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2408], rax
 lea rdi, [r12 + 2400]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00364_n26_α
 xchain00364_n24_β:
 jmp xchain00364_n23_α
xchain00364_n25_α:
# IR_LIT_STRING
bb00231_α:
 mov qword ptr [r12 + 2160], 1
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00364_n27_α
 xchain00364_n25_β:
 jmp xchain00364_n30_α
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "vb"
xchain00364_n26_α:
# IR_MAKE_LIST
bb00233_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2376], rax
 lea rdi, [r12 + 2368]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00364_n28_α
 xchain00364_n26_β:
 jmp xchain00364_n23_α
xchain00364_n27_α:
# IR_SUBSCRIPT x[i] variable
bb00392_α:
 mov rdi, qword ptr [r12 + 2144]
 mov rsi, qword ptr [r12 + 2152]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n30_α
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00364_n29_α
 xchain00364_n27_β:
 jmp xchain00364_n30_α
xchain00364_n28_α:
# IR_ASSIGN_VAR write through variable
bb00393_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 2352]
 mov rcx, qword ptr [r12 + 2360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n23_α
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00364_n23_α
 xchain00364_n28_β:
 jmp xchain00364_n23_α
xchain00364_n29_α:
# IR_LIT_STRING
bb00235_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain00364_n31_α
 xchain00364_n29_β:
 jmp xchain00364_n30_α
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "|"
xchain00364_n30_α:
# IR_VAR_REF gva
bb00237_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00364_n32_α
 xchain00364_n30_β:
 jmp xchain00364_n37_α
xchain00364_n31_α:
# IR_MAKE_LIST
bb00395_α:
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2264], rax
 lea rdi, [r12 + 2256]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00364_n33_α
 xchain00364_n31_β:
 jmp xchain00364_n30_α
xchain00364_n32_α:
# IR_LIT_STRING
bb00396_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00364_n34_α
 xchain00364_n32_β:
 jmp xchain00364_n37_α
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "nl"
xchain00364_n33_α:
# IR_MAKE_LIST
bb00398_α:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2232], rax
 lea rdi, [r12 + 2224]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00364_n35_α
 xchain00364_n33_β:
 jmp xchain00364_n30_α
xchain00364_n34_α:
# IR_SUBSCRIPT x[i] variable
bb00399_α:
 mov rdi, qword ptr [r12 + 2000]
 mov rsi, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2016]
 mov rcx, qword ptr [r12 + 2024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n37_α
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain00364_n36_α
 xchain00364_n34_β:
 jmp xchain00364_n37_α
xchain00364_n35_α:
# IR_ASSIGN_VAR write through variable
bb00400_α:
 mov rdi, qword ptr [r12 + 2176]
 mov rsi, qword ptr [r12 + 2184]
 mov rdx, qword ptr [r12 + 2208]
 mov rcx, qword ptr [r12 + 2216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n30_α
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00364_n30_α
 xchain00364_n35_β:
 jmp xchain00364_n30_α
xchain00364_n36_α:
# IR_LIT_STRING
bb00401_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain00364_n38_α
 xchain00364_n36_β:
 jmp xchain00364_n37_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "\n"
xchain00364_n37_α:
# IR_VAR_REF gva
bb00403_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00364_n39_α
 xchain00364_n37_β:
 jmp xchain00364_n44_α
xchain00364_n38_α:
# IR_MAKE_LIST
bb00404_α:
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2120], rax
 lea rdi, [r12 + 2112]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00364_n40_α
 xchain00364_n38_β:
 jmp xchain00364_n37_α
xchain00364_n39_α:
# IR_LIT_STRING
bb00405_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00364_n41_α
 xchain00364_n39_β:
 jmp xchain00364_n44_α
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string ""
xchain00364_n40_α:
# IR_MAKE_LIST
bb00243_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2088], rax
 lea rdi, [r12 + 2080]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain00364_n42_α
 xchain00364_n40_β:
 jmp xchain00364_n37_α
xchain00364_n41_α:
# IR_SUBSCRIPT x[i] variable
bb00407_α:
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 mov rdx, qword ptr [r12 + 1872]
 mov rcx, qword ptr [r12 + 1880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n44_α
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00364_n43_α
 xchain00364_n41_β:
 jmp xchain00364_n44_α
xchain00364_n42_α:
# IR_ASSIGN_VAR write through variable
bb00408_α:
 mov rdi, qword ptr [r12 + 2032]
 mov rsi, qword ptr [r12 + 2040]
 mov rdx, qword ptr [r12 + 2064]
 mov rcx, qword ptr [r12 + 2072]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n37_α
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00364_n37_α
 xchain00364_n42_β:
 jmp xchain00364_n37_α
xchain00364_n43_α:
# IR_LIT_STRING
bb00409_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00364_n45_α
 xchain00364_n43_β:
 jmp xchain00364_n44_α
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string ""
xchain00364_n44_α:
# IR_VAR_REF gva
bb00411_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00364_n46_α
 xchain00364_n44_β:
 jmp xchain00364_n51_α
xchain00364_n45_α:
# IR_MAKE_LIST
bb00412_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1976], rax
 lea rdi, [r12 + 1968]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00364_n47_α
 xchain00364_n45_β:
 jmp xchain00364_n44_α
xchain00364_n46_α:
# IR_LIT_STRING
bb00413_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain00364_n48_α
 xchain00364_n46_β:
 jmp xchain00364_n51_α
.Lx00414_0:
 .quad .Lx00414_0_s
.Lx00414_0_s:
 .string "&lcase"
xchain00364_n47_α:
# IR_MAKE_LIST
bb00415_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1944], rax
 lea rdi, [r12 + 1936]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00364_n49_α
 xchain00364_n47_β:
 jmp xchain00364_n44_α
xchain00364_n48_α:
# IR_SUBSCRIPT x[i] variable
bb00416_α:
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n51_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00364_n50_α
 xchain00364_n48_β:
 jmp xchain00364_n51_α
xchain00364_n49_α:
# IR_ASSIGN_VAR write through variable
bb00417_α:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, qword ptr [r12 + 1920]
 mov rcx, qword ptr [r12 + 1928]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n44_α
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00364_n44_α
 xchain00364_n49_β:
 jmp xchain00364_n44_α
xchain00364_n50_α:
# IR_LIT_CHARSET
bb00418_α:
 mov qword ptr [r12 + 1840], 1
 mov dword ptr [r12 + 1844], -1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00364_n52_α
 xchain00364_n50_β:
 jmp xchain00364_n51_α
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00364_n51_α:
# IR_VAR_REF gva
bb00247_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00364_n53_α
 xchain00364_n51_β:
 jmp xchain00364_n58_α
xchain00364_n52_α:
bb00420_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1840] -> [r12+1824]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn739: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn739]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00364_n51_α
 jmp xchain00364_n54_α
 xchain00364_n52_β:
 jmp xchain00364_n51_α
xchain00364_n53_α:
# IR_LIT_STRING
bb00421_α:
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00364_n55_α
 xchain00364_n53_β:
 jmp xchain00364_n58_α
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "&ucase"
xchain00364_n54_α:
# IR_MAKE_LIST
bb00423_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1800], rax
 lea rdi, [r12 + 1792]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00364_n56_α
 xchain00364_n54_β:
 jmp xchain00364_n51_α
xchain00364_n55_α:
# IR_SUBSCRIPT x[i] variable
bb00424_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n58_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00364_n57_α
 xchain00364_n55_β:
 jmp xchain00364_n58_α
xchain00364_n56_α:
# IR_MAKE_LIST
bb00425_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1768], rax
 lea rdi, [r12 + 1760]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain00364_n59_α
 xchain00364_n56_β:
 jmp xchain00364_n51_α
xchain00364_n57_α:
# IR_LIT_CHARSET
bb00426_α:
 mov qword ptr [r12 + 1664], 1
 mov dword ptr [r12 + 1668], -1
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00364_n60_α
 xchain00364_n57_β:
 jmp xchain00364_n58_α
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
xchain00364_n58_α:
# IR_VAR_REF gva
bb00428_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00364_n61_α
 xchain00364_n58_β:
 jmp xchain00364_n66_α
xchain00364_n59_α:
# IR_ASSIGN_VAR write through variable
bb00429_α:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n51_α
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain00364_n51_α
 xchain00364_n59_β:
 jmp xchain00364_n51_α
xchain00364_n60_α:
bb00430_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1664] -> [r12+1648]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn751: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn751]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain00364_n58_α
 jmp xchain00364_n62_α
 xchain00364_n60_β:
 jmp xchain00364_n58_α
xchain00364_n61_α:
# IR_LIT_STRING
bb00431_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00364_n63_α
 xchain00364_n61_β:
 jmp xchain00364_n66_α
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "&digit"
xchain00364_n62_α:
# IR_MAKE_LIST
bb00433_α:
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1624], rax
 lea rdi, [r12 + 1616]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00364_n64_α
 xchain00364_n62_β:
 jmp xchain00364_n58_α
xchain00364_n63_α:
# IR_SUBSCRIPT x[i] variable
bb00434_α:
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 1344]
 mov rcx, qword ptr [r12 + 1352]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n66_α
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00364_n65_α
 xchain00364_n63_β:
 jmp xchain00364_n66_α
xchain00364_n64_α:
# IR_MAKE_LIST
bb00435_α:
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1592], rax
 lea rdi, [r12 + 1584]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00364_n67_α
 xchain00364_n64_β:
 jmp xchain00364_n58_α
xchain00364_n65_α:
# IR_LIT_CHARSET
bb00436_α:
 mov qword ptr [r12 + 1488], 1
 mov dword ptr [r12 + 1492], -1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain00364_n68_α
 xchain00364_n65_β:
 jmp xchain00364_n66_α
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "0123456789"
xchain00364_n66_α:
# IR_VAR
bb00438_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00364_n69_α
 xchain00364_n66_β:
 jmp xchain00364_n74_α
xchain00364_n67_α:
# IR_ASSIGN_VAR write through variable
bb00439_α:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n58_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00364_n58_α
 xchain00364_n67_β:
 jmp xchain00364_n58_α
xchain00364_n68_α:
bb00440_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1472]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn763: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn763]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00364_n66_α
 jmp xchain00364_n70_α
 xchain00364_n68_β:
 jmp xchain00364_n66_α
xchain00364_n69_α:
# IR_LIT_STRING
bb00441_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00364_n71_α
 xchain00364_n69_β:
 jmp xchain00364_n74_α
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "tl+s+"
xchain00364_n70_α:
# IR_MAKE_LIST
bb00443_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1448], rax
 lea rdi, [r12 + 1440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00364_n72_α
 xchain00364_n70_β:
 jmp xchain00364_n66_α
xchain00364_n71_α:
bb00444_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lbynamefn768: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn768]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00364_n74_α
 jmp xchain00364_n73_α
xchain00364_n71_β:
 jmp xchain00364_n74_α
xchain00364_n72_α:
# IR_MAKE_LIST
bb00445_α:
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1416], rax
 lea rdi, [r12 + 1408]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain00364_n75_α
 xchain00364_n72_β:
 jmp xchain00364_n66_α
xchain00364_n73_α:
bb00446_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00364_n74_α
 xchain00364_n73_β:
 jmp xchain00364_n74_α
xchain00364_n74_α:
# IR_VAR_REF local
bb00447_α:
 lea rdi, [r12 + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00364_n76_α
 xchain00364_n74_β:
 jmp xchain00364_n79_α
xchain00364_n75_α:
# IR_ASSIGN_VAR write through variable
bb00261_α:
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00364_n66_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00364_n66_α
 xchain00364_n75_β:
 jmp xchain00364_n66_α
xchain00364_n76_α:
# IR_LIT_STRING
bb00448_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00364_n77_α
 xchain00364_n76_β:
 jmp xchain00364_n79_α
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "l"
xchain00364_n77_α:
# IR_SUBSCRIPT x[i] variable
bb00450_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n79_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00364_n78_α
 xchain00364_n77_β:
 jmp xchain00364_n79_α
xchain00364_n78_α:
# IR_DEREF variable -> value
bb00451_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00364_n79_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00364_n80_α
 xchain00364_n78_β:
 jmp xchain00364_n79_α
xchain00364_n79_α:
# IR_LIT_INTEGER
bb00452_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00364_n81_α
 xchain00364_n79_β:
 jmp xchain00364_n84_α
.Lx00453_0:
 .quad 1000
xchain00364_n80_α:
# IR_UNOP
bb00454_α:
 mov eax, dword ptr [r12 + 1216]
 cmp eax, 99
 je xchain00364_n79_α
 cmp eax, 0
 je xchain00364_n79_α
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00364_n82_α
 xchain00364_n80_β:
 jmp xchain00364_n79_α
xchain00364_n81_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00264_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00364_n84_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00364_n83_α
 xchain00364_n81_β:
 jmp xchain00364_n84_α
xchain00364_n82_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00455_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
 lea rax, [rip + xchain00364_n79_α]
 mov qword ptr [r12 + 1120], rax
 jmp xchain00364_n83_α
 xchain00364_n82_β:
 jmp xchain00364_n84_α
xchain00364_n83_α:
# IR_ASSIGN gva
bb00456_α:
 mov rax, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00364_n84_α
 xchain00364_n83_β:
 jmp xchain00364_n84_α
xchain00364_n84_α:
# IR_VAR_REF local
bb00457_α:
 lea rdi, [r12 + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00364_n86_α
 xchain00364_n84_β:
 jmp xchain00364_n89_α
xchain00364_n85_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00458_α:
 jmp qword ptr [r12 + 1120]
 xchain00364_n85_β:
 jmp xchain00364_n84_α
xchain00364_n86_α:
# IR_LIT_STRING
bb00459_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00364_n87_α
 xchain00364_n86_β:
 jmp xchain00364_n89_α
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "t"
xchain00364_n87_α:
# IR_SUBSCRIPT x[i] variable
bb00461_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n89_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00364_n88_α
 xchain00364_n87_β:
 jmp xchain00364_n89_α
xchain00364_n88_α:
# IR_DEREF variable -> value
bb00462_α:
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00364_n89_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00364_n90_α
 xchain00364_n88_β:
 jmp xchain00364_n89_α
xchain00364_n89_α:
# IR_VAR_REF local
bb00463_α:
 lea rdi, [r12 + 2912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00364_n91_α
 xchain00364_n89_β:
 jmp xchain00364_n95_α
xchain00364_n90_α:
# IR_UNOP
bb00269_α:
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 99
 je xchain00364_n89_α
 cmp eax, 0
 je xchain00364_n89_α
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00364_n92_α
 xchain00364_n90_β:
 jmp xchain00364_n89_α
xchain00364_n91_α:
# IR_LIT_STRING
bb00464_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00364_n93_α
 xchain00364_n91_β:
 jmp xchain00364_n95_α
.Lx00465_0:
 .quad .Lx00465_0_s
.Lx00465_0_s:
 .string "s"
xchain00364_n92_α:
# IR_ASSIGN gva
bb00466_α:
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00364_n89_α
 xchain00364_n92_β:
 jmp xchain00364_n89_α
xchain00364_n93_α:
# IR_SUBSCRIPT x[i] variable
bb00467_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n95_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00364_n94_α
 xchain00364_n93_β:
 jmp xchain00364_n95_α
xchain00364_n94_α:
# IR_DEREF variable -> value
bb00468_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00364_n95_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain00364_n96_α
 xchain00364_n94_β:
 jmp xchain00364_n95_α
xchain00364_n95_α:
# IR_KEYWORD_read
bb00271_α:
 mov rdi, qword ptr [rip + .Lx00469_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00364_n97_α
 xchain00364_n95_β:
 jmp xchain00364_n00010_α
.Lx00469_0:
 .quad .Lx00469_0_s
.Lx00469_0_s:
 .string "&input"
xchain00364_n96_α:
# IR_UNOP
bb00470_α:
 mov eax, dword ptr [r12 + 976]
 cmp eax, 99
 je xchain00364_n95_α
 cmp eax, 0
 je xchain00364_n95_α
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 920], rax
 jmp xchain00364_n98_α
 xchain00364_n96_β:
 jmp xchain00364_n95_α
xchain00364_n97_α:
# IR_MAKE_LIST
bb00273_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 856], rax
 lea rdi, [r12 + 848]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00364_n99_α
 xchain00364_n97_β:
 jmp xchain00364_n00010_α
xchain00364_n98_α:
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
bb00471_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00364_n95_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00364_n95_α
 xchain00364_n98_β:
 jmp xchain00364_n95_α
xchain00364_n99_α:
# IR_ASSIGN gva
bb00275_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00364_n00010_α
 xchain00364_n99_β:
 jmp xchain00364_n00010_α
xchain00364_n00010_α:
# IR_LIT_STRING
bb00472_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx00473_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain00364_n00011_α
 xchain00364_n00010_β:
 jmp xchain00364_n00012_α
.Lx00473_0:
 .quad .Lx00473_0_s
.Lx00473_0_s:
 .string ""
xchain00364_n00011_α:
# IR_ASSIGN gva
bb00474_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00364_n00012_α
 xchain00364_n00011_β:
 jmp xchain00364_n00012_α
xchain00364_n00012_α:
# IR_VAR gva
bb00276_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00364_n00013_α
 xchain00364_n00012_β:
 jmp xchain00364_n00015_α
xchain00364_n00013_α:
bb00475_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+80]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn809: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn809]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00364_n00015_α
 jmp xchain00364_n00001_α
 xchain00364_n00013_β:
 jmp xchain00364_n00015_α
xchain00364_n00001_α:
# IR_ASSIGN gva
bb00278_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00364_n00002_α
 xchain00364_n00001_β:
 jmp xchain00364_n00015_α
xchain00364_n00015_α:
bb00476_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn812: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn812]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00364_n00015_β:
 jmp main_ω
xchain00364_n00002_α:
# IR_VAR gva
bb00281_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00364_n00016_α
 xchain00364_n00002_β:
 jmp xchain00364_n00477_α
xchain00364_n00016_α:
# IR_UNOP
bb00478_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_size_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00364_n00003_α
 xchain00364_n00016_β:
 jmp xchain00364_n00477_α
xchain00364_n00003_α:
# IR_LIT_INTEGER
bb00479_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00480_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00364_n00018_α
 xchain00364_n00003_β:
 jmp xchain00364_n00477_α
.Lx00480_0:
 .quad 0
xchain00364_n00477_α:
# IR_VAR gva
bb00284_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00364_n00019_α
 xchain00364_n00477_β:
 jmp xchain00364_n00005_α
xchain00364_n00018_α:
bb00481_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00482_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx00482_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00482_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx00482_2
.Lx00482_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 776]
 cmp rax, rcx
 je xchain00364_n00477_α
 mov rcx, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rcx
 mov rcx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rcx
 jmp xchain00364_n00020_α
.Lx00482_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 10
 lea r9, [r12 + 720]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00482_1
 cmp eax, 1
 je xchain00364_n00477_α
 jmp xchain00364_n00020_α
.Lx00482_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00364_n00477_α
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
 jmp xchain00364_n00020_α
 xchain00364_n00018_β:
 jmp xchain00364_n00477_α
xchain00364_n00019_α:
bb00483_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+608]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn819: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn819]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain00364_n00005_α
 jmp xchain00364_n00021_α
 xchain00364_n00019_β:
 jmp xchain00364_n00005_α
xchain00364_n00020_α:
# IR_VAR gva
bb00484_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00364_n00023_α
 xchain00364_n00020_β:
 jmp xchain00364_n00477_α
xchain00364_n00021_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00485_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00364_n00022_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00364_n00025_α
 xchain00364_n00021_β:
 jmp xchain00364_n00028_α
xchain00364_n00022_α:
 jmp xchain00364_n00005_α
xchain00364_n00022_β:
 jmp xchain00364_n00005_α
xchain00364_n00023_α:
bb00486_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+688]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn825: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn825]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain00364_n00477_α
 jmp xchain00364_n00026_α
 xchain00364_n00023_β:
 jmp xchain00364_n00477_α
xchain00364_n00025_α:
bb00487_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00364_n00028_α
 xchain00364_n00025_β:
 jmp xchain00364_n00028_α
xchain00364_n00004_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00488_α:
 jmp qword ptr [r12 + 576]
 xchain00364_n00004_β:
 jmp xchain00364_n00028_α
xchain00364_n00005_α:
# IR_VAR gva
bb00489_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00364_n00029_α
 xchain00364_n00005_β:
 jmp xchain00364_n00012_α
xchain00364_n00026_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00490_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
 lea rax, [rip + xchain00364_n00477_α]
 mov qword ptr [r12 + 656], rax
 jmp xchain00364_n00477_α
 xchain00364_n00026_β:
 jmp xchain00364_n00477_α
xchain00364_n00028_α:
# IR_VAR_REF local
bb00491_α:
 lea rdi, [r12 + 2896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00364_n00032_α
 xchain00364_n00028_β:
 jmp xchain00364_n00036_α
xchain00364_n00029_α:
bb00492_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn835: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn835]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00364_n00012_α
 jmp xchain00364_n00006_α
 xchain00364_n00029_β:
 jmp xchain00364_n00012_α
xchain00364_n00031_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00493_α:
 jmp qword ptr [r12 + 656]
 xchain00364_n00031_β:
 jmp xchain00364_n00477_α
xchain00364_n00032_α:
# IR_LIT_INTEGER
bb00494_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00495_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00364_n00033_α
 xchain00364_n00032_β:
 jmp xchain00364_n00036_α
.Lx00495_0:
 .quad 18446744073709551615
xchain00364_n00006_α:
 jmp xchain00364_n00012_α
xchain00364_n00006_β:
 jmp xchain00364_n00012_α
xchain00364_n00033_α:
# IR_SUBSCRIPT x[i] variable
bb00496_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00364_n00036_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00364_n00035_α
 xchain00364_n00033_β:
 jmp xchain00364_n00036_α
xchain00364_n00035_α:
# IR_DEREF variable -> value
bb00497_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00364_n00036_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00364_n00038_α
 xchain00364_n00035_β:
 jmp xchain00364_n00036_α
xchain00364_n00036_α:
# IR_VAR
bb00498_α:
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 200], rax
 jmp xchain00364_n00039_α
 xchain00364_n00036_β:
 jmp xchain00364_n00002_α
xchain00364_n00038_α:
# IR_LIT_STRING
bb00295_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00364_n00040_α
 xchain00364_n00038_β:
 jmp xchain00364_n00036_α
.Lx00499_0:
 .quad .Lx00499_0_s
.Lx00499_0_s:
 .string "\\"
xchain00364_n00039_α:
# IR_LIST_BANG
bb00500_α:
 mov qword ptr [r12 + 176], 0
.Lx00501_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 176]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp rax, 99
 je xchain00364_n00002_α
 jmp xchain00364_n00502_α
 xchain00364_n00039_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00501_0
xchain00364_n00040_α:
bb00503_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00364_n00036_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00364_n00041_α
 xchain00364_n00040_β:
 jmp xchain00364_n00036_α
xchain00364_n00502_α:
# IR_VAR
bb00504_α:
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 264], rax
 jmp xchain00364_n00042_α
 xchain00364_n00502_β:
 jmp xchain00364_n00002_α
xchain00364_n00041_α:
# IR_VAR
bb00505_α:
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 456], rax
 jmp xchain00364_n00043_α
 xchain00364_n00041_β:
 jmp xchain00364_n00036_α
xchain00364_n00042_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb00297_α:
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
 je xchain00364_n00002_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00364_n00044_α
 xchain00364_n00042_β:
 jmp xchain00364_n00002_α
xchain00364_n00043_α:
# IR_LIT_INTEGER
bb00506_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00364_n00045_α
 xchain00364_n00043_β:
 jmp xchain00364_n00036_α
.Lx00507_0:
 .quad 1
xchain00364_n00044_α:
 jmp xchain00364_n00002_α
xchain00364_n00044_β:
 jmp xchain00364_n00002_α
xchain00364_n00045_α:
# IR_LIT_INTEGER
bb00508_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00364_n00046_α
 xchain00364_n00045_β:
 jmp xchain00364_n00036_α
.Lx00509_0:
 .quad 18446744073709551615
xchain00364_n00046_α:
# IR_SUBSCRIPT section
bb00510_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8, qword ptr [r12 + 480]
 mov r9, qword ptr [r12 + 488]
 call subscript_get2@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00364_n00047_α
 xchain00364_n00046_β:
 jmp xchain00364_n00036_α
xchain00364_n00047_α:
# IR_VAR gva
bb00300_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00364_n00051_α
 xchain00364_n00047_β:
 jmp xchain00364_n00036_α
xchain00364_n00049_α:
 jmp xchain00364_n00036_α
xchain00364_n00049_β:
 jmp xchain00364_n00036_α
xchain00364_n00051_α:
bb00511_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+512]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn861: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn861]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00364_n00036_α
 jmp xchain00364_n00007_α
 xchain00364_n00051_β:
 jmp xchain00364_n00036_α
xchain00364_n00007_α:
bb00512_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00364_n00513_α
 xchain00364_n00007_β:
 jmp xchain00364_n00036_α
xchain00364_n00513_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00514_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00364_n00049_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00364_n00054_α
 xchain00364_n00513_β:
 jmp xchain00364_n00028_α
xchain00364_n00054_α:
bb00515_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00364_n00028_α
 xchain00364_n00054_β:
 jmp xchain00364_n00028_α
xchain00364_n00516_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00305_α:
 jmp qword ptr [r12 + 400]
 xchain00364_n00516_β:
 jmp xchain00364_n00028_α
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
