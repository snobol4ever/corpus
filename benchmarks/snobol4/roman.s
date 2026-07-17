  .intel_syntax noprefix
  .text
  .globl proc_ROMAN_α
proc_ROMAN_α:
#=======================================================================================================================
    .global proc_ROMAN_α
    .global proc_ROMAN_β
    .global proc_ROMAN_γ
    .global proc_ROMAN_ω
  sub rsp, 2064
  mov [rsp + 2040], rcx
  mov [rsp + 2048], rdx
  mov [rsp + 2056], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2032
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2024], rsp
proc_ROMAN_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 mov qword ptr [rbp + 408], rbp
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 400], r12
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
 mov r12, qword ptr [rbp + 400]
 mov rbp, qword ptr [rbp + 408]
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
 mov dword ptr [rsp + 416], eax
 mov qword ptr [rsp + 440], r14
 mov rsp, qword ptr [rsp + 32]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 432]
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
 mov r12, qword ptr [rbp + 400]
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 520], rax
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
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 440], rax
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
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov ecx, dword ptr [rbp + 368]
 mov r8, qword ptr [rbp + 392]
 lea r9, [rbp + 432]
 call rt_match_replace@PLT
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "N"
.Lx17_1:
 mov rbp, qword ptr [rbp + 408]
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ROMAN_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
# IR_MATCH_HEAD
 xchain0_n12_α:
 mov qword ptr [rbp + 696], rbp
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 688], r12
 mov qword ptr [rbp + 672], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 664], rax
 mov dword ptr [rbp + 656], 0
.Lx20_0:
 mov r14d, dword ptr [rbp + 656]
 jmp xchain0_n13_α
 xchain0_n12_β:
 add dword ptr [rbp + 656], 1
 mov eax, dword ptr [rbp + 656]
 cmp eax, r15d
 jg .Lx20_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx20_1
 jmp .Lx20_0
.Lx20_1:
 mov rax, qword ptr [rbp + 664]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 672]
 mov r12, qword ptr [rbp + 688]
 mov rbp, qword ptr [rbp + 696]
 jmp proc_ROMAN_ω
# IR_MATCH_SEQ_NARY
 xchain0_n13_α:
 mov dword ptr [rbp + 720], r14d
 mov dword ptr [rbp + 724], 0
 jmp xchain0_n15_α
xchain0_n13_as:
 mov eax, dword ptr [rbp + 724]
 add eax, 1
 mov dword ptr [rbp + 724], eax
 cmp eax, 1
 je xchain0_n16_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 mov dword ptr [rbp + 724], 2
xchain0_n13_af:
 mov eax, dword ptr [rbp + 724]
 sub eax, 1
 mov dword ptr [rbp + 724], eax
 cmp eax, 0
 je xchain0_n15_β
 cmp eax, 1
 je xchain0_n17_β
 jmp xchain0_n12_β
# IR_MATCH_RELEASE
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 664]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 672]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 720]
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
 mov r12, qword ptr [rbp + 688]
 mov rbp, qword ptr [rbp + 696]
 jmp xchain0_n18_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain0_n15_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx25_0
 lea rcx, [rip + .Lx25_4]
 lea rdx, [rip + .Lx25_5]
 jmp rax
.Lx25_4:
 jmp xchain0_n13_as
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
 jmp xchain0_n13_as
.Lx25_6:
 add rsp, 16
 jmp xchain0_n13_af
 xchain0_n15_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n16_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n19_α
 xchain0_n16_β:
 add rsp, 16
 jmp xchain0_n13_af
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
 jmp xchain0_n19_β
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_ROMAN_ω
# IR_MATCH_BREAK
 xchain0_n19_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx32_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx32_240
 add rsp, 16
 jmp xchain0_n16_β
.Lx32_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx32_1
 add dword ptr [rsp + 0], 1
 jmp .Lx32_0
