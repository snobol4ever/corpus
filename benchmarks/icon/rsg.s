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
 xchain0_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain0_n3_α
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
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 40], rax
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n7_α
# IR_RETURN
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_alts_γ
# IR_DISJUNCTION_NARY
 xchain0_n7_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain0_n10_α
xchain0_n7_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx14_0
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n9_α
.Lx14_0:
 cmp eax, 1
 jne .Lx14_1
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n9_α
.Lx14_1:
 jmp xchain0_n9_α
 xchain0_n7_β:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 je xchain0_n11_β
 jmp xchain0_n7_af
xchain0_n7_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 cmp eax, 1
 je xchain0_n12_α
 jmp xchain0_n8_α
# IR_GEN_SCAN
 xchain0_n8_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain0_n4_α
 xchain0_n8_β:
 jmp xchain0_n4_α
# IR_SCAN_TAB
 xchain0_n9_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 328]
 cmp rax, 1
 jge .Lx18_0
 add rax, r15
 add rax, 1
.Lx18_0:
 cmp rax, 1
 jge .Lx18_239
 add rsp, 16
 jmp xchain0_n7_β
.Lx18_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx18_240
 add rsp, 16
 jmp xchain0_n7_β
.Lx18_240:
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
 jmp xchain0_n13_α
 xchain0_n9_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n7_β
# IR_LIT_CHARSET
 xchain0_n10_α:
 mov qword ptr [rbp + 384], 1
 mov dword ptr [rbp + 388], -1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n7_af
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "|"
# IR_SCAN_UPTO
 xchain0_n11_α:
 mov qword ptr [rbp + 368], r14
.Lx21_0:
 mov rax, qword ptr [rbp + 368]
 cmp rax, r15
 jge xchain0_n7_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx21_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx21_1
 mov qword ptr [rbp + 352], 6
 add rax, 1
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n7_as
.Lx21_1:
 inc qword ptr [rbp + 368]
 jmp .Lx21_0
 xchain0_n11_β:
 inc qword ptr [rbp + 368]
 jmp .Lx21_0
.Lx21_2:
 .quad .Lx21_2_s
.Lx21_2_s:
 .string "|"
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n7_as
 xchain0_n12_β:
 jmp xchain0_n7_af
.Lx22_0:
 .quad 0
 xchain0_n13_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 14
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx24_1
 lea rcx, [rip + .Lx24_3]
 lea rdx, [rip + .Lx24_4]
 jmp rax
.Lx24_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx24_2
.Lx24_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx24_2
.Lx24_1:
 call rt_faildescr@PLT
.Lx24_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n8_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "syms"
 xchain0_n14_α:
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
  .Lrkfn26: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n8_α
# IR_DISJUNCTION_NARY
 xchain0_n15_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain0_n16_α
xchain0_n15_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx28_0
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 jmp xchain0_n5_α
.Lx28_0:
 cmp eax, 1
 jne .Lx28_1
 jmp xchain0_n5_α
.Lx28_1:
 jmp xchain0_n5_α
 xchain0_n15_β:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 je xchain0_n15_af
 jmp xchain0_n15_af
xchain0_n15_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 cmp eax, 1
 je xchain0_n17_α
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n15_af
.Lx29_0:
 .quad 1
 xchain0_n17_α:
 jmp xchain0_n19_α
xchain0_n17_β:
 jmp xchain0_n19_α
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain0_n18_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx32_239
 add rsp, 16
 jmp xchain0_n15_af
.Lx32_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx32_240
 add rsp, 16
 jmp xchain0_n15_af
.Lx32_240:
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
 jmp xchain0_n15_as
 xchain0_n18_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain0_n15_af
# IR_GEN_SCAN
 xchain0_n19_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain0_n4_α
 xchain0_n19_β:
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
# IR_DISJUNCTION_NARY
 xchain35_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain35_n1_α
xchain35_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx37_0
 jmp proc_comment_ω
.Lx37_0:
 jmp proc_comment_ω
 xchain35_n0_β:
 mov eax, dword ptr [rbp + 48]
 jmp proc_comment_ω
xchain35_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 jmp proc_comment_ω
# IR_VAR_REF
 xchain35_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain35_n2_α
 xchain35_n1_β:
 jmp xchain35_n0_af
# IR_LIT_INTEGER
 xchain35_n2_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain35_n3_α
.Lx40_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain35_n3_α:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain35_n0_af
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain35_n4_α
# IR_DEREF variable -> value
 xchain35_n4_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain35_n0_af
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain35_n5_α
# IR_LIT_STRING
 xchain35_n5_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain35_n6_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "#"
 xchain35_n6_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain35_n0_af
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain35_n7_α
# IR_RETURN
 xchain35_n7_α:
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
 xchain46_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 600], rax
 jmp xchain46_n1_α
# IR_GEN_SCAN
 xchain46_n1_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain46_n2_α
# IR_VAR_REF
 xchain46_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain46_n3_α
# IR_LIT_STRING
 xchain46_n3_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain46_n4_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain46_n4_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx55_239
 add rsp, 16
 jmp xchain46_n6_α
.Lx55_239:
 mov rdi, qword ptr [rip + .Lx55_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx55_240
 add rsp, 16
 jmp xchain46_n6_α
.Lx55_240:
 mov qword ptr [rbp + 288], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 296], rax
 jmp xchain46_n5_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain46_n5_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 296]
 cmp rax, 1
 jge .Lx57_0
 add rax, r15
 add rax, 1
.Lx57_0:
 cmp rax, 1
 jge .Lx57_239
 add rsp, 16
 jmp xchain46_n6_α
.Lx57_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx57_240
 add rsp, 16
 jmp xchain46_n6_α
.Lx57_240:
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
 jmp xchain46_n6_α
 xchain46_n5_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain46_n6_α
# IR_LIT_STRING
 xchain46_n6_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain46_n7_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string ">::="
# IR_SCAN_FIND
 xchain46_n7_α:
 mov qword ptr [rbp + 208], r14
.Lx60_0:
 mov rax, qword ptr [rbp + 208]
 mov rcx, r15
 sub rcx, 4
 cmp rax, rcx
 jg xchain46_n10_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx60_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx60_1
 mov rcx, rax
 add rcx, 2
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 58
 jne .Lx60_1
 mov rcx, rax
 add rcx, 3
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 61
 jne .Lx60_1
 mov qword ptr [rbp + 192], 6
 add rax, 1
 mov qword ptr [rbp + 200], rax
 jmp xchain46_n8_α
.Lx60_1:
 inc qword ptr [rbp + 208]
 jmp .Lx60_0
 xchain46_n7_β:
 inc qword ptr [rbp + 208]
 jmp .Lx60_0
# IR_SCAN_TAB
 xchain46_n8_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 200]
 cmp rax, 1
 jge .Lx62_0
 add rax, r15
 add rax, 1
.Lx62_0:
 cmp rax, 1
 jge .Lx62_239
 add rsp, 16
 jmp xchain46_n10_α
.Lx62_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx62_240
 add rsp, 16
 jmp xchain46_n10_α
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
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain46_n9_α
 xchain46_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain46_n10_α
 xchain46_n9_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 152], rax
 jmp xchain46_n11_α
xchain46_n9_β:
 jmp xchain46_n10_α
# IR_GEN_SCAN
 xchain46_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_define_ω
 xchain46_n10_β:
 jmp proc_define_ω
# IR_SUBSCRIPT x[i] variable
 xchain46_n11_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain46_n7_β
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain46_n12_α
# IR_LIT_INTEGER
 xchain46_n12_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain46_n13_α
.Lx67_0:
 .quad 4
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain46_n13_α:
 sub rsp, 16
 mov rax, 4
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx69_239
 add rsp, 16
 jmp xchain46_n14_α
.Lx69_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx69_240
 add rsp, 16
 jmp xchain46_n14_α
.Lx69_240:
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
 jmp xchain46_n14_α
 xchain46_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain46_n14_α
# IR_LIT_INTEGER
 xchain46_n14_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain46_n15_α
.Lx70_0:
 .quad 0
# IR_SCAN_TAB
 xchain46_n15_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx72_0
 add rax, r15
 add rax, 1
.Lx72_0:
 cmp rax, 1
 jge .Lx72_239
 add rsp, 16
 jmp xchain46_n7_β
.Lx72_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx72_240
 add rsp, 16
 jmp xchain46_n7_β
.Lx72_240:
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
 jmp xchain46_n16_α
 xchain46_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain46_n7_β
 xchain46_n16_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx74_1
 lea rcx, [rip + .Lx74_3]
 lea rdx, [rip + .Lx74_4]
 jmp rax
.Lx74_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx74_2
.Lx74_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx74_2
.Lx74_1:
 call rt_faildescr@PLT
.Lx74_2:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain46_n7_β
 jmp xchain46_n17_α
 xchain46_n16_β:
 jmp xchain46_n7_β
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "alts"
 xchain46_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 408], rax
 jmp xchain46_n18_α
xchain46_n17_β:
 jmp xchain46_n7_β
# IR_ASSIGN_VAR
 xchain46_n18_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain46_n10_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain46_n19_α
# IR_GEN_SCAN
 xchain46_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 88], rax
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp xchain46_n20_α
 xchain46_n19_β:
 jmp proc_define_ω
# IR_RETURN
 xchain46_n20_α:
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
# IR_DISJUNCTION_NARY
 xchain80_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain80_n1_α
xchain80_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx82_0
 jmp proc_defnon_ω
.Lx82_0:
 cmp eax, 1
 jne .Lx82_1
 jmp proc_defnon_ω
.Lx82_1:
 jmp proc_defnon_ω
 xchain80_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_defnon_ω
 jmp proc_defnon_ω
xchain80_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain80_n2_α
 jmp proc_defnon_ω
# IR_VAR
 xchain80_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 568], rax
 jmp xchain80_n3_α
 xchain80_n1_β:
 jmp xchain80_n0_af
# IR_VAR
 xchain80_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain80_n4_α
 xchain80_n2_β:
 jmp proc_defnon_ω
# IR_GEN_SCAN
 xchain80_n3_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain80_n5_α
 xchain80_n4_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn90: .string "nonterm"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn90]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain80_n6_α
 xchain80_n4_β:
 jmp proc_defnon_ω
# IR_LIT_STRING
 xchain80_n5_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain80_n7_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "'"
# IR_RETURN
 xchain80_n6_α:
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_defnon_γ
# IR_SCAN_MATCH
 xchain80_n7_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx94_239
 add rsp, 16
 jmp xchain80_n9_α
.Lx94_239:
 mov rdi, qword ptr [rip + .Lx94_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx94_240
 add rsp, 16
 jmp xchain80_n9_α
.Lx94_240:
 mov qword ptr [rbp + 496], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 504], rax
 jmp xchain80_n8_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "'"
# IR_SCAN_TAB
 xchain80_n8_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 504]
 cmp rax, 1
 jge .Lx96_0
 add rax, r15
 add rax, 1
.Lx96_0:
 cmp rax, 1
 jge .Lx96_239
 add rsp, 16
 jmp xchain80_n9_α
.Lx96_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx96_240
 add rsp, 16
 jmp xchain80_n9_α
.Lx96_240:
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
 jmp xchain80_n10_α
 xchain80_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain80_n9_α
# IR_GEN_SCAN
 xchain80_n9_α:
 lea rdi, [rbp + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 160]
 mov r14, qword ptr [rbp + 168]
 mov r15, qword ptr [rbp + 176]
 jmp xchain80_n0_as
 xchain80_n9_β:
 jmp xchain80_n0_af
# IR_LIT_INTEGER
 xchain80_n10_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain80_n11_α
.Lx99_0:
 .quad 18446744073709551615
# IR_SCAN_TAB
 xchain80_n11_α:
 sub rsp, 16
 mov rax, -1
 cmp rax, 1
 jge .Lx00001_0
 add rax, r15
 add rax, 1
.Lx00001_0:
 cmp rax, 1
 jge .Lx00001_239
 add rsp, 16
 jmp xchain80_n9_α
.Lx00001_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00001_240
 add rsp, 16
 jmp xchain80_n9_α
.Lx00001_240:
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
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain80_n12_α
 xchain80_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain80_n9_α
 xchain80_n12_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn103: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn103]
 lea rsi, [rbp + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain80_n9_α
 jmp xchain80_n13_α
 xchain80_n12_β:
 jmp xchain80_n9_α
 xchain80_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain80_n14_α
# IR_LIT_STRING
 xchain80_n14_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain80_n15_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "'"
# IR_SCAN_MATCH
 xchain80_n15_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00003_239
 add rsp, 16
 jmp xchain80_n9_α
.Lx00003_239:
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00003_240
 add rsp, 16
 jmp xchain80_n9_α
.Lx00003_240:
 mov qword ptr [rbp + 272], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 280], rax
 jmp xchain80_n16_α
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "'"
# IR_SCAN_TAB
 xchain80_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 280]
 cmp rax, 1
 jge .Lx00004_0
 add rax, r15
 add rax, 1
.Lx00004_0:
 cmp rax, 1
 jge .Lx00004_239
 add rsp, 16
 jmp xchain80_n9_α
.Lx00004_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00004_240
 add rsp, 16
 jmp xchain80_n9_α
.Lx00004_240:
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
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain80_n17_α
 xchain80_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain80_n9_α
 xchain80_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 232], rax
 jmp xchain80_n18_α
xchain80_n17_β:
 jmp xchain80_n9_α
# IR_GEN_SCAN
 xchain80_n18_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
 lea rdi, [rbp + 160]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 160]
 mov r14, qword ptr [rbp + 168]
 mov r15, qword ptr [rbp + 176]
 jmp xchain80_n19_α
 xchain80_n18_β:
 jmp xchain80_n0_af
# IR_VAR
 xchain80_n19_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 120], rax
 jmp xchain80_n20_α
 xchain80_n20_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn116: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn116]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_defnon_ω
 jmp xchain80_n21_α
 xchain80_n20_β:
 jmp proc_defnon_ω
# IR_RETURN
 xchain80_n21_α:
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
 xchain00005_n0_α:
 mov qword ptr [rbp + 96], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00005_n1_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "*** erroneous line:  "
# IR_VAR
 xchain00005_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00005_n2_α
 xchain00005_n2_α:
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
  .Lrkfn123: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je xchain00005_n3_α
 jmp xchain00005_n3_α
 xchain00005_n2_β:
 jmp xchain00005_n3_α
# IR_RETURN
 xchain00005_n3_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
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
 xchain00007_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00007_n1_α
 xchain00007_n1_α:
# BOX IR_CALL nonterm(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2232], rax
  .section .rodata
  .Lrkfn129: .string "nonterm"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn129]
 lea rsi, [rbp + 2224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n3_α
 xchain00007_n1_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n2_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 136], rax
 jmp xchain00007_n4_α
# IR_MAKE_LIST
 xchain00007_n3_α:
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2200], rax
 lea rdi, [rbp + 2192]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00007_n6_α
 xchain00007_n4_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn135: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn135]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n7_α
 xchain00007_n4_β:
 jmp xchain00007_n5_α
 xchain00007_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn137: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn137]
 lea rsi, [rbp + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_gener_ω
 jmp proc_gener_ω
 xchain00007_n5_β:
 jmp proc_gener_ω
 xchain00007_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00007_n2_α
 xchain00007_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00007_n8_α
# IR_DISJUNCTION_NARY
 xchain00007_n8_α:
 mov qword ptr [rbp + 1792], 0
 mov qword ptr [rbp + 1800], 0
 mov dword ptr [rbp + 1808], 0
 jmp xchain00007_n10_α
xchain00007_n8_as:
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 0
 jne .Lx00008_0
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00007_n9_α
.Lx00008_0:
 jmp xchain00007_n9_α
 xchain00007_n8_β:
 mov eax, dword ptr [rbp + 1808]
 jmp xchain00007_n9_α
xchain00007_n8_af:
 add dword ptr [rbp + 1808], 1
 mov eax, dword ptr [rbp + 1808]
 jmp xchain00007_n9_α
# IR_VAR
 xchain00007_n9_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 264], rax
 jmp xchain00007_n12_α
# IR_VAR
 xchain00007_n10_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00007_n13_α
 xchain00007_n10_β:
 jmp xchain00007_n8_af
 xchain00007_n11_α:
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
  .Lrkfn146: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn146]
 lea rsi, [rbp + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain00007_n9_α
 jmp xchain00007_n8_as
 xchain00007_n11_β:
 jmp xchain00007_n9_α
 xchain00007_n12_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn148: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn148]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n14_α
 xchain00007_n12_β:
 jmp xchain00007_n2_α
# IR_UNOP
 xchain00007_n13_α:
 mov eax, dword ptr [rbp + 2128]
 cmp eax, 99
 je xchain00007_n8_af
 cmp eax, 0
 je xchain00007_n8_af
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00007_n15_α
# IR_LIT_STRING
 xchain00007_n14_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00007_n16_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "string"
# KEYWORD_read
 xchain00007_n15_α:
 mov rdi, qword ptr [rip + .Lx00010_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00007_n9_α
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00007_n17_α
 xchain00007_n15_β:
 jmp xchain00007_n9_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "&errout"
 xchain00007_n16_α:
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
  .Lrkfn153: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn153]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00007_n19_α
 jmp xchain00007_n18_α
 xchain00007_n16_β:
 jmp xchain00007_n19_α
# IR_VAR
 xchain00007_n17_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00007_n20_α
# IR_VAR
 xchain00007_n18_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00007_n21_α
# IR_LIT_STRING
 xchain00007_n19_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00007_n22_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "charset"
 xchain00007_n20_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call rt_arg_stage@PLT
 mov edi, 13
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00012_1
 lea rcx, [rip + .Lx00012_3]
 lea rdx, [rip + .Lx00012_4]
 jmp rax
.Lx00012_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00012_2
.Lx00012_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00012_2
.Lx00012_1:
 call rt_faildescr@PLT
.Lx00012_2:
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00007_n9_α
 jmp xchain00007_n23_α
 xchain00007_n20_β:
 jmp xchain00007_n9_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "symimage"
 xchain00007_n21_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn162: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 1648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n24_α
 xchain00007_n21_β:
 jmp xchain00007_n2_α
 xchain00007_n22_α:
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
  .Lrkfn164: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn164]
 lea rsi, [rbp + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain00007_n26_α
 jmp xchain00007_n25_α
 xchain00007_n22_β:
 jmp xchain00007_n26_α
# IR_VAR
 xchain00007_n23_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00007_n27_α
 xchain00007_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1632]
 mov rdx, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00007_n28_α
# IR_VAR
 xchain00007_n25_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00007_n29_α
# IR_LIT_STRING
 xchain00007_n26_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00007_n30_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "nonterm"
 xchain00007_n27_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov edi, 9
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00014_1
 lea rcx, [rip + .Lx00014_3]
 lea rdx, [rip + .Lx00014_4]
 jmp rax
.Lx00014_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00014_2
.Lx00014_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00014_2
.Lx00014_1:
 call rt_faildescr@PLT
.Lx00014_2:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00007_n9_α
 jmp xchain00007_n11_α
 xchain00007_n27_β:
 jmp xchain00007_n9_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "listimage"
