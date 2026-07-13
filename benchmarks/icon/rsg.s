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
  mov qword ptr [r12 + 616], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 608], rax
 pop rsi
proc_alts_α_body:
# IR_MAKE_LIST
 xchain0_n0_α:
 lea rdi, [r12 + 608]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
# IR_GEN_SCAN
 xchain0_n3_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
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
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_alts_ω
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 216], rax
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
 mov qword ptr [r12 + 416], 1
 mov dword ptr [r12 + 420], -1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 424], rax
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
 mov qword ptr [r12 + 400], r14
.Lx16_0:
 mov rax, qword ptr [r12 + 400]
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
 mov qword ptr [r12 + 384], 6
 add rax, 1
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n11_α
.Lx16_1:
 inc qword ptr [r12 + 400]
 jmp .Lx16_0
 xchain0_n9_β:
 inc qword ptr [r12 + 400]
 jmp .Lx16_0
.Lx16_2:
 .quad .Lx16_2_s
.Lx16_2_s:
 .string "|"
# IR_GEN_SCAN
 xchain0_n10_α:
 lea rdi, [r12 + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 80]
 mov r14, qword ptr [r12 + 88]
 mov r15, qword ptr [r12 + 96]
 jmp xchain0_n4_α
 xchain0_n10_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain0_n13_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n10_α
# IR_SCAN_TAB
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 328]
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
 mov qword ptr [r12 + 304], r14
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
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 mov r14, qword ptr [r12 + 304]
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n10_α
.Lx23_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n14_α:
 jmp qword ptr [r12 + 336]
 xchain0_n14_β:
 jmp xchain0_n10_α
 xchain0_n15_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx27_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx27_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx27_2
.Lx27_1:
 call rt_faildescr@PLT
.Lx27_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
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
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain0_n8_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain0_n12_α
 xchain0_n16_β:
 jmp xchain0_n10_α
 xchain0_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn31: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n10_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n10_α
.Lx32_0:
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
 jmp xchain0_n20_α
 xchain0_n19_β:
 mov r14, qword ptr [r12 + 496]
 jmp xchain0_n10_α
# IR_MOVE_LABEL
 xchain0_n20_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain0_n21_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain0_n5_α
 xchain0_n20_β:
 jmp xchain0_n5_α
 xchain0_n21_α:
 jmp xchain0_n10_α
xchain0_n21_β:
 jmp xchain0_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n22_α:
 jmp qword ptr [r12 + 464]
 xchain0_n22_β:
 jmp xchain0_n5_α
proc_alts_β:
jmp proc_alts_ω
proc_alts_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 616]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 608]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_alts_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 616]
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
  mov qword ptr [r12 + 248], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_comment_α_body:
# IR_VAR_REF
 xchain40_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain40_n1_α
 xchain40_n0_β:
 jmp proc_comment_ω
# IR_LIT_INTEGER
 xchain40_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain40_n2_α
 xchain40_n1_β:
 jmp proc_comment_ω
.Lx43_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain40_n2_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain40_n3_α
 xchain40_n2_β:
 jmp proc_comment_ω
# IR_DEREF variable -> value
 xchain40_n3_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je proc_comment_ω
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain40_n4_α
 xchain40_n3_β:
 jmp proc_comment_ω
# IR_LIT_STRING
 xchain40_n4_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain40_n5_α
 xchain40_n4_β:
 jmp proc_comment_ω
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "#"
 xchain40_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_comment_ω
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain40_n6_α
 xchain40_n5_β:
 jmp proc_comment_ω
# IR_RETURN
 xchain40_n6_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_comment_γ
proc_comment_β:
jmp proc_comment_ω
proc_comment_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 248]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_comment_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 248]
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
  mov qword ptr [r12 + 632], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 624], rax
 pop rsi
proc_define_α_body:
# IR_VAR
 xchain49_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 600], rax
 jmp xchain49_n1_α
 xchain49_n0_β:
 jmp proc_define_ω
# IR_GEN_SCAN
 xchain49_n1_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain49_n2_α
 xchain49_n1_β:
 jmp proc_define_ω
# IR_VAR_REF
 xchain49_n2_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain49_n3_α
 xchain49_n2_β:
 jmp xchain49_n10_α
# IR_LIT_STRING
 xchain49_n3_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain49_n4_α
 xchain49_n3_β:
 jmp xchain49_n6_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain49_n4_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain49_n6_α
 mov rdi, qword ptr [rip + .Lx58_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain49_n6_α
 mov qword ptr [r12 + 288], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 296], rax
 jmp xchain49_n5_α
 xchain49_n4_β:
 jmp xchain49_n6_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain49_n5_α:
 mov rax, qword ptr [r12 + 296]
 cmp rax, 1
 jge .Lx60_0
 add rax, r15
 add rax, 1
.Lx60_0:
 cmp rax, 1
 jl xchain49_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain49_n6_α
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
 jmp xchain49_n6_α
 xchain49_n5_β:
 mov r14, qword ptr [r12 + 272]
 jmp xchain49_n6_α
# IR_LIT_STRING
 xchain49_n6_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain49_n7_α
 xchain49_n6_β:
 jmp xchain49_n10_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string ">::="
# IR_SCAN_FIND
 xchain49_n7_α:
 mov qword ptr [r12 + 208], r14
.Lx63_0:
 mov rax, qword ptr [r12 + 208]
 mov rcx, r15
 sub rcx, 4
 cmp rax, rcx
 jg xchain49_n10_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx63_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx63_1
 mov rcx, rax
 add rcx, 2
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx63_1
 mov rcx, rax
 add rcx, 3
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 61
 jne .Lx63_1
 mov qword ptr [r12 + 192], 6
 add rax, 1
 mov qword ptr [r12 + 200], rax
 jmp xchain49_n8_α
.Lx63_1:
 inc qword ptr [r12 + 208]
 jmp .Lx63_0
 xchain49_n7_β:
 inc qword ptr [r12 + 208]
 jmp .Lx63_0
# IR_SCAN_TAB
 xchain49_n8_α:
 mov rax, qword ptr [r12 + 200]
 cmp rax, 1
 jge .Lx65_0
 add rax, r15
 add rax, 1
.Lx65_0:
 cmp rax, 1
 jl xchain49_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain49_n10_α
 mov qword ptr [r12 + 176], r14
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
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain49_n9_α
 xchain49_n8_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain49_n10_α
 xchain49_n9_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
 jmp xchain49_n11_α
xchain49_n9_β:
 jmp xchain49_n10_α
# IR_GEN_SCAN
 xchain49_n10_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_define_ω
 xchain49_n10_β:
 jmp proc_define_ω
# IR_SUBSCRIPT x[i] variable
 xchain49_n11_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain49_n10_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain49_n12_α
 xchain49_n11_β:
 jmp xchain49_n10_α
# IR_LIT_INTEGER
 xchain49_n12_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain49_n13_α
 xchain49_n12_β:
 jmp xchain49_n14_α
.Lx70_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain49_n13_α:
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain49_n14_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain49_n14_α
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
 jmp xchain49_n14_α
 xchain49_n13_β:
 mov r14, qword ptr [r12 + 544]
 jmp xchain49_n14_α
# IR_LIT_INTEGER
 xchain49_n14_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain49_n15_α
 xchain49_n14_β:
 jmp xchain49_n10_α
.Lx73_0:
 .quad 0
# IR_SCAN_TAB
 xchain49_n15_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx75_0
 add rax, r15
 add rax, 1
.Lx75_0:
 cmp rax, 1
 jl xchain49_n10_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain49_n10_α
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
 jmp xchain49_n16_α
 xchain49_n15_β:
 mov r14, qword ptr [r12 + 480]
 jmp xchain49_n10_α
 xchain49_n16_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx77_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx77_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx77_2
.Lx77_1:
 call rt_faildescr@PLT
.Lx77_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain49_n10_α
 jmp xchain49_n17_α
 xchain49_n16_β:
 jmp xchain49_n10_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "alts"
 xchain49_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 408], rax
 jmp xchain49_n18_α
xchain49_n17_β:
 jmp xchain49_n10_α
# IR_ASSIGN_VAR
 xchain49_n18_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain49_n10_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain49_n19_α
 xchain49_n18_β:
 jmp xchain49_n10_α
# IR_GEN_SCAN
 xchain49_n19_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 88], rax
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp xchain49_n20_α
 xchain49_n19_β:
 jmp proc_define_ω
# IR_RETURN
 xchain49_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_define_γ
proc_define_β:
jmp proc_define_ω
proc_define_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 632]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 624]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_define_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 632]
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
  mov qword ptr [r12 + 680], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 672], rax
 pop rsi
proc_defnon_α_body:
# IR_VAR
 xchain83_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 648], rax
 jmp xchain83_n1_α
 xchain83_n0_β:
 jmp xchain83_n2_α
# IR_GEN_SCAN
 xchain83_n1_α:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain83_n3_α
 xchain83_n1_β:
 jmp xchain83_n2_α
# IR_VAR
 xchain83_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain83_n4_α
 xchain83_n2_β:
 jmp proc_defnon_ω
# IR_LIT_STRING
 xchain83_n3_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain83_n5_α
 xchain83_n3_β:
 jmp xchain83_n8_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "'"
 xchain83_n4_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn92: .string "nonterm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain83_n6_α
 xchain83_n4_β:
 jmp proc_defnon_ω
# IR_SCAN_MATCH
 xchain83_n5_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain83_n8_α
 mov rdi, qword ptr [rip + .Lx94_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain83_n8_α
 mov qword ptr [r12 + 576], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 584], rax
 jmp xchain83_n7_α
 xchain83_n5_β:
 jmp xchain83_n8_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "'"
# IR_RETURN
 xchain83_n6_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_defnon_γ
# IR_SCAN_TAB
 xchain83_n7_α:
 mov rax, qword ptr [r12 + 584]
 cmp rax, 1
 jge .Lx97_0
 add rax, r15
 add rax, 1
.Lx97_0:
 cmp rax, 1
 jl xchain83_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain83_n8_α
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
 jmp xchain83_n9_α
 xchain83_n7_β:
 mov r14, qword ptr [r12 + 560]
 jmp xchain83_n8_α
# IR_GEN_SCAN
 xchain83_n8_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain83_n2_α
 xchain83_n8_β:
 jmp xchain83_n2_α
# IR_LIT_INTEGER
 xchain83_n9_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain83_n10_α
 xchain83_n9_β:
 jmp xchain83_n8_α
.Lx00001_0:
 .quad 18446744073709551615
# IR_SCAN_TAB
 xchain83_n10_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00002_0
 add rax, r15
 add rax, 1
.Lx00002_0:
 cmp rax, 1
 jl xchain83_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain83_n8_α
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
 jmp xchain83_n11_α
 xchain83_n10_β:
 mov r14, qword ptr [r12 + 496]
 jmp xchain83_n8_α
 xchain83_n11_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn104: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain83_n8_α
 jmp xchain83_n12_α
 xchain83_n11_β:
 jmp xchain83_n8_α
 xchain83_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain83_n13_α
 xchain83_n12_β:
 jmp xchain83_n8_α
# IR_LIT_STRING
 xchain83_n13_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain83_n14_α
 xchain83_n13_β:
 jmp xchain83_n8_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "'"
# IR_SCAN_MATCH
 xchain83_n14_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain83_n8_α
 mov rdi, qword ptr [rip + .Lx00004_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain83_n8_α
 mov qword ptr [r12 + 352], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 360], rax
 jmp xchain83_n15_α
 xchain83_n14_β:
 jmp xchain83_n8_α
.Lx00004_0:
 .quad .Lx00004_0_s
.Lx00004_0_s:
 .string "'"
# IR_SCAN_TAB
 xchain83_n15_α:
 mov rax, qword ptr [r12 + 360]
 cmp rax, 1
 jge .Lx00005_0
 add rax, r15
 add rax, 1
.Lx00005_0:
 cmp rax, 1
 jl xchain83_n8_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain83_n8_α
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
 jmp xchain83_n16_α
 xchain83_n15_β:
 mov r14, qword ptr [r12 + 336]
 jmp xchain83_n8_α
 xchain83_n16_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
 jmp xchain83_n17_α
xchain83_n16_β:
 jmp xchain83_n8_α
# IR_GEN_SCAN
 xchain83_n17_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain83_n18_α
 xchain83_n17_β:
 jmp xchain83_n2_α
# IR_VAR
 xchain83_n18_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 120], rax
 jmp xchain83_n19_α
 xchain83_n18_β:
 jmp proc_defnon_ω
 xchain83_n19_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn117: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn117]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain83_n20_α
 xchain83_n19_β:
 jmp proc_defnon_ω
# IR_RETURN
 xchain83_n20_α:
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
mov rsp, qword ptr [r12 + 680]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 672]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_defnon_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 680]
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
  mov qword ptr [r12 + 168], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_error_α_body:
# IR_LIT_STRING
 xchain00006_n0_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00006_n1_α
 xchain00006_n0_β:
 jmp xchain00006_n3_α
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "*** erroneous line:  "
# IR_VAR
 xchain00006_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00006_n2_α
 xchain00006_n1_β:
 jmp xchain00006_n3_α
 xchain00006_n2_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+48]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+64]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn124: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00006_n3_α
 jmp xchain00006_n3_α
 xchain00006_n2_β:
 jmp xchain00006_n3_α
# IR_RETURN
 xchain00006_n3_α:
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
mov rsp, qword ptr [r12 + 168]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 160]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_error_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 168]
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
  mov qword ptr [r12 + 2296], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2288], rax
 pop rsi
proc_gener_α_body:
# IR_VAR
 xchain00008_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2264], rax
 jmp xchain00008_n1_α
 xchain00008_n0_β:
 jmp xchain00008_n2_α
 xchain00008_n1_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn130: .string "nonterm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn130]
 lea rsi, [r12 + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n3_α
 xchain00008_n1_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n2_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 136], rax
 jmp xchain00008_n4_α
 xchain00008_n2_β:
 jmp xchain00008_n5_α
# IR_MAKE_LIST
 xchain00008_n3_α:
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2200], rax
 lea rdi, [r12 + 2192]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain00008_n6_α
 xchain00008_n3_β:
 jmp xchain00008_n2_α
 xchain00008_n4_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn136: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n7_α
 xchain00008_n4_β:
 jmp xchain00008_n5_α
 xchain00008_n5_α:
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
 jmp proc_gener_ω
 xchain00008_n5_β:
 jmp proc_gener_ω
 xchain00008_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2176]
 mov rdx, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00008_n2_α
 xchain00008_n6_β:
 jmp xchain00008_n2_α
 xchain00008_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00008_n8_α
 xchain00008_n7_β:
 jmp xchain00008_n5_α
# IR_VAR
 xchain00008_n8_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00008_n9_α
 xchain00008_n8_β:
 jmp xchain00008_n10_α
# IR_UNOP
 xchain00008_n9_α:
 mov eax, dword ptr [r12 + 2128]
 cmp eax, 99
 je xchain00008_n10_α
 cmp eax, 0
 je xchain00008_n10_α
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00008_n11_α
 xchain00008_n9_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n10_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 264], rax
 jmp xchain00008_n12_α
 xchain00008_n10_β:
 jmp xchain00008_n2_α
# KEYWORD_read
 xchain00008_n11_α:
 mov rdi, qword ptr [rip + .Lx00009_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
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
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn147: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n14_α
 xchain00008_n12_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n13_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00008_n15_α
 xchain00008_n13_β:
 jmp xchain00008_n10_α
# IR_LIT_STRING
 xchain00008_n14_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00008_n16_α
 xchain00008_n14_β:
 jmp xchain00008_n2_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "string"
 xchain00008_n15_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00011_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00011_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00011_2
.Lx00011_1:
 call rt_faildescr@PLT
.Lx00011_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
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
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1760]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn154: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn154]
 lea rsi, [r12 + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00008_n19_α
 jmp xchain00008_n18_α
 xchain00008_n16_β:
 jmp xchain00008_n19_α
# IR_VAR
 xchain00008_n17_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00008_n20_α
 xchain00008_n17_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n18_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00008_n21_α
 xchain00008_n18_β:
 jmp xchain00008_n2_α
# IR_LIT_STRING
 xchain00008_n19_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00008_n22_α
 xchain00008_n19_β:
 jmp xchain00008_n2_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "charset"
 xchain00008_n20_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00013_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00013_2
.Lx00013_1:
 call rt_faildescr@PLT
.Lx00013_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
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
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn163: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n24_α
 xchain00008_n21_β:
 jmp xchain00008_n2_α
 xchain00008_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+1552]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1568]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn165: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn165]
 lea rsi, [r12 + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain00008_n26_α
 jmp xchain00008_n25_α
 xchain00008_n22_β:
 jmp xchain00008_n26_α
 xchain00008_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1856]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1864], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+1872]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn167: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain00008_n10_α
 jmp xchain00008_n27_α
 xchain00008_n23_β:
 jmp xchain00008_n10_α
 xchain00008_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00008_n28_α
 xchain00008_n24_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n25_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00008_n29_α
 xchain00008_n25_β:
 jmp xchain00008_n2_α
# IR_LIT_STRING
 xchain00008_n26_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00008_n30_α
 xchain00008_n26_β:
 jmp xchain00008_n2_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "nonterm"
# IR_MOVE_LABEL
 xchain00008_n27_α:
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
 lea rax, [rip + xchain00008_n10_α]
 mov qword ptr [r12 + 1808], rax
 jmp xchain00008_n10_α
 xchain00008_n27_β:
 jmp xchain00008_n10_α
# IR_VAR
 xchain00008_n28_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 184], rax
 jmp xchain00008_n32_α
 xchain00008_n28_β:
 jmp xchain00008_n2_α
# IR_FIELD_GET
 xchain00008_n29_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
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
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+1312]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn178: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn178]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n34_α
 xchain00008_n30_β:
 jmp xchain00008_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00008_n31_α:
 jmp qword ptr [r12 + 1808]
 xchain00008_n31_β:
 jmp xchain00008_n10_α
 xchain00008_n32_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
 jmp xchain00008_n2_α
xchain00008_n32_β:
 jmp xchain00008_n2_α
# IR_RANDOM
 xchain00008_n33_α:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00008_n35_α
 xchain00008_n33_β:
 jmp xchain00008_n2_α
# IR_VAR_REF
 xchain00008_n34_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00008_n36_α
 xchain00008_n34_β:
 jmp xchain00008_n39_α
# IR_DEREF variable -> value
 xchain00008_n35_α:
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n2_α
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00008_n37_α
 xchain00008_n35_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n36_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1144], rax
 jmp xchain00008_n38_α
 xchain00008_n36_β:
 jmp xchain00008_n39_α
 xchain00008_n37_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1392]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn189: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn189]
 lea rsi, [r12 + 1392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00008_n2_α
 jmp xchain00008_n40_α
 xchain00008_n37_β:
 jmp xchain00008_n2_α
# IR_FIELD_GET
 xchain00008_n38_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
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
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00008_n42_α
 xchain00008_n39_β:
 jmp xchain00008_n5_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "&errout"
 xchain00008_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00008_n28_α
 xchain00008_n40_β:
 jmp xchain00008_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain00008_n41_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00008_n43_α
 xchain00008_n41_β:
 jmp xchain00008_n39_α
# IR_LIT_STRING
 xchain00008_n42_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00008_n44_α
 xchain00008_n42_β:
 jmp xchain00008_n5_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "*** undefined nonterminal:  <"
# IR_DEREF variable -> value
 xchain00008_n43_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00008_n45_α
 xchain00008_n43_β:
 jmp xchain00008_n39_α
# IR_VAR
 xchain00008_n44_α:
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 936], rax
 jmp xchain00008_n46_α
 xchain00008_n44_β:
 jmp xchain00008_n5_α
# IR_UNOP
 xchain00008_n45_α:
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 99
 je xchain00008_n39_α
 cmp eax, 0
 je xchain00008_n39_α
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1048], rax
 jmp xchain00008_n48_α
 xchain00008_n45_β:
 jmp xchain00008_n39_α
# IR_FIELD_GET
 xchain00008_n46_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00008_n5_α
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
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
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain00008_n50_α
 xchain00008_n48_β:
 jmp xchain00008_n39_α
# IR_LIT_STRING
 xchain00008_n49_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00008_n51_α
 xchain00008_n49_β:
 jmp xchain00008_n5_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string ">"
# IR_DEREF variable -> value
 xchain00008_n50_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00008_n39_α
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain00008_n52_α
 xchain00008_n50_β:
 jmp xchain00008_n39_α
 xchain00008_n51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+752]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+768]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 776], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+784]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 792], rax
