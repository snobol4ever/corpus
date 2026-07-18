  .intel_syntax noprefix
  .text
  .globl proc_alts_α
proc_alts_α:
#=======================================================================================================================
    .global proc_alts_α
    .global proc_alts_β
    .global proc_alts_γ
    .global proc_alts_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_alts_α_body:
# IR_MAKE_LIST
 xchain0_n0_α:
 lea rdi, [rbp + 608]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
# IR_GEN_SCAN
 xchain0_n3_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
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
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 40], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_alts_ω
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n10_α
# IR_RETURN
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_alts_γ
# IR_LIT_CHARSET
 xchain0_n7_α:
 mov qword ptr [rbp + 416], 1
 mov dword ptr [rbp + 420], -1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 424], rax
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
 mov qword ptr [rbp + 400], r14
.Lx16_0:
 mov rax, qword ptr [rbp + 400]
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
 mov qword ptr [rbp + 384], 6
 add rax, 1
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n11_α
.Lx16_1:
 inc qword ptr [rbp + 400]
 jmp .Lx16_0
 xchain0_n9_β:
 inc qword ptr [rbp + 400]
 jmp .Lx16_0
.Lx16_2:
 .quad .Lx16_2_s
.Lx16_2_s:
 .string "|"
# IR_GEN_SCAN
 xchain0_n10_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain0_n4_α
 xchain0_n10_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL
 xchain0_n11_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain0_n13_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n10_α
# IR_SCAN_TAB
 xchain0_n12_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 328]
 cmp rax, 1
 jge .Lx22_0
 add rax, r15
 add rax, 1
.Lx22_0:
 cmp rax, 1
 jge .Lx22_239
 add rsp, 16
 jmp xchain0_n10_α
.Lx22_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx22_240
 add rsp, 16
 jmp xchain0_n10_α
.Lx22_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n10_α
.Lx23_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n14_α:
 jmp qword ptr [rbp + 336]
 xchain0_n14_β:
 jmp xchain0_n10_α
 xchain0_n15_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx27_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx27_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx27_3]
 lea rdx, [rip + .Lx27_4]
 jmp rax
.Lx27_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx27_2
.Lx27_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx27_2
.Lx27_1:
 call rt_faildescr@PLT
.Lx27_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n10_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "syms"
# IR_MOVE_LABEL
 xchain0_n16_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain0_n8_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain0_n12_α
 xchain0_n16_β:
 jmp xchain0_n10_α
 xchain0_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn31: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn31]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n23_α
.Lx32_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain0_n19_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx34_239
 add rsp, 16
 jmp xchain0_n23_α
.Lx34_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx34_240
 add rsp, 16
 jmp xchain0_n23_α
.Lx34_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n23_α
# IR_MOVE_LABEL
 xchain0_n20_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + xchain0_n21_α]
 mov qword ptr [rbp + 464], rax
 jmp xchain0_n5_α
 xchain0_n20_β:
 jmp xchain0_n5_α
 xchain0_n21_α:
 jmp xchain0_n23_α
xchain0_n21_β:
 jmp xchain0_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n22_α:
 jmp qword ptr [rbp + 464]
 xchain0_n22_β:
 jmp xchain0_n5_α
# IR_GEN_SCAN
 xchain0_n23_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain0_n4_α
 xchain0_n23_β:
 jmp xchain0_n4_α
proc_alts_res:
add rsp, 8
pop rbp
proc_alts_β:
jmp proc_alts_ω
proc_alts_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_alts_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_comment_α
proc_comment_α:
#=======================================================================================================================
    .global proc_comment_α
    .global proc_comment_β
    .global proc_comment_γ
    .global proc_comment_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
  mov rdi, rsp
  mov esi, 256
  call rt_jmp_frame_lexprep@PLT
proc_comment_α_body:
# IR_VAR_REF
 xchain42_n0_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain42_n1_α
 xchain42_n0_β:
 jmp proc_comment_ω
# IR_LIT_INTEGER
 xchain42_n1_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain42_n2_α
 xchain42_n1_β:
 jmp proc_comment_ω
.Lx45_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain42_n2_α:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain42_n3_α
 xchain42_n2_β:
 jmp proc_comment_ω
# IR_DEREF variable -> value
 xchain42_n3_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_deref@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain42_n4_α
 xchain42_n3_β:
 jmp proc_comment_ω
# IR_LIT_STRING
 xchain42_n4_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain42_n5_α
 xchain42_n4_β:
 jmp proc_comment_ω
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "#"
 xchain42_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_comment_ω
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain42_n6_α
 xchain42_n5_β:
 jmp proc_comment_ω
# IR_RETURN
 xchain42_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_comment_γ
proc_comment_res:
add rsp, 8
pop rbp
proc_comment_β:
jmp proc_comment_ω
proc_comment_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 264]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
proc_comment_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_define_α
proc_define_α:
#=======================================================================================================================
    .global proc_define_α
    .global proc_define_β
    .global proc_define_γ
    .global proc_define_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_define_α_body:
# IR_VAR
 xchain51_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 600], rax
 jmp xchain51_n1_α
 xchain51_n0_β:
 jmp proc_define_ω
# IR_GEN_SCAN
 xchain51_n1_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain51_n2_α
 xchain51_n1_β:
 jmp proc_define_ω
# IR_VAR_REF
 xchain51_n2_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain51_n3_α
 xchain51_n2_β:
 jmp xchain51_n10_α
# IR_LIT_STRING
 xchain51_n3_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain51_n4_α
 xchain51_n3_β:
 jmp xchain51_n6_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain51_n4_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx60_239
 add rsp, 16
 jmp xchain51_n6_α
.Lx60_239:
 mov rdi, qword ptr [rip + .Lx60_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx60_240
 add rsp, 16
 jmp xchain51_n6_α
.Lx60_240:
 mov qword ptr [rbp + 288], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 296], rax
 jmp xchain51_n5_α
 xchain51_n4_β:
 add rsp, 16
 jmp xchain51_n6_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain51_n5_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 296]
 cmp rax, 1
 jge .Lx62_0
 add rax, r15
 add rax, 1
.Lx62_0:
 cmp rax, 1
 jge .Lx62_239
 add rsp, 16
 jmp xchain51_n6_α
.Lx62_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx62_240
 add rsp, 16
 jmp xchain51_n6_α
.Lx62_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain51_n6_α
 xchain51_n5_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain51_n6_α
# IR_LIT_STRING
 xchain51_n6_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain51_n7_α
 xchain51_n6_β:
 jmp xchain51_n10_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string ">::="
# IR_SCAN_FIND
 xchain51_n7_α:
 mov qword ptr [rbp + 208], r14
.Lx65_0:
 mov rax, qword ptr [rbp + 208]
 mov rcx, r15
 sub rcx, 4
 cmp rax, rcx
 jg xchain51_n10_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx65_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx65_1
 mov rcx, rax
 add rcx, 2
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx65_1
 mov rcx, rax
 add rcx, 3
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 61
 jne .Lx65_1
 mov qword ptr [rbp + 192], 6
 add rax, 1
 mov qword ptr [rbp + 200], rax
 jmp xchain51_n8_α
.Lx65_1:
 inc qword ptr [rbp + 208]
 jmp .Lx65_0
 xchain51_n7_β:
 inc qword ptr [rbp + 208]
 jmp .Lx65_0
# IR_SCAN_TAB
 xchain51_n8_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 200]
 cmp rax, 1
 jge .Lx67_0
 add rax, r15
 add rax, 1
.Lx67_0:
 cmp rax, 1
 jge .Lx67_239
 add rsp, 16
 jmp xchain51_n10_α
.Lx67_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx67_240
 add rsp, 16
 jmp xchain51_n10_α
.Lx67_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain51_n9_α
 xchain51_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain51_n10_α
 xchain51_n9_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 152], rax
 jmp xchain51_n11_α
xchain51_n9_β:
 jmp xchain51_n10_α
# IR_GEN_SCAN
 xchain51_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_define_ω
 xchain51_n10_β:
 jmp proc_define_ω
# IR_SUBSCRIPT x[i] variable
 xchain51_n11_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain51_n10_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain51_n12_α
 xchain51_n11_β:
 jmp xchain51_n10_α
# IR_LIT_INTEGER
 xchain51_n12_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain51_n13_α
 xchain51_n12_β:
 jmp xchain51_n14_α
.Lx72_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain51_n13_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx74_239
 add rsp, 16
 jmp xchain51_n14_α
.Lx74_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx74_240
 add rsp, 16
 jmp xchain51_n14_α
.Lx74_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain51_n14_α
 xchain51_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain51_n14_α
# IR_LIT_INTEGER
 xchain51_n14_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain51_n15_α
 xchain51_n14_β:
 jmp xchain51_n10_α
.Lx75_0:
 .quad 0
# IR_SCAN_TAB
 xchain51_n15_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx77_0
 add rax, r15
 add rax, 1
.Lx77_0:
 cmp rax, 1
 jge .Lx77_239
 add rsp, 16
 jmp xchain51_n10_α
.Lx77_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx77_240
 add rsp, 16
 jmp xchain51_n10_α
.Lx77_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain51_n16_α
 xchain51_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain51_n10_α
 xchain51_n16_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx79_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx79_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx79_3]
 lea rdx, [rip + .Lx79_4]
 jmp rax
.Lx79_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx79_2
.Lx79_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx79_2
.Lx79_1:
 call rt_faildescr@PLT
.Lx79_2:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain51_n10_α
 jmp xchain51_n17_α
 xchain51_n16_β:
 jmp xchain51_n10_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "alts"
 xchain51_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 408], rax
 jmp xchain51_n18_α
xchain51_n17_β:
 jmp xchain51_n10_α
# IR_ASSIGN_VAR
 xchain51_n18_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain51_n10_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain51_n19_α
 xchain51_n18_β:
 jmp xchain51_n10_α
# IR_GEN_SCAN
 xchain51_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 88], rax
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp xchain51_n20_α
 xchain51_n19_β:
 jmp proc_define_ω
# IR_RETURN
 xchain51_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_define_γ
proc_define_res:
add rsp, 8
pop rbp
proc_define_β:
jmp proc_define_ω
proc_define_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_define_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_defnon_α
proc_defnon_α:
#=======================================================================================================================
    .global proc_defnon_α
    .global proc_defnon_β
    .global proc_defnon_γ
    .global proc_defnon_ω
  sub rsp, 736
  mov [rsp + 712], rcx
  mov [rsp + 720], rdx
  mov [rsp + 728], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 704
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 704
  call rt_jmp_frame_lexprep@PLT
proc_defnon_α_body:
# IR_VAR
 xchain85_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain85_n1_α
 xchain85_n0_β:
 jmp xchain85_n2_α
# IR_GEN_SCAN
 xchain85_n1_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain85_n3_α
 xchain85_n1_β:
 jmp xchain85_n2_α
# IR_VAR
 xchain85_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain85_n4_α
 xchain85_n2_β:
 jmp proc_defnon_ω
# IR_LIT_STRING
 xchain85_n3_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain85_n5_α
 xchain85_n3_β:
 jmp xchain85_n8_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "'"
 xchain85_n4_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn94: .string "nonterm"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn94]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain85_n6_α
 xchain85_n4_β:
 jmp proc_defnon_ω
# IR_SCAN_MATCH
 xchain85_n5_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx96_239
 add rsp, 16
 jmp xchain85_n8_α
.Lx96_239:
 mov rdi, qword ptr [rip + .Lx96_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx96_240
 add rsp, 16
 jmp xchain85_n8_α
.Lx96_240:
 mov qword ptr [rbp + 576], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 584], rax
 jmp xchain85_n7_α
 xchain85_n5_β:
 add rsp, 16
 jmp xchain85_n8_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "'"
# IR_RETURN
 xchain85_n6_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_defnon_γ
# IR_SCAN_TAB
 xchain85_n7_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 584]
 cmp rax, 1
 jge .Lx99_0
 add rax, r15
 add rax, 1
.Lx99_0:
 cmp rax, 1
 jge .Lx99_239
 add rsp, 16
 jmp xchain85_n8_α
.Lx99_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx99_240
 add rsp, 16
 jmp xchain85_n8_α
.Lx99_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain85_n9_α
 xchain85_n7_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain85_n8_α
# IR_GEN_SCAN
 xchain85_n8_α:
 lea rdi, [rbp + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 240]
 mov r14, qword ptr [rbp + 248]
 mov r15, qword ptr [rbp + 256]
 jmp xchain85_n2_α
 xchain85_n8_β:
 jmp xchain85_n2_α
# IR_LIT_INTEGER
 xchain85_n9_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain85_n10_α
 xchain85_n9_β:
 jmp xchain85_n8_α
.Lx00001_0:
 .quad 18446744073709551615
# IR_SCAN_TAB
 xchain85_n10_α:
 sub rsp, 16
 mov rax, -1
 cmp rax, 1
 jge .Lx00002_0
 add rax, r15
 add rax, 1
.Lx00002_0:
 cmp rax, 1
 jge .Lx00002_239
 add rsp, 16
 jmp xchain85_n8_α
.Lx00002_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00002_240
 add rsp, 16
 jmp xchain85_n8_α
.Lx00002_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain85_n11_α
 xchain85_n10_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain85_n8_α
 xchain85_n11_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn106: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain85_n8_α
 jmp xchain85_n12_α
 xchain85_n11_β:
 jmp xchain85_n8_α
 xchain85_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain85_n13_α
 xchain85_n12_β:
 jmp xchain85_n8_α
# IR_LIT_STRING
 xchain85_n13_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain85_n14_α
 xchain85_n13_β:
 jmp xchain85_n8_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "'"
# IR_SCAN_MATCH
 xchain85_n14_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00004_239
 add rsp, 16
 jmp xchain85_n8_α
.Lx00004_239:
 mov rdi, qword ptr [rip + .Lx00004_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00004_240
 add rsp, 16
 jmp xchain85_n8_α
.Lx00004_240:
 mov qword ptr [rbp + 352], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 360], rax
 jmp xchain85_n15_α
 xchain85_n14_β:
 add rsp, 16
 jmp xchain85_n8_α
.Lx00004_0:
 .quad .Lx00004_0_s
.Lx00004_0_s:
 .string "'"
# IR_SCAN_TAB
 xchain85_n15_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 360]
 cmp rax, 1
 jge .Lx00005_0
 add rax, r15
 add rax, 1
.Lx00005_0:
 cmp rax, 1
 jge .Lx00005_239
 add rsp, 16
 jmp xchain85_n8_α
.Lx00005_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00005_240
 add rsp, 16
 jmp xchain85_n8_α
.Lx00005_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain85_n16_α
 xchain85_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain85_n8_α
 xchain85_n16_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 312], rax
 jmp xchain85_n17_α
xchain85_n16_β:
 jmp xchain85_n8_α
# IR_GEN_SCAN
 xchain85_n17_α:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 lea rdi, [rbp + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 240]
 mov r14, qword ptr [rbp + 248]
 mov r15, qword ptr [rbp + 256]
 jmp xchain85_n18_α
 xchain85_n17_β:
 jmp xchain85_n2_α
# IR_VAR
 xchain85_n18_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 120], rax
 jmp xchain85_n19_α
 xchain85_n18_β:
 jmp proc_defnon_ω
 xchain85_n19_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn119: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain85_n20_α
 xchain85_n19_β:
 jmp proc_defnon_ω
# IR_RETURN
 xchain85_n20_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_defnon_γ
proc_defnon_res:
add rsp, 8
pop rbp
proc_defnon_β:
jmp proc_defnon_ω
proc_defnon_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 712]
lea rsp, [rbp + 736]
mov rbp, [rbp + 728]
jmp rax
proc_defnon_ω:
mov rax, [rbp + 720]
lea rsp, [rbp + 736]
mov rbp, [rbp + 728]
jmp rax
  .globl proc_error_α
proc_error_α:
#=======================================================================================================================
    .global proc_error_α
    .global proc_error_β
    .global proc_error_γ
    .global proc_error_ω
  sub rsp, 208
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 176
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 168], rsp
  mov rdi, rsp
  mov esi, 176
  call rt_jmp_frame_lexprep@PLT
proc_error_α_body:
# IR_LIT_STRING
 xchain00006_n0_α:
 mov qword ptr [rbp + 96], 1
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00006_n1_α
 xchain00006_n0_β:
 jmp xchain00006_n3_α
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "*** erroneous line:  "
# IR_VAR
 xchain00006_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00006_n2_α
 xchain00006_n1_β:
 jmp xchain00006_n3_α
 xchain00006_n2_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+48]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 56], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+64]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn126: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn126]
 lea rsi, [rbp + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je xchain00006_n3_α
 jmp xchain00006_n3_α
 xchain00006_n2_β:
 jmp xchain00006_n3_α
# IR_RETURN
 xchain00006_n3_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_error_γ
proc_error_res:
add rsp, 8
pop rbp
proc_error_β:
jmp proc_error_ω
proc_error_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 184]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
jmp rax
proc_error_ω:
mov rax, [rbp + 192]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
jmp rax
  .globl proc_gener_α
proc_gener_α:
#=======================================================================================================================
    .global proc_gener_α
    .global proc_gener_β
    .global proc_gener_γ
    .global proc_gener_ω
  sub rsp, 2384
  mov [rsp + 2360], rcx
  mov [rsp + 2368], rdx
  mov [rsp + 2376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2296], rsp
  mov rdi, rsp
  mov esi, 2352
  call rt_jmp_frame_lexprep@PLT
proc_gener_α_body:
# IR_VAR
 xchain00008_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00008_n1_α
 xchain00008_n0_β:
 jmp xchain00008_n2_α
 xchain00008_n1_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2232], rax
  .section .rodata
  .Lrkfn132: .string "nonterm"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn132]
 lea rsi, [rbp + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n3_α
 xchain00008_n1_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n2_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 136], rax
 jmp xchain00008_n4_α
 xchain00008_n2_β:
 jmp xchain00008_n5_α
# IR_MAKE_LIST
 xchain00008_n3_α:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2200], rax
 lea rdi, [rbp + 2192]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00008_n6_α
 xchain00008_n3_β:
 jmp xchain00008_n2_α
 xchain00008_n4_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn138: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n7_α
 xchain00008_n4_β:
 jmp xchain00008_n5_α
 xchain00008_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn140: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn140]
 lea rsi, [rbp + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_gener_ω
 jmp proc_gener_ω
 xchain00008_n5_β:
 jmp proc_gener_ω
 xchain00008_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00008_n2_α
 xchain00008_n6_β:
 jmp xchain00008_n2_α
 xchain00008_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00008_n8_α
 xchain00008_n7_β:
 jmp xchain00008_n5_α
# IR_VAR
 xchain00008_n8_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00008_n9_α
 xchain00008_n8_β:
 jmp xchain00008_n10_α
# IR_UNOP
 xchain00008_n9_α:
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 99
 je xchain00008_n10_α
 cmp eax, 0
 je xchain00008_n10_α
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00008_n11_α
 xchain00008_n9_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n10_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 264], rax
 jmp xchain00008_n12_α
 xchain00008_n10_β:
 jmp xchain00008_n2_α
# KEYWORD_read
 xchain00008_n11_α:
 mov rdi, qword ptr [rip + .Lx00009_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00008_n13_α
 xchain00008_n11_β:
 jmp xchain00008_n10_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "&errout"
 xchain00008_n12_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn149: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn149]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n14_α
 xchain00008_n12_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n13_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00008_n15_α
 xchain00008_n13_β:
 jmp xchain00008_n10_α
# IR_LIT_STRING
 xchain00008_n14_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00008_n16_α
 xchain00008_n14_β:
 jmp xchain00008_n2_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "string"
 xchain00008_n15_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00011_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00011_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00011_3]
 lea rdx, [rip + .Lx00011_4]
 jmp rax
.Lx00011_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00011_2
.Lx00011_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00011_2
.Lx00011_1:
 call rt_faildescr@PLT
.Lx00011_2:
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00008_n10_α
 jmp xchain00008_n17_α
 xchain00008_n15_β:
 jmp xchain00008_n10_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "symimage"
 xchain00008_n16_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1744]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1760]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1768], rax
  .section .rodata
  .Lrkfn156: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00008_n19_α
 jmp xchain00008_n18_α
 xchain00008_n16_β:
 jmp xchain00008_n19_α
# IR_VAR
 xchain00008_n17_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00008_n20_α
 xchain00008_n17_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n18_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00008_n21_α
 xchain00008_n18_β:
 jmp xchain00008_n2_α
# IR_LIT_STRING
 xchain00008_n19_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00008_n22_α
 xchain00008_n19_β:
 jmp xchain00008_n2_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "charset"
 xchain00008_n20_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00013_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00013_3]
 lea rdx, [rip + .Lx00013_4]
 jmp rax
.Lx00013_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00013_2
.Lx00013_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00013_2
.Lx00013_1:
 call rt_faildescr@PLT
