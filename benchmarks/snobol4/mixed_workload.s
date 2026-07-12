  .intel_syntax noprefix
  .text
  .globl proc_RSUM_α
proc_RSUM_α:
#=======================================================================================================================
    .global proc_RSUM_α
    .global proc_RSUM_β
    .global proc_RSUM_γ
    .global proc_RSUM_ω
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
 mov qword ptr [r12 + 3040], rax
 pop rsi
proc_RSUM_α_body:
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
 .quad 0
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_RSUM_γ
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
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_RSUM_γ
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
 mov rcx, 102
 call rt_coerce_num2_d@PLT
.Lx8_2:
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_RSUM_γ
.Lx9_0:
 .quad 1
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [r12 + 464]
 lea rsi, [r12 + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jne xchain0_n2_α
 mov qword ptr [r12 + 400], 0
 mov qword ptr [r12 + 408], 0
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 752]
 cmp eax, 100
 je .Lx12_0
 mov eax, dword ptr [r12 + 752]
 cmp eax, 6
 jne .Lx12_2
.Lx12_1:
 mov rax, qword ptr [r12 + 760]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n10_α
.Lx12_0:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 1
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx12_3
.Lx12_2:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx12_3:
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_RSUM_γ
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx13_0:
 .quad 0
 xchain0_n10_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx15_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx15_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx15_2
.Lx15_1:
 call rt_faildescr@PLT
.Lx15_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
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
 xchain0_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 640]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [r12 + 672]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [r12 + 640]
 cmp eax, 6
 jne .Lx17_2
 mov eax, dword ptr [r12 + 672]
 cmp eax, 6
 jne .Lx17_2
.Lx17_1:
 mov rax, qword ptr [r12 + 648]
 mov rcx, qword ptr [r12 + 680]
 add rax, rcx
 mov qword ptr [r12 + 608], 6
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n14_α
.Lx17_0:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 0
 lea r9, [r12 + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx17_3
.Lx17_2:
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
.Lx17_3:
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp proc_RSUM_γ
 xchain0_n13_β:
 jmp xchain0_n2_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp proc_RSUM_γ
 xchain0_n14_β:
 jmp proc_RSUM_γ
proc_RSUM_β:
jmp proc_RSUM_ω
proc_RSUM_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 3040]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_RSUM_ω:
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
  cmp esi, 0
  jne proc_PAT$0_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 128], rax
 pop rsi
proc_PAT$0_α_body:
lea rax, [rip + xchain20_n3_β]
mov qword ptr [r12 + 112], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain20_n0_α:
 lea rdi, [r12 + 64]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain20_n1_α
 xchain20_n0_β:
 lea rdi, [r12 + 64]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_ω
# IR_MATCH_BREAK
 xchain20_n1_α:
 mov dword ptr [r12 + 96], 0
.Lx24_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jge xchain20_n0_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S0]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx24_1
 add dword ptr [r12 + 96], 1
 jmp .Lx24_0
.Lx24_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xchain20_n2_α
 xchain20_n1_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xchain20_n0_β
# IR_MATCH_CAPTURE_COND
 xchain20_n2_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 64]
 call rt_cap_top@PLT
 lea rdi, [rip + .S1]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_open@PLT
 test rax, rax
 je .Lx26_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_cap_finish@PLT
.Lx26_1:
 mov rsp, rbp
 pop rbp
 jmp xchain20_n3_α
 xchain20_n2_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain20_n1_β
# IR_MATCH_LIT
 xchain20_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain20_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain20_n2_β
 add r14d, 1
 jmp proc_PAT$0_γ
 xchain20_n3_β:
 sub r14d, 1
 jmp xchain20_n2_β
