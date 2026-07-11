  .intel_syntax noprefix
  .text
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
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
 mov qword ptr [r12 + 48], rax
 pop rsi
proc_PAT$0_α_body:
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n1_α
 xchain0_n0_β:
 lea rdi, [r12 + 16]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_ω
# IR_MATCH_BREAK
 xchain0_n1_α:
 mov dword ptr [r12 + 32], 0
.Lx4_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jge xchain0_n0_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S0]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx4_1
 add dword ptr [r12 + 32], 1
 jmp .Lx4_0
.Lx4_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain0_n2_α
 xchain0_n1_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 32]
 mov r14d, eax
 jmp xchain0_n0_β
# IR_MATCH_CAPTURE_COND
 xchain0_n2_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 16]
 call rt_cap_top@PLT
 lea rdi, [rip + .S1]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_assign_cursor@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n0_β
# IR_MATCH_LIT
 xchain0_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n2_β
 add r14d, 1
 jmp proc_PAT$0_γ
 xchain0_n3_β:
 sub r14d, 1
 jmp xchain0_n2_β
proc_PAT$0_β:
jmp proc_PAT$0_ω
proc_PAT$0_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 48]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_PAT$0_ω:
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
  .Lstartup_pname0: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 64
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "PAT"
  .Lgvan1: .string "T1"
  .Lgvan2: .string "ITER"
  .Lgvan3: .string "S"
  .Lgvan4: .string "RESULT"
  .Lgvan5: .string "WORD"
  .Lgvan6: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .section .bss
  .align 16
__gva: .space 112, 0
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
  mov edx, 7
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
 mov qword ptr [r12 + 912], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain9_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain9_n1_α
 xchain9_n0_β:
 jmp xchain9_n3_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain9_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain9_n2_α
 xchain9_n1_β:
 jmp xchain9_n3_α
.Lx11_0:
 .quad 1
 xchain9_n2_α:
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
  .Lrkfn13: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain9_n3_α
 jmp xchain9_n3_α
 xchain9_n2_β:
 jmp xchain9_n3_α
# IR_LIT_STRING
 xchain9_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain9_n4_α
 xchain9_n3_β:
 jmp xchain9_n6_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain9_n4_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain9_n5_α
 xchain9_n4_β:
 jmp xchain9_n6_α
.Lx15_0:
 .quad 1000000000
 xchain9_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn17: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain9_n6_α
 jmp xchain9_n6_α
 xchain9_n5_β:
 jmp xchain9_n6_α
# IR_LIT_STRING
 xchain9_n6_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain9_n7_α
 xchain9_n6_β:
 jmp xchain9_n9_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "PAT$0"
 xchain9_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn20: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain9_n9_α
 jmp xchain9_n8_α
 xchain9_n7_β:
 jmp xchain9_n9_α
# IR_ASSIGN gva
 xchain9_n8_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain9_n9_α
 xchain9_n8_β:
 jmp xchain9_n9_α
 xchain9_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn23: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain9_n11_α
 jmp xchain9_n10_α
 xchain9_n9_β:
 jmp xchain9_n11_α
# IR_ASSIGN gva
 xchain9_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain9_n11_α
 xchain9_n10_β:
 jmp xchain9_n11_α
# IR_LIT_INTEGER
 xchain9_n11_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain9_n12_α
 xchain9_n11_β:
 jmp xchain9_n13_α
.Lx25_0:
 .quad 0
# IR_ASSIGN gva
 xchain9_n12_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain9_n13_α
 xchain9_n12_β:
 jmp xchain9_n13_α
# IR_VAR
 xchain9_n13_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain9_n14_α
 xchain9_n13_β:
 jmp xchain9_n15_α
# IR_LIT_INTEGER
 xchain9_n14_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain9_n16_α
 xchain9_n14_β:
 jmp xchain9_n15_α
.Lx28_0:
 .quad 500000
 xchain9_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 752]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain9_n18_α
 jmp xchain9_n17_α
 xchain9_n15_β:
 jmp xchain9_n18_α
# IR_COERCE_NUMERIC
 xchain9_n16_α:
 lea rdi, [r12 + 448]
 lea rsi, [r12 + 432]
 lea rdx, [r12 + 416]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain9_n19_α
 xchain9_n16_β:
 jmp xchain9_n15_α
# IR_ASSIGN gva
 xchain9_n17_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain9_n18_α
 xchain9_n17_β:
 jmp xchain9_n18_α
# IR_LIT_STRING
 xchain9_n18_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain9_n20_α
 xchain9_n18_β:
 jmp xchain9_n23_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain9_n19_α:
 lea rdi, [r12 + 432]
 lea rsi, [r12 + 448]
 lea rdx, [r12 + 400]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain9_n21_α
 xchain9_n19_β:
 jmp xchain9_n15_α
# IR_VAR
 xchain9_n20_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain9_n22_α
 xchain9_n20_β:
 jmp xchain9_n23_α
# IR_CMP_TEST
 xchain9_n21_α:
 lea rdi, [r12 + 416]
 lea rsi, [r12 + 400]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain9_n15_α
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain9_n24_α
 xchain9_n21_β:
 jmp xchain9_n15_α
 xchain9_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 call str_concat_d@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain9_n25_α
 xchain9_n22_β:
 jmp xchain9_n23_α
# IR_LIT_STRING
 xchain9_n23_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain9_n26_α
 xchain9_n23_β:
 jmp main_γ
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "ms: "
# IR_VAR
 xchain9_n24_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain9_n27_α
 xchain9_n24_β:
 jmp xchain9_n15_α
