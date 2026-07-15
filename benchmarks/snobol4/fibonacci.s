  .intel_syntax noprefix
  .text
  .globl proc_FIB_α
proc_FIB_α:
#=======================================================================================================================
    .global proc_FIB_α
    .global proc_FIB_β
    .global proc_FIB_γ
    .global proc_FIB_ω
  sub rsp, 1456
  mov [rsp+8], rcx
  mov [rsp+16], rdx
  mov [rsp+24], r12
  lea r12, [rsp+32]
  mov rdi, r12
  mov ecx, 1424
  xor eax, eax
  rep stosb
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1416], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1408], rax
 pop rsi
proc_FIB_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 2
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_FIB_γ
# IR_COERCE_NUMERIC
 xchain0_n3_α:
 mov eax, dword ptr [r12 + 528]
 cmp eax, 7
 je .Lx5_1
 cmp eax, 6
 jne .Lx5_0
 mov eax, dword ptr [r12 + 496]
 cmp eax, 6
 jne .Lx5_0
.Lx5_1:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 472], rax
 jmp .Lx5_2
.Lx5_0:
 lea rdi, [r12 + 528]
 lea rsi, [r12 + 496]
 lea rdx, [r12 + 464]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx5_2:
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_FIB_γ
.Lx6_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n5_α:
 mov eax, dword ptr [r12 + 496]
 cmp eax, 7
 je .Lx8_1
 cmp eax, 6
 jne .Lx8_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx8_0
.Lx8_1:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
 jmp .Lx8_2
.Lx8_0:
 lea rdi, [r12 + 496]
 lea rsi, [r12 + 528]
 lea rdx, [r12 + 432]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx8_2:
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
 xchain0_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 720]
 cmp eax, 100
 je .Lx9_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx9_2
.Lx9_1:
 mov rax, qword ptr [r12 + 728]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 688], 6
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n8_α
.Lx9_0:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 1
 lea r9, [r12 + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx9_3
.Lx9_2:
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
.Lx9_3:
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_FIB_γ
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [r12 + 464]
 lea rsi, [r12 + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n2_α
 mov qword ptr [r12 + 400], 0
 mov qword ptr [r12 + 408], 0
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx13_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx13_1
 call rt_proc_open_fn@PLT
 push r12
 sub rsp, 8
 lea rcx, [rip + .Lx13_3]
 lea rdx, [rip + .Lx13_4]
 mov r12, rsp
 jmp rax
.Lx13_3:
 mov rax, rsp
 mov rax, qword ptr [rax + 8]
 mov rdi, qword ptr [rax + 0]
 mov rsi, qword ptr [rax + 8]
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx13_2
.Lx13_4:
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx13_2
.Lx13_1:
 call rt_faildescr@PLT
.Lx13_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_FIB_γ
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "FIB"
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_FIB_γ
 xchain0_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 896], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_FIB_γ
.Lx17_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp proc_FIB_γ
 xchain0_n13_β:
 jmp xchain0_n2_α
 xchain0_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 864]
 cmp eax, 100
 je .Lx19_0
 mov eax, dword ptr [r12 + 864]
 cmp eax, 6
 jne .Lx19_2
.Lx19_1:
 mov rax, qword ptr [r12 + 872]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [r12 + 832], 6
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n15_α
.Lx19_0:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 1
 lea r9, [r12 + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx19_3
.Lx19_2:
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
.Lx19_3:
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_FIB_γ
 xchain0_n15_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx21_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx21_1
 call rt_proc_open_fn@PLT
 push r12
 sub rsp, 8
 lea rcx, [rip + .Lx21_3]
 lea rdx, [rip + .Lx21_4]
 mov r12, rsp
 jmp rax
.Lx21_3:
 mov rax, rsp
 mov rax, qword ptr [rax + 8]
 mov rdi, qword ptr [rax + 0]
 mov rsi, qword ptr [rax + 8]
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx21_2
.Lx21_4:
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx21_2
.Lx21_1:
 call rt_faildescr@PLT
.Lx21_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_FIB_γ
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "FIB"
 xchain0_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx22_2
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx22_2
.Lx22_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 792]
 add rax, rcx
 mov qword ptr [r12 + 608], 6
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n17_α
.Lx22_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 0
 lea r9, [r12 + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx22_3
.Lx22_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
.Lx22_3:
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_FIB_γ
# IR_ASSIGN gva
 xchain0_n17_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp proc_FIB_γ
 xchain0_n17_β:
 jmp proc_FIB_γ
proc_FIB_res:
add rsp, 8
pop r12
proc_FIB_β:
jmp proc_FIB_ω
proc_FIB_γ:
push r12
lea rax, [rip + proc_FIB_res]
push rax
mov rax, [r12-24]
mov r12, [r12-8]
jmp rax
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1408]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_FIB_ω:
mov rax, [r12-16]
lea rsp, [r12 + 1424]
mov r12, [r12-8]
jmp rax
proc_startup:
  sub rsp, 8
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1424
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
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
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 5
  call gva_register@PLT
  mov rbx, rax
  sub rsp, 65536
  mov rdi, rsp
  mov ecx, 8192
  xor eax, eax
  rep stosq
  mov rdi, rsp
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 65536
  add rsp, 24
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
  mov qword ptr [r12 + 1416], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1408], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain24_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain24_n1_α
 xchain24_n0_β:
 jmp xchain24_n3_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain24_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain24_n2_α
 xchain24_n1_β:
 jmp xchain24_n3_α
