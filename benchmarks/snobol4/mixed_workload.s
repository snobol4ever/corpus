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
 mov qword ptr [r12 + 1680], rax
 pop rsi
proc_RSUM_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 0
# IR_VAR gva
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_RSUM_γ
 xchain0_n3_α:
# BOX IR_CALL EQ(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn5: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_VAR gva
 xchain0_n4_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_RSUM_γ
# IR_LIT_INTEGER
 xchain0_n5_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
.Lx7_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_RSUM_γ
.Lx8_0:
 .quad 1
 xchain0_n7_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx10_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx10_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx10_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx10_2
.Lx10_1:
 mov rax, qword ptr [r12 + 408]
 mov rcx, qword ptr [r12 + 424]
 sub rax, rcx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n10_α
.Lx10_0:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 lea r9, [r12 + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx10_3
.Lx10_2:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
.Lx10_3:
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp proc_RSUM_γ
 xchain0_n9_β:
 jmp xchain0_n2_α
 xchain0_n10_α:
  .section .rodata
  .Lcall11_pname: .string "RSUM"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je proc_RSUM_γ
 jmp xchain0_n11_α
xchain0_n10_β:
 jmp proc_RSUM_γ
 xchain0_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx13_0
 mov eax, dword ptr [r12 + 352]
 cmp eax, 100
 je .Lx13_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx13_2
 mov eax, dword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx13_2
.Lx13_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 360]
 add rax, rcx
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n12_α
.Lx13_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 0
 lea r9, [r12 + 320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx13_3
.Lx13_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
.Lx13_3:
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n12_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp proc_RSUM_γ
 xchain0_n12_β:
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
 mov rdi, qword ptr [r12 + 1680]
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
 xchain15_n0_α:
 lea rdi, [r12 + 16]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain15_n1_α
 xchain15_n0_β:
 lea rdi, [r12 + 16]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_ω
# IR_MATCH_BREAK
 xchain15_n1_α:
 mov dword ptr [r12 + 32], 0
.Lx19_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jge xchain15_n0_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S0]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx19_1
 add dword ptr [r12 + 32], 1
 jmp .Lx19_0
.Lx19_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain15_n2_α
 xchain15_n1_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain15_n0_β
# IR_MATCH_CAPTURE_COND
 xchain15_n2_α:
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
 jmp xchain15_n3_α
 xchain15_n2_β:
 jmp xchain15_n0_β
# IR_MATCH_LIT
 xchain15_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain15_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain15_n2_β
 add r14d, 1
 jmp proc_PAT$0_γ
 xchain15_n3_β:
 sub r14d, 1
 jmp xchain15_n2_β
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
  .globl proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
    .global proc_PAT$1_α
    .global proc_PAT$1_β
    .global proc_PAT$1_γ
    .global proc_PAT$1_ω
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
proc_PAT$1_α_body:
# IR_MATCH_CAPTURE_SAVE push
 xchain24_n0_α:
 lea rdi, [r12 + 16]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain24_n1_α
 xchain24_n0_β:
 lea rdi, [r12 + 16]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$1_ω
# IR_MATCH_BREAK
 xchain24_n1_α:
 mov dword ptr [r12 + 32], 0
.Lx28_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jge xchain24_n0_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S0]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx28_1
 add dword ptr [r12 + 32], 1
 jmp .Lx28_0
.Lx28_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain24_n2_α
 xchain24_n1_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain24_n0_β
# IR_MATCH_CAPTURE_COND
 xchain24_n2_α:
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
 jmp xchain24_n3_α
 xchain24_n2_β:
 jmp xchain24_n0_β
# IR_MATCH_LIT
 xchain24_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain24_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain24_n2_β
 add r14d, 1
 jmp proc_PAT$1_γ
 xchain24_n3_β:
 sub r14d, 1
 jmp xchain24_n2_β
proc_PAT$1_β:
jmp proc_PAT$1_ω
proc_PAT$1_γ:
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
proc_PAT$1_ω:
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
  .section .rodata
  .Lstartup_pname2: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
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
 mov qword ptr [r12 + 1680], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain33_n0_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain33_n1_α
 xchain33_n0_β:
 jmp xchain33_n3_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain33_n1_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain33_n2_α
 xchain33_n1_β:
 jmp xchain33_n3_α