.Lx00013_2:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00008_n10_α
 jmp xchain00008_n23_α
 xchain00008_n20_β:
 jmp xchain00008_n10_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "listimage"
 xchain00008_n21_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn165: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn165]
 lea rsi, [rbp + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n24_α
 xchain00008_n21_β:
 jmp xchain00008_n2_α
 xchain00008_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1552]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1568]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1576], rax
  .section .rodata
  .Lrkfn167: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn167]
 lea rsi, [rbp + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain00008_n26_α
 jmp xchain00008_n25_α
 xchain00008_n22_β:
 jmp xchain00008_n26_α
 xchain00008_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1856]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1872]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn169: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn169]
 lea rsi, [rbp + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain00008_n10_α
 jmp xchain00008_n27_α
 xchain00008_n23_β:
 jmp xchain00008_n10_α
 xchain00008_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00008_n28_α
 xchain00008_n24_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n25_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00008_n29_α
 xchain00008_n25_β:
 jmp xchain00008_n2_α
# IR_LIT_STRING
 xchain00008_n26_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00008_n30_α
 xchain00008_n26_β:
 jmp xchain00008_n2_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "nonterm"
# IR_MOVE_LABEL
 xchain00008_n27_α:
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
 lea rax, [rip + xchain00008_n10_α]
 mov qword ptr [rbp + 1808], rax
 jmp xchain00008_n10_α
 xchain00008_n27_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n28_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 184], rax
 jmp xchain00008_n32_α
 xchain00008_n28_β:
 jmp xchain00008_n2_α
# IR_FIELD_GET
 xchain00008_n29_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov rsi, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00008_n33_α
 xchain00008_n29_β:
 jmp xchain00008_n2_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "chars"
 xchain00008_n30_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1296]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+1312]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 1320], rax
  .section .rodata
  .Lrkfn180: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n34_α
 xchain00008_n30_β:
 jmp xchain00008_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00008_n31_α:
 jmp qword ptr [rbp + 1808]
 xchain00008_n31_β:
 jmp xchain00008_n10_α
 xchain00008_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00008_n2_α
xchain00008_n32_β:
 jmp xchain00008_n2_α
# IR_RANDOM
 xchain00008_n33_α:
 mov rdi, qword ptr [rbp + 1440]
 mov rsi, qword ptr [rbp + 1448]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00008_n35_α
 xchain00008_n33_β:
 jmp xchain00008_n2_α
# IR_VAR_REF
 xchain00008_n34_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00008_n36_α
 xchain00008_n34_β:
 jmp xchain00008_n39_α
# IR_DEREF variable -> value
 xchain00008_n35_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00008_n37_α
 xchain00008_n35_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n36_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00008_n38_α
 xchain00008_n36_β:
 jmp xchain00008_n39_α
 xchain00008_n37_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1392]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn191: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 1392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n40_α
 xchain00008_n37_β:
 jmp xchain00008_n2_α
# IR_FIELD_GET
 xchain00008_n38_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00008_n41_α
 xchain00008_n38_β:
 jmp xchain00008_n39_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "name"
# KEYWORD_read
 xchain00008_n39_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00008_n42_α
 xchain00008_n39_β:
 jmp xchain00008_n5_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "&errout"
 xchain00008_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00008_n28_α
 xchain00008_n40_β:
 jmp xchain00008_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00008_n41_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00008_n43_α
 xchain00008_n41_β:
 jmp xchain00008_n39_α
# IR_LIT_STRING
 xchain00008_n42_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00008_n44_α
 xchain00008_n42_β:
 jmp xchain00008_n5_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "*** undefined nonterminal:  <"
# IR_DEREF variable -> value
 xchain00008_n43_α:
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00008_n45_α
 xchain00008_n43_β:
 jmp xchain00008_n39_α
# IR_VAR
 xchain00008_n44_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 936], rax
 jmp xchain00008_n46_α
 xchain00008_n44_β:
 jmp xchain00008_n5_α
# IR_UNOP
 xchain00008_n45_α:
 mov eax, dword ptr [rbp + 1200]
 cmp eax, 99
 je xchain00008_n39_α
 cmp eax, 0
 je xchain00008_n39_α
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00008_n48_α
 xchain00008_n45_β:
 jmp xchain00008_n39_α
# IR_FIELD_GET
 xchain00008_n46_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n5_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00008_n49_α
 xchain00008_n46_β:
 jmp xchain00008_n5_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "name"
 xchain00008_n47_α:
 jmp xchain00008_n5_α
xchain00008_n47_β:
 jmp xchain00008_n5_α
# IR_RANDOM
 xchain00008_n48_α:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00008_n50_α
 xchain00008_n48_β:
 jmp xchain00008_n39_α
# IR_LIT_STRING
 xchain00008_n49_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00008_n51_α
 xchain00008_n49_β:
 jmp xchain00008_n5_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string ">"
# IR_DEREF variable -> value
 xchain00008_n50_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00008_n52_α
 xchain00008_n50_β:
 jmp xchain00008_n39_α
 xchain00008_n51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+752]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+768]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+784]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 792], rax
# marshal arg3 = producer-box slot [zr+960] -> [zr+800]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn207: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn207]
 lea rsi, [rbp + 752]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n5_α
 xchain00008_n51_β:
 jmp xchain00008_n5_α
# IR_VAR
 xchain00008_n52_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00008_n53_α
 xchain00008_n52_β:
 jmp xchain00008_n39_α
 xchain00008_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call str_concat_d@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00008_n54_α
 xchain00008_n53_β:
 jmp xchain00008_n39_α
# IR_MOVE_LABEL
 xchain00008_n54_α:
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + xchain00008_n39_α]
 mov qword ptr [rbp + 704], rax
 jmp xchain00008_n55_α
 xchain00008_n54_β:
 jmp xchain00008_n57_α
 xchain00008_n55_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00008_n57_α
 xchain00008_n55_β:
 jmp xchain00008_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00008_n56_α:
 jmp qword ptr [rbp + 704]
 xchain00008_n56_β:
 jmp xchain00008_n57_α
# IR_VAR
 xchain00008_n57_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 584], rax
 jmp xchain00008_n58_α
 xchain00008_n57_β:
 jmp xchain00008_n2_α
# IR_UNOP
 xchain00008_n58_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_size_d@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00008_n59_α
 xchain00008_n58_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n59_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00008_n60_α
 xchain00008_n59_β:
 jmp xchain00008_n2_α
# IR_UNOP
 xchain00008_n60_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00008_n2_α
 cmp eax, 0
 je xchain00008_n2_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
 jmp xchain00008_n61_α
 xchain00008_n60_β:
 jmp xchain00008_n2_α
 xchain00008_n61_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00021_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00021_2
.Lx00021_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, qword ptr [rbp + 616]
 cmp rax, rcx
 jle xchain00008_n2_α
 mov rcx, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rcx
 mov rcx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rcx
 jmp xchain00008_n62_α
.Lx00021_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 lea r9, [rbp + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00021_1
 cmp eax, 1
 je xchain00008_n2_α
 jmp xchain00008_n62_α
.Lx00021_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00008_n2_α
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rax
 jmp xchain00008_n62_α
 xchain00008_n61_β:
 jmp xchain00008_n2_α
# KEYWORD_read
 xchain00008_n62_α:
 mov rdi, qword ptr [rip + .Lx00022_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00008_n63_α
 xchain00008_n62_β:
 jmp xchain00008_n5_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00008_n63_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00008_n64_α
 xchain00008_n63_β:
 jmp xchain00008_n5_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "*** excessive symbols remaining"
 xchain00008_n64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn225: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn225]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n5_α
 xchain00008_n64_β:
 jmp xchain00008_n5_α
 xchain00008_n65_α:
 jmp xchain00008_n5_α
xchain00008_n65_β:
 jmp xchain00008_n5_α
proc_gener_res:
add rsp, 8
pop rbp
proc_gener_β:
jmp proc_gener_ω
proc_gener_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2360]
lea rsp, [rbp + 2384]
mov rbp, [rbp + 2376]
jmp rax
proc_gener_ω:
mov rax, [rbp + 2368]
lea rsp, [rbp + 2384]
mov rbp, [rbp + 2376]
jmp rax
  .globl proc_generate_α
proc_generate_α:
#=======================================================================================================================
    .global proc_generate_α
    .global proc_generate_β
    .global proc_generate_γ
    .global proc_generate_ω
  sub rsp, 1072
  mov [rsp + 1048], rcx
  mov [rsp + 1056], rdx
  mov [rsp + 1064], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1040
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 1040
  call rt_jmp_frame_lexprep@PLT
proc_generate_α_body:
 mov qword ptr [rbp + 720], 0
# IR_VAR
 xchain00024_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 968], rax
 jmp xchain00024_n1_α
 xchain00024_n0_β:
 jmp proc_generate_ω
# IR_GEN_SCAN
 xchain00024_n1_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00024_n2_α
 xchain00024_n1_β:
 jmp proc_generate_ω
# IR_LIT_STRING
 xchain00024_n2_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00024_n3_α
 xchain00024_n2_β:
 jmp xchain00024_n5_α
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain00024_n3_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00026_239
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00026_239:
 mov rdi, qword ptr [rip + .Lx00026_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00026_240
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00026_240:
 mov qword ptr [rbp + 896], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 904], rax
 jmp xchain00024_n4_α
 xchain00024_n3_β:
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain00024_n4_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 904]
 cmp rax, 1
 jge .Lx00027_0
 add rax, r15
 add rax, 1
.Lx00027_0:
 cmp rax, 1
 jge .Lx00027_239
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00027_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00027_240
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00027_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00024_n6_α
 xchain00024_n4_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00024_n5_α
# IR_GEN_SCAN
 xchain00024_n5_α:
 lea rdi, [rbp + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 272]
 mov r14, qword ptr [rbp + 280]
 mov r15, qword ptr [rbp + 288]
 jmp proc_generate_ω
 xchain00024_n5_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00024_n6_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00024_n7_α
 xchain00024_n6_β:
 jmp xchain00024_n5_α
.Lx00028_0:
 .quad 1
# IR_LIT_CHARSET
 xchain00024_n7_α:
 mov qword ptr [rbp + 832], 1
 mov dword ptr [rbp + 836], -1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00024_n8_α
 xchain00024_n7_β:
 jmp xchain00024_n5_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00024_n8_α:
 mov qword ptr [rbp + 816], r14
.Lx00030_0:
 mov rax, qword ptr [rbp + 816]
 cmp rax, r15
 jge xchain00024_n5_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00030_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00030_1
 mov qword ptr [rbp + 800], 6
 add rax, 1
 mov qword ptr [rbp + 808], rax
 jmp xchain00024_n9_α
.Lx00030_1:
 inc qword ptr [rbp + 816]
 jmp .Lx00030_0
 xchain00024_n8_β:
 inc qword ptr [rbp + 816]
 jmp .Lx00030_0
.Lx00030_2:
 .quad .Lx00030_2_s
.Lx00030_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00024_n9_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 808]
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jge .Lx00031_239
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00031_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00031_240
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00031_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00024_n10_α
 xchain00024_n9_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00024_n5_α
# IR_LIMIT
 xchain00024_n10_α:
 mov rax, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 744]
 cmp rax, rcx
 jge xchain00024_n5_α
 inc qword ptr [rbp + 720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
 jmp xchain00024_n11_α
 xchain00024_n10_β:
 jmp xchain00024_n9_β
 xchain00024_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00024_n12_α
 xchain00024_n11_β:
 jmp xchain00024_n5_α
# IR_LIT_INTEGER
 xchain00024_n12_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00024_n13_α
 xchain00024_n12_β:
 jmp xchain00024_n5_α
.Lx00032_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00024_n13_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00033_239
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00033_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00033_240
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00033_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00024_n14_α
 xchain00024_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00024_n5_α
# IR_LIT_INTEGER
 xchain00024_n14_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00024_n15_α
 xchain00024_n14_β:
 jmp xchain00024_n17_α
.Lx00034_0:
 .quad 0
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00024_n15_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00035_0
 add rax, r15
 add rax, 1
.Lx00035_0:
 cmp rax, 1
 jl xchain00024_n17_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00024_n17_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00024_n17_α
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00024_n16_α
 xchain00024_n15_β:
 jmp xchain00024_n17_α
# IR_LIT_INTEGER
 xchain00024_n16_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00024_n18_α
 xchain00024_n16_β:
 jmp xchain00024_n17_α
.Lx00036_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00024_n17_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00024_n19_α
 xchain00024_n17_β:
 jmp xchain00024_n5_α
.Lx00037_0:
 .quad 0
 xchain00024_n18_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 520], rax
 jmp xchain00024_n20_α
xchain00024_n18_β:
 jmp xchain00024_n17_α
# IR_SCAN_TAB
 xchain00024_n19_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00038_0
 add rax, r15
 add rax, 1
.Lx00038_0:
 cmp rax, 1
 jge .Lx00038_239
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00038_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00038_240
 add rsp, 16
 jmp xchain00024_n5_α
.Lx00038_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00024_n21_α
 xchain00024_n19_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00024_n5_α
# IR_MOVE_LABEL
 xchain00024_n20_α:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00024_n24_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00024_n23_α
 xchain00024_n20_β:
 jmp xchain00024_n5_α
 xchain00024_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn263: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn263]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00024_n5_α
 jmp xchain00024_n26_α
 xchain00024_n21_β:
 jmp xchain00024_n5_α
 xchain00024_n22_α:
 jmp xchain00024_n5_α
xchain00024_n22_β:
 jmp xchain00024_n5_α
 xchain00024_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00024_n27_α
 xchain00024_n23_β:
 jmp xchain00024_n5_α
 xchain00024_n24_α:
 jmp xchain00024_n17_α
xchain00024_n24_β:
 jmp xchain00024_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00024_n25_α:
 jmp qword ptr [rbp + 384]
 xchain00024_n25_β:
 jmp xchain00024_n5_α
# IR_MOVE_LABEL
 xchain00024_n26_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00024_n22_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00024_n23_α
 xchain00024_n26_β:
 jmp xchain00024_n5_α
 xchain00024_n27_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 344], rax
 jmp xchain00024_n28_α
xchain00024_n27_β:
 jmp xchain00024_n5_α
# IR_GEN_SCAN
 xchain00024_n28_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
 lea rdi, [rbp + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 272]
 mov r14, qword ptr [rbp + 280]
 mov r15, qword ptr [rbp + 288]
 jmp xchain00024_n29_α
 xchain00024_n28_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00024_n29_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00024_n30_α
 xchain00024_n29_β:
 jmp xchain00024_n32_α
.Lx00039_0:
 .quad 1
# IR_VAR
 xchain00024_n30_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 152], rax
 jmp xchain00024_n31_α
 xchain00024_n30_β:
 jmp xchain00024_n32_α
# IR_TO
 xchain00024_n31_α:
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 96], rax
.Lx00040_0:
 mov rax, qword ptr [rbp + 96]
 mov rcx, qword ptr [rbp + 152]
 cmp rax, rcx
 jg xchain00024_n32_α
 mov qword ptr [rbp + 80], 6
 mov qword ptr [rbp + 88], rax
 jmp xchain00024_n33_α
 xchain00024_n31_β:
 inc qword ptr [rbp + 96]
 jmp .Lx00040_0
# IR_RETURN
 xchain00024_n32_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_generate_γ
# IR_VAR
 xchain00024_n33_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 232], rax
 jmp xchain00024_n34_α
 xchain00024_n33_β:
 jmp xchain00024_n31_β
 xchain00024_n34_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00041_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00041_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00041_3]
 lea rdx, [rip + .Lx00041_4]
 jmp rax
.Lx00041_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00041_2
.Lx00041_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00041_2
.Lx00041_1:
 call rt_faildescr@PLT
.Lx00041_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00024_n31_β
 jmp xchain00024_n31_β
 xchain00024_n34_β:
 jmp xchain00024_n31_β
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "gener"
proc_generate_res:
add rsp, 8
pop rbp
proc_generate_β:
jmp proc_generate_ω
proc_generate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1048]
lea rsp, [rbp + 1072]
mov rbp, [rbp + 1064]
jmp rax
proc_generate_ω:
mov rax, [rbp + 1056]
lea rsp, [rbp + 1072]
mov rbp, [rbp + 1064]
jmp rax
  .globl proc_getrhs_α
proc_getrhs_α:
#=======================================================================================================================
    .global proc_getrhs_α
    .global proc_getrhs_β
    .global proc_getrhs_γ
    .global proc_getrhs_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 472], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_getrhs_α_body:
# IR_LIT_STRING
 xchain00042_n0_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00042_n1_α
 xchain00042_n0_β:
 jmp xchain00042_n2_α
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string ""
 xchain00042_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00042_n2_α
 xchain00042_n1_β:
 jmp xchain00042_n2_α
# IR_VAR
 xchain00042_n2_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 216], rax
 jmp xchain00042_n3_α
 xchain00042_n2_β:
 jmp xchain00042_n4_α
# IR_VAR
 xchain00042_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00042_n5_α
 xchain00042_n3_β:
 jmp xchain00042_n4_α
# IR_VAR
 xchain00042_n4_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 72], rax
 jmp xchain00042_n6_α
 xchain00042_n4_β:
 jmp proc_getrhs_ω
# IR_LIST_BANG
 xchain00042_n5_α:
 mov qword ptr [rbp + 336], 0
.Lx00044_0:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 336]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp rax, 99
 je xchain00042_n4_α
 jmp xchain00042_n7_α
 xchain00042_n5_β:
 inc qword ptr [rbp + 336]
 jmp .Lx00044_0
# IR_LIT_INTEGER
 xchain00042_n6_α:
 mov qword ptr [rbp + 96], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00042_n8_α
 xchain00042_n6_β:
 jmp proc_getrhs_ω
.Lx00045_0:
 .quad 1
 xchain00042_n7_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00046_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00046_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00046_3]
 lea rdx, [rip + .Lx00046_4]
 jmp rax
.Lx00046_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00046_2
.Lx00046_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00046_2
.Lx00046_1:
 call rt_faildescr@PLT
.Lx00046_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00042_n4_α
 jmp xchain00042_n9_α
 xchain00042_n7_β:
 jmp xchain00042_n4_α
.Lx00046_0:
 .quad .Lx00046_0_s
.Lx00046_0_s:
 .string "listimage"
# IR_LIT_INTEGER
 xchain00042_n8_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00042_n10_α
 xchain00042_n8_β:
 jmp proc_getrhs_ω
.Lx00047_0:
 .quad 18446744073709551615
# IR_LIT_STRING
 xchain00042_n9_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00042_n11_α
 xchain00042_n9_β:
 jmp xchain00042_n5_β
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "|"
# IR_SUBSCRIPT section
 xchain00042_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 96]
 mov rcx, qword ptr [rbp + 104]
 mov r8, qword ptr [rbp + 128]
 mov r9, qword ptr [rbp + 136]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getrhs_ω
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00042_n12_α
 xchain00042_n10_β:
 jmp proc_getrhs_ω
 xchain00042_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 call str_concat_d@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00042_n13_α
 xchain00042_n11_β:
 jmp xchain00042_n4_α
# IR_RETURN
 xchain00042_n12_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getrhs_γ
 xchain00042_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call str_concat_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00042_n14_α
 xchain00042_n13_β:
 jmp xchain00042_n4_α
 xchain00042_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00042_n5_β
 xchain00042_n14_β:
 jmp xchain00042_n4_α
proc_getrhs_res:
add rsp, 8
pop rbp
proc_getrhs_β:
jmp proc_getrhs_ω
proc_getrhs_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_getrhs_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_grammar_α
proc_grammar_α:
#=======================================================================================================================
    .global proc_grammar_α
    .global proc_grammar_β
    .global proc_grammar_γ
    .global proc_grammar_ω
  sub rsp, 2016
  mov [rsp + 1992], rcx
  mov [rsp + 2000], rdx
  mov [rsp + 2008], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1984
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1928], rsp
  mov rdi, rsp
  mov esi, 1984
  call rt_jmp_frame_lexprep@PLT
proc_grammar_α_body:
# IR_VAR
 xchain00049_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00049_n1_α
 xchain00049_n0_β:
 jmp proc_grammar_ω
# IR_GEN_SCAN
 xchain00049_n1_α:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00049_n2_α
 xchain00049_n1_β:
 jmp proc_grammar_ω
# IR_LIT_STRING
 xchain00049_n2_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00049_n3_α
 xchain00049_n2_β:
 jmp xchain00049_n6_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "->"
# IR_SCAN_FIND
 xchain00049_n3_α:
 mov qword ptr [rbp + 1840], r14
.Lx00051_0:
 mov rax, qword ptr [rbp + 1840]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00049_n6_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 45
 jne .Lx00051_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx00051_1
 mov qword ptr [rbp + 1824], 6
 add rax, 1
 mov qword ptr [rbp + 1832], rax
 jmp xchain00049_n4_α
.Lx00051_1:
 inc qword ptr [rbp + 1840]
 jmp .Lx00051_0
 xchain00049_n3_β:
 inc qword ptr [rbp + 1840]
 jmp .Lx00051_0
# IR_SCAN_TAB
 xchain00049_n4_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1832]
 cmp rax, 1
 jge .Lx00052_0
 add rax, r15
 add rax, 1
.Lx00052_0:
 cmp rax, 1
 jge .Lx00052_239
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00052_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00052_240
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00052_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00049_n5_α
 xchain00049_n4_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00049_n6_α
 xchain00049_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00049_n7_α
 xchain00049_n5_β:
 jmp xchain00049_n6_α
