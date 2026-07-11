  .intel_syntax noprefix
  .text
  .globl proc_RSUM_α
proc_RSUM_α:
#=======================================================================================================================
    .global proc_RSUM_α
    .global proc_RSUM_β
    .global proc_RSUM_γ
    .global proc_RSUM_ω
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
 mov qword ptr [r12 + 1744], rax
 pop rsi
proc_RSUM_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 0
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_RSUM_γ
# IR_COERCE_NUMERIC
 xchain0_n3_α:
 lea rdi, [r12 + 320]
 lea rsi, [r12 + 304]
 lea rdx, [r12 + 288]
 mov rcx, 101
 call rt_coerce_num2_d@PLT
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_RSUM_γ
# IR_COERCE_NUMERIC
 xchain0_n5_α:
 lea rdi, [r12 + 304]
 lea rsi, [r12 + 320]
 lea rdx, [r12 + 272]
 mov rcx, 102
 call rt_coerce_num2_d@PLT
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_RSUM_γ
.Lx9_0:
 .quad 1
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [r12 + 288]
 lea rsi, [r12 + 272]
 call rt_cmp_d@PLT
 test eax, eax
 jne xchain0_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 448]
 cmp eax, 100
 je .Lx12_0
 mov eax, dword ptr [r12 + 448]
 cmp eax, 6
 jne .Lx12_2
.Lx12_1:
 mov rax, qword ptr [r12 + 456]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n10_α
.Lx12_0:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 1
 lea r9, [r12 + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx12_3
.Lx12_2:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
.Lx12_3:
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_RSUM_γ
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx13_0:
 .quad 0
 xchain0_n10_α:
  .section .rodata
  .Lcall11_pname: .string "RSUM"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_RSUM_γ
 jmp xchain0_n12_α
xchain0_n10_β:
 jmp proc_RSUM_γ
 xchain0_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n2_α
 xchain0_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx16_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx16_2
.Lx16_1:
 mov rax, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 408]
 add rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n14_α
.Lx16_0:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx16_3
.Lx16_2:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx16_3:
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp proc_RSUM_γ
 xchain0_n13_β:
 jmp xchain0_n2_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp proc_RSUM_γ
 xchain0_n14_β:
 jmp proc_RSUM_γ
proc_RSUM_β:
jmp proc_RSUM_ω
proc_RSUM_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1744]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_RSUM_ω:
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
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
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
 mov qword ptr [r12 + 48], rax
 pop rsi
proc_PAT$0_α_body:
# IR_MATCH_CAPTURE_SAVE push
 xchain19_n0_α:
 lea rdi, [r12 + 16]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain19_n1_α
 xchain19_n0_β:
 lea rdi, [r12 + 16]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_ω
# IR_MATCH_BREAK
 xchain19_n1_α:
 mov dword ptr [r12 + 32], 0
.Lx23_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jge xchain19_n0_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S0]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx23_1
 add dword ptr [r12 + 32], 1
 jmp .Lx23_0
.Lx23_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain19_n2_α
 xchain19_n1_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain19_n0_β
# IR_MATCH_CAPTURE_COND
 xchain19_n2_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 16]
 call rt_cap_top@PLT
 lea rdi, [rip + .S1]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_assign_cursor@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain19_n3_α
 xchain19_n2_β:
 jmp xchain19_n0_β
# IR_MATCH_LIT
 xchain19_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain19_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain19_n2_β
 add r14d, 1
 jmp proc_PAT$0_γ
 xchain19_n3_β:
 sub r14d, 1
 jmp xchain19_n2_β
proc_PAT$0_β:
jmp proc_PAT$0_ω
proc_PAT$0_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 48]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_PAT$0_ω:
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
  .Lstartup_pname0: .string "RSUM"
  .Lstartup_pp0_0: .string "N"
  .align 8
  .Lstartup_pnames0:
  .quad .Lstartup_pp0_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_RSUM_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1760
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 64
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "RSUM"
  .Lgvan1: .string "N"
  .Lgvan2: .string "PAT"
  .Lgvan3: .string "T1"
  .Lgvan4: .string "OUTER"
  .Lgvan5: .string "T"
  .Lgvan6: .string "DATA"
  .Lgvan7: .string "IDX"
  .Lgvan8: .string "WORD"
  .Lgvan9: .string "TOTAL"
  .Lgvan10: .string "I"
  .Lgvan11: .string "CHECK"
  .Lgvan12: .string "T2"
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
  .section .bss
  .align 16