# IR_VAR
 xchain00007_n28_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 184], rax
 jmp xchain00007_n31_α
# IR_FIELD_GET
 xchain00007_n29_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov rsi, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00007_n32_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "chars"
 xchain00007_n30_α:
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
  .Lrkfn177: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn177]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n33_β
 xchain00007_n30_β:
 jmp xchain00007_n2_α
 xchain00007_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00007_n2_α
xchain00007_n31_β:
 jmp xchain00007_n2_α
# IR_RANDOM
 xchain00007_n32_α:
 mov rdi, qword ptr [rbp + 1440]
 mov rsi, qword ptr [rbp + 1448]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain00007_n34_α
# IR_DISJUNCTION_NARY
 xchain00007_n33_α:
 mov qword ptr [rbp + 688], 0
 mov qword ptr [rbp + 696], 0
 mov dword ptr [rbp + 704], 0
 jmp xchain00007_n36_α
xchain00007_n33_as:
 mov eax, dword ptr [rbp + 704]
 cmp eax, 0
 jne .Lx00016_0
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
 jmp xchain00007_n35_α
.Lx00016_0:
 cmp eax, 1
 jne .Lx00016_1
 jmp xchain00007_n35_α
.Lx00016_1:
 jmp xchain00007_n35_α
 xchain00007_n33_β:
 mov eax, dword ptr [rbp + 704]
 cmp eax, 0
 je xchain00007_n33_af
 jmp xchain00007_n33_af
xchain00007_n33_af:
 add dword ptr [rbp + 704], 1
 mov eax, dword ptr [rbp + 704]
 cmp eax, 1
 je xchain00007_n37_α
 jmp xchain00007_n41_α
# IR_DEREF variable -> value
 xchain00007_n34_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n2_α
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain00007_n40_α
 xchain00007_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00007_n41_α
# IR_VAR_REF
 xchain00007_n36_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00007_n42_α
 xchain00007_n36_β:
 jmp xchain00007_n33_af
# KEYWORD_read
 xchain00007_n37_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00007_n5_α
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00007_n43_α
 xchain00007_n37_β:
 jmp xchain00007_n5_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "&errout"
 xchain00007_n38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call str_concat_d@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00007_n33_as
 xchain00007_n38_β:
 jmp xchain00007_n33_af
 xchain00007_n39_α:
 jmp xchain00007_n33_as
xchain00007_n39_β:
 jmp xchain00007_n33_af
 xchain00007_n40_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1392]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn190: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn190]
 lea rsi, [rbp + 1392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain00007_n2_α
 jmp xchain00007_n44_α
 xchain00007_n40_β:
 jmp xchain00007_n2_α
# IR_DISJUNCTION_NARY
 xchain00007_n41_α:
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 mov dword ptr [rbp + 352], 0
 jmp xchain00007_n46_α
xchain00007_n41_as:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 0
 jne .Lx00018_0
 jmp xchain00007_n45_α
.Lx00018_0:
 jmp xchain00007_n45_α
 xchain00007_n41_β:
 mov eax, dword ptr [rbp + 352]
 jmp xchain00007_n2_α
xchain00007_n41_af:
 add dword ptr [rbp + 352], 1
 mov eax, dword ptr [rbp + 352]
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n42_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 872], rax
 jmp xchain00007_n48_α
# IR_LIT_STRING
 xchain00007_n43_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00007_n49_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "*** undefined nonterminal:  <"
 xchain00007_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00007_n28_α
 xchain00007_n45_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 328], rax
 jmp xchain00007_n50_α
xchain00007_n45_β:
 jmp xchain00007_n2_α
# IR_VAR
 xchain00007_n46_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 584], rax
 jmp xchain00007_n51_α
 xchain00007_n46_β:
 jmp xchain00007_n41_af
 xchain00007_n47_α:
 jmp xchain00007_n41_as
xchain00007_n47_β:
 jmp xchain00007_n2_α
# IR_FIELD_GET
 xchain00007_n48_α:
 mov rdi, qword ptr [rip + .Lx00020_0]
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n33_af
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00007_n52_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "name"
# IR_VAR
 xchain00007_n49_α:
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00007_n53_α
 xchain00007_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00007_n28_α
# IR_UNOP
 xchain00007_n51_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_size_d@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00007_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain00007_n52_α:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00007_n33_af
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00007_n56_α
# IR_FIELD_GET
 xchain00007_n53_α:
 mov rdi, qword ptr [rip + .Lx00021_0]
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00007_n5_α
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00007_n57_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "name"
 xchain00007_n54_α:
 jmp xchain00007_n5_α
xchain00007_n54_β:
 jmp xchain00007_n5_α
# IR_VAR
 xchain00007_n55_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00007_n58_α
# IR_DEREF variable -> value
 xchain00007_n56_α:
 mov rdi, qword ptr [rbp + 896]
 mov rsi, qword ptr [rbp + 904]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n33_af
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00007_n59_α
# IR_LIT_STRING
 xchain00007_n57_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00007_n60_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string ">"
# IR_UNOP
 xchain00007_n58_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00007_n41_af
 cmp eax, 0
 je xchain00007_n41_af
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
 jmp xchain00007_n61_α
# IR_UNOP
 xchain00007_n59_α:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 99
 je xchain00007_n33_af
 cmp eax, 0
 je xchain00007_n33_af
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 776], rax
 jmp xchain00007_n62_α
 xchain00007_n60_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1024]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1040]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1056]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1064], rax
# marshal arg3 = producer-box slot [zr+1232] -> [zr+1072]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn215: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn215]
 lea rsi, [rbp + 1024]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n5_α
 xchain00007_n60_β:
 jmp xchain00007_n5_α
 xchain00007_n61_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00023_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00023_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00023_2
.Lx00023_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, qword ptr [rbp + 616]
 cmp rax, rcx
 jle xchain00007_n41_af
 mov rcx, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rcx
 mov rcx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rcx
 jmp xchain00007_n63_α
.Lx00023_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 lea r9, [rbp + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00023_1
 cmp eax, 1
 je xchain00007_n41_af
 jmp xchain00007_n63_α
.Lx00023_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00007_n41_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rax
 jmp xchain00007_n63_α
# IR_RANDOM
 xchain00007_n62_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00007_n33_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00007_n64_α
# KEYWORD_read
 xchain00007_n63_α:
 mov rdi, qword ptr [rip + .Lx00024_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00007_n5_α
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00007_n65_α
 xchain00007_n63_β:
 jmp xchain00007_n5_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "&errout"
# IR_DEREF variable -> value
 xchain00007_n64_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00007_n33_af
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00007_n66_α
# IR_LIT_STRING
 xchain00007_n65_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00007_n67_α
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "*** excessive symbols remaining"
# IR_VAR
 xchain00007_n66_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 968], rax
 jmp xchain00007_n38_α
 xchain00007_n67_α:
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
  .Lrkfn224: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn224]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00007_n5_α
 jmp xchain00007_n5_α
 xchain00007_n67_β:
 jmp xchain00007_n5_α
 xchain00007_n68_α:
 jmp xchain00007_n5_α
xchain00007_n68_β:
 jmp xchain00007_n5_α
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
  sub rsp, 1120
  mov [rsp + 1096], rcx
  mov [rsp + 1104], rdx
  mov [rsp + 1112], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1088
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1048], rsp
  mov rdi, rsp
  mov esi, 1088
  call rt_jmp_frame_lexprep@PLT
proc_generate_α_body:
 mov qword ptr [rbp + 768], 0
# IR_DISJUNCTION_NARY
 xchain00026_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00026_n1_α
xchain00026_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00027_0
 jmp proc_generate_ω
.Lx00027_0:
 cmp eax, 1
 jne .Lx00027_1
 jmp proc_generate_ω
.Lx00027_1:
 jmp proc_generate_ω
 xchain00026_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_generate_ω
 jmp proc_generate_ω
xchain00026_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je proc_generate_ω
 jmp proc_generate_ω
# IR_VAR
 xchain00026_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00026_n3_α
 xchain00026_n1_β:
 jmp xchain00026_n0_af
 xchain00026_n2_α:
 jmp xchain00026_n0_as
xchain00026_n2_β:
 jmp proc_generate_ω
# IR_GEN_SCAN
 xchain00026_n3_α:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00026_n4_α
# IR_LIT_STRING
 xchain00026_n4_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00026_n5_α
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "<"
# IR_SCAN_MATCH
 xchain00026_n5_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00029_239
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00029_239:
 mov rdi, qword ptr [rip + .Lx00029_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00029_240
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00029_240:
 mov qword ptr [rbp + 944], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 952], rax
 jmp xchain00026_n6_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain00026_n6_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 952]
 cmp rax, 1
 jge .Lx00030_0
 add rax, r15
 add rax, 1
.Lx00030_0:
 cmp rax, 1
 jge .Lx00030_239
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00030_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00030_240
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00030_240:
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
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00026_n8_α
 xchain00026_n6_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00026_n7_α
# IR_GEN_SCAN
 xchain00026_n7_α:
 lea rdi, [rbp + 320]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 320]
 mov r14, qword ptr [rbp + 328]
 mov r15, qword ptr [rbp + 336]
 jmp xchain00026_n0_as
 xchain00026_n7_β:
 jmp xchain00026_n0_af
# IR_LIT_INTEGER
 xchain00026_n8_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00026_n9_α
.Lx00031_0:
 .quad 1
# IR_LIT_CHARSET
 xchain00026_n9_α:
 mov qword ptr [rbp + 880], 1
 mov dword ptr [rbp + 884], -1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00026_n10_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string ">"
# IR_SCAN_UPTO
 xchain00026_n10_α:
 mov qword ptr [rbp + 864], r14
.Lx00033_0:
 mov rax, qword ptr [rbp + 864]
 cmp rax, r15
 jge xchain00026_n7_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00033_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00033_1
 mov qword ptr [rbp + 848], 6
 add rax, 1
 mov qword ptr [rbp + 856], rax
 jmp xchain00026_n11_α
.Lx00033_1:
 inc qword ptr [rbp + 864]
 jmp .Lx00033_0
 xchain00026_n10_β:
 inc qword ptr [rbp + 864]
 jmp .Lx00033_0
.Lx00033_2:
 .quad .Lx00033_2_s
.Lx00033_2_s:
 .string ">"
# IR_SCAN_TAB
 xchain00026_n11_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 856]
 cmp rax, 1
 jge .Lx00034_0
 add rax, r15
 add rax, 1
.Lx00034_0:
 cmp rax, 1
 jge .Lx00034_239
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00034_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00034_240
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00034_240:
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
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00026_n12_α
 xchain00026_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00026_n7_α
# IR_LIMIT
 xchain00026_n12_α:
 mov rax, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 792]
 cmp rax, rcx
 jge xchain00026_n7_α
 inc qword ptr [rbp + 768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
 jmp xchain00026_n13_α
 xchain00026_n12_β:
 jmp xchain00026_n11_β
 xchain00026_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00026_n14_α
# IR_LIT_INTEGER
 xchain00026_n14_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00026_n15_α
.Lx00035_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00026_n15_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00036_239
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00036_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00036_240
 add rsp, 16
 jmp xchain00026_n7_α
.Lx00036_240:
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
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00026_n16_α
 xchain00026_n15_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00026_n7_α
# IR_DISJUNCTION_NARY
 xchain00026_n16_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00026_n18_α
xchain00026_n16_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00037_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
 jmp xchain00026_n17_α
.Lx00037_0:
 cmp eax, 1
 jne .Lx00037_1
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 jmp xchain00026_n17_α
.Lx00037_1:
 jmp xchain00026_n17_α
 xchain00026_n16_β:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 je xchain00026_n19_β
 jmp xchain00026_n16_af
xchain00026_n16_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 cmp eax, 1
 je xchain00026_n20_α
 jmp xchain00026_n7_α
 xchain00026_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00026_n23_α
# IR_LIT_INTEGER
 xchain00026_n18_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00026_n24_α
 xchain00026_n18_β:
 jmp xchain00026_n16_af
.Lx00038_0:
 .quad 0
 xchain00026_n19_α:
 jmp xchain00026_n16_af
xchain00026_n19_β:
 jmp xchain00026_n16_af
# IR_LIT_INTEGER
 xchain00026_n20_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00026_n25_α
 xchain00026_n20_β:
 jmp xchain00026_n16_af
.Lx00039_0:
 .quad 0
 xchain00026_n21_α:
 jmp xchain00026_n16_as
xchain00026_n21_β:
 jmp xchain00026_n16_af
 xchain00026_n22_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn262: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn262]
 lea rsi, [rbp + 576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain00026_n16_af
 jmp xchain00026_n16_as
 xchain00026_n22_β:
 jmp xchain00026_n16_af
 xchain00026_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 392], rax
 jmp xchain00026_n26_α
xchain00026_n23_β:
 jmp xchain00026_n7_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00026_n24_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00040_0
 add rax, r15
 add rax, 1
.Lx00040_0:
 cmp rax, 1
 jl xchain00026_n16_af
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00026_n16_af
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00026_n16_af
 mov qword ptr [rbp + 496], 6
 mov qword ptr [rbp + 504], rax
 jmp xchain00026_n27_α
# IR_SCAN_TAB
 xchain00026_n25_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00041_0
 add rax, r15
 add rax, 1
.Lx00041_0:
 cmp rax, 1
 jge .Lx00041_239
 add rsp, 16
 jmp xchain00026_n16_af
.Lx00041_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00041_240
 add rsp, 16
 jmp xchain00026_n16_af
.Lx00041_240:
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
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00026_n22_α
 xchain00026_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00026_n16_af
# IR_GEN_SCAN
 xchain00026_n26_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
 lea rdi, [rbp + 320]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 320]
 mov r14, qword ptr [rbp + 328]
 mov r15, qword ptr [rbp + 336]
 jmp xchain00026_n28_α
 xchain00026_n26_β:
 jmp xchain00026_n0_af
# IR_LIT_INTEGER
 xchain00026_n27_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00026_n21_α
.Lx00042_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00026_n28_α:
 mov qword ptr [rbp + 112], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00026_n29_α
.Lx00043_0:
 .quad 1
# IR_VAR
 xchain00026_n29_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 152], rax
 jmp xchain00026_n30_α
# IR_TO
 xchain00026_n30_α:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 call to_int@PLT
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 96], rax
.Lx00044_0:
 mov rax, qword ptr [rbp + 96]
 mov rcx, qword ptr [rbp + 152]
 cmp rax, rcx
 jg xchain00026_n31_α
 mov qword ptr [rbp + 80], 6
 mov qword ptr [rbp + 88], rax
 jmp xchain00026_n32_α
 xchain00026_n30_β:
 inc qword ptr [rbp + 96]
 jmp .Lx00044_0
# IR_RETURN
 xchain00026_n31_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_generate_γ
# IR_BOUND
 xchain00026_n32_α:
 mov qword ptr [rbp + 176], rsp
 jmp xchain00026_n33_α
# IR_VAR
 xchain00026_n33_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 280], rax
 jmp xchain00026_n34_α
 xchain00026_n34_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 5
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00045_1
 lea rcx, [rip + .Lx00045_3]
 lea rdx, [rip + .Lx00045_4]
 jmp rax
.Lx00045_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00045_2
.Lx00045_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00045_2
.Lx00045_1:
 call rt_faildescr@PLT
.Lx00045_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00026_n35_α
 jmp xchain00026_n35_α
 xchain00026_n34_β:
 jmp xchain00026_n35_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "gener"
# IR_UNMARK
 xchain00026_n35_α:
 mov rsp, qword ptr [rbp + 176]
 jmp xchain00026_n30_β
proc_generate_res:
add rsp, 8
pop rbp
proc_generate_β:
jmp proc_generate_ω
proc_generate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1096]
lea rsp, [rbp + 1120]
mov rbp, [rbp + 1112]
jmp rax
proc_generate_ω:
mov rax, [rbp + 1104]
lea rsp, [rbp + 1120]
mov rbp, [rbp + 1112]
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
 xchain00046_n0_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00046_n1_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string ""
 xchain00046_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00046_n2_α
# IR_VAR
 xchain00046_n2_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 216], rax
 jmp xchain00046_n3_α
# IR_VAR
 xchain00046_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00046_n5_α
# IR_VAR
 xchain00046_n4_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 72], rax
 jmp xchain00046_n6_α
# IR_LIST_BANG
 xchain00046_n5_α:
 mov qword ptr [rbp + 336], 0
.Lx00048_0:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 336]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp rax, 99
 je xchain00046_n4_α
 jmp xchain00046_n7_α
 xchain00046_n5_β:
 inc qword ptr [rbp + 336]
 jmp .Lx00048_0
# IR_LIT_INTEGER
 xchain00046_n6_α:
 mov qword ptr [rbp + 96], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00046_n8_α
.Lx00049_0:
 .quad 1
 xchain00046_n7_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 9
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00050_1
 lea rcx, [rip + .Lx00050_3]
 lea rdx, [rip + .Lx00050_4]
 jmp rax
.Lx00050_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00050_2
.Lx00050_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00050_2
.Lx00050_1:
 call rt_faildescr@PLT
.Lx00050_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00046_n5_β
 jmp xchain00046_n9_α
 xchain00046_n7_β:
 jmp xchain00046_n5_β
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "listimage"
# IR_LIT_INTEGER
 xchain00046_n8_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00046_n10_α
.Lx00051_0:
 .quad 18446744073709551615
# IR_LIT_STRING
 xchain00046_n9_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00046_n11_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "|"
# IR_SUBSCRIPT section
 xchain00046_n10_α:
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
 jmp xchain00046_n12_α
 xchain00046_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 call str_concat_d@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00046_n13_α
# IR_RETURN
 xchain00046_n12_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_getrhs_γ
 xchain00046_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call str_concat_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00046_n14_α
 xchain00046_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00046_n5_β
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
# IR_DISJUNCTION_NARY
 xchain00053_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00053_n1_α
xchain00053_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00054_0
 jmp proc_grammar_ω
.Lx00054_0:
 cmp eax, 1
 jne .Lx00054_1
 jmp proc_grammar_ω
.Lx00054_1:
 jmp proc_grammar_ω
 xchain00053_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_grammar_ω
 jmp proc_grammar_ω
xchain00053_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je proc_grammar_ω
 jmp proc_grammar_ω
# IR_VAR
 xchain00053_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00053_n3_α
 xchain00053_n1_β:
 jmp xchain00053_n0_af
 xchain00053_n2_α:
 jmp xchain00053_n0_as
xchain00053_n2_β:
 jmp proc_grammar_ω
# IR_GEN_SCAN
 xchain00053_n3_α:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00053_n4_α
# IR_LIT_STRING
 xchain00053_n4_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00053_n5_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "->"
# IR_SCAN_FIND
 xchain00053_n5_α:
 mov qword ptr [rbp + 1840], r14
.Lx00056_0:
 mov rax, qword ptr [rbp + 1840]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00053_n8_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 45
 jne .Lx00056_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 62
 jne .Lx00056_1
 mov qword ptr [rbp + 1824], 6
 add rax, 1
 mov qword ptr [rbp + 1832], rax
 jmp xchain00053_n6_α