# marshal arg3 = producer-box slot [zr+960] -> [zr+800]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn205: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 752]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n5_α
 xchain00008_n51_β:
 jmp xchain00008_n5_α
# IR_VAR
 xchain00008_n52_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00008_n53_α
 xchain00008_n52_β:
 jmp xchain00008_n39_α
 xchain00008_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1216]
 mov rsi, qword ptr [r12 + 1224]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call str_concat_d@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00008_n54_α
 xchain00008_n53_β:
 jmp xchain00008_n39_α
# IR_MOVE_LABEL
 xchain00008_n54_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 696], rax
 lea rax, [rip + xchain00008_n39_α]
 mov qword ptr [r12 + 704], rax
 jmp xchain00008_n55_α
 xchain00008_n54_β:
 jmp xchain00008_n57_α
 xchain00008_n55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00008_n57_α
 xchain00008_n55_β:
 jmp xchain00008_n57_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00008_n56_α:
 jmp qword ptr [r12 + 704]
 xchain00008_n56_β:
 jmp xchain00008_n57_α
# IR_VAR
 xchain00008_n57_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 584], rax
 jmp xchain00008_n58_α
 xchain00008_n57_β:
 jmp xchain00008_n2_α
# IR_UNOP
 xchain00008_n58_α:
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 call rt_size_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00008_n59_α
 xchain00008_n58_β:
 jmp xchain00008_n2_α
# IR_VAR
 xchain00008_n59_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00008_n60_α
 xchain00008_n59_β:
 jmp xchain00008_n2_α
# IR_UNOP
 xchain00008_n60_α:
 mov eax, dword ptr [r12 + 640]
 cmp eax, 99
 je xchain00008_n2_α
 cmp eax, 0
 je xchain00008_n2_α
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
 jmp xchain00008_n61_α
 xchain00008_n60_β:
 jmp xchain00008_n2_α
 xchain00008_n61_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 100
 je .Lx00021_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00021_2
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx00021_2
.Lx00021_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 616]
 cmp rax, rcx
 jle xchain00008_n2_α
 mov rcx, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rcx
 mov rcx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rcx
 jmp xchain00008_n62_α
.Lx00021_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 7
 lea r9, [r12 + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00021_1
 cmp eax, 1
 je xchain00008_n2_α
 jmp xchain00008_n62_α
.Lx00021_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00008_n2_α
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 520], rax
 jmp xchain00008_n62_α
 xchain00008_n61_β:
 jmp xchain00008_n2_α
# KEYWORD_read
 xchain00008_n62_α:
 mov rdi, qword ptr [rip + .Lx00022_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00008_n63_α
 xchain00008_n62_β:
 jmp xchain00008_n5_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00008_n63_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 488], rax
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
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn223: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00008_n5_α
 jmp xchain00008_n5_α
 xchain00008_n64_β:
 jmp xchain00008_n5_α
 xchain00008_n65_α:
 jmp xchain00008_n5_α
xchain00008_n65_β:
 jmp xchain00008_n5_α
proc_gener_β:
jmp proc_gener_ω
proc_gener_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 2296]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 2288]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_gener_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 2296]
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
  mov qword ptr [r12 + 1000], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 992], rax
 pop rsi
proc_generate_α_body:
 mov qword ptr [r12 + 720], 0
# IR_VAR
 xchain00024_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 968], rax
 jmp xchain00024_n1_α
 xchain00024_n0_β:
 jmp proc_generate_ω
# IR_GEN_SCAN
 xchain00024_n1_α:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
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
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00024_n3_α
 xchain00024_n2_β:
 jmp xchain00024_n5_α
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain00024_n3_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00024_n5_α
 mov rdi, qword ptr [rip + .Lx00026_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00024_n5_α
 mov qword ptr [r12 + 896], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 904], rax
 jmp xchain00024_n4_α
 xchain00024_n3_β:
 jmp xchain00024_n5_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain00024_n4_α:
 mov rax, qword ptr [r12 + 904]
 cmp rax, 1
 jge .Lx00027_0
 add rax, r15
 add rax, 1
.Lx00027_0:
 cmp rax, 1
 jl xchain00024_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00024_n5_α
 mov qword ptr [r12 + 880], r14
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
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00024_n6_α
 xchain00024_n4_β:
 mov r14, qword ptr [r12 + 880]
 jmp xchain00024_n5_α
# IR_GEN_SCAN
 xchain00024_n5_α:
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp proc_generate_ω
 xchain00024_n5_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00024_n6_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00024_n7_α
 xchain00024_n6_β:
 jmp xchain00024_n5_α
.Lx00028_0:
 .quad 1
# IR_LIT_CHARSET
 xchain00024_n7_α:
 mov qword ptr [r12 + 832], 1
 mov dword ptr [r12 + 836], -1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00024_n8_α
 xchain00024_n7_β:
 jmp xchain00024_n5_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00024_n8_α:
 mov qword ptr [r12 + 816], r14
.Lx00030_0:
 mov rax, qword ptr [r12 + 816]
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
 mov qword ptr [r12 + 800], 6
 add rax, 1
 mov qword ptr [r12 + 808], rax
 jmp xchain00024_n9_α
.Lx00030_1:
 inc qword ptr [r12 + 816]
 jmp .Lx00030_0
 xchain00024_n8_β:
 inc qword ptr [r12 + 816]
 jmp .Lx00030_0
.Lx00030_2:
 .quad .Lx00030_2_s
.Lx00030_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00024_n9_α:
 mov rax, qword ptr [r12 + 808]
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jl xchain00024_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00024_n5_α
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
 jmp xchain00024_n10_α
 xchain00024_n9_β:
 mov r14, qword ptr [r12 + 784]
 jmp xchain00024_n5_α
# IR_LIMIT
 xchain00024_n10_α:
 mov rax, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 744]
 cmp rax, rcx
 jge xchain00024_n5_α
 inc qword ptr [r12 + 720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 712], rax
 jmp xchain00024_n11_α
 xchain00024_n10_β:
 jmp xchain00024_n9_β
 xchain00024_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00024_n12_α
 xchain00024_n11_β:
 jmp xchain00024_n5_α
# IR_LIT_INTEGER
 xchain00024_n12_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00024_n13_α
 xchain00024_n12_β:
 jmp xchain00024_n5_α
.Lx00032_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00024_n13_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00024_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00024_n5_α
 mov qword ptr [r12 + 640], r14
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
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00024_n14_α
 xchain00024_n13_β:
 mov r14, qword ptr [r12 + 640]
 jmp xchain00024_n5_α
# IR_LIT_INTEGER
 xchain00024_n14_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00024_n15_α
 xchain00024_n14_β:
 jmp xchain00024_n17_α
.Lx00033_0:
 .quad 0
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00024_n15_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00034_0
 add rax, r15
 add rax, 1
.Lx00034_0:
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
 mov qword ptr [r12 + 560], 6
 mov qword ptr [r12 + 568], rax
 jmp xchain00024_n16_α
 xchain00024_n15_β:
 jmp xchain00024_n17_α
# IR_LIT_INTEGER
 xchain00024_n16_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00024_n18_α
 xchain00024_n16_β:
 jmp xchain00024_n17_α
.Lx00035_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00024_n17_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00024_n19_α
 xchain00024_n17_β:
 jmp xchain00024_n5_α
.Lx00036_0:
 .quad 0
 xchain00024_n18_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 520], rax
 jmp xchain00024_n20_α
xchain00024_n18_β:
 jmp xchain00024_n17_α
# IR_SCAN_TAB
 xchain00024_n19_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00037_0
 add rax, r15
 add rax, 1
.Lx00037_0:
 cmp rax, 1
 jl xchain00024_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00024_n5_α
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
 jmp xchain00024_n21_α
 xchain00024_n19_β:
 mov r14, qword ptr [r12 + 464]
 jmp xchain00024_n5_α
# IR_MOVE_LABEL
 xchain00024_n20_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 376], rax
 lea rax, [rip + xchain00024_n24_α]
 mov qword ptr [r12 + 384], rax
 jmp xchain00024_n23_α
 xchain00024_n20_β:
 jmp xchain00024_n5_α
 xchain00024_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn261: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn261]
 lea rsi, [r12 + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
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
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00024_n27_α
 xchain00024_n23_β:
 jmp xchain00024_n5_α
 xchain00024_n24_α:
 jmp xchain00024_n17_α
xchain00024_n24_β:
 jmp xchain00024_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00024_n25_α:
 jmp qword ptr [r12 + 384]
 xchain00024_n25_β:
 jmp xchain00024_n5_α
# IR_MOVE_LABEL
 xchain00024_n26_α:
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
 lea rax, [rip + xchain00024_n22_α]
 mov qword ptr [r12 + 384], rax
 jmp xchain00024_n23_α
 xchain00024_n26_β:
 jmp xchain00024_n5_α
 xchain00024_n27_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
 jmp xchain00024_n28_α
xchain00024_n27_β:
 jmp xchain00024_n5_α
# IR_GEN_SCAN
 xchain00024_n28_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
 lea rdi, [r12 + 272]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 272]
 mov r14, qword ptr [r12 + 280]
 mov r15, qword ptr [r12 + 288]
 jmp xchain00024_n29_α
 xchain00024_n28_β:
 jmp proc_generate_ω
# IR_LIT_INTEGER
 xchain00024_n29_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00024_n30_α
 xchain00024_n29_β:
 jmp xchain00024_n32_α
.Lx00038_0:
 .quad 1
# IR_VAR
 xchain00024_n30_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 152], rax
 jmp xchain00024_n31_α
 xchain00024_n30_β:
 jmp xchain00024_n32_α
# IR_TO
 xchain00024_n31_α:
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 96], rax
.Lx00039_0:
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00024_n32_α
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00024_n33_α
 xchain00024_n31_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00039_0
# IR_RETURN
 xchain00024_n32_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_generate_γ
# IR_VAR
 xchain00024_n33_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 232], rax
 jmp xchain00024_n34_α
 xchain00024_n33_β:
 jmp xchain00024_n31_β
 xchain00024_n34_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00040_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00040_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00040_2
.Lx00040_1:
 call rt_faildescr@PLT
.Lx00040_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00024_n31_β
 jmp xchain00024_n31_β
 xchain00024_n34_β:
 jmp xchain00024_n31_β
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "gener"
proc_generate_β:
jmp proc_generate_ω
proc_generate_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1000]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 992]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_generate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1000]
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
  mov qword ptr [r12 + 472], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_getrhs_α_body:
# IR_LIT_STRING
 xchain00041_n0_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00041_n1_α
 xchain00041_n0_β:
 jmp xchain00041_n2_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string ""
 xchain00041_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00041_n2_α
 xchain00041_n1_β:
 jmp xchain00041_n2_α
# IR_VAR
 xchain00041_n2_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 216], rax
 jmp xchain00041_n3_α
 xchain00041_n2_β:
 jmp xchain00041_n4_α
# IR_VAR
 xchain00041_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00041_n5_α
 xchain00041_n3_β:
 jmp xchain00041_n4_α
# IR_VAR
 xchain00041_n4_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 72], rax
 jmp xchain00041_n6_α
 xchain00041_n4_β:
 jmp proc_getrhs_ω
# IR_LIST_BANG
 xchain00041_n5_α:
 mov qword ptr [r12 + 336], 0
.Lx00043_0:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 336]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp rax, 99
 je xchain00041_n4_α
 jmp xchain00041_n7_α
 xchain00041_n5_β:
 inc qword ptr [r12 + 336]
 jmp .Lx00043_0
# IR_LIT_INTEGER
 xchain00041_n6_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00041_n8_α
 xchain00041_n6_β:
 jmp proc_getrhs_ω
.Lx00044_0:
 .quad 1
 xchain00041_n7_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00045_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00045_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00045_2
.Lx00045_1:
 call rt_faildescr@PLT
.Lx00045_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00041_n4_α
 jmp xchain00041_n9_α
 xchain00041_n7_β:
 jmp xchain00041_n4_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "listimage"
# IR_LIT_INTEGER
 xchain00041_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00041_n10_α
 xchain00041_n8_β:
 jmp proc_getrhs_ω
.Lx00046_0:
 .quad 18446744073709551615
# IR_LIT_STRING
 xchain00041_n9_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00041_n11_α
 xchain00041_n9_β:
 jmp xchain00041_n5_β
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "|"
# IR_SUBSCRIPT section
 xchain00041_n10_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 128]
 mov r9, qword ptr [r12 + 136]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_getrhs_ω
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00041_n12_α
 xchain00041_n10_β:
 jmp proc_getrhs_ω
 xchain00041_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00041_n13_α
 xchain00041_n11_β:
 jmp xchain00041_n4_α
# IR_RETURN
 xchain00041_n12_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getrhs_γ
 xchain00041_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00041_n14_α
 xchain00041_n13_β:
 jmp xchain00041_n4_α
 xchain00041_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00041_n5_β
 xchain00041_n14_β:
 jmp xchain00041_n4_α
proc_getrhs_β:
jmp proc_getrhs_ω
proc_getrhs_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 472]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 464]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_getrhs_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 472]
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
  mov qword ptr [r12 + 1928], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1920], rax
 pop rsi
proc_grammar_α_body:
# IR_VAR
 xchain00048_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00048_n1_α
 xchain00048_n0_β:
 jmp proc_grammar_ω
# IR_GEN_SCAN
 xchain00048_n1_α:
 mov rdi, qword ptr [r12 + 1888]
 mov rsi, qword ptr [r12 + 1896]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00048_n2_α
 xchain00048_n1_β:
 jmp proc_grammar_ω
# IR_LIT_STRING
 xchain00048_n2_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain00048_n3_α
 xchain00048_n2_β:
 jmp xchain00048_n6_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "->"
# IR_SCAN_FIND
 xchain00048_n3_α:
 mov qword ptr [r12 + 1840], r14
.Lx00050_0:
 mov rax, qword ptr [r12 + 1840]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00048_n6_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 45
 jne .Lx00050_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx00050_1
 mov qword ptr [r12 + 1824], 6
 add rax, 1
 mov qword ptr [r12 + 1832], rax
 jmp xchain00048_n4_α
.Lx00050_1:
 inc qword ptr [r12 + 1840]
 jmp .Lx00050_0
 xchain00048_n3_β:
 inc qword ptr [r12 + 1840]
 jmp .Lx00050_0
# IR_SCAN_TAB
 xchain00048_n4_α:
 mov rax, qword ptr [r12 + 1832]
 cmp rax, 1
 jge .Lx00051_0
 add rax, r15
 add rax, 1
.Lx00051_0:
 cmp rax, 1
 jl xchain00048_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00048_n6_α
 mov qword ptr [r12 + 1808], r14
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
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00048_n5_α
 xchain00048_n4_β:
 mov r14, qword ptr [r12 + 1808]
 jmp xchain00048_n6_α
 xchain00048_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1792]
 mov rdx, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00048_n7_α
 xchain00048_n5_β:
 jmp xchain00048_n6_α
# IR_GEN_SCAN
 xchain00048_n6_α:
 lea rdi, [r12 + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 992]
 mov r14, qword ptr [r12 + 1000]
 mov r15, qword ptr [r12 + 1008]
 jmp proc_grammar_ω
 xchain00048_n6_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00048_n7_α:
 mov qword ptr [r12 + 1744], 6
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain00048_n8_α
 xchain00048_n7_β:
 jmp xchain00048_n6_α
.Lx00052_0:
 .quad 2
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00048_n8_α:
 mov rax, 2
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00048_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00048_n6_α
 mov qword ptr [r12 + 1728], r14
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
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00048_n9_α
 xchain00048_n8_β:
 mov r14, qword ptr [r12 + 1728]
 jmp xchain00048_n6_α
# IR_LIT_INTEGER
 xchain00048_n9_α:
 mov qword ptr [r12 + 1680], 6
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00048_n10_α
 xchain00048_n9_β:
 jmp xchain00048_n6_α
.Lx00053_0:
 .quad 0
# IR_SCAN_TAB
 xchain00048_n10_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00054_0
 add rax, r15
 add rax, 1
.Lx00054_0:
 cmp rax, 1
 jl xchain00048_n6_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00048_n6_α
 mov qword ptr [r12 + 1664], r14
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
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00048_n11_α
 xchain00048_n10_β:
 mov r14, qword ptr [r12 + 1664]
 jmp xchain00048_n6_α
 xchain00048_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00048_n12_α
 xchain00048_n11_β:
 jmp xchain00048_n6_α
# IR_VAR
 xchain00048_n12_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00048_n13_α
 xchain00048_n12_β:
 jmp xchain00048_n14_α
# IR_UNOP
 xchain00048_n13_α:
 mov rdi, qword ptr [r12 + 1952]
 mov rsi, qword ptr [r12 + 1960]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00048_n15_α
 xchain00048_n13_β:
 jmp xchain00048_n14_α
# IR_VAR
 xchain00048_n14_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00048_n16_α
 xchain00048_n14_β:
 jmp xchain00048_n17_α
# IR_LIT_INTEGER
 xchain00048_n15_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00048_n18_α
 xchain00048_n15_β:
 jmp xchain00048_n14_α
.Lx00055_0:
 .quad 0
# IR_LIT_STRING
 xchain00048_n16_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00048_n19_α
 xchain00048_n16_β:
 jmp xchain00048_n17_α
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "w"
# KEYWORD_read
 xchain00048_n17_α:
 mov rdi, qword ptr [rip + .Lx00057_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00048_n20_α
 xchain00048_n17_β:
 jmp proc_grammar_ω
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "&errout"
 xchain00048_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 100
 je .Lx00058_0
 mov eax, dword ptr [r12 + 1536]
 cmp eax, 6
 jne .Lx00058_2
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 6
 jne .Lx00058_2
.Lx00058_1:
 mov rax, qword ptr [r12 + 1544]
 mov rcx, qword ptr [r12 + 1608]
 cmp rax, rcx
 jne xchain00048_n14_α
 mov rcx, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1504], rcx
 mov rcx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1512], rcx
 jmp xchain00048_n21_α
.Lx00058_0:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 lea r9, [r12 + 1504]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00058_1
 cmp eax, 1
 je xchain00048_n14_α
 jmp xchain00048_n21_α
.Lx00058_2:
 mov rdi, qword ptr [r12 + 1536]
 mov rsi, qword ptr [r12 + 1544]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00048_n14_α
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00048_n21_α
 xchain00048_n18_β:
 jmp xchain00048_n14_α
 xchain00048_n19_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn333: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain00048_n17_α
 jmp xchain00048_n22_α
 xchain00048_n19_β:
 jmp xchain00048_n17_α
# IR_LIT_STRING
 xchain00048_n20_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00048_n23_α
 xchain00048_n20_β:
 jmp proc_grammar_ω
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "*** cannot open "
# KEYWORD_read
 xchain00048_n21_α:
 mov rdi, qword ptr [rip + .Lx00060_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain00048_n24_α
 xchain00048_n21_β:
 jmp xchain00048_n6_α
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "&output"
# IR_MOVE_LABEL
 xchain00048_n22_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1160], rax
 lea rax, [rip + xchain00048_n17_α]
 mov qword ptr [r12 + 1168], rax
 jmp xchain00048_n25_α
 xchain00048_n22_β:
 jmp xchain00048_n6_α
# IR_VAR
 xchain00048_n23_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1352], rax
 jmp xchain00048_n27_α
 xchain00048_n23_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00048_n24_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00048_n29_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00048_n28_α
 xchain00048_n24_β:
 jmp xchain00048_n6_α
# IR_MOVE_LABEL
 xchain00048_n25_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1096], rax
 lea rax, [rip + xchain00048_n26_α]
 mov qword ptr [r12 + 1104], rax
 jmp xchain00048_n28_α
 xchain00048_n25_β:
 jmp xchain00048_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00048_n26_α:
 jmp qword ptr [r12 + 1168]
 xchain00048_n26_β:
 jmp xchain00048_n6_α
 xchain00048_n27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1232]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1240], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1248]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn347: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_grammar_ω
 jmp proc_grammar_ω
 xchain00048_n27_β:
 jmp proc_grammar_ω
 xchain00048_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00048_n31_α
 xchain00048_n28_β:
 jmp xchain00048_n6_α
 xchain00048_n29_α:
 jmp xchain00048_n6_α
xchain00048_n29_β:
 jmp xchain00048_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00048_n30_α:
 jmp qword ptr [r12 + 1104]
 xchain00048_n30_β:
 jmp xchain00048_n6_α
 xchain00048_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1064], rax
 jmp xchain00048_n32_α
xchain00048_n31_β:
 jmp xchain00048_n6_α