__gva: .space 208, 0
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
  mov edx, 13
  call gva_register@PLT
  mov rbx, rax
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
 mov qword ptr [r12 + 1744], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain28_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain28_n1_α
 xchain28_n0_β:
 jmp xchain28_n3_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain28_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain28_n2_α
 xchain28_n1_β:
 jmp xchain28_n3_α
.Lx30_0:
 .quad 1
 xchain28_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn32: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain28_n3_α
 jmp xchain28_n3_α
 xchain28_n2_β:
 jmp xchain28_n3_α
# IR_LIT_STRING
 xchain28_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain28_n4_α
 xchain28_n3_β:
 jmp xchain28_n6_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain28_n4_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain28_n5_α
 xchain28_n4_β:
 jmp xchain28_n6_α
.Lx34_0:
 .quad 1000000000
 xchain28_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn36: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain28_n6_α
 jmp xchain28_n6_α
 xchain28_n5_β:
 jmp xchain28_n6_α
# IR_LIT_STRING
 xchain28_n6_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain28_n7_α
 xchain28_n6_β:
 jmp xchain28_n9_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "PAT$0"
 xchain28_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+512]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn39: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain28_n9_α
 jmp xchain28_n8_α
 xchain28_n7_β:
 jmp xchain28_n9_α
# IR_ASSIGN gva
 xchain28_n8_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain28_n9_α
 xchain28_n8_β:
 jmp xchain28_n9_α
 xchain28_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn42: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain28_n11_α
 jmp xchain28_n10_α
 xchain28_n9_β:
 jmp xchain28_n11_α
# IR_ASSIGN gva
 xchain28_n10_α:
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain28_n11_α
 xchain28_n10_β:
 jmp xchain28_n11_α
# IR_LIT_INTEGER
 xchain28_n11_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain28_n12_α
 xchain28_n11_β:
 jmp xchain28_n13_α
.Lx44_0:
 .quad 0
# IR_ASSIGN gva
 xchain28_n12_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain28_n13_α
 xchain28_n12_β:
 jmp xchain28_n13_α
# IR_LIT_INTEGER
 xchain28_n13_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain28_n14_α
 xchain28_n13_β:
 jmp xchain28_n16_α
.Lx46_0:
 .quad 16
 xchain28_n14_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+640]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn48: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain28_n16_α
 jmp xchain28_n15_α
 xchain28_n14_β:
 jmp xchain28_n16_α
# IR_ASSIGN gva
 xchain28_n15_α:
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain28_n16_α
 xchain28_n15_β:
 jmp xchain28_n16_α
# IR_LIT_STRING
 xchain28_n16_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain28_n17_α
 xchain28_n16_β:
 jmp xchain28_n18_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "10,20,30,40,50,60,70,80,90,100,"
# IR_ASSIGN gva
 xchain28_n17_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain28_n18_α
 xchain28_n17_β:
 jmp xchain28_n18_α
# IR_LIT_INTEGER
 xchain28_n18_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain28_n19_α
 xchain28_n18_β:
 jmp xchain28_n20_α
.Lx52_0:
 .quad 0
# IR_ASSIGN gva
 xchain28_n19_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain28_n20_α
 xchain28_n19_β:
 jmp xchain28_n20_α
# IR_VAR
 xchain28_n20_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain28_n21_α
 xchain28_n20_β:
 jmp xchain28_n22_α
# IR_MATCH_HEAD
 xchain28_n21_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rsp
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 736], 0
.Lx56_0:
 mov r14d, dword ptr [r12 + 736]
 jmp xchain28_n23_α
 xchain28_n21_β:
 add dword ptr [r12 + 736], 1
 mov eax, dword ptr [r12 + 736]
 cmp eax, r15d
 jg .Lx56_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx56_1
 jmp .Lx56_0
.Lx56_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 744]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 752]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain28_n22_α
# IR_LIT_INTEGER
 xchain28_n22_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain28_n24_α
 xchain28_n22_β:
 jmp xchain28_n26_α
.Lx57_0:
 .quad 0
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain28_n23_α:
 lea rax, [rip + proc_PAT$0_α]
 test rax, rax
 jz .Lx58_0
 push rax
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, rbp
 pop rbp
 pop rcx
 push rax
 mov rdi, rax
 xor esi, esi
 call rcx
 pop rdi
 cmp eax, 1
 je .Lx58_1
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain28_n21_β
.Lx58_1:
 jmp xchain28_n25_α
.Lx58_0:
 lea rdi, [rip + .S2]
 xor esi, esi
 mov edx, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbp
 pop rbp
 test eax, eax
 js xchain28_n21_β
 mov r14d, eax
 jmp xchain28_n25_α
 xchain28_n23_β:
 jmp xchain28_n21_β