# IR_GEN_SCAN
 xchain00049_n6_α:
 lea rdi, [rbp + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 992]
 mov r14, qword ptr [rbp + 1000]
 mov r15, qword ptr [rbp + 1008]
 jmp proc_grammar_ω
 xchain00049_n6_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00049_n7_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00049_n8_α
 xchain00049_n7_β:
 jmp xchain00049_n6_α
.Lx00053_0:
 .quad 2
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00049_n8_α:
 sub rsp, 16
 mov rax, 2
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00054_239
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00054_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00054_240
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00054_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00049_n9_α
 xchain00049_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00049_n6_α
# IR_LIT_INTEGER
 xchain00049_n9_α:
 mov qword ptr [rbp + 1680], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00049_n10_α
 xchain00049_n9_β:
 jmp xchain00049_n6_α
.Lx00055_0:
 .quad 0
# IR_SCAN_TAB
 xchain00049_n10_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00056_0
 add rax, r15
 add rax, 1
.Lx00056_0:
 cmp rax, 1
 jge .Lx00056_239
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00056_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00056_240
 add rsp, 16
 jmp xchain00049_n6_α
.Lx00056_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00049_n11_α
 xchain00049_n10_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00049_n6_α
 xchain00049_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00049_n12_α
 xchain00049_n11_β:
 jmp xchain00049_n6_α
# IR_VAR
 xchain00049_n12_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00049_n13_α
 xchain00049_n12_β:
 jmp xchain00049_n14_α
# IR_UNOP
 xchain00049_n13_α:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00049_n15_α
 xchain00049_n13_β:
 jmp xchain00049_n14_α
# IR_VAR
 xchain00049_n14_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00049_n16_α
 xchain00049_n14_β:
 jmp xchain00049_n17_α
# IR_LIT_INTEGER
 xchain00049_n15_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00049_n18_α
 xchain00049_n15_β:
 jmp xchain00049_n14_α
.Lx00057_0:
 .quad 0
# IR_LIT_STRING
 xchain00049_n16_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00049_n19_α
 xchain00049_n16_β:
 jmp xchain00049_n17_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "w"
# KEYWORD_read
 xchain00049_n17_α:
 mov rdi, qword ptr [rip + .Lx00059_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00049_n20_α
 xchain00049_n17_β:
 jmp proc_grammar_ω
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "&errout"
 xchain00049_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1536]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [rbp + 1536]
 cmp eax, 6
 jne .Lx00060_2
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 6
 jne .Lx00060_2
.Lx00060_1:
 mov rax, qword ptr [rbp + 1544]
 mov rcx, qword ptr [rbp + 1608]
 cmp rax, rcx
 jne xchain00049_n14_α
 mov rcx, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1504], rcx
 mov rcx, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1512], rcx
 jmp xchain00049_n21_α
.Lx00060_0:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1600]
 mov rcx, qword ptr [rbp + 1608]
 mov r8d, 9
 lea r9, [rbp + 1504]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00060_1
 cmp eax, 1
 je xchain00049_n14_α
 jmp xchain00049_n21_α
.Lx00060_2:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1600]
 mov rcx, qword ptr [rbp + 1608]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00049_n14_α
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00049_n21_α
 xchain00049_n18_β:
 jmp xchain00049_n14_α
 xchain00049_n19_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn335: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain00049_n17_α
 jmp xchain00049_n22_α
 xchain00049_n19_β:
 jmp xchain00049_n17_α
# IR_LIT_STRING
 xchain00049_n20_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00049_n23_α
 xchain00049_n20_β:
 jmp proc_grammar_ω
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "*** cannot open "
# KEYWORD_read
 xchain00049_n21_α:
 mov rdi, qword ptr [rip + .Lx00062_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00049_n24_α
 xchain00049_n21_β:
 jmp xchain00049_n6_α
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string "&output"
# IR_MOVE_LABEL
 xchain00049_n22_α:
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1160], rax
 lea rax, [rip + xchain00049_n17_α]
 mov qword ptr [rbp + 1168], rax
 jmp xchain00049_n25_α
 xchain00049_n22_β:
 jmp xchain00049_n6_α
# IR_VAR
 xchain00049_n23_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00049_n27_α
 xchain00049_n23_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00049_n24_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
 lea rax, [rip + xchain00049_n29_α]
 mov qword ptr [rbp + 1104], rax
 jmp xchain00049_n28_α
 xchain00049_n24_β:
 jmp xchain00049_n6_α
# IR_MOVE_LABEL
 xchain00049_n25_α:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
 lea rax, [rip + xchain00049_n26_α]
 mov qword ptr [rbp + 1104], rax
 jmp xchain00049_n28_α
 xchain00049_n25_β:
 jmp xchain00049_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00049_n26_α:
 jmp qword ptr [rbp + 1168]
 xchain00049_n26_β:
 jmp xchain00049_n6_α
 xchain00049_n27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1232]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1248]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn349: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn349]
 lea rsi, [rbp + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_grammar_ω
 jmp proc_grammar_ω
 xchain00049_n27_β:
 jmp proc_grammar_ω
 xchain00049_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00049_n31_α
 xchain00049_n28_β:
 jmp xchain00049_n6_α
 xchain00049_n29_α:
 jmp xchain00049_n6_α
xchain00049_n29_β:
 jmp xchain00049_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00049_n30_α:
 jmp qword ptr [rbp + 1104]
 xchain00049_n30_β:
 jmp xchain00049_n6_α
 xchain00049_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00049_n32_α
xchain00049_n31_β:
 jmp xchain00049_n6_α
# IR_GEN_SCAN
 xchain00049_n32_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
 lea rdi, [rbp + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 992]
 mov r14, qword ptr [rbp + 1000]
 mov r15, qword ptr [rbp + 1008]
 jmp xchain00049_n33_α
 xchain00049_n32_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00049_n33_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 920], rax
 jmp xchain00049_n34_α
 xchain00049_n33_β:
 jmp xchain00049_n35_α
# IR_UNOP
 xchain00049_n34_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 call rt_size_d@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00049_n36_α
 xchain00049_n34_β:
 jmp xchain00049_n35_α
# IR_VAR_REF
 xchain00049_n35_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00049_n37_α
 xchain00049_n35_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00049_n36_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00049_n38_α
 xchain00049_n36_β:
 jmp xchain00049_n35_α
.Lx00063_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00049_n37_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00049_n39_α
 xchain00049_n37_β:
 jmp proc_grammar_ω
.Lx00064_0:
 .quad 1
 xchain00049_n38_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 880]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx00065_0
 mov eax, dword ptr [rbp + 880]
 cmp eax, 6
 jne .Lx00065_2
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00065_2
.Lx00065_1:
 mov rax, qword ptr [rbp + 888]
 mov rcx, qword ptr [rbp + 952]
 cmp rax, rcx
 jne xchain00049_n35_α
 mov rcx, qword ptr [rbp + 944]
 mov qword ptr [rbp + 848], rcx
 mov rcx, qword ptr [rbp + 952]
 mov qword ptr [rbp + 856], rcx
 jmp xchain00049_n40_α
.Lx00065_0:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 9
 lea r9, [rbp + 848]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00065_1
 cmp eax, 1
 je xchain00049_n35_α
 jmp xchain00049_n40_α
.Lx00065_2:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00049_n35_α
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 856], rax
 jmp xchain00049_n40_α
 xchain00049_n38_β:
 jmp xchain00049_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain00049_n39_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00049_n41_α
 xchain00049_n39_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00049_n40_α:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + xchain00049_n35_α]
 mov qword ptr [rbp + 464], rax
 jmp xchain00049_n42_α
 xchain00049_n40_β:
 jmp xchain00049_n42_α
# IR_DEREF variable -> value
 xchain00049_n41_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00049_n44_α
 xchain00049_n41_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00049_n42_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 392], rax
 jmp xchain00049_n45_α
 xchain00049_n42_β:
 jmp xchain00049_n46_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00049_n43_α:
 jmp qword ptr [rbp + 464]
 xchain00049_n43_β:
 jmp xchain00049_n42_α
# IR_LIT_STRING
 xchain00049_n44_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00049_n47_α
 xchain00049_n44_β:
 jmp proc_grammar_ω
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "<"
# IR_VAR
 xchain00049_n45_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 424], rax
 jmp xchain00049_n48_α
 xchain00049_n45_β:
 jmp xchain00049_n46_α
# IR_VAR
 xchain00049_n46_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 264], rax
 jmp xchain00049_n49_α
 xchain00049_n46_β:
 jmp xchain00049_n50_α
 xchain00049_n47_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00049_n51_α
 xchain00049_n47_β:
 jmp proc_grammar_ω
 xchain00049_n48_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00067_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00067_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00067_3]
 lea rdx, [rip + .Lx00067_4]
 jmp rax
.Lx00067_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00067_2
.Lx00067_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00067_2
.Lx00067_1:
 call rt_faildescr@PLT
.Lx00067_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00049_n46_α
 jmp xchain00049_n46_α
 xchain00049_n48_β:
 jmp xchain00049_n46_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "pwrite"
# IR_UNOP
 xchain00049_n49_α:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_size_d@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00049_n52_α
 xchain00049_n49_β:
 jmp xchain00049_n50_α
# IR_RETURN
 xchain00049_n50_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_grammar_γ
# IR_VAR_REF
 xchain00049_n51_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00049_n53_α
 xchain00049_n51_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00049_n52_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00049_n54_α
 xchain00049_n52_β:
 jmp xchain00049_n50_α
.Lx00068_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00049_n53_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00049_n55_α
 xchain00049_n53_β:
 jmp proc_grammar_ω
.Lx00069_0:
 .quad 18446744073709551615
 xchain00049_n54_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [rbp + 288]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00070_2
 mov eax, dword ptr [rbp + 288]
 cmp eax, 6
 jne .Lx00070_2
.Lx00070_1:
 mov rax, qword ptr [rbp + 232]
 mov rcx, qword ptr [rbp + 296]
 cmp rax, rcx
 je xchain00049_n50_α
 mov rcx, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rcx
 mov rcx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rcx
 jmp xchain00049_n56_α
.Lx00070_0:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 10
 lea r9, [rbp + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00070_1
 cmp eax, 1
 je xchain00049_n50_α
 jmp xchain00049_n56_α
.Lx00070_2:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00049_n50_α
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rax
 jmp xchain00049_n56_α
 xchain00049_n54_β:
 jmp xchain00049_n50_α
# IR_SUBSCRIPT x[i] variable
 xchain00049_n55_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00049_n57_α
 xchain00049_n55_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00049_n56_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 168], rax
 jmp xchain00049_n59_α
 xchain00049_n56_β:
 jmp xchain00049_n50_α
# IR_DEREF variable -> value
 xchain00049_n57_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00049_n60_α
 xchain00049_n57_β:
 jmp proc_grammar_ω
 xchain00049_n58_α:
 jmp proc_grammar_ω
xchain00049_n58_β:
 jmp proc_grammar_ω
 xchain00049_n59_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn394: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn394]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00049_n50_α
 jmp xchain00049_n61_α
 xchain00049_n59_β:
 jmp xchain00049_n50_α
# IR_LIT_STRING
 xchain00049_n60_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00049_n62_α
 xchain00049_n60_β:
 jmp proc_grammar_ω
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string ">"
# IR_MOVE_LABEL
 xchain00049_n61_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 lea rax, [rip + xchain00049_n50_α]
 mov qword ptr [rbp + 96], rax
 jmp xchain00049_n50_α
 xchain00049_n61_β:
 jmp xchain00049_n50_α
 xchain00049_n62_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00049_n64_α
 xchain00049_n62_β:
 jmp proc_grammar_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00049_n63_α:
 jmp qword ptr [rbp + 96]
 xchain00049_n63_β:
 jmp xchain00049_n50_α
 xchain00049_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 488], rax
 jmp xchain00049_n65_α
xchain00049_n64_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00049_n65_α:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + xchain00049_n58_α]
 mov qword ptr [rbp + 464], rax
 jmp xchain00049_n42_α
 xchain00049_n65_β:
 jmp xchain00049_n42_α
proc_grammar_res:
add rsp, 8
pop rbp
proc_grammar_β:
jmp proc_grammar_ω
proc_grammar_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1992]
lea rsp, [rbp + 2016]
mov rbp, [rbp + 2008]
jmp rax
proc_grammar_ω:
mov rax, [rbp + 2000]
lea rsp, [rbp + 2016]
mov rbp, [rbp + 2008]
jmp rax
  .globl proc_listimage_α
proc_listimage_α:
#=======================================================================================================================
    .global proc_listimage_α
    .global proc_listimage_β
    .global proc_listimage_γ
    .global proc_listimage_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_listimage_α_body:
# IR_LIT_STRING
 xchain00072_n0_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00072_n1_α
 xchain00072_n0_β:
 jmp xchain00072_n2_α
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string ""
 xchain00072_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00072_n2_α
 xchain00072_n1_β:
 jmp xchain00072_n2_α
# IR_VAR
 xchain00072_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00072_n3_α
 xchain00072_n2_β:
 jmp xchain00072_n4_α
# IR_LIST_BANG
 xchain00072_n3_α:
 mov qword ptr [rbp + 96], 0
.Lx00074_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp rax, 99
 je xchain00072_n4_α
 jmp xchain00072_n5_α
 xchain00072_n3_β:
 inc qword ptr [rbp + 96]
 jmp .Lx00074_0
# IR_VAR
 xchain00072_n4_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 40], rax
 jmp xchain00072_n6_α
 xchain00072_n4_β:
 jmp proc_listimage_ω
 xchain00072_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00072_n7_α
 xchain00072_n5_β:
 jmp xchain00072_n4_α
# IR_RETURN
 xchain00072_n6_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listimage_γ
# IR_VAR
 xchain00072_n7_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 200], rax
 jmp xchain00072_n8_α
 xchain00072_n7_β:
 jmp xchain00072_n3_β
# IR_VAR
 xchain00072_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 280], rax
 jmp xchain00072_n9_α
 xchain00072_n8_β:
 jmp xchain00072_n3_β
 xchain00072_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00075_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00075_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00075_3]
 lea rdx, [rip + .Lx00075_4]
 jmp rax
.Lx00075_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00075_2
.Lx00075_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00075_2
.Lx00075_1:
 call rt_faildescr@PLT
.Lx00075_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00072_n3_β
 jmp xchain00072_n10_α
 xchain00072_n9_β:
 jmp xchain00072_n3_β
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "symimage"
 xchain00072_n10_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 call str_concat_d@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00072_n11_α
 xchain00072_n10_β:
 jmp xchain00072_n3_β
 xchain00072_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00072_n3_β
 xchain00072_n11_β:
 jmp xchain00072_n3_β
proc_listimage_res:
add rsp, 8
pop rbp
proc_listimage_β:
jmp proc_listimage_ω
proc_listimage_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_listimage_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_prompter_α
proc_prompter_α:
#=======================================================================================================================
    .global proc_prompter_α
    .global proc_prompter_β
    .global proc_prompter_γ
    .global proc_prompter_ω
  sub rsp, 448
  mov [rsp + 424], rcx
  mov [rsp + 432], rdx
  mov [rsp + 440], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 416
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 416
  call rt_jmp_frame_lexprep@PLT
proc_prompter_α_body:
# IR_VAR_REF
 xchain00076_n0_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00076_n1_α
 xchain00076_n0_β:
 jmp proc_prompter_ω
# IR_LIT_INTEGER
 xchain00076_n1_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00076_n2_α
 xchain00076_n1_β:
 jmp proc_prompter_ω
.Lx00077_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00076_n2_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00076_n3_α
 xchain00076_n2_β:
 jmp proc_prompter_ω
# IR_DEREF variable -> value
 xchain00076_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 call rt_deref@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00076_n4_α
 xchain00076_n3_β:
 jmp proc_prompter_ω
# IR_LIT_STRING
 xchain00076_n4_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00076_n5_α
 xchain00076_n4_β:
 jmp proc_prompter_ω
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "="
 xchain00076_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_prompter_ω
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00076_n6_α
 xchain00076_n5_β:
 jmp proc_prompter_ω
# IR_VAR
 xchain00076_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00076_n7_α
 xchain00076_n6_β:
 jmp xchain00076_n8_α
# IR_LIT_INTEGER
 xchain00076_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00076_n9_α
 xchain00076_n7_β:
 jmp xchain00076_n8_α
.Lx00079_0:
 .quad 2
# IR_RETURN
 xchain00076_n8_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_prompter_γ
# IR_LIT_INTEGER
 xchain00076_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00076_n10_α
 xchain00076_n9_β:
 jmp xchain00076_n8_α
.Lx00080_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00076_n10_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8, qword ptr [rbp + 192]
 mov r9, qword ptr [rbp + 200]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00076_n8_α
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00076_n11_α
 xchain00076_n10_β:
 jmp xchain00076_n8_α
# IR_ASSIGN gva
 xchain00076_n11_α:
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00076_n8_α
 xchain00076_n11_β:
 jmp xchain00076_n8_α
proc_prompter_res:
add rsp, 8
pop rbp
proc_prompter_β:
jmp proc_prompter_ω
proc_prompter_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_prompter_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_pwrite_α
proc_pwrite_α:
#=======================================================================================================================
    .global proc_pwrite_α
    .global proc_pwrite_β
    .global proc_pwrite_γ
    .global proc_pwrite_ω
  sub rsp, 2384
  mov [rsp + 2360], rcx
  mov [rsp + 2368], rdx
  mov [rsp + 2376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2312], rsp
  mov rdi, rsp
  mov esi, 2352
  call rt_jmp_frame_lexprep@PLT
proc_pwrite_α_body:
# IR_VAR_REF
 xchain00081_n0_α:
 mov rdi, 1879052448
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00081_n1_α
 xchain00081_n0_β:
 jmp xchain00081_n3_α
# IR_NULLTEST_VAR
 xchain00081_n1_α:
 mov eax, dword ptr [rbp + 2192]
 cmp eax, 99
 je xchain00081_n3_α
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00081_n3_α
 cmp eax, 0
 jne xchain00081_n3_α
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00081_n2_α
 xchain00081_n1_β:
 jmp xchain00081_n3_α
# IR_LIT_INTEGER
 xchain00081_n2_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00081_n4_α
 xchain00081_n2_β:
 jmp xchain00081_n3_α
.Lx00082_0:
 .quad 1
# IR_VAR
 xchain00081_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00081_n5_α
 xchain00081_n3_β:
 jmp xchain00081_n6_α
# IR_ASSIGN_VAR
 xchain00081_n4_α:
 mov rdi, qword ptr [rbp + 2224]
 mov rsi, qword ptr [rbp + 2232]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00081_n3_α
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00081_n7_α
 xchain00081_n4_β:
 jmp xchain00081_n3_α
# IR_UNOP
 xchain00081_n5_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain00081_n8_α
 xchain00081_n5_β:
 jmp xchain00081_n6_α
# IR_VAR
 xchain00081_n6_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00081_n9_α
 xchain00081_n6_β:
 jmp xchain00081_n10_α
# IR_LIT_STRING
 xchain00081_n7_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00081_n11_α
 xchain00081_n7_β:
 jmp xchain00081_n3_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "lb"
# IR_LIT_INTEGER
 xchain00081_n8_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00081_n12_α
 xchain00081_n8_β:
 jmp xchain00081_n6_α
.Lx00084_0:
 .quad 0
# IR_VAR
 xchain00081_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00081_n13_α
 xchain00081_n9_β:
 jmp xchain00081_n10_α
# IR_LIT_STRING
 xchain00081_n10_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00081_n14_α
 xchain00081_n10_β:
 jmp proc_pwrite_ω
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "*** undefined nonterminal:  "
# IR_LIT_STRING
 xchain00081_n11_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain00081_n15_α
 xchain00081_n11_β:
 jmp xchain00081_n3_α
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "rb"
 xchain00081_n12_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx00087_2
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 6
 jne .Lx00087_2
.Lx00087_1:
 mov rax, qword ptr [rbp + 1656]
 mov rcx, qword ptr [rbp + 1720]
 cmp rax, rcx
 jne xchain00081_n6_α
 mov rcx, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1616], rcx
 mov rcx, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1624], rcx
 jmp xchain00081_n16_α
.Lx00087_0:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 9
 lea r9, [rbp + 1616]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00087_1
 cmp eax, 1
 je xchain00081_n6_α
 jmp xchain00081_n16_α
.Lx00087_2:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00081_n6_α
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00081_n16_α
 xchain00081_n12_β:
 jmp xchain00081_n6_α
# IR_LIT_STRING
 xchain00081_n13_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00081_n17_α
 xchain00081_n13_β:
 jmp xchain00081_n10_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "::="
# IR_VAR
 xchain00081_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00081_n18_α
 xchain00081_n14_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00081_n15_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00081_n19_α
 xchain00081_n15_β:
 jmp xchain00081_n3_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "vb"
# IR_VAR
 xchain00081_n16_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00081_n20_α
 xchain00081_n16_β:
 jmp xchain00081_n21_α
# IR_VAR_REF
 xchain00081_n17_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00081_n22_α
 xchain00081_n17_β:
 jmp xchain00081_n10_α
 xchain00081_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn464: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn464]
 lea rsi, [rbp + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00081_n23_α
 xchain00081_n18_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00081_n19_α:
 mov qword ptr [rbp + 2032], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00081_n24_α
 xchain00081_n19_β:
 jmp xchain00081_n3_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "nl"
# IR_LIT_INTEGER
 xchain00081_n20_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00081_n25_α
 xchain00081_n20_β:
 jmp xchain00081_n21_α
.Lx00091_0:
 .quad 3
# IR_VAR
 xchain00081_n21_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 168], rax
 jmp xchain00081_n26_α
 xchain00081_n21_β:
 jmp proc_pwrite_ω
