  .intel_syntax noprefix
  .text
  .globl proc_RSUM_α
proc_RSUM_α:
#=======================================================================================================================
    .global proc_RSUM_α
    .global proc_RSUM_β
    .global proc_RSUM_γ
    .global proc_RSUM_ω
  sub rsp, 3104
  mov [rsp + 3080], rcx
  mov [rsp + 3088], rdx
  mov rdi, rsp
  mov ecx, 3072
  xor eax, eax
  rep stosb
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [rsp + 3064], rsp
proc_RSUM_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 528], rax
 mov qword ptr [rsp + 536], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rsp + 496], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rsp + 504], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 0
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 640], rax
 mov qword ptr [rsp + 648], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_RSUM_γ
# IR_COERCE_NUMERIC
 xchain0_n3_α:
 mov eax, dword ptr [rsp + 528]
 cmp eax, 7
 je .Lx5_1
 cmp eax, 6
 jne .Lx5_0
 mov eax, dword ptr [rsp + 496]
 cmp eax, 6
 jne .Lx5_0
.Lx5_1:
 mov rax, qword ptr [rsp + 528]
 mov qword ptr [rsp + 464], rax
 mov rax, qword ptr [rsp + 536]
 mov qword ptr [rsp + 472], rax
 jmp .Lx5_2
.Lx5_0:
 lea rdi, [rsp + 528]
 lea rsi, [rsp + 496]
 lea rdx, [rsp + 464]
 mov rcx, 101
 call rt_coerce_num2_d@PLT
.Lx5_2:
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 752], rax
 mov qword ptr [rsp + 760], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_RSUM_γ
# IR_COERCE_NUMERIC
 xchain0_n5_α:
 mov eax, dword ptr [rsp + 496]
 cmp eax, 7
 je .Lx8_1
 cmp eax, 6
 jne .Lx8_0
 mov eax, dword ptr [rsp + 528]
 cmp eax, 6
 jne .Lx8_0
.Lx8_1:
 mov rax, qword ptr [rsp + 496]
 mov qword ptr [rsp + 432], rax
 mov rax, qword ptr [rsp + 504]
 mov qword ptr [rsp + 440], rax
 jmp .Lx8_2
.Lx8_0:
 lea rdi, [rsp + 496]
 lea rsi, [rsp + 528]
 lea rdx, [rsp + 432]
 mov rcx, 102
 call rt_coerce_num2_d@PLT
.Lx8_2:
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rsp + 784], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rsp + 792], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_RSUM_γ
.Lx9_0:
 .quad 1
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [rsp + 464]
 lea rsi, [rsp + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jne xchain0_n2_α
 mov qword ptr [rsp + 400], 0
 mov qword ptr [rsp + 408], 0
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 752]
 cmp eax, 100
 je .Lx12_0
 mov eax, dword ptr [rsp + 752]
 cmp eax, 6
 jne .Lx12_2
.Lx12_1:
 mov rax, qword ptr [rsp + 760]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rsp + 720], 6
 mov qword ptr [rsp + 728], rax
 jmp xchain0_n10_α
.Lx12_0:
 mov rdi, qword ptr [rsp + 752]
 mov rsi, qword ptr [rsp + 760]
 mov rdx, qword ptr [rsp + 784]
 mov rcx, qword ptr [rsp + 792]
 mov r8d, 1
 lea r9, [rsp + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx12_3
.Lx12_2:
 mov rdi, qword ptr [rsp + 752]
 mov rsi, qword ptr [rsp + 760]
 mov rdx, qword ptr [rsp + 784]
 mov rcx, qword ptr [rsp + 792]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [rsp + 720], rax
 mov qword ptr [rsp + 728], rdx
.Lx12_3:
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_RSUM_γ
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rsp + 560], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rsp + 568], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx13_0:
 .quad 0
 xchain0_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rsp + 720]
 mov rdx, qword ptr [rsp + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx15_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx15_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx15_3]
 lea rdx, [rip + .Lx15_4]
 jmp rax
.Lx15_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx15_2
.Lx15_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx15_2
.Lx15_1:
 call rt_faildescr@PLT
.Lx15_2:
 mov qword ptr [rsp + 672], rax
 mov qword ptr [rsp + 680], rdx
 cmp eax, 99
 je proc_RSUM_γ
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_RSUM_γ
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "RSUM"
 xchain0_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 400]
 mov rsi, qword ptr [rsp + 408]
 mov rdx, qword ptr [rsp + 560]
 mov rcx, qword ptr [rsp + 568]
 call str_concat_d@PLT
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n2_α
 xchain0_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 640]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [rsp + 672]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [rsp + 640]
 cmp eax, 6
 jne .Lx17_2
 mov eax, dword ptr [rsp + 672]
 cmp eax, 6
 jne .Lx17_2
.Lx17_1:
 mov rax, qword ptr [rsp + 648]
 mov rcx, qword ptr [rsp + 680]
 add rax, rcx
 mov qword ptr [rsp + 608], 6
 mov qword ptr [rsp + 616], rax
 jmp xchain0_n14_α