proc_PAT$0_β:
jmp qword ptr [r12 + 112]
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
 mov rdi, qword ptr [r12 + 128]
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
  mov esi, 3056
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
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  pop rbp
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
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 13
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
 mov qword ptr [r12 + 3040], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain29_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain29_n1_α
 xchain29_n0_β:
 jmp xchain29_n3_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain29_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain29_n2_α
 xchain29_n1_β:
 jmp xchain29_n3_α
.Lx31_0:
 .quad 1
 xchain29_n2_α:
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
  .Lrkfn33: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain29_n3_α
 jmp xchain29_n3_α
 xchain29_n2_β:
 jmp xchain29_n3_α
# IR_LIT_STRING
 xchain29_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain29_n4_α
 xchain29_n3_β:
 jmp xchain29_n6_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain29_n4_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain29_n5_α
 xchain29_n4_β:
 jmp xchain29_n6_α
.Lx35_0:
 .quad 1000000000
 xchain29_n5_α:
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
  .Lrkfn37: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain29_n6_α
 jmp xchain29_n6_α
 xchain29_n5_β:
 jmp xchain29_n6_α
# IR_LIT_STRING
 xchain29_n6_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain29_n7_α
 xchain29_n6_β:
 jmp xchain29_n9_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "PAT$0"
 xchain29_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn40: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain29_n9_α
 jmp xchain29_n8_α
 xchain29_n7_β:
 jmp xchain29_n9_α
# IR_ASSIGN gva
 xchain29_n8_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain29_n9_α
 xchain29_n8_β:
 jmp xchain29_n9_α
 xchain29_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn43: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 944]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain29_n11_α
 jmp xchain29_n10_α
 xchain29_n9_β:
 jmp xchain29_n11_α
# IR_ASSIGN gva
 xchain29_n10_α:
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain29_n11_α
 xchain29_n10_β:
 jmp xchain29_n11_α
# IR_LIT_INTEGER
 xchain29_n11_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain29_n12_α
 xchain29_n11_β:
 jmp xchain29_n13_α
.Lx45_0:
 .quad 0
# IR_ASSIGN gva
 xchain29_n12_α:
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain29_n13_α
 xchain29_n12_β:
 jmp xchain29_n13_α
# IR_LIT_INTEGER
 xchain29_n13_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain29_n14_α
 xchain29_n13_β:
 jmp xchain29_n16_α
.Lx47_0:
 .quad 16
 xchain29_n14_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn49: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn49]
 lea rsi, [r12 + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain29_n16_α
 jmp xchain29_n15_α
 xchain29_n14_β:
 jmp xchain29_n16_α
# IR_ASSIGN gva
 xchain29_n15_α:
 mov rax, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain29_n16_α
 xchain29_n15_β:
 jmp xchain29_n16_α
# IR_LIT_STRING
 xchain29_n16_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain29_n17_α
 xchain29_n16_β:
 jmp xchain29_n18_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "10,20,30,40,50,60,70,80,90,100,"
# IR_ASSIGN gva
 xchain29_n17_α:
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain29_n18_α
 xchain29_n17_β:
 jmp xchain29_n18_α
# IR_LIT_INTEGER
 xchain29_n18_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain29_n19_α
 xchain29_n18_β:
 jmp xchain29_n20_α
.Lx53_0:
 .quad 0
# IR_ASSIGN gva
 xchain29_n19_α:
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain29_n20_α
 xchain29_n19_β:
 jmp xchain29_n20_α
# IR_VAR
 xchain29_n20_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain29_n21_α
 xchain29_n20_β:
 jmp xchain29_n22_α
# IR_MATCH_HEAD
 xchain29_n21_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 1224], rax
 mov qword ptr [r12 + 1232], rsp
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 1216], 0
.Lx57_0:
 mov r14d, dword ptr [r12 + 1216]
 jmp xchain29_n23_α
 xchain29_n21_β:
 add dword ptr [r12 + 1216], 1
 mov eax, dword ptr [r12 + 1216]
 cmp eax, r15d
 jg .Lx57_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx57_1
 jmp .Lx57_0