# IR_ASSIGN gva
 xchain28_n24_α:
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain28_n26_α
 xchain28_n24_β:
 jmp xchain28_n26_α
# IR_MATCH_RELEASE
 xchain28_n25_α:
 mov qword ptr [r12 + 760], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 744]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 752]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain28_n27_α
# IR_LIT_INTEGER
 xchain28_n26_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain28_n28_α
 xchain28_n26_β:
 jmp xchain28_n30_α
.Lx62_0:
 .quad 0
# IR_LIT_STRING
 xchain28_n27_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain28_n29_α
 xchain28_n27_β:
 jmp xchain28_n22_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string ""
# IR_ASSIGN gva
 xchain28_n28_α:
 mov rax, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain28_n30_α
 xchain28_n28_β:
 jmp xchain28_n30_α
# IR_MATCH_REPLACE
 xchain28_n29_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx66_0]
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov ecx, dword ptr [r12 + 736]
 mov r8, qword ptr [r12 + 760]
 lea r9, [r12 + 768]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx66_1
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "DATA"
.Lx66_1:
 jmp xchain28_n31_α
# IR_VAR
 xchain28_n30_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain28_n32_α
 xchain28_n30_β:
 jmp xchain28_n33_α
# IR_VAR
 xchain28_n31_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain28_n34_α
 xchain28_n31_β:
 jmp xchain28_n35_α
# IR_VAR
 xchain28_n32_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain28_n36_α
 xchain28_n32_β:
 jmp xchain28_n33_α
# IR_LIT_INTEGER
 xchain28_n33_α:
 mov qword ptr [r12 + 1376], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain28_n37_α
 xchain28_n33_β:
 jmp xchain28_n42_α
.Lx70_0:
 .quad 10
# IR_LIT_INTEGER
 xchain28_n34_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain28_n38_α
 xchain28_n34_β:
 jmp xchain28_n35_α
.Lx71_0:
 .quad 1
# IR_VAR
 xchain28_n35_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain28_n39_α
 xchain28_n35_β:
 jmp xchain28_n20_α
# IR_COERCE_NUMERIC
 xchain28_n36_α:
 lea rdi, [r12 + 1152]
 lea rsi, [r12 + 1136]
 lea rdx, [r12 + 1120]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain28_n40_α
 xchain28_n36_β:
 jmp xchain28_n33_α
 xchain28_n37_α:
  .section .rodata
  .Lcall57_pname: .string "RSUM"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall57_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain28_n42_α
 jmp xchain28_n41_α
xchain28_n37_β:
 jmp xchain28_n42_α
 xchain28_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 848]
 cmp eax, 100
 je .Lx76_0
 mov eax, dword ptr [r12 + 848]
 cmp eax, 6
 jne .Lx76_2
.Lx76_1:
 mov rax, qword ptr [r12 + 856]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 832], 6
 mov qword ptr [r12 + 840], rax
 jmp xchain28_n43_α
.Lx76_0:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 mov r8d, 0
 lea r9, [r12 + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx76_3
.Lx76_2:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain28_n35_α
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
.Lx76_3:
 jmp xchain28_n43_α
 xchain28_n38_β:
 jmp xchain28_n35_α
# IR_VAR
 xchain28_n39_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain28_n44_α
 xchain28_n39_β:
 jmp xchain28_n20_α
# IR_COERCE_NUMERIC
 xchain28_n40_α:
 lea rdi, [r12 + 1136]
 lea rsi, [r12 + 1152]
 lea rdx, [r12 + 1104]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain28_n45_α
 xchain28_n40_β:
 jmp xchain28_n33_α
# IR_ASSIGN gva
 xchain28_n41_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain28_n42_α
 xchain28_n41_β:
 jmp xchain28_n42_α
# IR_VAR
 xchain28_n42_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain28_n46_α
 xchain28_n42_β:
 jmp xchain28_n47_α
# IR_ASSIGN gva
 xchain28_n43_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain28_n35_α
 xchain28_n43_β:
 jmp xchain28_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain28_n44_α:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain28_n20_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain28_n48_α
 xchain28_n44_β:
 jmp xchain28_n20_α
# IR_CMP_TEST
 xchain28_n45_α:
 lea rdi, [r12 + 1120]
 lea rsi, [r12 + 1104]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain28_n33_α
 mov qword ptr [r12 + 1088], 0
 mov qword ptr [r12 + 1096], 0
 jmp xchain28_n49_α
 xchain28_n45_β:
 jmp xchain28_n33_α
# IR_LIT_INTEGER
 xchain28_n46_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain28_n50_α
 xchain28_n46_β:
 jmp xchain28_n47_α
.Lx86_0:
 .quad 50000
 xchain28_n47_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn88: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 1584]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain28_n52_α
 jmp xchain28_n51_α
 xchain28_n47_β:
 jmp xchain28_n52_α
