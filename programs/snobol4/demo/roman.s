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
  mov qword ptr [r12 + 632], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 624], rax
 pop rsi
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rsp
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [r12 + 152], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [r12 + 144], rbp
 mov dword ptr [r12 + 112], 0
.Lx3_0:
 mov r14d, dword ptr [r12 + 112]
 jmp xchain0_n2_α
 xchain0_n1_β:
 add dword ptr [r12 + 112], 1
 mov eax, dword ptr [r12 + 112]
 cmp eax, r15d
 jg .Lx3_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx3_1
 jmp .Lx3_0
.Lx3_1:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 120]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 128]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 152]
 jmp proc_ROMAN_γ
# IR_MATCH_SEQ_NARY
 xchain0_n2_α:
 mov dword ptr [r12 + 224], r14d
 mov dword ptr [r12 + 228], 0
 jmp xchain0_n4_α
xchain0_n2_as:
 mov eax, dword ptr [r12 + 228]
 add eax, 1
 mov dword ptr [r12 + 228], eax
 cmp eax, 1
 je xchain0_n6_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 mov dword ptr [r12 + 228], 2
xchain0_n2_af:
 mov eax, dword ptr [r12 + 228]
 sub eax, 1
 mov dword ptr [r12 + 228], eax
 cmp eax, 0
 je xchain0_n5_β
 cmp eax, 1
 je xchain0_n7_β
 jmp xchain0_n1_β
# IR_MATCH_RELEASE
 xchain0_n3_α:
 mov qword ptr [r12 + 136], r14
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 120]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 128]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 push r14
 push r15
 push r13
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [r12 + 144]
 mov rsi, rbp
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx7_1:
 test rax, rax
 je .Lx7_2
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
 call rt_dcap_step@PLT
 jmp .Lx7_1
.Lx7_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, [rsp + 8]
 pop r13
 pop r15
 pop r14
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 152]
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n2_af
.Lx8_0:
 .quad 1
# IR_MATCH_RPOS
 xchain0_n5_α:
 mov rax, 1
 mov ecx, r15d
 sub ecx, eax
 cmp r14d, ecx
 jne xchain0_n2_af
 jmp xchain0_n2_as
 xchain0_n5_β:
 jmp xchain0_n2_af
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n6_α:
 lea rdi, [r12 + 320]
 mov esi, r14d
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n9_α
 xchain0_n6_β:
 lea rdi, [r12 + 320]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n2_af
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain0_n7_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 lea rdi, [r12 + 320]
 call rt_cap_top@PLT
 mov rsp, [rsp + 8]
 lea rcx, [rip + .S0]
 mov qword ptr [rbp + 0], rcx
 mov esi, eax
 mov qword ptr [rbp + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [rbp + 16], rdx
 add rbp, 24
 jmp xchain0_n2_as
 xchain0_n7_β:
 sub rbp, 24
 jmp xchain0_n9_β
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_ROMAN_γ
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string ""
# IR_MATCH_LEN
 xchain0_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n6_β
 add r14d, 1
 jmp xchain0_n7_α
 xchain0_n9_β:
 sub r14d, 1
 jmp xchain0_n6_β
# IR_MATCH_REPLACE
 xchain0_n10_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx17_0]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov ecx, dword ptr [r12 + 112]
 mov r8, qword ptr [r12 + 136]
 lea r9, [r12 + 176]
 call rt_match_replace@PLT
 mov rsp, [rsp + 8]
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "N"
.Lx17_1:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ROMAN_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
# IR_MATCH_HEAD
 xchain0_n12_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rsp
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [r12 + 440], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [r12 + 432], rbp
 mov dword ptr [r12 + 400], 0
.Lx20_0:
 mov r14d, dword ptr [r12 + 400]
 jmp xchain0_n13_α
 xchain0_n12_β:
 add dword ptr [r12 + 400], 1
 mov eax, dword ptr [r12 + 400]
 cmp eax, r15d
 jg .Lx20_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx20_1
 jmp .Lx20_0
.Lx20_1:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 408]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 416]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 440]
 jmp proc_ROMAN_ω
# IR_MATCH_SEQ_NARY
 xchain0_n13_α:
 mov dword ptr [r12 + 464], r14d
 mov dword ptr [r12 + 468], 0
 jmp xchain0_n15_α