.Lx57_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 1232]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain29_n22_α
# IR_LIT_INTEGER
 xchain29_n22_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain29_n24_α
 xchain29_n22_β:
 jmp xchain29_n26_α
.Lx58_0:
 .quad 0
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain29_n23_α:
 lea rax, [rip + proc_PAT$0_α]
 xor ecx, ecx
 mov qword ptr [r12 + 1312], rcx
 test rax, rax
 jz .Lx59_0
 mov qword ptr [r12 + 1312], rax
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1320], rax
 mov rcx, qword ptr [r12 + 1312]
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 je .Lx59_1
 mov rdi, qword ptr [r12 + 1320]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 1312], rax
 jmp xchain29_n21_β
.Lx59_1:
 jmp xchain29_n25_α
.Lx59_0:
 push r14
 push r15
 push r13
 lea rdi, [rip + .S2]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_open@PLT
.Lx59_2:
 test rax, rax
 je .Lx59_3
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx59_2
.Lx59_3:
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_close@PLT
 mov rsp, rbp
 pop rbp
 test eax, eax
 js xchain29_n21_β
 mov r14d, eax
 jmp xchain29_n25_α
 xchain29_n23_β:
 mov rcx, qword ptr [r12 + 1312]
 test rcx, rcx
 jz xchain29_n21_β
 mov rdi, qword ptr [r12 + 1320]
 mov esi, 1
 call rcx
 cmp eax, 1
 je .Lx59_1
 mov rdi, qword ptr [r12 + 1320]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 1312], rax
 jmp xchain29_n21_β
# IR_ASSIGN gva
 xchain29_n24_α:
 mov rax, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain29_n26_α
 xchain29_n24_β:
 jmp xchain29_n26_α
# IR_MATCH_RELEASE
 xchain29_n25_α:
 mov qword ptr [r12 + 1240], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 1232]
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rsp, rbp
 pop rbp
 push r14
 push r15
 push r13
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok_open@PLT
.Lx62_1:
 test rax, rax
 je .Lx62_2
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx62_1
.Lx62_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 jmp xchain29_n27_α
# IR_LIT_INTEGER
 xchain29_n26_α:
 mov qword ptr [r12 + 1776], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain29_n28_α
 xchain29_n26_β:
 jmp xchain29_n30_α
.Lx63_0:
 .quad 0
# IR_LIT_STRING
 xchain29_n27_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain29_n29_α
 xchain29_n27_β:
 jmp xchain29_n22_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string ""
# IR_ASSIGN gva
 xchain29_n28_α:
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain29_n30_α
 xchain29_n28_β:
 jmp xchain29_n30_α
# IR_MATCH_REPLACE
 xchain29_n29_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx67_0]
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 mov ecx, dword ptr [r12 + 1216]
 mov r8, qword ptr [r12 + 1240]
 lea r9, [r12 + 1264]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
 jmp .Lx67_1
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "DATA"
.Lx67_1:
 jmp xchain29_n31_α
# IR_VAR
 xchain29_n30_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain29_n32_α
 xchain29_n30_β:
 jmp xchain29_n33_α
# IR_VAR
 xchain29_n31_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain29_n34_α
 xchain29_n31_β:
 jmp xchain29_n35_α
# IR_VAR
 xchain29_n32_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain29_n36_α
 xchain29_n32_β:
 jmp xchain29_n33_α
# IR_LIT_INTEGER
 xchain29_n33_α:
 mov qword ptr [r12 + 2368], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain29_n37_α
 xchain29_n33_β:
 jmp xchain29_n42_α
.Lx71_0:
 .quad 10
# IR_LIT_INTEGER
 xchain29_n34_α:
 mov qword ptr [r12 + 1472], 6
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain29_n38_α
 xchain29_n34_β:
 jmp xchain29_n35_α
.Lx72_0:
 .quad 1
