  .intel_syntax noprefix
  .text
  .globl proc_FIB_α
proc_FIB_α:
#=======================================================================================================================
    .global proc_FIB_α
    .global proc_FIB_β
    .global proc_FIB_γ
    .global proc_FIB_ω
push r12
  mov r12, rdi
proc_FIB_α_body:
xchain0_n0_α:
# IR_VAR gva
bb1_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
# IR_LIT_INTEGER
bb2_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 2
xchain0_n2_α:
# IR_VAR gva
bb3_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_FIB_γ
xchain0_n3_α:
bb4_α:
# BOX IR_CALL LT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn5: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
xchain0_n4_α:
# IR_LIT_INTEGER
bb5_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_FIB_γ
.Lx6_0:
 .quad 1
xchain0_n5_α:
# IR_VAR gva
bb6_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
xchain0_n6_α:
bb7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 384]
 cmp eax, 100
 je .Lx8_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx8_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx8_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx8_2
.Lx8_1:
 mov rax, qword ptr [r12 + 392]
 mov rcx, qword ptr [r12 + 408]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n8_α
.Lx8_0:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx8_3
.Lx8_2:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx8_3:
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_FIB_γ
xchain0_n7_α:
bb8_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
xchain0_n8_α:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "FIB"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n10_α
xchain0_n8_β:
 jmp proc_FIB_γ
xchain0_n9_α:
# IR_ASSIGN gva
bb10_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp proc_FIB_γ
 xchain0_n9_β:
 jmp xchain0_n2_α
xchain0_n10_α:
# IR_VAR gva
bb11_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_FIB_γ
xchain0_n11_α:
# IR_LIT_INTEGER
bb12_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_FIB_γ
.Lx13_0:
 .quad 2
xchain0_n12_α:
bb13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 464]
 cmp eax, 100
 je .Lx14_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx14_0
 mov eax, dword ptr [r12 + 464]
 cmp eax, 6
 jne .Lx14_2
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx14_2
.Lx14_1:
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 488]
 sub rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n13_α
.Lx14_0:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 1
 lea r9, [r12 + 448]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx14_3
.Lx14_2:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
.Lx14_3:
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_FIB_γ
xchain0_n13_α:
bb14_α:
  .section .rodata
  .Lcall14_pname: .string "FIB"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall14_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n14_α
xchain0_n13_β:
 jmp proc_FIB_γ
xchain0_n14_α:
bb15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 336]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 336]
 cmp eax, 6
 jne .Lx16_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx16_2
.Lx16_1:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 424]
 add rax, rcx
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n15_α
.Lx16_0:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 lea r9, [r12 + 320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx16_3
.Lx16_2:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
.Lx16_3:
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_FIB_γ
xchain0_n15_α:
# IR_ASSIGN gva
bb16_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp proc_FIB_γ
 xchain0_n15_β:
 jmp proc_FIB_γ
proc_FIB_β:
jmp proc_FIB_ω
proc_FIB_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_FIB_ω:
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
  .Lstartup_pname0: .string "FIB"
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
  lea rsi, [rip + proc_FIB_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "FIB"
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
main_α_body:
xchain18_n0_α:
# IR_LIT_STRING
bb17_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain18_n1_α
 xchain18_n0_β:
 jmp xchain18_n3_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "TRIM"
xchain18_n1_α:
# IR_LIT_INTEGER
bb18_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain18_n2_α
 xchain18_n1_β:
 jmp xchain18_n3_α
.Lx20_0:
 .quad 1
xchain18_n2_α:
bb19_α:
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
  .Lrkfn22: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain18_n3_α
 jmp xchain18_n3_α
 xchain18_n2_β:
 jmp xchain18_n3_α
xchain18_n3_α:
# IR_LIT_STRING
bb20_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain18_n4_α
 xchain18_n3_β:
 jmp xchain18_n6_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "STLIMIT"
xchain18_n4_α:
# IR_LIT_INTEGER
bb21_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain18_n5_α
 xchain18_n4_β:
 jmp xchain18_n6_α
.Lx24_0:
 .quad 1000000000
xchain18_n5_α:
bb22_α:
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
  .Lrkfn26: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain18_n6_α
 jmp xchain18_n6_α
 xchain18_n5_β:
 jmp xchain18_n6_α
xchain18_n6_α:
bb23_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn28: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain18_n8_α
 jmp xchain18_n7_α
 xchain18_n6_β:
 jmp xchain18_n8_α
xchain18_n7_α:
# IR_ASSIGN gva
bb24_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain18_n8_α
 xchain18_n7_β:
 jmp xchain18_n8_α
xchain18_n8_α:
# IR_LIT_INTEGER
bb25_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain18_n9_α
 xchain18_n8_β:
 jmp xchain18_n11_α
.Lx30_0:
 .quad 30
xchain18_n9_α:
bb26_α:
  .section .rodata
  .Lcall26_pname: .string "FIB"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall26_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain18_n11_α
 jmp xchain18_n10_α
xchain18_n9_β:
 jmp xchain18_n11_α
xchain18_n10_α:
# IR_ASSIGN gva
bb27_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain18_n11_α
 xchain18_n10_β:
 jmp xchain18_n11_α
xchain18_n11_α:
bb28_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn34: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 624]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain18_n13_α
 jmp xchain18_n12_α
 xchain18_n11_β:
 jmp xchain18_n13_α
xchain18_n12_α:
# IR_ASSIGN gva
bb29_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain18_n13_α
 xchain18_n12_β:
 jmp xchain18_n13_α
xchain18_n13_α:
# IR_LIT_STRING
bb30_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain18_n14_α
 xchain18_n13_β:
 jmp xchain18_n16_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "result: "
xchain18_n14_α:
# IR_VAR gva
bb31_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain18_n15_α
 xchain18_n14_β:
 jmp xchain18_n16_α
xchain18_n15_α:
bb32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 call str_concat_d@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain18_n17_α
 xchain18_n15_β:
 jmp xchain18_n16_α
xchain18_n16_α:
# IR_LIT_STRING
bb33_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain18_n18_α
 xchain18_n16_β:
 jmp main_γ
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "ms: "
xchain18_n17_α:
# IR_ASSIGN global
bb34_α:
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain18_n16_α
 xchain18_n17_β:
 jmp xchain18_n16_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "OUTPUT"
xchain18_n18_α:
# IR_VAR gva
bb35_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain18_n19_α
 xchain18_n18_β:
 jmp main_γ
xchain18_n19_α:
# IR_VAR gva
bb36_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain18_n20_α
 xchain18_n19_β:
 jmp main_γ
xchain18_n20_α:
bb37_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx43_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx43_2
.Lx43_1:
 mov rax, qword ptr [r12 + 760]
 mov rcx, qword ptr [r12 + 776]
 sub rax, rcx
 mov qword ptr [r12 + 736], 6
 mov qword ptr [r12 + 744], rax
 jmp xchain18_n21_α
.Lx43_0:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 1
 lea r9, [r12 + 736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx43_3
.Lx43_2:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
.Lx43_3:
 jmp xchain18_n21_α
 xchain18_n20_β:
 jmp main_γ
xchain18_n21_α:
bb38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call str_concat_d@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain18_n22_α
 xchain18_n21_β:
 jmp main_γ
xchain18_n22_α:
# IR_ASSIGN global
bb39_α:
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp main_γ
 xchain18_n22_β:
 jmp main_γ
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