# IR_VAR
 xchain28_n48_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain28_n53_α
 xchain28_n48_β:
 jmp xchain28_n20_α
# IR_VAR
 xchain28_n49_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain28_n54_α
 xchain28_n49_β:
 jmp xchain28_n33_α
# IR_COERCE_NUMERIC
 xchain28_n50_α:
 lea rdi, [r12 + 1488]
 lea rsi, [r12 + 1472]
 lea rdx, [r12 + 1456]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain28_n55_α
 xchain28_n50_β:
 jmp xchain28_n47_α
# IR_ASSIGN gva
 xchain28_n51_α:
 mov rax, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain28_n52_α
 xchain28_n51_β:
 jmp xchain28_n52_α
# IR_LIT_STRING
 xchain28_n52_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain28_n56_α
 xchain28_n52_β:
 jmp xchain28_n61_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "result: "
# IR_LIT_INTEGER
 xchain28_n53_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain28_n57_α
 xchain28_n53_β:
 jmp xchain28_n20_α
.Lx95_0:
 .quad 0
# IR_LIT_INTEGER
 xchain28_n54_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain28_n58_α
 xchain28_n54_β:
 jmp xchain28_n33_α
.Lx96_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain28_n55_α:
 lea rdi, [r12 + 1472]
 lea rsi, [r12 + 1488]
 lea rdx, [r12 + 1440]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain28_n59_α
 xchain28_n55_β:
 jmp xchain28_n47_α
# IR_VAR
 xchain28_n56_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain28_n60_α
 xchain28_n56_β:
 jmp xchain28_n61_α
 xchain28_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx100_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx100_2
.Lx100_1:
 mov rax, qword ptr [r12 + 952]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 928], 6
 mov qword ptr [r12 + 936], rax
 jmp xchain28_n62_α
.Lx100_0:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 0
 lea r9, [r12 + 928]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx100_3
.Lx100_2:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain28_n20_α
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
.Lx100_3:
 jmp xchain28_n62_α
 xchain28_n57_β:
 jmp xchain28_n20_α
 xchain28_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1184]
 cmp eax, 100
 je .Lx101_0
 mov eax, dword ptr [r12 + 1184]
 cmp eax, 6
 jne .Lx101_2
.Lx101_1:
 mov rax, qword ptr [r12 + 1192]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1168], 6
 mov qword ptr [r12 + 1176], rax
 jmp xchain28_n63_α
.Lx101_0:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 0
 lea r9, [r12 + 1168]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx101_3
.Lx101_2:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain28_n33_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
.Lx101_3:
 jmp xchain28_n63_α
 xchain28_n58_β:
 jmp xchain28_n33_α
# IR_CMP_TEST
 xchain28_n59_α:
 lea rdi, [r12 + 1456]
 lea rsi, [r12 + 1440]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain28_n47_α
 mov qword ptr [r12 + 1424], 0
 mov qword ptr [r12 + 1432], 0
 jmp xchain28_n64_α
 xchain28_n59_β:
 jmp xchain28_n47_α
 xchain28_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1616]
 mov rsi, qword ptr [r12 + 1624]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain28_n65_α
 xchain28_n60_β:
 jmp xchain28_n61_α
# IR_LIT_STRING
 xchain28_n61_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain28_n66_α
 xchain28_n61_β:
 jmp main_γ
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "ms: "
# IR_ASSIGN_VAR
 xchain28_n62_α:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain28_n20_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain28_n20_α
 xchain28_n62_β:
 jmp xchain28_n20_α
 xchain28_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1088]
 mov rsi, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1168]
 mov rcx, qword ptr [r12 + 1176]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain28_n67_α
 xchain28_n63_β:
 jmp xchain28_n33_α
# IR_VAR
 xchain28_n64_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain28_n68_α
 xchain28_n64_β:
 jmp xchain28_n47_α
# IR_ASSIGN global
 xchain28_n65_α:
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov rdi, qword ptr [rip + .Lx109_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain28_n61_α
 xchain28_n65_β:
 jmp xchain28_n61_α
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain28_n66_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain28_n69_α
 xchain28_n66_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain28_n67_α:
 mov rax, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain28_n70_α
 xchain28_n67_β:
 jmp xchain28_n33_α
# IR_LIT_INTEGER
 xchain28_n68_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain28_n71_α
 xchain28_n68_β:
 jmp xchain28_n47_α
.Lx112_0:
 .quad 1
# IR_VAR
 xchain28_n69_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain28_n72_α
 xchain28_n69_β:
 jmp main_γ
# IR_VAR
 xchain28_n70_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain28_n73_α
 xchain28_n70_β:
 jmp xchain28_n30_α
 xchain28_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx115_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx115_2
.Lx115_1:
 mov rax, qword ptr [r12 + 1528]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1504], 6
 mov qword ptr [r12 + 1512], rax
 jmp xchain28_n74_α