# IR_VAR
 xchain29_n35_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain29_n39_α
 xchain29_n35_β:
 jmp xchain29_n20_α
# IR_COERCE_NUMERIC
 xchain29_n36_α:
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 7
 je .Lx75_1
 cmp eax, 6
 jne .Lx75_0
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 6
 jne .Lx75_0
.Lx75_1:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1928], rax
 jmp .Lx75_2
.Lx75_0:
 lea rdi, [r12 + 1984]
 lea rsi, [r12 + 1952]
 lea rdx, [r12 + 1920]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx75_2:
 jmp xchain29_n40_α
 xchain29_n36_β:
 jmp xchain29_n33_α
 xchain29_n37_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx77_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx77_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx77_2
.Lx77_1:
 call rt_faildescr@PLT
.Lx77_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain29_n42_α
 jmp xchain29_n41_α
 xchain29_n37_β:
 jmp xchain29_n42_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "RSUM"
 xchain29_n38_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1440]
 cmp eax, 100
 je .Lx78_0
 mov eax, dword ptr [r12 + 1440]
 cmp eax, 6
 jne .Lx78_2
.Lx78_1:
 mov rax, qword ptr [r12 + 1448]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1408], 6
 mov qword ptr [r12 + 1416], rax
 jmp xchain29_n43_α
.Lx78_0:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 0
 lea r9, [r12 + 1408]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx78_3
.Lx78_2:
 mov rdi, qword ptr [r12 + 1440]
 mov rsi, qword ptr [r12 + 1448]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain29_n35_α
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
.Lx78_3:
 jmp xchain29_n43_α
 xchain29_n38_β:
 jmp xchain29_n35_α
# IR_VAR
 xchain29_n39_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain29_n44_α
 xchain29_n39_β:
 jmp xchain29_n20_α
# IR_COERCE_NUMERIC
 xchain29_n40_α:
 mov eax, dword ptr [r12 + 1952]
 cmp eax, 7
 je .Lx81_1
 cmp eax, 6
 jne .Lx81_0
 mov eax, dword ptr [r12 + 1984]
 cmp eax, 6
 jne .Lx81_0
.Lx81_1:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1896], rax
 jmp .Lx81_2
.Lx81_0:
 lea rdi, [r12 + 1952]
 lea rsi, [r12 + 1984]
 lea rdx, [r12 + 1888]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx81_2:
 jmp xchain29_n45_α
 xchain29_n40_β:
 jmp xchain29_n33_α
# IR_ASSIGN gva
 xchain29_n41_α:
 mov rax, qword ptr [r12 + 2320]
 mov rdx, qword ptr [r12 + 2328]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain29_n42_α
 xchain29_n41_β:
 jmp xchain29_n42_α
# IR_VAR
 xchain29_n42_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain29_n46_α
 xchain29_n42_β:
 jmp xchain29_n47_α
# IR_ASSIGN gva
 xchain29_n43_α:
 mov rax, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain29_n35_α
 xchain29_n43_β:
 jmp xchain29_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain29_n44_α:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1544]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain29_n20_α
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain29_n48_α
 xchain29_n44_β:
 jmp xchain29_n20_α
# IR_CMP_TEST
 xchain29_n45_α:
 lea rdi, [r12 + 1920]
 lea rsi, [r12 + 1888]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain29_n33_α
 mov qword ptr [r12 + 1856], 0
 mov qword ptr [r12 + 1864], 0
 jmp xchain29_n49_α
 xchain29_n45_β:
 jmp xchain29_n33_α
# IR_LIT_INTEGER
 xchain29_n46_α:
 mov qword ptr [r12 + 2544], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 2552], rax
 jmp xchain29_n50_α
 xchain29_n46_β:
 jmp xchain29_n47_α
.Lx88_0:
 .quad 50000
 xchain29_n47_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn90: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 2736]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je xchain29_n52_α
 jmp xchain29_n51_α
 xchain29_n47_β:
 jmp xchain29_n52_α