.Lx00056_1:
 inc qword ptr [rbp + 1840]
 jmp .Lx00056_0
 xchain00053_n5_β:
 inc qword ptr [rbp + 1840]
 jmp .Lx00056_0
# IR_SCAN_TAB
 xchain00053_n6_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1832]
 cmp rax, 1
 jge .Lx00057_0
 add rax, r15
 add rax, 1
.Lx00057_0:
 cmp rax, 1
 jge .Lx00057_239
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00057_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00057_240
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00057_240:
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
 jmp xchain00053_n7_α
 xchain00053_n6_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00053_n8_α
 xchain00053_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00053_n9_α
# IR_GEN_SCAN
 xchain00053_n8_α:
 lea rdi, [rbp + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 992]
 mov r14, qword ptr [rbp + 1000]
 mov r15, qword ptr [rbp + 1008]
 jmp xchain00053_n0_as
 xchain00053_n8_β:
 jmp xchain00053_n0_af
# IR_LIT_INTEGER
 xchain00053_n9_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00053_n10_α
.Lx00058_0:
 .quad 2
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00053_n10_α:
 sub rsp, 16
 mov rax, 2
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00059_239
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00059_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00059_240
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00059_240:
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
 jmp xchain00053_n11_α
 xchain00053_n10_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00053_n8_α
# IR_LIT_INTEGER
 xchain00053_n11_α:
 mov qword ptr [rbp + 1680], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00053_n12_α
.Lx00060_0:
 .quad 0
# IR_SCAN_TAB
 xchain00053_n12_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00061_0
 add rax, r15
 add rax, 1
.Lx00061_0:
 cmp rax, 1
 jge .Lx00061_239
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00061_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00061_240
 add rsp, 16
 jmp xchain00053_n8_α
.Lx00061_240:
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
 jmp xchain00053_n13_α
 xchain00053_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00053_n8_α
 xchain00053_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00053_n14_α
# IR_DISJUNCTION_NARY
 xchain00053_n14_α:
 mov qword ptr [rbp + 1088], 0
 mov qword ptr [rbp + 1096], 0
 mov dword ptr [rbp + 1104], 0
 jmp xchain00053_n16_α
xchain00053_n14_as:
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 0
 jne .Lx00062_0
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00053_n15_α
.Lx00062_0:
 cmp eax, 1
 jne .Lx00062_1
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00053_n15_α
.Lx00062_1:
 jmp xchain00053_n15_α
 xchain00053_n14_β:
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 0
 je xchain00053_n8_α
 jmp xchain00053_n17_β
xchain00053_n14_af:
 add dword ptr [rbp + 1104], 1
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 1
 je xchain00053_n17_α
 jmp xchain00053_n8_α
 xchain00053_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00053_n19_α
# IR_VAR
 xchain00053_n16_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00053_n20_α
 xchain00053_n16_β:
 jmp xchain00053_n14_af
# IR_DISJUNCTION_NARY
 xchain00053_n17_α:
 mov qword ptr [rbp + 1280], 0
 mov qword ptr [rbp + 1288], 0
 mov dword ptr [rbp + 1296], 0
 jmp xchain00053_n21_α
xchain00053_n17_as:
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 0
 jne .Lx00063_0
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00053_n14_as
.Lx00063_0:
 cmp eax, 1
 jne .Lx00063_1
 jmp xchain00053_n14_as
.Lx00063_1:
 jmp xchain00053_n14_as
 xchain00053_n17_β:
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 0
 je xchain00053_n17_af
 jmp xchain00053_n17_af
xchain00053_n17_af:
 add dword ptr [rbp + 1296], 1
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 1
 je xchain00053_n22_α
 jmp xchain00053_n8_α
# KEYWORD_read
 xchain00053_n18_α:
 mov rdi, qword ptr [rip + .Lx00064_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00053_n8_α
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00053_n14_as
 xchain00053_n18_β:
 jmp xchain00053_n8_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "&output"
 xchain00053_n19_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00053_n25_α
xchain00053_n19_β:
 jmp xchain00053_n8_α
# IR_UNOP
 xchain00053_n20_α:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00053_n26_α
# IR_VAR
 xchain00053_n21_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1384], rax
 jmp xchain00053_n27_α
 xchain00053_n21_β:
 jmp xchain00053_n17_af
# KEYWORD_read
 xchain00053_n22_α:
 mov rdi, qword ptr [rip + .Lx00065_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_grammar_ω
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00053_n28_α
 xchain00053_n22_β:
 jmp proc_grammar_ω
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "&errout"
 xchain00053_n23_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn343: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn343]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00053_n17_af
 jmp xchain00053_n17_as
 xchain00053_n23_β:
 jmp xchain00053_n17_af
 xchain00053_n24_α:
 jmp xchain00053_n17_as
xchain00053_n24_β:
 jmp xchain00053_n17_af
# IR_GEN_SCAN
 xchain00053_n25_α:
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
 lea rdi, [rbp + 992]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 992]
 mov r14, qword ptr [rbp + 1000]
 mov r15, qword ptr [rbp + 1008]
 jmp xchain00053_n29_α
 xchain00053_n25_β:
 jmp xchain00053_n0_af
# IR_LIT_INTEGER
 xchain00053_n26_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00053_n30_α
.Lx00066_0:
 .quad 0
# IR_LIT_STRING
 xchain00053_n27_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00053_n23_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "w"
# IR_LIT_STRING
 xchain00053_n28_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00053_n31_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string "*** cannot open "
# IR_DISJUNCTION_NARY
 xchain00053_n29_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00053_n33_α
xchain00053_n29_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00069_0
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 jmp xchain00053_n32_α
.Lx00069_0:
 cmp eax, 1
 jne .Lx00069_1
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 456], rax
 jmp xchain00053_n32_α
.Lx00069_1:
 cmp eax, 2
 jne .Lx00069_2
 jmp xchain00053_n32_α
.Lx00069_2:
 jmp xchain00053_n32_α
 xchain00053_n29_β:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 je xchain00053_n29_af
 cmp eax, 1
 je xchain00053_n35_β
 jmp xchain00053_n29_af
xchain00053_n29_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 cmp eax, 1
 je xchain00053_n34_α
 cmp eax, 2
 je proc_grammar_ω
 jmp xchain00053_n32_α
 xchain00053_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00070_2
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00070_2
.Lx00070_1:
 mov rax, qword ptr [rbp + 1192]
 mov rcx, qword ptr [rbp + 1256]
 cmp rax, rcx
 jne xchain00053_n14_af
 mov rcx, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rcx
 mov rcx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rcx
 jmp xchain00053_n18_α
.Lx00070_0:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 9
 lea r9, [rbp + 1152]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00070_1
 cmp eax, 1
 je xchain00053_n14_af
 jmp xchain00053_n18_α
.Lx00070_2:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n14_af
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00053_n18_α
# IR_VAR
 xchain00053_n31_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00053_n38_α
# IR_VAR
 xchain00053_n32_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 392], rax
 jmp xchain00053_n39_α
# IR_VAR
 xchain00053_n33_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 552], rax
 jmp xchain00053_n41_α
 xchain00053_n33_β:
 jmp xchain00053_n29_af
# IR_VAR_REF
 xchain00053_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00053_n42_α
 xchain00053_n34_β:
 jmp xchain00053_n29_af
 xchain00053_n35_α:
 jmp xchain00053_n29_af
xchain00053_n35_β:
 jmp xchain00053_n29_af
 xchain00053_n36_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00071_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00071_2
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00071_2
.Lx00071_1:
 mov rax, qword ptr [rbp + 520]
 mov rcx, qword ptr [rbp + 584]
 cmp rax, rcx
 jne xchain00053_n29_af
 mov rcx, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rcx
 mov rcx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rcx
 jmp xchain00053_n29_as
.Lx00071_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 9
 lea r9, [rbp + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00071_1
 cmp eax, 1
 je xchain00053_n29_af
 jmp xchain00053_n29_as
.Lx00071_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n29_af
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rax
 jmp xchain00053_n29_as
 xchain00053_n36_β:
 jmp xchain00053_n29_af
 xchain00053_n37_α:
 jmp xchain00053_n29_as
xchain00053_n37_β:
 jmp xchain00053_n29_af
 xchain00053_n38_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1488]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1504]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn365: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn365]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_grammar_ω
 jmp proc_grammar_ω
 xchain00053_n38_β:
 jmp proc_grammar_ω
# IR_VAR
 xchain00053_n39_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 424], rax
 jmp xchain00053_n43_α
# IR_DISJUNCTION_NARY
 xchain00053_n40_α:
 mov qword ptr [rbp + 80], 0
 mov qword ptr [rbp + 88], 0
 mov dword ptr [rbp + 96], 0
 jmp xchain00053_n45_α
xchain00053_n40_as:
 mov eax, dword ptr [rbp + 96]
 cmp eax, 0
 jne .Lx00072_0
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00053_n44_α
.Lx00072_0:
 jmp xchain00053_n44_α
 xchain00053_n40_β:
 mov eax, dword ptr [rbp + 96]
 jmp xchain00053_n44_α
xchain00053_n40_af:
 add dword ptr [rbp + 96], 1
 mov eax, dword ptr [rbp + 96]
 jmp xchain00053_n44_α
# IR_UNOP
 xchain00053_n41_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 call rt_size_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00053_n47_α
# IR_LIT_INTEGER
 xchain00053_n42_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00053_n48_α
.Lx00073_0:
 .quad 1
 xchain00053_n43_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 11
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00074_1
 lea rcx, [rip + .Lx00074_3]
 lea rdx, [rip + .Lx00074_4]
 jmp rax
.Lx00074_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00074_2
.Lx00074_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00074_2
.Lx00074_1:
 call rt_faildescr@PLT
.Lx00074_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00053_n40_α
 jmp xchain00053_n40_α
 xchain00053_n43_β:
 jmp xchain00053_n40_α
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "pwrite"
# IR_RETURN
 xchain00053_n44_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_grammar_γ
# IR_VAR
 xchain00053_n45_α:
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 264], rax
 jmp xchain00053_n49_α
 xchain00053_n45_β:
 jmp xchain00053_n40_af
 xchain00053_n46_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn378: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn378]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00053_n44_α
 jmp xchain00053_n40_as
 xchain00053_n46_β:
 jmp xchain00053_n44_α
# IR_LIT_INTEGER
 xchain00053_n47_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00053_n36_α
.Lx00075_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain00053_n48_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00053_n29_af
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00053_n50_α
# IR_UNOP
 xchain00053_n49_α:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 call rt_size_d@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00053_n51_α
# IR_DEREF variable -> value
 xchain00053_n50_α:
 mov rdi, qword ptr [rbp + 896]
 mov rsi, qword ptr [rbp + 904]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00053_n29_af
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00053_n52_α
# IR_LIT_INTEGER
 xchain00053_n51_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00053_n53_α
.Lx00076_0:
 .quad 0
# IR_LIT_STRING
 xchain00053_n52_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00053_n54_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "<"
 xchain00053_n53_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [rbp + 288]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00078_2
 mov eax, dword ptr [rbp + 288]
 cmp eax, 6
 jne .Lx00078_2
.Lx00078_1:
 mov rax, qword ptr [rbp + 232]
 mov rcx, qword ptr [rbp + 296]
 cmp rax, rcx
 je xchain00053_n40_af
 mov rcx, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rcx
 mov rcx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rcx
 jmp xchain00053_n55_α
.Lx00078_0:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 10
 lea r9, [rbp + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00078_1
 cmp eax, 1
 je xchain00053_n40_af
 jmp xchain00053_n55_α
.Lx00078_2:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n40_af
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rax
 jmp xchain00053_n55_α
 xchain00053_n54_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n29_af
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00053_n56_α
# IR_VAR
 xchain00053_n55_α:
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 168], rax
 jmp xchain00053_n46_α
# IR_VAR_REF
 xchain00053_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00053_n57_α
# IR_LIT_INTEGER
 xchain00053_n57_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00053_n58_α
.Lx00079_0:
 .quad 18446744073709551615
# IR_SUBSCRIPT x[i] variable
 xchain00053_n58_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00053_n29_af
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00053_n59_α
# IR_DEREF variable -> value
 xchain00053_n59_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00053_n29_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00053_n60_α
# IR_LIT_STRING
 xchain00053_n60_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00053_n61_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string ">"
 xchain00053_n61_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n29_af
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00053_n37_α
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
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_listimage_α_body:
# IR_LIT_STRING
 xchain00081_n0_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00081_n1_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string ""
 xchain00081_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00081_n2_α
# IR_VAR
 xchain00081_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00081_n3_α
# IR_LIST_BANG
 xchain00081_n3_α:
 mov qword ptr [rbp + 96], 0
.Lx00083_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp rax, 99
 je xchain00081_n4_α
 jmp xchain00081_n5_α
 xchain00081_n3_β:
 inc qword ptr [rbp + 96]
 jmp .Lx00083_0
# IR_VAR
 xchain00081_n4_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 40], rax
 jmp xchain00081_n6_α
 xchain00081_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00081_n7_α
# IR_RETURN
 xchain00081_n6_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listimage_γ
# IR_BOUND
 xchain00081_n7_α:
 mov qword ptr [rbp + 144], rsp
 jmp xchain00081_n8_α
# IR_VAR
 xchain00081_n8_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 248], rax
 jmp xchain00081_n9_α
# IR_VAR
 xchain00081_n9_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 328], rax
 jmp xchain00081_n11_α
# IR_UNMARK
 xchain00081_n10_α:
 mov rsp, qword ptr [rbp + 144]
 jmp xchain00081_n3_β
 xchain00081_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 13
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00084_1
 lea rcx, [rip + .Lx00084_3]
 lea rdx, [rip + .Lx00084_4]
 jmp rax
.Lx00084_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00084_2
.Lx00084_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00084_2
.Lx00084_1:
 call rt_faildescr@PLT
.Lx00084_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00081_n10_α
 jmp xchain00081_n12_α
 xchain00081_n11_β:
 jmp xchain00081_n10_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "symimage"
 xchain00081_n12_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00081_n13_α
 xchain00081_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00081_n10_α
proc_listimage_res:
add rsp, 8
pop rbp
proc_listimage_β:
jmp proc_listimage_ω
proc_listimage_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_listimage_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
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
# IR_DISJUNCTION_NARY
 xchain00085_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00085_n1_α
xchain00085_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00086_0
 jmp proc_prompter_ω
.Lx00086_0:
 jmp proc_prompter_ω
 xchain00085_n0_β:
 mov eax, dword ptr [rbp + 48]
 jmp proc_prompter_ω
xchain00085_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 jmp proc_prompter_ω
# IR_VAR_REF
 xchain00085_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00085_n3_α
 xchain00085_n1_β:
 jmp xchain00085_n0_af
 xchain00085_n2_α:
 jmp xchain00085_n0_as
xchain00085_n2_β:
 jmp proc_prompter_ω
# IR_LIT_INTEGER
 xchain00085_n3_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00085_n4_α
.Lx00087_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00085_n4_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00085_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00085_n5_α
# IR_DEREF variable -> value
 xchain00085_n5_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00085_n0_af
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00085_n6_α
# IR_LIT_STRING
 xchain00085_n6_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00085_n7_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "="
 xchain00085_n7_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00085_n0_af
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00085_n8_α
# IR_VAR
 xchain00085_n8_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00085_n9_α
# IR_LIT_INTEGER
 xchain00085_n9_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00085_n11_α
.Lx00089_0:
 .quad 2
# IR_RETURN
 xchain00085_n10_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_prompter_γ
# IR_LIT_INTEGER
 xchain00085_n11_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00085_n12_α
.Lx00090_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00085_n12_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8, qword ptr [rbp + 192]
 mov r9, qword ptr [rbp + 200]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00085_n10_α
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00085_n13_α
# IR_ASSIGN gva
 xchain00085_n13_α:
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00085_n10_α
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
# IR_DISJUNCTION_NARY
 xchain00091_n0_α:
 mov qword ptr [rbp + 1744], 0
 mov qword ptr [rbp + 1752], 0
 mov dword ptr [rbp + 1760], 0
 jmp xchain00091_n2_α
xchain00091_n0_as:
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 0
 jne .Lx00092_0
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00091_n1_α
.Lx00092_0:
 jmp xchain00091_n1_α
 xchain00091_n0_β:
 mov eax, dword ptr [rbp + 1760]
 jmp xchain00091_n1_α
xchain00091_n0_af:
 add dword ptr [rbp + 1760], 1
 mov eax, dword ptr [rbp + 1760]
 jmp xchain00091_n1_α
# IR_DISJUNCTION_NARY
 xchain00091_n1_α:
 mov qword ptr [rbp + 48], 0
 mov qword ptr [rbp + 56], 0
 mov dword ptr [rbp + 64], 0
 jmp xchain00091_n4_α
xchain00091_n1_as:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 jne .Lx00093_0
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 jmp proc_pwrite_ω
.Lx00093_0:
 cmp eax, 1
 jne .Lx00093_1
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 56], rax
 jmp proc_pwrite_ω
.Lx00093_1:
 jmp proc_pwrite_ω
 xchain00091_n1_β:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 je xchain00091_n5_β
 jmp xchain00091_n6_β
xchain00091_n1_af:
 add dword ptr [rbp + 64], 1
 mov eax, dword ptr [rbp + 64]
 cmp eax, 1
 je xchain00091_n6_α
 jmp proc_pwrite_ω
# IR_VAR_REF
 xchain00091_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052448
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00091_n8_α
 xchain00091_n2_β:
 jmp xchain00091_n0_af
# IR_ASSIGN gva
 xchain00091_n3_α:
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00091_n0_as
 xchain00091_n3_β:
 jmp xchain00091_n1_α
# IR_VAR
 xchain00091_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00091_n9_α
 xchain00091_n4_β:
 jmp xchain00091_n1_af
# IR_VAR
 xchain00091_n5_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 168], rax
 jmp xchain00091_n10_α
 xchain00091_n5_β:
 jmp proc_pwrite_ω
# IR_DISJUNCTION_NARY
 xchain00091_n6_α:
 mov qword ptr [rbp + 1104], 0
 mov qword ptr [rbp + 1112], 0
 mov dword ptr [rbp + 1120], 0
 jmp xchain00091_n11_α
xchain00091_n6_as:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 0
 jne .Lx00094_0
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00091_n1_as
.Lx00094_0:
 cmp eax, 1
 jne .Lx00094_1
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00091_n1_as
.Lx00094_1:
 jmp xchain00091_n1_as
 xchain00091_n6_β:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 0
 je xchain00091_n6_af
 jmp xchain00091_n6_af
xchain00091_n6_af:
 add dword ptr [rbp + 1120], 1
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 1
 je xchain00091_n12_α
 jmp proc_pwrite_ω
 xchain00091_n7_α:
 jmp xchain00091_n1_as
xchain00091_n7_β:
 jmp proc_pwrite_ω
# IR_NULLTEST_VAR
 xchain00091_n8_α:
 mov eax, dword ptr [rbp + 2192]
 cmp eax, 99
 je xchain00091_n0_af
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n0_af
 cmp eax, 0
 jne xchain00091_n0_af
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00091_n15_α
# IR_UNOP
 xchain00091_n9_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00091_n16_α
 xchain00091_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn455: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn455]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_pwrite_ω
 jmp xchain00091_n17_α
 xchain00091_n10_β:
 jmp proc_pwrite_ω
