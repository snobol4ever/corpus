  .intel_syntax noprefix
  .text
  .globl proc_ROMAN_α
proc_ROMAN_α:
#=======================================================================================================================
    .global proc_ROMAN_α
    .global proc_ROMAN_β
    .global proc_ROMAN_γ
    .global proc_ROMAN_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [rsp + 632], rsp
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 mov rdi, qword ptr [rsp + 352]
 mov rsi, qword ptr [rsp + 360]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rsp + 152], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [rsp + 144], rbp
 mov rax, rsp
 sub rsp, 32
 mov qword ptr [rsp + 16], rax
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rsp + 8], rax
 mov dword ptr [rsp + 0], 0
.Lx3_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain0_n2_α
 xchain0_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx3_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx3_1
 jmp .Lx3_0
.Lx3_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 152]
 jmp proc_ROMAN_γ
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain0_n2_α:
 jmp xchain0_n4_α
xchain0_n2_as:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n7_β
xchain0_n2_af:
 jmp xchain0_n1_β
# IR_MATCH_RELEASE
 xchain0_n3_α:
 mov rax, qword ptr [rsp + 24]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov eax, dword ptr [rsp + 16]
 mov dword ptr [rsp + 160], eax
 mov qword ptr [rsp + 184], r14
 mov rsp, qword ptr [rsp + 32]
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [rsp + 176]
 mov rsi, rbp
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx7_1:
 test rax, rax
 je .Lx7_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx7_3]
 lea rdx, [rip + .Lx7_4]
 jmp rax
.Lx7_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx7_1
.Lx7_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx7_1
.Lx7_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 152]
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rsp + 288], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rsp + 296], rax
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
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n9_α
 xchain0_n6_β:
 add rsp, 16
 jmp xchain0_n5_β
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain0_n7_α:
 mov eax, dword ptr [rsp + 0]
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
 mov qword ptr [rsp + 176], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rsp + 184], rax
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
 mov rdi, qword ptr [rip + .Lx17_0]
 mov rsi, qword ptr [rsp + 352]
 mov rdx, qword ptr [rsp + 360]
 mov ecx, dword ptr [rsp + 112]
 mov r8, qword ptr [rsp + 136]
 lea r9, [rsp + 176]
 call rt_match_replace@PLT
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "N"
.Lx17_1:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rsp + 592], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rsp + 600], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ROMAN_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
# IR_MATCH_HEAD
 xchain0_n12_α:
 mov rdi, qword ptr [rsp + 592]
 mov rsi, qword ptr [rsp + 600]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rsp + 440], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [rsp + 432], rbp
 mov qword ptr [rsp + 416], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rsp + 408], rax
 mov dword ptr [rsp + 400], 0
.Lx20_0:
 mov r14d, dword ptr [rsp + 400]
 jmp xchain0_n13_α
 xchain0_n12_β:
 add dword ptr [rsp + 400], 1
 mov eax, dword ptr [rsp + 400]
 cmp eax, r15d
 jg .Lx20_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx20_1
 jmp .Lx20_0
.Lx20_1:
 mov rax, qword ptr [rsp + 408]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 416]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 432]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 440]
 jmp proc_ROMAN_ω
# IR_MATCH_SEQ_NARY
 xchain0_n13_α:
 mov dword ptr [rsp + 464], r14d
 mov dword ptr [rsp + 468], 0
 jmp xchain0_n15_α
xchain0_n13_as:
 mov eax, dword ptr [rsp + 468]
 add eax, 1
 mov dword ptr [rsp + 468], eax
 cmp eax, 1
 je xchain0_n16_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 mov dword ptr [rsp + 468], 2
xchain0_n13_af:
 mov eax, dword ptr [rsp + 468]
 sub eax, 1
 mov dword ptr [rsp + 468], eax
 cmp eax, 0
 je xchain0_n15_β
 cmp eax, 1
 je xchain0_n17_β
 jmp xchain0_n12_β
# IR_MATCH_RELEASE
 xchain0_n14_α:
 mov rax, qword ptr [rsp + 408]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 416]
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [rsp + 464]
 mov rsi, rbp
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx24_1:
 test rax, rax
 je .Lx24_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx24_3]
 lea rdx, [rip + .Lx24_4]
 jmp rax
.Lx24_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx24_1
.Lx24_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx24_1
.Lx24_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 432]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 440]
 jmp proc_ROMAN_γ
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain0_n15_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx25_0
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 lea rcx, [rip + .Lx25_4]
 lea rdx, [rip + .Lx25_5]
 jmp rax
.Lx25_4:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain0_n13_as
.Lx25_5:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain0_n13_af
.Lx25_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx25_2:
 test rax, rax
 je .Lx25_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx25_7]
 lea rdx, [rip + .Lx25_8]
 jmp rax
.Lx25_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx25_2
.Lx25_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx25_2
.Lx25_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain0_n13_af
 mov r14d, eax
 lea rax, [rip + .Lx25_6]
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 sub rsp, 8
 push rax
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain0_n13_as
.Lx25_6:
 add rsp, 16
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain0_n13_af
 xchain0_n15_β:
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n16_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n18_α
 xchain0_n16_β:
 add rsp, 16
 jmp xchain0_n13_af
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain0_n17_α:
 mov eax, dword ptr [rsp + 16]
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
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx31_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx31_240
 add rsp, 16
 jmp xchain0_n16_β
.Lx31_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx31_1
 add dword ptr [rsp + 0], 1
 jmp .Lx31_0
.Lx31_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain0_n17_α
 xchain0_n18_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain0_n16_β
proc_ROMAN_res:
add rsp, 8
pop rsp
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
mov rdi, [rsp]
mov rsi, [rsp + 8]
mov rax, [rsp + 648]
lea rsp, [rsp + 672]
jmp rax
proc_ROMAN_ω:
mov rax, [rsp + 656]
lea rsp, [rsp + 672]
jmp rax
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [rsp + 632], rsp
main_α_body:
# IR_GOTO_DEFERRED
 xchain32_n0_α:
 mov rdi, qword ptr [rip + .Lx34_0]
 call rt_goto_transfer@PLT
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
mov rsp, qword ptr [rsp + 632]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 632]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
.section .rodata
.S0: .string "UNITS"
.S1: .string ","
.text