# IR_VAR
 xchain00081_n22_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00081_n27_α
 xchain00081_n22_β:
 jmp xchain00081_n10_α
# IR_MOVE_LABEL
 xchain00081_n23_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
 lea rax, [rip + proc_pwrite_ω]
 mov qword ptr [rbp + 992], rax
 jmp xchain00081_n28_α
 xchain00081_n23_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00081_n24_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00081_n30_α
 xchain00081_n24_β:
 jmp xchain00081_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string ""
 xchain00081_n25_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn475: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn475]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00081_n21_α
 jmp xchain00081_n31_α
 xchain00081_n25_β:
 jmp xchain00081_n21_α
 xchain00081_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn477: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00081_n32_α
 xchain00081_n26_β:
 jmp proc_pwrite_ω
# IR_LIT_INTEGER
 xchain00081_n27_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00081_n33_α
 xchain00081_n27_β:
 jmp xchain00081_n10_α
.Lx00093_0:
 .quad 2
# IR_MOVE_LABEL
 xchain00081_n28_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain00081_n29_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_pwrite_ω
 xchain00081_n28_β:
 jmp proc_pwrite_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00081_n29_α:
 jmp qword ptr [rbp + 992]
 xchain00081_n29_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00081_n30_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00081_n35_α
 xchain00081_n30_β:
 jmp xchain00081_n3_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "&lcase"
 xchain00081_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00081_n21_α
 xchain00081_n31_β:
 jmp xchain00081_n21_α
 xchain00081_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00081_n36_α
 xchain00081_n32_β:
 jmp proc_pwrite_ω
# IR_LIT_INTEGER
 xchain00081_n33_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00081_n37_α
 xchain00081_n33_β:
 jmp xchain00081_n10_α
.Lx00095_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00081_n34_α:
 jmp qword ptr [rbp + 64]
 xchain00081_n34_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00081_n35_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00081_n38_α
 xchain00081_n35_β:
 jmp xchain00081_n3_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "&ucase"
# IR_VAR
 xchain00081_n36_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 744], rax
 jmp xchain00081_n39_α
 xchain00081_n36_β:
 jmp xchain00081_n40_α
# IR_SUBSCRIPT section
 xchain00081_n37_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 mov r8, qword ptr [rbp + 1536]
 mov r9, qword ptr [rbp + 1544]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00081_n10_α
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00081_n41_α
 xchain00081_n37_β:
 jmp xchain00081_n10_α
# IR_LIT_STRING
 xchain00081_n38_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain00081_n42_α
 xchain00081_n38_β:
 jmp xchain00081_n3_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "&digit"
# IR_VAR
 xchain00081_n39_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00081_n43_α
 xchain00081_n39_β:
 jmp xchain00081_n40_α
# IR_VAR
 xchain00081_n40_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 328], rax
 jmp xchain00081_n44_α
 xchain00081_n40_β:
 jmp xchain00081_n21_α
# IR_SUBSCRIPT x[i] variable
 xchain00081_n41_α:
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00081_n10_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain00081_n45_α
 xchain00081_n41_β:
 jmp xchain00081_n10_α
# IR_MAKE_LIST
 xchain00081_n42_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1816], rax
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1832], rax
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1848], rax
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1864], rax
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 1880], rax
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 1896], rax
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1912], rax
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 1928], rax
 lea rdi, [rbp + 1808]
 mov esi, 8
 call rt_make_list@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain00081_n46_α
 xchain00081_n42_β:
 jmp xchain00081_n3_α
# IR_LIST_BANG
 xchain00081_n43_α:
 mov qword ptr [rbp + 784], 0
.Lx00098_0:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 784]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp rax, 99
 je xchain00081_n40_α
 jmp xchain00081_n47_α
 xchain00081_n43_β:
 inc qword ptr [rbp + 784]
 jmp .Lx00098_0
# IR_LIT_STRING
 xchain00081_n44_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00081_n48_α
 xchain00081_n44_β:
 jmp xchain00081_n21_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "<"
# IR_DEREF variable -> value
 xchain00081_n45_α:
 mov rdi, qword ptr [rbp + 1568]
 mov rsi, qword ptr [rbp + 1576]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00081_n10_α
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00081_n49_α
 xchain00081_n45_β:
 jmp xchain00081_n10_α
# IR_ASSIGN gva
 xchain00081_n46_α:
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00081_n50_α
 xchain00081_n46_β:
 jmp xchain00081_n3_α
 xchain00081_n47_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00081_n43_β
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00081_n51_α
 xchain00081_n47_β:
 jmp xchain00081_n43_β
# IR_VAR
 xchain00081_n48_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 392], rax
 jmp xchain00081_n52_α
 xchain00081_n48_β:
 jmp xchain00081_n21_α
# IR_UNOP
 xchain00081_n49_α:
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 99
 je xchain00081_n10_α
 cmp eax, 0
 je xchain00081_n10_α
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1384], rax
 jmp xchain00081_n53_α
 xchain00081_n49_β:
 jmp xchain00081_n10_α
# IR_MOVE_LABEL
 xchain00081_n50_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1752], rax
 lea rax, [rip + xchain00081_n3_α]
 mov qword ptr [rbp + 1760], rax
 jmp xchain00081_n3_α
 xchain00081_n50_β:
 jmp xchain00081_n3_α
# IR_VAR
 xchain00081_n51_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 680], rax
 jmp xchain00081_n55_α
 xchain00081_n51_β:
 jmp xchain00081_n21_α
# IR_LIT_STRING
 xchain00081_n52_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00081_n57_α
 xchain00081_n52_β:
 jmp xchain00081_n21_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string ">::="
 xchain00081_n53_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00101_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00101_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00101_3]
 lea rdx, [rip + .Lx00101_4]
 jmp rax
.Lx00101_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00101_2
.Lx00101_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00101_2
.Lx00101_1:
 call rt_faildescr@PLT
.Lx00101_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain00081_n10_α
 jmp xchain00081_n58_α
 xchain00081_n53_β:
 jmp xchain00081_n10_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "getrhs"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00081_n54_α:
 jmp qword ptr [rbp + 1760]
 xchain00081_n54_β:
 jmp xchain00081_n3_α
 xchain00081_n55_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn519: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn519]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00081_n21_α
 jmp xchain00081_n21_α
 xchain00081_n55_β:
 jmp xchain00081_n21_α
 xchain00081_n56_α:
 jmp xchain00081_n21_α
xchain00081_n56_β:
 jmp xchain00081_n21_α
# IR_VAR
 xchain00081_n57_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 552], rax
 jmp xchain00081_n59_α
 xchain00081_n57_β:
 jmp xchain00081_n21_α
 xchain00081_n58_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1152]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1168]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1184]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1192], rax
# marshal arg3 = producer-box slot [zr+1328] -> [zr+1200]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn524: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn524]
 lea rsi, [rbp + 1152]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain00081_n10_α
 jmp xchain00081_n60_α
 xchain00081_n58_β:
 jmp xchain00081_n10_α
 xchain00081_n59_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn526: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn526]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00081_n21_α
 jmp xchain00081_n61_α
 xchain00081_n59_β:
 jmp xchain00081_n21_α
# IR_MOVE_LABEL
 xchain00081_n60_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 984], rax
 lea rax, [rip + xchain00081_n10_α]
 mov qword ptr [rbp + 992], rax
 jmp xchain00081_n28_α
 xchain00081_n60_β:
 jmp proc_pwrite_ω
 xchain00081_n61_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00102_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00102_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00102_3]
 lea rdx, [rip + .Lx00102_4]
 jmp rax
.Lx00102_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00102_2
.Lx00102_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00102_2
.Lx00102_1:
 call rt_faildescr@PLT
.Lx00102_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00081_n21_α
 jmp xchain00081_n62_α
 xchain00081_n61_β:
 jmp xchain00081_n21_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "getrhs"
 xchain00081_n62_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+224]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+240]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 248], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+256]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 264], rax
# marshal arg3 = producer-box slot [zr+416] -> [zr+272]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 280], rax
# marshal arg4 = producer-box slot [zr+448] -> [zr+288]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn532: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn532]
 lea rsi, [rbp + 224]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00081_n21_α
 jmp xchain00081_n63_α
 xchain00081_n62_β:
 jmp xchain00081_n21_α
 xchain00081_n63_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
 jmp xchain00081_n21_α
xchain00081_n63_β:
 jmp xchain00081_n21_α
proc_pwrite_res:
add rsp, 8
pop rbp
proc_pwrite_β:
jmp proc_pwrite_ω
proc_pwrite_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2360]
lea rsp, [rbp + 2384]
mov rbp, [rbp + 2376]
jmp rax
proc_pwrite_ω:
mov rax, [rbp + 2368]
lea rsp, [rbp + 2384]
mov rbp, [rbp + 2376]
jmp rax
  .globl proc_source_α
proc_source_α:
#=======================================================================================================================
    .global proc_source_α
    .global proc_source_β
    .global proc_source_γ
    .global proc_source_ω
  sub rsp, 928
  mov [rsp + 904], rcx
  mov [rsp + 912], rdx
  mov [rsp + 920], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 896
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 856], rsp
  mov rdi, rsp
  mov esi, 896
  call rt_jmp_frame_lexprep@PLT
proc_source_α_body:
# IR_VAR
 xchain00103_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 824], rax
 jmp xchain00103_n1_α
 xchain00103_n0_β:
 jmp proc_source_ω
# IR_GEN_SCAN
 xchain00103_n1_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00103_n2_α
 xchain00103_n1_β:
 jmp proc_source_ω
# IR_LIT_STRING
 xchain00103_n2_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00103_n3_α
 xchain00103_n2_β:
 jmp xchain00103_n7_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "@"
# IR_SCAN_MATCH
 xchain00103_n3_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00105_239
 add rsp, 16
 jmp xchain00103_n7_α
.Lx00105_239:
 mov rdi, qword ptr [rip + .Lx00105_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00105_240
 add rsp, 16
 jmp xchain00103_n7_α
.Lx00105_240:
 mov qword ptr [rbp + 752], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 760], rax
 jmp xchain00103_n4_α
 xchain00103_n3_β:
 add rsp, 16
 jmp xchain00103_n7_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00103_n4_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 760]
 cmp rax, 1
 jge .Lx00106_0
 add rax, r15
 add rax, 1
.Lx00106_0:
 cmp rax, 1
 jge .Lx00106_239
 add rsp, 16
 jmp xchain00103_n7_α
.Lx00106_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00106_240
 add rsp, 16
 jmp xchain00103_n7_α
.Lx00106_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00103_n6_α
 xchain00103_n4_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00103_n7_α
 xchain00103_n5_α:
 jmp xchain00103_n7_α
xchain00103_n5_β:
 jmp xchain00103_n7_α
# IR_LIT_INTEGER
 xchain00103_n6_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00103_n8_α
 xchain00103_n6_β:
 jmp xchain00103_n10_α
.Lx00107_0:
 .quad 0
# IR_GEN_SCAN
 xchain00103_n7_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_source_ω
 xchain00103_n7_β:
 jmp proc_source_ω
# IR_SCAN_TAB
 xchain00103_n8_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00108_0
 add rax, r15
 add rax, 1
.Lx00108_0:
 cmp rax, 1
 jge .Lx00108_239
 add rsp, 16
 jmp xchain00103_n10_α
.Lx00108_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00108_240
 add rsp, 16
 jmp xchain00103_n10_α
.Lx00108_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00103_n9_α
 xchain00103_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00103_n10_α
 xchain00103_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00103_n11_α
 xchain00103_n9_β:
 jmp xchain00103_n10_α
# KEYWORD_read
 xchain00103_n10_α:
 mov rdi, qword ptr [rip + .Lx00109_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00103_n12_α
 xchain00103_n10_β:
 jmp proc_source_ω
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "&errout"
 xchain00103_n11_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn553: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn553]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00103_n10_α
 jmp xchain00103_n13_α
 xchain00103_n11_β:
 jmp xchain00103_n10_α
# IR_LIT_STRING
 xchain00103_n12_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00103_n14_α
 xchain00103_n12_β:
 jmp proc_source_ω
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "*** cannot open "
# IR_MOVE_LABEL
 xchain00103_n13_α:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00103_n10_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00103_n15_α
 xchain00103_n13_β:
 jmp xchain00103_n18_α
# IR_VAR
 xchain00103_n14_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 568], rax
 jmp xchain00103_n17_α
 xchain00103_n14_β:
 jmp proc_source_ω
 xchain00103_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00103_n18_α
 xchain00103_n15_β:
 jmp xchain00103_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00103_n16_α:
 jmp qword ptr [rbp + 384]
 xchain00103_n16_β:
 jmp xchain00103_n18_α
 xchain00103_n17_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn563: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn563]
 lea rsi, [rbp + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_source_ω
 jmp proc_source_ω
 xchain00103_n17_β:
 jmp proc_source_ω
# IR_VAR
 xchain00103_n18_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00103_n19_α
 xchain00103_n18_β:
 jmp xchain00103_n20_α
# IR_VAR
 xchain00103_n19_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00103_n21_α
 xchain00103_n19_β:
 jmp xchain00103_n20_α
# IR_RETURN
 xchain00103_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_source_γ
 xchain00103_n21_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn568: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn568]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00103_n20_α
 jmp xchain00103_n22_α
 xchain00103_n21_β:
 jmp xchain00103_n20_α
# IR_VAR
 xchain00103_n22_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 200], rax
 jmp xchain00103_n23_α
 xchain00103_n22_β:
 jmp xchain00103_n20_α
# IR_ASSIGN gva
 xchain00103_n23_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00103_n24_α
 xchain00103_n23_β:
 jmp xchain00103_n20_α
 xchain00103_n24_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00103_n20_α
xchain00103_n24_β:
 jmp xchain00103_n20_α
proc_source_res:
add rsp, 8
pop rbp
proc_source_β:
jmp proc_source_ω
proc_source_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 904]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
proc_source_ω:
mov rax, [rbp + 912]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
  .globl proc_symimage_α
proc_symimage_α:
#=======================================================================================================================
    .global proc_symimage_α
    .global proc_symimage_β
    .global proc_symimage_γ
    .global proc_symimage_ω
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 928
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 904], rsp
  mov rdi, rsp
  mov esi, 928
  call rt_jmp_frame_lexprep@PLT
proc_symimage_α_body:
# IR_VAR
 xchain00111_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00111_n1_α
 xchain00111_n0_β:
 jmp proc_symimage_ω
 xchain00111_n1_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn577: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn577]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00111_n2_α
 xchain00111_n1_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00111_n2_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00111_n3_α
 xchain00111_n2_β:
 jmp proc_symimage_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "string"
 xchain00111_n3_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+848]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+864]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn580: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn580]
 lea rsi, [rbp + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00111_n5_α
 jmp xchain00111_n4_α
 xchain00111_n3_β:
 jmp xchain00111_n5_α
# IR_VAR
 xchain00111_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 792], rax
 jmp xchain00111_n6_α
 xchain00111_n4_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00111_n5_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00111_n7_α
 xchain00111_n5_β:
 jmp proc_symimage_ω
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "nonterm"
 xchain00111_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00111_n8_α
 xchain00111_n6_β:
 jmp proc_symimage_ω
 xchain00111_n7_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+704]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+720]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn586: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn586]
 lea rsi, [rbp + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain00111_n10_α
 jmp xchain00111_n9_α
 xchain00111_n7_β:
 jmp xchain00111_n10_α
# IR_VAR
 xchain00111_n8_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 40], rax
 jmp xchain00111_n11_α
 xchain00111_n8_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00111_n9_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00111_n12_α
 xchain00111_n9_β:
 jmp proc_symimage_ω
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "<"
# IR_LIT_STRING
 xchain00111_n10_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00111_n13_α
 xchain00111_n10_β:
 jmp proc_symimage_ω
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "charset"
# IR_RETURN
 xchain00111_n11_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_symimage_γ
# IR_VAR
 xchain00111_n12_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 616], rax
 jmp xchain00111_n14_α
 xchain00111_n12_β:
 jmp proc_symimage_ω
 xchain00111_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+400]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+416]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn595: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn595]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00111_n15_α
 xchain00111_n13_β:
 jmp proc_symimage_ω
# IR_FIELD_GET
 xchain00111_n14_α:
 mov rdi, qword ptr [rip + .Lx00116_0]
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00111_n16_α
 xchain00111_n14_β:
 jmp proc_symimage_ω
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "name"
# IR_LIT_STRING
 xchain00111_n15_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00111_n17_α
 xchain00111_n15_β:
 jmp proc_symimage_ω
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "<'"
 xchain00111_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call str_concat_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00111_n18_α
 xchain00111_n16_β:
 jmp proc_symimage_ω
# IR_VAR
 xchain00111_n17_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00111_n19_α
 xchain00111_n17_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00111_n18_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00111_n20_α
 xchain00111_n18_β:
 jmp proc_symimage_ω
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string ">"
# IR_FIELD_GET
 xchain00111_n19_α:
 mov rdi, qword ptr [rip + .Lx00119_0]
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00111_n21_α
 xchain00111_n19_β:
 jmp proc_symimage_ω
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "chars"
 xchain00111_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call str_concat_d@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00111_n22_α
 xchain00111_n20_β:
 jmp proc_symimage_ω
 xchain00111_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00111_n23_α
 xchain00111_n21_β:
 jmp proc_symimage_ω
 xchain00111_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00111_n8_α
 xchain00111_n22_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00111_n23_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00111_n24_α
 xchain00111_n23_β:
 jmp proc_symimage_ω
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "'>"
 xchain00111_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call str_concat_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00111_n25_α
 xchain00111_n24_β:
 jmp proc_symimage_ω
 xchain00111_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00111_n8_α
 xchain00111_n25_β:
 jmp proc_symimage_ω
proc_symimage_res:
add rsp, 8
pop rbp
proc_symimage_β:
jmp proc_symimage_ω
proc_symimage_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 936]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_symimage_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
  .globl proc_syms_α
proc_syms_α:
#=======================================================================================================================
    .global proc_syms_α
    .global proc_syms_β
    .global proc_syms_γ
    .global proc_syms_ω
  sub rsp, 1168
  mov [rsp + 1144], rcx
  mov [rsp + 1152], rdx
  mov [rsp + 1160], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1136
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1136
  call rt_jmp_frame_lexprep@PLT
proc_syms_α_body:
# IR_VAR_REF
 xchain00121_n0_α:
 mov rdi, 1879052480
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00121_n1_α
 xchain00121_n0_β:
 jmp xchain00121_n3_α
# IR_NULLTEST_VAR
 xchain00121_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00121_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00121_n3_α
 cmp eax, 0
 jne xchain00121_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00121_n2_α
 xchain00121_n1_β:
 jmp xchain00121_n3_α
# IR_LIT_INTEGER
 xchain00121_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00121_n4_α
 xchain00121_n2_β:
 jmp xchain00121_n3_α
.Lx00122_0:
 .quad 1
# IR_MAKE_LIST
 xchain00121_n3_α:
 lea rdi, [rbp + 880]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00121_n5_α
 xchain00121_n3_β:
 jmp xchain00121_n7_α
# IR_ASSIGN_VAR
 xchain00121_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00121_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00121_n6_α
 xchain00121_n4_β:
 jmp xchain00121_n3_α
 xchain00121_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00121_n7_α
 xchain00121_n5_β:
 jmp xchain00121_n7_α
# IR_LIT_CHARSET
 xchain00121_n6_α:
 mov qword ptr [rbp + 960], 1
 mov dword ptr [rbp + 964], -1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00121_n8_α
 xchain00121_n6_β:
 jmp xchain00121_n3_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "<"
# IR_VAR
 xchain00121_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 824], rax
 jmp xchain00121_n9_α
 xchain00121_n7_β:
 jmp xchain00121_n10_α
# IR_UNOP
 xchain00121_n8_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00121_n11_α
 xchain00121_n8_β:
 jmp xchain00121_n3_α
# IR_GEN_SCAN
 xchain00121_n9_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00121_n12_α
 xchain00121_n9_β:
 jmp xchain00121_n10_α
# IR_VAR
 xchain00121_n10_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 40], rax
 jmp xchain00121_n13_α
 xchain00121_n10_β:
 jmp proc_syms_ω
# IR_ASSIGN gva
 xchain00121_n11_α:
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00121_n14_α
 xchain00121_n11_β:
 jmp xchain00121_n3_α
# IR_VAR
 xchain00121_n12_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 216], rax
 jmp xchain00121_n15_α
 xchain00121_n12_β:
 jmp xchain00121_n16_α
# IR_RETURN
 xchain00121_n13_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_syms_γ
# IR_MOVE_LABEL
 xchain00121_n14_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain00121_n3_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain00121_n3_α
 xchain00121_n14_β:
 jmp xchain00121_n3_α
# IR_VAR
 xchain00121_n15_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00121_n18_α
 xchain00121_n15_β:
 jmp xchain00121_n19_α
# IR_GEN_SCAN
 xchain00121_n16_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00121_n10_α
 xchain00121_n16_β:
 jmp xchain00121_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00121_n17_α:
 jmp qword ptr [rbp + 896]
 xchain00121_n17_β:
 jmp xchain00121_n3_α
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00121_n18_α:
 mov eax, r14d