.Lx35_0:
 .quad 1
 xchain33_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+32]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 40], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn37: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain33_n3_α
 jmp xchain33_n3_α
 xchain33_n2_β:
 jmp xchain33_n3_α
# IR_LIT_STRING
 xchain33_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain33_n4_α
 xchain33_n3_β:
 jmp xchain33_n6_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain33_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain33_n5_α
 xchain33_n4_β:
 jmp xchain33_n6_α
.Lx39_0:
 .quad 1000000000
 xchain33_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn41: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain33_n6_α
 jmp xchain33_n6_α
 xchain33_n5_β:
 jmp xchain33_n6_α
# IR_LIT_STRING
 xchain33_n6_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain33_n7_α
 xchain33_n6_β:
 jmp xchain33_n9_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "PAT$0"
 xchain33_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn44: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain33_n9_α
 jmp xchain33_n8_α
 xchain33_n7_β:
 jmp xchain33_n9_α
# IR_ASSIGN gva
 xchain33_n8_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain33_n9_α
 xchain33_n8_β:
 jmp xchain33_n9_α
 xchain33_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn47: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain33_n11_α
 jmp xchain33_n10_α
 xchain33_n9_β:
 jmp xchain33_n11_α
# IR_ASSIGN gva
 xchain33_n10_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain33_n11_α
 xchain33_n10_β:
 jmp xchain33_n11_α
# IR_LIT_INTEGER
 xchain33_n11_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain33_n12_α
 xchain33_n11_β:
 jmp xchain33_n13_α
.Lx49_0:
 .quad 0
# IR_ASSIGN gva
 xchain33_n12_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain33_n13_α
 xchain33_n12_β:
 jmp xchain33_n13_α
# IR_LIT_INTEGER
 xchain33_n13_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain33_n14_α
 xchain33_n13_β:
 jmp xchain33_n16_α
.Lx51_0:
 .quad 16
 xchain33_n14_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+592]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn53: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain33_n16_α
 jmp xchain33_n15_α
 xchain33_n14_β:
 jmp xchain33_n16_α
# IR_ASSIGN gva
 xchain33_n15_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain33_n16_α
 xchain33_n15_β:
 jmp xchain33_n16_α
# IR_LIT_STRING
 xchain33_n16_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain33_n17_α
 xchain33_n16_β:
 jmp xchain33_n18_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "10,20,30,40,50,60,70,80,90,100,"
# IR_ASSIGN gva
 xchain33_n17_α:
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain33_n18_α
 xchain33_n17_β:
 jmp xchain33_n18_α
# IR_LIT_INTEGER
 xchain33_n18_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain33_n19_α
 xchain33_n18_β:
 jmp xchain33_n20_α
.Lx57_0:
 .quad 0
# IR_ASSIGN gva
 xchain33_n19_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain33_n20_α
 xchain33_n19_β:
 jmp xchain33_n20_α
# IR_VAR gva
 xchain33_n20_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain33_n21_α
 xchain33_n20_β:
 jmp xchain33_n22_α
# IR_MATCH_HEAD
 xchain33_n21_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rsp
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 688], 0
.Lx61_0:
 mov r14d, dword ptr [r12 + 688]
 jmp xchain33_n23_α
 xchain33_n21_β:
 add dword ptr [r12 + 688], 1
 mov eax, dword ptr [r12 + 688]
 cmp eax, r15d
 jg .Lx61_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx61_1
 jmp .Lx61_0
.Lx61_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 696]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 704]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain33_n22_α
# IR_LIT_INTEGER
 xchain33_n22_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain33_n24_α
 xchain33_n22_β:
 jmp xchain33_n26_α
.Lx62_0:
 .quad 0
# IR_MATCH_DEFER
 xchain33_n23_α:
 lea rdi, [rip + .S2]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbp
 pop rbp
 test rax, rax
 jz .Lx63_0
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
 je .Lx63_1
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain33_n21_β
.Lx63_1:
 jmp xchain33_n25_α
.Lx63_0:
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
 js xchain33_n21_β
 mov r14d, eax
 jmp xchain33_n25_α
 xchain33_n23_β:
 jmp xchain33_n21_β
