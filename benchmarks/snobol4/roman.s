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
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1984], rax
 pop rsi
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rsp
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 368], 0
.Lx3_0:
 mov r14d, dword ptr [r12 + 368]
 jmp xchain0_n2_α
 xchain0_n1_β:
 add dword ptr [r12 + 368], 1
 mov eax, dword ptr [r12 + 368]
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
 mov rdi, qword ptr [r12 + 376]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 384]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, [rsp + 8]
 jmp proc_ROMAN_γ
# IR_MATCH_SEQ_NARY
 xchain0_n2_α:
 mov dword ptr [r12 + 464], r14d
 mov dword ptr [r12 + 468], 0
 jmp xchain0_n4_α
xchain0_n2_as:
 mov eax, dword ptr [r12 + 468]
 add eax, 1
 mov dword ptr [r12 + 468], eax
 cmp eax, 1
 je xchain0_n6_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 mov dword ptr [r12 + 468], 2
xchain0_n2_af:
 mov eax, dword ptr [r12 + 468]
 sub eax, 1
 mov dword ptr [r12 + 468], eax
 cmp eax, 0
 je xchain0_n5_β
 cmp eax, 1
 je xchain0_n7_β
 jmp xchain0_n1_β
# IR_MATCH_RELEASE
 xchain0_n3_α:
 mov qword ptr [r12 + 392], r14
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 376]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 384]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 push r14
 push r15
 push r13
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok_open@PLT
.Lx7_1:
 test rax, rax
 je .Lx7_2
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx7_1
.Lx7_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 504], rax
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
 lea rdi, [r12 + 560]
 mov esi, r14d
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n9_α
 xchain0_n6_β:
 lea rdi, [r12 + 560]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n2_af
# IR_MATCH_CAPTURE_COND
 xchain0_n7_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 560]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_open@PLT
 test rax, rax
 je .Lx13_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_cap_finish@PLT
.Lx13_1:
 mov rsp, rbp
 pop rbp
 jmp xchain0_n2_as
 xchain0_n7_β:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n9_β
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 424], rax
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
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov ecx, dword ptr [r12 + 368]
 mov r8, qword ptr [r12 + 392]
 lea r9, [r12 + 416]
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
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 824], rax
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
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rsp
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 640], 0
.Lx20_0:
 mov r14d, dword ptr [r12 + 640]
 jmp xchain0_n13_α
 xchain0_n12_β:
 add dword ptr [r12 + 640], 1
 mov eax, dword ptr [r12 + 640]
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
 mov rdi, qword ptr [r12 + 648]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 656]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, [rsp + 8]
 jmp proc_ROMAN_ω
# IR_MATCH_SEQ_NARY
 xchain0_n13_α:
 mov dword ptr [r12 + 688], r14d
 mov dword ptr [r12 + 692], 0
 jmp xchain0_n15_α
xchain0_n13_as:
 mov eax, dword ptr [r12 + 692]
 add eax, 1
 mov dword ptr [r12 + 692], eax
 cmp eax, 1
 je xchain0_n16_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 mov dword ptr [r12 + 692], 2
xchain0_n13_af:
 mov eax, dword ptr [r12 + 692]
 sub eax, 1
 mov dword ptr [r12 + 692], eax
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
 mov rdi, qword ptr [r12 + 648]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
 mov rsp, qword ptr [r12 + 656]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rsp, [rsp + 8]
 push r14
 push r15
 push r13
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok_open@PLT
.Lx24_1:
 test rax, rax
 je .Lx24_2
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx24_1
.Lx24_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 jmp xchain0_n18_α
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
 mov qword ptr [r12 + 720], rcx
 test rax, rax
 jz .Lx25_0
 mov qword ptr [r12 + 720], rax
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 728], rax
 mov rcx, qword ptr [r12 + 720]
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 je .Lx25_1
 mov rdi, qword ptr [r12 + 728]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, [rsp + 8]
 xor eax, eax
 mov qword ptr [r12 + 720], rax
 jmp xchain0_n13_af
.Lx25_1:
 jmp xchain0_n13_as
.Lx25_0:
 push r14
 push r15
 push r13
 lea rdi, [rip + .S0]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_open@PLT
.Lx25_2:
 test rax, rax
 je .Lx25_3
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx25_2
.Lx25_3:
 mov rsp, rbp
 pop rbp
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
 mov rcx, qword ptr [r12 + 720]
 test rcx, rcx
 jz xchain0_n13_af
 mov rdi, qword ptr [r12 + 728]
 mov esi, 1
 call rcx
 cmp eax, 1
 je .Lx25_1
 mov rdi, qword ptr [r12 + 728]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, [rsp + 8]
 xor eax, eax
 mov qword ptr [r12 + 720], rax
 jmp xchain0_n13_af
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n16_α:
 lea rdi, [r12 + 768]
 mov esi, r14d
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n19_α
 xchain0_n16_β:
 lea rdi, [r12 + 768]
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n13_af
# IR_MATCH_CAPTURE_COND
 xchain0_n17_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 768]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_open@PLT
 test rax, rax
 je .Lx29_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_cap_finish@PLT
