  .intel_syntax noprefix
  .text
  .globl proc_ROMAN_α
proc_ROMAN_α:
#=======================================================================================================================
    .global proc_ROMAN_α
    .global proc_ROMAN_β
    .global proc_ROMAN_γ
    .global proc_ROMAN_ω
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
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rsp
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 64], 0
.Lx3_0:
 mov r14d, dword ptr [r12 + 64]
 jmp xchain0_n2_α
 xchain0_n1_β:
 add dword ptr [r12 + 64], 1
 mov eax, dword ptr [r12 + 64]
 cmp eax, r15d
 jg .Lx3_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx3_1
 jmp .Lx3_0
.Lx3_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 72]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 80]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_ROMAN_γ
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n1_α
.Lx4_0:
 .quad 1
# IR_MATCH_RPOS
 xchain0_n3_α:
 mov rax, 1
 mov ecx, r15d
 sub ecx, eax
 cmp r14d, ecx
 jne xchain0_n1_β
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n1_β
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n4_α:
 lea rdi, [r12 + 112]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n5_α
 xchain0_n4_β:
 lea rdi, [r12 + 112]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n3_β
# IR_MATCH_LEN
 xchain0_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n4_β
 add r14d, 1
 jmp xchain0_n6_α
 xchain0_n5_β:
 sub r14d, 1
 jmp xchain0_n4_β
# IR_MATCH_CAPTURE_COND
 xchain0_n6_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 112]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_assign_cursor@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n7_α
 xchain0_n6_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n5_β
# IR_MATCH_RELEASE
 xchain0_n7_α:
 mov qword ptr [r12 + 88], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 72]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 80]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_ROMAN_γ
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string ""
# IR_MATCH_REPLACE
 xchain0_n9_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx15_0]
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov ecx, dword ptr [r12 + 64]
 mov r8, qword ptr [r12 + 88]
 lea r9, [r12 + 96]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx15_1
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "N"
.Lx15_1:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_ROMAN_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
# IR_MATCH_HEAD
 xchain0_n11_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rsp
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 160], 0
.Lx18_0:
 mov r14d, dword ptr [r12 + 160]
 jmp xchain0_n12_α
 xchain0_n11_β:
 add dword ptr [r12 + 160], 1
 mov eax, dword ptr [r12 + 160]
 cmp eax, r15d
 jg .Lx18_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx18_1
 jmp .Lx18_0
.Lx18_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 168]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 176]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_ROMAN_ω
# IR_MATCH_DEFER
 xchain0_n12_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbp
 pop rbp
 test rax, rax
 jz .Lx19_0
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
 je .Lx19_1
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n11_β
.Lx19_1:
 jmp xchain0_n13_α
.Lx19_0:
 lea rdi, [rip + .S0]
 xor esi, esi
 mov edx, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbp
 pop rbp
 test eax, eax
 js xchain0_n11_β
 mov r14d, eax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n11_β
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n13_α:
 lea rdi, [r12 + 192]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n14_α
 xchain0_n13_β:
 lea rdi, [r12 + 192]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n12_β
# IR_MATCH_BREAK
 xchain0_n14_α:
 mov dword ptr [r12 + 208], 0
.Lx23_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jge xchain0_n13_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx23_1
 add dword ptr [r12 + 208], 1
 jmp .Lx23_0
.Lx23_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 208]
 mov r14d, eax
 jmp xchain0_n15_α
 xchain0_n14_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 208]
 mov r14d, eax
 jmp xchain0_n13_β
# IR_MATCH_CAPTURE_COND
 xchain0_n15_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 192]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_assign_cursor@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n16_α
 xchain0_n15_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n14_β
# IR_MATCH_RELEASE
 xchain0_n16_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 168]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 176]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_ROMAN_γ
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
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
proc_ROMAN_ω:
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
  .Lstartup_pname0: .string "ROMAN"
  .Lstartup_pp0_0: .string "N"
  .Lstartup_pp0_1: .string "UNITS"
  .align 8
  .Lstartup_pnames0:
  .quad .Lstartup_pp0_0
  .quad .Lstartup_pp0_1
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_ROMAN_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ROMAN"
  .Lgvan1: .string "N"
  .Lgvan2: .string "UNITS"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .section .bss
  .align 16
__gva: .space 48, 0
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
  mov edx, 3
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
 mov qword ptr [r12 + 240], rax
 pop rsi
main_α_body:
# IR_GOTO_DEFERRED
 xchain28_n0_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx30_0]
 call rt_goto_transfer@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx30_1
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "ROMAN_END"
.Lx30_1:
 jmp main_γ
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
 mov rdi, qword ptr [r12 + 240]
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
.S0: .string "UNITS"
.S1: .string ","
.text