# IR_VAR
 xchain00091_n11_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00091_n18_α
 xchain00091_n11_β:
 jmp xchain00091_n6_af
# IR_LIT_STRING
 xchain00091_n12_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00091_n19_α
 xchain00091_n12_β:
 jmp xchain00091_n6_af
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "*** undefined nonterminal:  "
 xchain00091_n13_α:
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
  .Lrkfn460: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn460]
 lea rsi, [rbp + 1152]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain00091_n6_af
 jmp xchain00091_n6_as
 xchain00091_n13_β:
 jmp xchain00091_n6_af
 xchain00091_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn462: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain00091_n6_af
 jmp xchain00091_n6_as
 xchain00091_n14_β:
 jmp xchain00091_n6_af
# IR_LIT_INTEGER
 xchain00091_n15_α:
 mov qword ptr [rbp + 2272], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00091_n20_α
.Lx00096_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00091_n16_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00091_n21_α
.Lx00097_0:
 .quad 0
 xchain00091_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00091_n22_α
# IR_VAR
 xchain00091_n18_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00091_n23_α
# IR_VAR
 xchain00091_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00091_n14_α
# IR_ASSIGN_VAR
 xchain00091_n20_α:
 mov rdi, qword ptr [rbp + 2224]
 mov rsi, qword ptr [rbp + 2232]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00091_n0_af
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00091_n24_α
 xchain00091_n21_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 100
 je .Lx00098_0
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 100
 je .Lx00098_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx00098_2
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 6
 jne .Lx00098_2
.Lx00098_1:
 mov rax, qword ptr [rbp + 1016]
 mov rcx, qword ptr [rbp + 1080]
 cmp rax, rcx
 jne xchain00091_n1_af
 mov rcx, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 976], rcx
 mov rcx, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 984], rcx
 jmp xchain00091_n25_α
.Lx00098_0:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 mov r8d, 9
 lea r9, [rbp + 976]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00098_1
 cmp eax, 1
 je xchain00091_n1_af
 jmp xchain00091_n25_α
.Lx00098_2:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00091_n1_af
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 984], rax
 jmp xchain00091_n25_α
# IR_DISJUNCTION_NARY
 xchain00091_n22_α:
 mov qword ptr [rbp + 576], 0
 mov qword ptr [rbp + 584], 0
 mov dword ptr [rbp + 592], 0
 jmp xchain00091_n27_α
xchain00091_n22_as:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 0
 jne .Lx00099_0
 jmp xchain00091_n26_α
.Lx00099_0:
 jmp xchain00091_n26_α
 xchain00091_n22_β:
 mov eax, dword ptr [rbp + 592]
 jmp xchain00091_n26_α
xchain00091_n22_af:
 add dword ptr [rbp + 592], 1
 mov eax, dword ptr [rbp + 592]
 jmp xchain00091_n26_α
# IR_LIT_STRING
 xchain00091_n23_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00091_n29_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "::="
# IR_LIT_STRING
 xchain00091_n24_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00091_n30_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "lb"
# IR_VAR
 xchain00091_n25_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00091_n31_α
# IR_VAR
 xchain00091_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 328], rax
 jmp xchain00091_n32_α
# IR_VAR
 xchain00091_n27_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 744], rax
 jmp xchain00091_n33_α
 xchain00091_n27_β:
 jmp xchain00091_n22_af
 xchain00091_n28_α:
 jmp xchain00091_n22_as
xchain00091_n28_β:
 jmp xchain00091_n26_α
# IR_VAR_REF
 xchain00091_n29_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00091_n34_α
# IR_LIT_STRING
 xchain00091_n30_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain00091_n35_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "rb"
# IR_LIT_INTEGER
 xchain00091_n31_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00091_n36_α
.Lx00103_0:
 .quad 3
# IR_LIT_STRING
 xchain00091_n32_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00091_n37_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "<"
# IR_VAR
 xchain00091_n33_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00091_n38_α
# IR_VAR
 xchain00091_n34_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00091_n39_α
# IR_LIT_STRING
 xchain00091_n35_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00091_n40_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "vb"
 xchain00091_n36_α:
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
  .Lrkfn492: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn492]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n41_α
 xchain00091_n36_β:
 jmp xchain00091_n5_α
# IR_VAR
 xchain00091_n37_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 392], rax
 jmp xchain00091_n42_α
# IR_LIST_BANG
 xchain00091_n38_α:
 mov qword ptr [rbp + 784], 0
.Lx00106_0:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 784]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp rax, 99
 je xchain00091_n22_af
 jmp xchain00091_n43_α
 xchain00091_n38_β:
 inc qword ptr [rbp + 784]
 jmp .Lx00106_0
# IR_LIT_INTEGER
 xchain00091_n39_α:
 mov qword ptr [rbp + 1504], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00091_n44_α
.Lx00107_0:
 .quad 2
# IR_LIT_STRING
 xchain00091_n40_α:
 mov qword ptr [rbp + 2032], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00091_n45_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "nl"
 xchain00091_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00091_n5_α
# IR_LIT_STRING
 xchain00091_n42_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00091_n46_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string ">::="
 xchain00091_n43_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00091_n38_β
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00091_n47_α
# IR_LIT_INTEGER
 xchain00091_n44_α:
 mov qword ptr [rbp + 1536], 6
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00091_n48_α
.Lx00110_0:
 .quad 18446744073709551615
# IR_LIT_STRING
 xchain00091_n45_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00091_n49_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string ""
# IR_VAR
 xchain00091_n46_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 552], rax
 jmp xchain00091_n50_α
# IR_VAR
 xchain00091_n47_α:
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 680], rax
 jmp xchain00091_n51_α
# IR_SUBSCRIPT section
 xchain00091_n48_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 mov r8, qword ptr [rbp + 1536]
 mov r9, qword ptr [rbp + 1544]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00091_n6_af
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00091_n53_α
# IR_LIT_STRING
 xchain00091_n49_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00091_n54_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "&lcase"
 xchain00091_n50_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn511: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn511]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n55_α
 xchain00091_n50_β:
 jmp xchain00091_n5_α
 xchain00091_n51_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn513: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn513]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n5_α
 xchain00091_n51_β:
 jmp xchain00091_n5_α
 xchain00091_n52_α:
 jmp xchain00091_n5_α
xchain00091_n52_β:
 jmp xchain00091_n5_α
# IR_SUBSCRIPT x[i] variable
 xchain00091_n53_α:
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00091_n6_af
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain00091_n56_α
# IR_LIT_STRING
 xchain00091_n54_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00091_n57_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "&ucase"
 xchain00091_n55_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 7
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00114_1
 lea rcx, [rip + .Lx00114_3]
 lea rdx, [rip + .Lx00114_4]
 jmp rax
.Lx00114_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00114_2
.Lx00114_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00114_2
.Lx00114_1:
 call rt_faildescr@PLT
.Lx00114_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n58_α
 xchain00091_n55_β:
 jmp xchain00091_n5_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "getrhs"
# IR_DEREF variable -> value
 xchain00091_n56_α:
 mov rdi, qword ptr [rbp + 1568]
 mov rsi, qword ptr [rbp + 1576]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00091_n6_af
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00091_n59_α
# IR_LIT_STRING
 xchain00091_n57_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain00091_n60_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "&digit"
 xchain00091_n58_α:
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
  .Lrkfn522: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn522]
 lea rsi, [rbp + 224]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00091_n5_α
 jmp xchain00091_n61_α
 xchain00091_n58_β:
 jmp xchain00091_n5_α
# IR_UNOP
 xchain00091_n59_α:
 mov eax, dword ptr [rbp + 1600]
 cmp eax, 99
 je xchain00091_n6_af
 cmp eax, 0
 je xchain00091_n6_af
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1384], rax
 jmp xchain00091_n62_α
# IR_MAKE_LIST
 xchain00091_n60_α:
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
 jmp xchain00091_n3_α
 xchain00091_n61_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
 jmp xchain00091_n5_α
xchain00091_n61_β:
 jmp xchain00091_n5_α
 xchain00091_n62_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 call rt_arg_stage@PLT
 mov edi, 7
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00116_1
 lea rcx, [rip + .Lx00116_3]
 lea rdx, [rip + .Lx00116_4]
 jmp rax
.Lx00116_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00116_2
.Lx00116_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00116_2
.Lx00116_1:
 call rt_faildescr@PLT
.Lx00116_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain00091_n6_af
 jmp xchain00091_n13_α
 xchain00091_n62_β:
 jmp xchain00091_n6_af
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "getrhs"
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
 xchain00117_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 824], rax
 jmp xchain00117_n1_α
# IR_GEN_SCAN
 xchain00117_n1_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00117_n2_α
# IR_DISJUNCTION_NARY
 xchain00117_n2_α:
 mov qword ptr [rbp + 112], 0
 mov qword ptr [rbp + 120], 0
 mov dword ptr [rbp + 128], 0
 jmp xchain00117_n4_α
xchain00117_n2_as:
 mov eax, dword ptr [rbp + 128]
 cmp eax, 0
 jne .Lx00118_0
 jmp xchain00117_n3_α
.Lx00118_0:
 jmp xchain00117_n3_α
 xchain00117_n2_β:
 mov eax, dword ptr [rbp + 128]
 jmp xchain00117_n27_α
xchain00117_n2_af:
 add dword ptr [rbp + 128], 1
 mov eax, dword ptr [rbp + 128]
 jmp xchain00117_n27_α
# IR_GEN_SCAN
 xchain00117_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp xchain00117_n6_α
 xchain00117_n3_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00117_n2_β
 jmp proc_source_ω
# IR_LIT_STRING
 xchain00117_n4_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00117_n7_α
 xchain00117_n4_β:
 jmp xchain00117_n2_af
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "@"
 xchain00117_n5_α:
 jmp xchain00117_n2_as
xchain00117_n5_β:
 jmp xchain00117_n27_α
# IR_RETURN
 xchain00117_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_source_γ
# IR_SCAN_MATCH
 xchain00117_n7_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00120_239
 add rsp, 16
 jmp xchain00117_n2_af
.Lx00120_239:
 mov rdi, qword ptr [rip + .Lx00120_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00120_240
 add rsp, 16
 jmp xchain00117_n2_af
.Lx00120_240:
 mov qword ptr [rbp + 752], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 760], rax
 jmp xchain00117_n8_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00117_n8_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 760]
 cmp rax, 1
 jge .Lx00121_0
 add rax, r15
 add rax, 1
.Lx00121_0:
 cmp rax, 1
 jge .Lx00121_239
 add rsp, 16
 jmp xchain00117_n2_af
.Lx00121_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00121_240
 add rsp, 16
 jmp xchain00117_n2_af
.Lx00121_240:
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
 jmp xchain00117_n9_α
 xchain00117_n8_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00117_n2_af
# IR_DISJUNCTION_NARY
 xchain00117_n9_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00117_n11_α
xchain00117_n9_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00122_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00117_n10_α
.Lx00122_0:
 cmp eax, 1
 jne .Lx00122_1
 jmp xchain00117_n10_α
.Lx00122_1:
 jmp xchain00117_n10_α
 xchain00117_n9_β:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 je xchain00117_n9_af
 jmp xchain00117_n9_af
xchain00117_n9_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 cmp eax, 1
 je xchain00117_n12_α
 jmp xchain00117_n15_α
 xchain00117_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00117_n15_α
# IR_LIT_INTEGER
 xchain00117_n11_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00117_n16_α
 xchain00117_n11_β:
 jmp xchain00117_n9_af
.Lx00123_0:
 .quad 0
# KEYWORD_read
 xchain00117_n12_α:
 mov rdi, qword ptr [rip + .Lx00124_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_source_ω
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00117_n17_α
 xchain00117_n12_β:
 jmp proc_source_ω
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "&errout"
 xchain00117_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn551: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn551]
 lea rsi, [rbp + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00117_n9_af
 jmp xchain00117_n9_as
 xchain00117_n13_β:
 jmp xchain00117_n9_af
 xchain00117_n14_α:
 jmp xchain00117_n9_as
xchain00117_n14_β:
 jmp xchain00117_n9_af
# IR_VAR
 xchain00117_n15_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00117_n18_α
# IR_SCAN_TAB
 xchain00117_n16_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00125_0
 add rax, r15
 add rax, 1
.Lx00125_0:
 cmp rax, 1
 jge .Lx00125_239
 add rsp, 16
 jmp xchain00117_n9_af
.Lx00125_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00125_240
 add rsp, 16
 jmp xchain00117_n9_af
.Lx00125_240:
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
 jmp xchain00117_n20_α
 xchain00117_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00117_n9_af
# IR_LIT_STRING
 xchain00117_n17_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00117_n21_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "*** cannot open "
# IR_VAR
 xchain00117_n18_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00117_n22_α
# IR_RETURN
 xchain00117_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_source_γ
 xchain00117_n20_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00117_n13_α
# IR_VAR
 xchain00117_n21_α:
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 696], rax
 jmp xchain00117_n23_α
 xchain00117_n22_α:
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
  .Lrkfn563: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn563]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00117_n19_α
 jmp xchain00117_n24_α
 xchain00117_n22_β:
 jmp xchain00117_n19_α
 xchain00117_n23_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+576]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+592]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn565: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn565]
 lea rsi, [rbp + 560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_source_ω
 jmp proc_source_ω
 xchain00117_n23_β:
 jmp proc_source_ω
# IR_VAR
 xchain00117_n24_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 200], rax
 jmp xchain00117_n25_α
# IR_ASSIGN gva
 xchain00117_n25_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00117_n26_α
 xchain00117_n26_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00117_n19_α
xchain00117_n26_β:
 jmp xchain00117_n19_α
# IR_GEN_SCAN
 xchain00117_n27_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_source_ω
 xchain00117_n27_β:
 jmp proc_source_ω
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
 xchain00127_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00127_n1_α
 xchain00127_n1_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn576: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn576]
 lea rsi, [rbp + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00127_n2_α
 xchain00127_n1_β:
 jmp proc_symimage_ω
# IR_LIT_STRING
 xchain00127_n2_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00127_n3_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "string"
 xchain00127_n3_α:
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
  .Lrkfn579: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00127_n5_α
 jmp xchain00127_n4_α
 xchain00127_n3_β:
 jmp xchain00127_n5_α
# IR_VAR
 xchain00127_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 792], rax
 jmp xchain00127_n6_α
# IR_LIT_STRING
 xchain00127_n5_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00127_n7_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "nonterm"
 xchain00127_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00127_n8_α
 xchain00127_n7_α:
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
  .Lrkfn585: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn585]
 lea rsi, [rbp + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain00127_n10_α
 jmp xchain00127_n9_α
 xchain00127_n7_β:
 jmp xchain00127_n10_α
# IR_VAR
 xchain00127_n8_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 40], rax
 jmp xchain00127_n11_α
# IR_LIT_STRING
 xchain00127_n9_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00127_n12_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "<"
# IR_LIT_STRING
 xchain00127_n10_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00127_n13_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "charset"
# IR_RETURN
 xchain00127_n11_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_symimage_γ
# IR_VAR
 xchain00127_n12_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 616], rax
 jmp xchain00127_n14_α
 xchain00127_n13_α:
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
  .Lrkfn594: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn594]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je proc_symimage_ω
 jmp xchain00127_n15_α
 xchain00127_n13_β:
 jmp proc_symimage_ω
# IR_FIELD_GET
 xchain00127_n14_α:
 mov rdi, qword ptr [rip + .Lx00132_0]
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00127_n16_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "name"
# IR_LIT_STRING
 xchain00127_n15_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00127_n17_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "<'"
 xchain00127_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call str_concat_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00127_n18_α
# IR_VAR
 xchain00127_n17_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00127_n19_α
# IR_LIT_STRING
 xchain00127_n18_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00127_n20_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string ">"
# IR_FIELD_GET
 xchain00127_n19_α:
 mov rdi, qword ptr [rip + .Lx00135_0]
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_symimage_ω
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00127_n21_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "chars"
 xchain00127_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call str_concat_d@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00127_n22_α
 xchain00127_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00127_n23_α
 xchain00127_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00127_n8_α
# IR_LIT_STRING
 xchain00127_n23_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00127_n24_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "'>"
 xchain00127_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call str_concat_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00127_n25_α
 xchain00127_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00127_n8_α
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
# IR_DISJUNCTION_NARY
 xchain00137_n0_α:
 mov qword ptr [rbp + 880], 0
 mov qword ptr [rbp + 888], 0
 mov dword ptr [rbp + 896], 0
 jmp xchain00137_n2_α
xchain00137_n0_as:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 0
 jne .Lx00138_0
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 jmp xchain00137_n1_α
.Lx00138_0:
 jmp xchain00137_n1_α
 xchain00137_n0_β:
 mov eax, dword ptr [rbp + 896]
 jmp xchain00137_n1_α
xchain00137_n0_af:
 add dword ptr [rbp + 896], 1
 mov eax, dword ptr [rbp + 896]
 jmp xchain00137_n1_α
# IR_MAKE_LIST
 xchain00137_n1_α:
 lea rdi, [rbp + 880]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00137_n4_α
# IR_VAR_REF
 xchain00137_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052480
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00137_n5_α
 xchain00137_n2_β:
 jmp xchain00137_n0_af
# IR_ASSIGN gva
 xchain00137_n3_α:
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00137_n0_as
 xchain00137_n3_β:
 jmp xchain00137_n1_α
 xchain00137_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00137_n6_α
# IR_NULLTEST_VAR
 xchain00137_n5_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00137_n0_af
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00137_n0_af
 cmp eax, 0
 jne xchain00137_n0_af
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00137_n7_α
# IR_VAR
 xchain00137_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 824], rax
 jmp xchain00137_n8_α
# IR_LIT_INTEGER
 xchain00137_n7_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00137_n10_α
.Lx00139_0:
 .quad 1
# IR_GEN_SCAN
 xchain00137_n8_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00137_n11_α
# IR_VAR
 xchain00137_n9_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 40], rax
 jmp xchain00137_n12_α
# IR_ASSIGN_VAR
 xchain00137_n10_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00137_n0_af
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00137_n13_α
# IR_VAR
 xchain00137_n11_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 216], rax
 jmp xchain00137_n14_α
# IR_RETURN
 xchain00137_n12_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_syms_γ
# IR_LIT_CHARSET
 xchain00137_n13_α:
 mov qword ptr [rbp + 960], 1
 mov dword ptr [rbp + 964], -1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00137_n16_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "<"
# IR_DISJUNCTION_NARY
 xchain00137_n14_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00137_n18_α
xchain00137_n14_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00141_0
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
 jmp xchain00137_n17_α
.Lx00141_0:
 cmp eax, 1
 jne .Lx00141_1
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 248], rax
 jmp xchain00137_n17_α
.Lx00141_1:
 jmp xchain00137_n17_α
 xchain00137_n14_β:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 je xchain00137_n14_af
 jmp xchain00137_n20_β
xchain00137_n14_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 cmp eax, 1
 je xchain00137_n19_α
 jmp xchain00137_n15_α