.Lx29_1:
 mov rsp, rbp
 pop rbp
 jmp xchain0_n13_as
 xchain0_n17_β:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, [rsp + 8]
 jmp xchain0_n19_β
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_ROMAN_ω
# IR_MATCH_BREAK
 xchain0_n19_α:
 mov dword ptr [r12 + 800], 0
.Lx32_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 800]
 cmp eax, r15d
 jge xchain0_n16_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx32_1
 add dword ptr [r12 + 800], 1
 jmp .Lx32_0
.Lx32_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 800]
 mov r14d, eax
 jmp xchain0_n17_α
 xchain0_n19_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 800]
 mov r14d, eax
 jmp xchain0_n16_β
 xchain0_n20_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx34_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx34_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx34_2
.Lx34_1:
 call rt_faildescr@PLT
.Lx34_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_ROMAN_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_ROMAN_ω
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "ROMAN"
# IR_LIT_STRING
 xchain0_n21_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ROMAN_ω
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "IVXLCDM"
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_ROMAN_ω
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "XLCDM**"
 xchain0_n23_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+928]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 936], rax
# marshal arg2 = producer-box slot [zr+1088] -> [zr+944]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn38: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je proc_ROMAN_ω
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_ROMAN_ω
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_ROMAN_ω
 xchain0_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_ROMAN_ω
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp proc_ROMAN_γ
 xchain0_n26_β:
 jmp proc_ROMAN_ω
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1984]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
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
  .Lstartup_pp0_1: .string "T"
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
  mov esi, 2000
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ROMAN"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T"
  .Lgvan3: .string "T1"
  .Lgvan4: .string "R"
  .Lgvan5: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
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
  mov edx, 6
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
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1984], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain42_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain42_n1_α
 xchain42_n0_β:
 jmp xchain42_n3_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain42_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain42_n2_α
 xchain42_n1_β:
 jmp xchain42_n3_α
.Lx44_0:
 .quad 1
 xchain42_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn46: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain42_n3_α
 jmp xchain42_n3_α
 xchain42_n2_β:
 jmp xchain42_n3_α
# IR_LIT_STRING
 xchain42_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain42_n4_α
 xchain42_n3_β:
 jmp xchain42_n6_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain42_n4_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain42_n5_α
 xchain42_n4_β:
 jmp xchain42_n6_α
.Lx48_0:
 .quad 1000000000
 xchain42_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn50: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain42_n6_α
 jmp xchain42_n6_α
 xchain42_n5_β:
 jmp xchain42_n6_α
 xchain42_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn52: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 1184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain42_n8_α
 jmp xchain42_n7_α
 xchain42_n6_β:
 jmp xchain42_n8_α
# IR_ASSIGN gva
 xchain42_n7_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain42_n8_α
 xchain42_n7_β:
 jmp xchain42_n8_α
# IR_LIT_INTEGER
 xchain42_n8_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain42_n9_α
 xchain42_n8_β:
 jmp xchain42_n10_α
.Lx54_0:
 .quad 0
# IR_ASSIGN gva
 xchain42_n9_α:
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain42_n10_α
 xchain42_n9_β:
 jmp xchain42_n10_α
# IR_LIT_STRING
 xchain42_n10_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain42_n11_α
 xchain42_n10_β:
 jmp xchain42_n13_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "1776"
 xchain42_n11_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx58_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx58_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx58_2
.Lx58_1:
 call rt_faildescr@PLT
.Lx58_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain42_n13_α
 jmp xchain42_n12_α
 xchain42_n11_β:
 jmp xchain42_n13_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "ROMAN"
# IR_ASSIGN gva
 xchain42_n12_α:
 mov rax, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain42_n13_α
 xchain42_n12_β:
 jmp xchain42_n13_α
# IR_VAR
 xchain42_n13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain42_n14_α
 xchain42_n13_β:
 jmp xchain42_n15_α
# IR_LIT_INTEGER
 xchain42_n14_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain42_n16_α
 xchain42_n14_β:
 jmp xchain42_n15_α
.Lx61_0:
 .quad 100000
 xchain42_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn63: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 1680]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain42_n18_α
 jmp xchain42_n17_α
 xchain42_n15_β:
 jmp xchain42_n18_α
# IR_COERCE_NUMERIC
 xchain42_n16_α:
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 7
 je .Lx65_1
 cmp eax, 6
 jne .Lx65_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx65_0
