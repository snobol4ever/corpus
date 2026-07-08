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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 560], rax
 pop rsi
proc_ADD1_α_body:
# IR_VAR gva
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ADD1_γ
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_ADD1_γ
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 128]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 144]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx3_2
 mov eax, dword ptr [r12 + 144]
 cmp eax, 6
 jne .Lx3_2
.Lx3_1:
 mov rax, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 152]
 add rax, rcx
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n3_α
.Lx3_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 0
 lea r9, [r12 + 112]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx3_3
.Lx3_2:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_ADD1_γ
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
.Lx3_3:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_ADD1_γ
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp proc_ADD1_γ
 xchain0_n3_β:
 jmp proc_ADD1_γ
proc_ADD1_β:
jmp proc_ADD1_ω
proc_ADD1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 560]
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
 mov qword ptr [r12 + 560], rax
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
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp xchain5_n5_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "ADD1"
# IR_ASSIGN gva
 xchain5_n4_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain5_n5_α
 xchain5_n4_β:
 jmp xchain5_n5_α
# IR_LIT_INTEGER
 xchain5_n5_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp xchain5_n7_α
.Lx12_0:
 .quad 5
# IR_ASSIGN gva
 xchain5_n6_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain5_n7_α
 xchain5_n6_β:
 jmp xchain5_n7_α
# IR_LIT_INTEGER
 xchain5_n7_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain5_n8_α
 xchain5_n7_β:
 jmp xchain5_n9_α
.Lx14_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n8_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain5_n9_α
 xchain5_n8_β:
 jmp xchain5_n9_α
# IR_VAR gva
 xchain5_n9_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain5_n10_α
 xchain5_n9_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n10_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain5_n12_α
 xchain5_n10_β:
 jmp xchain5_n11_α
.Lx17_0:
 .quad 500
# IR_VAR gva
 xchain5_n11_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain5_n13_α
 xchain5_n11_β:
 jmp main_γ
 xchain5_n12_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn20: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain5_n11_α
 jmp xchain5_n14_α
 xchain5_n12_β:
 jmp xchain5_n11_α
# IR_ASSIGN global
 xchain5_n13_α:
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov rdi, qword ptr [rip + .Lx21_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp main_γ
 xchain5_n13_β:
 jmp main_γ
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "OUTPUT"
# IR_VAR gva
 xchain5_n14_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain5_n15_α
 xchain5_n14_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n15_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain5_n16_α
 xchain5_n15_β:
 jmp xchain5_n11_α
.Lx23_0:
 .quad 1
 xchain5_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx24_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx24_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx24_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx24_2
.Lx24_1:
 mov rax, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 408]
 add rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain5_n17_α
.Lx24_0:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx24_3
.Lx24_2:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain5_n11_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx24_3:
 jmp xchain5_n17_α
 xchain5_n16_β:
 jmp xchain5_n11_α
 xchain5_n17_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain5_n18_α
 xchain5_n17_β:
 jmp xchain5_n11_α
# IR_ASSIGN gva
 xchain5_n18_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain5_n19_α
 xchain5_n18_β:
 jmp xchain5_n11_α
# IR_VAR gva
 xchain5_n19_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain5_n20_α
 xchain5_n19_β:
 jmp xchain5_n9_α
 xchain5_n20_α:
# BOX IR_CALL FN(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+512] -> [r12+496]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lbynamefn29: .string "FN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn29]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain5_n9_α
 jmp xchain5_n21_α
xchain5_n20_β:
 jmp xchain5_n9_α
 xchain5_n21_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+464]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn31: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain5_n9_α
 jmp xchain5_n22_α
 xchain5_n21_β:
 jmp xchain5_n9_α
# IR_DEREF variable -> value
 xchain5_n22_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain5_n9_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain5_n23_α
 xchain5_n22_β:
 jmp xchain5_n9_α
# IR_ASSIGN gva
 xchain5_n23_α:
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain5_n9_α
 xchain5_n23_β:
 jmp xchain5_n9_α
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
 mov rdi, qword ptr [r12 + 560]
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