.Lx17_0:
 mov rdi, qword ptr [rsp + 640]
 mov rsi, qword ptr [rsp + 648]
 mov rdx, qword ptr [rsp + 672]
 mov rcx, qword ptr [rsp + 680]
 mov r8d, 0
 lea r9, [rsp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx17_3
.Lx17_2:
 mov rdi, qword ptr [rsp + 640]
 mov rsi, qword ptr [rsp + 648]
 mov rdx, qword ptr [rsp + 672]
 mov rcx, qword ptr [rsp + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [rsp + 608], rax
 mov qword ptr [rsp + 616], rdx
.Lx17_3:
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [rsp + 368]
 mov rdx, qword ptr [rsp + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rdx
 jmp proc_RSUM_γ
 xchain0_n13_β:
 jmp xchain0_n2_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [rsp + 608]
 mov rdx, qword ptr [rsp + 616]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [rsp + 592], rax
 mov qword ptr [rsp + 600], rdx
 jmp proc_RSUM_γ
 xchain0_n14_β:
 jmp proc_RSUM_γ
proc_RSUM_res:
add rsp, 8
pop rsp
proc_RSUM_β:
jmp proc_RSUM_ω
proc_RSUM_γ:
mov rdi, [rsp]
mov rsi, [rsp + 8]
mov rax, [rsp + 3080]
lea rsp, [rsp + 3104]
jmp rax
proc_RSUM_ω:
mov rax, [rsp + 3088]
lea rsp, [rsp + 3104]
jmp rax
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 208
  mov [rsp+8], rcx
  mov [rsp+16], rdx
  mov [rsp+24], r12
  lea r12, [rsp+32]
  mov rdi, r12
  mov ecx, 176
  xor eax, eax
  rep stosb
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 168], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_PAT$0_α_body:
lea rax, [rip + xchain20_n0_β]
mov qword ptr [r12 + 144], rax
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain20_n0_α:
 jmp xchain20_n1_α
xchain20_n0_as:
 jmp proc_PAT$0_γ
 xchain20_n0_β:
 jmp xchain20_n3_β
xchain20_n0_af:
 jmp proc_PAT$0_ω
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain20_n1_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain20_n4_α
 xchain20_n1_β:
 add rsp, 16
 jmp xchain20_n0_af
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain20_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [rbp + 0], rcx
 mov esi, eax
 mov qword ptr [rbp + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [rbp + 16], rdx
 add rbp, 24
 jmp xchain20_n3_α
 xchain20_n2_β:
 sub rbp, 24
 jmp xchain20_n4_β
# IR_MATCH_LIT
 xchain20_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain20_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov edx, 1
 call memcmp@PLT
 test eax, eax
 jne xchain20_n2_β
 add r14d, 1
 jmp xchain20_n0_as
 xchain20_n3_β:
 sub r14d, 1
 jmp xchain20_n2_β
# IR_MATCH_BREAK
 xchain20_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx30_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx30_240
 add rsp, 16
 jmp xchain20_n1_β
.Lx30_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx30_1
 add dword ptr [rsp + 0], 1
 jmp .Lx30_0
.Lx30_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain20_n2_α
 xchain20_n4_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain20_n1_β
proc_PAT$0_res:
add rsp, 8
pop r12
proc_PAT$0_β:
jmp qword ptr [r12 + 144]
proc_PAT$0_γ:
push r12
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [r12-24]
mov r12, [r12-8]
jmp rax
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 160]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_PAT$0_ω:
mov rax, [r12-16]
lea rsp, [r12 + 176]
mov r12, [r12-8]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "RSUM"
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
  lea rsi, [rip + proc_RSUM_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3072
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "RSUM"
  .Lgvan1: .string "N"
  .Lgvan2: .string "PAT"
  .Lgvan3: .string "T1"
  .Lgvan4: .string "OUTER"
  .Lgvan5: .string "T"
  .Lgvan6: .string "DATA"
  .Lgvan7: .string "IDX"
  .Lgvan8: .string "WORD"
  .Lgvan9: .string "TOTAL"
  .Lgvan10: .string "I"
  .Lgvan11: .string "CHECK"
  .Lgvan12: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .section .bss
  .align 16
__gva: .space 208, 0
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
  mov edx, 13
  call gva_register@PLT
  mov rbx, rax
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [rsp + 3064], rsp
main_α_body:
# IR_LIT_STRING
 xchain31_n0_α:
 mov qword ptr [rsp + 160], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rsp + 168], rax
 jmp xchain31_n1_α
 xchain31_n0_β:
 jmp xchain31_n3_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain31_n1_α:
 mov qword ptr [rsp + 192], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rsp + 200], rax
 jmp xchain31_n2_α
 xchain31_n1_β:
 jmp xchain31_n3_α
.Lx33_0:
 .quad 1
 xchain31_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rsp + 160]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [rsp + 168]
 mov qword ptr [rsp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rsp + 192]
 mov qword ptr [rsp + 128], rax
 mov rax, qword ptr [rsp + 200]
 mov qword ptr [rsp + 136], rax
  .section .rodata
  .Lrkfn35: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [rsp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rdx
 cmp eax, 99
 je xchain31_n3_α
 jmp xchain31_n3_α
 xchain31_n2_β:
 jmp xchain31_n3_α
# IR_LIT_STRING
 xchain31_n3_α:
 mov qword ptr [rsp + 288], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rsp + 296], rax
 jmp xchain31_n4_α
 xchain31_n3_β:
 jmp xchain31_n6_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain31_n4_α:
 mov qword ptr [rsp + 320], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rsp + 328], rax
 jmp xchain31_n5_α
 xchain31_n4_β:
 jmp xchain31_n6_α