.Lx00124_0:
 cmp eax, r15d
 jge .Lx00124_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 792]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00124_1
 add eax, 1
 jmp .Lx00124_0
.Lx00124_1:
 cmp eax, r14d
 je xchain00121_n19_α
 mov qword ptr [rbp + 752], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 760], rcx
 jmp xchain00121_n20_α
 xchain00121_n18_β:
 jmp xchain00121_n19_α
# IR_LIT_INTEGER
 xchain00121_n19_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00121_n21_α
 xchain00121_n19_β:
 jmp xchain00121_n16_α
.Lx00125_0:
 .quad 2
# IR_SCAN_TAB
 xchain00121_n20_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 760]
 cmp rax, 1
 jge .Lx00126_0
 add rax, r15
 add rax, 1
.Lx00126_0:
 cmp rax, 1
 jge .Lx00126_239
 add rsp, 16
 jmp xchain00121_n19_α
.Lx00126_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00126_240
 add rsp, 16
 jmp xchain00121_n19_α
.Lx00126_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00121_n22_α
 xchain00121_n20_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00121_n19_α
# IR_LIT_STRING
 xchain00121_n21_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00121_n23_α
 xchain00121_n21_β:
 jmp xchain00121_n16_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "<"
# IR_MOVE_LABEL
 xchain00121_n22_α:
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 248], rax
 lea rax, [rip + xchain00121_n19_α]
 mov qword ptr [rbp + 256], rax
 jmp xchain00121_n24_α
 xchain00121_n22_β:
 jmp xchain00121_n16_α
# IR_SCAN_MATCH
 xchain00121_n23_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00128_239
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00128_239:
 mov rdi, qword ptr [rip + .Lx00128_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00128_240
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00128_240:
 mov qword ptr [rbp + 496], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 504], rax
 jmp xchain00121_n26_α
 xchain00121_n23_β:
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "<"
 xchain00121_n24_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn648: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn648]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00121_n16_α
 jmp xchain00121_n12_α
 xchain00121_n24_β:
 jmp xchain00121_n16_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00121_n25_α:
 jmp qword ptr [rbp + 256]
 xchain00121_n25_β:
 jmp xchain00121_n16_α
# IR_SCAN_TAB
 xchain00121_n26_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 504]
 cmp rax, 1
 jge .Lx00129_0
 add rax, r15
 add rax, 1
.Lx00129_0:
 cmp rax, 1
 jge .Lx00129_239
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00129_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00129_240
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00129_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00121_n27_α
 xchain00121_n26_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00121_n16_α
# IR_LIT_CHARSET
 xchain00121_n27_α:
 mov qword ptr [rbp + 624], 1
 mov dword ptr [rbp + 628], -1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00121_n28_α
 xchain00121_n27_β:
 jmp xchain00121_n16_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00121_n28_α:
 mov qword ptr [rbp + 608], r14
.Lx00131_0:
 mov rax, qword ptr [rbp + 608]
 cmp rax, r15
 jge xchain00121_n16_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00131_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00131_1
 mov qword ptr [rbp + 592], 6
 add rax, 1
 mov qword ptr [rbp + 600], rax
 jmp xchain00121_n29_α
.Lx00131_1:
 inc qword ptr [rbp + 608]
 jmp .Lx00131_0
 xchain00121_n28_β:
 inc qword ptr [rbp + 608]
 jmp .Lx00131_0
.Lx00131_2:
 .quad .Lx00131_2_s
.Lx00131_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00121_n29_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 600]
 cmp rax, 1
 jge .Lx00132_0
 add rax, r15
 add rax, 1
.Lx00132_0:
 cmp rax, 1
 jge .Lx00132_239
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00132_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00132_240
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00132_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00121_n30_α
 xchain00121_n29_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00121_n16_α
# IR_LIT_INTEGER
 xchain00121_n30_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00121_n31_α
 xchain00121_n30_β:
 jmp xchain00121_n16_α
.Lx00133_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00121_n31_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00134_239
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00134_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00134_240
 add rsp, 16
 jmp xchain00121_n16_α
.Lx00134_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00121_n32_α
 xchain00121_n31_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00121_n16_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00121_n32_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 376], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 392], rax
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 408], rax
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 lea rdx, [rbp + 368]
 mov ecx, 3
 lea r8, [rbp + 416]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain00121_n16_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00121_n33_α
 xchain00121_n32_β:
 lea rdi, [rbp + 416]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00121_n16_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00121_n33_α
 jmp xchain00121_n16_α
 xchain00121_n33_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00135_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00135_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00135_3]
 lea rdx, [rip + .Lx00135_4]
 jmp rax
.Lx00135_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00135_2
.Lx00135_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00135_2
.Lx00135_1:
 call rt_faildescr@PLT
.Lx00135_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00121_n16_α
 jmp xchain00121_n34_α
 xchain00121_n33_β:
 jmp xchain00121_n16_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "defnon"
# IR_MOVE_LABEL
 xchain00121_n34_α:
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
 lea rax, [rip + xchain00121_n32_β]
 mov qword ptr [rbp + 256], rax
 jmp xchain00121_n24_α
 xchain00121_n34_β:
 jmp xchain00121_n16_α
proc_syms_res:
add rsp, 8
pop rbp
proc_syms_β:
jmp proc_syms_ω
proc_syms_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1144]
lea rsp, [rbp + 1168]
mov rbp, [rbp + 1160]
jmp rax
proc_syms_ω:
mov rax, [rbp + 1152]
lea rsp, [rbp + 1168]
mov rbp, [rbp + 1160]
jmp rax
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
  sub rsp, 3760
  mov [rsp + 3736], rcx
  mov [rsp + 3744], rdx
  mov [rsp + 3752], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3728
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3592], rsp
  mov rdi, rsp
  mov esi, 3728
  call rt_jmp_frame_lexprep@PLT
proc_options_α_body:
# IR_VAR_REF
 xchain00136_n0_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00136_n1_α
 xchain00136_n0_β:
 jmp xchain00136_n3_α
# IR_NULLTEST_VAR
 xchain00136_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00136_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00136_n3_α
 cmp eax, 0
 jne xchain00136_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00136_n2_α
 xchain00136_n1_β:
 jmp xchain00136_n3_α
# IR_LIT_CHARSET
 xchain00136_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00136_n4_α
 xchain00136_n2_β:
 jmp xchain00136_n3_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00136_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn673: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn673]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00136_n6_α
 jmp xchain00136_n5_α
 xchain00136_n3_β:
 jmp xchain00136_n6_α
 xchain00136_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn675: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn675]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00136_n3_α
 jmp xchain00136_n7_α
 xchain00136_n4_β:
 jmp xchain00136_n3_α
 xchain00136_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00136_n6_α
 xchain00136_n5_β:
 jmp xchain00136_n6_α
# IR_MAKE_LIST
 xchain00136_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00136_n8_α
 xchain00136_n6_β:
 jmp xchain00136_n9_α
# IR_ASSIGN_VAR
 xchain00136_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00136_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00136_n3_α
 xchain00136_n7_β:
 jmp xchain00136_n3_α
 xchain00136_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00136_n9_α
 xchain00136_n8_β:
 jmp xchain00136_n9_α
# IR_VAR
 xchain00136_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00136_n10_α
 xchain00136_n9_β:
 jmp xchain00136_n11_α
 xchain00136_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn684: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn684]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00136_n11_α
 jmp xchain00136_n12_α
 xchain00136_n10_β:
 jmp xchain00136_n11_α
# IR_VAR
 xchain00136_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00136_n13_α
 xchain00136_n11_β:
 jmp xchain00136_n14_α
 xchain00136_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00136_n15_α
 xchain00136_n12_β:
 jmp xchain00136_n11_α
# IR_VAR
 xchain00136_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00136_n16_α
 xchain00136_n13_β:
 jmp xchain00136_n14_α
# IR_VAR
 xchain00136_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00136_n17_α
 xchain00136_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00136_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00136_n18_α
 xchain00136_n15_β:
 jmp xchain00136_n9_α
 xchain00136_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn695: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn695]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00136_n14_α
 jmp xchain00136_n19_α
 xchain00136_n16_β:
 jmp xchain00136_n14_α
# IR_RETURN
 xchain00136_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00136_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00136_n20_α
 xchain00136_n18_β:
 jmp xchain00136_n9_α
 xchain00136_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 104], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+112]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn700: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn700]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00136_n14_α
 jmp xchain00136_n11_α
 xchain00136_n19_β:
 jmp xchain00136_n14_α
# IR_LIT_STRING
 xchain00136_n20_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00136_n21_α
 xchain00136_n20_β:
 jmp xchain00136_n23_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00136_n21_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00139_239
 add rsp, 16
 jmp xchain00136_n23_α
.Lx00139_239:
 mov rdi, qword ptr [rip + .Lx00139_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00139_240
 add rsp, 16
 jmp xchain00136_n23_α
.Lx00139_240:
 mov qword ptr [rbp + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3256], rax
 jmp xchain00136_n22_α
 xchain00136_n21_β:
 add rsp, 16
 jmp xchain00136_n23_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00136_n22_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3256]
 cmp rax, 1
 jge .Lx00140_0
 add rax, r15
 add rax, 1
.Lx00140_0:
 cmp rax, 1
 jge .Lx00140_239
 add rsp, 16
 jmp xchain00136_n23_α
.Lx00140_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00140_240
 add rsp, 16
 jmp xchain00136_n23_α
.Lx00140_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00136_n24_α
 xchain00136_n22_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00136_n23_α
# IR_VAR
 xchain00136_n23_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00136_n25_α
 xchain00136_n23_β:
 jmp xchain00136_n29_α
# IR_LIT_INTEGER
 xchain00136_n24_α:
 mov qword ptr [rbp + 3184], 6
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00136_n27_α
 xchain00136_n24_β:
 jmp xchain00136_n30_α
.Lx00141_0:
 .quad 0
# IR_VAR
 xchain00136_n25_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00136_n28_α
 xchain00136_n25_β:
 jmp xchain00136_n29_α
 xchain00136_n26_α:
 jmp xchain00136_n29_α
xchain00136_n26_β:
 jmp xchain00136_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00136_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00142_0
 add rax, r15
 add rax, 1
.Lx00142_0:
 cmp rax, 1
 jl xchain00136_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00136_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00136_n30_α
 mov qword ptr [rbp + 3152], 6
 mov qword ptr [rbp + 3160], rax
 jmp xchain00136_n23_α
 xchain00136_n27_β:
 jmp xchain00136_n30_α
 xchain00136_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
  .section .rodata
  .Lrkfn715: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn715]
 lea rsi, [rbp + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain00136_n29_α
 jmp xchain00136_n31_α
 xchain00136_n28_β:
 jmp xchain00136_n29_α
# IR_GEN_SCAN
 xchain00136_n29_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00136_n9_α
 xchain00136_n29_β:
 jmp xchain00136_n9_α
# KEYWORD_null
 xchain00136_n30_α:
 mov qword ptr [rbp + 3120], 0
 mov qword ptr [rbp + 3128], 0
 jmp xchain00136_n32_α
 xchain00136_n30_β:
 jmp xchain00136_n23_α
# IR_MOVE_LABEL
 xchain00136_n31_α:
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00136_n26_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00136_n33_α
 xchain00136_n31_β:
 jmp xchain00136_n29_α
 xchain00136_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00136_n35_α
xchain00136_n32_β:
 jmp xchain00136_n23_α
 xchain00136_n33_α:
 jmp xchain00136_n36_α
xchain00136_n33_β:
 jmp xchain00136_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n34_α:
 jmp qword ptr [rbp + 448]
 xchain00136_n34_β:
 jmp xchain00136_n29_α
# IR_LIT_STRING
 xchain00136_n35_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00136_n37_α
 xchain00136_n35_β:
 jmp xchain00136_n39_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "-"
# IR_GEN_SCAN
 xchain00136_n36_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00136_n9_α
 xchain00136_n36_β:
 jmp xchain00136_n9_α
# IR_SCAN_MATCH
 xchain00136_n37_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00144_239
 add rsp, 16
 jmp xchain00136_n39_α
.Lx00144_239:
 mov rdi, qword ptr [rip + .Lx00144_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00144_240
 add rsp, 16
 jmp xchain00136_n39_α
.Lx00144_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00136_n38_α
 xchain00136_n37_β:
 add rsp, 16
 jmp xchain00136_n39_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00136_n38_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00145_0
 add rax, r15
 add rax, 1
.Lx00145_0:
 cmp rax, 1
 jge .Lx00145_239
 add rsp, 16
 jmp xchain00136_n39_α
.Lx00145_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00145_240
 add rsp, 16
 jmp xchain00136_n39_α
.Lx00145_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00136_n40_α
 xchain00136_n38_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00136_n39_α
# IR_LIT_INTEGER
 xchain00136_n39_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00136_n41_α
 xchain00136_n39_β:
 jmp xchain00136_n29_α
.Lx00146_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00136_n40_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00136_n42_α
 xchain00136_n40_β:
 jmp xchain00136_n39_α
.Lx00147_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00136_n41_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00148_239
 add rsp, 16
 jmp xchain00136_n29_α
.Lx00148_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00148_240
 add rsp, 16
 jmp xchain00136_n29_α
.Lx00148_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00136_n43_α
 xchain00136_n41_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00136_n29_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00136_n42_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00149_0
 add rax, r15
 add rax, 1
.Lx00149_0:
 cmp rax, 1
 jl xchain00136_n39_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00136_n39_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00136_n39_α
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00136_n44_α
 xchain00136_n42_β:
 jmp xchain00136_n39_α
 xchain00136_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00136_n45_α
 xchain00136_n43_β:
 jmp xchain00136_n29_α
 xchain00136_n44_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00136_n11_α
xchain00136_n44_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n45_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00136_n47_α
 xchain00136_n45_β:
 jmp xchain00136_n48_α
 xchain00136_n46_α:
 jmp xchain00136_n11_α
xchain00136_n46_β:
 jmp xchain00136_n11_α
# IR_VAR
 xchain00136_n47_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00136_n49_α
 xchain00136_n47_β:
 jmp xchain00136_n48_α
# IR_LIT_STRING
 xchain00136_n48_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00136_n50_α
 xchain00136_n48_β:
 jmp xchain00136_n39_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "Unrecognized option: -"
 xchain00136_n49_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
 mov qword ptr [rbp + 2656], 0
.Lx00151_60:
  .section .rodata
  .Lbynamegenfn483: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn483]
 lea rsi, [rbp + 2624]
 mov edx, 2
 lea rcx, [rbp + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain00136_n48_α
 jmp xchain00136_n51_α
 xchain00136_n49_β:
 jmp .Lx00151_60
# IR_VAR
 xchain00136_n50_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00136_n52_α
 xchain00136_n50_β:
 jmp xchain00136_n39_α
# IR_LIT_INTEGER
 xchain00136_n51_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00136_n53_α
 xchain00136_n51_β:
 jmp xchain00136_n49_β
.Lx00152_0:
 .quad 1
 xchain00136_n52_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2416]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2432]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2440], rax
  .section .rodata
  .Lrkfn751: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn751]
 lea rsi, [rbp + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain00136_n39_α
 jmp xchain00136_n54_α
 xchain00136_n52_β:
 jmp xchain00136_n39_α
# IR_COERCE_NUMERIC
 xchain00136_n53_α:
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 7
 je .Lx00153_1
 cmp eax, 6
 jne .Lx00153_0
 mov eax, dword ptr [rbp + 2736]
 cmp eax, 6
 jne .Lx00153_0
.Lx00153_1:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2584], rax
 jmp .Lx00153_2
.Lx00153_0:
 lea rdi, [rbp + 2608]
 lea rsi, [rbp + 2736]
 lea rdx, [rbp + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00153_2:
 jmp xchain00136_n55_α
 xchain00136_n53_β:
 jmp xchain00136_n48_α
# IR_MOVE_LABEL
 xchain00136_n54_α:
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00136_n39_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00136_n39_α
 xchain00136_n54_β:
 jmp xchain00136_n39_α
 xchain00136_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 100
 je .Lx00154_0
 mov eax, dword ptr [rbp + 2576]
 cmp eax, 6
 jne .Lx00154_2
.Lx00154_1:
 mov rax, qword ptr [rbp + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2544], 6
 mov qword ptr [rbp + 2552], rax
 jmp xchain00136_n57_α
.Lx00154_0:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00154_3
.Lx00154_2:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00136_n48_α
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
.Lx00154_3:
 jmp xchain00136_n57_α
 xchain00136_n55_β:
 jmp xchain00136_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n56_α:
 jmp qword ptr [rbp + 576]
 xchain00136_n56_β:
 jmp xchain00136_n39_α
 xchain00136_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain00136_n58_α
 xchain00136_n57_β:
 jmp xchain00136_n48_α
# IR_VAR_REF
 xchain00136_n58_α:
 lea rdi, [rbp + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00136_n59_α
 xchain00136_n58_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n59_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00136_n60_α
 xchain00136_n59_β:
 jmp xchain00136_n39_α
# IR_SUBSCRIPT x[i] variable
 xchain00136_n60_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00136_n39_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00136_n61_α
 xchain00136_n60_β:
 jmp xchain00136_n39_α
# IR_LIT_CHARSET
 xchain00136_n61_α:
 mov qword ptr [rbp + 2240], 1
 mov dword ptr [rbp + 2244], -1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00136_n62_α
 xchain00136_n61_β:
 jmp xchain00136_n65_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00136_n62_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00136_n63_α
 xchain00136_n62_β:
 jmp xchain00136_n65_α
# IR_VAR
 xchain00136_n63_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00136_n64_α
 xchain00136_n63_β:
 jmp xchain00136_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00136_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00136_n65_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00136_n66_α
 xchain00136_n64_β:
 jmp xchain00136_n65_α
# IR_LIT_INTEGER
 xchain00136_n65_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00136_n67_α
 xchain00136_n65_β:
 jmp xchain00136_n39_α
.Lx00156_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00136_n66_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00136_n65_α
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain00136_n68_α
 xchain00136_n66_β:
 jmp xchain00136_n65_α
# IR_MOVE_LABEL
 xchain00136_n67_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00136_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00136_n69_α
 xchain00136_n67_β:
 jmp xchain00136_n39_α
 xchain00136_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00136_n71_α
 xchain00136_n68_β:
 jmp xchain00136_n65_α
# IR_ASSIGN_VAR
 xchain00136_n69_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00136_n39_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00136_n72_α
 xchain00136_n69_β:
 jmp xchain00136_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n70_α:
 jmp qword ptr [rbp + 720]
 xchain00136_n70_β:
 jmp xchain00136_n39_α
 xchain00136_n71_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
  .section .rodata
  .Lbynamefn505: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn505]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain00136_n65_α
 jmp xchain00136_n73_α
 xchain00136_n71_β:
 jmp xchain00136_n65_α
# IR_MOVE_LABEL
 xchain00136_n72_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain00136_n70_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain00136_n39_α
 xchain00136_n72_β:
 jmp xchain00136_n39_α
# IR_LIT_STRING
 xchain00136_n73_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00136_n74_α
 xchain00136_n73_β:
 jmp xchain00136_n77_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00136_n74_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00136_n75_α
 xchain00136_n74_β:
 jmp xchain00136_n77_α
.Lx00158_0:
 .quad 0
# IR_SCAN_TAB
 xchain00136_n75_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00159_0
 add rax, r15
 add rax, 1
.Lx00159_0:
 cmp rax, 1
 jge .Lx00159_239
 add rsp, 16
 jmp xchain00136_n77_α
.Lx00159_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00159_240
 add rsp, 16
 jmp xchain00136_n77_α
.Lx00159_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00136_n76_α
 xchain00136_n75_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00136_n77_α
 xchain00136_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2048]
 mov rsi, qword ptr [rbp + 2056]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00136_n77_α
 mov rdi, qword ptr [rbp + 2080]
 mov rsi, qword ptr [rbp + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00136_n78_α
 xchain00136_n76_β:
 jmp xchain00136_n77_α
# IR_VAR
 xchain00136_n77_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00136_n79_α
 xchain00136_n77_β:
 jmp xchain00136_n80_α
# IR_MOVE_LABEL
 xchain00136_n78_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00136_n77_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00136_n81_α
 xchain00136_n78_β:
 jmp xchain00136_n85_α
 xchain00136_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn792: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn792]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00136_n80_α
 jmp xchain00136_n83_α
 xchain00136_n79_β:
 jmp xchain00136_n80_α
# IR_LIT_STRING
 xchain00136_n80_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00136_n84_α
 xchain00136_n80_β:
 jmp xchain00136_n85_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "No parameter following -"
 xchain00136_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00136_n85_α
 xchain00136_n81_β:
 jmp xchain00136_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n82_α:
 jmp qword ptr [rbp + 1792]
 xchain00136_n82_β:
 jmp xchain00136_n85_α
# IR_MOVE_LABEL
 xchain00136_n83_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00136_n80_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00136_n81_α
 xchain00136_n83_β:
 jmp xchain00136_n85_α
# IR_VAR
 xchain00136_n84_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00136_n86_α
 xchain00136_n84_β:
 jmp xchain00136_n85_α
