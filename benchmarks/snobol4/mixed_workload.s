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
  mov [rsp + 3096], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3072
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3064], rsp
proc_RSUM_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n1_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n3_α
.Lx2_0:
 .quad 0
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n4_α
# IR_COERCE_NUMERIC
 xchain0_n3_α:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 7
 je .Lx5_1
 cmp eax, 6
 jne .Lx5_0
 mov eax, dword ptr [rbp + 496]
 cmp eax, 6
 jne .Lx5_0
.Lx5_1:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n5_α
.Lx5_0:
 lea rdi, [rbp + 528]
 lea rsi, [rbp + 496]
 lea rdx, [rbp + 464]
 mov rcx, 101
 call rt_coerce_num2_d@PLT
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n6_α
# IR_COERCE_NUMERIC
 xchain0_n5_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 7
 je .Lx8_1
 cmp eax, 6
 jne .Lx8_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx8_0
.Lx8_1:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n7_α
.Lx8_0:
 lea rdi, [rbp + 496]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 432]
 mov rcx, 102
 call rt_coerce_num2_d@PLT
 jmp xchain0_n7_α
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n8_α
.Lx9_0:
 .quad 1
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [rbp + 464]
 lea rsi, [rbp + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jne xchain0_n2_α
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain0_n9_α
 xchain0_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 752]
 cmp eax, 100
 je .Lx12_0
 mov eax, dword ptr [rbp + 752]
 cmp eax, 6
 jne .Lx12_2
.Lx12_1:
 mov rax, qword ptr [rbp + 760]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 720], 6
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n10_α
.Lx12_0:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 1
 lea r9, [rbp + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n10_α
.Lx12_2:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_RSUM_γ
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n11_α
.Lx13_0:
 .quad 0
 xchain0_n10_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx15_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx15_5
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx15_6]
 lea rdx, [rip + .Lx15_7]
 jmp rax
.Lx15_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx15_2
.Lx15_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx15_2
.Lx15_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
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
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
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
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call str_concat_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n13_α
 xchain0_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [rbp + 672]
 cmp eax, 100
 je .Lx17_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx17_2
 mov eax, dword ptr [rbp + 672]
 cmp eax, 6
 jne .Lx17_2
.Lx17_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 680]
 add rax, rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n14_α
.Lx17_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n14_α
.Lx17_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_RSUM_γ
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp proc_RSUM_γ
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp proc_RSUM_γ
proc_RSUM_res:
add rsp, 8
pop rbp
proc_RSUM_β:
jmp proc_RSUM_ω
proc_RSUM_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3080]
lea rsp, [rbp + 3104]
mov rbp, [rbp + 3096]
jmp rax
proc_RSUM_ω:
mov rax, [rbp + 3088]
lea rsp, [rbp + 3104]
mov rbp, [rbp + 3096]
jmp rax
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 208
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 176
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 168], rsp
mov qword ptr [rbp + 176], r8
mov dword ptr [rbp + 168], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain20_n0_β]
mov qword ptr [rbp + 144], rax
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
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain20_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain20_n3_α
 xchain20_n2_β:
 sub r12, 24
 jmp xchain20_n4_β
# IR_MATCH_LIT
 xchain20_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain20_n2_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 44
 jne xchain20_n2_β
 add r14d, 1
 jmp xchain20_n0_as
 xchain20_n3_β:
 sub r14d, 1
 jmp xchain20_n2_β
# IR_MATCH_BREAK
 xchain20_n4_α:
 sub rsp, 16
 movsxd rcx, r14d
.Lx30_0:
 cmp ecx, r15d
 jl .Lx30_237
 add rsp, 16
 add rsp, 16
 jmp xchain20_n0_af
.Lx30_237:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx30_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx30_238
 add rsp, 16
 add rsp, 16
 jmp xchain20_n0_af
.Lx30_238:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx30_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx30_239
 add rsp, 16
 add rsp, 16
 jmp xchain20_n0_af
.Lx30_239:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx30_1
 add ecx, 1
 cmp ecx, r15d
 jl .Lx30_240
 add rsp, 16
 add rsp, 16
 jmp xchain20_n0_af
.Lx30_240:
 movzx esi, byte ptr [r13+rcx]
 cmp esi, 44
 je .Lx30_1
 add ecx, 1
 jmp .Lx30_0