# IR_GEN_SCAN
 xchain00137_n15_α:
 lea rdi, [rbp + 80]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 80]
 mov r14, qword ptr [rbp + 88]
 mov r15, qword ptr [rbp + 96]
 jmp xchain00137_n9_α
 xchain00137_n15_β:
 jmp xchain00137_n9_α
# IR_UNOP
 xchain00137_n16_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00137_n3_α
 xchain00137_n17_α:
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
  .Lrkfn636: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn636]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00137_n14_β
 jmp xchain00137_n11_α
 xchain00137_n17_β:
 jmp xchain00137_n14_β
# IR_VAR
 xchain00137_n18_α:
 mov rax, qword ptr [1879052464]
 mov rdx, qword ptr [1879052472]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00137_n23_α
 xchain00137_n18_β:
 jmp xchain00137_n14_af
# IR_LIT_INTEGER
 xchain00137_n19_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00137_n24_α
 xchain00137_n19_β:
 jmp xchain00137_n14_af
.Lx00142_0:
 .quad 2
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00137_n20_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 488], rax
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 504], rax
 mov qword ptr [rbp + 512], 0
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 lea rdx, [rbp + 464]
 mov ecx, 3
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx00143_7
 lea rcx, [rip + .Lx00143_3]
 lea rdx, [rip + .Lx00143_4]
 jmp rax
.Lx00143_3:
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx00143_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00143_2
.Lx00143_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00143_2
.Lx00143_4:
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx00143_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00143_2
.Lx00143_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00143_2
.Lx00143_7:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 lea rdx, [rbp + 464]
 mov ecx, 3
 lea r8, [rbp + 512]
 call rt_call_value_gen_h@PLT
.Lx00143_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00137_n25_β
 jmp xchain00137_n22_α
 xchain00137_n20_β:
 mov rax, qword ptr [rbp + 512]
 cmp rax, 1
 jne .Lx00143_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx00143_8:
 lea rdi, [rbp + 512]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00137_n25_β
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00137_n22_α
 jmp xchain00137_n25_β
# IR_SCAN_TAB
 xchain00137_n21_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 312]
 cmp rax, 1
 jge .Lx00144_0
 add rax, r15
 add rax, 1
.Lx00144_0:
 cmp rax, 1
 jge .Lx00144_239
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00144_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00144_240
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00144_240:
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
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00137_n14_as
 xchain00137_n21_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00137_n14_af
 xchain00137_n22_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 3
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00145_1
 lea rcx, [rip + .Lx00145_3]
 lea rdx, [rip + .Lx00145_4]
 jmp rax
.Lx00145_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00145_2
.Lx00145_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00145_2
.Lx00145_1:
 call rt_faildescr@PLT
.Lx00145_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00137_n20_β
 jmp xchain00137_n14_as
 xchain00137_n22_β:
 jmp xchain00137_n20_β
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "defnon"
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00137_n23_α:
 mov eax, r14d
.Lx00146_0:
 cmp eax, r15d
 jge .Lx00146_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 344]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00146_1
 add eax, 1
 jmp .Lx00146_0
.Lx00146_1:
 cmp eax, r14d
 je xchain00137_n14_af
 mov qword ptr [rbp + 304], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 312], rcx
 jmp xchain00137_n21_α
 xchain00137_n23_β:
 jmp xchain00137_n14_af
# IR_LIT_STRING
 xchain00137_n24_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00137_n26_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "<"
# IR_SCAN_UPTO
 xchain00137_n25_α:
 mov qword ptr [rbp + 704], r14
.Lx00148_0:
 mov rax, qword ptr [rbp + 704]
 cmp rax, r15
 jge xchain00137_n14_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00148_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00148_1
 mov qword ptr [rbp + 688], 6
 add rax, 1
 mov qword ptr [rbp + 696], rax
 jmp xchain00137_n27_α
.Lx00148_1:
 inc qword ptr [rbp + 704]
 jmp .Lx00148_0
 xchain00137_n25_β:
 inc qword ptr [rbp + 704]
 jmp .Lx00148_0
.Lx00148_2:
 .quad .Lx00148_2_s
.Lx00148_2_s:
 .string ">"
# IR_SCAN_MATCH
 xchain00137_n26_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00149_239
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00149_239:
 mov rdi, qword ptr [rip + .Lx00149_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00149_240
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00149_240:
 mov qword ptr [rbp + 592], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 600], rax
 jmp xchain00137_n28_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "<"
# IR_SCAN_TAB
 xchain00137_n27_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 696]
 cmp rax, 1
 jge .Lx00150_0
 add rax, r15
 add rax, 1
.Lx00150_0:
 cmp rax, 1
 jge .Lx00150_239
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00150_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00150_240
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00150_240:
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
 jmp xchain00137_n29_α
 xchain00137_n27_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00137_n14_af
# IR_SCAN_TAB
 xchain00137_n28_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 600]
 cmp rax, 1
 jge .Lx00151_0
 add rax, r15
 add rax, 1
.Lx00151_0:
 cmp rax, 1
 jge .Lx00151_239
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00151_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00151_240
 add rsp, 16
 jmp xchain00137_n14_af
.Lx00151_240:
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
 jmp xchain00137_n30_α
 xchain00137_n28_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00137_n14_af
# IR_LIT_INTEGER
 xchain00137_n29_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00137_n31_α
.Lx00152_0:
 .quad 1
# IR_LIT_CHARSET
 xchain00137_n30_α:
 mov qword ptr [rbp + 720], 1
 mov dword ptr [rbp + 724], -1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00137_n25_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string ">"
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00137_n31_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00154_239
 add rsp, 16
 jmp xchain00137_n25_β
.Lx00154_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00154_240
 add rsp, 16
 jmp xchain00137_n25_β
.Lx00154_240:
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
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00137_n20_α
 xchain00137_n31_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00137_n25_β
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
 xchain00155_n0_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00155_n1_α
# IR_NULLTEST_VAR
 xchain00155_n1_α:
 mov eax, dword ptr [rbp + 3424]
 cmp eax, 99
 je xchain00155_n3_α
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00155_n3_α
 cmp eax, 0
 jne xchain00155_n3_α
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00155_n2_α
# IR_LIT_CHARSET
 xchain00155_n2_α:
 mov qword ptr [rbp + 3552], 1
 mov dword ptr [rbp + 3556], -1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00155_n4_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00155_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn666: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn666]
 lea rsi, [rbp + 3408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00155_n6_α
 jmp xchain00155_n5_α
 xchain00155_n3_β:
 jmp xchain00155_n6_α
 xchain00155_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn668: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn668]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je xchain00155_n3_α
 jmp xchain00155_n7_α
 xchain00155_n4_β:
 jmp xchain00155_n3_α
 xchain00155_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00155_n6_α
# IR_MAKE_LIST
 xchain00155_n6_α:
 lea rdi, [rbp + 3376]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00155_n8_α
# IR_ASSIGN_VAR
 xchain00155_n7_α:
 mov rdi, qword ptr [rbp + 3456]
 mov rsi, qword ptr [rbp + 3464]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00155_n3_α
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00155_n3_α
 xchain00155_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00155_n9_α
# IR_VAR
 xchain00155_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00155_n10_α
 xchain00155_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn677: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn677]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00155_n11_α
 jmp xchain00155_n12_α
 xchain00155_n10_β:
 jmp xchain00155_n11_α
# IR_VAR
 xchain00155_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00155_n13_α
 xchain00155_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00155_n15_α
# IR_VAR
 xchain00155_n13_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 232], rax
 jmp xchain00155_n16_α
# IR_VAR
 xchain00155_n14_α:
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 56], rax
 jmp xchain00155_n17_α
# IR_VAR
 xchain00155_n15_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00155_n18_α
 xchain00155_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn688: .string "pull"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn688]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00155_n14_α
 jmp xchain00155_n19_α
 xchain00155_n16_β:
 jmp xchain00155_n14_α
# IR_RETURN
 xchain00155_n17_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00155_n18_α:
 mov rdi, qword ptr [rbp + 3312]
 mov rsi, qword ptr [rbp + 3320]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00155_n20_α
 xchain00155_n19_α:
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
  .Lrkfn693: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn693]
 lea rsi, [rbp + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00155_n14_α
 jmp xchain00155_n11_α
 xchain00155_n19_β:
 jmp xchain00155_n14_α
# IR_DISJUNCTION_NARY
 xchain00155_n20_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00155_n22_α
xchain00155_n20_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00157_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00155_n21_α
.Lx00157_0:
 cmp eax, 1
 jne .Lx00157_1
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 440], rax
 jmp xchain00155_n21_α
.Lx00157_1:
 jmp xchain00155_n21_α
 xchain00155_n20_β:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 je xchain00155_n23_β
 jmp xchain00155_n35_α
xchain00155_n20_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 cmp eax, 1
 je xchain00155_n24_α
 jmp xchain00155_n35_α
# IR_GEN_SCAN
 xchain00155_n21_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00155_n9_α
 xchain00155_n21_β:
 call rt_scan_reenter@PLT
 mov r13, rax
 mov r15, rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 jmp xchain00155_n20_β
 jmp xchain00155_n9_α
# IR_LIT_STRING
 xchain00155_n22_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00155_n27_α
 xchain00155_n22_β:
 jmp xchain00155_n20_af
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "-"
# IR_DISJUNCTION_NARY
 xchain00155_n23_α:
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 mov dword ptr [rbp + 576], 0
 jmp xchain00155_n29_α
xchain00155_n23_as:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 jne .Lx00159_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
 jmp xchain00155_n28_α
.Lx00159_0:
 cmp eax, 1
 jne .Lx00159_1
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 568], rax
 jmp xchain00155_n28_α
.Lx00159_1:
 jmp xchain00155_n28_α
 xchain00155_n23_β:
 mov eax, dword ptr [rbp + 576]
 cmp eax, 0
 je xchain00155_n30_β
 jmp xchain00155_n28_α
xchain00155_n23_af:
 add dword ptr [rbp + 576], 1
 mov eax, dword ptr [rbp + 576]
 cmp eax, 1
 je xchain00155_n31_α
 jmp xchain00155_n28_α
# IR_VAR
 xchain00155_n24_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00155_n34_α
 xchain00155_n24_β:
 jmp xchain00155_n35_α
 xchain00155_n25_α:
 jmp xchain00155_n20_as
xchain00155_n25_β:
 jmp xchain00155_n35_α
 xchain00155_n26_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3248] -> [zr+3200]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3216]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3224], rax
  .section .rodata
  .Lrkfn705: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn705]
 lea rsi, [rbp + 3200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain00155_n35_α
 jmp xchain00155_n20_as
 xchain00155_n26_β:
 jmp xchain00155_n35_α
# IR_SCAN_MATCH
 xchain00155_n27_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00160_239
 add rsp, 16
 jmp xchain00155_n20_af
.Lx00160_239:
 mov rdi, qword ptr [rip + .Lx00160_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00160_240
 add rsp, 16
 jmp xchain00155_n20_af
.Lx00160_240:
 mov qword ptr [rbp + 3120], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 3128], rax
 jmp xchain00155_n36_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00155_n28_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00155_n37_α
.Lx00161_0:
 .quad 1
# IR_VAR
 xchain00155_n29_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00155_n38_α
 xchain00155_n29_β:
 jmp xchain00155_n23_af
# IR_DISJUNCTION_NARY
 xchain00155_n30_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00155_n39_α
xchain00155_n30_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00162_0
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 712], rax
 jmp xchain00155_n32_α
.Lx00162_0:
 cmp eax, 1
 jne .Lx00162_1
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 712], rax
 jmp xchain00155_n32_α
.Lx00162_1:
 jmp xchain00155_n32_α
 xchain00155_n30_β:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 je xchain00155_n28_α
 jmp xchain00155_n28_α
xchain00155_n30_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 cmp eax, 1
 je xchain00155_n40_α
 jmp xchain00155_n28_α
# IR_LIT_STRING
 xchain00155_n31_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain00155_n42_α
 xchain00155_n31_β:
 jmp xchain00155_n28_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "Unrecognized option: -"
# IR_ASSIGN_VAR
 xchain00155_n32_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00155_n28_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00155_n23_as
 xchain00155_n32_β:
 jmp xchain00155_n28_α
 xchain00155_n33_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
  .section .rodata
  .Lrkfn716: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn716]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00155_n28_α
 jmp xchain00155_n23_as
 xchain00155_n33_β:
 jmp xchain00155_n28_α
# IR_VAR
 xchain00155_n34_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00155_n26_α
# IR_GEN_SCAN
 xchain00155_n35_α:
 lea rdi, [rbp + 368]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 368]
 mov r14, qword ptr [rbp + 376]
 mov r15, qword ptr [rbp + 384]
 jmp xchain00155_n9_α
 xchain00155_n35_β:
 jmp xchain00155_n9_α
# IR_SCAN_TAB
 xchain00155_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 3128]
 cmp rax, 1
 jge .Lx00164_0
 add rax, r15
 add rax, 1
.Lx00164_0:
 cmp rax, 1
 jge .Lx00164_239
 add rsp, 16
 jmp xchain00155_n20_af
.Lx00164_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00164_240
 add rsp, 16
 jmp xchain00155_n20_af
.Lx00164_240:
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
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain00155_n43_α
 xchain00155_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00155_n20_af
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00155_n37_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00165_239
 add rsp, 16
 jmp xchain00155_n35_α
.Lx00165_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00165_240
 add rsp, 16
 jmp xchain00155_n35_α
.Lx00165_240:
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
 jmp xchain00155_n44_α
 xchain00155_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00155_n35_α
# IR_VAR
 xchain00155_n38_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00155_n45_α
# IR_LIT_CHARSET
 xchain00155_n39_α:
 mov qword ptr [rbp + 2208], 1
 mov dword ptr [rbp + 2212], -1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00155_n46_α
 xchain00155_n39_β:
 jmp xchain00155_n30_af
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "+.:"
# IR_LIT_INTEGER
 xchain00155_n40_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00155_n30_as
 xchain00155_n40_β:
 jmp xchain00155_n28_α
.Lx00167_0:
 .quad 1
 xchain00155_n41_α:
 jmp xchain00155_n30_as
xchain00155_n41_β:
 jmp xchain00155_n28_α
# IR_VAR
 xchain00155_n42_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2744], rax
 jmp xchain00155_n33_α
# IR_LIT_INTEGER
 xchain00155_n43_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain00155_n47_α
.Lx00168_0:
 .quad 0
 xchain00155_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00155_n23_α
 xchain00155_n45_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2496]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2512]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2520], rax
 mov qword ptr [rbp + 2528], 0
.Lx00169_60:
  .section .rodata
  .Lbynamegenfn480: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn480]
 lea rsi, [rbp + 2496]
 mov edx, 2
 lea rcx, [rbp + 2528]
 call rt_call_arr_gen@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain00155_n23_af
 jmp xchain00155_n48_α
 xchain00155_n45_β:
 jmp .Lx00169_60
# IR_VAR_REF
 xchain00155_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00155_n49_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00155_n47_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00170_0
 add rax, r15
 add rax, 1
.Lx00170_0:
 cmp rax, 1
 jl xchain00155_n50_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00155_n50_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00155_n50_α
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain00155_n20_af
# IR_LIT_INTEGER
 xchain00155_n48_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00155_n51_α
.Lx00171_0:
 .quad 1
# IR_VAR
 xchain00155_n49_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00155_n52_α
# KEYWORD_null
 xchain00155_n50_α:
 mov qword ptr [rbp + 2992], 0
 mov qword ptr [rbp + 3000], 0
 jmp xchain00155_n53_α
 xchain00155_n50_β:
 jmp xchain00155_n20_af
# IR_COERCE_NUMERIC
 xchain00155_n51_α:
 mov eax, dword ptr [rbp + 2480]
 cmp eax, 7
 je .Lx00172_1
 cmp eax, 6
 jne .Lx00172_0
 mov eax, dword ptr [rbp + 2608]
 cmp eax, 6
 jne .Lx00172_0
.Lx00172_1:
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
 jmp xchain00155_n54_α
.Lx00172_0:
 lea rdi, [rbp + 2480]
 lea rsi, [rbp + 2608]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00155_n54_α
# IR_SUBSCRIPT x[i] variable
 xchain00155_n52_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00155_n30_af
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00155_n55_α
 xchain00155_n53_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2984], rax
 jmp xchain00155_n56_α
xchain00155_n53_β:
 jmp xchain00155_n20_af
 xchain00155_n54_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx00173_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx00173_2
.Lx00173_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain00155_n57_α
.Lx00173_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00155_n57_α
.Lx00173_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00155_n23_af
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00155_n57_α
 xchain00155_n54_β:
 jmp xchain00155_n23_af
# IR_DEREF variable -> value
 xchain00155_n55_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00155_n30_af
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00155_n58_α
# IR_DISJUNCTION_NARY
 xchain00155_n56_α:
 mov qword ptr [rbp + 2768], 0
 mov qword ptr [rbp + 2776], 0
 mov dword ptr [rbp + 2784], 0
 jmp xchain00155_n59_α
xchain00155_n56_as:
 mov eax, dword ptr [rbp + 2784]
 cmp eax, 0
 jne .Lx00174_0
 jmp xchain00155_n28_α
.Lx00174_0:
 jmp xchain00155_n28_α
 xchain00155_n56_β:
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00155_n28_α
xchain00155_n56_af:
 add dword ptr [rbp + 2784], 1
 mov eax, dword ptr [rbp + 2784]
 jmp xchain00155_n28_α
 xchain00155_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00155_n60_α
 xchain00155_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00155_n61_α
# IR_LIT_STRING
 xchain00155_n59_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00155_n62_α
 xchain00155_n59_β:
 jmp xchain00155_n56_af
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "-"
# IR_VAR_REF
 xchain00155_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3600]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00155_n63_α
 xchain00155_n61_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
  .section .rodata
  .Lbynamefn496: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn496]
 lea rsi, [rbp + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00155_n30_af
 jmp xchain00155_n64_α
 xchain00155_n61_β:
 jmp xchain00155_n30_af
# IR_SCAN_MATCH
 xchain00155_n62_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00176_239
 add rsp, 16
 jmp xchain00155_n56_af
.Lx00176_239:
 mov rdi, qword ptr [rip + .Lx00176_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00176_240
 add rsp, 16
 jmp xchain00155_n56_af
.Lx00176_240:
 mov qword ptr [rbp + 2912], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 2920], rax
 jmp xchain00155_n65_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "-"
# IR_VAR
 xchain00155_n63_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 632], rax
 jmp xchain00155_n66_α
# IR_DISJUNCTION_NARY
 xchain00155_n64_α:
 mov qword ptr [rbp + 1776], 0
 mov qword ptr [rbp + 1784], 0
 mov dword ptr [rbp + 1792], 0
 jmp xchain00155_n68_α
xchain00155_n64_as:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 jne .Lx00177_0
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00155_n67_α
.Lx00177_0:
 cmp eax, 1
 jne .Lx00177_1
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00155_n67_α
.Lx00177_1:
 cmp eax, 2
 jne .Lx00177_2
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00155_n67_α
.Lx00177_2:
 jmp xchain00155_n67_α
 xchain00155_n64_β:
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 0
 je xchain00155_n64_af
 cmp eax, 1
 je xchain00155_n64_af
 jmp xchain00155_n64_af