# IR_VAR
 xchain00136_n85_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00136_n87_α
 xchain00136_n85_β:
 jmp xchain00136_n39_α
 xchain00136_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
  .section .rodata
  .Lrkfn804: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn804]
 lea rsi, [rbp + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain00136_n85_α
 jmp xchain00136_n88_α
 xchain00136_n86_β:
 jmp xchain00136_n85_α
# IR_LIT_STRING
 xchain00136_n87_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00136_n89_α
 xchain00136_n87_β:
 jmp xchain00136_n39_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00136_n88_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 lea rax, [rip + xchain00136_n85_α]
 mov qword ptr [rbp + 1792], rax
 jmp xchain00136_n81_α
 xchain00136_n88_β:
 jmp xchain00136_n85_α
 xchain00136_n89_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1712]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1728]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn809: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn809]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00136_n91_α
 jmp xchain00136_n90_α
 xchain00136_n89_β:
 jmp xchain00136_n91_α
# IR_VAR
 xchain00136_n90_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00136_n92_α
 xchain00136_n90_β:
 jmp xchain00136_n39_α
# IR_LIT_STRING
 xchain00136_n91_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00136_n93_α
 xchain00136_n91_β:
 jmp xchain00136_n39_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "+"
 xchain00136_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00136_n94_α
 xchain00136_n92_β:
 jmp xchain00136_n39_α
 xchain00136_n93_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1568]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1584]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn815: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn815]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00136_n96_α
 jmp xchain00136_n95_α
 xchain00136_n93_β:
 jmp xchain00136_n96_α
# IR_VAR
 xchain00136_n94_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00136_n97_α
 xchain00136_n94_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n95_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00136_n98_α
 xchain00136_n95_β:
 jmp xchain00136_n99_α
# IR_LIT_STRING
 xchain00136_n96_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00136_n00164_α
 xchain00136_n96_β:
 jmp xchain00136_n39_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "."
 xchain00136_n97_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain00136_n00165_α
xchain00136_n97_β:
 jmp xchain00136_n39_α
 xchain00136_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
  .section .rodata
  .Lrkfn823: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn823]
 lea rsi, [rbp + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00136_n99_α
 jmp xchain00136_n00001_α
 xchain00136_n98_β:
 jmp xchain00136_n99_α
# IR_LIT_STRING
 xchain00136_n99_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00136_n00167_α
 xchain00136_n99_β:
 jmp xchain00136_n39_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "-"
 xchain00136_n00164_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1168]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1184]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn826: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn826]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00136_n39_α
 jmp xchain00136_n00002_α
 xchain00136_n00164_β:
 jmp xchain00136_n39_α
# IR_MOVE_LABEL
 xchain00136_n00165_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
 lea rax, [rip + xchain00136_n39_α]
 mov qword ptr [rbp + 720], rax
 jmp xchain00136_n69_α
 xchain00136_n00165_β:
 jmp xchain00136_n39_α
# IR_MOVE_LABEL
 xchain00136_n00001_α:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00136_n99_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00136_n00168_α
 xchain00136_n00001_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n00167_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00136_n00169_α
 xchain00136_n00167_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n00002_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00136_n00170_α
 xchain00136_n00002_β:
 jmp xchain00136_n00003_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n00171_α:
 jmp qword ptr [rbp + 1264]
 xchain00136_n00171_β:
 jmp xchain00136_n39_α
# IR_LIT_STRING
 xchain00136_n00169_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00136_n00004_α
 xchain00136_n00169_β:
 jmp xchain00136_n39_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string " needs numeric parameter"
 xchain00136_n00170_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn839: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn839]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain00136_n00003_α
 jmp xchain00136_n00173_α
 xchain00136_n00170_β:
 jmp xchain00136_n00003_α
# IR_LIT_STRING
 xchain00136_n00003_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00136_n00005_α
 xchain00136_n00003_β:
 jmp xchain00136_n39_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "-"
 xchain00136_n00168_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00136_n94_α
 xchain00136_n00168_β:
 jmp xchain00136_n39_α
 xchain00136_n00004_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1312]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1328]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1336], rax
  .section .rodata
  .Lrkfn843: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn843]
 lea rsi, [rbp + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00136_n39_α
 jmp xchain00136_n00175_α
 xchain00136_n00004_β:
 jmp xchain00136_n39_α
# IR_MOVE_LABEL
 xchain00136_n00173_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00136_n00003_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00136_n00176_α
 xchain00136_n00173_β:
 jmp xchain00136_n39_α
# IR_VAR
 xchain00136_n00005_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00136_n00177_α
 xchain00136_n00005_β:
 jmp xchain00136_n39_α
# IR_MOVE_LABEL
 xchain00136_n00175_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + xchain00136_n39_α]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00136_n00168_α
 xchain00136_n00175_β:
 jmp xchain00136_n39_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00136_n00178_α:
 jmp qword ptr [rbp + 864]
 xchain00136_n00178_β:
 jmp xchain00136_n39_α
# IR_LIT_STRING
 xchain00136_n00177_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00136_n00180_α
 xchain00136_n00177_β:
 jmp xchain00136_n39_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string " needs numeric parameter"
 xchain00136_n00176_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00136_n94_α
 xchain00136_n00176_β:
 jmp xchain00136_n39_α
 xchain00136_n00180_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+912]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 920], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn855: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn855]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00136_n39_α
 jmp xchain00136_n00181_α
 xchain00136_n00180_β:
 jmp xchain00136_n39_α
# IR_MOVE_LABEL
 xchain00136_n00181_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + xchain00136_n39_α]
 mov qword ptr [rbp + 864], rax
 jmp xchain00136_n00176_α
 xchain00136_n00181_β:
 jmp xchain00136_n39_α
proc_options_res:
add rsp, 8
pop rbp
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3736]
lea rsp, [rbp + 3760]
mov rbp, [rbp + 3752]
jmp rax
proc_options_ω:
mov rax, [rbp + 3744]
lea rsp, [rbp + 3760]
mov rbp, [rbp + 3752]
jmp rax
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 592
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 592
  call rt_jmp_frame_lexprep@PLT
proc_Init___α_body:
# IR_VAR
 xchain00182_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00182_n1_α
 xchain00182_n0_β:
 jmp xchain00182_n2_α
# IR_ASSIGN gva
 xchain00182_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00182_n2_α
 xchain00182_n1_β:
 jmp xchain00182_n2_α
 xchain00182_n2_α:
 mov rdi, qword ptr [rip + .Lx00183_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00183_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00183_3]
 lea rdx, [rip + .Lx00183_4]
 jmp rax
.Lx00183_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00183_2
.Lx00183_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00183_2
.Lx00183_1:
 call rt_faildescr@PLT
.Lx00183_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00182_n3_α
 jmp xchain00182_n3_α
 xchain00182_n2_β:
 jmp xchain00182_n3_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "Signature__"
 xchain00182_n3_α:
 mov rdi, qword ptr [rip + .Lx00184_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00184_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00184_3]
 lea rdx, [rip + .Lx00184_4]
 jmp rax
.Lx00184_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00184_2
.Lx00184_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00184_2
.Lx00184_1:
 call rt_faildescr@PLT
.Lx00184_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00182_n4_α
 jmp xchain00182_n4_α
 xchain00182_n3_β:
 jmp xchain00182_n4_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "Regions__"
 xchain00182_n4_α:
 mov rdi, qword ptr [rip + .Lx00185_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00185_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00185_3]
 lea rdx, [rip + .Lx00185_4]
 jmp rax
.Lx00185_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00185_2
.Lx00185_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00185_2
.Lx00185_1:
 call rt_faildescr@PLT
.Lx00185_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00182_n5_α
 jmp xchain00182_n5_α
 xchain00182_n4_β:
 jmp xchain00182_n5_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00182_n5_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00182_n6_α
 xchain00182_n5_β:
 jmp xchain00182_n8_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "OUTPUT"
 xchain00182_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn870: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn870]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00182_n8_α
 jmp xchain00182_n7_α
 xchain00182_n6_β:
 jmp xchain00182_n8_α
# IR_LIT_STRING
 xchain00182_n7_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00182_n9_α
 xchain00182_n7_β:
 jmp xchain00182_n12_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00182_n8_α:
 mov rdi, qword ptr [rip + .Lx00188_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00182_n11_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00182_n10_α
 xchain00182_n8_β:
 jmp xchain00182_n11_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "write"
 xchain00182_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn874: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn874]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00182_n12_α
 jmp xchain00182_n12_α
 xchain00182_n9_β:
 jmp xchain00182_n12_α
# IR_ASSIGN gva
 xchain00182_n10_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00182_n11_α
 xchain00182_n10_β:
 jmp xchain00182_n11_α
# IR_VAR
 xchain00182_n11_α:
 mov rdi, qword ptr [rip + .Lx00189_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00182_n14_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00182_n13_α
 xchain00182_n11_β:
 jmp xchain00182_n14_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "writes"
# IR_RETURN
 xchain00182_n12_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00182_n13_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00182_n14_α
 xchain00182_n13_β:
 jmp xchain00182_n14_α
# IR_LIT_INTEGER
 xchain00182_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00182_n15_α
 xchain00182_n14_β:
 jmp xchain00182_n17_α
.Lx00190_0:
 .quad 1
# IR_ASSIGN global
 xchain00182_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00191_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00182_n16_α
 xchain00182_n15_β:
 jmp xchain00182_n17_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00182_n16_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00192_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00182_n17_α
 xchain00182_n16_β:
 jmp xchain00182_n17_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "write"
# IR_RETURN
 xchain00182_n17_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Init___γ
proc_Init___res:
add rsp, 8
pop rbp
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_Init___ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 592
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 592
  call rt_jmp_frame_lexprep@PLT
proc_Term___α_body:
# IR_LIT_STRING
 xchain00193_n0_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00193_n1_α
 xchain00193_n0_β:
 jmp xchain00193_n3_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "OUTPUT"
 xchain00193_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn886: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn886]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00193_n3_α
 jmp xchain00193_n2_α
 xchain00193_n1_β:
 jmp xchain00193_n3_α
# IR_VAR
 xchain00193_n2_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00193_n4_α
 xchain00193_n2_β:
 jmp xchain00193_n5_α
# KEYWORD_null
 xchain00193_n3_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00193_n6_α
 xchain00193_n3_β:
 jmp xchain00193_n2_α
# IR_LIT_STRING
 xchain00193_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00193_n7_α
 xchain00193_n4_β:
 jmp xchain00193_n5_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string " elapsed time = "
 xchain00193_n5_α:
 mov rdi, qword ptr [rip + .Lx00196_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00196_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00196_3]
 lea rdx, [rip + .Lx00196_4]
 jmp rax
.Lx00196_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00196_2
.Lx00196_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00196_2
.Lx00196_1:
 call rt_faildescr@PLT
.Lx00196_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00193_n8_α
 jmp xchain00193_n8_α
 xchain00193_n5_β:
 jmp xchain00193_n8_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "Regions__"
# IR_VAR
 xchain00193_n6_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00193_n9_α
 xchain00193_n6_β:
 jmp xchain00193_n10_α
 xchain00193_n7_α:
 mov rdi, qword ptr [rip + .Lx00197_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00197_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00197_3]
 lea rdx, [rip + .Lx00197_4]
 jmp rax
.Lx00197_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00197_2
.Lx00197_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00197_2
.Lx00197_1:
 call rt_faildescr@PLT
.Lx00197_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00193_n5_α
 jmp xchain00193_n11_α
 xchain00193_n7_β:
 jmp xchain00193_n5_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "Time__"
 xchain00193_n8_α:
 mov rdi, qword ptr [rip + .Lx00198_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00198_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00198_3]
 lea rdx, [rip + .Lx00198_4]
 jmp rax
.Lx00198_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00198_2
.Lx00198_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00198_2
.Lx00198_1:
 call rt_faildescr@PLT
.Lx00198_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00193_n12_α
 jmp xchain00193_n12_α
 xchain00193_n8_β:
 jmp xchain00193_n12_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00193_n9_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00199_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00193_n10_α
 xchain00193_n9_β:
 jmp xchain00193_n10_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "write"
# IR_VAR
 xchain00193_n10_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00193_n13_α
 xchain00193_n10_β:
 jmp xchain00193_n2_α
 xchain00193_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+160]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn900: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn900]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00193_n5_α
 jmp xchain00193_n5_α
 xchain00193_n11_β:
 jmp xchain00193_n5_α
 xchain00193_n12_α:
 mov rdi, qword ptr [rip + .Lx00200_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00200_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00200_3]
 lea rdx, [rip + .Lx00200_4]
 jmp rax
.Lx00200_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00200_2
.Lx00200_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00200_2
.Lx00200_1:
 call rt_faildescr@PLT
.Lx00200_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00193_n14_α
 jmp xchain00193_n14_α
 xchain00193_n12_β:
 jmp xchain00193_n14_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00193_n13_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00201_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00193_n15_α
 xchain00193_n13_β:
 jmp xchain00193_n2_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "writes"
# IR_RETURN
 xchain00193_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Term___γ
 xchain00193_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 328], rax
 jmp xchain00193_n16_α
xchain00193_n15_β:
 jmp xchain00193_n2_α
# IR_MOVE_LABEL
 xchain00193_n16_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 lea rax, [rip + xchain00193_n2_α]
 mov qword ptr [rbp + 304], rax
 jmp xchain00193_n2_α
 xchain00193_n16_β:
 jmp xchain00193_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00193_n17_α:
 jmp qword ptr [rbp + 304]
 xchain00193_n17_β:
 jmp xchain00193_n2_α
proc_Term___res:
add rsp, 8
pop rbp
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_Term___ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_Collections___α_body:
# IR_VAR_REF
 xchain00202_n0_α:
 mov rdi, 1879052512
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00202_n1_α
 xchain00202_n0_β:
 jmp xchain00202_n3_α
# IR_NULLTEST_VAR
 xchain00202_n1_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00202_n3_α
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00202_n3_α
 cmp eax, 0
 jne xchain00202_n3_α
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00202_n2_α
 xchain00202_n1_β:
 jmp xchain00202_n3_α
# IR_LIT_INTEGER
 xchain00202_n2_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00202_n4_α
 xchain00202_n2_β:
 jmp xchain00202_n3_α
.Lx00203_0:
 .quad 1
# IR_MAKE_LIST
 xchain00202_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00202_n5_α
 xchain00202_n3_β:
 jmp xchain00202_n7_α
# IR_ASSIGN_VAR
 xchain00202_n4_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00202_n3_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00202_n6_α
 xchain00202_n4_β:
 jmp xchain00202_n3_α
 xchain00202_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00202_n7_α
 xchain00202_n5_β:
 jmp xchain00202_n7_α
# IR_LIT_STRING
 xchain00202_n6_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00202_n8_α
 xchain00202_n6_β:
 jmp xchain00202_n3_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "total"
# IR_VAR
 xchain00202_n7_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 696], rax
 jmp xchain00202_n9_α
 xchain00202_n7_β:
 jmp xchain00202_n10_α
# IR_LIT_STRING
 xchain00202_n8_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00202_n11_α
 xchain00202_n8_β:
 jmp xchain00202_n3_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "static"
# KEYWORD_gen
 xchain00202_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00206_1:
 mov rdi, qword ptr [rip + .Lx00206_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00202_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00202_n12_α
 xchain00202_n9_β:
 jmp .Lx00206_1
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00202_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00202_n13_α
 xchain00202_n10_β:
 jmp xchain00202_n15_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00202_n11_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00202_n14_α
 xchain00202_n11_β:
 jmp xchain00202_n3_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "string"
 xchain00202_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn927: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn927]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00202_n10_α
 jmp xchain00202_n9_β
 xchain00202_n12_β:
 jmp xchain00202_n10_α
 xchain00202_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn929: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn929]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00202_n15_α
 jmp xchain00202_n15_α
 xchain00202_n13_β:
 jmp xchain00202_n15_α
# IR_LIT_STRING
 xchain00202_n14_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00202_n16_α
 xchain00202_n14_β:
 jmp xchain00202_n3_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00202_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00202_n17_α
 xchain00202_n15_β:
 jmp xchain00202_n20_α
.Lx00210_0:
 .quad 1
# IR_MAKE_LIST
 xchain00202_n16_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 888], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 904], rax
 lea rdi, [rbp + 848]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00202_n18_α
 xchain00202_n16_β:
 jmp xchain00202_n3_α
# IR_VAR
 xchain00202_n17_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00202_n19_α
 xchain00202_n17_β:
 jmp xchain00202_n20_α
# IR_ASSIGN gva
 xchain00202_n18_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00202_n21_α
 xchain00202_n18_β:
 jmp xchain00202_n3_α
# IR_UNOP
 xchain00202_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00202_n22_α
 xchain00202_n19_β:
 jmp xchain00202_n20_α
# IR_RETURN
 xchain00202_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00202_n21_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00202_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00202_n3_α
 xchain00202_n21_β:
 jmp xchain00202_n3_α
# IR_TO
 xchain00202_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00211_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00202_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00202_n24_α
 xchain00202_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00211_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00202_n23_α:
 jmp qword ptr [rbp + 800]
 xchain00202_n23_β:
 jmp xchain00202_n3_α
 xchain00202_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00202_n25_α
 xchain00202_n24_β:
 jmp xchain00202_n20_α
# IR_VAR_REF
 xchain00202_n25_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00202_n26_α
 xchain00202_n25_β:
 jmp xchain00202_n22_β
# IR_VAR
 xchain00202_n26_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 264], rax
 jmp xchain00202_n27_α
 xchain00202_n26_β:
 jmp xchain00202_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00202_n27_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00202_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00202_n28_α
 xchain00202_n27_β:
 jmp xchain00202_n22_β
# IR_DEREF variable -> value
 xchain00202_n28_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00202_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00202_n29_α
 xchain00202_n28_β:
 jmp xchain00202_n22_β
# IR_VAR_REF
 xchain00202_n29_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00202_n30_α
 xchain00202_n29_β:
 jmp xchain00202_n22_β
# IR_VAR
 xchain00202_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 440], rax
 jmp xchain00202_n31_α
 xchain00202_n30_β:
 jmp xchain00202_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00202_n31_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00202_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00202_n32_α
 xchain00202_n31_β:
 jmp xchain00202_n22_β
# IR_DEREF variable -> value
 xchain00202_n32_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00202_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00202_n33_α
 xchain00202_n32_β:
 jmp xchain00202_n22_β
# IR_LIT_INTEGER
 xchain00202_n33_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00202_n34_α
 xchain00202_n33_β:
 jmp xchain00202_n22_β
.Lx00212_0:
 .quad 8
 xchain00202_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn959: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn959]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00202_n22_β
 jmp xchain00202_n35_α
 xchain00202_n34_β:
 jmp xchain00202_n22_β
 xchain00202_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn961: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn961]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00202_n22_β
 jmp xchain00202_n22_β
 xchain00202_n35_β:
 jmp xchain00202_n22_β
proc_Collections___res:
add rsp, 8
pop rbp
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Collections___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
  sub rsp, 1184
  mov [rsp + 1160], rcx
  mov [rsp + 1168], rdx
  mov [rsp + 1176], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1152
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1152
  call rt_jmp_frame_lexprep@PLT
proc_Regions___α_body:
# IR_VAR_REF
 xchain00213_n0_α:
 mov rdi, 1879052544
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp xchain00213_n3_α
# IR_NULLTEST_VAR
 xchain00213_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00213_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00213_n3_α
 cmp eax, 0
 jne xchain00213_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00213_n2_α
 xchain00213_n1_β:
 jmp xchain00213_n3_α
# IR_LIT_INTEGER
 xchain00213_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00213_n4_α
 xchain00213_n2_β:
 jmp xchain00213_n3_α
.Lx00214_0:
 .quad 1
# IR_MAKE_LIST
 xchain00213_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00213_n5_α
 xchain00213_n3_β:
 jmp xchain00213_n7_α
# IR_ASSIGN_VAR
 xchain00213_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00213_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00213_n6_α
 xchain00213_n4_β:
 jmp xchain00213_n3_α
 xchain00213_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00213_n7_α
 xchain00213_n5_β:
 jmp xchain00213_n7_α
# IR_LIT_STRING
 xchain00213_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00213_n8_α
 xchain00213_n6_β:
 jmp xchain00213_n3_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "static"
# IR_VAR
 xchain00213_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00213_n9_α
 xchain00213_n7_β:
 jmp xchain00213_n10_α
# IR_LIT_STRING
 xchain00213_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00213_n11_α
 xchain00213_n8_β:
 jmp xchain00213_n3_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "string"
# KEYWORD_gen
 xchain00213_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00217_1:
 mov rdi, qword ptr [rip + .Lx00217_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00213_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00213_n12_α
 xchain00213_n9_β:
 jmp .Lx00217_1
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00213_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00213_n13_α
 xchain00213_n10_β:
 jmp xchain00213_n15_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00213_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00213_n14_α
 xchain00213_n11_β:
 jmp xchain00213_n3_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "block"
 xchain00213_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn979: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn979]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00213_n10_α
 jmp xchain00213_n9_β
 xchain00213_n12_β:
 jmp xchain00213_n10_α
 xchain00213_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn981: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn981]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00213_n15_α
 jmp xchain00213_n15_α
 xchain00213_n13_β:
 jmp xchain00213_n15_α
# IR_MAKE_LIST
 xchain00213_n14_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 888], rax
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00213_n16_α
 xchain00213_n14_β:
 jmp xchain00213_n3_α