# IR_ASSIGN gva
 xchain33_n24_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain33_n26_α
 xchain33_n24_β:
 jmp xchain33_n26_α
# IR_MATCH_RELEASE
 xchain33_n25_α:
 mov qword ptr [r12 + 712], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 696]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 704]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain33_n27_α
# IR_LIT_INTEGER
 xchain33_n26_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain33_n28_α
 xchain33_n26_β:
 jmp xchain33_n30_α
.Lx67_0:
 .quad 0
# IR_LIT_STRING
 xchain33_n27_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain33_n29_α
 xchain33_n27_β:
 jmp xchain33_n22_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string ""
# IR_ASSIGN gva
 xchain33_n28_α:
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain33_n30_α
 xchain33_n28_β:
 jmp xchain33_n30_α
# IR_MATCH_REPLACE
 xchain33_n29_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx71_0]
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov ecx, dword ptr [r12 + 688]
 mov r8, qword ptr [r12 + 712]
 lea r9, [r12 + 720]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx71_1
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "DATA"
.Lx71_1:
 jmp xchain33_n31_α
# IR_VAR gva
 xchain33_n30_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain33_n32_α
 xchain33_n30_β:
 jmp xchain33_n33_α
# IR_VAR gva
 xchain33_n31_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain33_n34_α
 xchain33_n31_β:
 jmp xchain33_n35_α
# IR_VAR gva
 xchain33_n32_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain33_n36_α
 xchain33_n32_β:
 jmp xchain33_n33_α
# IR_LIT_INTEGER
 xchain33_n33_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain33_n37_α
 xchain33_n33_β:
 jmp xchain33_n42_α
.Lx75_0:
 .quad 10
# IR_LIT_INTEGER
 xchain33_n34_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain33_n38_α
 xchain33_n34_β:
 jmp xchain33_n35_α
.Lx76_0:
 .quad 1
# IR_VAR gva
 xchain33_n35_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain33_n39_α
 xchain33_n35_β:
 jmp xchain33_n20_α
 xchain33_n36_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn79: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain33_n33_α
 jmp xchain33_n40_α
 xchain33_n36_β:
 jmp xchain33_n33_α
 xchain33_n37_α:
  .section .rodata
  .Lcall59_pname: .string "RSUM"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall59_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain33_n42_α
 jmp xchain33_n41_α
xchain33_n37_β:
 jmp xchain33_n42_α
 xchain33_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx81_2
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 808]
 add rax, rcx
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain33_n43_α
.Lx81_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 lea r9, [r12 + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx81_3
.Lx81_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain33_n35_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
.Lx81_3:
 jmp xchain33_n43_α
 xchain33_n38_β:
 jmp xchain33_n35_α
# IR_VAR gva
 xchain33_n39_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain33_n44_α
 xchain33_n39_β:
 jmp xchain33_n20_α
# IR_VAR gva
 xchain33_n40_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain33_n45_α
 xchain33_n40_β:
 jmp xchain33_n33_α
# IR_ASSIGN gva
 xchain33_n41_α:
 mov rax, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain33_n42_α
 xchain33_n41_β:
 jmp xchain33_n42_α
# IR_VAR gva
 xchain33_n42_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain33_n46_α
 xchain33_n42_β:
 jmp xchain33_n47_α
# IR_ASSIGN gva
 xchain33_n43_α:
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain33_n35_α
 xchain33_n43_β:
 jmp xchain33_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain33_n44_α:
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain33_n20_α
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain33_n48_α
 xchain33_n44_β:
 jmp xchain33_n20_α
# IR_LIT_INTEGER
 xchain33_n45_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain33_n49_α
 xchain33_n45_β:
 jmp xchain33_n33_α
.Lx88_0:
 .quad 1
# IR_LIT_INTEGER
 xchain33_n46_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain33_n50_α
 xchain33_n46_β:
 jmp xchain33_n47_α
.Lx89_0:
 .quad 50000
 xchain33_n47_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn91: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 1520]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain33_n52_α
 jmp xchain33_n51_α
 xchain33_n47_β:
 jmp xchain33_n52_α