.Lx30_1:
 mov dword ptr [rsp + 0], r14d
 mov r14d, ecx
 jmp xchain20_n2_α
 xchain20_n4_β:
 mov r14d, dword ptr [rsp + 0]
 add rsp, 16
 add rsp, 16
 jmp xchain20_n0_af
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 176], 1
jne 7f
mov ecx, dword ptr [rbp + 168]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 176], 1
jne 8f
mov eax, dword ptr [rbp + 168]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 168], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 144]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 184]
mov rbp, [rbp + 200]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 192]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "RSUM"
  .Lgvan1: .string "N"
  .Lgvan2: .string "PAT"
  .Lgvan3: .string "WORD"
  .Lgvan4: .string "T1"
  .Lgvan5: .string "OUTER"
  .Lgvan6: .string "T"
  .Lgvan7: .string "DATA"
  .Lgvan8: .string "IDX"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 13
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 13
  call gva_register@PLT
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
  mov qword ptr [rsp + 3064], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain31_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain31_n1_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain31_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain31_n2_α
.Lx33_0:
 .quad 1
 xchain31_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn35: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn35]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain31_n3_α
 jmp xchain31_n3_α
 xchain31_n2_β:
 jmp xchain31_n3_α
# IR_LIT_STRING
 xchain31_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain31_n4_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain31_n4_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain31_n5_α
.Lx37_0:
 .quad 1000000000
 xchain31_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn39: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn39]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain31_n6_α
 jmp xchain31_n6_α
 xchain31_n5_β:
 jmp xchain31_n6_α
# IR_LIT_STRING
 xchain31_n6_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain31_n7_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "PAT$0"
 xchain31_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn42: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn42]
 lea rsi, [rbp + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain31_n9_α
 jmp xchain31_n8_α
 xchain31_n7_β:
 jmp xchain31_n9_α
# IR_ASSIGN gva
 xchain31_n8_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain31_n9_α
 xchain31_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn45: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn45]
 lea rsi, [rbp + 944]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain31_n11_α
 jmp xchain31_n10_α
 xchain31_n9_β:
 jmp xchain31_n11_α
# IR_ASSIGN gva
 xchain31_n10_α:
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain31_n11_α
# IR_LIT_INTEGER
 xchain31_n11_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain31_n12_α
.Lx47_0:
 .quad 0
# IR_ASSIGN gva
 xchain31_n12_α:
 mov rax, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain31_n13_α
# IR_LIT_INTEGER
 xchain31_n13_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain31_n14_α
.Lx49_0:
 .quad 16
 xchain31_n14_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn51: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain31_n16_α
 jmp xchain31_n15_α
 xchain31_n14_β:
 jmp xchain31_n16_α
# IR_ASSIGN gva
 xchain31_n15_α:
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain31_n16_α
# IR_LIT_STRING
 xchain31_n16_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain31_n17_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "10,20,30,40,50,60,70,80,90,100,"
# IR_ASSIGN gva
 xchain31_n17_α:
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain31_n18_α
# IR_LIT_INTEGER
 xchain31_n18_α:
 mov qword ptr [rbp + 1168], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain31_n19_α
.Lx55_0:
 .quad 0
# IR_ASSIGN gva
 xchain31_n19_α:
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain31_n20_α
# IR_VAR
 xchain31_n20_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain31_n21_α
# IR_MATCH_HEAD
 xchain31_n21_α:
 mov qword ptr [rbp + 1256], rbp
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 1248], r12
 mov qword ptr [rbp + 1232], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 1224], rax
 mov dword ptr [rbp + 1216], 0
.Lx59_0:
 mov r14d, dword ptr [rbp + 1216]
 jmp xchain31_n23_α
 xchain31_n21_β:
 add dword ptr [rbp + 1216], 1
 mov eax, dword ptr [rbp + 1216]
 cmp eax, r15d
 jg .Lx59_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx59_1
 jmp .Lx59_0
.Lx59_1:
 mov rax, qword ptr [rbp + 1224]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 1232]
 mov r12, qword ptr [rbp + 1248]
 mov rbp, qword ptr [rbp + 1256]
 jmp xchain31_n22_α
# IR_LIT_INTEGER
 xchain31_n22_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain31_n24_α
.Lx60_0:
 .quad 0
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain31_n23_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 cmp eax, 3
 jne .Lx61_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx61_10
.Lx61_9:
 xor eax, eax