xchain00155_n64_af:
 add dword ptr [rbp + 1792], 1
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 1
 je xchain00155_n69_α
 cmp eax, 2
 je xchain00155_n70_α
 jmp xchain00155_n75_α
# IR_SCAN_TAB
 xchain00155_n65_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 2920]
 cmp rax, 1
 jge .Lx00178_0
 add rax, r15
 add rax, 1
.Lx00178_0:
 cmp rax, 1
 jge .Lx00178_239
 add rsp, 16
 jmp xchain00155_n56_af
.Lx00178_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00178_240
 add rsp, 16
 jmp xchain00155_n56_af
.Lx00178_240:
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
 jmp xchain00155_n74_α
 xchain00155_n65_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00155_n56_af
# IR_SUBSCRIPT x[i] variable
 xchain00155_n66_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00155_n28_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00155_n30_α
 xchain00155_n67_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1776]
 mov rdx, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00155_n75_α
# IR_LIT_STRING
 xchain00155_n68_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00155_n76_α
 xchain00155_n68_β:
 jmp xchain00155_n64_af
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string ""
# IR_VAR
 xchain00155_n69_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1992], rax
 jmp xchain00155_n72_α
 xchain00155_n69_β:
 jmp xchain00155_n64_af
# IR_LIT_STRING
 xchain00155_n70_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00155_n77_α
 xchain00155_n70_β:
 jmp xchain00155_n64_af
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "No parameter following -"
 xchain00155_n71_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1872]
 mov rcx, qword ptr [rbp + 1880]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00155_n64_af
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00155_n64_as
 xchain00155_n71_β:
 jmp xchain00155_n64_af
 xchain00155_n72_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn773: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn773]
 lea rsi, [rbp + 1952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00155_n64_af
 jmp xchain00155_n64_as
 xchain00155_n72_β:
 jmp xchain00155_n64_af
 xchain00155_n73_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
  .section .rodata
  .Lrkfn775: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn775]
 lea rsi, [rbp + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00155_n64_af
 jmp xchain00155_n64_as
 xchain00155_n73_β:
 jmp xchain00155_n64_af
# IR_LIT_INTEGER
 xchain00155_n74_α:
 mov qword ptr [rbp + 2848], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00155_n78_α
.Lx00181_0:
 .quad 0
# IR_VAR
 xchain00155_n75_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 792], rax
 jmp xchain00155_n79_α
# IR_LIT_INTEGER
 xchain00155_n76_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00155_n80_α
.Lx00182_0:
 .quad 0
# IR_VAR
 xchain00155_n77_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 2120], rax
 jmp xchain00155_n73_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00155_n78_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00183_0
 add rax, r15
 add rax, 1
.Lx00183_0:
 cmp rax, 1
 jl xchain00155_n56_af
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00155_n56_af
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00155_n56_af
 mov qword ptr [rbp + 2816], 6
 mov qword ptr [rbp + 2824], rax
 jmp xchain00155_n81_α
# IR_LIT_STRING
 xchain00155_n79_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00155_n82_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string ":"
# IR_SCAN_TAB
 xchain00155_n80_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00185_0
 add rax, r15
 add rax, 1
.Lx00185_0:
 cmp rax, 1
 jge .Lx00185_239
 add rsp, 16
 jmp xchain00155_n64_af
.Lx00185_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00185_240
 add rsp, 16
 jmp xchain00155_n64_af
.Lx00185_240:
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
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00155_n71_α
 xchain00155_n80_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00155_n64_af
 xchain00155_n81_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00155_n11_α
xchain00155_n81_β:
 jmp xchain00155_n56_af
 xchain00155_n82_α:
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
  .Lrkfn789: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn789]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain00155_n84_α
 jmp xchain00155_n83_α
 xchain00155_n82_β:
 jmp xchain00155_n84_α
# IR_VAR
 xchain00155_n83_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00155_n85_α
# IR_LIT_STRING
 xchain00155_n84_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00155_n86_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "+"
 xchain00155_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00155_n87_α
 xchain00155_n86_α:
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
  .Lrkfn795: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn795]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00155_n89_α
 jmp xchain00155_n88_β
 xchain00155_n86_β:
 jmp xchain00155_n89_α
# IR_VAR
 xchain00155_n87_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 760], rax
 jmp xchain00155_n41_α
# IR_DISJUNCTION_NARY
 xchain00155_n88_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00155_n91_α
xchain00155_n88_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00187_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00155_n90_α
.Lx00187_0:
 cmp eax, 1
 jne .Lx00187_1
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00155_n90_α
.Lx00187_1:
 jmp xchain00155_n90_α
 xchain00155_n88_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00155_n88_af
 jmp xchain00155_n88_af
xchain00155_n88_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je xchain00155_n92_α
 jmp xchain00155_n28_α
# IR_LIT_STRING
 xchain00155_n89_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00155_n95_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "."
 xchain00155_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00155_n87_α
# IR_VAR
 xchain00155_n91_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00155_n93_α
 xchain00155_n91_β:
 jmp xchain00155_n88_af
# IR_LIT_STRING
 xchain00155_n92_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00155_n96_α
 xchain00155_n92_β:
 jmp xchain00155_n88_af
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "-"
 xchain00155_n93_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn806: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain00155_n88_af
 jmp xchain00155_n88_as
 xchain00155_n93_β:
 jmp xchain00155_n88_af
 xchain00155_n94_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1392]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1504] -> [zr+1408]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn808: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn808]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00155_n88_af
 jmp xchain00155_n88_as
 xchain00155_n94_β:
 jmp xchain00155_n88_af
 xchain00155_n95_α:
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
  .Lrkfn810: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn810]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00155_n28_α
 jmp xchain00155_n97_β
 xchain00155_n95_β:
 jmp xchain00155_n28_α
# IR_VAR
 xchain00155_n96_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00155_n98_α
# IR_DISJUNCTION_NARY
 xchain00155_n97_α:
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 mov dword ptr [rbp + 864], 0
 jmp xchain00155_n00190_α
xchain00155_n97_as:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 jne .Lx00191_0
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
 jmp xchain00155_n99_α
.Lx00191_0:
 cmp eax, 1
 jne .Lx00191_1
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
 jmp xchain00155_n99_α
.Lx00191_1:
 jmp xchain00155_n99_α
 xchain00155_n97_β:
 mov eax, dword ptr [rbp + 864]
 cmp eax, 0
 je xchain00155_n97_af
 jmp xchain00155_n97_af
xchain00155_n97_af:
 add dword ptr [rbp + 864], 1
 mov eax, dword ptr [rbp + 864]
 cmp eax, 1
 je xchain00155_n00001_α
 jmp xchain00155_n28_α
# IR_LIT_STRING
 xchain00155_n98_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00155_n94_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string " needs numeric parameter"
 xchain00155_n99_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00155_n87_α
# IR_VAR
 xchain00155_n00190_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 936], rax
 jmp xchain00155_n00193_α
 xchain00155_n00190_β:
 jmp xchain00155_n97_af
# IR_LIT_STRING
 xchain00155_n00001_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00155_n00195_α
 xchain00155_n00001_β:
 jmp xchain00155_n97_af
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "-"
 xchain00155_n00193_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn821: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn821]
 lea rsi, [rbp + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain00155_n97_af
 jmp xchain00155_n97_as
 xchain00155_n00193_β:
 jmp xchain00155_n97_af
 xchain00155_n00196_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+992]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+1104] -> [zr+1008]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn823: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn823]
 lea rsi, [rbp + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00155_n97_af
 jmp xchain00155_n97_as
 xchain00155_n00196_β:
 jmp xchain00155_n97_af
# IR_VAR
 xchain00155_n00195_α:
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00155_n00002_α
# IR_LIT_STRING
 xchain00155_n00002_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00155_n00196_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string " needs numeric parameter"
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
 xchain00198_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00198_n1_α
# IR_ASSIGN gva
 xchain00198_n1_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00198_n2_α
 xchain00198_n2_α:
 mov edi, 20
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00199_1
 lea rcx, [rip + .Lx00199_3]
 lea rdx, [rip + .Lx00199_4]
 jmp rax
.Lx00199_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00199_2
.Lx00199_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00199_2
.Lx00199_1:
 call rt_faildescr@PLT
.Lx00199_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00198_n3_α
 jmp xchain00198_n3_α
 xchain00198_n2_β:
 jmp xchain00198_n3_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "Signature__"
 xchain00198_n3_α:
 mov edi, 19
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00200_1
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
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00198_n4_α
 jmp xchain00198_n4_α
 xchain00198_n3_β:
 jmp xchain00198_n4_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "Regions__"
 xchain00198_n4_α:
 mov edi, 22
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00201_1
 lea rcx, [rip + .Lx00201_3]
 lea rdx, [rip + .Lx00201_4]
 jmp rax
.Lx00201_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00201_2
.Lx00201_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00201_2
.Lx00201_1:
 call rt_faildescr@PLT
.Lx00201_2:
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00198_n5_α
 jmp xchain00198_n5_α
 xchain00198_n4_β:
 jmp xchain00198_n5_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "Time__"
# IR_DISJUNCTION_NARY
 xchain00198_n5_α:
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 mov dword ptr [rbp + 208], 0
 jmp xchain00198_n7_α
xchain00198_n5_as:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 0
 jne .Lx00202_0
 jmp xchain00198_n6_α
.Lx00202_0:
 jmp xchain00198_n6_α
 xchain00198_n5_β:
 mov eax, dword ptr [rbp + 208]
 jmp xchain00198_n6_α
xchain00198_n5_af:
 add dword ptr [rbp + 208], 1
 mov eax, dword ptr [rbp + 208]
 jmp xchain00198_n6_α
# IR_VAR
 xchain00198_n6_α:
 mov rdi, qword ptr [rip + .Lx00203_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00198_n10_α
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00198_n9_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "write"
# IR_LIT_STRING
 xchain00198_n7_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00198_n11_α
 xchain00198_n7_β:
 jmp xchain00198_n5_af
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "OUTPUT"
 xchain00198_n8_α:
 jmp xchain00198_n5_as
xchain00198_n8_β:
 jmp xchain00198_n6_α
# IR_ASSIGN gva
 xchain00198_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00198_n10_α
# IR_VAR
 xchain00198_n10_α:
 mov rdi, qword ptr [rip + .Lx00205_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00198_n13_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00198_n12_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "writes"
 xchain00198_n11_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn845: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn845]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00198_n5_af
 jmp xchain00198_n14_α
 xchain00198_n11_β:
 jmp xchain00198_n5_af
# IR_ASSIGN gva
 xchain00198_n12_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00198_n13_α
# IR_LIT_INTEGER
 xchain00198_n13_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00198_n15_α
.Lx00206_0:
 .quad 1
# IR_LIT_STRING
 xchain00198_n14_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00198_n16_α
.Lx00207_0:
 .quad .Lx00207_0_s
.Lx00207_0_s:
 .string "*** Benchmarking with output ***"
# IR_ASSIGN global
 xchain00198_n15_α:
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov rdi, qword ptr [rip + .Lx00208_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00198_n17_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "writes"
 xchain00198_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn851: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn851]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00198_n18_α
 jmp xchain00198_n18_α
 xchain00198_n16_β:
 jmp xchain00198_n18_α
# IR_ASSIGN global
 xchain00198_n17_α:
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov rdi, qword ptr [rip + .Lx00209_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00198_n19_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "write"
# IR_RETURN
 xchain00198_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Init___γ
# IR_RETURN
 xchain00198_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
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
# IR_DISJUNCTION_NARY
 xchain00210_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00210_n2_α
xchain00210_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00211_0
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 296], rax
 jmp xchain00210_n1_α
.Lx00211_0:
 jmp xchain00210_n1_α
 xchain00210_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00210_n1_α
xchain00210_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00210_n1_α
# IR_VAR
 xchain00210_n1_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00210_n4_α
# IR_LIT_STRING
 xchain00210_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00210_n6_α
 xchain00210_n2_β:
 jmp xchain00210_n9_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "OUTPUT"
 xchain00210_n3_α:
 jmp xchain00210_n0_as
xchain00210_n3_β:
 jmp xchain00210_n1_α
# IR_LIT_STRING
 xchain00210_n4_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00210_n7_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string " elapsed time = "
 xchain00210_n5_α:
 mov edi, 19
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00214_1
 lea rcx, [rip + .Lx00214_3]
 lea rdx, [rip + .Lx00214_4]
 jmp rax
.Lx00214_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00214_2
.Lx00214_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00214_2
.Lx00214_1:
 call rt_faildescr@PLT
.Lx00214_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00210_n8_α
 jmp xchain00210_n8_α
 xchain00210_n5_β:
 jmp xchain00210_n8_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "Regions__"
 xchain00210_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
  .section .rodata
  .Lrkfn865: .string "getenv"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn865]
 lea rsi, [rbp + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00210_n9_α
 jmp xchain00210_n0_as
 xchain00210_n6_β:
 jmp xchain00210_n9_α
 xchain00210_n7_α:
 mov edi, 22
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00215_1
 lea rcx, [rip + .Lx00215_3]
 lea rdx, [rip + .Lx00215_4]
 jmp rax
.Lx00215_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00215_2
.Lx00215_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00215_2
.Lx00215_1:
 call rt_faildescr@PLT
.Lx00215_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00210_n5_α
 jmp xchain00210_n10_α
 xchain00210_n7_β:
 jmp xchain00210_n5_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "Time__"
 xchain00210_n8_α:
 mov edi, 21
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00216_1
 lea rcx, [rip + .Lx00216_3]
 lea rdx, [rip + .Lx00216_4]
 jmp rax
.Lx00216_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00216_2
.Lx00216_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00216_2
.Lx00216_1:
 call rt_faildescr@PLT
.Lx00216_2:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain00210_n11_α
 jmp xchain00210_n11_α
 xchain00210_n8_β:
 jmp xchain00210_n11_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "Storage__"
# KEYWORD_null
 xchain00210_n9_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00210_n12_α
 xchain00210_n9_β:
 jmp xchain00210_n0_af
 xchain00210_n10_α:
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
  .Lrkfn872: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn872]
 lea rsi, [rbp + 128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00210_n5_α
 jmp xchain00210_n5_α
 xchain00210_n10_β:
 jmp xchain00210_n5_α
 xchain00210_n11_α:
 mov edi, 18
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00217_1
 lea rcx, [rip + .Lx00217_3]
 lea rdx, [rip + .Lx00217_4]
 jmp rax
.Lx00217_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00217_2
.Lx00217_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00217_2
.Lx00217_1:
 call rt_faildescr@PLT
.Lx00217_2:
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00210_n13_α
 jmp xchain00210_n13_α
 xchain00210_n11_β:
 jmp xchain00210_n13_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "Collections__"
# IR_VAR
 xchain00210_n12_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00210_n14_α
# IR_RETURN
 xchain00210_n13_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Term___γ
# IR_ASSIGN global
 xchain00210_n14_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx00218_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00210_n15_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "write"
# IR_VAR
 xchain00210_n15_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00210_n16_α
# IR_ASSIGN global
 xchain00210_n16_α:
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov rdi, qword ptr [rip + .Lx00219_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00210_n3_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "writes"
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
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_Collections___α_body:
# IR_DISJUNCTION_NARY
 xchain00220_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00220_n2_α
xchain00220_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00221_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00220_n1_α
.Lx00221_0:
 jmp xchain00220_n1_α
 xchain00220_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00220_n1_α
xchain00220_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00220_n1_α
# IR_MAKE_LIST
 xchain00220_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00220_n4_α
# IR_VAR_REF
 xchain00220_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052512
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00220_n5_α
 xchain00220_n2_β:
 jmp xchain00220_n0_af
# IR_ASSIGN gva
 xchain00220_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00220_n0_as
 xchain00220_n3_β:
 jmp xchain00220_n1_α
 xchain00220_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00220_n6_α
# IR_NULLTEST_VAR
 xchain00220_n5_α:
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 99
 je xchain00220_n0_af
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00220_n0_af
 cmp eax, 0
 jne xchain00220_n0_af
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00220_n7_α
# IR_VAR
 xchain00220_n6_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 744], rax
 jmp xchain00220_n8_α
# IR_LIT_INTEGER
 xchain00220_n7_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain00220_n10_α
.Lx00222_0:
 .quad 1
# KEYWORD_gen
 xchain00220_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00223_1:
 mov rdi, qword ptr [rip + .Lx00223_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00220_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00220_n11_α
 xchain00220_n8_β:
 jmp .Lx00223_1
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00220_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00220_n12_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "collections"
# IR_ASSIGN_VAR
 xchain00220_n10_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, qword ptr [rbp + 1168]
 mov rcx, qword ptr [rbp + 1176]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00220_n0_af
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00220_n13_α
 xchain00220_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn897: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn897]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00220_n9_α
 jmp xchain00220_n8_β
 xchain00220_n11_β:
 jmp xchain00220_n9_α
 xchain00220_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn899: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn899]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00220_n14_α
 jmp xchain00220_n14_α
 xchain00220_n12_β:
 jmp xchain00220_n14_α
# IR_LIT_STRING
 xchain00220_n13_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00220_n15_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "total"
# IR_LIT_INTEGER
 xchain00220_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00220_n16_α
.Lx00226_0:
 .quad 1
# IR_LIT_STRING
 xchain00220_n15_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00220_n17_α
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "static"
# IR_VAR
 xchain00220_n16_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00220_n18_α
# IR_LIT_STRING
 xchain00220_n17_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00220_n20_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "string"
# IR_UNOP
 xchain00220_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00220_n21_α
# IR_RETURN
 xchain00220_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Collections___γ
# IR_LIT_STRING
 xchain00220_n20_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00220_n22_α
.Lx00229_0:
 .quad .Lx00229_0_s
.Lx00229_0_s:
 .string "block"
# IR_TO
 xchain00220_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00230_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00220_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00220_n23_α
 xchain00220_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00230_0
# IR_MAKE_LIST
 xchain00220_n22_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 952], rax
 lea rdi, [rbp + 896]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00220_n3_α
 xchain00220_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00220_n24_α
# IR_BOUND
 xchain00220_n24_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00220_n25_α
# IR_VAR_REF
 xchain00220_n25_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00220_n26_α
# IR_VAR
 xchain00220_n26_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain00220_n27_α
# IR_SUBSCRIPT x[i] variable
 xchain00220_n27_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00220_n28_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00220_n29_α
# IR_UNMARK
 xchain00220_n28_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00220_n21_β
# IR_DEREF variable -> value
 xchain00220_n29_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00220_n28_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00220_n30_α
# IR_VAR_REF
 xchain00220_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00220_n31_α
# IR_VAR
 xchain00220_n31_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 488], rax
 jmp xchain00220_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00220_n32_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00220_n28_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00220_n33_α
# IR_DEREF variable -> value
 xchain00220_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00220_n28_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00220_n34_α
# IR_LIT_INTEGER
 xchain00220_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00220_n35_α
.Lx00231_0:
 .quad 8
 xchain00220_n35_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn931: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn931]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00220_n28_α
 jmp xchain00220_n36_α
 xchain00220_n35_β:
 jmp xchain00220_n28_α
 xchain00220_n36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn933: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn933]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00220_n28_α
 jmp xchain00220_n28_α
 xchain00220_n36_β:
 jmp xchain00220_n28_α