.Lx32_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain0_n17_α
 xchain0_n19_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain0_n16_β
 xchain0_n20_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx34_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx34_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx34_3]
 lea rdx, [rip + .Lx34_4]
 jmp rax
.Lx34_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx34_2
.Lx34_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx34_2
.Lx34_1:
 call rt_faildescr@PLT
.Lx34_2:
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
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
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ROMAN_ω
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "IVXLCDM"
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_ROMAN_ω
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "XLCDM**"
 xchain0_n23_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+960]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+976]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn38: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn38]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_ROMAN_ω
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_ROMAN_ω
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_ROMAN_ω
 xchain0_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call str_concat_d@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_ROMAN_ω
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp proc_ROMAN_γ
 xchain0_n26_β:
 jmp proc_ROMAN_ω
proc_ROMAN_res:
add rsp, 8
pop rbp
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2040]
lea rsp, [rbp + 2064]
mov rbp, [rbp + 2056]
jmp rax
proc_ROMAN_ω:
mov rax, [rbp + 2048]
lea rsp, [rbp + 2064]
mov rbp, [rbp + 2056]
jmp rax
proc_startup:
  sub rsp, 8
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
  mov esi, 2032
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 6
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 6
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
  mov qword ptr [rsp + 2024], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain42_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain42_n1_α
 xchain42_n0_β:
 jmp xchain42_n3_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain42_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain42_n2_α
 xchain42_n1_β:
 jmp xchain42_n3_α
.Lx44_0:
 .quad 1
 xchain42_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn46: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain42_n3_α
 jmp xchain42_n3_α
 xchain42_n2_β:
 jmp xchain42_n3_α
# IR_LIT_STRING
 xchain42_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain42_n4_α
 xchain42_n3_β:
 jmp xchain42_n6_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain42_n4_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain42_n5_α
 xchain42_n4_β:
 jmp xchain42_n6_α
.Lx48_0:
 .quad 1000000000
 xchain42_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn50: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn50]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
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
 lea rsi, [rbp + 1216]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain42_n8_α
 jmp xchain42_n7_α
 xchain42_n6_β:
 jmp xchain42_n8_α
# IR_ASSIGN gva
 xchain42_n7_α:
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain42_n8_α
 xchain42_n7_β:
 jmp xchain42_n8_α
# IR_LIT_INTEGER
 xchain42_n8_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain42_n9_α
 xchain42_n8_β:
 jmp xchain42_n10_α
.Lx54_0:
 .quad 0
# IR_ASSIGN gva
 xchain42_n9_α:
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain42_n10_α
 xchain42_n9_β:
 jmp xchain42_n10_α
# IR_LIT_STRING
 xchain42_n10_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain42_n11_α
 xchain42_n10_β:
 jmp xchain42_n13_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "1776"
 xchain42_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx58_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx58_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx58_3]
 lea rdx, [rip + .Lx58_4]
 jmp rax
.Lx58_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx58_2
.Lx58_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx58_2
.Lx58_1:
 call rt_faildescr@PLT
.Lx58_2:
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
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
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain42_n13_α
 xchain42_n12_β:
 jmp xchain42_n13_α
# IR_VAR
 xchain42_n13_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain42_n14_α
 xchain42_n13_β:
 jmp xchain42_n15_α
# IR_LIT_INTEGER
 xchain42_n14_α:
 mov qword ptr [rbp + 1520], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 1528], rax
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
 lea rsi, [rbp + 1712]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain42_n18_α
 jmp xchain42_n17_α
 xchain42_n15_β:
 jmp xchain42_n18_α
# IR_COERCE_NUMERIC
 xchain42_n16_α:
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 7
 je .Lx65_1
 cmp eax, 6
 jne .Lx65_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx65_0
.Lx65_1:
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
 jmp .Lx65_2
.Lx65_0:
 lea rdi, [rbp + 1552]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1488]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx65_2:
 jmp xchain42_n19_α
 xchain42_n16_β:
 jmp xchain42_n15_α
