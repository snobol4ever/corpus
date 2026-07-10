  .intel_syntax noprefix
  .text
  .globl proc_ADD1_α
proc_ADD1_α:
#=======================================================================================================================
    .global proc_ADD1_α
    .global proc_ADD1_β
    .global proc_ADD1_γ
    .global proc_ADD1_ω
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
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_ADD1_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ADD1_γ
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_ADD1_γ
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx3_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx3_2
.Lx3_1:
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 200]
 add rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n3_α
.Lx3_0:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 lea r9, [r12 + 160]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx3_3
.Lx3_2:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_ADD1_γ
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
.Lx3_3:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_ADD1_γ
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp proc_ADD1_γ
 xchain0_n3_β:
 jmp proc_ADD1_γ
proc_ADD1_β:
jmp proc_ADD1_ω
proc_ADD1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 592]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_ADD1_ω:
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
  .Lstartup_pname0: .string "ADD1"
  .Lstartup_pp0_0: .string "V"
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
  lea rsi, [rip + proc_ADD1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 608
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ADD1"
  .Lgvan1: .string "V"
  .Lgvan2: .string "FN"
  .Lgvan3: .string "X"
  .Lgvan4: .string "N"
  .Lgvan5: .string "R"
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 592], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain5_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain5_n1_α
 xchain5_n0_β:
 jmp xchain5_n3_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain5_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain5_n2_α
 xchain5_n1_β:
 jmp xchain5_n3_α
.Lx7_0:
 .quad 1
 xchain5_n2_α:
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
  .Lrkfn9: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain5_n3_α
 jmp xchain5_n3_α
 xchain5_n2_β:
 jmp xchain5_n3_α
# IR_LIT_STRING
 xchain5_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp xchain5_n5_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "ADD1"
# IR_ASSIGN gva
 xchain5_n4_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain5_n5_α
 xchain5_n4_β:
 jmp xchain5_n5_α
# IR_LIT_INTEGER
 xchain5_n5_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp xchain5_n7_α
.Lx12_0:
 .quad 5
# IR_ASSIGN gva
 xchain5_n6_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain5_n7_α
 xchain5_n6_β:
 jmp xchain5_n7_α
# IR_LIT_INTEGER
 xchain5_n7_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain5_n8_α
 xchain5_n7_β:
 jmp xchain5_n9_α
.Lx14_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n8_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain5_n9_α
 xchain5_n8_β:
 jmp xchain5_n9_α
# IR_VAR
 xchain5_n9_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain5_n10_α
 xchain5_n9_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain5_n12_α
 xchain5_n10_β:
 jmp xchain5_n11_α
.Lx17_0:
 .quad 500
# IR_VAR
 xchain5_n11_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain5_n13_α
 xchain5_n11_β:
 jmp main_γ
# IR_COERCE_NUMERIC
 xchain5_n12_α:
 lea rdi, [r12 + 400]
 lea rsi, [r12 + 384]
 lea rdx, [r12 + 368]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain5_n14_α
 xchain5_n12_β:
 jmp xchain5_n11_α
# IR_ASSIGN global
 xchain5_n13_α:
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov rdi, qword ptr [rip + .Lx21_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp main_γ
 xchain5_n13_β:
 jmp main_γ
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "OUTPUT"
# IR_COERCE_NUMERIC
 xchain5_n14_α:
 lea rdi, [r12 + 384]
 lea rsi, [r12 + 400]
 lea rdx, [r12 + 352]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain5_n15_α
 xchain5_n14_β:
 jmp xchain5_n11_α
# IR_CMP_TEST
 xchain5_n15_α:
 lea rdi, [r12 + 368]
 lea rsi, [r12 + 352]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain5_n11_α
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain5_n16_α
 xchain5_n15_β:
 jmp xchain5_n11_α
# IR_VAR
 xchain5_n16_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain5_n17_α
 xchain5_n16_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n17_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain5_n18_α
 xchain5_n17_β:
 jmp xchain5_n11_α
.Lx27_0:
 .quad 1
 xchain5_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 432]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [r12 + 448]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [r12 + 432]
 cmp eax, 6
 jne .Lx28_2
 mov eax, dword ptr [r12 + 448]
 cmp eax, 6
 jne .Lx28_2
.Lx28_1:
 mov rax, qword ptr [r12 + 440]
 mov rcx, qword ptr [r12 + 456]
 add rax, rcx
 mov qword ptr [r12 + 416], 6
 mov qword ptr [r12 + 424], rax
 jmp xchain5_n19_α
.Lx28_0:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov r8d, 0
 lea r9, [r12 + 416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx28_3
.Lx28_2:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain5_n11_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
.Lx28_3:
 jmp xchain5_n19_α
 xchain5_n18_β:
 jmp xchain5_n11_α
 xchain5_n19_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain5_n20_α
 xchain5_n19_β:
 jmp xchain5_n11_α
# IR_ASSIGN gva
 xchain5_n20_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain5_n21_α
 xchain5_n20_β:
 jmp xchain5_n11_α
# IR_VAR
 xchain5_n21_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain5_n22_α
 xchain5_n21_β:
 jmp xchain5_n9_α
# IR_VAR
 xchain5_n22_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain5_n23_α
 xchain5_n22_β:
 jmp xchain5_n9_α
 xchain5_n23_α:
# BOX IR_CALL APPLY(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn34: .string "APPLY"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain5_n9_α
 jmp xchain5_n24_α
 xchain5_n23_β:
 jmp xchain5_n9_α
# IR_ASSIGN gva
 xchain5_n24_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain5_n9_α
 xchain5_n24_β:
 jmp xchain5_n9_α
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
 mov rdi, qword ptr [r12 + 592]
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