proc_Collections___res:
add rsp, 8
pop rbp
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_Collections___ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
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
proc_Regions___α_body:
# IR_DISJUNCTION_NARY
 xchain00232_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00232_n2_α
xchain00232_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00233_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00232_n1_α
.Lx00233_0:
 jmp xchain00232_n1_α
 xchain00232_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00232_n1_α
xchain00232_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00232_n1_α
# IR_MAKE_LIST
 xchain00232_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00232_n4_α
# IR_VAR_REF
 xchain00232_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052544
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00232_n5_α
 xchain00232_n2_β:
 jmp xchain00232_n0_af
# IR_ASSIGN gva
 xchain00232_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00232_n0_as
 xchain00232_n3_β:
 jmp xchain00232_n1_α
 xchain00232_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00232_n6_α
# IR_NULLTEST_VAR
 xchain00232_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00232_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00232_n0_af
 cmp eax, 0
 jne xchain00232_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00232_n7_α
# IR_VAR
 xchain00232_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00232_n8_α
# IR_LIT_INTEGER
 xchain00232_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00232_n10_α
.Lx00234_0:
 .quad 1
# KEYWORD_gen
 xchain00232_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00235_1:
 mov rdi, qword ptr [rip + .Lx00235_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00232_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00232_n11_α
 xchain00232_n8_β:
 jmp .Lx00235_1
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00232_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00232_n12_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "regions"
# IR_ASSIGN_VAR
 xchain00232_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00232_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00232_n13_α
 xchain00232_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn951: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn951]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00232_n9_α
 jmp xchain00232_n8_β
 xchain00232_n11_β:
 jmp xchain00232_n9_α
 xchain00232_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn953: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn953]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00232_n14_α
 jmp xchain00232_n14_α
 xchain00232_n12_β:
 jmp xchain00232_n14_α
# IR_LIT_STRING
 xchain00232_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00232_n15_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00232_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00232_n16_α
.Lx00238_0:
 .quad 1
# IR_LIT_STRING
 xchain00232_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00232_n17_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "string"
# IR_VAR
 xchain00232_n16_α:
 mov rax, qword ptr [1879052528]
 mov rdx, qword ptr [1879052536]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00232_n18_α
# IR_LIT_STRING
 xchain00232_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00232_n20_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "block"
# IR_UNOP
 xchain00232_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00232_n21_α
# IR_RETURN
 xchain00232_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Regions___γ
# IR_MAKE_LIST
 xchain00232_n20_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00232_n3_α
# IR_TO
 xchain00232_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00241_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00232_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00232_n22_α
 xchain00232_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00241_0
 xchain00232_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00232_n23_α
# IR_BOUND
 xchain00232_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00232_n24_α
# IR_VAR_REF
 xchain00232_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052528
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00232_n25_α
# IR_VAR
 xchain00232_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00232_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00232_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00232_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00232_n28_α
# IR_UNMARK
 xchain00232_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00232_n21_β
# IR_DEREF variable -> value
 xchain00232_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00232_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00232_n29_α
# IR_VAR_REF
 xchain00232_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00232_n30_α
# IR_VAR
 xchain00232_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00232_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00232_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00232_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00232_n32_α
# IR_DEREF variable -> value
 xchain00232_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00232_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00232_n33_α
# IR_LIT_INTEGER
 xchain00232_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00232_n34_α
.Lx00242_0:
 .quad 8
 xchain00232_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn984: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn984]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00232_n27_α
 jmp xchain00232_n35_α
 xchain00232_n34_β:
 jmp xchain00232_n27_α
 xchain00232_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn986: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn986]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00232_n27_α
 jmp xchain00232_n27_α
 xchain00232_n35_β:
 jmp xchain00232_n27_α
proc_Regions___res:
add rsp, 8
pop rbp
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Regions___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
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
 xchain00243_n0_α:
 mov rdi, qword ptr [rip + .Lx00244_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00243_n2_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00243_n1_α
 xchain00243_n0_β:
 jmp xchain00243_n2_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "&version"
 xchain00243_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn990: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn990]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00243_n2_α
 jmp xchain00243_n2_α
 xchain00243_n1_β:
 jmp xchain00243_n2_α
# KEYWORD_read
 xchain00243_n2_α:
 mov rdi, qword ptr [rip + .Lx00245_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00243_n4_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00243_n3_α
 xchain00243_n2_β:
 jmp xchain00243_n4_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "&host"
 xchain00243_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn993: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn993]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00243_n4_α
 jmp xchain00243_n4_α
 xchain00243_n3_β:
 jmp xchain00243_n4_α
# KEYWORD_gen
 xchain00243_n4_α:
 mov qword ptr [rbp + 80], 0
.Lx00246_1:
 mov rdi, qword ptr [rip + .Lx00246_0]
 mov rsi, qword ptr [rbp + 80]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00243_n6_α
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 mov rax, qword ptr [rbp + 80]
 add rax, 1
 mov qword ptr [rbp + 80], rax
 jmp xchain00243_n5_α
 xchain00243_n4_β:
 jmp .Lx00246_1
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "&features"
 xchain00243_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+32]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
  .section .rodata
  .Lrkfn996: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn996]
 lea rsi, [rbp + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 cmp eax, 99
 je xchain00243_n6_α
 jmp xchain00243_n4_β
 xchain00243_n5_β:
 jmp xchain00243_n6_α
# IR_RETURN
 xchain00243_n6_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
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
proc_Storage___α_body:
# IR_DISJUNCTION_NARY
 xchain00247_n0_α:
 mov qword ptr [rbp + 832], 0
 mov qword ptr [rbp + 840], 0
 mov dword ptr [rbp + 848], 0
 jmp xchain00247_n2_α
xchain00247_n0_as:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 0
 jne .Lx00248_0
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 jmp xchain00247_n1_α
.Lx00248_0:
 jmp xchain00247_n1_α
 xchain00247_n0_β:
 mov eax, dword ptr [rbp + 848]
 jmp xchain00247_n1_α
xchain00247_n0_af:
 add dword ptr [rbp + 848], 1
 mov eax, dword ptr [rbp + 848]
 jmp xchain00247_n1_α
# IR_MAKE_LIST
 xchain00247_n1_α:
 lea rdi, [rbp + 832]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00247_n4_α
# IR_VAR_REF
 xchain00247_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052576
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00247_n5_α
 xchain00247_n2_β:
 jmp xchain00247_n0_af
# IR_ASSIGN gva
 xchain00247_n3_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00247_n0_as
 xchain00247_n3_β:
 jmp xchain00247_n1_α
 xchain00247_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00247_n6_α
# IR_NULLTEST_VAR
 xchain00247_n5_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 99
 je xchain00247_n0_af
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00247_n0_af
 cmp eax, 0
 jne xchain00247_n0_af
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00247_n7_α
# IR_VAR
 xchain00247_n6_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
 jmp xchain00247_n8_α
# IR_LIT_INTEGER
 xchain00247_n7_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00247_n10_α
.Lx00249_0:
 .quad 1
# KEYWORD_gen
 xchain00247_n8_α:
 mov qword ptr [rbp + 784], 0
.Lx00250_1:
 mov rdi, qword ptr [rip + .Lx00250_0]
 mov rsi, qword ptr [rbp + 784]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00247_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 mov rax, qword ptr [rbp + 784]
 add rax, 1
 mov qword ptr [rbp + 784], rax
 jmp xchain00247_n11_α
 xchain00247_n8_β:
 jmp .Lx00250_1
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00247_n9_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00247_n12_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "storage"
# IR_ASSIGN_VAR
 xchain00247_n10_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00247_n0_af
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00247_n13_α
 xchain00247_n11_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn1015: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1015]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00247_n9_α
 jmp xchain00247_n8_β
 xchain00247_n11_β:
 jmp xchain00247_n9_α
 xchain00247_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn1017: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1017]
 lea rsi, [rbp + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00247_n14_α
 jmp xchain00247_n14_α
 xchain00247_n12_β:
 jmp xchain00247_n14_α
# IR_LIT_STRING
 xchain00247_n13_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00247_n15_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "static"
# IR_LIT_INTEGER
 xchain00247_n14_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00247_n16_α
.Lx00253_0:
 .quad 1
# IR_LIT_STRING
 xchain00247_n15_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00247_n17_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "string"
# IR_VAR
 xchain00247_n16_α:
 mov rax, qword ptr [1879052560]
 mov rdx, qword ptr [1879052568]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00247_n18_α
# IR_LIT_STRING
 xchain00247_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00247_n20_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "block"
# IR_UNOP
 xchain00247_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_size_d@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00247_n21_α
# IR_RETURN
 xchain00247_n19_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_Storage___γ
# IR_MAKE_LIST
 xchain00247_n20_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00247_n3_α
# IR_TO
 xchain00247_n21_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00256_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg xchain00247_n19_α
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00247_n22_α
 xchain00247_n21_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00256_0
 xchain00247_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp xchain00247_n23_α
# IR_BOUND
 xchain00247_n23_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00247_n24_α
# IR_VAR_REF
 xchain00247_n24_α:
 mov rax, 4294967305
 mov rdx, 1879052560
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00247_n25_α
# IR_VAR
 xchain00247_n25_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain00247_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00247_n26_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00247_n27_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00247_n28_α
# IR_UNMARK
 xchain00247_n27_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00247_n21_β
# IR_DEREF variable -> value
 xchain00247_n28_α:
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00247_n27_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00247_n29_α
# IR_VAR_REF
 xchain00247_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00247_n30_α
# IR_VAR
 xchain00247_n30_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 488], rax
 jmp xchain00247_n31_α
# IR_SUBSCRIPT x[i] variable
 xchain00247_n31_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00247_n27_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00247_n32_α
# IR_DEREF variable -> value
 xchain00247_n32_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00247_n27_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00247_n33_α
# IR_LIT_INTEGER
 xchain00247_n33_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00247_n34_α
.Lx00257_0:
 .quad 8
 xchain00247_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+400]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+416]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn1048: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1048]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00247_n27_α
 jmp xchain00247_n35_α
 xchain00247_n34_β:
 jmp xchain00247_n27_α
 xchain00247_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+224]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+240]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1050: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1050]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00247_n27_α
 jmp xchain00247_n27_α
 xchain00247_n35_β:
 jmp xchain00247_n27_α
proc_Storage___res:
add rsp, 8
pop rbp
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_Storage___ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
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
# IR_DISJUNCTION_NARY
 xchain00258_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00258_n2_α
xchain00258_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00259_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00258_n1_α
.Lx00259_0:
 jmp xchain00258_n1_α
 xchain00258_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00258_n1_α
xchain00258_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00258_n1_α
# KEYWORD_read
 xchain00258_n1_α:
 mov rdi, qword ptr [rip + .Lx00260_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00258_n4_α
 xchain00258_n1_β:
 jmp proc_Time___ω
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "&time"
# IR_VAR_REF
 xchain00258_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052608
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00258_n5_α
 xchain00258_n2_β:
 jmp xchain00258_n0_af
# IR_ASSIGN gva
 xchain00258_n3_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00258_n0_as
 xchain00258_n3_β:
 jmp xchain00258_n1_α
# IR_VAR
 xchain00258_n4_α:
 mov rax, qword ptr [1879052592]
 mov rdx, qword ptr [1879052600]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00258_n6_α
# IR_NULLTEST_VAR
 xchain00258_n5_α:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 99
 je xchain00258_n0_af
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00258_n0_af
 cmp eax, 0
 jne xchain00258_n0_af
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 296], rax
 jmp xchain00258_n7_α
# IR_COERCE_NUMERIC
 xchain00258_n6_α:
 mov eax, dword ptr [rbp + 112]
 cmp eax, 7
 je .Lx00261_1
 cmp eax, 6
 jne .Lx00261_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx00261_0
.Lx00261_1:
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 88], rax
 jmp xchain00258_n8_α
.Lx00261_0:
 lea rdi, [rbp + 112]
 lea rsi, [rbp + 144]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00258_n8_α
# IR_LIT_INTEGER
 xchain00258_n7_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00258_n9_α
.Lx00262_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00258_n8_α:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 7
 je .Lx00263_1
 cmp eax, 6
 jne .Lx00263_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00263_0
.Lx00263_1:
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 56], rax
 jmp xchain00258_n10_α
.Lx00263_0:
 lea rdi, [rbp + 144]
 lea rsi, [rbp + 112]
 lea rdx, [rbp + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00258_n10_α
# IR_ASSIGN_VAR
 xchain00258_n9_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00258_n0_af
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00258_n11_α
 xchain00258_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [rbp + 48]
 cmp eax, 100
 je .Lx00264_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00264_2
 mov eax, dword ptr [rbp + 48]
 cmp eax, 6
 jne .Lx00264_2
.Lx00264_1:
 mov rax, qword ptr [rbp + 88]
 mov rcx, qword ptr [rbp + 56]
 sub rax, rcx
 mov qword ptr [rbp + 16], 6
 mov qword ptr [rbp + 24], rax
 jmp xchain00258_n12_α
.Lx00264_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 56]
 mov r8d, 1
 lea r9, [rbp + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00258_n12_α
.Lx00264_2:
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
 jmp xchain00258_n12_α
 xchain00258_n10_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00258_n11_α:
 mov rdi, qword ptr [rip + .Lx00265_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00258_n1_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00258_n3_α
 xchain00258_n11_β:
 jmp xchain00258_n1_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "&time"
# IR_RETURN
 xchain00258_n12_α:
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
  mov esi, 1088
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
  mov esi, 448
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
  mov esi, 1248
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
  mov esi, 1200
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
  mov esi, 1200
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
  mov rdi, qword ptr [rsp]
  add rdi, 8
  mov esi, dword ptr [rsp + 8]
  sub esi, 1
  call rt_main_args_stage@PLT
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
  push rsi
  sub rsp, 8
  call rt_main_args_fetch@PLT
  add rsp, 8
  pop rsi
  mov [rbp + 16], rax
  mov [rbp + 24], rdx
main_α_body:
 xchain00266_n0_α:
 mov edi, 16
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00267_1
 lea rcx, [rip + .Lx00267_3]
 lea rdx, [rip + .Lx00267_4]
 jmp rax
.Lx00267_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00267_2
.Lx00267_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00267_2
.Lx00267_1:
 call rt_faildescr@PLT
.Lx00267_2:
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain00266_n1_α
 jmp xchain00266_n1_α
 xchain00266_n0_β:
 jmp xchain00266_n1_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "Init__"
# IR_PROC_VALUE
 xchain00266_n1_α:
 mov rdi, qword ptr [rip + .Lx00268_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00266_n2_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "define"
# IR_PROC_VALUE
 xchain00266_n2_α:
 mov rdi, qword ptr [rip + .Lx00269_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00266_n3_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "generate"
# IR_PROC_VALUE
 xchain00266_n3_α:
 mov rdi, qword ptr [rip + .Lx00270_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00266_n4_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "grammar"
# IR_PROC_VALUE
 xchain00266_n4_α:
 mov rdi, qword ptr [rip + .Lx00271_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain00266_n5_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "source"
# IR_PROC_VALUE
 xchain00266_n5_α:
 mov rdi, qword ptr [rip + .Lx00272_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 jmp xchain00266_n6_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "comment"
# IR_PROC_VALUE
 xchain00266_n6_α:
 mov rdi, qword ptr [rip + .Lx00273_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain00266_n7_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "prompter"
# IR_PROC_VALUE
 xchain00266_n7_α:
 mov rdi, qword ptr [rip + .Lx00274_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain00266_n8_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "error"
# IR_MAKE_LIST
 xchain00266_n8_α:
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
 jmp xchain00266_n9_α
 xchain00266_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain00266_n10_α
 xchain00266_n10_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1090: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1090]
 lea rsi, [rbp + 3936]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je xchain00266_n12_α
 jmp xchain00266_n11_α
 xchain00266_n10_β:
 jmp xchain00266_n12_α
# IR_ASSIGN gva
 xchain00266_n11_α:
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00266_n12_α
# IR_VAR_REF
 xchain00266_n12_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00266_n13_α
# IR_LIT_STRING
 xchain00266_n13_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00266_n14_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "lb"
# IR_SUBSCRIPT x[i] variable
 xchain00266_n14_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n16_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00266_n15_α
# IR_LIT_STRING
 xchain00266_n15_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00266_n17_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "<"
# IR_VAR_REF
 xchain00266_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain00266_n18_α
# IR_MAKE_LIST
 xchain00266_n17_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3864], rax
 lea rdi, [rbp + 3856]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00266_n19_α
# IR_LIT_STRING
 xchain00266_n18_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00266_n20_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "rb"
# IR_MAKE_LIST
 xchain00266_n19_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3832], rax
 lea rdi, [rbp + 3824]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain00266_n21_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n20_α:
 mov rdi, qword ptr [rbp + 3488]
 mov rsi, qword ptr [rbp + 3496]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n23_α
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00266_n22_α
# IR_ASSIGN_VAR
 xchain00266_n21_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n16_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00266_n16_α
# IR_LIT_STRING
 xchain00266_n22_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00266_n24_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string ">"
# IR_VAR_REF
 xchain00266_n23_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00266_n25_α
# IR_MAKE_LIST
 xchain00266_n24_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3656], rax
 lea rdi, [rbp + 3648]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00266_n26_α
# IR_LIT_STRING
 xchain00266_n25_α:
 mov qword ptr [rbp + 3312], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 3320], rax
 jmp xchain00266_n27_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "vb"
# IR_MAKE_LIST
 xchain00266_n26_α:
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3624], rax
 lea rdi, [rbp + 3616]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00266_n28_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n27_α:
 mov rdi, qword ptr [rbp + 3280]
 mov rsi, qword ptr [rbp + 3288]
 mov rdx, qword ptr [rbp + 3312]
 mov rcx, qword ptr [rbp + 3320]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n30_α
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain00266_n29_α
# IR_ASSIGN_VAR
 xchain00266_n28_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 mov rdx, qword ptr [rbp + 3600]
 mov rcx, qword ptr [rbp + 3608]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n23_α
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain00266_n23_α
# IR_LIT_STRING
 xchain00266_n29_α:
 mov qword ptr [rbp + 3456], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00266_n31_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "|"
# IR_VAR_REF
 xchain00266_n30_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00266_n32_α
# IR_MAKE_LIST
 xchain00266_n31_α:
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3448], rax
 lea rdi, [rbp + 3440]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00266_n33_α
# IR_LIT_STRING
 xchain00266_n32_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00266_n34_α
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "nl"
# IR_MAKE_LIST
 xchain00266_n33_α:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3416], rax
 lea rdi, [rbp + 3408]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain00266_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n34_α:
 mov rdi, qword ptr [rbp + 3072]
 mov rsi, qword ptr [rbp + 3080]
 mov rdx, qword ptr [rbp + 3104]
 mov rcx, qword ptr [rbp + 3112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n37_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00266_n36_α
# IR_ASSIGN_VAR
 xchain00266_n35_α:
 mov rdi, qword ptr [rbp + 3344]
 mov rsi, qword ptr [rbp + 3352]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n30_α
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain00266_n30_α
# IR_LIT_STRING
 xchain00266_n36_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00266_n38_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "\n"
# IR_VAR_REF
 xchain00266_n37_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain00266_n39_α
# IR_MAKE_LIST
 xchain00266_n38_α:
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3240], rax
 lea rdi, [rbp + 3232]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00266_n40_α
# IR_LIT_STRING
 xchain00266_n39_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00266_n41_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string ""
# IR_MAKE_LIST
 xchain00266_n40_α:
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3208], rax
 lea rdi, [rbp + 3200]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00266_n42_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n41_α:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2896]
 mov rcx, qword ptr [rbp + 2904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n44_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00266_n43_α
# IR_ASSIGN_VAR
 xchain00266_n42_α:
 mov rdi, qword ptr [rbp + 3136]
 mov rsi, qword ptr [rbp + 3144]
 mov rdx, qword ptr [rbp + 3184]
 mov rcx, qword ptr [rbp + 3192]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n37_α
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00266_n37_α
# IR_LIT_STRING
 xchain00266_n43_α:
 mov qword ptr [rbp + 3040], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00266_n45_α
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string ""
# IR_VAR_REF
 xchain00266_n44_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00266_n46_α
# IR_MAKE_LIST
 xchain00266_n45_α:
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3032], rax
 lea rdi, [rbp + 3024]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain00266_n47_α