.Lx65_1:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1464], rax
 jmp .Lx65_2
.Lx65_0:
 lea rdi, [r12 + 1520]
 lea rsi, [r12 + 1488]
 lea rdx, [r12 + 1456]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx65_2:
 jmp xchain42_n19_α
 xchain42_n16_β:
 jmp xchain42_n15_α
# IR_ASSIGN gva
 xchain42_n17_α:
 mov rax, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain42_n18_α
 xchain42_n17_β:
 jmp xchain42_n18_α
# IR_LIT_STRING
 xchain42_n18_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain42_n20_α
 xchain42_n18_β:
 jmp xchain42_n23_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain42_n19_α:
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 7
 je .Lx69_1
 cmp eax, 6
 jne .Lx69_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx69_0
.Lx69_1:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1432], rax
 jmp .Lx69_2
.Lx69_0:
 lea rdi, [r12 + 1488]
 lea rsi, [r12 + 1520]
 lea rdx, [r12 + 1424]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx69_2:
 jmp xchain42_n21_α
 xchain42_n19_β:
 jmp xchain42_n15_α
# IR_VAR
 xchain42_n20_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain42_n22_α
 xchain42_n20_β:
 jmp xchain42_n23_α
# IR_CMP_TEST
 xchain42_n21_α:
 lea rdi, [r12 + 1456]
 lea rsi, [r12 + 1424]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain42_n15_α
 mov qword ptr [r12 + 1392], 0
 mov qword ptr [r12 + 1400], 0
 jmp xchain42_n24_α
 xchain42_n21_β:
 jmp xchain42_n15_α
 xchain42_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1744]
 mov rsi, qword ptr [r12 + 1752]
 mov rdx, qword ptr [r12 + 1776]
 mov rcx, qword ptr [r12 + 1784]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain42_n25_α
 xchain42_n22_β:
 jmp xchain42_n23_α
# IR_LIT_STRING
 xchain42_n23_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 1864], rax
 jmp xchain42_n26_α
 xchain42_n23_β:
 jmp main_γ
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "ms: "
# IR_VAR
 xchain42_n24_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain42_n27_α
 xchain42_n24_β:
 jmp xchain42_n15_α
# IR_ASSIGN global
 xchain42_n25_α:
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain42_n23_α
 xchain42_n25_β:
 jmp xchain42_n23_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain42_n26_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain42_n28_α
 xchain42_n26_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain42_n27_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain42_n29_α
 xchain42_n27_β:
 jmp xchain42_n15_α
.Lx78_0:
 .quad 1
# IR_VAR
 xchain42_n28_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain42_n30_α
 xchain42_n28_β:
 jmp main_γ
 xchain42_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [r12 + 1592]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1552], 6
 mov qword ptr [r12 + 1560], rax
 jmp xchain42_n31_α
.Lx80_0:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 mov r8d, 0
 lea r9, [r12 + 1552]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx80_3
.Lx80_2:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 mov rdx, qword ptr [r12 + 1616]
 mov rcx, qword ptr [r12 + 1624]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain42_n15_α
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
.Lx80_3:
 jmp xchain42_n31_α
 xchain42_n29_β:
 jmp xchain42_n15_α
 xchain42_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1920]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [r12 + 1920]
 cmp eax, 6
 jne .Lx81_2
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [r12 + 1928]
 mov rcx, qword ptr [r12 + 1960]
 sub rax, rcx
 mov qword ptr [r12 + 1888], 6
 mov qword ptr [r12 + 1896], rax
 jmp xchain42_n32_α
.Lx81_0:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 mov r8d, 1
 lea r9, [r12 + 1888]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx81_3
.Lx81_2:
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 mov rdx, qword ptr [r12 + 1952]
 mov rcx, qword ptr [r12 + 1960]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
.Lx81_3:
 jmp xchain42_n32_α
 xchain42_n30_β:
 jmp main_γ
 xchain42_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1552]
 mov rcx, qword ptr [r12 + 1560]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain42_n33_α
 xchain42_n31_β:
 jmp xchain42_n15_α
 xchain42_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 mov rdx, qword ptr [r12 + 1888]
 mov rcx, qword ptr [r12 + 1896]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain42_n34_α
 xchain42_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain42_n33_α:
 mov rax, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain42_n10_α
 xchain42_n33_β:
 jmp xchain42_n15_α
# IR_ASSIGN global
 xchain42_n34_α:
 mov rsi, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov rdi, qword ptr [rip + .Lx85_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp main_γ
 xchain42_n34_β:
 jmp main_γ
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1984]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
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
.S0: .string "T"
.S1: .string ","
.text