# IR_GEN_SCAN
 xchain00048_n32_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
 lea rdi, [r12 + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 992]
 mov r14, qword ptr [r12 + 1000]
 mov r15, qword ptr [r12 + 1008]
 jmp xchain00048_n33_α
 xchain00048_n32_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00048_n33_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 920], rax
 jmp xchain00048_n34_α
 xchain00048_n33_β:
 jmp xchain00048_n35_α
# IR_UNOP
 xchain00048_n34_α:
 mov rdi, qword ptr [r12 + 1968]
 mov rsi, qword ptr [r12 + 1976]
 call rt_size_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00048_n36_α
 xchain00048_n34_β:
 jmp xchain00048_n35_α
# IR_VAR_REF
 xchain00048_n35_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00048_n37_α
 xchain00048_n35_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00048_n36_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00048_n38_α
 xchain00048_n36_β:
 jmp xchain00048_n35_α
.Lx00061_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00048_n37_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00048_n39_α
 xchain00048_n37_β:
 jmp proc_grammar_ω
.Lx00062_0:
 .quad 1
 xchain00048_n38_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx00063_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx00063_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx00063_2
.Lx00063_1:
 mov rax, qword ptr [r12 + 888]
 mov rcx, qword ptr [r12 + 952]
 cmp rax, rcx
 jne xchain00048_n35_α
 mov rcx, qword ptr [r12 + 944]
 mov qword ptr [r12 + 848], rcx
 mov rcx, qword ptr [r12 + 952]
 mov qword ptr [r12 + 856], rcx
 jmp xchain00048_n40_α
.Lx00063_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 9
 lea r9, [r12 + 848]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00063_1
 cmp eax, 1
 je xchain00048_n35_α
 jmp xchain00048_n40_α
.Lx00063_2:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00048_n35_α
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 856], rax
 jmp xchain00048_n40_α
 xchain00048_n38_β:
 jmp xchain00048_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain00048_n39_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00048_n41_α
 xchain00048_n39_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00048_n40_α:
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain00048_n35_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain00048_n42_α
 xchain00048_n40_β:
 jmp xchain00048_n42_α
# IR_DEREF variable -> value
 xchain00048_n41_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00048_n44_α
 xchain00048_n41_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00048_n42_α:
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 392], rax
 jmp xchain00048_n45_α
 xchain00048_n42_β:
 jmp xchain00048_n46_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00048_n43_α:
 jmp qword ptr [r12 + 464]
 xchain00048_n43_β:
 jmp xchain00048_n42_α
# IR_LIT_STRING
 xchain00048_n44_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00048_n47_α
 xchain00048_n44_β:
 jmp proc_grammar_ω
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "<"
# IR_VAR
 xchain00048_n45_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 424], rax
 jmp xchain00048_n48_α
 xchain00048_n45_β:
 jmp xchain00048_n46_α
# IR_VAR
 xchain00048_n46_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 264], rax
 jmp xchain00048_n49_α
 xchain00048_n46_β:
 jmp xchain00048_n50_α
 xchain00048_n47_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00048_n51_α
 xchain00048_n47_β:
 jmp proc_grammar_ω
 xchain00048_n48_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00065_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00065_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00065_2
.Lx00065_1:
 call rt_faildescr@PLT
.Lx00065_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00048_n46_α
 jmp xchain00048_n46_α
 xchain00048_n48_β:
 jmp xchain00048_n46_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "pwrite"
# IR_UNOP
 xchain00048_n49_α:
 mov rdi, qword ptr [r12 + 1952]
 mov rsi, qword ptr [r12 + 1960]
 call rt_size_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00048_n52_α
 xchain00048_n49_β:
 jmp xchain00048_n50_α
# IR_RETURN
 xchain00048_n50_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_grammar_γ
# IR_VAR_REF
 xchain00048_n51_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00048_n53_α
 xchain00048_n51_β:
 jmp proc_grammar_ω
# IR_LIT_INTEGER
 xchain00048_n52_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00048_n54_α
 xchain00048_n52_β:
 jmp xchain00048_n50_α
.Lx00066_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00048_n53_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00048_n55_α
 xchain00048_n53_β:
 jmp proc_grammar_ω
.Lx00067_0:
 .quad 18446744073709551615
 xchain00048_n54_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00068_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00068_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00068_2
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00068_2
.Lx00068_1:
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 je xchain00048_n50_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 200], rcx
 jmp xchain00048_n56_α
.Lx00068_0:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 10
 lea r9, [r12 + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00068_1
 cmp eax, 1
 je xchain00048_n50_α
 jmp xchain00048_n56_α
.Lx00068_2:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00048_n50_α
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 200], rax
 jmp xchain00048_n56_α
 xchain00048_n54_β:
 jmp xchain00048_n50_α
# IR_SUBSCRIPT x[i] variable
 xchain00048_n55_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00048_n57_α
 xchain00048_n55_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00048_n56_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 168], rax
 jmp xchain00048_n59_α
 xchain00048_n56_β:
 jmp xchain00048_n50_α
# IR_DEREF variable -> value
 xchain00048_n57_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00048_n60_α
 xchain00048_n57_β:
 jmp proc_grammar_ω
 xchain00048_n58_α:
 jmp proc_grammar_ω
xchain00048_n58_β:
 jmp proc_grammar_ω
 xchain00048_n59_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn392: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00048_n50_α
 jmp xchain00048_n61_α
 xchain00048_n59_β:
 jmp xchain00048_n50_α
# IR_LIT_STRING
 xchain00048_n60_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00048_n62_α
 xchain00048_n60_β:
 jmp proc_grammar_ω
.Lx00069_0:
 .quad .Lx00069_0_s
.Lx00069_0_s:
 .string ">"
# IR_MOVE_LABEL
 xchain00048_n61_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00048_n50_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00048_n50_α
 xchain00048_n61_β:
 jmp xchain00048_n50_α
 xchain00048_n62_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_grammar_ω
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00048_n64_α
 xchain00048_n62_β:
 jmp proc_grammar_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00048_n63_α:
 jmp qword ptr [r12 + 96]
 xchain00048_n63_β:
 jmp xchain00048_n50_α
 xchain00048_n64_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 488], rax
 jmp xchain00048_n65_α
xchain00048_n64_β:
 jmp proc_grammar_ω
# IR_MOVE_LABEL
 xchain00048_n65_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 456], rax
 lea rax, [rip + xchain00048_n58_α]
 mov qword ptr [r12 + 464], rax
 jmp xchain00048_n42_α
 xchain00048_n65_β:
 jmp xchain00048_n42_α
proc_grammar_β:
jmp proc_grammar_ω
proc_grammar_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1928]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1920]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_grammar_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1928]
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
  mov qword ptr [r12 + 360], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_listimage_α_body:
# IR_LIT_STRING
 xchain00070_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 jmp xchain00070_n2_α
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string ""
 xchain00070_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00070_n2_α
 xchain00070_n1_β:
 jmp xchain00070_n2_α
# IR_VAR
 xchain00070_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00070_n3_α
 xchain00070_n2_β:
 jmp xchain00070_n4_α
# IR_LIST_BANG
 xchain00070_n3_α:
 mov qword ptr [r12 + 96], 0
.Lx00072_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp rax, 99
 je xchain00070_n4_α
 jmp xchain00070_n5_α
 xchain00070_n3_β:
 inc qword ptr [r12 + 96]
 jmp .Lx00072_0
# IR_VAR
 xchain00070_n4_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 40], rax
 jmp xchain00070_n6_α
 xchain00070_n4_β:
 jmp proc_listimage_ω
 xchain00070_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00070_n7_α
 xchain00070_n5_β:
 jmp xchain00070_n4_α
# IR_RETURN
 xchain00070_n6_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listimage_γ
# IR_VAR
 xchain00070_n7_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 200], rax
 jmp xchain00070_n8_α
 xchain00070_n7_β:
 jmp xchain00070_n3_β
# IR_VAR
 xchain00070_n8_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 280], rax
 jmp xchain00070_n9_α
 xchain00070_n8_β:
 jmp xchain00070_n3_β
 xchain00070_n9_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00073_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00073_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00073_2
.Lx00073_1:
 call rt_faildescr@PLT
.Lx00073_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00070_n3_β
 jmp xchain00070_n10_α
 xchain00070_n9_β:
 jmp xchain00070_n3_β
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "symimage"
 xchain00070_n10_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 call str_concat_d@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00070_n11_α
 xchain00070_n10_β:
 jmp xchain00070_n3_β
 xchain00070_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00070_n3_β
 xchain00070_n11_β:
 jmp xchain00070_n3_β
proc_listimage_β:
jmp proc_listimage_ω
proc_listimage_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 360]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_listimage_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 360]
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
  mov qword ptr [r12 + 408], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_prompter_α_body:
# IR_VAR_REF
 xchain00074_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 jmp proc_prompter_ω
# IR_LIT_INTEGER
 xchain00074_n1_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00074_n2_α
 xchain00074_n1_β:
 jmp proc_prompter_ω
.Lx00075_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00074_n2_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00074_n3_α
 xchain00074_n2_β:
 jmp proc_prompter_ω
# IR_DEREF variable -> value
 xchain00074_n3_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je proc_prompter_ω
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00074_n4_α
 xchain00074_n3_β:
 jmp proc_prompter_ω
# IR_LIT_STRING
 xchain00074_n4_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00074_n5_α
 xchain00074_n4_β:
 jmp proc_prompter_ω
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string "="
 xchain00074_n5_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_prompter_ω
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00074_n6_α
 xchain00074_n5_β:
 jmp proc_prompter_ω
# IR_VAR
 xchain00074_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00074_n7_α
 xchain00074_n6_β:
 jmp xchain00074_n8_α
# IR_LIT_INTEGER
 xchain00074_n7_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00074_n9_α
 xchain00074_n7_β:
 jmp xchain00074_n8_α
.Lx00077_0:
 .quad 2
# IR_RETURN
 xchain00074_n8_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_prompter_γ
# IR_LIT_INTEGER
 xchain00074_n9_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00074_n10_α
 xchain00074_n9_β:
 jmp xchain00074_n8_α
.Lx00078_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00074_n10_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [r12 + 192]
 mov r9, qword ptr [r12 + 200]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00074_n8_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00074_n11_α
 xchain00074_n10_β:
 jmp xchain00074_n8_α
# IR_ASSIGN gva
 xchain00074_n11_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00074_n8_α
 xchain00074_n11_β:
 jmp xchain00074_n8_α
proc_prompter_β:
jmp proc_prompter_ω
proc_prompter_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 408]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 400]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_prompter_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 408]
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
  mov qword ptr [r12 + 2312], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 2304], rax
 pop rsi
proc_pwrite_α_body:
# IR_VAR_REF
 xchain00079_n0_α:
 lea rdi, [rbx + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00079_n1_α
 xchain00079_n0_β:
 jmp xchain00079_n3_α
# IR_NULLTEST_VAR
 xchain00079_n1_α:
 mov eax, dword ptr [r12 + 2192]
 cmp eax, 99
 je xchain00079_n3_α
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00079_n3_α
 cmp eax, 0
 jne xchain00079_n3_α
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2232], rax
 jmp xchain00079_n2_α
 xchain00079_n1_β:
 jmp xchain00079_n3_α
# IR_LIT_INTEGER
 xchain00079_n2_α:
 mov qword ptr [r12 + 2272], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain00079_n4_α
 xchain00079_n2_β:
 jmp xchain00079_n3_α
.Lx00080_0:
 .quad 1
# IR_VAR
 xchain00079_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00079_n5_α
 xchain00079_n3_β:
 jmp xchain00079_n6_α
# IR_ASSIGN_VAR
 xchain00079_n4_α:
 mov rdi, qword ptr [r12 + 2224]
 mov rsi, qword ptr [r12 + 2232]
 mov rdx, qword ptr [r12 + 2272]
 mov rcx, qword ptr [r12 + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00079_n3_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00079_n7_α
 xchain00079_n4_β:
 jmp xchain00079_n3_α
# IR_UNOP
 xchain00079_n5_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain00079_n8_α
 xchain00079_n5_β:
 jmp xchain00079_n6_α
# IR_VAR
 xchain00079_n6_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1240], rax
 jmp xchain00079_n9_α
 xchain00079_n6_β:
 jmp xchain00079_n10_α
# IR_LIT_STRING
 xchain00079_n7_α:
 mov qword ptr [r12 + 1936], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain00079_n11_α
 xchain00079_n7_β:
 jmp xchain00079_n3_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "lb"
# IR_LIT_INTEGER
 xchain00079_n8_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain00079_n12_α
 xchain00079_n8_β:
 jmp xchain00079_n6_α
.Lx00082_0:
 .quad 0
# IR_VAR
 xchain00079_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1272], rax
 jmp xchain00079_n13_α
 xchain00079_n9_β:
 jmp xchain00079_n10_α
# IR_LIT_STRING
 xchain00079_n10_α:
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00079_n14_α
 xchain00079_n10_β:
 jmp proc_pwrite_ω
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "*** undefined nonterminal:  "
# IR_LIT_STRING
 xchain00079_n11_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00079_n15_α
 xchain00079_n11_β:
 jmp xchain00079_n3_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "rb"
 xchain00079_n12_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx00085_2
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx00085_2
.Lx00085_1:
 mov rax, qword ptr [r12 + 1656]
 mov rcx, qword ptr [r12 + 1720]
 cmp rax, rcx
 jne xchain00079_n6_α
 mov rcx, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1616], rcx
 mov rcx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1624], rcx
 jmp xchain00079_n16_α
.Lx00085_0:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 9
 lea r9, [r12 + 1616]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00085_1
 cmp eax, 1
 je xchain00079_n6_α
 jmp xchain00079_n16_α
.Lx00085_2:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1712]
 mov rcx, qword ptr [r12 + 1720]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00079_n6_α
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00079_n16_α
 xchain00079_n12_β:
 jmp xchain00079_n6_α
# IR_LIT_STRING
 xchain00079_n13_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00079_n17_α
 xchain00079_n13_β:
 jmp xchain00079_n10_α
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "::="
# IR_VAR
 xchain00079_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00079_n18_α
 xchain00079_n14_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00079_n15_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain00079_n19_α
 xchain00079_n15_β:
 jmp xchain00079_n3_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "vb"
# IR_VAR
 xchain00079_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00079_n20_α
 xchain00079_n16_β:
 jmp xchain00079_n21_α
# IR_VAR_REF
 xchain00079_n17_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00079_n22_α
 xchain00079_n17_β:
 jmp xchain00079_n10_α
 xchain00079_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn462: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn462]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00079_n23_α
 xchain00079_n18_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00079_n19_α:
 mov qword ptr [r12 + 2032], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00079_n24_α
 xchain00079_n19_β:
 jmp xchain00079_n3_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "nl"
# IR_LIT_INTEGER
 xchain00079_n20_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00079_n25_α
 xchain00079_n20_β:
 jmp xchain00079_n21_α
.Lx00089_0:
 .quad 3
# IR_VAR
 xchain00079_n21_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 168], rax
 jmp xchain00079_n26_α
 xchain00079_n21_β:
 jmp xchain00079_n34_α
# IR_VAR
 xchain00079_n22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1480], rax
 jmp xchain00079_n28_α
 xchain00079_n22_β:
 jmp xchain00079_n10_α
# IR_MOVE_LABEL
 xchain00079_n23_α:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
 lea rax, [rip + proc_pwrite_ω]
 mov qword ptr [r12 + 992], rax
 jmp xchain00079_n29_α
 xchain00079_n23_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00079_n24_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00079_n31_α
 xchain00079_n24_β:
 jmp xchain00079_n3_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string ""
 xchain00079_n25_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn473: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn473]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain00079_n21_α
 jmp xchain00079_n32_α
 xchain00079_n25_β:
 jmp xchain00079_n21_α
 xchain00079_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn475: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn475]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00079_n34_α
 jmp xchain00079_n33_α
 xchain00079_n26_β:
 jmp xchain00079_n34_α
 xchain00079_n27_α:
 jmp xchain00079_n34_α
xchain00079_n27_β:
 jmp xchain00079_n34_α
# IR_LIT_INTEGER
 xchain00079_n28_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00079_n35_α
 xchain00079_n28_β:
 jmp xchain00079_n10_α
.Lx00091_0:
 .quad 2
# IR_MOVE_LABEL
 xchain00079_n29_α:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00079_n30_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_ω
 xchain00079_n29_β:
 jmp proc_pwrite_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00079_n30_α:
 jmp qword ptr [r12 + 992]
 xchain00079_n30_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00079_n31_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00079_n37_α
 xchain00079_n31_β:
 jmp xchain00079_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "&lcase"
 xchain00079_n32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00079_n21_α
 xchain00079_n32_β:
 jmp xchain00079_n21_α
 xchain00079_n33_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00079_n38_α
 xchain00079_n33_β:
 jmp xchain00079_n34_α
 xchain00079_n34_α:
 jmp xchain00079_n39_α
xchain00079_n34_β:
 jmp proc_pwrite_ω
# IR_LIT_INTEGER
 xchain00079_n35_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00079_n40_α
 xchain00079_n35_β:
 jmp xchain00079_n10_α
.Lx00093_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00079_n36_α:
 jmp qword ptr [r12 + 64]
 xchain00079_n36_β:
 jmp proc_pwrite_ω
# IR_LIT_STRING
 xchain00079_n37_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain00079_n41_α
 xchain00079_n37_β:
 jmp xchain00079_n3_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "&ucase"
# IR_VAR
 xchain00079_n38_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 744], rax
 jmp xchain00079_n42_α
 xchain00079_n38_β:
 jmp xchain00079_n43_α
# IR_MOVE_LABEL
 xchain00079_n39_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 lea rax, [rip + xchain00079_n21_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_pwrite_ω
 xchain00079_n39_β:
 jmp proc_pwrite_ω
# IR_SUBSCRIPT section
 xchain00079_n40_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 mov r8, qword ptr [r12 + 1536]
 mov r9, qword ptr [r12 + 1544]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00079_n10_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain00079_n44_α
 xchain00079_n40_β:
 jmp xchain00079_n10_α
# IR_LIT_STRING
 xchain00079_n41_α:
 mov qword ptr [r12 + 2160], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain00079_n45_α
 xchain00079_n41_β:
 jmp xchain00079_n3_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "&digit"
# IR_VAR
 xchain00079_n42_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00079_n46_α
 xchain00079_n42_β:
 jmp xchain00079_n43_α
# IR_VAR
 xchain00079_n43_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 328], rax
 jmp xchain00079_n47_α
 xchain00079_n43_β:
 jmp xchain00079_n21_α
# IR_SUBSCRIPT x[i] variable
 xchain00079_n44_α:
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00079_n10_α
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00079_n48_α
 xchain00079_n44_β:
 jmp xchain00079_n10_α
# IR_MAKE_LIST
 xchain00079_n45_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1816], rax
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1832], rax
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1848], rax
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1864], rax
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1880], rax
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 1896], rax
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 1912], rax
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 1928], rax
 lea rdi, [r12 + 1808]
 mov esi, 8
 call rt_make_list@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00079_n49_α
 xchain00079_n45_β:
 jmp xchain00079_n3_α
# IR_LIST_BANG
 xchain00079_n46_α:
 mov qword ptr [r12 + 784], 0
.Lx00096_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 784]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp rax, 99
 je xchain00079_n43_α
 jmp xchain00079_n50_α
 xchain00079_n46_β:
 inc qword ptr [r12 + 784]
 jmp .Lx00096_0
# IR_LIT_STRING
 xchain00079_n47_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00079_n51_α
 xchain00079_n47_β:
 jmp xchain00079_n21_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "<"
# IR_DEREF variable -> value
 xchain00079_n48_α:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00079_n10_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00079_n52_α
 xchain00079_n48_β:
 jmp xchain00079_n10_α
# IR_ASSIGN gva
 xchain00079_n49_α:
 mov rax, qword ptr [r12 + 1792]
 mov rdx, qword ptr [r12 + 1800]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain00079_n53_α
 xchain00079_n49_β:
 jmp xchain00079_n3_α
 xchain00079_n50_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2320]
 mov rsi, qword ptr [r12 + 2328]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00079_n46_β
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00079_n54_α
 xchain00079_n50_β:
 jmp xchain00079_n46_β
# IR_VAR
 xchain00079_n51_α:
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 392], rax
 jmp xchain00079_n55_α
 xchain00079_n51_β:
 jmp xchain00079_n21_α
# IR_UNOP
 xchain00079_n52_α:
 mov eax, dword ptr [r12 + 1600]
 cmp eax, 99
 je xchain00079_n10_α
 cmp eax, 0
 je xchain00079_n10_α
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00079_n56_α
 xchain00079_n52_β:
 jmp xchain00079_n10_α