# IR_LIT_STRING
 xchain00266_n46_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00266_n48_α
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "&lcase"
# IR_MAKE_LIST
 xchain00266_n47_α:
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 3000], rax
 lea rdi, [rbp + 2992]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00266_n49_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n48_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2640]
 mov rcx, qword ptr [rbp + 2648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n51_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00266_n50_α
# IR_ASSIGN_VAR
 xchain00266_n49_α:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n44_α
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00266_n44_α
# IR_LIT_CHARSET
 xchain00266_n50_α:
 mov qword ptr [rbp + 2832], 1
 mov dword ptr [rbp + 2836], -1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain00266_n52_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR_REF
 xchain00266_n51_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00266_n53_α
 xchain00266_n52_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2800]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2808], rax
  .section .rodata
  .Lrkfn1150: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1150]
 lea rsi, [rbp + 2800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain00266_n51_α
 jmp xchain00266_n54_α
 xchain00266_n52_β:
 jmp xchain00266_n51_α
# IR_LIT_STRING
 xchain00266_n53_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00266_n55_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "&ucase"
# IR_MAKE_LIST
 xchain00266_n54_α:
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2776], rax
 lea rdi, [rbp + 2768]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00266_n56_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n55_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2384]
 mov rcx, qword ptr [rbp + 2392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n58_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00266_n57_α
# IR_MAKE_LIST
 xchain00266_n56_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2744], rax
 lea rdi, [rbp + 2736]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00266_n59_α
# IR_LIT_CHARSET
 xchain00266_n57_α:
 mov qword ptr [rbp + 2576], 1
 mov dword ptr [rbp + 2580], -1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00266_n60_α
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# IR_VAR_REF
 xchain00266_n58_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain00266_n61_α
# IR_ASSIGN_VAR
 xchain00266_n59_α:
 mov rdi, qword ptr [rbp + 2672]
 mov rsi, qword ptr [rbp + 2680]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n51_α
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain00266_n51_α
 xchain00266_n60_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2552], rax
  .section .rodata
  .Lrkfn1162: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1162]
 lea rsi, [rbp + 2544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain00266_n58_α
 jmp xchain00266_n62_α
 xchain00266_n60_β:
 jmp xchain00266_n58_α
# IR_LIT_STRING
 xchain00266_n61_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain00266_n63_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "&digit"
# IR_MAKE_LIST
 xchain00266_n62_α:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2520], rax
 lea rdi, [rbp + 2512]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00266_n64_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n63_α:
 mov rdi, qword ptr [rbp + 2096]
 mov rsi, qword ptr [rbp + 2104]
 mov rdx, qword ptr [rbp + 2128]
 mov rcx, qword ptr [rbp + 2136]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n66_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00266_n65_α
# IR_MAKE_LIST
 xchain00266_n64_α:
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2488], rax
 lea rdi, [rbp + 2480]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00266_n67_α
# IR_LIT_CHARSET
 xchain00266_n65_α:
 mov qword ptr [rbp + 2320], 1
 mov dword ptr [rbp + 2324], -1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00266_n68_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "0123456789"
# IR_VAR
 xchain00266_n66_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00266_n69_α
# IR_ASSIGN_VAR
 xchain00266_n67_α:
 mov rdi, qword ptr [rbp + 2416]
 mov rsi, qword ptr [rbp + 2424]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n58_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00266_n58_α
 xchain00266_n68_α:
# BOX IR_CALL charset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2296], rax
  .section .rodata
  .Lrkfn1174: .string "charset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1174]
 lea rsi, [rbp + 2288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00266_n66_α
 jmp xchain00266_n71_α
 xchain00266_n68_β:
 jmp xchain00266_n66_α
# IR_LIT_STRING
 xchain00266_n69_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain00266_n72_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "tl+s+"
# IR_DISJUNCTION_NARY
 xchain00266_n70_α:
 mov qword ptr [rbp + 1744], 0
 mov qword ptr [rbp + 1752], 0
 mov dword ptr [rbp + 1760], 0
 jmp xchain00266_n74_α
xchain00266_n70_as:
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 0
 jne .Lx00292_0
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00266_n73_α
.Lx00292_0:
 cmp eax, 1
 jne .Lx00292_1
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00266_n73_α
.Lx00292_1:
 jmp xchain00266_n73_α
 xchain00266_n70_β:
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 0
 je xchain00266_n70_af
 jmp xchain00266_n70_af
xchain00266_n70_af:
 add dword ptr [rbp + 1760], 1
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 1
 je xchain00266_n75_α
 jmp xchain00266_n79_α
# IR_MAKE_LIST
 xchain00266_n71_α:
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2264], rax
 lea rdi, [rbp + 2256]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00266_n77_α
 xchain00266_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call rt_arg_stage@PLT
 mov edi, 15
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00293_1
 lea rcx, [rip + .Lx00293_3]
 lea rdx, [rip + .Lx00293_4]
 jmp rax
.Lx00293_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00293_2
.Lx00293_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00293_2
.Lx00293_1:
 call rt_faildescr@PLT
.Lx00293_2:
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain00266_n70_α
 jmp xchain00266_n78_α
 xchain00266_n72_β:
 jmp xchain00266_n70_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "options"
# IR_ASSIGN gva
 xchain00266_n73_α:
 mov rax, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00266_n79_α
# IR_VAR_REF
 xchain00266_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4400]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain00266_n80_α
 xchain00266_n74_β:
 jmp xchain00266_n70_af
# IR_LIT_INTEGER
 xchain00266_n75_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain00266_n70_as
 xchain00266_n75_β:
 jmp xchain00266_n70_af
.Lx00294_0:
 .quad 1000
# IR_UNOP
 xchain00266_n76_α:
 mov eax, dword ptr [rbp + 1904]
 cmp eax, 99
 je xchain00266_n70_af
 cmp eax, 0
 je xchain00266_n70_af
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1784], rax
 jmp xchain00266_n70_as
 xchain00266_n76_β:
 jmp xchain00266_n70_af
# IR_MAKE_LIST
 xchain00266_n77_α:
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2232], rax
 lea rdi, [rbp + 2224]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00266_n81_α
 xchain00266_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain00266_n70_α
# IR_VAR_REF
 xchain00266_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4400]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain00266_n82_α
# IR_LIT_STRING
 xchain00266_n80_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00266_n83_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "l"
# IR_ASSIGN_VAR
 xchain00266_n81_α:
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 mov rdx, qword ptr [rbp + 2208]
 mov rcx, qword ptr [rbp + 2216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00266_n66_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain00266_n66_α
# IR_LIT_STRING
 xchain00266_n82_α:
 mov qword ptr [rbp + 1648], 1
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00266_n84_α
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "t"
# IR_SUBSCRIPT x[i] variable
 xchain00266_n83_α:
 mov rdi, qword ptr [rbp + 1808]
 mov rsi, qword ptr [rbp + 1816]
 mov rdx, qword ptr [rbp + 1840]
 mov rcx, qword ptr [rbp + 1848]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n70_af
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00266_n85_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n84_α:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n87_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00266_n86_α
# IR_DEREF variable -> value
 xchain00266_n85_α:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00266_n70_af
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00266_n76_α
# IR_DEREF variable -> value
 xchain00266_n86_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00266_n87_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00266_n88_α
# IR_VAR_REF
 xchain00266_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4400]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain00266_n89_α
# IR_UNOP
 xchain00266_n88_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 99
 je xchain00266_n87_α
 cmp eax, 0
 je xchain00266_n87_α
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1592], rax
 jmp xchain00266_n90_α
# IR_LIT_STRING
 xchain00266_n89_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00266_n91_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "s"
# IR_ASSIGN gva
 xchain00266_n90_α:
 mov rax, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain00266_n87_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n91_α:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n93_α
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00266_n92_α
# IR_DEREF variable -> value
 xchain00266_n92_α:
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00266_n93_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00266_n94_α
# KEYWORD_read
 xchain00266_n93_α:
 mov rdi, qword ptr [rip + .Lx00298_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00266_n98_α
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00266_n95_α
 xchain00266_n93_β:
 jmp xchain00266_n98_α
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "&input"
# IR_UNOP
 xchain00266_n94_α:
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 99
 je xchain00266_n93_α
 cmp eax, 0
 je xchain00266_n93_α
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00266_n96_α
# IR_MAKE_LIST
 xchain00266_n95_α:
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1368], rax
 lea rdi, [rbp + 1360]
 mov esi, 1
 call rt_make_list@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00266_n97_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00266_n96_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00266_n93_α
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain00266_n93_α
# IR_ASSIGN gva
 xchain00266_n97_α:
 mov rax, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain00266_n98_α
# IR_LIT_STRING
 xchain00266_n98_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00266_n99_α
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string ""
# IR_ASSIGN gva
 xchain00266_n99_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00266_n00190_α
# IR_VAR
 xchain00266_n00190_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00266_n00001_α
 xchain00266_n00001_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn1216: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1216]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain00266_n00193_α
 jmp xchain00266_n00196_α
 xchain00266_n00001_β:
 jmp xchain00266_n00193_α
 xchain00266_n00193_α:
 mov edi, 17
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00300_1
 lea rcx, [rip + .Lx00300_3]
 lea rdx, [rip + .Lx00300_4]
 jmp rax
.Lx00300_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00300_2
.Lx00300_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00300_2
.Lx00300_1:
 call rt_faildescr@PLT
.Lx00300_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00266_n00193_β:
 jmp main_ω
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "Term__"
# IR_ASSIGN gva
 xchain00266_n00196_α:
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00266_n00195_α
# IR_DISJUNCTION_NARY
 xchain00266_n00195_α:
 mov qword ptr [rbp + 1040], 0
 mov qword ptr [rbp + 1048], 0
 mov dword ptr [rbp + 1056], 0
 jmp xchain00266_n00301_α
xchain00266_n00195_as:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 0
 jne .Lx00302_0
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00266_n00002_α
.Lx00302_0:
 jmp xchain00266_n00002_α
 xchain00266_n00195_β:
 mov eax, dword ptr [rbp + 1056]
 jmp xchain00266_n00002_α
xchain00266_n00195_af:
 add dword ptr [rbp + 1056], 1
 mov eax, dword ptr [rbp + 1056]
 jmp xchain00266_n00002_α
# IR_DISJUNCTION_NARY
 xchain00266_n00002_α:
 mov qword ptr [rbp + 928], 0
 mov qword ptr [rbp + 936], 0
 mov dword ptr [rbp + 944], 0
 jmp xchain00266_n00004_α
xchain00266_n00002_as:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 0
 jne .Lx00303_0
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
 jmp xchain00266_n00304_α
.Lx00303_0:
 cmp eax, 1
 jne .Lx00303_1
 jmp xchain00266_n00304_α
.Lx00303_1:
 jmp xchain00266_n00304_α
 xchain00266_n00002_β:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 0
 je xchain00266_n00002_af
 jmp xchain00266_n00002_af
xchain00266_n00002_af:
 add dword ptr [rbp + 944], 1
 mov eax, dword ptr [rbp + 944]
 cmp eax, 1
 je xchain00266_n00305_α
 jmp xchain00266_n00306_α
# IR_VAR
 xchain00266_n00301_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain00266_n00307_α
 xchain00266_n00301_β:
 jmp xchain00266_n00195_af
 xchain00266_n00003_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn1226: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1226]
 lea rsi, [rbp + 1088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00266_n00002_α
 jmp xchain00266_n00195_as
 xchain00266_n00003_β:
 jmp xchain00266_n00002_α
 xchain00266_n00304_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00266_n00306_α
# IR_VAR
 xchain00266_n00004_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00266_n00308_α
 xchain00266_n00004_β:
 jmp xchain00266_n00002_af
 xchain00266_n00305_α:
 jmp xchain00266_n00309_α
xchain00266_n00305_β:
 jmp xchain00266_n00309_α
 xchain00266_n00308_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn1231: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1231]
 lea rsi, [rbp + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain00266_n00002_af
 jmp xchain00266_n00002_as
 xchain00266_n00308_β:
 jmp xchain00266_n00002_af
# IR_UNOP
 xchain00266_n00307_α:
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 call rt_size_d@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00266_n00310_α
# IR_VAR_REF
 xchain00266_n00306_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4384]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00266_n00311_α
# IR_VAR
 xchain00266_n00309_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00266_n00312_α
# IR_LIT_INTEGER
 xchain00266_n00310_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00266_n00005_α
.Lx00313_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00266_n00311_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00266_n00006_α
.Lx00314_0:
 .quad 18446744073709551615
 xchain00266_n00312_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1239: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1239]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00266_n00190_α
 jmp xchain00266_n00315_α
 xchain00266_n00312_β:
 jmp xchain00266_n00190_α
 xchain00266_n00005_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx00316_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00316_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx00316_2
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00316_2
.Lx00316_1:
 mov rax, qword ptr [rbp + 1192]
 mov rcx, qword ptr [rbp + 1256]
 cmp rax, rcx
 je xchain00266_n00195_af
 mov rcx, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rcx
 mov rcx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rcx
 jmp xchain00266_n00317_α
.Lx00316_0:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 10
 lea r9, [rbp + 1152]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00316_1
 cmp eax, 1
 je xchain00266_n00195_af
 jmp xchain00266_n00317_α
.Lx00316_2:
 mov rdi, qword ptr [rbp + 1184]
 mov rsi, qword ptr [rbp + 1192]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00266_n00195_af
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00266_n00317_α
# IR_SUBSCRIPT x[i] variable
 xchain00266_n00006_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00266_n00318_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00266_n00319_α
 xchain00266_n00315_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00266_n00190_α
xchain00266_n00315_β:
 jmp xchain00266_n00190_α
# IR_VAR
 xchain00266_n00317_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00266_n00003_α
# IR_DEREF variable -> value
 xchain00266_n00319_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00266_n00318_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00266_n00320_α
# IR_VAR
 xchain00266_n00318_α:
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 312], rax
 jmp xchain00266_n00007_α
# IR_LIT_STRING
 xchain00266_n00320_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00266_n00322_α
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "\\"
# IR_LIST_BANG
 xchain00266_n00007_α:
 mov qword ptr [rbp + 288], 0
.Lx00323_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp rax, 99
 je xchain00266_n00195_α
 jmp xchain00266_n00324_α
 xchain00266_n00007_β:
 inc qword ptr [rbp + 288]
 jmp .Lx00323_0
 xchain00266_n00322_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00266_n00318_α
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00266_n00325_α
# IR_VAR
 xchain00266_n00324_α:
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 424], rax
 jmp xchain00266_n00326_α
# IR_DISJUNCTION_NARY
 xchain00266_n00325_α:
 mov qword ptr [rbp + 640], 0
 mov qword ptr [rbp + 648], 0
 mov dword ptr [rbp + 656], 0
 jmp xchain00266_n00327_α
xchain00266_n00325_as:
 mov eax, dword ptr [rbp + 656]
 cmp eax, 0
 jne .Lx00328_0
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
 jmp xchain00266_n00329_α
.Lx00328_0:
 cmp eax, 1
 jne .Lx00328_1
 jmp xchain00266_n00329_α
.Lx00328_1:
 jmp xchain00266_n00329_α
 xchain00266_n00325_β:
 mov eax, dword ptr [rbp + 656]
 cmp eax, 0
 je xchain00266_n00325_af
 jmp xchain00266_n00325_af
xchain00266_n00325_af:
 add dword ptr [rbp + 656], 1
 mov eax, dword ptr [rbp + 656]
 cmp eax, 1
 je xchain00266_n00330_α
 jmp xchain00266_n00306_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00266_n00326_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
 mov qword ptr [rbp + 368], 0
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 lea rdx, [rbp + 352]
 mov ecx, 1
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx00331_7
 lea rcx, [rip + .Lx00331_3]
 lea rdx, [rip + .Lx00331_4]
 jmp rax
.Lx00331_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx00331_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00331_2
.Lx00331_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00331_2
.Lx00331_4:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx00331_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00331_2
.Lx00331_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00331_2
.Lx00331_7:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 lea rdx, [rbp + 352]
 mov ecx, 1
 lea r8, [rbp + 368]
 call rt_call_value_gen_h@PLT
.Lx00331_2:
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00266_n00007_β
 jmp xchain00266_n00332_α
 xchain00266_n00326_β:
 mov rax, qword ptr [rbp + 368]
 cmp rax, 1
 jne .Lx00331_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx00331_8:
 lea rdi, [rbp + 368]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00266_n00007_β
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00266_n00332_α
 jmp xchain00266_n00007_β
 xchain00266_n00329_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00266_n00306_α
# IR_VAR
 xchain00266_n00327_α:
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 744], rax
 jmp xchain00266_n00333_α
 xchain00266_n00327_β:
 jmp xchain00266_n00325_af
 xchain00266_n00330_α:
 jmp xchain00266_n00318_α
xchain00266_n00330_β:
 jmp xchain00266_n00318_α
 xchain00266_n00334_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call str_concat_d@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00266_n00325_as
 xchain00266_n00334_β:
 jmp xchain00266_n00325_af
 xchain00266_n00332_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 264], rax
 jmp xchain00266_n00195_α
xchain00266_n00332_β:
 jmp xchain00266_n00195_α
# IR_LIT_INTEGER
 xchain00266_n00333_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00266_n00336_α
.Lx00335_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00266_n00336_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00266_n00338_α
.Lx00337_0:
 .quad 18446744073709551615
# IR_SUBSCRIPT section
 xchain00266_n00338_α:
 mov rdi, qword ptr [rbp + 736]
 mov rsi, qword ptr [rbp + 744]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8, qword ptr [rbp + 800]
 mov r9, qword ptr [rbp + 808]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00266_n00325_af
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00266_n00339_α
# IR_VAR
 xchain00266_n00339_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00266_n00340_α
 xchain00266_n00340_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn1268: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1268]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00266_n00325_af
 jmp xchain00266_n00334_α
 xchain00266_n00340_β:
 jmp xchain00266_n00325_af
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