# IR_VAR
 xchain29_n48_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain29_n53_α
 xchain29_n48_β:
 jmp xchain29_n20_α
# IR_VAR
 xchain29_n49_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain29_n54_α
 xchain29_n49_β:
 jmp xchain29_n33_α
# IR_COERCE_NUMERIC
 xchain29_n50_α:
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 7
 je .Lx94_1
 cmp eax, 6
 jne .Lx94_0
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 6
 jne .Lx94_0
.Lx94_1:
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2520], rax
 jmp .Lx94_2
.Lx94_0:
 lea rdi, [r12 + 2576]
 lea rsi, [r12 + 2544]
 lea rdx, [r12 + 2512]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx94_2:
 jmp xchain29_n55_α
 xchain29_n50_β:
 jmp xchain29_n47_α
# IR_ASSIGN gva
 xchain29_n51_α:
 mov rax, qword ptr [r12 + 2720]
 mov rdx, qword ptr [r12 + 2728]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain29_n52_α
 xchain29_n51_β:
 jmp xchain29_n52_α
# IR_LIT_STRING
 xchain29_n52_α:
 mov qword ptr [r12 + 2800], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 2808], rax
 jmp xchain29_n56_α
 xchain29_n52_β:
 jmp xchain29_n61_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "result: "
# IR_LIT_INTEGER
 xchain29_n53_α:
 mov qword ptr [r12 + 1664], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain29_n57_α
 xchain29_n53_β:
 jmp xchain29_n20_α
.Lx97_0:
 .quad 0
# IR_LIT_INTEGER
 xchain29_n54_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain29_n58_α
 xchain29_n54_β:
 jmp xchain29_n33_α
.Lx98_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain29_n55_α:
 mov eax, dword ptr [r12 + 2544]
 cmp eax, 7
 je .Lx100_1
 cmp eax, 6
 jne .Lx100_0
 mov eax, dword ptr [r12 + 2576]
 cmp eax, 6
 jne .Lx100_0
.Lx100_1:
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2488], rax
 jmp .Lx100_2
.Lx100_0:
 lea rdi, [r12 + 2544]
 lea rsi, [r12 + 2576]
 lea rdx, [r12 + 2480]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx100_2:
 jmp xchain29_n59_α
 xchain29_n55_β:
 jmp xchain29_n47_α
# IR_VAR
 xchain29_n56_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 jmp xchain29_n60_α
 xchain29_n56_β:
 jmp xchain29_n61_α
 xchain29_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 100
 je .Lx102_0
 mov eax, dword ptr [r12 + 1632]
 cmp eax, 6
 jne .Lx102_2
.Lx102_1:
 mov rax, qword ptr [r12 + 1640]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 1600], 6
 mov qword ptr [r12 + 1608], rax
 jmp xchain29_n62_α
.Lx102_0:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 0
 lea r9, [r12 + 1600]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx102_3
.Lx102_2:
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1664]
 mov rcx, qword ptr [r12 + 1672]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain29_n20_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
.Lx102_3:
 jmp xchain29_n62_α
 xchain29_n57_β:
 jmp xchain29_n20_α
 xchain29_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 100
 je .Lx103_0
 mov eax, dword ptr [r12 + 2048]
 cmp eax, 6
 jne .Lx103_2
.Lx103_1:
 mov rax, qword ptr [r12 + 2056]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2016], 6
 mov qword ptr [r12 + 2024], rax
 jmp xchain29_n63_α
.Lx103_0:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 lea r9, [r12 + 2016]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx103_3
.Lx103_2:
 mov rdi, qword ptr [r12 + 2048]
 mov rsi, qword ptr [r12 + 2056]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain29_n33_α
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
.Lx103_3:
 jmp xchain29_n63_α
 xchain29_n58_β:
 jmp xchain29_n33_α