# IR_MOVE_LABEL
 xchain00079_n53_α:
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1752], rax
 lea rax, [rip + xchain00079_n3_α]
 mov qword ptr [r12 + 1760], rax
 jmp xchain00079_n3_α
 xchain00079_n53_β:
 jmp xchain00079_n3_α
# IR_VAR
 xchain00079_n54_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 680], rax
 jmp xchain00079_n58_α
 xchain00079_n54_β:
 jmp xchain00079_n21_α
# IR_LIT_STRING
 xchain00079_n55_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00079_n60_α
 xchain00079_n55_β:
 jmp xchain00079_n21_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string ">::="
 xchain00079_n56_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00099_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00099_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00099_2
.Lx00099_1:
 call rt_faildescr@PLT
.Lx00099_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00079_n10_α
 jmp xchain00079_n61_α
 xchain00079_n56_β:
 jmp xchain00079_n10_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "getrhs"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00079_n57_α:
 jmp qword ptr [r12 + 1760]
 xchain00079_n57_β:
 jmp xchain00079_n3_α
 xchain00079_n58_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn521: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn521]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00079_n21_α
 jmp xchain00079_n21_α
 xchain00079_n58_β:
 jmp xchain00079_n21_α
 xchain00079_n59_α:
 jmp xchain00079_n21_α
xchain00079_n59_β:
 jmp xchain00079_n21_α
# IR_VAR
 xchain00079_n60_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 552], rax
 jmp xchain00079_n62_α
 xchain00079_n60_β:
 jmp xchain00079_n21_α
 xchain00079_n61_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1152]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1168]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1184]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1192], rax
# marshal arg3 = producer-box slot [zr+1328] -> [zr+1200]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn526: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 1152]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain00079_n10_α
 jmp xchain00079_n63_α
 xchain00079_n61_β:
 jmp xchain00079_n10_α
 xchain00079_n62_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn528: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00079_n21_α
 jmp xchain00079_n64_α
 xchain00079_n62_β:
 jmp xchain00079_n21_α
# IR_MOVE_LABEL
 xchain00079_n63_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 984], rax
 lea rax, [rip + xchain00079_n10_α]
 mov qword ptr [r12 + 992], rax
 jmp xchain00079_n29_α
 xchain00079_n63_β:
 jmp proc_pwrite_ω
 xchain00079_n64_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00100_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00100_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00100_2
.Lx00100_1:
 call rt_faildescr@PLT
.Lx00100_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00079_n21_α
 jmp xchain00079_n65_α
 xchain00079_n64_β:
 jmp xchain00079_n21_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "getrhs"
 xchain00079_n65_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+224]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+240]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+256]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 264], rax
# marshal arg3 = producer-box slot [zr+416] -> [zr+272]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rax
# marshal arg4 = producer-box slot [zr+448] -> [zr+288]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn534: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 224]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00079_n21_α
 jmp xchain00079_n66_α
 xchain00079_n65_β:
 jmp xchain00079_n21_α
 xchain00079_n66_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
 jmp xchain00079_n21_α
xchain00079_n66_β:
 jmp xchain00079_n21_α
proc_pwrite_β:
jmp proc_pwrite_ω
proc_pwrite_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 2312]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 2304]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_pwrite_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 2312]
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
  mov qword ptr [r12 + 856], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 848], rax
 pop rsi
proc_source_α_body:
# IR_VAR
 xchain00101_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
 jmp xchain00101_n1_α
 xchain00101_n0_β:
 jmp proc_source_ω
# IR_GEN_SCAN
 xchain00101_n1_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00101_n2_α
 xchain00101_n1_β:
 jmp proc_source_ω
# IR_LIT_STRING
 xchain00101_n2_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00101_n3_α
 xchain00101_n2_β:
 jmp xchain00101_n5_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "@"
# IR_SCAN_MATCH
 xchain00101_n3_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00101_n5_α
 mov rdi, qword ptr [rip + .Lx00103_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00101_n5_α
 mov qword ptr [r12 + 752], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 760], rax
 jmp xchain00101_n4_α
 xchain00101_n3_β:
 jmp xchain00101_n5_α
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00101_n4_α:
 mov rax, qword ptr [r12 + 760]
 cmp rax, 1
 jge .Lx00104_0
 add rax, r15
 add rax, 1
.Lx00104_0:
 cmp rax, 1
 jl xchain00101_n5_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00101_n5_α
 mov qword ptr [r12 + 736], r14
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
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00101_n6_α
 xchain00101_n4_β:
 mov r14, qword ptr [r12 + 736]
 jmp xchain00101_n5_α
# IR_GEN_SCAN
 xchain00101_n5_α:
 lea rdi, [r12 + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 48]
 mov r14, qword ptr [r12 + 56]
 mov r15, qword ptr [r12 + 64]
 jmp proc_source_ω
 xchain00101_n5_β:
 jmp proc_source_ω
# IR_LIT_INTEGER
 xchain00101_n6_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00101_n7_α
 xchain00101_n6_β:
 jmp xchain00101_n9_α
.Lx00105_0:
 .quad 0
# IR_SCAN_TAB
 xchain00101_n7_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00106_0
 add rax, r15
 add rax, 1
.Lx00106_0:
 cmp rax, 1
 jl xchain00101_n9_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00101_n9_α
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
 jmp xchain00101_n8_α
 xchain00101_n7_β:
 mov r14, qword ptr [r12 + 672]
 jmp xchain00101_n9_α
 xchain00101_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00101_n10_α
 xchain00101_n8_β:
 jmp xchain00101_n9_α
# KEYWORD_read
 xchain00101_n9_α:
 mov rdi, qword ptr [rip + .Lx00107_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00101_n11_α
 xchain00101_n9_β:
 jmp proc_source_ω
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "&errout"
 xchain00101_n10_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn554: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain00101_n9_α
 jmp xchain00101_n12_α
 xchain00101_n10_β:
 jmp xchain00101_n9_α
# IR_LIT_STRING
 xchain00101_n11_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00101_n13_α
 xchain00101_n11_β:
 jmp proc_source_ω
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "*** cannot open "
# IR_MOVE_LABEL
 xchain00101_n12_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 376], rax
 lea rax, [rip + xchain00101_n9_α]
 mov qword ptr [r12 + 384], rax
 jmp xchain00101_n14_α
 xchain00101_n12_β:
 jmp xchain00101_n17_α
# IR_VAR
 xchain00101_n13_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 568], rax
 jmp xchain00101_n16_α
 xchain00101_n13_β:
 jmp proc_source_ω
 xchain00101_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00101_n17_α
 xchain00101_n14_β:
 jmp xchain00101_n17_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00101_n15_α:
 jmp qword ptr [r12 + 384]
 xchain00101_n15_β:
 jmp xchain00101_n17_α
 xchain00101_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn564: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn564]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_source_ω
 jmp proc_source_ω
 xchain00101_n16_β:
 jmp proc_source_ω
# IR_VAR
 xchain00101_n17_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00101_n18_α
 xchain00101_n17_β:
 jmp xchain00101_n19_α
# IR_VAR
 xchain00101_n18_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00101_n20_α
 xchain00101_n18_β:
 jmp xchain00101_n19_α
# IR_RETURN
 xchain00101_n19_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_source_γ
 xchain00101_n20_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn569: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn569]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00101_n19_α
 jmp xchain00101_n21_α
 xchain00101_n20_β:
 jmp xchain00101_n19_α
# IR_VAR
 xchain00101_n21_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 200], rax
 jmp xchain00101_n22_α
 xchain00101_n21_β:
 jmp xchain00101_n19_α
# IR_ASSIGN gva
 xchain00101_n22_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00101_n23_α
 xchain00101_n22_β:
 jmp xchain00101_n19_α
 xchain00101_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
 jmp xchain00101_n19_α
xchain00101_n23_β:
 jmp xchain00101_n19_α
proc_source_β:
jmp proc_source_ω
proc_source_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 856]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 848]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_source_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 856]
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
  mov qword ptr [r12 + 904], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 896], rax
 pop rsi
proc_symimage_α_body:
# IR_VAR
 xchain00109_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00109_n1_α
 xchain00109_n0_β:
 jmp proc_symimage_ω
 xchain00109_n1_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn578: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00109_n2_α
 xchain00109_n1_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00109_n2_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00109_n3_α
 xchain00109_n2_β:
 jmp proc_symimage_ω
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "string"
 xchain00109_n3_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+848]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+864]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn581: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn581]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain00109_n5_α
 jmp xchain00109_n4_α
 xchain00109_n3_β:
 jmp xchain00109_n5_α
# IR_VAR
 xchain00109_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 792], rax
 jmp xchain00109_n6_α
 xchain00109_n4_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00109_n5_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00109_n7_α
 xchain00109_n5_β:
 jmp proc_symimage_ω
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string "nonterm"
 xchain00109_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00109_n8_α
 xchain00109_n6_β:
 jmp proc_symimage_ω
 xchain00109_n7_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+704]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+720]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn587: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn587]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain00109_n10_α
 jmp xchain00109_n9_α
 xchain00109_n7_β:
 jmp xchain00109_n10_α
# IR_VAR
 xchain00109_n8_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 40], rax
 jmp xchain00109_n11_α
 xchain00109_n8_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00109_n9_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00109_n12_α
 xchain00109_n9_β:
 jmp proc_symimage_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "<"
# IR_LIT_STRING
 xchain00109_n10_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00109_n13_α
 xchain00109_n10_β:
 jmp proc_symimage_ω
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "charset"
# IR_RETURN
 xchain00109_n11_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_symimage_γ
# IR_VAR
 xchain00109_n12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00109_n14_α
 xchain00109_n12_β:
 jmp proc_symimage_ω
 xchain00109_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+400]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+416]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn596: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn596]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00109_n15_α
 xchain00109_n13_β:
 jmp proc_symimage_ω
# IR_FIELD_GET
 xchain00109_n14_α:
 mov rdi, qword ptr [rip + .Lx00114_0]
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00109_n16_α
 xchain00109_n14_β:
 jmp proc_symimage_ω
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "name"
# IR_LIT_STRING
 xchain00109_n15_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00109_n17_α
 xchain00109_n15_β:
 jmp proc_symimage_ω
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "<'"
 xchain00109_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00109_n18_α
 xchain00109_n16_β:
 jmp proc_symimage_ω
# IR_VAR
 xchain00109_n17_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00109_n19_α
 xchain00109_n17_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00109_n18_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00109_n20_α
 xchain00109_n18_β:
 jmp proc_symimage_ω
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string ">"
# IR_FIELD_GET
 xchain00109_n19_α:
 mov rdi, qword ptr [rip + .Lx00117_0]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00109_n21_α
 xchain00109_n19_β:
 jmp proc_symimage_ω
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "chars"
 xchain00109_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00109_n22_α
 xchain00109_n20_β:
 jmp proc_symimage_ω
 xchain00109_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call str_concat_d@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00109_n23_α
 xchain00109_n21_β:
 jmp proc_symimage_ω
 xchain00109_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00109_n8_α
 xchain00109_n22_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00109_n23_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00109_n24_α
 xchain00109_n23_β:
 jmp proc_symimage_ω
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "'>"
 xchain00109_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00109_n25_α
 xchain00109_n24_β:
 jmp proc_symimage_ω
 xchain00109_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00109_n8_α
 xchain00109_n25_β:
 jmp proc_symimage_ω
proc_symimage_β:
jmp proc_symimage_ω
proc_symimage_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 904]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_symimage_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 904]
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
  mov qword ptr [r12 + 1064], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1056], rax
 pop rsi
proc_syms_α_body:
# IR_VAR_REF
 xchain00119_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00119_n1_α
 xchain00119_n0_β:
 jmp xchain00119_n3_α
# IR_NULLTEST_VAR
 xchain00119_n1_α:
 mov eax, dword ptr [r12 + 944]
 cmp eax, 99
 je xchain00119_n3_α
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00119_n3_α
 cmp eax, 0
 jne xchain00119_n3_α
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 984], rax
 jmp xchain00119_n2_α
 xchain00119_n1_β:
 jmp xchain00119_n3_α
# IR_LIT_INTEGER
 xchain00119_n2_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00119_n4_α
 xchain00119_n2_β:
 jmp xchain00119_n3_α
.Lx00120_0:
 .quad 1
# IR_MAKE_LIST
 xchain00119_n3_α:
 lea rdi, [r12 + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00119_n5_α
 xchain00119_n3_β:
 jmp xchain00119_n7_α
# IR_ASSIGN_VAR
 xchain00119_n4_α:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00119_n3_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00119_n6_α
 xchain00119_n4_β:
 jmp xchain00119_n3_α
 xchain00119_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00119_n7_α
 xchain00119_n5_β:
 jmp xchain00119_n7_α
# IR_LIT_CHARSET
 xchain00119_n6_α:
 mov qword ptr [r12 + 912], 1
 mov dword ptr [r12 + 916], -1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00119_n8_α
 xchain00119_n6_β:
 jmp xchain00119_n3_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "<"
# IR_VAR
 xchain00119_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 776], rax
 jmp xchain00119_n9_α
 xchain00119_n7_β:
 jmp xchain00119_n10_α
# IR_UNOP
 xchain00119_n8_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00119_n11_α
 xchain00119_n8_β:
 jmp xchain00119_n3_α
# IR_GEN_SCAN
 xchain00119_n9_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00119_n12_α
 xchain00119_n9_β:
 jmp xchain00119_n10_α
# IR_VAR
 xchain00119_n10_α:
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 40], rax
 jmp xchain00119_n13_α
 xchain00119_n10_β:
 jmp proc_syms_ω
# IR_ASSIGN gva
 xchain00119_n11_α:
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00119_n14_α
 xchain00119_n11_β:
 jmp xchain00119_n3_α
# IR_VAR
 xchain00119_n12_α:
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 216], rax
 jmp xchain00119_n15_α
 xchain00119_n12_β:
 jmp xchain00119_n20_α
# IR_RETURN
 xchain00119_n13_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_syms_γ
# IR_MOVE_LABEL
 xchain00119_n14_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
 lea rax, [rip + xchain00119_n3_α]
 mov qword ptr [r12 + 848], rax
 jmp xchain00119_n3_α
 xchain00119_n14_β:
 jmp xchain00119_n3_α
# IR_VAR
 xchain00119_n15_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00119_n18_α
 xchain00119_n15_β:
 jmp xchain00119_n19_α
 xchain00119_n16_α:
 jmp xchain00119_n20_α
xchain00119_n16_β:
 jmp xchain00119_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00119_n17_α:
 jmp qword ptr [r12 + 848]
 xchain00119_n17_β:
 jmp xchain00119_n3_α
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00119_n18_α:
 mov eax, r14d
.Lx00122_0:
 cmp eax, r15d
 jge .Lx00122_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [r12 + 744]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00122_1
 add eax, 1
 jmp .Lx00122_0
.Lx00122_1:
 cmp eax, r14d
 je xchain00119_n19_α
 mov qword ptr [r12 + 704], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 712], rcx
 jmp xchain00119_n21_α
 xchain00119_n18_β:
 jmp xchain00119_n19_α
# IR_LIT_INTEGER
 xchain00119_n19_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00119_n22_α
 xchain00119_n19_β:
 jmp xchain00119_n20_α
.Lx00123_0:
 .quad 2
# IR_GEN_SCAN
 xchain00119_n20_α:
 lea rdi, [r12 + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 80]
 mov r14, qword ptr [r12 + 88]
 mov r15, qword ptr [r12 + 96]
 jmp xchain00119_n10_α
 xchain00119_n20_β:
 jmp xchain00119_n10_α
# IR_SCAN_TAB
 xchain00119_n21_α:
 mov rax, qword ptr [r12 + 712]
 cmp rax, 1
 jge .Lx00124_0
 add rax, r15
 add rax, 1
.Lx00124_0:
 cmp rax, 1
 jl xchain00119_n19_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00119_n19_α
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
 jmp xchain00119_n23_α
 xchain00119_n21_β:
 mov r14, qword ptr [r12 + 688]
 jmp xchain00119_n19_α
# IR_LIT_STRING
 xchain00119_n22_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00119_n24_α
 xchain00119_n22_β:
 jmp xchain00119_n20_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "<"
# IR_MOVE_LABEL
 xchain00119_n23_α:
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00119_n19_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00119_n25_α
 xchain00119_n23_β:
 jmp xchain00119_n20_α
# IR_SCAN_MATCH
 xchain00119_n24_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00119_n20_α
 mov rdi, qword ptr [rip + .Lx00126_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00119_n20_α
 mov qword ptr [r12 + 448], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 456], rax
 jmp xchain00119_n27_α
 xchain00119_n24_β:
 jmp xchain00119_n20_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "<"
 xchain00119_n25_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn650: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn650]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00119_n20_α
 jmp xchain00119_n12_α
 xchain00119_n25_β:
 jmp xchain00119_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00119_n26_α:
 jmp qword ptr [r12 + 256]
 xchain00119_n26_β:
 jmp xchain00119_n20_α
# IR_SCAN_TAB
 xchain00119_n27_α:
 mov rax, qword ptr [r12 + 456]
 cmp rax, 1
 jge .Lx00127_0
 add rax, r15
 add rax, 1
.Lx00127_0:
 cmp rax, 1
 jl xchain00119_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00119_n20_α
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
 jmp xchain00119_n28_α
 xchain00119_n27_β:
 mov r14, qword ptr [r12 + 432]
 jmp xchain00119_n20_α
# IR_LIT_CHARSET
 xchain00119_n28_α:
 mov qword ptr [r12 + 576], 1
 mov dword ptr [r12 + 580], -1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00119_n29_α
 xchain00119_n28_β:
 jmp xchain00119_n20_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00119_n29_α:
 mov qword ptr [r12 + 560], r14
.Lx00129_0:
 mov rax, qword ptr [r12 + 560]
 cmp rax, r15
 jge xchain00119_n20_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00129_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00129_1
 mov qword ptr [r12 + 544], 6
 add rax, 1
 mov qword ptr [r12 + 552], rax
 jmp xchain00119_n30_α
.Lx00129_1:
 inc qword ptr [r12 + 560]
 jmp .Lx00129_0
 xchain00119_n29_β:
 inc qword ptr [r12 + 560]
 jmp .Lx00129_0
.Lx00129_2:
 .quad .Lx00129_2_s
.Lx00129_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00119_n30_α:
 mov rax, qword ptr [r12 + 552]
 cmp rax, 1
 jge .Lx00130_0
 add rax, r15
 add rax, 1
.Lx00130_0:
 cmp rax, 1
 jl xchain00119_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00119_n20_α
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
 jmp xchain00119_n31_α
 xchain00119_n30_β:
 mov r14, qword ptr [r12 + 528]
 jmp xchain00119_n20_α
# IR_LIT_INTEGER
 xchain00119_n31_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00119_n32_α
 xchain00119_n31_β:
 jmp xchain00119_n20_α
.Lx00131_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00119_n32_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00119_n20_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00119_n20_α
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
 jmp xchain00119_n33_α
 xchain00119_n32_β:
 mov r14, qword ptr [r12 + 624]
 jmp xchain00119_n20_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00119_n33_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 408], rax
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 lea rdx, [r12 + 368]
 mov ecx, 3
 lea r8, [r12 + 416]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain00119_n20_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00119_n34_α
 xchain00119_n33_β:
 lea rdi, [r12 + 416]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00119_n20_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00119_n34_α
 jmp xchain00119_n20_α
 xchain00119_n34_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00132_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00132_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00132_2
.Lx00132_1:
 call rt_faildescr@PLT
.Lx00132_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00119_n20_α
 jmp xchain00119_n35_α
 xchain00119_n34_β:
 jmp xchain00119_n20_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "defnon"
# IR_MOVE_LABEL
 xchain00119_n35_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00119_n33_β]
 mov qword ptr [r12 + 256], rax
 jmp xchain00119_n25_α
 xchain00119_n35_β:
 jmp xchain00119_n20_α
proc_syms_β:
jmp proc_syms_ω
proc_syms_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1064]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1056]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_syms_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1064]
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
  mov qword ptr [r12 + 3592], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 3584], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00133_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain00133_n1_α
 xchain00133_n0_β:
 jmp xchain00133_n3_α
# IR_NULLTEST_VAR
 xchain00133_n1_α:
 mov eax, dword ptr [r12 + 3424]
 cmp eax, 99
 je xchain00133_n3_α
 mov rdi, qword ptr [r12 + 3424]
 mov rsi, qword ptr [r12 + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00133_n3_α
 cmp eax, 0
 jne xchain00133_n3_α
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3464], rax
 jmp xchain00133_n2_α
 xchain00133_n1_β:
 jmp xchain00133_n3_α