.Lx61_10:
 test rax, rax
 jz .Lx61_0
 mov r8d, 1
 lea rcx, [rip + .Lx61_4]
 lea rdx, [rip + .Lx61_5]
 jmp rax
.Lx61_4:
 lea rcx, [rip + g_scan_hit_start]
 mov rax, qword ptr [rcx]
 mov dword ptr [rbp + 1216], eax
 jmp xchain31_n25_α
.Lx61_5:
 jmp xchain31_n21_β
.Lx61_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S1]
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
 sub rsp, 8
 push rax
 jmp xchain31_n25_α
.Lx61_6:
 add rsp, 16
 jmp xchain31_n21_β
 xchain31_n23_β:
 jmp qword ptr [rsp]
# IR_ASSIGN gva
 xchain31_n24_α:
 mov rax, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain31_n26_α
# IR_MATCH_RELEASE
 xchain31_n25_α:
 mov rax, qword ptr [rbp + 1224]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [rbp + 1240], r14
 mov rsp, qword ptr [rbp + 1232]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 1280]
 mov rsi, r12
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
 mov r12, qword ptr [rbp + 1248]
 jmp xchain31_n27_α
# IR_LIT_INTEGER
 xchain31_n26_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain31_n28_α
.Lx65_0:
 .quad 0
# IR_LIT_STRING
 xchain31_n27_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain31_n29_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string ""
# IR_ASSIGN gva
 xchain31_n28_α:
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain31_n30_α
# IR_MATCH_REPLACE
 xchain31_n29_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 mov rsi, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov ecx, dword ptr [rbp + 1216]
 mov r8, qword ptr [rbp + 1240]
 lea r9, [rbp + 1280]
 call rt_match_replace@PLT
 jmp .Lx69_1
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "DATA"
.Lx69_1:
 mov rbp, qword ptr [rbp + 1256]
 jmp xchain31_n31_α
# IR_VAR
 xchain31_n30_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain31_n32_α
# IR_VAR
 xchain31_n31_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain31_n34_α
# IR_VAR
 xchain31_n32_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain31_n36_α
# IR_LIT_INTEGER
 xchain31_n33_α:
 mov qword ptr [rbp + 2384], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain31_n37_α
.Lx73_0:
 .quad 10
# IR_LIT_INTEGER
 xchain31_n34_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain31_n38_α
.Lx74_0:
 .quad 1
# IR_VAR
 xchain31_n35_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain31_n39_α
# IR_COERCE_NUMERIC
 xchain31_n36_α:
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 7
 je .Lx77_1
 cmp eax, 6
 jne .Lx77_0
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 6
 jne .Lx77_0
.Lx77_1:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1944], rax
 jmp xchain31_n40_α
.Lx77_0:
 lea rdi, [rbp + 2000]
 lea rsi, [rbp + 1968]
 lea rdx, [rbp + 1936]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain31_n40_α
 xchain31_n37_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx79_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx79_5
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx79_6]
 lea rdx, [rip + .Lx79_7]
 jmp rax
.Lx79_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx79_2
.Lx79_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx79_2
.Lx79_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 2384]
 mov rdx, qword ptr [rbp + 2392]
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
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
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
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [rbp + 1464]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1424], 6
 mov qword ptr [rbp + 1432], rax
 jmp xchain31_n43_α
.Lx80_0:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 mov r8d, 0
 lea r9, [rbp + 1424]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n43_α
.Lx80_2:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n35_α
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain31_n43_α
 xchain31_n38_β:
 jmp xchain31_n35_α
# IR_VAR
 xchain31_n39_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain31_n44_α
# IR_COERCE_NUMERIC
 xchain31_n40_α:
 mov eax, dword ptr [rbp + 1968]
 cmp eax, 7
 je .Lx83_1
 cmp eax, 6
 jne .Lx83_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx83_0
.Lx83_1:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
 jmp xchain31_n45_α
.Lx83_0:
 lea rdi, [rbp + 1968]
 lea rsi, [rbp + 2000]
 lea rdx, [rbp + 1904]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain31_n45_α
# IR_ASSIGN gva
 xchain31_n41_α:
 mov rax, qword ptr [rbp + 2336]
 mov rdx, qword ptr [rbp + 2344]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain31_n42_α
# IR_VAR
 xchain31_n42_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain31_n46_α