# IR_ASSIGN global
 xchain9_n25_α:
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov rdi, qword ptr [rip + .Lx43_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain9_n23_α
 xchain9_n25_β:
 jmp xchain9_n23_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain9_n26_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain9_n28_α
 xchain9_n26_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain9_n27_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain9_n29_α
 xchain9_n27_β:
 jmp xchain9_n15_α
.Lx45_0:
 .quad 1
# IR_VAR
 xchain9_n28_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain9_n30_α
 xchain9_n28_β:
 jmp main_γ
 xchain9_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 480]
 cmp eax, 100
 je .Lx47_0
 mov eax, dword ptr [r12 + 480]
 cmp eax, 6
 jne .Lx47_2
.Lx47_1:
 mov rax, qword ptr [r12 + 488]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain9_n31_α
.Lx47_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 0
 lea r9, [r12 + 464]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx47_3
.Lx47_2:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain9_n15_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
.Lx47_3:
 jmp xchain9_n31_α
 xchain9_n29_β:
 jmp xchain9_n15_α
 xchain9_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 880]
 cmp eax, 100
 je .Lx48_0
 mov eax, dword ptr [r12 + 896]
 cmp eax, 100
 je .Lx48_0
 mov eax, dword ptr [r12 + 880]
 cmp eax, 6
 jne .Lx48_2
 mov eax, dword ptr [r12 + 896]
 cmp eax, 6
 jne .Lx48_2
.Lx48_1:
 mov rax, qword ptr [r12 + 888]
 mov rcx, qword ptr [r12 + 904]
 sub rax, rcx
 mov qword ptr [r12 + 864], 6
 mov qword ptr [r12 + 872], rax
 jmp xchain9_n32_α
.Lx48_0:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 1
 lea r9, [r12 + 864]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx48_3
.Lx48_2:
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
.Lx48_3:
 jmp xchain9_n32_α
 xchain9_n30_β:
 jmp main_γ
 xchain9_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain9_n33_α
 xchain9_n31_β:
 jmp xchain9_n15_α
 xchain9_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 848]
 mov rsi, qword ptr [r12 + 856]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call str_concat_d@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain9_n34_α
 xchain9_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain9_n33_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain9_n35_α
 xchain9_n33_β:
 jmp xchain9_n15_α
# IR_ASSIGN global
 xchain9_n34_α:
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp main_γ
 xchain9_n34_β:
 jmp main_γ
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain9_n35_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain9_n36_α
 xchain9_n35_β:
 jmp xchain9_n37_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
# IR_ASSIGN gva
 xchain9_n36_α:
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain9_n37_α
 xchain9_n36_β:
 jmp xchain9_n37_α
# IR_LIT_STRING
 xchain9_n37_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain9_n38_α
 xchain9_n37_β:
 jmp xchain9_n39_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string ""
# IR_ASSIGN gva
 xchain9_n38_α:
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain9_n39_α
 xchain9_n38_β:
 jmp xchain9_n39_α
# IR_VAR
 xchain9_n39_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain9_n40_α
 xchain9_n39_β:
 jmp xchain9_n13_α
# IR_MATCH_HEAD
 xchain9_n40_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rsp
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 576], 0
.Lx59_0:
 mov r14d, dword ptr [r12 + 576]
 jmp xchain9_n41_α
 xchain9_n40_β:
 add dword ptr [r12 + 576], 1
 mov eax, dword ptr [r12 + 576]
 cmp eax, r15d
 jg .Lx59_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx59_1
 jmp .Lx59_0
.Lx59_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 584]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 592]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain9_n13_α
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain9_n41_α:
 lea rax, [rip + proc_PAT$0_α]
 test rax, rax
 jz .Lx60_0
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
 je .Lx60_1
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain9_n40_β
.Lx60_1:
 jmp xchain9_n42_α
.Lx60_0:
 lea rdi, [rip + .S2]
 xor esi, esi
 mov edx, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbp
 pop rbp
 test eax, eax
 js xchain9_n40_β
 mov r14d, eax
 jmp xchain9_n42_α
 xchain9_n41_β:
 jmp xchain9_n40_β
# IR_MATCH_RELEASE
 xchain9_n42_α:
 mov qword ptr [r12 + 600], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 584]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 592]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain9_n43_α
# IR_LIT_STRING
 xchain9_n43_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain9_n44_α
 xchain9_n43_β:
 jmp xchain9_n13_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string ""
# IR_MATCH_REPLACE
 xchain9_n44_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx65_0]
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov ecx, dword ptr [r12 + 576]
 mov r8, qword ptr [r12 + 600]
 lea r9, [r12 + 608]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx65_1
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "S"
.Lx65_1:
 jmp xchain9_n45_α
# IR_VAR
 xchain9_n45_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain9_n46_α
 xchain9_n45_β:
 jmp xchain9_n39_α
# IR_VAR
 xchain9_n46_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain9_n47_α
 xchain9_n46_β:
 jmp xchain9_n39_α
 xchain9_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain9_n48_α
 xchain9_n47_β:
 jmp xchain9_n39_α
# IR_ASSIGN gva
 xchain9_n48_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain9_n39_α
 xchain9_n48_β:
 jmp xchain9_n39_α
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
 mov rdi, qword ptr [r12 + 912]
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
.section .rodata
.S0: .string ","
.S1: .string "WORD"
.S2: .string "PAT"
.text
