  .intel_syntax noprefix
  .text
  .globl proc_ROMAN_α
proc_ROMAN_α:
#=======================================================================================================================
    .global proc_ROMAN_α
    .global proc_ROMAN_β
    .global proc_ROMAN_γ
    .global proc_ROMAN_ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 304], 0
  mov qword ptr [rsp + 312], 0
  mov qword ptr [rsp + 496], 0
  mov qword ptr [rsp + 504], 0
  mov qword ptr [rsp + 576], 0
  mov qword ptr [rsp + 584], rsp
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 mov qword ptr [rbp + 152], rbp
 mov rdi, qword ptr [rbp + 336]
 mov rsi, qword ptr [rbp + 344]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 144], r12
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
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
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
 mov rdi, qword ptr [rsp + 176]
 mov rsi, r12
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
 mov r12, qword ptr [rbp + 144]
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 248], rax
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
 jmp xchain0_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain0_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain0_n2_as
 xchain0_n7_β:
 sub r12, 24
 jmp xchain0_n9_β
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 184], rax
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
 jle .Lx15_240
 add rsp, 16
 jmp xchain0_n2_af
.Lx15_240:
 add r14d, 1
 jmp xchain0_n7_α
 xchain0_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain0_n2_af
# IR_MATCH_REPLACE
 xchain0_n10_α:
 mov rdi, qword ptr [rip + .Lx17_0]
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov ecx, dword ptr [rbp + 112]
 mov r8, qword ptr [rbp + 136]
 lea r9, [rbp + 176]
 call rt_match_replace@PLT
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "N"
.Lx17_1:
 mov rbp, qword ptr [rbp + 152]
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ROMAN_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
# IR_MATCH_HEAD
 xchain0_n12_α:
 mov qword ptr [rbp + 424], rbp
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 416], r12
 mov qword ptr [rbp + 400], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 392], rax
 mov dword ptr [rbp + 384], 0
.Lx20_0:
 mov r14d, dword ptr [rbp + 384]
 jmp xchain0_n13_α
 xchain0_n12_β:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 cmp eax, r15d
 jg .Lx20_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx20_1
 jmp .Lx20_0
.Lx20_1:
 mov rax, qword ptr [rbp + 392]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 400]
 mov r12, qword ptr [rbp + 416]
 mov rbp, qword ptr [rbp + 424]
 jmp proc_ROMAN_ω
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain0_n13_α:
 mov dword ptr [rbp + 432], r14d
 jmp xchain0_n15_α
xchain0_n13_as:
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n17_β
xchain0_n13_af:
 jmp xchain0_n12_β
# IR_MATCH_RELEASE
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 392]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 400]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 448]
 mov rsi, r12
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
 mov r12, qword ptr [rbp + 416]
 mov rbp, qword ptr [rbp + 424]
 jmp proc_ROMAN_γ
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain0_n15_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 cmp eax, 3
 jne .Lx25_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx25_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx25_10
.Lx25_9:
 xor eax, eax
.Lx25_10:
 test rax, rax
 jz .Lx25_0
 mov r8d, 0
 lea rcx, [rip + .Lx25_4]
 lea rdx, [rip + .Lx25_5]
 jmp rax
.Lx25_4:
 jmp xchain0_n16_α
.Lx25_5:
 jmp xchain0_n13_af
.Lx25_0:
 push r14
 push r15
 push r13
 sub rsp, 8
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
 sub rsp, 8
 push rax
 jmp xchain0_n16_α
.Lx25_6:
 add rsp, 16
 jmp xchain0_n13_af
 xchain0_n15_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n16_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n18_α
 xchain0_n16_β:
 add rsp, 16
 jmp xchain0_n15_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain0_n17_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain0_n13_as
 xchain0_n17_β:
 sub r12, 24
 jmp xchain0_n18_β
# IR_MATCH_BREAK
 xchain0_n18_α:
 sub rsp, 16
 movsxd rcx, r14d
.Lx31_0:
 cmp ecx, r15d
 jl .Lx31_237
 add rsp, 16
 add rsp, 16
 jmp xchain0_n15_β
.Lx31_237:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx31_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx31_238
 add rsp, 16
 add rsp, 16
 jmp xchain0_n15_β
.Lx31_238:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx31_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx31_239
 add rsp, 16
 add rsp, 16
 jmp xchain0_n15_β
.Lx31_239:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx31_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx31_240
 add rsp, 16
 add rsp, 16
 jmp xchain0_n15_β
.Lx31_240:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx31_1
 add ecx, 1
 jmp .Lx31_0
.Lx31_1:
 mov dword ptr [rsp + 0], r14d
 mov r14d, ecx
 jmp xchain0_n17_α
 xchain0_n18_β:
 mov r14d, dword ptr [rsp + 0]
 add rsp, 16
 add rsp, 16
 jmp xchain0_n15_β
proc_ROMAN_res:
add rsp, 8
pop rbp
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_ROMAN_ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
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
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 3
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 3
  call gva_register@PLT
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
  mov qword ptr [rsp + 584], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
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
mov rsp, qword ptr [rbp + 584]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 584]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "UNITS"
.text