.Lx37_0:
 .quad 1000000000
 xchain31_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rsp + 288]
 mov qword ptr [rsp + 240], rax
 mov rax, qword ptr [rsp + 296]
 mov qword ptr [rsp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rsp + 320]
 mov qword ptr [rsp + 256], rax
 mov rax, qword ptr [rsp + 328]
 mov qword ptr [rsp + 264], rax
  .section .rodata
  .Lrkfn39: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [rsp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rdx
 cmp eax, 99
 je xchain31_n6_α
 jmp xchain31_n6_α
 xchain31_n5_β:
 jmp xchain31_n6_α
# IR_LIT_STRING
 xchain31_n6_α:
 mov qword ptr [rsp + 880], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rsp + 888], rax
 jmp xchain31_n7_α
 xchain31_n6_β:
 jmp xchain31_n9_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "PAT$0"
 xchain31_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rsp + 880]
 mov qword ptr [rsp + 848], rax
 mov rax, qword ptr [rsp + 888]
 mov qword ptr [rsp + 856], rax
  .section .rodata
  .Lrkfn42: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [rsp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 832], rax
 mov qword ptr [rsp + 840], rdx
 cmp eax, 99
 je xchain31_n9_α
 jmp xchain31_n8_α
 xchain31_n7_β:
 jmp xchain31_n9_α
# IR_ASSIGN gva
 xchain31_n8_α:
 mov rax, qword ptr [rsp + 832]
 mov rdx, qword ptr [rsp + 840]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
 jmp xchain31_n9_α
 xchain31_n8_β:
 jmp xchain31_n9_α
 xchain31_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn45: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [rsp + 944]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 928], rax
 mov qword ptr [rsp + 936], rdx
 cmp eax, 99
 je xchain31_n11_α
 jmp xchain31_n10_α
 xchain31_n9_β:
 jmp xchain31_n11_α
# IR_ASSIGN gva
 xchain31_n10_α:
 mov rax, qword ptr [rsp + 928]
 mov rdx, qword ptr [rsp + 936]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [rsp + 912], rax
 mov qword ptr [rsp + 920], rdx
 jmp xchain31_n11_α
 xchain31_n10_β:
 jmp xchain31_n11_α
# IR_LIT_INTEGER
 xchain31_n11_α:
 mov qword ptr [rsp + 976], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rsp + 984], rax
 jmp xchain31_n12_α
 xchain31_n11_β:
 jmp xchain31_n13_α
.Lx47_0:
 .quad 0
# IR_ASSIGN gva
 xchain31_n12_α:
 mov rax, qword ptr [rsp + 976]
 mov rdx, qword ptr [rsp + 984]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 960], rax
 mov qword ptr [rsp + 968], rdx
 jmp xchain31_n13_α
 xchain31_n12_β:
 jmp xchain31_n13_α
# IR_LIT_INTEGER
 xchain31_n13_α:
 mov qword ptr [rsp + 1072], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rsp + 1080], rax
 jmp xchain31_n14_α
 xchain31_n13_β:
 jmp xchain31_n16_α
.Lx49_0:
 .quad 16
 xchain31_n14_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rsp + 1072]
 mov qword ptr [rsp + 1040], rax
 mov rax, qword ptr [rsp + 1080]
 mov qword ptr [rsp + 1048], rax
  .section .rodata
  .Lrkfn51: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [rsp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1024], rax
 mov qword ptr [rsp + 1032], rdx
 cmp eax, 99
 je xchain31_n16_α
 jmp xchain31_n15_α
 xchain31_n14_β:
 jmp xchain31_n16_α
# IR_ASSIGN gva
 xchain31_n15_α:
 mov rax, qword ptr [rsp + 1024]
 mov rdx, qword ptr [rsp + 1032]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [rsp + 1008], rax
 mov qword ptr [rsp + 1016], rdx
 jmp xchain31_n16_α
 xchain31_n15_β:
 jmp xchain31_n16_α
# IR_LIT_STRING
 xchain31_n16_α:
 mov qword ptr [rsp + 1120], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rsp + 1128], rax
 jmp xchain31_n17_α
 xchain31_n16_β:
 jmp xchain31_n18_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "10,20,30,40,50,60,70,80,90,100,"
# IR_ASSIGN gva
 xchain31_n17_α:
 mov rax, qword ptr [rsp + 1120]
 mov rdx, qword ptr [rsp + 1128]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [rsp + 1104], rax
 mov qword ptr [rsp + 1112], rdx
 jmp xchain31_n18_α
 xchain31_n17_β:
 jmp xchain31_n18_α
# IR_LIT_INTEGER
 xchain31_n18_α:
 mov qword ptr [rsp + 1168], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rsp + 1176], rax
 jmp xchain31_n19_α
 xchain31_n18_β:
 jmp xchain31_n20_α
.Lx55_0:
 .quad 0
# IR_ASSIGN gva
 xchain31_n19_α:
 mov rax, qword ptr [rsp + 1168]
 mov rdx, qword ptr [rsp + 1176]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
 jmp xchain31_n20_α
 xchain31_n19_β:
 jmp xchain31_n20_α
# IR_VAR
 xchain31_n20_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [rsp + 1376], rax
 mov qword ptr [rsp + 1384], rdx
 jmp xchain31_n21_α
 xchain31_n20_β:
 jmp xchain31_n22_α
# IR_MATCH_HEAD
 xchain31_n21_α:
 mov rdi, qword ptr [rsp + 1376]
 mov rsi, qword ptr [rsp + 1384]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rsp + 1256], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [rsp + 1248], rbp
 mov qword ptr [rsp + 1232], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rsp + 1224], rax
 mov dword ptr [rsp + 1216], 0