# IR_ASSIGN gva
 xchain31_n43_α:
 mov rax, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain31_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain31_n44_α:
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain31_n48_α
# IR_CMP_TEST
 xchain31_n45_α:
 lea rdi, [rbp + 1936]
 lea rsi, [rbp + 1904]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain31_n33_α
 mov qword ptr [rbp + 1872], 0
 mov qword ptr [rbp + 1880], 0
 jmp xchain31_n49_α
# IR_LIT_INTEGER
 xchain31_n46_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain31_n50_α
.Lx90_0:
 .quad 50000
 xchain31_n47_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn92: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn92]
 lea rsi, [rbp + 2752]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain31_n52_α
 jmp xchain31_n51_α
 xchain31_n47_β:
 jmp xchain31_n52_α
# IR_VAR
 xchain31_n48_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain31_n53_α
# IR_VAR
 xchain31_n49_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain31_n54_α
# IR_COERCE_NUMERIC
 xchain31_n50_α:
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 7
 je .Lx96_1
 cmp eax, 6
 jne .Lx96_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx96_0
.Lx96_1:
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
 jmp xchain31_n55_α
.Lx96_0:
 lea rdi, [rbp + 2592]
 lea rsi, [rbp + 2560]
 lea rdx, [rbp + 2528]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain31_n55_α
# IR_ASSIGN gva
 xchain31_n51_α:
 mov rax, qword ptr [rbp + 2736]
 mov rdx, qword ptr [rbp + 2744]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain31_n52_α
# IR_LIT_STRING
 xchain31_n52_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain31_n56_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "result: "
# IR_LIT_INTEGER
 xchain31_n53_α:
 mov qword ptr [rbp + 1680], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain31_n57_α
.Lx99_0:
 .quad 0
# IR_LIT_INTEGER
 xchain31_n54_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain31_n58_α
.Lx100_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain31_n55_α:
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 7
 je .Lx102_1
 cmp eax, 6
 jne .Lx102_0
 mov eax, dword ptr [rbp + 2592]
 cmp eax, 6
 jne .Lx102_0
.Lx102_1:
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2504], rax
 jmp xchain31_n59_α
.Lx102_0:
 lea rdi, [rbp + 2560]
 lea rsi, [rbp + 2592]
 lea rdx, [rbp + 2496]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain31_n59_α
# IR_VAR
 xchain31_n56_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain31_n60_α
 xchain31_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 100
 je .Lx104_0
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 6
 jne .Lx104_2
.Lx104_1:
 mov rax, qword ptr [rbp + 1656]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [rbp + 1616], 6
 mov qword ptr [rbp + 1624], rax
 jmp xchain31_n62_α
.Lx104_0:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 mov r8d, 0
 lea r9, [rbp + 1616]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n62_α
.Lx104_2:
 mov rdi, qword ptr [rbp + 1648]
 mov rsi, qword ptr [rbp + 1656]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain31_n62_α
 xchain31_n57_β:
 jmp xchain31_n20_α
 xchain31_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 100
 je .Lx105_0
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 6
 jne .Lx105_2
.Lx105_1:
 mov rax, qword ptr [rbp + 2072]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2032], 6
 mov qword ptr [rbp + 2040], rax
 jmp xchain31_n63_α
.Lx105_0:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 0
 lea r9, [rbp + 2032]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n63_α
.Lx105_2:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n33_α
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain31_n63_α
 xchain31_n58_β:
 jmp xchain31_n33_α
# IR_CMP_TEST
 xchain31_n59_α:
 lea rdi, [rbp + 2528]
 lea rsi, [rbp + 2496]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain31_n47_α
 mov qword ptr [rbp + 2464], 0
 mov qword ptr [rbp + 2472], 0
 jmp xchain31_n64_α
 xchain31_n60_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 2848]
 mov rcx, qword ptr [rbp + 2856]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain31_n65_α
# IR_LIT_STRING
 xchain31_n61_α:
 mov qword ptr [rbp + 2928], 1
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain31_n66_α
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "ms: "
# IR_ASSIGN_VAR
 xchain31_n62_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1616]
 mov rcx, qword ptr [rbp + 1624]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain31_n20_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain31_n20_α
 xchain31_n63_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain31_n67_α
# IR_VAR
 xchain31_n64_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain31_n68_α
