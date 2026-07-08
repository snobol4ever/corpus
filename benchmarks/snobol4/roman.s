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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1024], rax
 pop rsi
proc_ROMAN_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ROMAN_γ
# IR_MATCH_HEAD
 xchain0_n1_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 184], rax
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [rdi + 0]
 mov qword ptr [r12 + 192], rax
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 176], 0
.Lx3_0:
 mov r14d, dword ptr [r12 + 176]
 jmp xchain0_n2_α
 xchain0_n1_β:
 add dword ptr [r12 + 176], 1
 mov eax, dword ptr [r12 + 176]
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
 mov rdi, qword ptr [r12 + 184]
 call rt_zls_release_to@PLT
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [rdi + 0], rax
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_ROMAN_γ
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 248], rax
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
 lea rdi, [r12 + 224]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n5_α
 xchain0_n4_β:
 lea rdi, [r12 + 224]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n1_β
# IR_MATCH_LEN
 xchain0_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n4_β
 add r14d, 1
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n4_β
# IR_MATCH_CAPTURE_COND
 xchain0_n6_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 224]
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
 jmp xchain0_n4_β
# IR_MATCH_RELEASE
 xchain0_n7_α:
 mov qword ptr [r12 + 200], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 184]
 call rt_zls_release_to@PLT
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [rdi + 0], rax
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 216], rax
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
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov ecx, dword ptr [r12 + 176]
 mov r8, qword ptr [r12 + 200]
 lea r9, [r12 + 208]
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
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 344], rax
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
 mov qword ptr [r12 + 280], rax
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [rdi + 0]
 mov qword ptr [r12 + 288], rax
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 272], 0
.Lx18_0:
 mov r14d, dword ptr [r12 + 272]
 jmp xchain0_n12_α
 xchain0_n11_β:
 add dword ptr [r12 + 272], 1
 mov eax, dword ptr [r12 + 272]
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
 mov rdi, qword ptr [r12 + 280]
 call rt_zls_release_to@PLT
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [rdi + 0], rax
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
 lea rdi, [r12 + 304]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n14_α
 xchain0_n13_β:
 lea rdi, [r12 + 304]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n11_β
# IR_MATCH_BREAK
 xchain0_n14_α:
 mov dword ptr [r12 + 320], 0
.Lx23_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 320]
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
 add dword ptr [r12 + 320], 1
 jmp .Lx23_0
.Lx23_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 320]
 mov r14d, eax
 jmp xchain0_n15_α
 xchain0_n14_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 320]
 mov r14d, eax
 jmp xchain0_n13_β
# IR_MATCH_CAPTURE_COND
 xchain0_n15_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 304]
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
 jmp xchain0_n13_β
# IR_MATCH_RELEASE
 xchain0_n16_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 280]
 call rt_zls_release_to@PLT
 lea rdi, [rip + g_zls2_cur]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [rdi + 0], rax
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n17_α
# IR_VAR gva
 xchain0_n17_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_ROMAN_ω
 xchain0_n18_α:
  .section .rodata
  .Lcall19_pname: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall19_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je proc_ROMAN_ω
 jmp xchain0_n19_α
xchain0_n18_β:
 jmp proc_ROMAN_ω
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_ROMAN_ω
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "IVXLCDM"
# IR_LIT_STRING
 xchain0_n20_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_ROMAN_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "XLCDM**"
 xchain0_n21_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+416]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [r12+512] -> [r12+432]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn33: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_ROMAN_ω
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ROMAN_ω
# IR_VAR gva
 xchain0_n22_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_ROMAN_ω
 xchain0_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_ROMAN_ω
# IR_ASSIGN gva
 xchain0_n24_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp proc_ROMAN_γ
 xchain0_n24_β:
 jmp proc_ROMAN_ω
proc_ROMAN_β:
jmp proc_ROMAN_ω
proc_ROMAN_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1024]
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1024], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain37_n0_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain37_n1_α
 xchain37_n0_β:
 jmp xchain37_n3_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain37_n1_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain37_n2_α
 xchain37_n1_β:
 jmp xchain37_n3_α
.Lx39_0:
 .quad 1
 xchain37_n2_α:
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
  .Lrkfn41: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain37_n3_α
 jmp xchain37_n3_α
 xchain37_n2_β:
 jmp xchain37_n3_α
# IR_LIT_STRING
 xchain37_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain37_n4_α
 xchain37_n3_β:
 jmp xchain37_n6_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain37_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain37_n5_α
 xchain37_n4_β:
 jmp xchain37_n6_α
.Lx43_0:
 .quad 1000000000
 xchain37_n5_α:
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
  .Lrkfn45: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain37_n6_α
 jmp xchain37_n6_α
 xchain37_n5_β:
 jmp xchain37_n6_α
 xchain37_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn47: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain37_n8_α
 jmp xchain37_n7_α
 xchain37_n6_β:
 jmp xchain37_n8_α
# IR_ASSIGN gva
 xchain37_n7_α:
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain37_n8_α
 xchain37_n7_β:
 jmp xchain37_n8_α
# IR_LIT_INTEGER
 xchain37_n8_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain37_n9_α
 xchain37_n8_β:
 jmp xchain37_n10_α