.Lx59_0:
 mov r14d, dword ptr [rsp + 1216]
 jmp xchain31_n23_α
 xchain31_n21_β:
 add dword ptr [rsp + 1216], 1
 mov eax, dword ptr [rsp + 1216]
 cmp eax, r15d
 jg .Lx59_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx59_1
 jmp .Lx59_0
.Lx59_1:
 mov rax, qword ptr [rsp + 1224]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 1232]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 1248]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 1256]
 jmp xchain31_n22_α
# IR_LIT_INTEGER
 xchain31_n22_α:
 mov qword ptr [rsp + 1744], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rsp + 1752], rax
 jmp xchain31_n24_α
 xchain31_n22_β:
 jmp xchain31_n26_α
.Lx60_0:
 .quad 0
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain31_n23_α:
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx61_0
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 lea rcx, [rip + .Lx61_4]
 lea rdx, [rip + .Lx61_5]
 jmp rax
.Lx61_4:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain31_n25_α
.Lx61_5:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain31_n21_β
.Lx61_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_open@PLT
.Lx61_2:
 test rax, rax
 je .Lx61_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx61_7]
 lea rdx, [rip + .Lx61_8]
 jmp rax
.Lx61_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx61_2
.Lx61_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx61_2
.Lx61_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain31_n21_β
 mov r14d, eax
 lea rax, [rip + .Lx61_6]
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 sub rsp, 8
 push rax
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain31_n25_α
.Lx61_6:
 add rsp, 16
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain31_n21_β
 xchain31_n23_β:
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 jmp qword ptr [rsp]
# IR_ASSIGN gva
 xchain31_n24_α:
 mov rax, qword ptr [rsp + 1744]
 mov rdx, qword ptr [rsp + 1752]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [rsp + 1728], rax
 mov qword ptr [rsp + 1736], rdx
 jmp xchain31_n26_α
 xchain31_n24_β:
 jmp xchain31_n26_α
# IR_MATCH_RELEASE
 xchain31_n25_α:
 mov rax, qword ptr [rsp + 1224]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [rsp + 1240], r14
 mov rsp, qword ptr [rsp + 1232]
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [rsp + 1280]
 mov rsi, rbp
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx64_1:
 test rax, rax
 je .Lx64_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx64_3]
 lea rdx, [rip + .Lx64_4]
 jmp rax
.Lx64_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx64_1
.Lx64_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx64_1
.Lx64_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [rsp + 1248]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [rsp + 1256]
 jmp xchain31_n27_α
# IR_LIT_INTEGER
 xchain31_n26_α:
 mov qword ptr [rsp + 1792], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rsp + 1800], rax
 jmp xchain31_n28_α
 xchain31_n26_β:
 jmp xchain31_n30_α
.Lx65_0:
 .quad 0
# IR_LIT_STRING
 xchain31_n27_α:
 mov qword ptr [rsp + 1280], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rsp + 1288], rax
 jmp xchain31_n29_α
 xchain31_n27_β:
 jmp xchain31_n22_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string ""
# IR_ASSIGN gva
 xchain31_n28_α:
 mov rax, qword ptr [rsp + 1792]
 mov rdx, qword ptr [rsp + 1800]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [rsp + 1776], rax
 mov qword ptr [rsp + 1784], rdx
 jmp xchain31_n30_α
 xchain31_n28_β:
 jmp xchain31_n30_α
# IR_MATCH_REPLACE
 xchain31_n29_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 mov rsi, qword ptr [rsp + 1376]
 mov rdx, qword ptr [rsp + 1384]
 mov ecx, dword ptr [rsp + 1216]
 mov r8, qword ptr [rsp + 1240]
 lea r9, [rsp + 1280]
 call rt_match_replace@PLT
 jmp .Lx69_1
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "DATA"
.Lx69_1:
 jmp xchain31_n31_α
# IR_VAR
 xchain31_n30_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [rsp + 2000], rax
 mov qword ptr [rsp + 2008], rdx
 jmp xchain31_n32_α
 xchain31_n30_β:
 jmp xchain31_n33_α
# IR_VAR
 xchain31_n31_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [rsp + 1456], rax
 mov qword ptr [rsp + 1464], rdx
 jmp xchain31_n34_α
 xchain31_n31_β:
 jmp xchain31_n35_α
# IR_VAR
 xchain31_n32_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [rsp + 1968], rax
 mov qword ptr [rsp + 1976], rdx
 jmp xchain31_n36_α
 xchain31_n32_β:
 jmp xchain31_n33_α
# IR_LIT_INTEGER
 xchain31_n33_α:
 mov qword ptr [rsp + 2384], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rsp + 2392], rax
 jmp xchain31_n37_α
 xchain31_n33_β:
 jmp xchain31_n42_α
.Lx73_0:
 .quad 10
# IR_LIT_INTEGER
 xchain31_n34_α:
 mov qword ptr [rsp + 1488], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rsp + 1496], rax
 jmp xchain31_n38_α
 xchain31_n34_β:
 jmp xchain31_n35_α
.Lx74_0:
 .quad 1
# IR_VAR
 xchain31_n35_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [rsp + 1520], rax
 mov qword ptr [rsp + 1528], rdx
 jmp xchain31_n39_α
 xchain31_n35_β:
 jmp xchain31_n20_α
# IR_COERCE_NUMERIC
 xchain31_n36_α:
 mov eax, dword ptr [rsp + 2000]
 cmp eax, 7
 je .Lx77_1
 cmp eax, 6
 jne .Lx77_0
 mov eax, dword ptr [rsp + 1968]
 cmp eax, 6
 jne .Lx77_0