# IR_VAR gva
 xchain33_n48_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain33_n53_α
 xchain33_n48_β:
 jmp xchain33_n20_α
 xchain33_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 100
 je .Lx93_0
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 100
 je .Lx93_0
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 6
 jne .Lx93_2
 mov eax, dword ptr [r12 + 1136]
 cmp eax, 6
 jne .Lx93_2
.Lx93_1:
 mov rax, qword ptr [r12 + 1128]
 mov rcx, qword ptr [r12 + 1144]
 add rax, rcx
 mov qword ptr [r12 + 1104], 6
 mov qword ptr [r12 + 1112], rax
 jmp xchain33_n54_α
.Lx93_0:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 lea r9, [r12 + 1104]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx93_3
.Lx93_2:
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain33_n33_α
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
.Lx93_3:
 jmp xchain33_n54_α
 xchain33_n49_β:
 jmp xchain33_n33_α
 xchain33_n50_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1408] -> [r12+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [r12+1424] -> [r12+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn95: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn95]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain33_n47_α
 jmp xchain33_n55_α
 xchain33_n50_β:
 jmp xchain33_n47_α
# IR_ASSIGN gva
 xchain33_n51_α:
 mov rax, qword ptr [r12 + 1504]
 mov rdx, qword ptr [r12 + 1512]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain33_n52_α
 xchain33_n51_β:
 jmp xchain33_n52_α
# IR_LIT_STRING
 xchain33_n52_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain33_n56_α
 xchain33_n52_β:
 jmp xchain33_n61_α
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "result: "
# IR_LIT_INTEGER
 xchain33_n53_α:
 mov qword ptr [r12 + 896], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain33_n57_α
 xchain33_n53_β:
 jmp xchain33_n20_α
.Lx98_0:
 .quad 0
 xchain33_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain33_n58_α
 xchain33_n54_β:
 jmp xchain33_n33_α
# IR_VAR gva
 xchain33_n55_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain33_n59_α
 xchain33_n55_β:
 jmp xchain33_n47_α
# IR_VAR gva
 xchain33_n56_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain33_n60_α
 xchain33_n56_β:
 jmp xchain33_n61_α
 xchain33_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx102_0
 mov eax, dword ptr [r12 + 896]
 cmp eax, 100
 je .Lx102_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx102_2
 mov eax, dword ptr [r12 + 896]
 cmp eax, 6
 jne .Lx102_2
.Lx102_1:
 mov rax, qword ptr [r12 + 888]
 mov rcx, qword ptr [r12 + 904]
 add rax, rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
 jmp xchain33_n62_α
.Lx102_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 0
 lea r9, [r12 + 864]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx102_3
.Lx102_2:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain33_n20_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
.Lx102_3:
 jmp xchain33_n62_α
 xchain33_n57_β:
 jmp xchain33_n20_α
# IR_ASSIGN gva
 xchain33_n58_α:
 mov rax, qword ptr [r12 + 1008]
 mov rdx, qword ptr [r12 + 1016]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain33_n63_α
 xchain33_n58_β:
 jmp xchain33_n33_α
# IR_LIT_INTEGER
 xchain33_n59_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain33_n64_α
 xchain33_n59_β:
 jmp xchain33_n47_α
.Lx104_0:
 .quad 1
 xchain33_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain33_n65_α
 xchain33_n60_β:
 jmp xchain33_n61_α
# IR_LIT_STRING
 xchain33_n61_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain33_n66_α
 xchain33_n61_β:
 jmp main_γ
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "ms: "
# IR_ASSIGN_VAR write through variable
 xchain33_n62_α:
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain33_n20_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain33_n20_α
 xchain33_n62_β:
 jmp xchain33_n20_α
# IR_VAR gva
 xchain33_n63_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain33_n67_α
 xchain33_n63_β:
 jmp xchain33_n30_α
 xchain33_n64_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx109_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx109_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx109_2
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx109_2
.Lx109_1:
 mov rax, qword ptr [r12 + 1464]
 mov rcx, qword ptr [r12 + 1480]
 add rax, rcx
 mov qword ptr [r12 + 1440], 6
 mov qword ptr [r12 + 1448], rax
 jmp xchain33_n68_α
.Lx109_0:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 0
 lea r9, [r12 + 1440]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx109_3
.Lx109_2:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain33_n47_α
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
.Lx109_3:
 jmp xchain33_n68_α
 xchain33_n64_β:
 jmp xchain33_n47_α
# IR_ASSIGN global
 xchain33_n65_α:
 mov rsi, qword ptr [r12 + 1536]
 mov rdx, qword ptr [r12 + 1544]
 mov rdi, qword ptr [rip + .Lx110_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain33_n61_α
 xchain33_n65_β:
 jmp xchain33_n61_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "OUTPUT"
# IR_VAR gva
 xchain33_n66_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain33_n69_α
 xchain33_n66_β:
 jmp main_γ
# IR_VAR gva
 xchain33_n67_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain33_n70_α
 xchain33_n67_β:
 jmp xchain33_n30_α
 xchain33_n68_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain33_n71_α
 xchain33_n68_β:
 jmp xchain33_n47_α
# IR_VAR gva
 xchain33_n69_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain33_n72_α
 xchain33_n69_β:
 jmp main_γ
# IR_VAR gva
 xchain33_n70_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain33_n73_α
 xchain33_n70_β:
 jmp xchain33_n30_α
# IR_ASSIGN gva
 xchain33_n71_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain33_n13_α
 xchain33_n71_β:
 jmp xchain33_n47_α
 xchain33_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 100
 je .Lx117_0
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 100
 je .Lx117_0
 mov eax, dword ptr [r12 + 1648]
 cmp eax, 6
 jne .Lx117_2
 mov eax, dword ptr [r12 + 1664]
 cmp eax, 6
 jne .Lx117_2
.Lx117_1:
 mov rax, qword ptr [r12 + 1656]
 mov rcx, qword ptr [r12 + 1672]
 sub rax, rcx
 mov qword ptr [r12 + 1632], 6
 mov qword ptr [r12 + 1640], rax
 jmp xchain33_n74_α
.Lx117_0:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 1
 lea r9, [r12 + 1632]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx117_3
.Lx117_2:
 mov rdi, qword ptr [r12 + 1648]
 mov rsi, qword ptr [r12 + 1656]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
.Lx117_3:
 jmp xchain33_n74_α
 xchain33_n72_β:
 jmp main_γ
# IR_SUBSCRIPT x[i] variable
 xchain33_n73_α:
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain33_n30_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain33_n75_α
 xchain33_n73_β:
 jmp xchain33_n30_α
 xchain33_n74_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1616]
 mov rsi, qword ptr [r12 + 1624]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain33_n76_α
 xchain33_n74_β:
 jmp main_γ
# IR_DEREF variable -> value
 xchain33_n75_α:
 mov rdi, qword ptr [r12 + 1232]
 mov rsi, qword ptr [r12 + 1240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain33_n30_α
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain33_n77_α
 xchain33_n75_β:
 jmp xchain33_n30_α
# IR_ASSIGN global
 xchain33_n76_α:
 mov rsi, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov rdi, qword ptr [rip + .Lx121_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp main_γ
 xchain33_n76_β:
 jmp main_γ
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "OUTPUT"
 xchain33_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1184]
 cmp eax, 100
 je .Lx122_0
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 100
 je .Lx122_0
 mov eax, dword ptr [r12 + 1184]
 cmp eax, 6
 jne .Lx122_2
 mov eax, dword ptr [r12 + 1248]
 cmp eax, 6
 jne .Lx122_2
.Lx122_1:
 mov rax, qword ptr [r12 + 1192]
 mov rcx, qword ptr [r12 + 1256]
 add rax, rcx
 mov qword ptr [r12 + 1168], 6
 mov qword ptr [r12 + 1176], rax
 jmp xchain33_n78_α
.Lx122_0:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 0
 lea r9, [r12 + 1168]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx122_3
.Lx122_2:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1248]
 mov rcx, qword ptr [r12 + 1256]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain33_n30_α
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
.Lx122_3:
 jmp xchain33_n78_α
 xchain33_n77_β:
 jmp xchain33_n30_α
# IR_ASSIGN gva
 xchain33_n78_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain33_n30_α
 xchain33_n78_β:
 jmp xchain33_n30_α
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
 mov rdi, qword ptr [r12 + 1680]
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