.Lx49_0:
 .quad 0
# IR_ASSIGN gva
 xchain37_n9_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain37_n10_α
 xchain37_n9_β:
 jmp xchain37_n10_α
# IR_LIT_STRING
 xchain37_n10_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain37_n11_α
 xchain37_n10_β:
 jmp xchain37_n13_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "1776"
 xchain37_n11_α:
  .section .rodata
  .Lcall37_pname: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall37_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain37_n13_α
 jmp xchain37_n12_α
xchain37_n11_β:
 jmp xchain37_n13_α
# IR_ASSIGN gva
 xchain37_n12_α:
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain37_n13_α
 xchain37_n12_β:
 jmp xchain37_n13_α
# IR_VAR gva
 xchain37_n13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain37_n14_α
 xchain37_n13_β:
 jmp xchain37_n15_α
# IR_LIT_INTEGER
 xchain37_n14_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain37_n16_α
 xchain37_n14_β:
 jmp xchain37_n15_α
.Lx55_0:
 .quad 100000
 xchain37_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn57: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 864]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain37_n18_α
 jmp xchain37_n17_α
 xchain37_n15_β:
 jmp xchain37_n18_α
 xchain37_n16_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn59: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain37_n15_α
 jmp xchain37_n19_α
 xchain37_n16_β:
 jmp xchain37_n15_α
# IR_ASSIGN gva
 xchain37_n17_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain37_n18_α
 xchain37_n17_β:
 jmp xchain37_n18_α
# IR_LIT_STRING
 xchain37_n18_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain37_n20_α
 xchain37_n18_β:
 jmp xchain37_n23_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "result: "
# IR_VAR gva
 xchain37_n19_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain37_n21_α
 xchain37_n19_β:
 jmp xchain37_n15_α
# IR_VAR gva
 xchain37_n20_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain37_n22_α
 xchain37_n20_β:
 jmp xchain37_n23_α
# IR_LIT_INTEGER
 xchain37_n21_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain37_n24_α
 xchain37_n21_β:
 jmp xchain37_n15_α
.Lx64_0:
 .quad 1
 xchain37_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 call str_concat_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain37_n25_α
 xchain37_n22_β:
 jmp xchain37_n23_α
# IR_LIT_STRING
 xchain37_n23_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain37_n26_α
 xchain37_n23_β:
 jmp main_γ
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "ms: "
 xchain37_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 800]
 cmp eax, 100
 je .Lx67_0
 mov eax, dword ptr [r12 + 816]
 cmp eax, 100
 je .Lx67_0
 mov eax, dword ptr [r12 + 800]
 cmp eax, 6
 jne .Lx67_2
 mov eax, dword ptr [r12 + 816]
 cmp eax, 6
 jne .Lx67_2
.Lx67_1:
 mov rax, qword ptr [r12 + 808]
 mov rcx, qword ptr [r12 + 824]
 add rax, rcx
 mov qword ptr [r12 + 784], 6
 mov qword ptr [r12 + 792], rax
 jmp xchain37_n27_α
.Lx67_0:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 lea r9, [r12 + 784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx67_3
.Lx67_2:
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain37_n15_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
.Lx67_3:
 jmp xchain37_n27_α
 xchain37_n24_β:
 jmp xchain37_n15_α
# IR_ASSIGN global
 xchain37_n25_α:
 mov rsi, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov rdi, qword ptr [rip + .Lx68_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain37_n23_α
 xchain37_n25_β:
 jmp xchain37_n23_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "OUTPUT"
# IR_VAR gva
 xchain37_n26_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain37_n28_α
 xchain37_n26_β:
 jmp main_γ
 xchain37_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call str_concat_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain37_n29_α
 xchain37_n27_β:
 jmp xchain37_n15_α
# IR_VAR gva
 xchain37_n28_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain37_n30_α
 xchain37_n28_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain37_n29_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain37_n10_α
 xchain37_n29_β:
 jmp xchain37_n15_α
 xchain37_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 992]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [r12 + 992]
 cmp eax, 6
 jne .Lx73_2
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx73_2
.Lx73_1:
 mov rax, qword ptr [r12 + 1000]
 mov rcx, qword ptr [r12 + 1016]
 sub rax, rcx
 mov qword ptr [r12 + 976], 6
 mov qword ptr [r12 + 984], rax
 jmp xchain37_n31_α
.Lx73_0:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 1
 lea r9, [r12 + 976]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx73_3
.Lx73_2:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 mov rcx, qword ptr [r12 + 1016]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
.Lx73_3:
 jmp xchain37_n31_α
 xchain37_n30_β:
 jmp main_γ
 xchain37_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 976]
 mov rcx, qword ptr [r12 + 984]
 call str_concat_d@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain37_n32_α
 xchain37_n31_β:
 jmp main_γ
# IR_ASSIGN global
 xchain37_n32_α:
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp main_γ
 xchain37_n32_β:
 jmp main_γ
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1024]
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
pop r12
ret
.section .rodata
.S0: .string "T"
.S1: .string ","
.text