# IR_LIT_CHARSET
 xchain00133_n2_α:
 mov qword ptr [r12 + 3552], 1
 mov dword ptr [r12 + 3556], -1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 3560], rax
 jmp xchain00133_n4_α
 xchain00133_n2_β:
 jmp xchain00133_n3_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00133_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn675: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn675]
 lea rsi, [r12 + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain00133_n6_α
 jmp xchain00133_n5_α
 xchain00133_n3_β:
 jmp xchain00133_n6_α
 xchain00133_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn677: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn677]
 lea rsi, [r12 + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00133_n3_α
 jmp xchain00133_n7_α
 xchain00133_n4_β:
 jmp xchain00133_n3_α
 xchain00133_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00133_n6_α
 xchain00133_n5_β:
 jmp xchain00133_n6_α
# IR_MAKE_LIST
 xchain00133_n6_α:
 lea rdi, [r12 + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain00133_n8_α
 xchain00133_n6_β:
 jmp xchain00133_n9_α
# IR_ASSIGN_VAR
 xchain00133_n7_α:
 mov rdi, qword ptr [r12 + 3456]
 mov rsi, qword ptr [r12 + 3464]
 mov rdx, qword ptr [r12 + 3504]
 mov rcx, qword ptr [r12 + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00133_n3_α
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00133_n3_α
 xchain00133_n7_β:
 jmp xchain00133_n3_α
 xchain00133_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3360]
 mov rdx, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00133_n9_α
 xchain00133_n8_β:
 jmp xchain00133_n9_α
# IR_VAR
 xchain00133_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain00133_n10_α
 xchain00133_n9_β:
 jmp xchain00133_n11_α
 xchain00133_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn686: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn686]
 lea rsi, [r12 + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00133_n11_α
 jmp xchain00133_n12_α
 xchain00133_n10_β:
 jmp xchain00133_n11_α
# IR_VAR
 xchain00133_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00133_n13_α
 xchain00133_n11_β:
 jmp xchain00133_n14_α
 xchain00133_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00133_n15_α
 xchain00133_n12_β:
 jmp xchain00133_n11_α
# IR_VAR
 xchain00133_n13_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 232], rax
 jmp xchain00133_n16_α
 xchain00133_n13_β:
 jmp xchain00133_n14_α
# IR_VAR
 xchain00133_n14_α:
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 56], rax
 jmp xchain00133_n17_α
 xchain00133_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00133_n15_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3320], rax
 jmp xchain00133_n18_α
 xchain00133_n15_β:
 jmp xchain00133_n9_α
 xchain00133_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn697: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn697]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00133_n14_α
 jmp xchain00133_n19_α
 xchain00133_n16_β:
 jmp xchain00133_n14_α
# IR_RETURN
 xchain00133_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00133_n18_α:
 mov rdi, qword ptr [r12 + 3312]
 mov rsi, qword ptr [r12 + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00133_n20_α
 xchain00133_n18_β:
 jmp xchain00133_n9_α
 xchain00133_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+112]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn702: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn702]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00133_n14_α
 jmp xchain00133_n11_α
 xchain00133_n19_β:
 jmp xchain00133_n14_α
# IR_LIT_STRING
 xchain00133_n20_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain00133_n21_α
 xchain00133_n20_β:
 jmp xchain00133_n23_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00133_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00133_n23_α
 mov rdi, qword ptr [rip + .Lx00136_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00133_n23_α
 mov qword ptr [r12 + 3248], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 3256], rax
 jmp xchain00133_n22_α
 xchain00133_n21_β:
 jmp xchain00133_n23_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00133_n22_α:
 mov rax, qword ptr [r12 + 3256]
 cmp rax, 1
 jge .Lx00137_0
 add rax, r15
 add rax, 1
.Lx00137_0:
 cmp rax, 1
 jl xchain00133_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n23_α
 mov qword ptr [r12 + 3232], r14
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
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain00133_n24_α
 xchain00133_n22_β:
 mov r14, qword ptr [r12 + 3232]
 jmp xchain00133_n23_α
# IR_VAR
 xchain00133_n23_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3048], rax
 jmp xchain00133_n25_α
 xchain00133_n23_β:
 jmp xchain00133_n26_α
# IR_LIT_INTEGER
 xchain00133_n24_α:
 mov qword ptr [r12 + 3184], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 3192], rax
 jmp xchain00133_n27_α
 xchain00133_n24_β:
 jmp xchain00133_n29_α
.Lx00138_0:
 .quad 0
# IR_VAR
 xchain00133_n25_α:
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3080], rax
 jmp xchain00133_n28_α
 xchain00133_n25_β:
 jmp xchain00133_n26_α
# IR_GEN_SCAN
 xchain00133_n26_α:
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00133_n9_α
 xchain00133_n26_β:
 jmp xchain00133_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00133_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00139_0
 add rax, r15
 add rax, 1
.Lx00139_0:
 cmp rax, 1
 jl xchain00133_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00133_n29_α
 mov qword ptr [r12 + 3152], 6
 mov qword ptr [r12 + 3160], rax
 jmp xchain00133_n23_α
 xchain00133_n27_β:
 jmp xchain00133_n29_α
 xchain00133_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3016], rax
  .section .rodata
  .Lrkfn718: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00133_n26_α
 jmp xchain00133_n30_α
 xchain00133_n28_β:
 jmp xchain00133_n26_α
# KEYWORD_null
 xchain00133_n29_α:
 mov qword ptr [r12 + 3120], 0
 mov qword ptr [r12 + 3128], 0
 jmp xchain00133_n31_α
 xchain00133_n29_β:
 jmp xchain00133_n23_α
# IR_MOVE_LABEL
 xchain00133_n30_α:
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00133_n26_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00133_n32_α
 xchain00133_n30_β:
 jmp xchain00133_n26_α
 xchain00133_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3112], rax
 jmp xchain00133_n34_α
xchain00133_n31_β:
 jmp xchain00133_n23_α
# IR_GEN_SCAN
 xchain00133_n32_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
 lea rdi, [r12 + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 368]
 mov r14, qword ptr [r12 + 376]
 mov r15, qword ptr [r12 + 384]
 jmp xchain00133_n9_α
 xchain00133_n32_β:
 jmp xchain00133_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n33_α:
 jmp qword ptr [r12 + 448]
 xchain00133_n33_β:
 jmp xchain00133_n26_α
# IR_LIT_STRING
 xchain00133_n34_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain00133_n35_α
 xchain00133_n34_β:
 jmp xchain00133_n37_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00133_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00133_n37_α
 mov rdi, qword ptr [rip + .Lx00141_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00133_n37_α
 mov qword ptr [r12 + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2920], rax
 jmp xchain00133_n36_α
 xchain00133_n35_β:
 jmp xchain00133_n37_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00133_n36_α:
 mov rax, qword ptr [r12 + 2920]
 cmp rax, 1
 jge .Lx00142_0
 add rax, r15
 add rax, 1
.Lx00142_0:
 cmp rax, 1
 jl xchain00133_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n37_α
 mov qword ptr [r12 + 2896], r14
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
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain00133_n38_α
 xchain00133_n36_β:
 mov r14, qword ptr [r12 + 2896]
 jmp xchain00133_n37_α
# IR_LIT_INTEGER
 xchain00133_n37_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain00133_n39_α
 xchain00133_n37_β:
 jmp xchain00133_n45_α
.Lx00143_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00133_n38_α:
 mov qword ptr [r12 + 2848], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain00133_n40_α
 xchain00133_n38_β:
 jmp xchain00133_n37_α
.Lx00144_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00133_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00133_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n45_α
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
 jmp xchain00133_n41_α
 xchain00133_n39_β:
 mov r14, qword ptr [r12 + 512]
 jmp xchain00133_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00133_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00145_0
 add rax, r15
 add rax, 1
.Lx00145_0:
 cmp rax, 1
 jl xchain00133_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00133_n37_α
 mov qword ptr [r12 + 2816], 6
 mov qword ptr [r12 + 2824], rax
 jmp xchain00133_n43_α
 xchain00133_n40_β:
 jmp xchain00133_n37_α
 xchain00133_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00133_n44_α
 xchain00133_n41_β:
 jmp xchain00133_n45_α
 xchain00133_n42_α:
 jmp xchain00133_n45_α
xchain00133_n42_β:
 jmp xchain00133_n45_α
 xchain00133_n43_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2808], rax
 jmp xchain00133_n11_α
xchain00133_n43_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n44_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2680], rax
 jmp xchain00133_n47_α
 xchain00133_n44_β:
 jmp xchain00133_n48_α
 xchain00133_n45_α:
 jmp xchain00133_n49_α
xchain00133_n45_β:
 jmp xchain00133_n26_α
 xchain00133_n46_α:
 jmp xchain00133_n11_α
xchain00133_n46_β:
 jmp xchain00133_n11_α
# IR_VAR
 xchain00133_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2712], rax
 jmp xchain00133_n50_α
 xchain00133_n47_β:
 jmp xchain00133_n48_α
# IR_LIT_STRING
 xchain00133_n48_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain00133_n51_α
 xchain00133_n48_β:
 jmp xchain00133_n37_α
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL
 xchain00133_n49_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
 lea rax, [rip + xchain00133_n52_α]
 mov qword ptr [r12 + 448], rax
 jmp xchain00133_n32_α
 xchain00133_n49_β:
 jmp xchain00133_n26_α
 xchain00133_n50_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2632], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2648], rax
 mov qword ptr [r12 + 2656], 0
.Lx00147_60:
  .section .rodata
  .Lbynamegenfn486: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn486]
 lea rsi, [r12 + 2624]
 mov edx, 2
 lea rcx, [r12 + 2656]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je xchain00133_n48_α
 jmp xchain00133_n53_α
 xchain00133_n50_β:
 jmp .Lx00147_60
# IR_VAR
 xchain00133_n51_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 2504], rax
 jmp xchain00133_n54_α
 xchain00133_n51_β:
 jmp xchain00133_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n52_α:
 jmp qword ptr [r12 + 576]
 xchain00133_n52_β:
 jmp xchain00133_n37_α
# IR_LIT_INTEGER
 xchain00133_n53_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain00133_n55_α
 xchain00133_n53_β:
 jmp xchain00133_n50_β
.Lx00148_0:
 .quad 1
 xchain00133_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2416]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2432]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn757: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn757]
 lea rsi, [r12 + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00133_n37_α
 jmp xchain00133_n56_α
 xchain00133_n54_β:
 jmp xchain00133_n37_α
# IR_COERCE_NUMERIC
 xchain00133_n55_α:
 mov eax, dword ptr [r12 + 2608]
 cmp eax, 7
 je .Lx00149_1
 cmp eax, 6
 jne .Lx00149_0
 mov eax, dword ptr [r12 + 2736]
 cmp eax, 6
 jne .Lx00149_0
.Lx00149_1:
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2584], rax
 jmp .Lx00149_2
.Lx00149_0:
 lea rdi, [r12 + 2608]
 lea rsi, [r12 + 2736]
 lea rdx, [r12 + 2576]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00149_2:
 jmp xchain00133_n57_α
 xchain00133_n55_β:
 jmp xchain00133_n48_α
# IR_MOVE_LABEL
 xchain00133_n56_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00133_n37_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00133_n37_α
 xchain00133_n56_β:
 jmp xchain00133_n37_α
 xchain00133_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 100
 je .Lx00150_0
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 6
 jne .Lx00150_2
.Lx00150_1:
 mov rax, qword ptr [r12 + 2584]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2544], 6
 mov qword ptr [r12 + 2552], rax
 jmp xchain00133_n58_α
.Lx00150_0:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 lea r9, [r12 + 2544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00150_3
.Lx00150_2:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2736]
 mov rcx, qword ptr [r12 + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00133_n48_α
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
.Lx00150_3:
 jmp xchain00133_n58_α
 xchain00133_n57_β:
 jmp xchain00133_n48_α
 xchain00133_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2544]
 mov rdx, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00133_n59_α
 xchain00133_n58_β:
 jmp xchain00133_n48_α
# IR_VAR_REF
 xchain00133_n59_α:
 lea rdi, [r12 + 3600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00133_n60_α
 xchain00133_n59_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n60_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 632], rax
 jmp xchain00133_n61_α
 xchain00133_n60_β:
 jmp xchain00133_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00133_n61_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00133_n37_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00133_n62_α
 xchain00133_n61_β:
 jmp xchain00133_n37_α
# IR_LIT_CHARSET
 xchain00133_n62_α:
 mov qword ptr [r12 + 2240], 1
 mov dword ptr [r12 + 2244], -1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 2248], rax
 jmp xchain00133_n63_α
 xchain00133_n62_β:
 jmp xchain00133_n66_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00133_n63_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00133_n64_α
 xchain00133_n63_β:
 jmp xchain00133_n66_α
# IR_VAR
 xchain00133_n64_α:
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 2328], rax
 jmp xchain00133_n65_α
 xchain00133_n64_β:
 jmp xchain00133_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain00133_n65_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00133_n66_α
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain00133_n67_α
 xchain00133_n65_β:
 jmp xchain00133_n66_α
# IR_LIT_INTEGER
 xchain00133_n66_α:
 mov qword ptr [r12 + 2144], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain00133_n68_α
 xchain00133_n66_β:
 jmp xchain00133_n37_α
.Lx00152_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00133_n67_α:
 mov rdi, qword ptr [r12 + 2352]
 mov rsi, qword ptr [r12 + 2360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00133_n66_α
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00133_n69_α
 xchain00133_n67_β:
 jmp xchain00133_n66_α
# IR_MOVE_LABEL
 xchain00133_n68_α:
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00133_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00133_n70_α
 xchain00133_n68_β:
 jmp xchain00133_n37_α
 xchain00133_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00133_n72_α
 xchain00133_n69_β:
 jmp xchain00133_n66_α
# IR_ASSIGN_VAR
 xchain00133_n70_α:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00133_n37_α
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00133_n73_α
 xchain00133_n70_β:
 jmp xchain00133_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n71_α:
 jmp qword ptr [r12 + 720]
 xchain00133_n71_β:
 jmp xchain00133_n37_α
 xchain00133_n72_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lbynamefn508: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn508]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain00133_n66_α
 jmp xchain00133_n74_α
 xchain00133_n72_β:
 jmp xchain00133_n66_α
# IR_MOVE_LABEL
 xchain00133_n73_α:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00133_n71_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00133_n37_α
 xchain00133_n73_β:
 jmp xchain00133_n37_α
# IR_LIT_STRING
 xchain00133_n74_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00133_n75_α
 xchain00133_n74_β:
 jmp xchain00133_n78_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00133_n75_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00133_n76_α
 xchain00133_n75_β:
 jmp xchain00133_n78_α
.Lx00154_0:
 .quad 0
# IR_SCAN_TAB
 xchain00133_n76_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00155_0
 add rax, r15
 add rax, 1
.Lx00155_0:
 cmp rax, 1
 jl xchain00133_n78_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00133_n78_α
 mov qword ptr [r12 + 2096], r14
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
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain00133_n77_α
 xchain00133_n76_β:
 mov r14, qword ptr [r12 + 2096]
 jmp xchain00133_n78_α
 xchain00133_n77_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00133_n78_α
 mov rdi, qword ptr [r12 + 2080]
 mov rsi, qword ptr [r12 + 2088]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain00133_n79_α
 xchain00133_n77_β:
 jmp xchain00133_n78_α
# IR_VAR
 xchain00133_n78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00133_n80_α
 xchain00133_n78_β:
 jmp xchain00133_n81_α
# IR_MOVE_LABEL
 xchain00133_n79_α:
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00133_n78_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00133_n82_α
 xchain00133_n79_β:
 jmp xchain00133_n86_α
 xchain00133_n80_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn796: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain00133_n81_α
 jmp xchain00133_n84_α
 xchain00133_n80_β:
 jmp xchain00133_n81_α
# IR_LIT_STRING
 xchain00133_n81_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain00133_n85_α
 xchain00133_n81_β:
 jmp xchain00133_n86_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "No parameter following -"
 xchain00133_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00133_n86_α
 xchain00133_n82_β:
 jmp xchain00133_n86_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n83_α:
 jmp qword ptr [r12 + 1792]
 xchain00133_n83_β:
 jmp xchain00133_n86_α
# IR_MOVE_LABEL
 xchain00133_n84_α:
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00133_n81_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00133_n82_α
 xchain00133_n84_β:
 jmp xchain00133_n86_α
# IR_VAR
 xchain00133_n85_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00133_n87_α
 xchain00133_n85_β:
 jmp xchain00133_n86_α
# IR_VAR
 xchain00133_n86_α:
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 792], rax
 jmp xchain00133_n88_α
 xchain00133_n86_β:
 jmp xchain00133_n37_α
 xchain00133_n87_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn808: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn808]
 lea rsi, [r12 + 1824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain00133_n86_α
 jmp xchain00133_n89_α
 xchain00133_n87_β:
 jmp xchain00133_n86_α
# IR_LIT_STRING
 xchain00133_n88_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain00133_n90_α
 xchain00133_n88_β:
 jmp xchain00133_n37_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00133_n89_α:
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
 lea rax, [rip + xchain00133_n86_α]
 mov qword ptr [r12 + 1792], rax
 jmp xchain00133_n82_α
 xchain00133_n89_β:
 jmp xchain00133_n86_α
 xchain00133_n90_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1712]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1720], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1728]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn813: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn813]
 lea rsi, [r12 + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain00133_n92_α
 jmp xchain00133_n91_α
 xchain00133_n90_β:
 jmp xchain00133_n92_α
# IR_VAR
 xchain00133_n91_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1656], rax
 jmp xchain00133_n93_α
 xchain00133_n91_β:
 jmp xchain00133_n37_α
# IR_LIT_STRING
 xchain00133_n92_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00133_n94_α
 xchain00133_n92_β:
 jmp xchain00133_n37_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "+"
 xchain00133_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1648]
 mov rdx, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00133_n95_α
 xchain00133_n93_β:
 jmp xchain00133_n37_α
 xchain00133_n94_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1568]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1584]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn819: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn819]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain00133_n97_α
 jmp xchain00133_n96_α
 xchain00133_n94_β:
 jmp xchain00133_n97_α
# IR_VAR
 xchain00133_n95_α:
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 760], rax
 jmp xchain00133_n98_α
 xchain00133_n95_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n96_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1512], rax
 jmp xchain00133_n99_α
 xchain00133_n96_β:
 jmp xchain00133_n00001_α
# IR_LIT_STRING
 xchain00133_n97_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain00133_n00160_α
 xchain00133_n97_β:
 jmp xchain00133_n37_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "."
 xchain00133_n98_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
 jmp xchain00133_n00002_α
xchain00133_n98_β:
 jmp xchain00133_n37_α
 xchain00133_n99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn827: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn827]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain00133_n00001_α
 jmp xchain00133_n00161_α
 xchain00133_n99_β:
 jmp xchain00133_n00001_α
# IR_LIT_STRING
 xchain00133_n00001_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00133_n00163_α
 xchain00133_n00001_β:
 jmp xchain00133_n37_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "-"
 xchain00133_n00160_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1168]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+1184]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn830: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn830]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00133_n37_α
 jmp xchain00133_n00164_α
 xchain00133_n00160_β:
 jmp xchain00133_n37_α
# IR_MOVE_LABEL
 xchain00133_n00002_α:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
 lea rax, [rip + xchain00133_n37_α]
 mov qword ptr [r12 + 720], rax
 jmp xchain00133_n70_α
 xchain00133_n00002_β:
 jmp xchain00133_n37_α
# IR_MOVE_LABEL
 xchain00133_n00161_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00133_n00001_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00133_n00005_α
 xchain00133_n00161_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n00163_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00133_n00165_α
 xchain00133_n00163_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n00164_α:
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00133_n00004_α
 xchain00133_n00164_β:
 jmp xchain00133_n00166_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n00003_α:
 jmp qword ptr [r12 + 1264]
 xchain00133_n00003_β:
 jmp xchain00133_n37_α
# IR_LIT_STRING
 xchain00133_n00165_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain00133_n00168_α
 xchain00133_n00165_β:
 jmp xchain00133_n37_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string " needs numeric parameter"
 xchain00133_n00004_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn843: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn843]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00133_n00166_α
 jmp xchain00133_n00169_α
 xchain00133_n00004_β:
 jmp xchain00133_n00166_α
# IR_LIT_STRING
 xchain00133_n00166_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00133_n00171_α
 xchain00133_n00166_β:
 jmp xchain00133_n37_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "-"
 xchain00133_n00005_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00133_n95_α
 xchain00133_n00005_β:
 jmp xchain00133_n37_α
 xchain00133_n00168_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1312]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1320], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1328]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn847: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn847]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain00133_n37_α
 jmp xchain00133_n00172_α
 xchain00133_n00168_β:
 jmp xchain00133_n37_α