.Lx115_0:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 0
 lea r9, [r12 + 1504]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx115_3
.Lx115_2:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain28_n47_α
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
.Lx115_3:
 jmp xchain28_n74_α
 xchain28_n71_β:
 jmp xchain28_n47_α
 xchain28_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 100
 je .Lx116_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx116_0
 mov eax, dword ptr [r12 + 1712]
 cmp eax, 6
 jne .Lx116_2
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx116_2
.Lx116_1:
 mov rax, qword ptr [r12 + 1720]
 mov rcx, qword ptr [r12 + 1736]
 sub rax, rcx
 mov qword ptr [r12 + 1696], 6
 mov qword ptr [r12 + 1704], rax
 jmp xchain28_n75_α
.Lx116_0:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1728]
 mov rcx, qword ptr [r12 + 1736]
 mov r8d, 1
 lea r9, [r12 + 1696]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx116_3
.Lx116_2:
 mov rdi, qword ptr [r12 + 1712]
 mov rsi, qword ptr [r12 + 1720]
 mov rdx, qword ptr [r12 + 1728]
 mov rcx, qword ptr [r12 + 1736]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
.Lx116_3:
 jmp xchain28_n75_α
 xchain28_n72_β:
 jmp main_γ
# IR_VAR
 xchain28_n73_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain28_n76_α
 xchain28_n73_β:
 jmp xchain28_n30_α
 xchain28_n74_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1424]
 mov rsi, qword ptr [r12 + 1432]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain28_n77_α
 xchain28_n74_β:
 jmp xchain28_n47_α
 xchain28_n75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1680]
 mov rsi, qword ptr [r12 + 1688]
 mov rdx, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1704]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain28_n78_α
 xchain28_n75_β:
 jmp main_γ
# IR_VAR
 xchain28_n76_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain28_n79_α
 xchain28_n76_β:
 jmp xchain28_n30_α
# IR_ASSIGN gva
 xchain28_n77_α:
 mov rax, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain28_n13_α
 xchain28_n77_β:
 jmp xchain28_n47_α
# IR_ASSIGN global
 xchain28_n78_α:
 mov rsi, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 mov rdi, qword ptr [rip + .Lx122_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp main_γ
 xchain28_n78_β:
 jmp main_γ
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "OUTPUT"
# IR_SUBSCRIPT x[i] variable
 xchain28_n79_α:
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1280]
 mov rcx, qword ptr [r12 + 1288]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain28_n30_α
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain28_n80_α
 xchain28_n79_β:
 jmp xchain28_n30_α
# IR_DEREF variable -> value
 xchain28_n80_α:
 mov rdi, qword ptr [r12 + 1296]
 mov rsi, qword ptr [r12 + 1304]
 call rt_deref@PLT
 cmp eax, 99
 je xchain28_n30_α
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain28_n81_α
 xchain28_n80_β:
 jmp xchain28_n30_α
 xchain28_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx125_0
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 100
 je .Lx125_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx125_2
 mov eax, dword ptr [r12 + 1312]
 cmp eax, 6
 jne .Lx125_2
.Lx125_1:
 mov rax, qword ptr [r12 + 1256]
 mov rcx, qword ptr [r12 + 1320]
 add rax, rcx
 mov qword ptr [r12 + 1232], 6
 mov qword ptr [r12 + 1240], rax
 jmp xchain28_n82_α
.Lx125_0:
 mov rdi, qword ptr [r12 + 1248]
 mov rsi, qword ptr [r12 + 1256]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 0
 lea r9, [r12 + 1232]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx125_3
.Lx125_2:
 mov rdi, qword ptr [r12 + 1248]
 mov rsi, qword ptr [r12 + 1256]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain28_n30_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
.Lx125_3:
 jmp xchain28_n82_α
 xchain28_n81_β:
 jmp xchain28_n30_α
# IR_ASSIGN gva
 xchain28_n82_α:
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain28_n30_α
 xchain28_n82_β:
 jmp xchain28_n30_α
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
 mov rdi, qword ptr [r12 + 1744]
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
.section .rodata
.S0: .string ","
.S1: .string "WORD"
.S2: .string "PAT"
.text