.Lx77_1:
 mov rax, qword ptr [rsp + 2000]
 mov qword ptr [rsp + 1936], rax
 mov rax, qword ptr [rsp + 2008]
 mov qword ptr [rsp + 1944], rax
 jmp .Lx77_2
.Lx77_0:
 lea rdi, [rsp + 2000]
 lea rsi, [rsp + 1968]
 lea rdx, [rsp + 1936]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx77_2:
 jmp xchain31_n40_α
 xchain31_n36_β:
 jmp xchain31_n33_α
 xchain31_n37_α:
 mov edi, 0
 mov rsi, qword ptr [rsp + 2384]
 mov rdx, qword ptr [rsp + 2392]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx79_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx79_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx79_3]
 lea rdx, [rip + .Lx79_4]
 jmp rax
.Lx79_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx79_2
.Lx79_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx79_2
.Lx79_1:
 call rt_faildescr@PLT
.Lx79_2:
 mov qword ptr [rsp + 2336], rax
 mov qword ptr [rsp + 2344], rdx
 cmp eax, 99
 je xchain31_n42_α
 jmp xchain31_n41_α
 xchain31_n37_β:
 jmp xchain31_n42_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "RSUM"
 xchain31_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1456]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [rsp + 1456]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [rsp + 1464]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 1424], 6
 mov qword ptr [rsp + 1432], rax
 jmp xchain31_n43_α
.Lx80_0:
 mov rdi, qword ptr [rsp + 1456]
 mov rsi, qword ptr [rsp + 1464]
 mov rdx, qword ptr [rsp + 1488]
 mov rcx, qword ptr [rsp + 1496]
 mov r8d, 0
 lea r9, [rsp + 1424]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx80_3
.Lx80_2:
 mov rdi, qword ptr [rsp + 1456]
 mov rsi, qword ptr [rsp + 1464]
 mov rdx, qword ptr [rsp + 1488]
 mov rcx, qword ptr [rsp + 1496]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n35_α
 mov qword ptr [rsp + 1424], rax
 mov qword ptr [rsp + 1432], rdx
.Lx80_3:
 jmp xchain31_n43_α
 xchain31_n38_β:
 jmp xchain31_n35_α
# IR_VAR
 xchain31_n39_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [rsp + 1552], rax
 mov qword ptr [rsp + 1560], rdx
 jmp xchain31_n44_α
 xchain31_n39_β:
 jmp xchain31_n20_α
# IR_COERCE_NUMERIC
 xchain31_n40_α:
 mov eax, dword ptr [rsp + 1968]
 cmp eax, 7
 je .Lx83_1
 cmp eax, 6
 jne .Lx83_0
 mov eax, dword ptr [rsp + 2000]
 cmp eax, 6
 jne .Lx83_0
.Lx83_1:
 mov rax, qword ptr [rsp + 1968]
 mov qword ptr [rsp + 1904], rax
 mov rax, qword ptr [rsp + 1976]
 mov qword ptr [rsp + 1912], rax
 jmp .Lx83_2
.Lx83_0:
 lea rdi, [rsp + 1968]
 lea rsi, [rsp + 2000]
 lea rdx, [rsp + 1904]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx83_2:
 jmp xchain31_n45_α
 xchain31_n40_β:
 jmp xchain31_n33_α
# IR_ASSIGN gva
 xchain31_n41_α:
 mov rax, qword ptr [rsp + 2336]
 mov rdx, qword ptr [rsp + 2344]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [rsp + 2320], rax
 mov qword ptr [rsp + 2328], rdx
 jmp xchain31_n42_α
 xchain31_n41_β:
 jmp xchain31_n42_α
# IR_VAR
 xchain31_n42_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 2592], rax
 mov qword ptr [rsp + 2600], rdx
 jmp xchain31_n46_α
 xchain31_n42_β:
 jmp xchain31_n47_α
# IR_ASSIGN gva
 xchain31_n43_α:
 mov rax, qword ptr [rsp + 1424]
 mov rdx, qword ptr [rsp + 1432]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [rsp + 1408], rax
 mov qword ptr [rsp + 1416], rdx
 jmp xchain31_n35_α
 xchain31_n43_β:
 jmp xchain31_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain31_n44_α:
 mov rdi, qword ptr [rsp + 1520]
 mov rsi, qword ptr [rsp + 1528]
 mov rdx, qword ptr [rsp + 1552]
 mov rcx, qword ptr [rsp + 1560]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rsp + 1584], rax
 mov qword ptr [rsp + 1592], rdx
 jmp xchain31_n48_α
 xchain31_n44_β:
 jmp xchain31_n20_α
# IR_CMP_TEST
 xchain31_n45_α:
 lea rdi, [rsp + 1936]
 lea rsi, [rsp + 1904]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain31_n33_α
 mov qword ptr [rsp + 1872], 0
 mov qword ptr [rsp + 1880], 0
 jmp xchain31_n49_α
 xchain31_n45_β:
 jmp xchain31_n33_α
# IR_LIT_INTEGER
 xchain31_n46_α:
 mov qword ptr [rsp + 2560], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rsp + 2568], rax
 jmp xchain31_n50_α
 xchain31_n46_β:
 jmp xchain31_n47_α
.Lx90_0:
 .quad 50000
 xchain31_n47_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn92: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [rsp + 2752]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 2736], rax
 mov qword ptr [rsp + 2744], rdx
 cmp eax, 99
 je xchain31_n52_α
 jmp xchain31_n51_α
 xchain31_n47_β:
 jmp xchain31_n52_α