# IR_LIT_INTEGER
 xchain00213_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00213_n17_α
 xchain00213_n15_β:
 jmp xchain00213_n20_α
.Lx00220_0:
 .quad 1
# IR_ASSIGN gva
 xchain00213_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00213_n18_α
 xchain00213_n16_β:
 jmp xchain00213_n3_α
# IR_VAR
 xchain00213_n17_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00213_n19_α
 xchain00213_n17_β:
 jmp xchain00213_n20_α
# IR_MOVE_LABEL
 xchain00213_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00213_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00213_n3_α
 xchain00213_n18_β:
 jmp xchain00213_n3_α
# IR_UNOP
 xchain00213_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00213_n22_α
 xchain00213_n19_β:
 jmp xchain00213_n20_α
# IR_RETURN
 xchain00213_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00213_n21_β:
 jmp xchain00213_n3_α
# IR_TO
 xchain00213_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00221_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00213_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00213_n23_α
 xchain00213_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00221_0
 xchain00213_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00213_n24_α
 xchain00213_n23_β:
 jmp xchain00213_n20_α
# IR_VAR_REF
 xchain00213_n24_α:
 mov rdi, 1879052528
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00213_n25_α
 xchain00213_n24_β:
 jmp xchain00213_n22_β
# IR_VAR
 xchain00213_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00213_n26_α
 xchain00213_n25_β:
 jmp xchain00213_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00213_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00213_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00213_n27_α
 xchain00213_n26_β:
 jmp xchain00213_n22_β
# IR_DEREF variable -> value
 xchain00213_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00213_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00213_n28_α
 xchain00213_n27_β:
 jmp xchain00213_n22_β
# IR_VAR_REF
 xchain00213_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00213_n29_α
 xchain00213_n28_β:
 jmp xchain00213_n22_β
# IR_VAR
 xchain00213_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00213_n30_α
 xchain00213_n29_β:
 jmp xchain00213_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00213_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00213_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00213_n31_α
 xchain00213_n30_β:
 jmp xchain00213_n22_β
# IR_DEREF variable -> value
 xchain00213_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00213_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00213_n32_α
 xchain00213_n31_β:
 jmp xchain00213_n22_β
# IR_LIT_INTEGER
 xchain00213_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00213_n33_α
 xchain00213_n32_β:
 jmp xchain00213_n22_β
.Lx00222_0:
 .quad 8
 xchain00213_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn1010: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1010]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00213_n22_β
 jmp xchain00213_n34_α
 xchain00213_n33_β:
 jmp xchain00213_n22_β
 xchain00213_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1012: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1012]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00213_n22_β
 jmp xchain00213_n22_β
 xchain00213_n34_β:
 jmp xchain00213_n22_β
proc_Regions___res:
add rsp, 8
pop rbp
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1160]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
proc_Regions___ω:
mov rax, [rbp + 1168]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 272
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 272
  call rt_jmp_frame_lexprep@PLT
proc_Signature___α_body:
# KEYWORD_read
 xchain00223_n0_α:
 mov rdi, qword ptr [rip + .Lx00224_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00223_n1_α
 xchain00223_n0_β:
 jmp xchain00223_n2_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "&version"
 xchain00223_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1016: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1016]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00223_n2_α
 jmp xchain00223_n2_α
 xchain00223_n1_β:
 jmp xchain00223_n2_α
# KEYWORD_read
 xchain00223_n2_α:
 mov rdi, qword ptr [rip + .Lx00225_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00223_n3_α
 xchain00223_n2_β:
 jmp xchain00223_n4_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "&host"
 xchain00223_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn1019: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1019]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00223_n4_α
 jmp xchain00223_n4_α
 xchain00223_n3_β:
 jmp xchain00223_n4_α
# KEYWORD_gen
 xchain00223_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00226_1:
 mov rdi, qword ptr [rip + .Lx00226_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00223_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00223_n5_α
 xchain00223_n4_β:
 jmp .Lx00226_1
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "&features"
 xchain00223_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn1022: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1022]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00223_n6_α
 jmp xchain00223_n4_β
 xchain00223_n5_β:
 jmp xchain00223_n6_α
# IR_RETURN
 xchain00223_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Signature___γ
proc_Signature___res:
add rsp, 8
pop rbp
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 280]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
proc_Signature___ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
  sub rsp, 1184
  mov [rsp + 1160], rcx
  mov [rsp + 1168], rdx
  mov [rsp + 1176], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1152
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1152
  call rt_jmp_frame_lexprep@PLT
proc_Storage___α_body:
# IR_VAR_REF
 xchain00227_n0_α:
 mov rdi, 1879052576
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00227_n1_α
 xchain00227_n0_β:
 jmp xchain00227_n3_α
# IR_NULLTEST_VAR
 xchain00227_n1_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00227_n3_α
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00227_n3_α
 cmp eax, 0
 jne xchain00227_n3_α
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00227_n2_α
 xchain00227_n1_β:
 jmp xchain00227_n3_α
# IR_LIT_INTEGER
 xchain00227_n2_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00227_n4_α
 xchain00227_n2_β:
 jmp xchain00227_n3_α
.Lx00228_0:
 .quad 1
# IR_MAKE_LIST
 xchain00227_n3_α:
 lea rdi, [rbp + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00227_n5_α
 xchain00227_n3_β:
 jmp xchain00227_n7_α
# IR_ASSIGN_VAR
 xchain00227_n4_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00227_n3_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00227_n6_α
 xchain00227_n4_β:
 jmp xchain00227_n3_α
 xchain00227_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00227_n7_α
 xchain00227_n5_β:
 jmp xchain00227_n7_α
# IR_LIT_STRING
 xchain00227_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00227_n8_α
 xchain00227_n6_β:
 jmp xchain00227_n3_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "static"
# IR_VAR
 xchain00227_n7_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 696], rax
 jmp xchain00227_n9_α
 xchain00227_n7_β:
 jmp xchain00227_n10_α
# IR_LIT_STRING
 xchain00227_n8_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00227_n11_α
 xchain00227_n8_β:
 jmp xchain00227_n3_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "string"
# KEYWORD_gen
 xchain00227_n9_α:
 mov qword ptr [rbp + 736], 0
.Lx00231_1:
 mov rdi, qword ptr [rip + .Lx00231_0]
 mov rsi, qword ptr [rbp + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00227_n10_α
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 mov rax, qword ptr [rbp + 736]
 add rax, 1
 mov qword ptr [rbp + 736], rax
 jmp xchain00227_n12_α
 xchain00227_n9_β:
 jmp .Lx00231_1
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00227_n10_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00227_n13_α
 xchain00227_n10_β:
 jmp xchain00227_n15_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00227_n11_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00227_n14_α
 xchain00227_n11_β:
 jmp xchain00227_n3_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "block"
 xchain00227_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn1041: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1041]
 lea rsi, [rbp + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00227_n10_α
 jmp xchain00227_n9_β
 xchain00227_n12_β:
 jmp xchain00227_n10_α
 xchain00227_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn1043: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1043]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00227_n15_α
 jmp xchain00227_n15_α
 xchain00227_n13_β:
 jmp xchain00227_n15_α
# IR_MAKE_LIST
 xchain00227_n14_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 888], rax
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00227_n16_α
 xchain00227_n14_β:
 jmp xchain00227_n3_α
# IR_LIT_INTEGER
 xchain00227_n15_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00227_n17_α
 xchain00227_n15_β:
 jmp xchain00227_n20_α
.Lx00234_0:
 .quad 1
# IR_ASSIGN gva
 xchain00227_n16_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00227_n18_α
 xchain00227_n16_β:
 jmp xchain00227_n3_α
# IR_VAR
 xchain00227_n17_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00227_n19_α
 xchain00227_n17_β:
 jmp xchain00227_n20_α
# IR_MOVE_LABEL
 xchain00227_n18_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00227_n3_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00227_n3_α
 xchain00227_n18_β:
 jmp xchain00227_n3_α
# IR_UNOP
 xchain00227_n19_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00227_n22_α
 xchain00227_n19_β:
 jmp xchain00227_n20_α
# IR_RETURN
 xchain00227_n20_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00227_n21_α:
 jmp qword ptr [rbp + 800]
 xchain00227_n21_β:
 jmp xchain00227_n3_α
# IR_TO
 xchain00227_n22_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00235_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00227_n20_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00227_n23_α
 xchain00227_n22_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00235_0
 xchain00227_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00227_n24_α
 xchain00227_n23_β:
 jmp xchain00227_n20_α
# IR_VAR_REF
 xchain00227_n24_α:
 mov rdi, 1879052560
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00227_n25_α
 xchain00227_n24_β:
 jmp xchain00227_n22_β
# IR_VAR
 xchain00227_n25_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 264], rax
 jmp xchain00227_n26_α
 xchain00227_n25_β:
 jmp xchain00227_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00227_n26_α:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00227_n22_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00227_n27_α
 xchain00227_n26_β:
 jmp xchain00227_n22_β
# IR_DEREF variable -> value
 xchain00227_n27_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00227_n22_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00227_n28_α
 xchain00227_n27_β:
 jmp xchain00227_n22_β
# IR_VAR_REF
 xchain00227_n28_α:
 lea rdi, [rbp + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00227_n29_α
 xchain00227_n28_β:
 jmp xchain00227_n22_β
# IR_VAR
 xchain00227_n29_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 440], rax
 jmp xchain00227_n30_α
 xchain00227_n29_β:
 jmp xchain00227_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00227_n30_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00227_n22_β
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00227_n31_α
 xchain00227_n30_β:
 jmp xchain00227_n22_β
# IR_DEREF variable -> value
 xchain00227_n31_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00227_n22_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00227_n32_α
 xchain00227_n31_β:
 jmp xchain00227_n22_β
# IR_LIT_INTEGER
 xchain00227_n32_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00227_n33_α
 xchain00227_n32_β:
 jmp xchain00227_n22_β
.Lx00236_0:
 .quad 8
 xchain00227_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn1072: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1072]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00227_n22_β
 jmp xchain00227_n34_α
 xchain00227_n33_β:
 jmp xchain00227_n22_β
 xchain00227_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1074: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1074]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00227_n22_β
 jmp xchain00227_n22_β
 xchain00227_n34_β:
 jmp xchain00227_n22_β
proc_Storage___res:
add rsp, 8
pop rbp
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1160]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
proc_Storage___ω:
mov rax, [rbp + 1168]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
  sub rsp, 416
  mov [rsp + 392], rcx
  mov [rsp + 400], rdx
  mov [rsp + 408], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 384
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 384
  call rt_jmp_frame_lexprep@PLT
proc_Time___α_body:
# IR_VAR_REF
 xchain00237_n0_α:
 mov rdi, 1879052608
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00237_n1_α
 xchain00237_n0_β:
 jmp xchain00237_n3_α
# IR_NULLTEST_VAR
 xchain00237_n1_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00237_n3_α
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00237_n3_α
 cmp eax, 0
 jne xchain00237_n3_α
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00237_n2_α
 xchain00237_n1_β:
 jmp xchain00237_n3_α
# IR_LIT_INTEGER
 xchain00237_n2_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00237_n4_α
 xchain00237_n2_β:
 jmp xchain00237_n3_α
.Lx00238_0:
 .quad 1
# KEYWORD_read
 xchain00237_n3_α:
 mov rdi, qword ptr [rip + .Lx00239_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00237_n5_α
 xchain00237_n3_β:
 jmp proc_Time___ω
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00237_n4_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00237_n3_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00237_n6_α
 xchain00237_n4_β:
 jmp xchain00237_n3_α
# IR_VAR
 xchain00237_n5_α:
 mov rax, qword ptr [1879052592]
 mov rdx, qword ptr [1879052600]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00237_n7_α
 xchain00237_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00237_n6_α:
 mov rdi, qword ptr [rip + .Lx00240_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00237_n8_α
 xchain00237_n6_β:
 jmp xchain00237_n3_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00237_n7_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00241_1
 cmp eax, 6
 jne .Lx00241_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00241_0
.Lx00241_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00241_2
.Lx00241_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00241_2:
 jmp xchain00237_n9_α
 xchain00237_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00237_n8_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00237_n10_α
 xchain00237_n8_β:
 jmp xchain00237_n3_α
# IR_COERCE_NUMERIC
 xchain00237_n9_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00242_1
 cmp eax, 6
 jne .Lx00242_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00242_0
.Lx00242_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp .Lx00242_2
.Lx00242_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00242_2:
 jmp xchain00237_n11_α
 xchain00237_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00237_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rax, [rip + xchain00237_n3_α]
 mov qword ptr [rbp + 192], rax
 jmp xchain00237_n3_α
 xchain00237_n10_β:
 jmp xchain00237_n3_α
 xchain00237_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00243_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00243_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00243_2
.Lx00243_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00237_n13_α
.Lx00243_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00243_3
.Lx00243_2:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
.Lx00243_3:
 jmp xchain00237_n13_α
 xchain00237_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00237_n12_α:
 jmp qword ptr [rbp + 192]
 xchain00237_n12_β:
 jmp xchain00237_n3_α
# IR_RETURN
 xchain00237_n13_α:
 mov rax, qword ptr [rbp + 16]
 mov rdx, qword ptr [rbp + 24]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_Time___γ
proc_Time___res:
add rsp, 8
pop rbp
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_Time___ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_startup:
  sub rsp, 8
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 704
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1040
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 496
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1984
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 416
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 2352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 896
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1136
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 3728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 21
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 21
  call gva_register@PLT
  # R12-ERAD FENCE: main(args) stuffing pending under RSP self-alloc
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 4360], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain00244_n0_α:
 mov rdi, qword ptr [rip + .Lx00245_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00245_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00245_3]
 lea rdx, [rip + .Lx00245_4]
 jmp rax
.Lx00245_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00245_2
.Lx00245_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00245_2
.Lx00245_1:
 call rt_faildescr@PLT
.Lx00245_2:
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain00244_n1_α
 jmp xchain00244_n1_α
 xchain00244_n0_β:
 jmp xchain00244_n1_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "Init__"
# IR_PROC_VALUE
 xchain00244_n1_α:
 mov rdi, qword ptr [rip + .Lx00246_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00244_n2_α
 xchain00244_n1_β:
 jmp xchain00244_n10_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "define"
# IR_PROC_VALUE
 xchain00244_n2_α:
 mov rdi, qword ptr [rip + .Lx00247_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00244_n3_α
 xchain00244_n2_β:
 jmp xchain00244_n10_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "generate"
# IR_PROC_VALUE
 xchain00244_n3_α:
 mov rdi, qword ptr [rip + .Lx00248_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00244_n4_α
 xchain00244_n3_β:
 jmp xchain00244_n10_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "grammar"
# IR_PROC_VALUE
 xchain00244_n4_α:
 mov rdi, qword ptr [rip + .Lx00249_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain00244_n5_α
 xchain00244_n4_β:
 jmp xchain00244_n10_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "source"
# IR_PROC_VALUE
 xchain00244_n5_α:
 mov rdi, qword ptr [rip + .Lx00250_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00244_n6_α
 xchain00244_n5_β:
 jmp xchain00244_n10_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "comment"
# IR_PROC_VALUE
 xchain00244_n6_α:
 mov rdi, qword ptr [rip + .Lx00251_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain00244_n7_α
 xchain00244_n6_β:
 jmp xchain00244_n10_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "prompter"
# IR_PROC_VALUE
 xchain00244_n7_α:
 mov rdi, qword ptr [rip + .Lx00252_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00244_n8_α
 xchain00244_n7_β:
 jmp xchain00244_n10_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "error"
# IR_MAKE_LIST
 xchain00244_n8_α:
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 3992], rax
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4008], rax
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4024], rax
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4040], rax
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4056], rax
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4072], rax
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4088], rax
 lea rdi, [rbp + 3984]
 mov esi, 7
 call rt_make_list@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 jmp xchain00244_n9_α
 xchain00244_n8_β:
 jmp xchain00244_n10_α
 xchain00244_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00244_n10_α
 xchain00244_n9_β:
 jmp xchain00244_n10_α
 xchain00244_n10_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1116: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1116]
 lea rsi, [rbp + 3936]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je xchain00244_n12_α
 jmp xchain00244_n11_α
 xchain00244_n10_β:
 jmp xchain00244_n12_α
# IR_ASSIGN gva
 xchain00244_n11_α:
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00244_n12_α
 xchain00244_n11_β:
 jmp xchain00244_n12_α
# IR_VAR_REF
 xchain00244_n12_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00244_n13_α
 xchain00244_n12_β:
 jmp xchain00244_n16_α
# IR_LIT_STRING
 xchain00244_n13_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00244_n14_α
 xchain00244_n13_β:
 jmp xchain00244_n16_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "lb"
# IR_SUBSCRIPT x[i] variable
 xchain00244_n14_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n16_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00244_n15_α
 xchain00244_n14_β:
 jmp xchain00244_n16_α
# IR_LIT_STRING
 xchain00244_n15_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00244_n17_α
 xchain00244_n15_β:
 jmp xchain00244_n16_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "<"
# IR_VAR_REF
 xchain00244_n16_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00244_n18_α
 xchain00244_n16_β:
 jmp xchain00244_n23_α
# IR_MAKE_LIST
 xchain00244_n17_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3864], rax
 lea rdi, [rbp + 3856]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00244_n19_α
 xchain00244_n17_β:
 jmp xchain00244_n16_α
# IR_LIT_STRING
 xchain00244_n18_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00244_n20_α
 xchain00244_n18_β:
 jmp xchain00244_n23_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "rb"
# IR_MAKE_LIST
 xchain00244_n19_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3832], rax
 lea rdi, [rbp + 3824]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00244_n21_α
 xchain00244_n19_β:
 jmp xchain00244_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n20_α:
 mov rdi, qword ptr [rbp + 3488]
 mov rsi, qword ptr [rbp + 3496]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n23_α
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00244_n22_α
 xchain00244_n20_β:
 jmp xchain00244_n23_α
# IR_ASSIGN_VAR
 xchain00244_n21_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n16_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00244_n16_α
 xchain00244_n21_β:
 jmp xchain00244_n16_α
# IR_LIT_STRING
 xchain00244_n22_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00244_n24_α
 xchain00244_n22_β:
 jmp xchain00244_n23_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string ">"
# IR_VAR_REF
 xchain00244_n23_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00244_n25_α
 xchain00244_n23_β:
 jmp xchain00244_n30_α
# IR_MAKE_LIST
 xchain00244_n24_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3656], rax
 lea rdi, [rbp + 3648]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00244_n26_α
 xchain00244_n24_β:
 jmp xchain00244_n23_α
# IR_LIT_STRING
 xchain00244_n25_α:
 mov qword ptr [rbp + 3312], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00244_n27_α
 xchain00244_n25_β:
 jmp xchain00244_n30_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "vb"
# IR_MAKE_LIST
 xchain00244_n26_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3624], rax
 lea rdi, [rbp + 3616]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00244_n28_α
 xchain00244_n26_β:
 jmp xchain00244_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n27_α:
 mov rdi, qword ptr [rbp + 3280]
 mov rsi, qword ptr [rbp + 3288]
 mov rdx, qword ptr [rbp + 3312]
 mov rcx, qword ptr [rbp + 3320]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n30_α
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00244_n29_α
 xchain00244_n27_β:
 jmp xchain00244_n30_α
# IR_ASSIGN_VAR
 xchain00244_n28_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n23_α
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain00244_n23_α
 xchain00244_n28_β:
 jmp xchain00244_n23_α
# IR_LIT_STRING
 xchain00244_n29_α:
 mov qword ptr [rbp + 3456], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00244_n31_α
 xchain00244_n29_β:
 jmp xchain00244_n30_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "|"
# IR_VAR_REF
 xchain00244_n30_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00244_n32_α
 xchain00244_n30_β:
 jmp xchain00244_n37_α
# IR_MAKE_LIST
 xchain00244_n31_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3448], rax
 lea rdi, [rbp + 3440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00244_n33_α
 xchain00244_n31_β:
 jmp xchain00244_n30_α
# IR_LIT_STRING
 xchain00244_n32_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00244_n34_α
 xchain00244_n32_β:
 jmp xchain00244_n37_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "nl"
# IR_MAKE_LIST
 xchain00244_n33_α:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3416], rax
 lea rdi, [rbp + 3408]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain00244_n35_α
 xchain00244_n33_β:
 jmp xchain00244_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n34_α:
 mov rdi, qword ptr [rbp + 3072]
 mov rsi, qword ptr [rbp + 3080]
 mov rdx, qword ptr [rbp + 3104]
 mov rcx, qword ptr [rbp + 3112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n37_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00244_n36_α
 xchain00244_n34_β:
 jmp xchain00244_n37_α
# IR_ASSIGN_VAR
 xchain00244_n35_α:
 mov rdi, qword ptr [rbp + 3344]
 mov rsi, qword ptr [rbp + 3352]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n30_α
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00244_n30_α
 xchain00244_n35_β:
 jmp xchain00244_n30_α
# IR_LIT_STRING
 xchain00244_n36_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00244_n38_α
 xchain00244_n36_β:
 jmp xchain00244_n37_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "\n"
# IR_VAR_REF
 xchain00244_n37_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain00244_n39_α
 xchain00244_n37_β:
 jmp xchain00244_n44_α
# IR_MAKE_LIST
 xchain00244_n38_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3240], rax
 lea rdi, [rbp + 3232]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00244_n40_α
 xchain00244_n38_β:
 jmp xchain00244_n37_α