# IR_MOVE_LABEL
 xchain00133_n00169_α:
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00133_n00166_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00133_n00173_α
 xchain00133_n00169_β:
 jmp xchain00133_n37_α
# IR_VAR
 xchain00133_n00171_α:
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 1000], rax
 jmp xchain00133_n00174_α
 xchain00133_n00171_β:
 jmp xchain00133_n37_α
# IR_MOVE_LABEL
 xchain00133_n00172_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain00133_n37_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain00133_n00005_α
 xchain00133_n00172_β:
 jmp xchain00133_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00133_n00175_α:
 jmp qword ptr [r12 + 864]
 xchain00133_n00175_β:
 jmp xchain00133_n37_α
# IR_LIT_STRING
 xchain00133_n00174_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00133_n00177_α
 xchain00133_n00174_β:
 jmp xchain00133_n37_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string " needs numeric parameter"
 xchain00133_n00173_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00133_n95_α
 xchain00133_n00173_β:
 jmp xchain00133_n37_α
 xchain00133_n00177_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+912]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn859: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00133_n37_α
 jmp xchain00133_n00006_α
 xchain00133_n00177_β:
 jmp xchain00133_n37_α
# IR_MOVE_LABEL
 xchain00133_n00006_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00133_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00133_n00173_α
 xchain00133_n00006_β:
 jmp xchain00133_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 3592]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 3584]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_options_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 3592]
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
  mov qword ptr [r12 + 552], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00178_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
 jmp xchain00178_n1_α
 xchain00178_n0_β:
 jmp xchain00178_n2_α
# IR_ASSIGN gva
 xchain00178_n1_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00178_n2_α
 xchain00178_n1_β:
 jmp xchain00178_n2_α
 xchain00178_n2_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00179_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00179_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00179_2
.Lx00179_1:
 call rt_faildescr@PLT
.Lx00179_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00178_n3_α
 jmp xchain00178_n3_α
 xchain00178_n2_β:
 jmp xchain00178_n3_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "Signature__"
 xchain00178_n3_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00180_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00180_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00180_2
.Lx00180_1:
 call rt_faildescr@PLT
.Lx00180_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00178_n4_α
 jmp xchain00178_n4_α
 xchain00178_n3_β:
 jmp xchain00178_n4_α
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "Regions__"
 xchain00178_n4_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00181_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00181_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00181_2
.Lx00181_1:
 call rt_faildescr@PLT
.Lx00181_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00178_n5_α
 jmp xchain00178_n5_α
 xchain00178_n4_β:
 jmp xchain00178_n5_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00178_n5_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00178_n6_α
 xchain00178_n5_β:
 jmp xchain00178_n8_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "OUTPUT"
 xchain00178_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn874: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn874]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00178_n8_α
 jmp xchain00178_n7_α
 xchain00178_n6_β:
 jmp xchain00178_n8_α
# IR_LIT_STRING
 xchain00178_n7_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00178_n9_α
 xchain00178_n7_β:
 jmp xchain00178_n12_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00178_n8_α:
 mov rdi, qword ptr [rip + .Lx00184_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00178_n11_α
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00178_n10_α
 xchain00178_n8_β:
 jmp xchain00178_n11_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "write"
 xchain00178_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn878: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn878]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00178_n12_α
 jmp xchain00178_n12_α
 xchain00178_n9_β:
 jmp xchain00178_n12_α
# IR_ASSIGN gva
 xchain00178_n10_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00178_n11_α
 xchain00178_n10_β:
 jmp xchain00178_n11_α
# IR_VAR
 xchain00178_n11_α:
 mov rdi, qword ptr [rip + .Lx00185_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00178_n14_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00178_n13_α
 xchain00178_n11_β:
 jmp xchain00178_n14_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "writes"
# IR_RETURN
 xchain00178_n12_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00178_n13_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00178_n14_α
 xchain00178_n13_β:
 jmp xchain00178_n14_α
# IR_LIT_INTEGER
 xchain00178_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00178_n15_α
 xchain00178_n14_β:
 jmp xchain00178_n17_α
.Lx00186_0:
 .quad 1
# IR_ASSIGN global
 xchain00178_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00187_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00178_n16_α
 xchain00178_n15_β:
 jmp xchain00178_n17_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00178_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00188_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00178_n17_α
 xchain00178_n16_β:
 jmp xchain00178_n17_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "write"
# IR_RETURN
 xchain00178_n17_α:
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
mov rsp, qword ptr [r12 + 552]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Init___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 552]
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
  mov qword ptr [r12 + 552], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00189_n0_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00189_n1_α
 xchain00189_n0_β:
 jmp xchain00189_n3_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "OUTPUT"
 xchain00189_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn890: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain00189_n3_α
 jmp xchain00189_n2_α
 xchain00189_n1_β:
 jmp xchain00189_n3_α
# IR_VAR
 xchain00189_n2_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00189_n4_α
 xchain00189_n2_β:
 jmp xchain00189_n5_α
# KEYWORD_null
 xchain00189_n3_α:
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain00189_n6_α
 xchain00189_n3_β:
 jmp xchain00189_n2_α
# IR_LIT_STRING
 xchain00189_n4_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00189_n7_α
 xchain00189_n4_β:
 jmp xchain00189_n5_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string " elapsed time = "
 xchain00189_n5_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00192_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00192_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00192_2
.Lx00192_1:
 call rt_faildescr@PLT
.Lx00192_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00189_n8_α
 jmp xchain00189_n8_α
 xchain00189_n5_β:
 jmp xchain00189_n8_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "Regions__"
# IR_VAR
 xchain00189_n6_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00189_n9_α
 xchain00189_n6_β:
 jmp xchain00189_n10_α
 xchain00189_n7_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00193_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00193_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00193_2
.Lx00193_1:
 call rt_faildescr@PLT
.Lx00193_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00189_n5_α
 jmp xchain00189_n11_α
 xchain00189_n7_β:
 jmp xchain00189_n5_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "Time__"
 xchain00189_n8_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00194_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00194_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00194_2
.Lx00194_1:
 call rt_faildescr@PLT
.Lx00194_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00189_n12_α
 jmp xchain00189_n12_α
 xchain00189_n8_β:
 jmp xchain00189_n12_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00189_n9_α:
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov rdi, qword ptr [rip + .Lx00195_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00189_n10_α
 xchain00189_n9_β:
 jmp xchain00189_n10_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "write"
# IR_VAR
 xchain00189_n10_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00189_n13_α
 xchain00189_n10_β:
 jmp xchain00189_n2_α
 xchain00189_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+160]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn904: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn904]
 lea rsi, [r12 + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00189_n5_α
 jmp xchain00189_n5_α
 xchain00189_n11_β:
 jmp xchain00189_n5_α
 xchain00189_n12_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00196_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00196_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00196_2
.Lx00196_1:
 call rt_faildescr@PLT
.Lx00196_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00189_n14_α
 jmp xchain00189_n14_α
 xchain00189_n12_β:
 jmp xchain00189_n14_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00189_n13_α:
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov rdi, qword ptr [rip + .Lx00197_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00189_n15_α
 xchain00189_n13_β:
 jmp xchain00189_n2_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "writes"
# IR_RETURN
 xchain00189_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00189_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
 jmp xchain00189_n16_α
xchain00189_n15_β:
 jmp xchain00189_n2_α
# IR_MOVE_LABEL
 xchain00189_n16_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00189_n2_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00189_n2_α
 xchain00189_n16_β:
 jmp xchain00189_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00189_n17_α:
 jmp qword ptr [r12 + 304]
 xchain00189_n17_β:
 jmp xchain00189_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 552]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Term___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 552]
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
  mov qword ptr [r12 + 1160], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1152], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00198_n0_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00198_n1_α
 xchain00198_n0_β:
 jmp xchain00198_n3_α
# IR_NULLTEST_VAR
 xchain00198_n1_α:
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 99
 je xchain00198_n3_α
 mov rdi, qword ptr [r12 + 1040]
 mov rsi, qword ptr [r12 + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n3_α
 cmp eax, 0
 jne xchain00198_n3_α
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00198_n2_α
 xchain00198_n1_β:
 jmp xchain00198_n3_α
# IR_LIT_INTEGER
 xchain00198_n2_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00198_n4_α
 xchain00198_n2_β:
 jmp xchain00198_n3_α
.Lx00199_0:
 .quad 1
# IR_MAKE_LIST
 xchain00198_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00198_n5_α
 xchain00198_n3_β:
 jmp xchain00198_n7_α
# IR_ASSIGN_VAR
 xchain00198_n4_α:
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00198_n3_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain00198_n6_α
 xchain00198_n4_β:
 jmp xchain00198_n3_α
 xchain00198_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00198_n7_α
 xchain00198_n5_β:
 jmp xchain00198_n7_α
# IR_LIT_STRING
 xchain00198_n6_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00198_n8_α
 xchain00198_n6_β:
 jmp xchain00198_n3_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "total"
# IR_VAR
 xchain00198_n7_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 696], rax
 jmp xchain00198_n9_α
 xchain00198_n7_β:
 jmp xchain00198_n10_α
# IR_LIT_STRING
 xchain00198_n8_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00198_n11_α
 xchain00198_n8_β:
 jmp xchain00198_n3_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "static"
# KEYWORD_gen
 xchain00198_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00202_1:
 mov rdi, qword ptr [rip + .Lx00202_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00198_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00198_n12_α
 xchain00198_n9_β:
 jmp .Lx00202_1
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00198_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00198_n13_α
 xchain00198_n10_β:
 jmp xchain00198_n15_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00198_n11_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00198_n14_α
 xchain00198_n11_β:
 jmp xchain00198_n3_α
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "string"
 xchain00198_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn931: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn931]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00198_n10_α
 jmp xchain00198_n9_β
 xchain00198_n12_β:
 jmp xchain00198_n10_α
 xchain00198_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn933: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn933]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00198_n15_α
 jmp xchain00198_n15_α
 xchain00198_n13_β:
 jmp xchain00198_n15_α
# IR_LIT_STRING
 xchain00198_n14_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain00198_n16_α
 xchain00198_n14_β:
 jmp xchain00198_n3_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00198_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00198_n17_α
 xchain00198_n15_β:
 jmp xchain00198_n20_α
.Lx00206_0:
 .quad 1
# IR_MAKE_LIST
 xchain00198_n16_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 888], rax
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 904], rax
 lea rdi, [r12 + 848]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00198_n18_α
 xchain00198_n16_β:
 jmp xchain00198_n3_α
# IR_VAR
 xchain00198_n17_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00198_n19_α
 xchain00198_n17_β:
 jmp xchain00198_n20_α
# IR_ASSIGN gva
 xchain00198_n18_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00198_n21_α
 xchain00198_n18_β:
 jmp xchain00198_n3_α
# IR_UNOP
 xchain00198_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00198_n22_α
 xchain00198_n19_β:
 jmp xchain00198_n20_α
# IR_RETURN
 xchain00198_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00198_n21_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00198_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00198_n3_α
 xchain00198_n21_β:
 jmp xchain00198_n3_α
# IR_TO
 xchain00198_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00207_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00198_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00198_n24_α
 xchain00198_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00207_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00198_n23_α:
 jmp qword ptr [r12 + 800]
 xchain00198_n23_β:
 jmp xchain00198_n3_α
 xchain00198_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00198_n25_α
 xchain00198_n24_β:
 jmp xchain00198_n20_α
# IR_VAR_REF
 xchain00198_n25_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00198_n26_α
 xchain00198_n25_β:
 jmp xchain00198_n22_β
# IR_VAR
 xchain00198_n26_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 264], rax
 jmp xchain00198_n27_α
 xchain00198_n26_β:
 jmp xchain00198_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00198_n27_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00198_n28_α
 xchain00198_n27_β:
 jmp xchain00198_n22_β
# IR_DEREF variable -> value
 xchain00198_n28_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00198_n29_α
 xchain00198_n28_β:
 jmp xchain00198_n22_β
# IR_VAR_REF
 xchain00198_n29_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00198_n30_α
 xchain00198_n29_β:
 jmp xchain00198_n22_β
# IR_VAR
 xchain00198_n30_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 440], rax
 jmp xchain00198_n31_α
 xchain00198_n30_β:
 jmp xchain00198_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00198_n31_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00198_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00198_n32_α
 xchain00198_n31_β:
 jmp xchain00198_n22_β
# IR_DEREF variable -> value
 xchain00198_n32_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00198_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00198_n33_α
 xchain00198_n32_β:
 jmp xchain00198_n22_β
# IR_LIT_INTEGER
 xchain00198_n33_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00198_n34_α
 xchain00198_n33_β:
 jmp xchain00198_n22_β
.Lx00208_0:
 .quad 8
 xchain00198_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn963: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn963]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00198_n22_β
 jmp xchain00198_n35_α
 xchain00198_n34_β:
 jmp xchain00198_n22_β
 xchain00198_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn965: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn965]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00198_n22_β
 jmp xchain00198_n22_β
 xchain00198_n35_β:
 jmp xchain00198_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1160]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1152]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Collections___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1160]
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
  mov qword ptr [r12 + 1112], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1104], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00209_n0_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00209_n1_α
 xchain00209_n0_β:
 jmp xchain00209_n3_α
# IR_NULLTEST_VAR
 xchain00209_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00209_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n3_α
 cmp eax, 0
 jne xchain00209_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00209_n2_α
 xchain00209_n1_β:
 jmp xchain00209_n3_α
# IR_LIT_INTEGER
 xchain00209_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00209_n4_α
 xchain00209_n2_β:
 jmp xchain00209_n3_α
.Lx00210_0:
 .quad 1
# IR_MAKE_LIST
 xchain00209_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00209_n5_α
 xchain00209_n3_β:
 jmp xchain00209_n7_α
# IR_ASSIGN_VAR
 xchain00209_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00209_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00209_n6_α
 xchain00209_n4_β:
 jmp xchain00209_n3_α
 xchain00209_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00209_n7_α
 xchain00209_n5_β:
 jmp xchain00209_n7_α
# IR_LIT_STRING
 xchain00209_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00209_n8_α
 xchain00209_n6_β:
 jmp xchain00209_n3_α
.Lx00211_0:
 .quad .Lx00211_0_s
.Lx00211_0_s:
 .string "static"
# IR_VAR
 xchain00209_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00209_n9_α
 xchain00209_n7_β:
 jmp xchain00209_n10_α
# IR_LIT_STRING
 xchain00209_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00209_n11_α
 xchain00209_n8_β:
 jmp xchain00209_n3_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "string"
# KEYWORD_gen
 xchain00209_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00213_1:
 mov rdi, qword ptr [rip + .Lx00213_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00209_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00209_n12_α
 xchain00209_n9_β:
 jmp .Lx00213_1
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00209_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00209_n13_α
 xchain00209_n10_β:
 jmp xchain00209_n15_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00209_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00209_n14_α
 xchain00209_n11_β:
 jmp xchain00209_n3_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "block"
 xchain00209_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn983: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn983]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00209_n10_α
 jmp xchain00209_n9_β
 xchain00209_n12_β:
 jmp xchain00209_n10_α
 xchain00209_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn985: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn985]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00209_n15_α
 jmp xchain00209_n15_α
 xchain00209_n13_β:
 jmp xchain00209_n15_α
# IR_MAKE_LIST
 xchain00209_n14_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 888], rax
 lea rdi, [r12 + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00209_n16_α
 xchain00209_n14_β:
 jmp xchain00209_n3_α
# IR_LIT_INTEGER
 xchain00209_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00209_n17_α
 xchain00209_n15_β:
 jmp xchain00209_n20_α
.Lx00216_0:
 .quad 1
# IR_ASSIGN gva
 xchain00209_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00209_n18_α
 xchain00209_n16_β:
 jmp xchain00209_n3_α
# IR_VAR
 xchain00209_n17_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00209_n19_α
 xchain00209_n17_β:
 jmp xchain00209_n20_α
# IR_MOVE_LABEL
 xchain00209_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00209_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00209_n3_α
 xchain00209_n18_β:
 jmp xchain00209_n3_α
# IR_UNOP
 xchain00209_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00209_n22_α
 xchain00209_n19_β:
 jmp xchain00209_n20_α
# IR_RETURN
 xchain00209_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00209_n21_β:
 jmp xchain00209_n3_α
# IR_TO
 xchain00209_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00217_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00209_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00209_n23_α
 xchain00209_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00217_0
 xchain00209_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00209_n24_α
 xchain00209_n23_β:
 jmp xchain00209_n20_α
# IR_VAR_REF
 xchain00209_n24_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00209_n25_α
 xchain00209_n24_β:
 jmp xchain00209_n22_β
# IR_VAR
 xchain00209_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00209_n26_α
 xchain00209_n25_β:
 jmp xchain00209_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00209_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00209_n27_α
 xchain00209_n26_β:
 jmp xchain00209_n22_β
# IR_DEREF variable -> value
 xchain00209_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00209_n28_α
 xchain00209_n27_β:
 jmp xchain00209_n22_β
# IR_VAR_REF
 xchain00209_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00209_n29_α
 xchain00209_n28_β:
 jmp xchain00209_n22_β
# IR_VAR
 xchain00209_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00209_n30_α
 xchain00209_n29_β:
 jmp xchain00209_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00209_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00209_n31_α
 xchain00209_n30_β:
 jmp xchain00209_n22_β
# IR_DEREF variable -> value
 xchain00209_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00209_n32_α
 xchain00209_n31_β:
 jmp xchain00209_n22_β
# IR_LIT_INTEGER
 xchain00209_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00209_n33_α
 xchain00209_n32_β:
 jmp xchain00209_n22_β
.Lx00218_0:
 .quad 8
 xchain00209_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn1014: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1014]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00209_n22_β
 jmp xchain00209_n34_α
 xchain00209_n33_β:
 jmp xchain00209_n22_β
 xchain00209_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn1016: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1016]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00209_n22_β
 jmp xchain00209_n22_β
 xchain00209_n34_β:
 jmp xchain00209_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1104]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Regions___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
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
  mov qword ptr [r12 + 264], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_Signature___α_body:
# KEYWORD_read
 xchain00219_n0_α:
 mov rdi, qword ptr [rip + .Lx00220_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00219_n1_α
 xchain00219_n0_β:
 jmp xchain00219_n2_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "&version"
 xchain00219_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn1020: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1020]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00219_n2_α
 jmp xchain00219_n2_α
 xchain00219_n1_β:
 jmp xchain00219_n2_α
# KEYWORD_read
 xchain00219_n2_α:
 mov rdi, qword ptr [rip + .Lx00221_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00219_n3_α
 xchain00219_n2_β:
 jmp xchain00219_n4_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "&host"
 xchain00219_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1023: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1023]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00219_n4_α
 jmp xchain00219_n4_α
 xchain00219_n3_β:
 jmp xchain00219_n4_α
# KEYWORD_gen
 xchain00219_n4_α:
 mov qword ptr [r12 + 80], 0
.Lx00222_1:
 mov rdi, qword ptr [rip + .Lx00222_0]
 mov rsi, qword ptr [r12 + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00219_n6_α
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov rax, qword ptr [r12 + 80]
 add rax, 1
 mov qword ptr [r12 + 80], rax
 jmp xchain00219_n5_α
 xchain00219_n4_β:
 jmp .Lx00222_1
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "&features"
 xchain00219_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn1026: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1026]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00219_n6_α
 jmp xchain00219_n4_β
 xchain00219_n5_β:
 jmp xchain00219_n6_α
# IR_RETURN
 xchain00219_n6_α:
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
mov rsp, qword ptr [r12 + 264]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Signature___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 264]
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
  mov qword ptr [r12 + 1112], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1104], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00223_n0_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00223_n1_α
 xchain00223_n0_β:
 jmp xchain00223_n3_α
# IR_NULLTEST_VAR
 xchain00223_n1_α:
 mov eax, dword ptr [r12 + 992]
 cmp eax, 99
 je xchain00223_n3_α
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00223_n3_α
 cmp eax, 0
 jne xchain00223_n3_α
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00223_n2_α
 xchain00223_n1_β:
 jmp xchain00223_n3_α
# IR_LIT_INTEGER
 xchain00223_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain00223_n4_α
 xchain00223_n2_β:
 jmp xchain00223_n3_α
.Lx00224_0:
 .quad 1
# IR_MAKE_LIST
 xchain00223_n3_α:
 lea rdi, [r12 + 784]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00223_n5_α
 xchain00223_n3_β:
 jmp xchain00223_n7_α