# IR_VAR
 xchain31_n48_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [rsp + 1648], rax
 mov qword ptr [rsp + 1656], rdx
 jmp xchain31_n53_α
 xchain31_n48_β:
 jmp xchain31_n20_α
# IR_VAR
 xchain31_n49_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [rsp + 2064], rax
 mov qword ptr [rsp + 2072], rdx
 jmp xchain31_n54_α
 xchain31_n49_β:
 jmp xchain31_n33_α
# IR_COERCE_NUMERIC
 xchain31_n50_α:
 mov eax, dword ptr [rsp + 2592]
 cmp eax, 7
 je .Lx96_1
 cmp eax, 6
 jne .Lx96_0
 mov eax, dword ptr [rsp + 2560]
 cmp eax, 6
 jne .Lx96_0
.Lx96_1:
 mov rax, qword ptr [rsp + 2592]
 mov qword ptr [rsp + 2528], rax
 mov rax, qword ptr [rsp + 2600]
 mov qword ptr [rsp + 2536], rax
 jmp .Lx96_2
.Lx96_0:
 lea rdi, [rsp + 2592]
 lea rsi, [rsp + 2560]
 lea rdx, [rsp + 2528]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx96_2:
 jmp xchain31_n55_α
 xchain31_n50_β:
 jmp xchain31_n47_α
# IR_ASSIGN gva
 xchain31_n51_α:
 mov rax, qword ptr [rsp + 2736]
 mov rdx, qword ptr [rsp + 2744]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [rsp + 2720], rax
 mov qword ptr [rsp + 2728], rdx
 jmp xchain31_n52_α
 xchain31_n51_β:
 jmp xchain31_n52_α
# IR_LIT_STRING
 xchain31_n52_α:
 mov qword ptr [rsp + 2816], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rsp + 2824], rax
 jmp xchain31_n56_α
 xchain31_n52_β:
 jmp xchain31_n61_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "result: "
# IR_LIT_INTEGER
 xchain31_n53_α:
 mov qword ptr [rsp + 1680], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rsp + 1688], rax
 jmp xchain31_n57_α
 xchain31_n53_β:
 jmp xchain31_n20_α
.Lx99_0:
 .quad 0
# IR_LIT_INTEGER
 xchain31_n54_α:
 mov qword ptr [rsp + 2096], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rsp + 2104], rax
 jmp xchain31_n58_α
 xchain31_n54_β:
 jmp xchain31_n33_α
.Lx100_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain31_n55_α:
 mov eax, dword ptr [rsp + 2560]
 cmp eax, 7
 je .Lx102_1
 cmp eax, 6
 jne .Lx102_0
 mov eax, dword ptr [rsp + 2592]
 cmp eax, 6
 jne .Lx102_0
.Lx102_1:
 mov rax, qword ptr [rsp + 2560]
 mov qword ptr [rsp + 2496], rax
 mov rax, qword ptr [rsp + 2568]
 mov qword ptr [rsp + 2504], rax
 jmp .Lx102_2
.Lx102_0:
 lea rdi, [rsp + 2560]
 lea rsi, [rsp + 2592]
 lea rdx, [rsp + 2496]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx102_2:
 jmp xchain31_n59_α
 xchain31_n55_β:
 jmp xchain31_n47_α
# IR_VAR
 xchain31_n56_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [rsp + 2848], rax
 mov qword ptr [rsp + 2856], rdx
 jmp xchain31_n60_α
 xchain31_n56_β:
 jmp xchain31_n61_α
 xchain31_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1648]
 cmp eax, 100
 je .Lx104_0
 mov eax, dword ptr [rsp + 1648]
 cmp eax, 6
 jne .Lx104_2
.Lx104_1:
 mov rax, qword ptr [rsp + 1656]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [rsp + 1616], 6
 mov qword ptr [rsp + 1624], rax
 jmp xchain31_n62_α
.Lx104_0:
 mov rdi, qword ptr [rsp + 1648]
 mov rsi, qword ptr [rsp + 1656]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 mov r8d, 0
 lea r9, [rsp + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx104_3
.Lx104_2:
 mov rdi, qword ptr [rsp + 1648]
 mov rsi, qword ptr [rsp + 1656]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rsp + 1616], rax
 mov qword ptr [rsp + 1624], rdx
.Lx104_3:
 jmp xchain31_n62_α
 xchain31_n57_β:
 jmp xchain31_n20_α
 xchain31_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 2064]
 cmp eax, 100
 je .Lx105_0
 mov eax, dword ptr [rsp + 2064]
 cmp eax, 6
 jne .Lx105_2
.Lx105_1:
 mov rax, qword ptr [rsp + 2072]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 2032], 6
 mov qword ptr [rsp + 2040], rax
 jmp xchain31_n63_α
.Lx105_0:
 mov rdi, qword ptr [rsp + 2064]
 mov rsi, qword ptr [rsp + 2072]
 mov rdx, qword ptr [rsp + 2096]
 mov rcx, qword ptr [rsp + 2104]
 mov r8d, 0
 lea r9, [rsp + 2032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx105_3
.Lx105_2:
 mov rdi, qword ptr [rsp + 2064]
 mov rsi, qword ptr [rsp + 2072]
 mov rdx, qword ptr [rsp + 2096]
 mov rcx, qword ptr [rsp + 2104]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n33_α
 mov qword ptr [rsp + 2032], rax
 mov qword ptr [rsp + 2040], rdx
.Lx105_3:
 jmp xchain31_n63_α
 xchain31_n58_β:
 jmp xchain31_n33_α
# IR_CMP_TEST
 xchain31_n59_α:
 lea rdi, [rsp + 2528]
 lea rsi, [rsp + 2496]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain31_n47_α
 mov qword ptr [rsp + 2464], 0
 mov qword ptr [rsp + 2472], 0
 jmp xchain31_n64_α
 xchain31_n59_β:
 jmp xchain31_n47_α
 xchain31_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 2816]
 mov rsi, qword ptr [rsp + 2824]
 mov rdx, qword ptr [rsp + 2848]
 mov rcx, qword ptr [rsp + 2856]
 call str_concat_d@PLT
 mov qword ptr [rsp + 2784], rax
 mov qword ptr [rsp + 2792], rdx
 jmp xchain31_n65_α
 xchain31_n60_β:
 jmp xchain31_n61_α