# IR_ASSIGN global
 xchain31_n65_α:
 mov rsi, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
 mov rdi, qword ptr [rip + .Lx113_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain31_n61_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain31_n66_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain31_n69_α
# IR_ASSIGN gva
 xchain31_n67_α:
 mov rax, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain31_n70_α
# IR_LIT_INTEGER
 xchain31_n68_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain31_n71_α
.Lx116_0:
 .quad 1
# IR_VAR
 xchain31_n69_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain31_n72_α
# IR_VAR
 xchain31_n70_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain31_n73_α
 xchain31_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 100
 je .Lx119_0
 mov eax, dword ptr [rbp + 2656]
 cmp eax, 6
 jne .Lx119_2
.Lx119_1:
 mov rax, qword ptr [rbp + 2664]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2624], 6
 mov qword ptr [rbp + 2632], rax
 jmp xchain31_n74_α
.Lx119_0:
 mov rdi, qword ptr [rbp + 2656]
 mov rsi, qword ptr [rbp + 2664]
 mov rdx, qword ptr [rbp + 2688]
 mov rcx, qword ptr [rbp + 2696]
 mov r8d, 0
 lea r9, [rbp + 2624]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n74_α
.Lx119_2:
 mov rdi, qword ptr [rbp + 2656]
 mov rsi, qword ptr [rbp + 2664]
 mov rdx, qword ptr [rbp + 2688]
 mov rcx, qword ptr [rbp + 2696]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n47_α
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain31_n74_α
 xchain31_n71_β:
 jmp xchain31_n47_α
 xchain31_n72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 100
 je .Lx120_0
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 100
 je .Lx120_0
 mov eax, dword ptr [rbp + 2992]
 cmp eax, 6
 jne .Lx120_2
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 6
 jne .Lx120_2
.Lx120_1:
 mov rax, qword ptr [rbp + 3000]
 mov rcx, qword ptr [rbp + 3032]
 sub rax, rcx
 mov qword ptr [rbp + 2960], 6
 mov qword ptr [rbp + 2968], rax
 jmp xchain31_n75_α
.Lx120_0:
 mov rdi, qword ptr [rbp + 2992]
 mov rsi, qword ptr [rbp + 3000]
 mov rdx, qword ptr [rbp + 3024]
 mov rcx, qword ptr [rbp + 3032]
 mov r8d, 1
 lea r9, [rbp + 2960]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n75_α
.Lx120_2:
 mov rdi, qword ptr [rbp + 2992]
 mov rsi, qword ptr [rbp + 3000]
 mov rdx, qword ptr [rbp + 3024]
 mov rcx, qword ptr [rbp + 3032]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain31_n75_α
 xchain31_n72_β:
 jmp main_γ
# IR_VAR
 xchain31_n73_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain31_n76_α
 xchain31_n74_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2624]
 mov rcx, qword ptr [rbp + 2632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain31_n77_α
 xchain31_n75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain31_n78_α
# IR_VAR
 xchain31_n76_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain31_n79_α
# IR_ASSIGN gva
 xchain31_n77_α:
 mov rax, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain31_n13_α
# IR_ASSIGN global
 xchain31_n78_α:
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 mov rdi, qword ptr [rip + .Lx126_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp main_γ
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "OUTPUT"
# IR_SUBSCRIPT x[i] variable
 xchain31_n79_α:
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain31_n80_α
# IR_DEREF variable -> value
 xchain31_n80_α:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain31_n81_α
 xchain31_n81_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2176]
 cmp eax, 100
 je .Lx129_0
 mov eax, dword ptr [rbp + 2304]
 cmp eax, 100
 je .Lx129_0
 mov eax, dword ptr [rbp + 2176]
 cmp eax, 6
 jne .Lx129_2
 mov eax, dword ptr [rbp + 2304]
 cmp eax, 6
 jne .Lx129_2
.Lx129_1:
 mov rax, qword ptr [rbp + 2184]
 mov rcx, qword ptr [rbp + 2312]
 add rax, rcx
 mov qword ptr [rbp + 2144], 6
 mov qword ptr [rbp + 2152], rax
 jmp xchain31_n82_α
.Lx129_0:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2304]
 mov rcx, qword ptr [rbp + 2312]
 mov r8d, 0
 lea r9, [rbp + 2144]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n82_α
.Lx129_2:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2304]
 mov rcx, qword ptr [rbp + 2312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n30_α
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain31_n82_α
 xchain31_n81_β:
 jmp xchain31_n30_α
# IR_ASSIGN gva
 xchain31_n82_α:
 mov rax, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain31_n30_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 3064]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 3064]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "WORD"
.S1: .string "PAT"
.text