# IR_ASSIGN_VAR
 xchain00223_n4_α:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00223_n3_α
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00223_n6_α
 xchain00223_n4_β:
 jmp xchain00223_n3_α
 xchain00223_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00223_n7_α
 xchain00223_n5_β:
 jmp xchain00223_n7_α
# IR_LIT_STRING
 xchain00223_n6_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00223_n8_α
 xchain00223_n6_β:
 jmp xchain00223_n3_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "static"
# IR_VAR
 xchain00223_n7_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 696], rax
 jmp xchain00223_n9_α
 xchain00223_n7_β:
 jmp xchain00223_n10_α
# IR_LIT_STRING
 xchain00223_n8_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain00223_n11_α
 xchain00223_n8_β:
 jmp xchain00223_n3_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "string"
# KEYWORD_gen
 xchain00223_n9_α:
 mov qword ptr [r12 + 736], 0
.Lx00227_1:
 mov rdi, qword ptr [rip + .Lx00227_0]
 mov rsi, qword ptr [r12 + 736]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00223_n10_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov rax, qword ptr [r12 + 736]
 add rax, 1
 mov qword ptr [r12 + 736], rax
 jmp xchain00223_n12_α
 xchain00223_n9_β:
 jmp .Lx00227_1
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00223_n10_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00223_n13_α
 xchain00223_n10_β:
 jmp xchain00223_n15_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00223_n11_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain00223_n14_α
 xchain00223_n11_β:
 jmp xchain00223_n3_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "block"
 xchain00223_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn1045: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1045]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00223_n10_α
 jmp xchain00223_n9_β
 xchain00223_n12_β:
 jmp xchain00223_n10_α
 xchain00223_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn1047: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1047]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00223_n15_α
 jmp xchain00223_n15_α
 xchain00223_n13_β:
 jmp xchain00223_n15_α
# IR_MAKE_LIST
 xchain00223_n14_α:
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 888], rax
 lea rdi, [r12 + 848]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00223_n16_α
 xchain00223_n14_β:
 jmp xchain00223_n3_α
# IR_LIT_INTEGER
 xchain00223_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00223_n17_α
 xchain00223_n15_β:
 jmp xchain00223_n20_α
.Lx00230_0:
 .quad 1
# IR_ASSIGN gva
 xchain00223_n16_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 272], rax
 mov qword ptr [rbx + 280], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00223_n18_α
 xchain00223_n16_β:
 jmp xchain00223_n3_α
# IR_VAR
 xchain00223_n17_α:
 mov rax, qword ptr [rbx + 272]
 mov rdx, qword ptr [rbx + 280]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00223_n19_α
 xchain00223_n17_β:
 jmp xchain00223_n20_α
# IR_MOVE_LABEL
 xchain00223_n18_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
 lea rax, [rip + xchain00223_n3_α]
 mov qword ptr [r12 + 800], rax
 jmp xchain00223_n3_α
 xchain00223_n18_β:
 jmp xchain00223_n3_α
# IR_UNOP
 xchain00223_n19_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00223_n22_α
 xchain00223_n19_β:
 jmp xchain00223_n20_α
# IR_RETURN
 xchain00223_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00223_n21_α:
 jmp qword ptr [r12 + 800]
 xchain00223_n21_β:
 jmp xchain00223_n3_α
# IR_TO
 xchain00223_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00231_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00223_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00223_n23_α
 xchain00223_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00231_0
 xchain00223_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00223_n24_α
 xchain00223_n23_β:
 jmp xchain00223_n20_α
# IR_VAR_REF
 xchain00223_n24_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00223_n25_α
 xchain00223_n24_β:
 jmp xchain00223_n22_β
# IR_VAR
 xchain00223_n25_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 264], rax
 jmp xchain00223_n26_α
 xchain00223_n25_β:
 jmp xchain00223_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00223_n26_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00223_n22_β
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00223_n27_α
 xchain00223_n26_β:
 jmp xchain00223_n22_β
# IR_DEREF variable -> value
 xchain00223_n27_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00223_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00223_n28_α
 xchain00223_n27_β:
 jmp xchain00223_n22_β
# IR_VAR_REF
 xchain00223_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00223_n29_α
 xchain00223_n28_β:
 jmp xchain00223_n22_β
# IR_VAR
 xchain00223_n29_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 440], rax
 jmp xchain00223_n30_α
 xchain00223_n29_β:
 jmp xchain00223_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00223_n30_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00223_n22_β
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00223_n31_α
 xchain00223_n30_β:
 jmp xchain00223_n22_β
# IR_DEREF variable -> value
 xchain00223_n31_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00223_n22_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00223_n32_α
 xchain00223_n31_β:
 jmp xchain00223_n22_β
# IR_LIT_INTEGER
 xchain00223_n32_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00223_n33_α
 xchain00223_n32_β:
 jmp xchain00223_n22_β
.Lx00232_0:
 .quad 8
 xchain00223_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+352]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+368]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn1076: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1076]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00223_n22_β
 jmp xchain00223_n34_α
 xchain00223_n33_β:
 jmp xchain00223_n22_β
 xchain00223_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+176]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+192]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn1078: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1078]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00223_n22_β
 jmp xchain00223_n22_β
 xchain00223_n34_β:
 jmp xchain00223_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1104]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Storage___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1112]
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
  mov qword ptr [r12 + 376], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 368], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00233_n0_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00233_n1_α
 xchain00233_n0_β:
 jmp xchain00233_n3_α
# IR_NULLTEST_VAR
 xchain00233_n1_α:
 mov eax, dword ptr [r12 + 256]
 cmp eax, 99
 je xchain00233_n3_α
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00233_n3_α
 cmp eax, 0
 jne xchain00233_n3_α
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 296], rax
 jmp xchain00233_n2_α
 xchain00233_n1_β:
 jmp xchain00233_n3_α
# IR_LIT_INTEGER
 xchain00233_n2_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00233_n4_α
 xchain00233_n2_β:
 jmp xchain00233_n3_α
.Lx00234_0:
 .quad 1
# KEYWORD_read
 xchain00233_n3_α:
 mov rdi, qword ptr [rip + .Lx00235_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00233_n5_α
 xchain00233_n3_β:
 jmp proc_Time___ω
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00233_n4_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00233_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00233_n6_α
 xchain00233_n4_β:
 jmp xchain00233_n3_α
# IR_VAR
 xchain00233_n5_α:
 mov rax, qword ptr [rbx + 304]
 mov rdx, qword ptr [rbx + 312]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00233_n7_α
 xchain00233_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00233_n6_α:
 mov rdi, qword ptr [rip + .Lx00236_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00233_n8_α
 xchain00233_n6_β:
 jmp xchain00233_n3_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00233_n7_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 7
 je .Lx00237_1
 cmp eax, 6
 jne .Lx00237_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx00237_0
.Lx00237_1:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 jmp .Lx00237_2
.Lx00237_0:
 lea rdi, [r12 + 112]
 lea rsi, [r12 + 144]
 lea rdx, [r12 + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00237_2:
 jmp xchain00233_n9_α
 xchain00233_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00233_n8_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 304], rax
 mov qword ptr [rbx + 312], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00233_n10_α
 xchain00233_n8_β:
 jmp xchain00233_n3_α
# IR_COERCE_NUMERIC
 xchain00233_n9_α:
 mov eax, dword ptr [r12 + 144]
 cmp eax, 7
 je .Lx00238_1
 cmp eax, 6
 jne .Lx00238_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00238_0
.Lx00238_1:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 56], rax
 jmp .Lx00238_2
.Lx00238_0:
 lea rdi, [r12 + 144]
 lea rsi, [r12 + 112]
 lea rdx, [r12 + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00238_2:
 jmp xchain00233_n11_α
 xchain00233_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00233_n10_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00233_n3_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00233_n3_α
 xchain00233_n10_β:
 jmp xchain00233_n3_α
 xchain00233_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 80]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [r12 + 48]
 cmp eax, 100
 je .Lx00239_0
 mov eax, dword ptr [r12 + 80]
 cmp eax, 6
 jne .Lx00239_2
 mov eax, dword ptr [r12 + 48]
 cmp eax, 6
 jne .Lx00239_2
.Lx00239_1:
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 56]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00233_n13_α
.Lx00239_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00239_3
.Lx00239_2:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00239_3:
 jmp xchain00233_n13_α
 xchain00233_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00233_n12_α:
 jmp qword ptr [r12 + 192]
 xchain00233_n12_β:
 jmp xchain00233_n3_α
# IR_RETURN
 xchain00233_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 376]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 368]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_Time___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 376]
pop r12
ret
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
  mov esi, 1088
  call rt_proc_set_frame_bytes@PLT
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
  .section .bss
  .align 16
__gva: .space 336, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
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
  mov rdi, qword ptr [rsp + 16]
  add rdi, 8
  mov esi, dword ptr [rsp + 24]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
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
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 4312], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 4304], rax
 pop rsi
main_α_body:
 xchain00240_n0_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00241_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00241_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00241_2
.Lx00241_1:
 call rt_faildescr@PLT
.Lx00241_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain00240_n1_α
 jmp xchain00240_n1_α
 xchain00240_n0_β:
 jmp xchain00240_n1_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "Init__"
# IR_PROC_VALUE
 xchain00240_n1_α:
 mov rdi, qword ptr [rip + .Lx00242_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain00240_n2_α
 xchain00240_n1_β:
 jmp xchain00240_n10_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "define"
# IR_PROC_VALUE
 xchain00240_n2_α:
 mov rdi, qword ptr [rip + .Lx00243_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 jmp xchain00240_n3_α
 xchain00240_n2_β:
 jmp xchain00240_n10_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "generate"
# IR_PROC_VALUE
 xchain00240_n3_α:
 mov rdi, qword ptr [rip + .Lx00244_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain00240_n4_α
 xchain00240_n3_β:
 jmp xchain00240_n10_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "grammar"
# IR_PROC_VALUE
 xchain00240_n4_α:
 mov rdi, qword ptr [rip + .Lx00245_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 jmp xchain00240_n5_α
 xchain00240_n4_β:
 jmp xchain00240_n10_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "source"
# IR_PROC_VALUE
 xchain00240_n5_α:
 mov rdi, qword ptr [rip + .Lx00246_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain00240_n6_α
 xchain00240_n5_β:
 jmp xchain00240_n10_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "comment"
# IR_PROC_VALUE
 xchain00240_n6_α:
 mov rdi, qword ptr [rip + .Lx00247_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain00240_n7_α
 xchain00240_n6_β:
 jmp xchain00240_n10_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "prompter"
# IR_PROC_VALUE
 xchain00240_n7_α:
 mov rdi, qword ptr [rip + .Lx00248_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 jmp xchain00240_n8_α
 xchain00240_n7_β:
 jmp xchain00240_n10_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "error"
# IR_MAKE_LIST
 xchain00240_n8_α:
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 3944], rax
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 3960], rax
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 3976], rax
 mov rax, qword ptr [r12 + 4144]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4152]
 mov qword ptr [r12 + 3992], rax
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4008], rax
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4016], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4024], rax
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4040], rax
 lea rdi, [r12 + 3936]
 mov esi, 7
 call rt_make_list@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 jmp xchain00240_n9_α
 xchain00240_n8_β:
 jmp xchain00240_n10_α
 xchain00240_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3920]
 mov rdx, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain00240_n10_α
 xchain00240_n9_β:
 jmp xchain00240_n10_α
 xchain00240_n10_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1120: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1120]
 lea rsi, [r12 + 3888]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 cmp eax, 99
 je xchain00240_n12_α
 jmp xchain00240_n11_α
 xchain00240_n10_β:
 jmp xchain00240_n12_α
# IR_ASSIGN gva
 xchain00240_n11_α:
 mov rax, qword ptr [r12 + 3872]
 mov rdx, qword ptr [r12 + 3880]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 jmp xchain00240_n12_α
 xchain00240_n11_β:
 jmp xchain00240_n12_α
# IR_VAR_REF
 xchain00240_n12_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain00240_n13_α
 xchain00240_n12_β:
 jmp xchain00240_n16_α
# IR_LIT_STRING
 xchain00240_n13_α:
 mov qword ptr [r12 + 3680], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 3688], rax
 jmp xchain00240_n14_α
 xchain00240_n13_β:
 jmp xchain00240_n16_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "lb"
# IR_SUBSCRIPT x[i] variable
 xchain00240_n14_α:
 mov rdi, qword ptr [r12 + 3648]
 mov rsi, qword ptr [r12 + 3656]
 mov rdx, qword ptr [r12 + 3680]
 mov rcx, qword ptr [r12 + 3688]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n16_α
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain00240_n15_α
 xchain00240_n14_β:
 jmp xchain00240_n16_α
# IR_LIT_STRING
 xchain00240_n15_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain00240_n17_α
 xchain00240_n15_β:
 jmp xchain00240_n16_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "<"
# IR_VAR_REF
 xchain00240_n16_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain00240_n18_α
 xchain00240_n16_β:
 jmp xchain00240_n23_α
# IR_MAKE_LIST
 xchain00240_n17_α:
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3816], rax
 lea rdi, [r12 + 3808]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 jmp xchain00240_n19_α
 xchain00240_n17_β:
 jmp xchain00240_n16_α
# IR_LIT_STRING
 xchain00240_n18_α:
 mov qword ptr [r12 + 3472], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 3480], rax
 jmp xchain00240_n20_α
 xchain00240_n18_β:
 jmp xchain00240_n23_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "rb"
# IR_MAKE_LIST
 xchain00240_n19_α:
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 3784], rax
 lea rdi, [r12 + 3776]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 jmp xchain00240_n21_α
 xchain00240_n19_β:
 jmp xchain00240_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n20_α:
 mov rdi, qword ptr [r12 + 3440]
 mov rsi, qword ptr [r12 + 3448]
 mov rdx, qword ptr [r12 + 3472]
 mov rcx, qword ptr [r12 + 3480]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n23_α
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain00240_n22_α
 xchain00240_n20_β:
 jmp xchain00240_n23_α
# IR_ASSIGN_VAR
 xchain00240_n21_α:
 mov rdi, qword ptr [r12 + 3712]
 mov rsi, qword ptr [r12 + 3720]
 mov rdx, qword ptr [r12 + 3760]
 mov rcx, qword ptr [r12 + 3768]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n16_α
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain00240_n16_α
 xchain00240_n21_β:
 jmp xchain00240_n16_α
# IR_LIT_STRING
 xchain00240_n22_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain00240_n24_α
 xchain00240_n22_β:
 jmp xchain00240_n23_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string ">"
# IR_VAR_REF
 xchain00240_n23_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain00240_n25_α
 xchain00240_n23_β:
 jmp xchain00240_n30_α
# IR_MAKE_LIST
 xchain00240_n24_α:
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3608], rax
 lea rdi, [r12 + 3600]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00240_n26_α
 xchain00240_n24_β:
 jmp xchain00240_n23_α
# IR_LIT_STRING
 xchain00240_n25_α:
 mov qword ptr [r12 + 3264], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain00240_n27_α
 xchain00240_n25_β:
 jmp xchain00240_n30_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "vb"
# IR_MAKE_LIST
 xchain00240_n26_α:
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3576], rax
 lea rdi, [r12 + 3568]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain00240_n28_α
 xchain00240_n26_β:
 jmp xchain00240_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n27_α:
 mov rdi, qword ptr [r12 + 3232]
 mov rsi, qword ptr [r12 + 3240]
 mov rdx, qword ptr [r12 + 3264]
 mov rcx, qword ptr [r12 + 3272]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n30_α
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain00240_n29_α
 xchain00240_n27_β:
 jmp xchain00240_n30_α
# IR_ASSIGN_VAR
 xchain00240_n28_α:
 mov rdi, qword ptr [r12 + 3504]
 mov rsi, qword ptr [r12 + 3512]
 mov rdx, qword ptr [r12 + 3552]
 mov rcx, qword ptr [r12 + 3560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n23_α
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain00240_n23_α
 xchain00240_n28_β:
 jmp xchain00240_n23_α
# IR_LIT_STRING
 xchain00240_n29_α:
 mov qword ptr [r12 + 3408], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 3416], rax
 jmp xchain00240_n31_α
 xchain00240_n29_β:
 jmp xchain00240_n30_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "|"
# IR_VAR_REF
 xchain00240_n30_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain00240_n32_α
 xchain00240_n30_β:
 jmp xchain00240_n37_α
# IR_MAKE_LIST
 xchain00240_n31_α:
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 3400], rax
 lea rdi, [r12 + 3392]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain00240_n33_α
 xchain00240_n31_β:
 jmp xchain00240_n30_α
# IR_LIT_STRING
 xchain00240_n32_α:
 mov qword ptr [r12 + 3056], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 3064], rax
 jmp xchain00240_n34_α
 xchain00240_n32_β:
 jmp xchain00240_n37_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "nl"
# IR_MAKE_LIST
 xchain00240_n33_α:
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3368], rax
 lea rdi, [r12 + 3360]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00240_n35_α
 xchain00240_n33_β:
 jmp xchain00240_n30_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n34_α:
 mov rdi, qword ptr [r12 + 3024]
 mov rsi, qword ptr [r12 + 3032]
 mov rdx, qword ptr [r12 + 3056]
 mov rcx, qword ptr [r12 + 3064]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n37_α
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 jmp xchain00240_n36_α
 xchain00240_n34_β:
 jmp xchain00240_n37_α
# IR_ASSIGN_VAR
 xchain00240_n35_α:
 mov rdi, qword ptr [r12 + 3296]
 mov rsi, qword ptr [r12 + 3304]
 mov rdx, qword ptr [r12 + 3344]
 mov rcx, qword ptr [r12 + 3352]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n30_α
 mov qword ptr [r12 + 3328], rax
 mov qword ptr [r12 + 3336], rdx
 jmp xchain00240_n30_α
 xchain00240_n35_β:
 jmp xchain00240_n30_α
# IR_LIT_STRING
 xchain00240_n36_α:
 mov qword ptr [r12 + 3200], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain00240_n38_α
 xchain00240_n36_β:
 jmp xchain00240_n37_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "\n"
# IR_VAR_REF
 xchain00240_n37_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00240_n39_α
 xchain00240_n37_β:
 jmp xchain00240_n44_α
# IR_MAKE_LIST
 xchain00240_n38_α:
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3192], rax
 lea rdi, [r12 + 3184]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 jmp xchain00240_n40_α
 xchain00240_n38_β:
 jmp xchain00240_n37_α
# IR_LIT_STRING
 xchain00240_n39_α:
 mov qword ptr [r12 + 2848], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain00240_n41_α
 xchain00240_n39_β:
 jmp xchain00240_n44_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string ""
# IR_MAKE_LIST
 xchain00240_n40_α:
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3160], rax
 lea rdi, [r12 + 3152]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain00240_n42_α
 xchain00240_n40_β:
 jmp xchain00240_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n41_α:
 mov rdi, qword ptr [r12 + 2816]
 mov rsi, qword ptr [r12 + 2824]
 mov rdx, qword ptr [r12 + 2848]
 mov rcx, qword ptr [r12 + 2856]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n44_α
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain00240_n43_α
 xchain00240_n41_β:
 jmp xchain00240_n44_α
# IR_ASSIGN_VAR
 xchain00240_n42_α:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 3136]
 mov rcx, qword ptr [r12 + 3144]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n37_α
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain00240_n37_α
 xchain00240_n42_β:
 jmp xchain00240_n37_α
# IR_LIT_STRING
 xchain00240_n43_α:
 mov qword ptr [r12 + 2992], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 3000], rax
 jmp xchain00240_n45_α
 xchain00240_n43_β:
 jmp xchain00240_n44_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string ""
# IR_VAR_REF
 xchain00240_n44_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 jmp xchain00240_n46_α
 xchain00240_n44_β:
 jmp xchain00240_n51_α
# IR_MAKE_LIST
 xchain00240_n45_α:
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 2984], rax
 lea rdi, [r12 + 2976]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00240_n47_α
 xchain00240_n45_β:
 jmp xchain00240_n44_α
# IR_LIT_STRING
 xchain00240_n46_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 2600], rax
 jmp xchain00240_n48_α
 xchain00240_n46_β:
 jmp xchain00240_n51_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "&lcase"