# IR_LIT_STRING
 xchain31_n61_α:
 mov qword ptr [rsp + 2928], 1
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rsp + 2936], rax
 jmp xchain31_n66_α
 xchain31_n61_β:
 jmp main_γ
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "ms: "
# IR_ASSIGN_VAR
 xchain31_n62_α:
 mov rdi, qword ptr [rsp + 1584]
 mov rsi, qword ptr [rsp + 1592]
 mov rdx, qword ptr [rsp + 1616]
 mov rcx, qword ptr [rsp + 1624]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rsp + 1712], rax
 mov qword ptr [rsp + 1720], rdx
 jmp xchain31_n20_α
 xchain31_n62_β:
 jmp xchain31_n20_α
 xchain31_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1872]
 mov rsi, qword ptr [rsp + 1880]
 mov rdx, qword ptr [rsp + 2032]
 mov rcx, qword ptr [rsp + 2040]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1840], rax
 mov qword ptr [rsp + 1848], rdx
 jmp xchain31_n67_α
 xchain31_n63_β:
 jmp xchain31_n33_α
# IR_VAR
 xchain31_n64_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 2656], rax
 mov qword ptr [rsp + 2664], rdx
 jmp xchain31_n68_α
 xchain31_n64_β:
 jmp xchain31_n47_α
# IR_ASSIGN global
 xchain31_n65_α:
 mov rsi, qword ptr [rsp + 2784]
 mov rdx, qword ptr [rsp + 2792]
 mov rdi, qword ptr [rip + .Lx113_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 2768], rax
 mov qword ptr [rsp + 2776], rdx
 jmp xchain31_n61_α
 xchain31_n65_β:
 jmp xchain31_n61_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain31_n66_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [rsp + 2992], rax
 mov qword ptr [rsp + 3000], rdx
 jmp xchain31_n69_α
 xchain31_n66_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain31_n67_α:
 mov rax, qword ptr [rsp + 1840]
 mov rdx, qword ptr [rsp + 1848]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [rsp + 1824], rax
 mov qword ptr [rsp + 1832], rdx
 jmp xchain31_n70_α
 xchain31_n67_β:
 jmp xchain31_n33_α
# IR_LIT_INTEGER
 xchain31_n68_α:
 mov qword ptr [rsp + 2688], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rsp + 2696], rax
 jmp xchain31_n71_α
 xchain31_n68_β:
 jmp xchain31_n47_α
.Lx116_0:
 .quad 1
# IR_VAR
 xchain31_n69_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [rsp + 3024], rax
 mov qword ptr [rsp + 3032], rdx
 jmp xchain31_n72_α
 xchain31_n69_β:
 jmp main_γ
# IR_VAR
 xchain31_n70_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [rsp + 2176], rax
 mov qword ptr [rsp + 2184], rdx
 jmp xchain31_n73_α
 xchain31_n70_β:
 jmp xchain31_n30_α
 xchain31_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 2656]
 cmp eax, 100
 je .Lx119_0
 mov eax, dword ptr [rsp + 2656]
 cmp eax, 6
 jne .Lx119_2
.Lx119_1:
 mov rax, qword ptr [rsp + 2664]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 2624], 6
 mov qword ptr [rsp + 2632], rax
 jmp xchain31_n74_α