# IR_CMP_TEST
 xchain29_n59_α:
 lea rdi, [r12 + 2512]
 lea rsi, [r12 + 2480]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain29_n47_α
 mov qword ptr [r12 + 2448], 0
 mov qword ptr [r12 + 2456], 0
 jmp xchain29_n64_α
 xchain29_n59_β:
 jmp xchain29_n47_α
 xchain29_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2800]
 mov rsi, qword ptr [r12 + 2808]
 mov rdx, qword ptr [r12 + 2832]
 mov rcx, qword ptr [r12 + 2840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain29_n65_α
 xchain29_n60_β:
 jmp xchain29_n61_α
# IR_LIT_STRING
 xchain29_n61_α:
 mov qword ptr [r12 + 2912], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 2920], rax
 jmp xchain29_n66_α
 xchain29_n61_β:
 jmp main_γ
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "ms: "
# IR_ASSIGN_VAR
 xchain29_n62_α:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1600]
 mov rcx, qword ptr [r12 + 1608]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain29_n20_α
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain29_n20_α
 xchain29_n62_β:
 jmp xchain29_n20_α
 xchain29_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1856]
 mov rsi, qword ptr [r12 + 1864]
 mov rdx, qword ptr [r12 + 2016]
 mov rcx, qword ptr [r12 + 2024]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain29_n67_α
 xchain29_n63_β:
 jmp xchain29_n33_α
# IR_VAR
 xchain29_n64_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain29_n68_α
 xchain29_n64_β:
 jmp xchain29_n47_α
# IR_ASSIGN global
 xchain29_n65_α:
 mov rsi, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 mov rdi, qword ptr [rip + .Lx111_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain29_n61_α
 xchain29_n65_β:
 jmp xchain29_n61_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain29_n66_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 jmp xchain29_n69_α
 xchain29_n66_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain29_n67_α:
 mov rax, qword ptr [r12 + 1824]
 mov rdx, qword ptr [r12 + 1832]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain29_n70_α
 xchain29_n67_β:
 jmp xchain29_n33_α
# IR_LIT_INTEGER
 xchain29_n68_α:
 mov qword ptr [r12 + 2672], 6
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 2680], rax
 jmp xchain29_n71_α
 xchain29_n68_β:
 jmp xchain29_n47_α
.Lx114_0:
 .quad 1
# IR_VAR
 xchain29_n69_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain29_n72_α
 xchain29_n69_β:
 jmp main_γ
# IR_VAR
 xchain29_n70_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain29_n73_α
 xchain29_n70_β:
 jmp xchain29_n30_α
 xchain29_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 100
 je .Lx117_0
 mov eax, dword ptr [r12 + 2640]
 cmp eax, 6
 jne .Lx117_2
.Lx117_1:
 mov rax, qword ptr [r12 + 2648]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 2608], 6
 mov qword ptr [r12 + 2616], rax
 jmp xchain29_n74_α