# IR_MAKE_LIST
 xchain00240_n47_α:
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2952], rax
 lea rdi, [r12 + 2944]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain00240_n49_α
 xchain00240_n47_β:
 jmp xchain00240_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n48_α:
 mov rdi, qword ptr [r12 + 2560]
 mov rsi, qword ptr [r12 + 2568]
 mov rdx, qword ptr [r12 + 2592]
 mov rcx, qword ptr [r12 + 2600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n51_α
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00240_n50_α
 xchain00240_n48_β:
 jmp xchain00240_n51_α
# IR_ASSIGN_VAR
 xchain00240_n49_α:
 mov rdi, qword ptr [r12 + 2880]
 mov rsi, qword ptr [r12 + 2888]
 mov rdx, qword ptr [r12 + 2928]
 mov rcx, qword ptr [r12 + 2936]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n44_α
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00240_n44_α
 xchain00240_n49_β:
 jmp xchain00240_n44_α
# IR_LIT_CHARSET
 xchain00240_n50_α:
 mov qword ptr [r12 + 2784], 1
 mov dword ptr [r12 + 2788], -1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 2792], rax
 jmp xchain00240_n52_α
 xchain00240_n50_β:
 jmp xchain00240_n51_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR_REF
 xchain00240_n51_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00240_n53_α
 xchain00240_n51_β:
 jmp xchain00240_n58_α
 xchain00240_n52_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2752]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2760], rax
  .section .rodata
  .Lrkfn1180: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1180]
 lea rsi, [r12 + 2752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain00240_n51_α
 jmp xchain00240_n54_α
 xchain00240_n52_β:
 jmp xchain00240_n51_α
# IR_LIT_STRING
 xchain00240_n53_α:
 mov qword ptr [r12 + 2336], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 2344], rax
 jmp xchain00240_n55_α
 xchain00240_n53_β:
 jmp xchain00240_n58_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "&ucase"
# IR_MAKE_LIST
 xchain00240_n54_α:
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2728], rax
 lea rdi, [r12 + 2720]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain00240_n56_α
 xchain00240_n54_β:
 jmp xchain00240_n51_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n55_α:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2336]
 mov rcx, qword ptr [r12 + 2344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n58_α
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain00240_n57_α
 xchain00240_n55_β:
 jmp xchain00240_n58_α
# IR_MAKE_LIST
 xchain00240_n56_α:
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2696], rax
 lea rdi, [r12 + 2688]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00240_n59_α
 xchain00240_n56_β:
 jmp xchain00240_n51_α
# IR_LIT_CHARSET
 xchain00240_n57_α:
 mov qword ptr [r12 + 2528], 1
 mov dword ptr [r12 + 2532], -1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 2536], rax
 jmp xchain00240_n60_α
 xchain00240_n57_β:
 jmp xchain00240_n58_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# IR_VAR_REF
 xchain00240_n58_α:
 lea rdi, [rbx + 0]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00240_n61_α
 xchain00240_n58_β:
 jmp xchain00240_n66_α
# IR_ASSIGN_VAR
 xchain00240_n59_α:
 mov rdi, qword ptr [r12 + 2624]
 mov rsi, qword ptr [r12 + 2632]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n51_α
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain00240_n51_α
 xchain00240_n59_β:
 jmp xchain00240_n51_α
 xchain00240_n60_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2496]
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2504], rax
  .section .rodata
  .Lrkfn1192: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1192]
 lea rsi, [r12 + 2496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp eax, 99
 je xchain00240_n58_α
 jmp xchain00240_n62_α
 xchain00240_n60_β:
 jmp xchain00240_n58_α
# IR_LIT_STRING
 xchain00240_n61_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain00240_n63_α
 xchain00240_n61_β:
 jmp xchain00240_n66_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "&digit"
# IR_MAKE_LIST
 xchain00240_n62_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2472], rax
 lea rdi, [r12 + 2464]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 jmp xchain00240_n64_α
 xchain00240_n62_β:
 jmp xchain00240_n58_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n63_α:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n66_α
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00240_n65_α
 xchain00240_n63_β:
 jmp xchain00240_n66_α
# IR_MAKE_LIST
 xchain00240_n64_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2440], rax
 lea rdi, [r12 + 2432]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain00240_n67_α
 xchain00240_n64_β:
 jmp xchain00240_n58_α
# IR_LIT_CHARSET
 xchain00240_n65_α:
 mov qword ptr [r12 + 2272], 1
 mov dword ptr [r12 + 2276], -1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain00240_n68_α
 xchain00240_n65_β:
 jmp xchain00240_n66_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "0123456789"
# IR_VAR
 xchain00240_n66_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00240_n69_α
 xchain00240_n66_β:
 jmp xchain00240_n70_α
# IR_ASSIGN_VAR
 xchain00240_n67_α:
 mov rdi, qword ptr [r12 + 2368]
 mov rsi, qword ptr [r12 + 2376]
 mov rdx, qword ptr [r12 + 2416]
 mov rcx, qword ptr [r12 + 2424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n58_α
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain00240_n58_α
 xchain00240_n67_β:
 jmp xchain00240_n58_α
 xchain00240_n68_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2240]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lrkfn1204: .string "charset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1204]
 lea rsi, [r12 + 2240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain00240_n66_α
 jmp xchain00240_n71_α
 xchain00240_n68_β:
 jmp xchain00240_n66_α
# IR_LIT_STRING
 xchain00240_n69_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain00240_n72_α
 xchain00240_n69_β:
 jmp xchain00240_n70_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "tl+s+"
# IR_VAR_REF
 xchain00240_n70_α:
 lea rdi, [r12 + 4352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain00240_n73_α
 xchain00240_n70_β:
 jmp xchain00240_n79_α
# IR_MAKE_LIST
 xchain00240_n71_α:
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2216], rax
 lea rdi, [r12 + 2208]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00240_n74_α
 xchain00240_n71_β:
 jmp xchain00240_n66_α
 xchain00240_n72_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00266_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00266_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00266_2
.Lx00266_1:
 call rt_faildescr@PLT
.Lx00266_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain00240_n70_α
 jmp xchain00240_n75_α
 xchain00240_n72_β:
 jmp xchain00240_n70_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00240_n73_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00240_n76_α
 xchain00240_n73_β:
 jmp xchain00240_n79_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "l"
# IR_MAKE_LIST
 xchain00240_n74_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2184], rax
 lea rdi, [r12 + 2176]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain00240_n77_α
 xchain00240_n74_β:
 jmp xchain00240_n66_α
 xchain00240_n75_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00240_n70_α
 xchain00240_n75_β:
 jmp xchain00240_n70_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n76_α:
 mov rdi, qword ptr [r12 + 1792]
 mov rsi, qword ptr [r12 + 1800]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n79_α
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00240_n78_α
 xchain00240_n76_β:
 jmp xchain00240_n79_α
# IR_ASSIGN_VAR
 xchain00240_n77_α:
 mov rdi, qword ptr [r12 + 2112]
 mov rsi, qword ptr [r12 + 2120]
 mov rdx, qword ptr [r12 + 2160]
 mov rcx, qword ptr [r12 + 2168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00240_n66_α
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00240_n66_α
 xchain00240_n77_β:
 jmp xchain00240_n66_α
# IR_DEREF variable -> value
 xchain00240_n78_α:
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00240_n79_α
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain00240_n80_α
 xchain00240_n78_β:
 jmp xchain00240_n79_α
# IR_LIT_INTEGER
 xchain00240_n79_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain00240_n81_α
 xchain00240_n79_β:
 jmp xchain00240_n84_α
.Lx00268_0:
 .quad 1000
# IR_UNOP
 xchain00240_n80_α:
 mov eax, dword ptr [r12 + 1888]
 cmp eax, 99
 je xchain00240_n79_α
 cmp eax, 0
 je xchain00240_n79_α
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1768], rax
 jmp xchain00240_n82_α
 xchain00240_n80_β:
 jmp xchain00240_n79_α
# IR_MOVE_LABEL
 xchain00240_n81_α:
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00240_n84_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00240_n83_α
 xchain00240_n81_β:
 jmp xchain00240_n84_α
# IR_MOVE_LABEL
 xchain00240_n82_α:
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1704], rax
 lea rax, [rip + xchain00240_n79_α]
 mov qword ptr [r12 + 1712], rax
 jmp xchain00240_n83_α
 xchain00240_n82_β:
 jmp xchain00240_n84_α
# IR_ASSIGN gva
 xchain00240_n83_α:
 mov rax, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain00240_n84_α
 xchain00240_n83_β:
 jmp xchain00240_n84_α
# IR_VAR_REF
 xchain00240_n84_α:
 lea rdi, [r12 + 4352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00240_n86_α
 xchain00240_n84_β:
 jmp xchain00240_n89_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00240_n85_α:
 jmp qword ptr [r12 + 1712]
 xchain00240_n85_β:
 jmp xchain00240_n84_α
# IR_LIT_STRING
 xchain00240_n86_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain00240_n87_α
 xchain00240_n86_β:
 jmp xchain00240_n89_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "t"
# IR_SUBSCRIPT x[i] variable
 xchain00240_n87_α:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n89_α
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain00240_n88_α
 xchain00240_n87_β:
 jmp xchain00240_n89_α
# IR_DEREF variable -> value
 xchain00240_n88_α:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00240_n89_α
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00240_n90_α
 xchain00240_n88_β:
 jmp xchain00240_n89_α
# IR_VAR_REF
 xchain00240_n89_α:
 lea rdi, [r12 + 4352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00240_n91_α
 xchain00240_n89_β:
 jmp xchain00240_n95_α
# IR_UNOP
 xchain00240_n90_α:
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 99
 je xchain00240_n89_α
 cmp eax, 0
 je xchain00240_n89_α
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1544], rax
 jmp xchain00240_n92_α
 xchain00240_n90_β:
 jmp xchain00240_n89_α
# IR_LIT_STRING
 xchain00240_n91_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00240_n93_α
 xchain00240_n91_β:
 jmp xchain00240_n95_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "s"
# IR_ASSIGN gva
 xchain00240_n92_α:
 mov rax, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00240_n89_α
 xchain00240_n92_β:
 jmp xchain00240_n89_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n93_α:
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n95_α
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00240_n94_α
 xchain00240_n93_β:
 jmp xchain00240_n95_α
# IR_DEREF variable -> value
 xchain00240_n94_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00240_n95_α
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain00240_n96_α
 xchain00240_n94_β:
 jmp xchain00240_n95_α
# KEYWORD_read
 xchain00240_n95_α:
 mov rdi, qword ptr [rip + .Lx00271_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00240_n97_α
 xchain00240_n95_β:
 jmp xchain00240_n00001_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "&input"
# IR_UNOP
 xchain00240_n96_α:
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 99
 je xchain00240_n95_α
 cmp eax, 0
 je xchain00240_n95_α
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1384], rax
 jmp xchain00240_n98_α
 xchain00240_n96_β:
 jmp xchain00240_n95_α
# IR_MAKE_LIST
 xchain00240_n97_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1320], rax
 lea rdi, [r12 + 1312]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain00240_n99_α
 xchain00240_n97_β:
 jmp xchain00240_n00001_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00240_n98_α:
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00240_n95_α
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain00240_n95_α
 xchain00240_n98_β:
 jmp xchain00240_n95_α
# IR_ASSIGN gva
 xchain00240_n99_α:
 mov rax, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00240_n00001_α
 xchain00240_n99_β:
 jmp xchain00240_n00001_α
# IR_LIT_STRING
 xchain00240_n00001_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain00240_n00160_α
 xchain00240_n00001_β:
 jmp xchain00240_n00002_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string ""
# IR_ASSIGN gva
 xchain00240_n00160_α:
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00240_n00002_α
 xchain00240_n00160_β:
 jmp xchain00240_n00002_α
# IR_VAR
 xchain00240_n00002_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00240_n00161_α
 xchain00240_n00002_β:
 jmp xchain00240_n00163_α
 xchain00240_n00161_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn1250: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1250]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00240_n00163_α
 jmp xchain00240_n00164_α
 xchain00240_n00161_β:
 jmp xchain00240_n00163_α
 xchain00240_n00163_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00273_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00273_1
 mov rcx, rsp
 sub rsp, rax
 sub rsp, 16
 and rsp, -16
 mov qword ptr [rsp + 0], rcx
 mov rdi, rsp
 add rdi, 16
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 add rdi, 16
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 mov rsp, qword ptr [rsp + 0]
 call rt_proc_call_epilogue@PLT
 jmp .Lx00273_2
.Lx00273_1:
 call rt_faildescr@PLT
.Lx00273_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00240_n00163_β:
 jmp main_ω
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "Term__"
# IR_ASSIGN gva
 xchain00240_n00164_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00240_n00003_α
 xchain00240_n00164_β:
 jmp xchain00240_n00163_α
# IR_VAR
 xchain00240_n00003_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00240_n00165_α
 xchain00240_n00003_β:
 jmp xchain00240_n00004_α
# IR_UNOP
 xchain00240_n00165_α:
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00240_n00166_α
 xchain00240_n00165_β:
 jmp xchain00240_n00004_α
# IR_VAR
 xchain00240_n00004_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain00240_n00005_α
 xchain00240_n00004_β:
 jmp xchain00240_n00172_α
# IR_LIT_INTEGER
 xchain00240_n00166_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain00240_n00169_α
 xchain00240_n00166_β:
 jmp xchain00240_n00004_α
.Lx00274_0:
 .quad 0
 xchain00240_n00005_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn1259: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1259]
 lea rsi, [r12 + 928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00240_n00172_α
 jmp xchain00240_n00171_α
 xchain00240_n00005_β:
 jmp xchain00240_n00172_α
 xchain00240_n00168_α:
 jmp xchain00240_n00172_α
xchain00240_n00168_β:
 jmp xchain00240_n00172_α
 xchain00240_n00169_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 100
 je .Lx00275_0
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 100
 je .Lx00275_0
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 6
 jne .Lx00275_2
 mov eax, dword ptr [r12 + 1200]
 cmp eax, 6
 jne .Lx00275_2
.Lx00275_1:
 mov rax, qword ptr [r12 + 1144]
 mov rcx, qword ptr [r12 + 1208]
 cmp rax, rcx
 je xchain00240_n00004_α
 mov rcx, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1104], rcx
 mov rcx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1112], rcx
 jmp xchain00240_n00175_α
.Lx00275_0:
 mov rdi, qword ptr [r12 + 1136]
 mov rsi, qword ptr [r12 + 1144]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 10
 lea r9, [r12 + 1104]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00275_1
 cmp eax, 1
 je xchain00240_n00004_α
 jmp xchain00240_n00175_α
.Lx00275_2:
 mov rdi, qword ptr [r12 + 1136]
 mov rsi, qword ptr [r12 + 1144]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00240_n00004_α
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00240_n00175_α
 xchain00240_n00169_β:
 jmp xchain00240_n00004_α
# IR_MOVE_LABEL
 xchain00240_n00171_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
 lea rax, [rip + xchain00240_n00168_α]
 mov qword ptr [r12 + 896], rax
 jmp xchain00240_n00174_α
 xchain00240_n00171_β:
 jmp xchain00240_n00007_α
# IR_VAR
 xchain00240_n00172_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00240_n00177_α
 xchain00240_n00172_β:
 jmp xchain00240_n00002_α
# IR_VAR
 xchain00240_n00175_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00240_n00006_α
 xchain00240_n00175_β:
 jmp xchain00240_n00004_α
 xchain00240_n00174_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00240_n00007_α
 xchain00240_n00174_β:
 jmp xchain00240_n00007_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00240_n00173_α:
 jmp qword ptr [r12 + 896]
 xchain00240_n00173_β:
 jmp xchain00240_n00007_α
 xchain00240_n00177_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn1270: .string "close"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1270]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00240_n00002_α
 jmp xchain00240_n00276_α
 xchain00240_n00177_β:
 jmp xchain00240_n00002_α
 xchain00240_n00006_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn1272: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1272]
 lea rsi, [r12 + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain00240_n00004_α
 jmp xchain00240_n00277_α
 xchain00240_n00006_β:
 jmp xchain00240_n00004_α
# IR_VAR_REF
 xchain00240_n00007_α:
 lea rdi, [r12 + 4336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00240_n00278_α
 xchain00240_n00007_β:
 jmp xchain00240_n00279_α
 xchain00240_n00276_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
 jmp xchain00240_n00002_α
xchain00240_n00276_β:
 jmp xchain00240_n00002_α
# IR_MOVE_LABEL
 xchain00240_n00277_α:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
 lea rax, [rip + xchain00240_n00004_α]
 mov qword ptr [r12 + 1008], rax
 jmp xchain00240_n00004_α
 xchain00240_n00277_β:
 jmp xchain00240_n00004_α
# IR_LIT_INTEGER
 xchain00240_n00278_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00240_n00281_α
 xchain00240_n00278_β:
 jmp xchain00240_n00279_α
.Lx00280_0:
 .quad 18446744073709551615
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00240_n00282_α:
 jmp qword ptr [r12 + 1008]
 xchain00240_n00282_β:
 jmp xchain00240_n00004_α
# IR_SUBSCRIPT x[i] variable
 xchain00240_n00281_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00240_n00279_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00240_n00008_α
 xchain00240_n00281_β:
 jmp xchain00240_n00279_α
# IR_DEREF variable -> value
 xchain00240_n00008_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00240_n00279_α
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00240_n00283_α
 xchain00240_n00008_β:
 jmp xchain00240_n00279_α
# IR_VAR
 xchain00240_n00279_α:
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 312], rax
 jmp xchain00240_n00284_α
 xchain00240_n00279_β:
 jmp xchain00240_n00003_α
# IR_LIT_STRING
 xchain00240_n00283_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00240_n00286_α
 xchain00240_n00283_β:
 jmp xchain00240_n00279_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "\\"
# IR_LIST_BANG
 xchain00240_n00284_α:
 mov qword ptr [r12 + 288], 0
.Lx00287_0:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp rax, 99
 je xchain00240_n00003_α
 jmp xchain00240_n00288_α
 xchain00240_n00284_β:
 inc qword ptr [r12 + 288]
 jmp .Lx00287_0
 xchain00240_n00286_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00240_n00279_α
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00240_n00289_α
 xchain00240_n00286_β:
 jmp xchain00240_n00279_α
# IR_VAR
 xchain00240_n00288_α:
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 376], rax
 jmp xchain00240_n00290_α
 xchain00240_n00288_β:
 jmp xchain00240_n00284_β
# IR_VAR
 xchain00240_n00289_α:
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 696], rax
 jmp xchain00240_n00291_α
 xchain00240_n00289_β:
 jmp xchain00240_n00279_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00240_n00290_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 360], rax
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 lea rdx, [r12 + 352]
 mov ecx, 1
 lea r8, [r12 + 368]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain00240_n00284_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00240_n00292_α
 xchain00240_n00290_β:
 lea rdi, [r12 + 368]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00240_n00284_β
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00240_n00292_α
 jmp xchain00240_n00284_β
# IR_LIT_INTEGER
 xchain00240_n00291_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00240_n00294_α
 xchain00240_n00291_β:
 jmp xchain00240_n00279_α
.Lx00293_0:
 .quad 1
 xchain00240_n00295_α:
 jmp xchain00240_n00279_α
xchain00240_n00295_β:
 jmp xchain00240_n00279_α
 xchain00240_n00292_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
 jmp xchain00240_n00003_α
xchain00240_n00292_β:
 jmp xchain00240_n00003_α
# IR_LIT_INTEGER
 xchain00240_n00294_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain00240_n00297_α
 xchain00240_n00294_β:
 jmp xchain00240_n00279_α
.Lx00296_0:
 .quad 18446744073709551615
# IR_SUBSCRIPT section
 xchain00240_n00297_α:
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8, qword ptr [r12 + 752]
 mov r9, qword ptr [r12 + 760]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00240_n00279_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00240_n00298_α
 xchain00240_n00297_β:
 jmp xchain00240_n00279_α
# IR_VAR
 xchain00240_n00298_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain00240_n00299_α
 xchain00240_n00298_β:
 jmp xchain00240_n00279_α
 xchain00240_n00299_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn1302: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1302]
 lea rsi, [r12 + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00240_n00279_α
 jmp xchain00240_n00300_α
 xchain00240_n00299_β:
 jmp xchain00240_n00279_α
 xchain00240_n00300_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call str_concat_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00240_n00301_α
 xchain00240_n00300_β:
 jmp xchain00240_n00279_α
# IR_MOVE_LABEL
 xchain00240_n00301_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
 lea rax, [rip + xchain00240_n00295_α]
 mov qword ptr [r12 + 608], rax
 jmp xchain00240_n00302_α
 xchain00240_n00301_β:
 jmp xchain00240_n00007_α
 xchain00240_n00302_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00240_n00007_α
 xchain00240_n00302_β:
 jmp xchain00240_n00007_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00240_n00303_α:
 jmp qword ptr [r12 + 608]
 xchain00240_n00303_β:
 jmp xchain00240_n00007_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 4312]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 4304]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 4312]
pop r12
ret