.Lx119_0:
 mov rdi, qword ptr [rsp + 2656]
 mov rsi, qword ptr [rsp + 2664]
 mov rdx, qword ptr [rsp + 2688]
 mov rcx, qword ptr [rsp + 2696]
 mov r8d, 0
 lea r9, [rsp + 2624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx119_3
.Lx119_2:
 mov rdi, qword ptr [rsp + 2656]
 mov rsi, qword ptr [rsp + 2664]
 mov rdx, qword ptr [rsp + 2688]
 mov rcx, qword ptr [rsp + 2696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n47_α
 mov qword ptr [rsp + 2624], rax
 mov qword ptr [rsp + 2632], rdx
.Lx119_3:
 jmp xchain31_n74_α
 xchain31_n71_β:
 jmp xchain31_n47_α
 xchain31_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 2992]
 cmp eax, 100
 je .Lx120_0
 mov eax, dword ptr [rsp + 3024]
 cmp eax, 100
 je .Lx120_0
 mov eax, dword ptr [rsp + 2992]
 cmp eax, 6
 jne .Lx120_2
 mov eax, dword ptr [rsp + 3024]
 cmp eax, 6
 jne .Lx120_2
.Lx120_1:
 mov rax, qword ptr [rsp + 3000]
 mov rcx, qword ptr [rsp + 3032]
 sub rax, rcx
 mov qword ptr [rsp + 2960], 6
 mov qword ptr [rsp + 2968], rax
 jmp xchain31_n75_α
.Lx120_0:
 mov rdi, qword ptr [rsp + 2992]
 mov rsi, qword ptr [rsp + 3000]
 mov rdx, qword ptr [rsp + 3024]
 mov rcx, qword ptr [rsp + 3032]
 mov r8d, 1
 lea r9, [rsp + 2960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx120_3
.Lx120_2:
 mov rdi, qword ptr [rsp + 2992]
 mov rsi, qword ptr [rsp + 3000]
 mov rdx, qword ptr [rsp + 3024]
 mov rcx, qword ptr [rsp + 3032]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 2960], rax
 mov qword ptr [rsp + 2968], rdx
.Lx120_3:
 jmp xchain31_n75_α
 xchain31_n72_β:
 jmp main_γ
# IR_VAR
 xchain31_n73_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [rsp + 2208], rax
 mov qword ptr [rsp + 2216], rdx
 jmp xchain31_n76_α
 xchain31_n73_β:
 jmp xchain31_n30_α
 xchain31_n74_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 2464]
 mov rsi, qword ptr [rsp + 2472]
 mov rdx, qword ptr [rsp + 2624]
 mov rcx, qword ptr [rsp + 2632]
 call str_concat_d@PLT
 mov qword ptr [rsp + 2432], rax
 mov qword ptr [rsp + 2440], rdx
 jmp xchain31_n77_α
 xchain31_n74_β:
 jmp xchain31_n47_α
 xchain31_n75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 2928]
 mov rsi, qword ptr [rsp + 2936]
 mov rdx, qword ptr [rsp + 2960]
 mov rcx, qword ptr [rsp + 2968]
 call str_concat_d@PLT
 mov qword ptr [rsp + 2896], rax
 mov qword ptr [rsp + 2904], rdx
 jmp xchain31_n78_α
 xchain31_n75_β:
 jmp main_γ
# IR_VAR
 xchain31_n76_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [rsp + 2240], rax
 mov qword ptr [rsp + 2248], rdx
 jmp xchain31_n79_α
 xchain31_n76_β:
 jmp xchain31_n30_α
# IR_ASSIGN gva
 xchain31_n77_α:
 mov rax, qword ptr [rsp + 2432]
 mov rdx, qword ptr [rsp + 2440]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 2416], rax
 mov qword ptr [rsp + 2424], rdx
 jmp xchain31_n13_α
 xchain31_n77_β:
 jmp xchain31_n47_α
# IR_ASSIGN global
 xchain31_n78_α:
 mov rsi, qword ptr [rsp + 2896]
 mov rdx, qword ptr [rsp + 2904]
 mov rdi, qword ptr [rip + .Lx126_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 2880], rax
 mov qword ptr [rsp + 2888], rdx
 jmp main_γ
 xchain31_n78_β:
 jmp main_γ
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "OUTPUT"
# IR_SUBSCRIPT x[i] variable
 xchain31_n79_α:
 mov rdi, qword ptr [rsp + 2208]
 mov rsi, qword ptr [rsp + 2216]
 mov rdx, qword ptr [rsp + 2240]
 mov rcx, qword ptr [rsp + 2248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rsp + 2272], rax
 mov qword ptr [rsp + 2280], rdx
 jmp xchain31_n80_α
 xchain31_n79_β:
 jmp xchain31_n30_α
# IR_DEREF variable -> value
 xchain31_n80_α:
 mov rdi, qword ptr [rsp + 2272]
 mov rsi, qword ptr [rsp + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rsp + 2304], rax
 mov qword ptr [rsp + 2312], rdx
 jmp xchain31_n81_α
 xchain31_n80_β:
 jmp xchain31_n30_α
 xchain31_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 2176]
 cmp eax, 100
 je .Lx129_0
 mov eax, dword ptr [rsp + 2304]
 cmp eax, 100
 je .Lx129_0
 mov eax, dword ptr [rsp + 2176]
 cmp eax, 6
 jne .Lx129_2
 mov eax, dword ptr [rsp + 2304]
 cmp eax, 6
 jne .Lx129_2
.Lx129_1:
 mov rax, qword ptr [rsp + 2184]
 mov rcx, qword ptr [rsp + 2312]
 add rax, rcx
 mov qword ptr [rsp + 2144], 6
 mov qword ptr [rsp + 2152], rax
 jmp xchain31_n82_α
.Lx129_0:
 mov rdi, qword ptr [rsp + 2176]
 mov rsi, qword ptr [rsp + 2184]
 mov rdx, qword ptr [rsp + 2304]
 mov rcx, qword ptr [rsp + 2312]
 mov r8d, 0
 lea r9, [rsp + 2144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx129_3
.Lx129_2:
 mov rdi, qword ptr [rsp + 2176]
 mov rsi, qword ptr [rsp + 2184]
 mov rdx, qword ptr [rsp + 2304]
 mov rcx, qword ptr [rsp + 2312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rsp + 2144], rax
 mov qword ptr [rsp + 2152], rdx
.Lx129_3:
 jmp xchain31_n82_α
 xchain31_n81_β:
 jmp xchain31_n30_α
# IR_ASSIGN gva
 xchain31_n82_α:
 mov rax, qword ptr [rsp + 2144]
 mov rdx, qword ptr [rsp + 2152]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [rsp + 2128], rax
 mov qword ptr [rsp + 2136], rdx
 jmp xchain31_n30_α
 xchain31_n82_β:
 jmp xchain31_n30_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 3064]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 3064]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
.section .rodata
.S0: .string "WORD"
.S1: .string ","
.S2: .string "PAT"
.text
