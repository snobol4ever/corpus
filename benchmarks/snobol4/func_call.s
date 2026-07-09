  .intel_syntax noprefix
  .text
  .globl proc_INC_α
proc_INC_α:
#=======================================================================================================================
    .global proc_INC_α
    .global proc_INC_β
    .global proc_INC_γ
    .global proc_INC_ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_INC_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_INC_γ
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_INC_γ
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 208]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 208]
 cmp eax, 6
 jne .Lx3_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx3_2
.Lx3_1:
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n3_α
.Lx3_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx3_3
.Lx3_2:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_INC_γ
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx3_3:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_INC_γ
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp proc_INC_γ
 xchain0_n3_β:
 jmp proc_INC_γ
proc_INC_β:
jmp proc_INC_ω
proc_INC_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_INC_ω:
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
  .Lstartup_pname0: .string "INC"
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
  lea rsi, [rip + proc_INC_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "INC"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "R"
  .Lgvan4: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .bss
  .align 16
__gva: .space 80, 0
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
  mov edx, 5
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
 mov qword ptr [r12 + 752], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain5_n0_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain5_n1_α
 xchain5_n0_β:
 jmp xchain5_n3_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain5_n1_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain5_n2_α
 xchain5_n1_β:
 jmp xchain5_n3_α
.Lx7_0:
 .quad 1
 xchain5_n2_α:
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
  .Lrkfn9: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain5_n3_α
 jmp xchain5_n3_α
 xchain5_n2_β:
 jmp xchain5_n3_α
# IR_LIT_STRING
 xchain5_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp xchain5_n6_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain5_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain5_n5_α
 xchain5_n4_β:
 jmp xchain5_n6_α
.Lx11_0:
 .quad 1000000000
 xchain5_n5_α:
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
  .Lrkfn13: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain5_n6_α
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp xchain5_n6_α
 xchain5_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn15: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain5_n8_α
 jmp xchain5_n7_α
 xchain5_n6_β:
 jmp xchain5_n8_α
# IR_ASSIGN gva
 xchain5_n7_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain5_n8_α
 xchain5_n7_β:
 jmp xchain5_n8_α
# IR_LIT_INTEGER
 xchain5_n8_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain5_n9_α
 xchain5_n8_β:
 jmp xchain5_n10_α
.Lx17_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n9_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain5_n10_α
 xchain5_n9_β:
 jmp xchain5_n10_α
# IR_LIT_INTEGER
 xchain5_n10_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain5_n11_α
 xchain5_n10_β:
 jmp xchain5_n12_α
.Lx19_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n11_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain5_n12_α
 xchain5_n11_β:
 jmp xchain5_n12_α
# IR_VAR gva
 xchain5_n12_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain5_n13_α
 xchain5_n12_β:
 jmp xchain5_n14_α
# IR_LIT_INTEGER
 xchain5_n13_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain5_n15_α
 xchain5_n13_β:
 jmp xchain5_n14_α
.Lx22_0:
 .quad 10000000
 xchain5_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 592]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain5_n17_α
 jmp xchain5_n16_α
 xchain5_n14_β:
 jmp xchain5_n17_α
 xchain5_n15_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn26: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain5_n14_α
 jmp xchain5_n18_α
 xchain5_n15_β:
 jmp xchain5_n14_α
# IR_ASSIGN gva
 xchain5_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain5_n17_α
 xchain5_n16_β:
 jmp xchain5_n17_α
# IR_LIT_STRING
 xchain5_n17_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain5_n19_α
 xchain5_n17_β:
 jmp xchain5_n22_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "result: "
# IR_VAR gva
 xchain5_n18_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain5_n20_α
 xchain5_n18_β:
 jmp xchain5_n14_α
# IR_VAR gva
 xchain5_n19_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain5_n21_α
 xchain5_n19_β:
 jmp xchain5_n22_α
# IR_LIT_INTEGER
 xchain5_n20_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain5_n23_α
 xchain5_n20_β:
 jmp xchain5_n14_α
.Lx31_0:
 .quad 1
 xchain5_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain5_n24_α
 xchain5_n21_β:
 jmp xchain5_n22_α
# IR_LIT_STRING
 xchain5_n22_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain5_n25_α
 xchain5_n22_β:
 jmp main_γ
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "ms: "
 xchain5_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx34_2
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx34_2
.Lx34_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 add rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain5_n26_α
.Lx34_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx34_3
.Lx34_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain5_n14_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx34_3:
 jmp xchain5_n26_α
 xchain5_n23_β:
 jmp xchain5_n14_α
# IR_ASSIGN global
 xchain5_n24_α:
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov rdi, qword ptr [rip + .Lx35_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain5_n22_α
 xchain5_n24_β:
 jmp xchain5_n22_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "OUTPUT"
# IR_VAR gva
 xchain5_n25_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain5_n27_α
 xchain5_n25_β:
 jmp main_γ
 xchain5_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call str_concat_d@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain5_n28_α
 xchain5_n26_β:
 jmp xchain5_n14_α
# IR_VAR gva
 xchain5_n27_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain5_n29_α
 xchain5_n27_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain5_n28_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain5_n30_α
 xchain5_n28_β:
 jmp xchain5_n14_α
 xchain5_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx40_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx40_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx40_2
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx40_2
.Lx40_1:
 mov rax, qword ptr [r12 + 728]
 mov rcx, qword ptr [r12 + 744]
 sub rax, rcx
 mov qword ptr [r12 + 704], 6
 mov qword ptr [r12 + 712], rax
 jmp xchain5_n31_α
.Lx40_0:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 1
 lea r9, [r12 + 704]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx40_3
.Lx40_2:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
.Lx40_3:
 jmp xchain5_n31_α
 xchain5_n29_β:
 jmp main_γ
# IR_VAR gva
 xchain5_n30_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain5_n32_α
 xchain5_n30_β:
 jmp xchain5_n12_α
 xchain5_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain5_n33_α
 xchain5_n31_β:
 jmp main_γ
 xchain5_n32_α:
  .section .rodata
  .Lcall37_pname: .string "INC"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall37_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain5_n12_α
 jmp xchain5_n34_α
xchain5_n32_β:
 jmp xchain5_n12_α
# IR_ASSIGN global
 xchain5_n33_α:
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp main_γ
 xchain5_n33_β:
 jmp main_γ
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain5_n34_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain5_n12_α
 xchain5_n34_β:
 jmp xchain5_n12_α
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
 mov rdi, qword ptr [r12 + 752]
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