# IR_LIT_STRING
 xchain00244_n39_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00244_n41_α
 xchain00244_n39_β:
 jmp xchain00244_n44_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string ""
# IR_MAKE_LIST
 xchain00244_n40_α:
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3208], rax
 lea rdi, [rbp + 3200]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00244_n42_α
 xchain00244_n40_β:
 jmp xchain00244_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n41_α:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2896]
 mov rcx, qword ptr [rbp + 2904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n44_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00244_n43_α
 xchain00244_n41_β:
 jmp xchain00244_n44_α
# IR_ASSIGN_VAR
 xchain00244_n42_α:
 mov rdi, qword ptr [rbp + 3136]
 mov rsi, qword ptr [rbp + 3144]
 mov rdx, qword ptr [rbp + 3184]
 mov rcx, qword ptr [rbp + 3192]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n37_α
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00244_n37_α
 xchain00244_n42_β:
 jmp xchain00244_n37_α
# IR_LIT_STRING
 xchain00244_n43_α:
 mov qword ptr [rbp + 3040], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00244_n45_α
 xchain00244_n43_β:
 jmp xchain00244_n44_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string ""
# IR_VAR_REF
 xchain00244_n44_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00244_n46_α
 xchain00244_n44_β:
 jmp xchain00244_n51_α
# IR_MAKE_LIST
 xchain00244_n45_α:
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3032], rax
 lea rdi, [rbp + 3024]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00244_n47_α
 xchain00244_n45_β:
 jmp xchain00244_n44_α
# IR_LIT_STRING
 xchain00244_n46_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00244_n48_α
 xchain00244_n46_β:
 jmp xchain00244_n51_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "&lcase"
# IR_MAKE_LIST
 xchain00244_n47_α:
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 3000], rax
 lea rdi, [rbp + 2992]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00244_n49_α
 xchain00244_n47_β:
 jmp xchain00244_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n48_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2640]
 mov rcx, qword ptr [rbp + 2648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n51_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00244_n50_α
 xchain00244_n48_β:
 jmp xchain00244_n51_α
# IR_ASSIGN_VAR
 xchain00244_n49_α:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n44_α
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00244_n44_α
 xchain00244_n49_β:
 jmp xchain00244_n44_α
# IR_LIT_CHARSET
 xchain00244_n50_α:
 mov qword ptr [rbp + 2832], 1
 mov dword ptr [rbp + 2836], -1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00244_n52_α
 xchain00244_n50_β:
 jmp xchain00244_n51_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR_REF
 xchain00244_n51_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00244_n53_α
 xchain00244_n51_β:
 jmp xchain00244_n58_α
 xchain00244_n52_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2800]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2808], rax
  .section .rodata
  .Lrkfn1176: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1176]
 lea rsi, [rbp + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain00244_n51_α
 jmp xchain00244_n54_α
 xchain00244_n52_β:
 jmp xchain00244_n51_α
# IR_LIT_STRING
 xchain00244_n53_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00244_n55_α
 xchain00244_n53_β:
 jmp xchain00244_n58_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "&ucase"
# IR_MAKE_LIST
 xchain00244_n54_α:
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2776], rax
 lea rdi, [rbp + 2768]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00244_n56_α
 xchain00244_n54_β:
 jmp xchain00244_n51_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n55_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2384]
 mov rcx, qword ptr [rbp + 2392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n58_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00244_n57_α
 xchain00244_n55_β:
 jmp xchain00244_n58_α
# IR_MAKE_LIST
 xchain00244_n56_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2744], rax
 lea rdi, [rbp + 2736]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00244_n59_α
 xchain00244_n56_β:
 jmp xchain00244_n51_α
# IR_LIT_CHARSET
 xchain00244_n57_α:
 mov qword ptr [rbp + 2576], 1
 mov dword ptr [rbp + 2580], -1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00244_n60_α
 xchain00244_n57_β:
 jmp xchain00244_n58_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# IR_VAR_REF
 xchain00244_n58_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00244_n61_α
 xchain00244_n58_β:
 jmp xchain00244_n66_α
# IR_ASSIGN_VAR
 xchain00244_n59_α:
 mov rdi, qword ptr [rbp + 2672]
 mov rsi, qword ptr [rbp + 2680]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n51_α
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain00244_n51_α
 xchain00244_n59_β:
 jmp xchain00244_n51_α
 xchain00244_n60_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2552], rax
  .section .rodata
  .Lrkfn1188: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1188]
 lea rsi, [rbp + 2544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain00244_n58_α
 jmp xchain00244_n62_α
 xchain00244_n60_β:
 jmp xchain00244_n58_α
# IR_LIT_STRING
 xchain00244_n61_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00244_n63_α
 xchain00244_n61_β:
 jmp xchain00244_n66_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "&digit"
# IR_MAKE_LIST
 xchain00244_n62_α:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2520], rax
 lea rdi, [rbp + 2512]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00244_n64_α
 xchain00244_n62_β:
 jmp xchain00244_n58_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n63_α:
 mov rdi, qword ptr [rbp + 2096]
 mov rsi, qword ptr [rbp + 2104]
 mov rdx, qword ptr [rbp + 2128]
 mov rcx, qword ptr [rbp + 2136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n66_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00244_n65_α
 xchain00244_n63_β:
 jmp xchain00244_n66_α
# IR_MAKE_LIST
 xchain00244_n64_α:
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2488], rax
 lea rdi, [rbp + 2480]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00244_n67_α
 xchain00244_n64_β:
 jmp xchain00244_n58_α
# IR_LIT_CHARSET
 xchain00244_n65_α:
 mov qword ptr [rbp + 2320], 1
 mov dword ptr [rbp + 2324], -1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00244_n68_α
 xchain00244_n65_β:
 jmp xchain00244_n66_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "0123456789"
# IR_VAR
 xchain00244_n66_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00244_n69_α
 xchain00244_n66_β:
 jmp xchain00244_n70_α
# IR_ASSIGN_VAR
 xchain00244_n67_α:
 mov rdi, qword ptr [rbp + 2416]
 mov rsi, qword ptr [rbp + 2424]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n58_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00244_n58_α
 xchain00244_n67_β:
 jmp xchain00244_n58_α
 xchain00244_n68_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2296], rax
  .section .rodata
  .Lrkfn1200: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1200]
 lea rsi, [rbp + 2288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00244_n66_α
 jmp xchain00244_n71_α
 xchain00244_n68_β:
 jmp xchain00244_n66_α
# IR_LIT_STRING
 xchain00244_n69_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00244_n72_α
 xchain00244_n69_β:
 jmp xchain00244_n70_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "tl+s+"
# IR_VAR_REF
 xchain00244_n70_α:
 lea rdi, [rbp + 4400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00244_n73_α
 xchain00244_n70_β:
 jmp xchain00244_n79_α
# IR_MAKE_LIST
 xchain00244_n71_α:
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2264], rax
 lea rdi, [rbp + 2256]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00244_n74_α
 xchain00244_n71_β:
 jmp xchain00244_n66_α
 xchain00244_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00270_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00270_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00270_3]
 lea rdx, [rip + .Lx00270_4]
 jmp rax
.Lx00270_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00270_2
.Lx00270_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00270_2
.Lx00270_1:
 call rt_faildescr@PLT
.Lx00270_2:
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain00244_n70_α
 jmp xchain00244_n75_α
 xchain00244_n72_β:
 jmp xchain00244_n70_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00244_n73_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00244_n76_α
 xchain00244_n73_β:
 jmp xchain00244_n79_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "l"
# IR_MAKE_LIST
 xchain00244_n74_α:
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2232], rax
 lea rdi, [rbp + 2224]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00244_n77_α
 xchain00244_n74_β:
 jmp xchain00244_n66_α
 xchain00244_n75_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00244_n70_α
 xchain00244_n75_β:
 jmp xchain00244_n70_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n76_α:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n79_α
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00244_n78_α
 xchain00244_n76_β:
 jmp xchain00244_n79_α
# IR_ASSIGN_VAR
 xchain00244_n77_α:
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00244_n66_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00244_n66_α
 xchain00244_n77_β:
 jmp xchain00244_n66_α
# IR_DEREF variable -> value
 xchain00244_n78_α:
 mov rdi, qword ptr [rbp + 1904]
 mov rsi, qword ptr [rbp + 1912]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00244_n79_α
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain00244_n80_α
 xchain00244_n78_β:
 jmp xchain00244_n79_α
# IR_LIT_INTEGER
 xchain00244_n79_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00244_n81_α
 xchain00244_n79_β:
 jmp xchain00244_n84_α
.Lx00272_0:
 .quad 1000
# IR_UNOP
 xchain00244_n80_α:
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 99
 je xchain00244_n79_α
 cmp eax, 0
 je xchain00244_n79_α
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00244_n82_α
 xchain00244_n80_β:
 jmp xchain00244_n79_α
# IR_MOVE_LABEL
 xchain00244_n81_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1752], rax
 lea rax, [rip + xchain00244_n84_α]
 mov qword ptr [rbp + 1760], rax
 jmp xchain00244_n83_α
 xchain00244_n81_β:
 jmp xchain00244_n84_α
# IR_MOVE_LABEL
 xchain00244_n82_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
 lea rax, [rip + xchain00244_n79_α]
 mov qword ptr [rbp + 1760], rax
 jmp xchain00244_n83_α
 xchain00244_n82_β:
 jmp xchain00244_n84_α
# IR_ASSIGN gva
 xchain00244_n83_α:
 mov rax, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00244_n84_α
 xchain00244_n83_β:
 jmp xchain00244_n84_α
# IR_VAR_REF
 xchain00244_n84_α:
 lea rdi, [rbp + 4400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00244_n86_α
 xchain00244_n84_β:
 jmp xchain00244_n89_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00244_n85_α:
 jmp qword ptr [rbp + 1760]
 xchain00244_n85_β:
 jmp xchain00244_n84_α
# IR_LIT_STRING
 xchain00244_n86_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00244_n87_α
 xchain00244_n86_β:
 jmp xchain00244_n89_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "t"
# IR_SUBSCRIPT x[i] variable
 xchain00244_n87_α:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n89_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00244_n88_α
 xchain00244_n87_β:
 jmp xchain00244_n89_α
# IR_DEREF variable -> value
 xchain00244_n88_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00244_n89_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00244_n90_α
 xchain00244_n88_β:
 jmp xchain00244_n89_α
# IR_VAR_REF
 xchain00244_n89_α:
 lea rdi, [rbp + 4400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00244_n91_α
 xchain00244_n89_β:
 jmp xchain00244_n95_α
# IR_UNOP
 xchain00244_n90_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 99
 je xchain00244_n89_α
 cmp eax, 0
 je xchain00244_n89_α
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00244_n92_α
 xchain00244_n90_β:
 jmp xchain00244_n89_α
# IR_LIT_STRING
 xchain00244_n91_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00244_n93_α
 xchain00244_n91_β:
 jmp xchain00244_n95_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "s"
# IR_ASSIGN gva
 xchain00244_n92_α:
 mov rax, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain00244_n89_α
 xchain00244_n92_β:
 jmp xchain00244_n89_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n93_α:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n95_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00244_n94_α
 xchain00244_n93_β:
 jmp xchain00244_n95_α
# IR_DEREF variable -> value
 xchain00244_n94_α:
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00244_n95_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00244_n96_α
 xchain00244_n94_β:
 jmp xchain00244_n95_α
# KEYWORD_read
 xchain00244_n95_α:
 mov rdi, qword ptr [rip + .Lx00275_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00244_n97_α
 xchain00244_n95_β:
 jmp xchain00244_n00164_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "&input"
# IR_UNOP
 xchain00244_n96_α:
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 99
 je xchain00244_n95_α
 cmp eax, 0
 je xchain00244_n95_α
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00244_n98_α
 xchain00244_n96_β:
 jmp xchain00244_n95_α
# IR_MAKE_LIST
 xchain00244_n97_α:
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1368], rax
 lea rdi, [rbp + 1360]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00244_n99_α
 xchain00244_n97_β:
 jmp xchain00244_n00164_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00244_n98_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00244_n95_α
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00244_n95_α
 xchain00244_n98_β:
 jmp xchain00244_n95_α
# IR_ASSIGN gva
 xchain00244_n99_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00244_n00164_α
 xchain00244_n99_β:
 jmp xchain00244_n00164_α
# IR_LIT_STRING
 xchain00244_n00164_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00244_n00165_α
 xchain00244_n00164_β:
 jmp xchain00244_n00001_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string ""
# IR_ASSIGN gva
 xchain00244_n00165_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00244_n00001_α
 xchain00244_n00165_β:
 jmp xchain00244_n00001_α
# IR_VAR
 xchain00244_n00001_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00244_n00167_α
 xchain00244_n00001_β:
 jmp xchain00244_n00002_α
 xchain00244_n00167_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn1246: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1246]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00244_n00002_α
 jmp xchain00244_n00171_α
 xchain00244_n00167_β:
 jmp xchain00244_n00002_α
 xchain00244_n00002_α:
 mov rdi, qword ptr [rip + .Lx00277_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00277_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00277_3]
 lea rdx, [rip + .Lx00277_4]
 jmp rax
.Lx00277_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00277_2
.Lx00277_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00277_2
.Lx00277_1:
 call rt_faildescr@PLT
.Lx00277_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00244_n00002_β:
 jmp main_ω
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "Term__"
# IR_ASSIGN gva
 xchain00244_n00171_α:
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00244_n00169_α
 xchain00244_n00171_β:
 jmp xchain00244_n00002_α
# IR_VAR
 xchain00244_n00169_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00244_n00170_α
 xchain00244_n00169_β:
 jmp xchain00244_n00003_α
# IR_UNOP
 xchain00244_n00170_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00244_n00168_α
 xchain00244_n00170_β:
 jmp xchain00244_n00003_α
# IR_VAR
 xchain00244_n00003_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00244_n00004_α
 xchain00244_n00003_β:
 jmp xchain00244_n00178_α
# IR_LIT_INTEGER
 xchain00244_n00168_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00244_n00005_α
 xchain00244_n00168_β:
 jmp xchain00244_n00003_α
.Lx00278_0:
 .quad 0
 xchain00244_n00004_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn1255: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1255]
 lea rsi, [rbp + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00244_n00178_α
 jmp xchain00244_n00175_α
 xchain00244_n00004_β:
 jmp xchain00244_n00178_α
 xchain00244_n00173_α:
 jmp xchain00244_n00178_α
xchain00244_n00173_β:
 jmp xchain00244_n00178_α
 xchain00244_n00005_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00279_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00279_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00279_2
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00279_2
.Lx00279_1:
 mov rax, qword ptr [rbp + 1192]
 mov rcx, qword ptr [rbp + 1256]
 cmp rax, rcx
 je xchain00244_n00003_α
 mov rcx, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rcx
 mov rcx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rcx
 jmp xchain00244_n00177_α
.Lx00279_0:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 10
 lea r9, [rbp + 1152]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00279_1
 cmp eax, 1
 je xchain00244_n00003_α
 jmp xchain00244_n00177_α
.Lx00279_2:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00244_n00003_α
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00244_n00177_α
 xchain00244_n00005_β:
 jmp xchain00244_n00003_α
# IR_MOVE_LABEL
 xchain00244_n00175_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
 lea rax, [rip + xchain00244_n00173_α]
 mov qword ptr [rbp + 944], rax
 jmp xchain00244_n00176_α
 xchain00244_n00175_β:
 jmp xchain00244_n00280_α
# IR_VAR
 xchain00244_n00178_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00244_n00181_α
 xchain00244_n00178_β:
 jmp xchain00244_n00001_α
# IR_VAR
 xchain00244_n00177_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00244_n00281_α
 xchain00244_n00177_β:
 jmp xchain00244_n00003_α
 xchain00244_n00176_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00244_n00280_α
 xchain00244_n00176_β:
 jmp xchain00244_n00280_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00244_n00180_α:
 jmp qword ptr [rbp + 944]
 xchain00244_n00180_β:
 jmp xchain00244_n00280_α
 xchain00244_n00181_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1266: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1266]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00244_n00001_α
 jmp xchain00244_n00006_α
 xchain00244_n00181_β:
 jmp xchain00244_n00001_α
 xchain00244_n00281_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn1268: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1268]
 lea rsi, [rbp + 1088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00244_n00003_α
 jmp xchain00244_n00007_α
 xchain00244_n00281_β:
 jmp xchain00244_n00003_α
# IR_VAR_REF
 xchain00244_n00280_α:
 lea rdi, [rbp + 4384]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00244_n00282_α
 xchain00244_n00280_β:
 jmp xchain00244_n00283_α
 xchain00244_n00006_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00244_n00001_α
xchain00244_n00006_β:
 jmp xchain00244_n00001_α
# IR_MOVE_LABEL
 xchain00244_n00007_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00244_n00003_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00244_n00003_α
 xchain00244_n00007_β:
 jmp xchain00244_n00003_α
# IR_LIT_INTEGER
 xchain00244_n00282_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00244_n00285_α
 xchain00244_n00282_β:
 jmp xchain00244_n00283_α
.Lx00284_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00244_n00286_α:
 jmp qword ptr [rbp + 1056]
 xchain00244_n00286_β:
 jmp xchain00244_n00003_α
# IR_SUBSCRIPT x[i] variable
 xchain00244_n00285_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00244_n00283_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00244_n00287_α
 xchain00244_n00285_β:
 jmp xchain00244_n00283_α
# IR_DEREF variable -> value
 xchain00244_n00287_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00244_n00283_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00244_n00008_α
 xchain00244_n00287_β:
 jmp xchain00244_n00283_α
# IR_VAR
 xchain00244_n00283_α:
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 312], rax
 jmp xchain00244_n00288_α
 xchain00244_n00283_β:
 jmp xchain00244_n00169_α
# IR_LIT_STRING
 xchain00244_n00008_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00244_n00290_α
 xchain00244_n00008_β:
 jmp xchain00244_n00283_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "\\"
# IR_LIST_BANG
 xchain00244_n00288_α:
 mov qword ptr [rbp + 288], 0
.Lx00291_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp rax, 99
 je xchain00244_n00169_α
 jmp xchain00244_n00292_α
 xchain00244_n00288_β:
 inc qword ptr [rbp + 288]
 jmp .Lx00291_0
 xchain00244_n00290_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00244_n00283_α
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00244_n00293_α
 xchain00244_n00290_β:
 jmp xchain00244_n00283_α
# IR_VAR
 xchain00244_n00292_α:
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 424], rax
 jmp xchain00244_n00294_α
 xchain00244_n00292_β:
 jmp xchain00244_n00288_β
# IR_VAR
 xchain00244_n00293_α:
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 744], rax
 jmp xchain00244_n00295_α
 xchain00244_n00293_β:
 jmp xchain00244_n00283_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00244_n00294_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 lea rdx, [rbp + 352]
 mov ecx, 1
 lea r8, [rbp + 368]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain00244_n00288_β
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00244_n00296_α
 xchain00244_n00294_β:
 lea rdi, [rbp + 368]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00244_n00288_β
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00244_n00296_α
 jmp xchain00244_n00288_β
# IR_LIT_INTEGER
 xchain00244_n00295_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00244_n00298_α
 xchain00244_n00295_β:
 jmp xchain00244_n00283_α
.Lx00297_0:
 .quad 1
 xchain00244_n00299_α:
 jmp xchain00244_n00283_α
xchain00244_n00299_β:
 jmp xchain00244_n00283_α
 xchain00244_n00296_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 264], rax
 jmp xchain00244_n00169_α
xchain00244_n00296_β:
 jmp xchain00244_n00169_α
# IR_LIT_INTEGER
 xchain00244_n00298_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00244_n00301_α
 xchain00244_n00298_β:
 jmp xchain00244_n00283_α
.Lx00300_0:
 .quad 18446744073709551615
# IR_SUBSCRIPT section
 xchain00244_n00301_α:
 mov rdi, qword ptr [rbp + 736]
 mov rsi, qword ptr [rbp + 744]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8, qword ptr [rbp + 800]
 mov r9, qword ptr [rbp + 808]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00244_n00283_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00244_n00302_α
 xchain00244_n00301_β:
 jmp xchain00244_n00283_α
# IR_VAR
 xchain00244_n00302_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00244_n00303_α
 xchain00244_n00302_β:
 jmp xchain00244_n00283_α
 xchain00244_n00303_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn1298: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1298]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00244_n00283_α
 jmp xchain00244_n00304_α
 xchain00244_n00303_β:
 jmp xchain00244_n00283_α
 xchain00244_n00304_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call str_concat_d@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00244_n00305_α
 xchain00244_n00304_β:
 jmp xchain00244_n00283_α
# IR_MOVE_LABEL
 xchain00244_n00305_α:
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
 lea rax, [rip + xchain00244_n00299_α]
 mov qword ptr [rbp + 656], rax
 jmp xchain00244_n00306_α
 xchain00244_n00305_β:
 jmp xchain00244_n00280_α
 xchain00244_n00306_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00244_n00280_α
 xchain00244_n00306_β:
 jmp xchain00244_n00280_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00244_n00307_α:
 jmp qword ptr [rbp + 656]
 xchain00244_n00307_β:
 jmp xchain00244_n00280_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 4360]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 4360]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