.Lx117_0:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 0
 lea r9, [r12 + 2608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx117_3
.Lx117_2:
 mov rdi, qword ptr [r12 + 2640]
 mov rsi, qword ptr [r12 + 2648]
 mov rdx, qword ptr [r12 + 2672]
 mov rcx, qword ptr [r12 + 2680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain29_n47_α
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
.Lx117_3:
 jmp xchain29_n74_α
 xchain29_n71_β:
 jmp xchain29_n47_α
 xchain29_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 100
 je .Lx118_0
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 100
 je .Lx118_0
 mov eax, dword ptr [r12 + 2976]
 cmp eax, 6
 jne .Lx118_2
 mov eax, dword ptr [r12 + 3008]
 cmp eax, 6
 jne .Lx118_2
.Lx118_1:
 mov rax, qword ptr [r12 + 2984]
 mov rcx, qword ptr [r12 + 3016]
 sub rax, rcx
 mov qword ptr [r12 + 2944], 6
 mov qword ptr [r12 + 2952], rax
 jmp xchain29_n75_α
.Lx118_0:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3008]
 mov rcx, qword ptr [r12 + 3016]
 mov r8d, 1
 lea r9, [r12 + 2944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx118_3
.Lx118_2:
 mov rdi, qword ptr [r12 + 2976]
 mov rsi, qword ptr [r12 + 2984]
 mov rdx, qword ptr [r12 + 3008]
 mov rcx, qword ptr [r12 + 3016]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
.Lx118_3:
 jmp xchain29_n75_α
 xchain29_n72_β:
 jmp main_γ
# IR_VAR
 xchain29_n73_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain29_n76_α
 xchain29_n73_β:
 jmp xchain29_n30_α
 xchain29_n74_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2448]
 mov rsi, qword ptr [r12 + 2456]
 mov rdx, qword ptr [r12 + 2608]
 mov rcx, qword ptr [r12 + 2616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain29_n77_α
 xchain29_n74_β:
 jmp xchain29_n47_α
 xchain29_n75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 2912]
 mov rsi, qword ptr [r12 + 2920]
 mov rdx, qword ptr [r12 + 2944]
 mov rcx, qword ptr [r12 + 2952]
 call str_concat_d@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain29_n78_α
 xchain29_n75_β:
 jmp main_γ
# IR_VAR
 xchain29_n76_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain29_n79_α
 xchain29_n76_β:
 jmp xchain29_n30_α
# IR_ASSIGN gva
 xchain29_n77_α:
 mov rax, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain29_n13_α
 xchain29_n77_β:
 jmp xchain29_n47_α
# IR_ASSIGN global
 xchain29_n78_α:
 mov rsi, qword ptr [r12 + 2880]
 mov rdx, qword ptr [r12 + 2888]
 mov rdi, qword ptr [rip + .Lx124_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp main_γ
 xchain29_n78_β:
 jmp main_γ
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "OUTPUT"
# IR_SUBSCRIPT x[i] variable
 xchain29_n79_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2224]
 mov rcx, qword ptr [r12 + 2232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain29_n30_α
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain29_n80_α
 xchain29_n79_β:
 jmp xchain29_n30_α
# IR_DEREF variable -> value
 xchain29_n80_α:
 mov rdi, qword ptr [r12 + 2256]
 mov rsi, qword ptr [r12 + 2264]
 call rt_deref@PLT
 cmp eax, 99
 je xchain29_n30_α
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain29_n81_α
 xchain29_n80_β:
 jmp xchain29_n30_α
 xchain29_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 100
 je .Lx127_0
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 100
 je .Lx127_0
 mov eax, dword ptr [r12 + 2160]
 cmp eax, 6
 jne .Lx127_2
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 6
 jne .Lx127_2
.Lx127_1:
 mov rax, qword ptr [r12 + 2168]
 mov rcx, qword ptr [r12 + 2296]
 add rax, rcx
 mov qword ptr [r12 + 2128], 6
 mov qword ptr [r12 + 2136], rax
 jmp xchain29_n82_α
.Lx127_0:
 mov rdi, qword ptr [r12 + 2160]
 mov rsi, qword ptr [r12 + 2168]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 lea r9, [r12 + 2128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx127_3
.Lx127_2:
 mov rdi, qword ptr [r12 + 2160]
 mov rsi, qword ptr [r12 + 2168]
 mov rdx, qword ptr [r12 + 2288]
 mov rcx, qword ptr [r12 + 2296]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain29_n30_α
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
.Lx127_3:
 jmp xchain29_n82_α
 xchain29_n81_β:
 jmp xchain29_n30_α
# IR_ASSIGN gva
 xchain29_n82_α:
 mov rax, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain29_n30_α
 xchain29_n82_β:
 jmp xchain29_n30_α
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
 mov rdi, qword ptr [r12 + 3040]
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