# IR_ASSIGN gva
 xchain42_n17_α:
 mov rax, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain42_n18_α
 xchain42_n17_β:
 jmp xchain42_n18_α
# IR_LIT_STRING
 xchain42_n18_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain42_n20_α
 xchain42_n18_β:
 jmp xchain42_n23_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain42_n19_α:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 7
 je .Lx69_1
 cmp eax, 6
 jne .Lx69_0
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 6
 jne .Lx69_0
.Lx69_1:
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
 jmp .Lx69_2
.Lx69_0:
 lea rdi, [rbp + 1520]
 lea rsi, [rbp + 1552]
 lea rdx, [rbp + 1456]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx69_2:
 jmp xchain42_n21_α
 xchain42_n19_β:
 jmp xchain42_n15_α
# IR_VAR
 xchain42_n20_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain42_n22_α
 xchain42_n20_β:
 jmp xchain42_n23_α
# IR_CMP_TEST
 xchain42_n21_α:
 lea rdi, [rbp + 1488]
 lea rsi, [rbp + 1456]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain42_n15_α
 mov qword ptr [rbp + 1424], 0
 mov qword ptr [rbp + 1432], 0
 jmp xchain42_n24_α
 xchain42_n21_β:
 jmp xchain42_n15_α
 xchain42_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1776]
 mov rsi, qword ptr [rbp + 1784]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain42_n25_α
 xchain42_n22_β:
 jmp xchain42_n23_α
# IR_LIT_STRING
 xchain42_n23_α:
 mov qword ptr [rbp + 1888], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain42_n26_α
 xchain42_n23_β:
 jmp main_γ
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "ms: "
# IR_VAR
 xchain42_n24_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain42_n27_α
 xchain42_n24_β:
 jmp xchain42_n15_α
# IR_ASSIGN global
 xchain42_n25_α:
 mov rsi, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain42_n23_α
 xchain42_n25_β:
 jmp xchain42_n23_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain42_n26_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain42_n28_α
 xchain42_n26_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain42_n27_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain42_n29_α
 xchain42_n27_β:
 jmp xchain42_n15_α
.Lx78_0:
 .quad 1
# IR_VAR
 xchain42_n28_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain42_n30_α
 xchain42_n28_β:
 jmp main_γ
 xchain42_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [rbp + 1624]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1584], 6
 mov qword ptr [rbp + 1592], rax
 jmp xchain42_n31_α
.Lx80_0:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 0
 lea r9, [rbp + 1584]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx80_3
.Lx80_2:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain42_n15_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
.Lx80_3:
 jmp xchain42_n31_α
 xchain42_n29_β:
 jmp xchain42_n15_α
 xchain42_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx81_2
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [rbp + 1960]
 mov rcx, qword ptr [rbp + 1992]
 sub rax, rcx
 mov qword ptr [rbp + 1920], 6
 mov qword ptr [rbp + 1928], rax
 jmp xchain42_n32_α
.Lx81_0:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 1
 lea r9, [rbp + 1920]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx81_3
.Lx81_2:
 mov rdi, qword ptr [rbp + 1952]
 mov rsi, qword ptr [rbp + 1960]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
.Lx81_3:
 jmp xchain42_n32_α
 xchain42_n30_β:
 jmp main_γ
 xchain42_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1584]
 mov rcx, qword ptr [rbp + 1592]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain42_n33_α
 xchain42_n31_β:
 jmp xchain42_n15_α
 xchain42_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1920]
 mov rcx, qword ptr [rbp + 1928]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain42_n34_α
 xchain42_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain42_n33_α:
 mov rax, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain42_n10_α
 xchain42_n33_β:
 jmp xchain42_n15_α
# IR_ASSIGN global
 xchain42_n34_α:
 mov rsi, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 mov rdi, qword ptr [rip + .Lx85_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
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
mov rsp, qword ptr [rsp + 2024]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 2024]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "T"
.S1: .string ","
.text