.Lx26_0:
 .quad 1
 xchain24_n2_α:
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
  .Lrkfn28: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain24_n3_α
 jmp xchain24_n3_α
 xchain24_n2_β:
 jmp xchain24_n3_α
# IR_LIT_STRING
 xchain24_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain24_n4_α
 xchain24_n3_β:
 jmp xchain24_n6_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain24_n4_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain24_n5_α
 xchain24_n4_β:
 jmp xchain24_n6_α
.Lx30_0:
 .quad 1000000000
 xchain24_n5_α:
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
  .Lrkfn32: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain24_n6_α
 jmp xchain24_n6_α
 xchain24_n5_β:
 jmp xchain24_n6_α
 xchain24_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn34: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 960]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain24_n8_α
 jmp xchain24_n7_α
 xchain24_n6_β:
 jmp xchain24_n8_α
# IR_ASSIGN gva
 xchain24_n7_α:
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain24_n8_α
 xchain24_n7_β:
 jmp xchain24_n8_α
# IR_LIT_INTEGER
 xchain24_n8_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain24_n9_α
 xchain24_n8_β:
 jmp xchain24_n11_α
.Lx36_0:
 .quad 30
 xchain24_n9_α:
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 push r12
 sub rsp, 8
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 mov r12, rsp
 jmp rax
.Lx38_3:
 mov rax, rsp
 mov rax, qword ptr [rax + 8]
 mov rdi, qword ptr [rax + 0]
 mov rsi, qword ptr [rax + 8]
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 mov rsp, r12
 add rsp, 8
 pop r12
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain24_n11_α
 jmp xchain24_n10_α
 xchain24_n9_β:
 jmp xchain24_n11_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "FIB"
# IR_ASSIGN gva
 xchain24_n10_α:
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain24_n11_α
 xchain24_n10_β:
 jmp xchain24_n11_α
 xchain24_n11_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn41: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 1104]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain24_n13_α
 jmp xchain24_n12_α
 xchain24_n11_β:
 jmp xchain24_n13_α
# IR_ASSIGN gva
 xchain24_n12_α:
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain24_n13_α
 xchain24_n12_β:
 jmp xchain24_n13_α
# IR_LIT_STRING
 xchain24_n13_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain24_n14_α
 xchain24_n13_β:
 jmp xchain24_n16_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "result: "
# IR_VAR
 xchain24_n14_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain24_n15_α
 xchain24_n14_β:
 jmp xchain24_n16_α
 xchain24_n15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 mov rdx, qword ptr [r12 + 1200]
 mov rcx, qword ptr [r12 + 1208]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain24_n17_α
 xchain24_n15_β:
 jmp xchain24_n16_α
# IR_LIT_STRING
 xchain24_n16_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain24_n18_α
 xchain24_n16_β:
 jmp main_γ
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "ms: "
# IR_ASSIGN global
 xchain24_n17_α:
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain24_n16_α
 xchain24_n17_β:
 jmp xchain24_n16_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain24_n18_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain24_n19_α
 xchain24_n18_β:
 jmp main_γ
# IR_VAR
 xchain24_n19_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain24_n20_α
 xchain24_n19_β:
 jmp main_γ
 xchain24_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 1344]
 cmp eax, 6
 jne .Lx50_2
 mov eax, dword ptr [r12 + 1376]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [r12 + 1352]
 mov rcx, qword ptr [r12 + 1384]
 sub rax, rcx
 mov qword ptr [r12 + 1312], 6
 mov qword ptr [r12 + 1320], rax
 jmp xchain24_n21_α
.Lx50_0:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 lea r9, [r12 + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx50_3
.Lx50_2:
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
.Lx50_3:
 jmp xchain24_n21_α
 xchain24_n20_β:
 jmp main_γ
 xchain24_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1280]
 mov rsi, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1312]
 mov rcx, qword ptr [r12 + 1320]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain24_n22_α
 xchain24_n21_β:
 jmp main_γ
# IR_ASSIGN global
 xchain24_n22_α:
 mov rsi, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp main_γ
 xchain24_n22_β:
 jmp main_γ
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1416]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1408]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1416]
pop r12
ret
