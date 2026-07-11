  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "EXPR"
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
 mov qword ptr [r12 + 768], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
 xchain0_n2_α:
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
  .Lrkfn4: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad 1000000000
 xchain0_n5_α:
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
  .Lrkfn8: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
 xchain0_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn10: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 256]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
# IR_ASSIGN gva
 xchain0_n7_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx12_0:
 .quad 0
# IR_ASSIGN gva
 xchain0_n9_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n12_α
.Lx15_0:
 .quad 1000000
 xchain0_n12_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn17: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 608]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
# IR_COERCE_NUMERIC
 xchain0_n13_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 7
 je .Lx19_1
 cmp eax, 6
 jne .Lx19_0
 mov eax, dword ptr [r12 + 368]
 cmp eax, 6
 jne .Lx19_0
.Lx19_1:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
 jmp .Lx19_2
.Lx19_0:
 lea rdi, [r12 + 384]
 lea rsi, [r12 + 368]
 lea rdx, [r12 + 352]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx19_2:
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n12_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n20_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain0_n16_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 7
 je .Lx23_1
 cmp eax, 6
 jne .Lx23_0
 mov eax, dword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx23_0
.Lx23_1:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
 jmp .Lx23_2
.Lx23_0:
 lea rdi, [r12 + 368]
 lea rsi, [r12 + 384]
 lea rdx, [r12 + 336]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx23_2:
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_CMP_TEST
 xchain0_n18_α:
 lea rdi, [r12 + 352]
 lea rsi, [r12 + 336]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n12_α
 mov qword ptr [r12 + 320], 0
 mov qword ptr [r12 + 328], 0
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n12_α
 xchain0_n19_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call str_concat_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n20_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp main_γ
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n22_α:
 mov rsi, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov rdi, qword ptr [rip + .Lx30_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n20_α
 xchain0_n22_β:
 jmp xchain0_n20_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n12_α
.Lx32_0:
 .quad 1
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp main_γ
 xchain0_n26_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx34_2
.Lx34_1:
 mov rax, qword ptr [r12 + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 400], 6
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n28_α
.Lx34_0:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov r8d, 0
 lea r9, [r12 + 400]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx34_3
.Lx34_2:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
.Lx34_3:
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n12_α
 xchain0_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 760]
 sub rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n29_α
.Lx35_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 1
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx35_3
.Lx35_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx35_3:
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
 xchain0_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n12_α
 xchain0_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 call str_concat_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n31_α:
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov rdi, qword ptr [rip + .Lx39_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp main_γ
 xchain0_n31_β:
 jmp main_γ
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain0_n32_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n35_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "N + "
# IR_VAR
 xchain0_n33_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n35_α
 xchain0_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call str_concat_d@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n35_α
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n10_α
# IR_ASSIGN gva
 xchain0_n36_α:
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n35_α
 xchain0_n36_β:
 jmp xchain0_n35_α
 xchain0_n37_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+544]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn46: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n10_α
# IR_ASSIGN gva
 xchain0_n38_α:
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n10_α
 xchain0_n38_β:
 jmp xchain0_n10_α
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
 mov rdi, qword ptr [r12 + 768]
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