xchain0_n13_as:
 mov eax, dword ptr [r12 + 468]
 add eax, 1
 mov dword ptr [r12 + 468], eax
 cmp eax, 1
 je xchain0_n16_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 mov dword ptr [r12 + 468], 2
xchain0_n13_af:
 mov eax, dword ptr [r12 + 468]
 sub eax, 1
 mov dword ptr [r12 + 468], eax
 cmp eax, 0
 je xchain0_n15_β
 cmp eax, 1
 je xchain0_n17_β
 jmp xchain0_n12_β
# IR_MATCH_RELEASE
 xchain0_n14_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 408]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 416]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 push r14
 push r15
 push r13
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [r12 + 432]
 mov rsi, rbp
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx24_1:
 test rax, rax
 je .Lx24_2
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
 call rt_dcap_step@PLT
 jmp .Lx24_1
.Lx24_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, [rsp + 8]
 pop r13
 pop r15
 pop r14
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 440]
 jmp proc_ROMAN_γ
# IR_MATCH_DEFER
 xchain0_n15_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, [rsp + 8]
 xor ecx, ecx
 mov qword ptr [r12 + 496], rcx
 test rax, rax
 jz .Lx25_0
 mov qword ptr [r12 + 496], rax
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 504], rax
 mov rcx, qword ptr [r12 + 496]
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 je .Lx25_1
 mov rdi, qword ptr [r12 + 504]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, [rsp + 8]
 xor eax, eax
 mov qword ptr [r12 + 496], rax
 jmp xchain0_n13_af
.Lx25_1:
 jmp xchain0_n13_as
.Lx25_0:
 push r14
 push r15
 push r13
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 lea rdi, [rip + .S0]
 xor esi, esi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_defer_open@PLT
.Lx25_2:
 test rax, rax
 je .Lx25_3
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
 call rt_defer_step@PLT
 jmp .Lx25_2
.Lx25_3:
 mov rsp, [rsp + 8]
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_defer_close@PLT
 mov rsp, [rsp + 8]
 test eax, eax
 js xchain0_n13_af
 mov r14d, eax
 jmp xchain0_n13_as
 xchain0_n15_β:
 mov rcx, qword ptr [r12 + 496]
 test rcx, rcx
 jz xchain0_n13_af
 mov rdi, qword ptr [r12 + 504]
 mov esi, 1
 call rcx
 cmp eax, 1
 je .Lx25_1
 mov rdi, qword ptr [r12 + 504]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, [rsp + 8]
 xor eax, eax
 mov qword ptr [r12 + 496], rax
 jmp xchain0_n13_af
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n16_α:
 lea rdi, [r12 + 544]
 mov esi, r14d
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n18_α
 xchain0_n16_β:
 lea rdi, [r12 + 544]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n13_af
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain0_n17_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 lea rdi, [r12 + 544]
 call rt_cap_top@PLT
 mov rsp, [rsp + 8]
 lea rcx, [rip + .S0]
 mov qword ptr [rbp + 0], rcx
 mov esi, eax
 mov qword ptr [rbp + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [rbp + 16], rdx
 add rbp, 24
 jmp xchain0_n13_as
 xchain0_n17_β:
 sub rbp, 24
 jmp xchain0_n18_β
# IR_MATCH_BREAK
 xchain0_n18_α:
 mov dword ptr [r12 + 576], 0
.Lx31_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 576]
 cmp eax, r15d
 jge xchain0_n16_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx31_1
 add dword ptr [r12 + 576], 1
 jmp .Lx31_0
.Lx31_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 576]
 mov r14d, eax
 jmp xchain0_n17_α
 xchain0_n18_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 576]
 mov r14d, eax
 jmp xchain0_n16_β
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
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
proc_ROMAN_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 632]
pop r12
ret
proc_startup:
  sub rsp, 8
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
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
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
  sub rsp, 8
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
  mov qword ptr [r12 + 632], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 624], rax
 pop rsi
main_α_body:
# IR_GOTO_DEFERRED
 xchain32_n0_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx34_0]
 call rt_goto_transfer@PLT
 mov rsp, [rsp + 8]
 jmp .Lx34_1
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "ROMAN_END"
.Lx34_1:
 jmp main_γ
main_β:
jmp main_ω
main_γ:
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
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 632]
pop r12
ret
.section .rodata
.S0: .string "UNITS"
.S1: .string ","
.text
