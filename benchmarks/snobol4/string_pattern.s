  .intel_syntax noprefix
  .text
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
lea rax, [rip + xchain0_n0_β]
mov qword ptr [r12 + 144], rax
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain0_n0_α:
 jmp xchain0_n1_α
xchain0_n0_as:
 jmp proc_PAT$0_γ
 xchain0_n0_β:
 jmp xchain0_n3_β
xchain0_n0_af:
 jmp proc_PAT$0_ω
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n1_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n4_α
 xchain0_n1_β:
 add rsp, 16
 jmp xchain0_n0_af
# IR_MATCH_CAPTURE_COND (rbp-dcap inline pend)
 xchain0_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [rbp + 0], rcx
 mov esi, eax
 mov qword ptr [rbp + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [rbp + 16], rdx
 add rbp, 24
 jmp xchain0_n3_α
 xchain0_n2_β:
 sub rbp, 24
 jmp xchain0_n4_β
# IR_MATCH_LIT
 xchain0_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov edx, 1
 call memcmp@PLT
 test eax, eax
 jne xchain0_n2_β
 add r14d, 1
 jmp xchain0_n0_as
 xchain0_n3_β:
 sub r14d, 1
 jmp xchain0_n2_β
# IR_MATCH_BREAK
 xchain0_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx10_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx10_240
 add rsp, 16
 jmp xchain0_n1_β
.Lx10_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx10_1
 add dword ptr [rsp + 0], 1
 jmp .Lx10_0
.Lx10_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain0_n2_α
 xchain0_n4_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain0_n1_β
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
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
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
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 7
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
  mov qword ptr [rsp + 1608], rsp
main_α_body:
# IR_LIT_STRING
 xchain11_n0_α:
 mov qword ptr [rsp + 160], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rsp + 168], rax
 jmp xchain11_n1_α
 xchain11_n0_β:
 jmp xchain11_n3_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain11_n1_α:
 mov qword ptr [rsp + 192], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rsp + 200], rax
 jmp xchain11_n2_α
 xchain11_n1_β:
 jmp xchain11_n3_α
.Lx13_0:
 .quad 1
 xchain11_n2_α:
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
  .Lrkfn15: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [rsp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rdx
 cmp eax, 99
 je xchain11_n3_α
 jmp xchain11_n3_α
 xchain11_n2_β:
 jmp xchain11_n3_α
# IR_LIT_STRING
 xchain11_n3_α:
 mov qword ptr [rsp + 288], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rsp + 296], rax
 jmp xchain11_n4_α
 xchain11_n3_β:
 jmp xchain11_n6_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain11_n4_α:
 mov qword ptr [rsp + 320], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rsp + 328], rax
 jmp xchain11_n5_α
 xchain11_n4_β:
 jmp xchain11_n6_α
.Lx17_0:
 .quad 1000000000
 xchain11_n5_α:
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
  .Lrkfn19: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [rsp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rdx
 cmp eax, 99
 je xchain11_n6_α
 jmp xchain11_n6_α
 xchain11_n5_β:
 jmp xchain11_n6_α
# IR_LIT_STRING
 xchain11_n6_α:
 mov qword ptr [rsp + 416], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rsp + 424], rax
 jmp xchain11_n7_α
 xchain11_n6_β:
 jmp xchain11_n9_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "PAT$0"
 xchain11_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [rsp + 416]
 mov qword ptr [rsp + 384], rax
 mov rax, qword ptr [rsp + 424]
 mov qword ptr [rsp + 392], rax
  .section .rodata
  .Lrkfn22: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [rsp + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rdx
 cmp eax, 99
 je xchain11_n9_α
 jmp xchain11_n8_α
 xchain11_n7_β:
 jmp xchain11_n9_α
# IR_ASSIGN gva
 xchain11_n8_α:
 mov rax, qword ptr [rsp + 368]
 mov rdx, qword ptr [rsp + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rdx
 jmp xchain11_n9_α
 xchain11_n8_β:
 jmp xchain11_n9_α
 xchain11_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn25: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [rsp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 464], rax
 mov qword ptr [rsp + 472], rdx
 cmp eax, 99
 je xchain11_n11_α
 jmp xchain11_n10_α
 xchain11_n9_β:
 jmp xchain11_n11_α
# IR_ASSIGN gva
 xchain11_n10_α:
 mov rax, qword ptr [rsp + 464]
 mov rdx, qword ptr [rsp + 472]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain11_n11_α
 xchain11_n10_β:
 jmp xchain11_n11_α
# IR_LIT_INTEGER
 xchain11_n11_α:
 mov qword ptr [rsp + 512], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rsp + 520], rax
 jmp xchain11_n12_α
 xchain11_n11_β:
 jmp xchain11_n13_α
.Lx27_0:
 .quad 0
# IR_ASSIGN gva
 xchain11_n12_α:
 mov rax, qword ptr [rsp + 512]
 mov rdx, qword ptr [rsp + 520]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain11_n13_α
 xchain11_n12_β:
 jmp xchain11_n13_α
# IR_VAR
 xchain11_n13_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 720], rax
 mov qword ptr [rsp + 728], rdx
 jmp xchain11_n14_α
 xchain11_n13_β:
 jmp xchain11_n15_α
# IR_LIT_INTEGER
 xchain11_n14_α:
 mov qword ptr [rsp + 688], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rsp + 696], rax
 jmp xchain11_n16_α
 xchain11_n14_β:
 jmp xchain11_n15_α
.Lx30_0:
 .quad 500000
 xchain11_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn32: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [rsp + 1296]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1280], rax
 mov qword ptr [rsp + 1288], rdx
 cmp eax, 99
 je xchain11_n18_α
 jmp xchain11_n17_α
 xchain11_n15_β:
 jmp xchain11_n18_α
# IR_COERCE_NUMERIC
 xchain11_n16_α:
 mov eax, dword ptr [rsp + 720]
 cmp eax, 7
 je .Lx34_1
 cmp eax, 6
 jne .Lx34_0
 mov eax, dword ptr [rsp + 688]
 cmp eax, 6
 jne .Lx34_0
.Lx34_1:
 mov rax, qword ptr [rsp + 720]
 mov qword ptr [rsp + 656], rax
 mov rax, qword ptr [rsp + 728]
 mov qword ptr [rsp + 664], rax
 jmp .Lx34_2
.Lx34_0:
 lea rdi, [rsp + 720]
 lea rsi, [rsp + 688]
 lea rdx, [rsp + 656]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx34_2:
 jmp xchain11_n19_α
 xchain11_n16_β:
 jmp xchain11_n15_α
# IR_ASSIGN gva
 xchain11_n17_α:
 mov rax, qword ptr [rsp + 1280]
 mov rdx, qword ptr [rsp + 1288]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [rsp + 1264], rax
 mov qword ptr [rsp + 1272], rdx
 jmp xchain11_n18_α
 xchain11_n17_β:
 jmp xchain11_n18_α
# IR_LIT_STRING
 xchain11_n18_α:
 mov qword ptr [rsp + 1360], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rsp + 1368], rax
 jmp xchain11_n20_α
 xchain11_n18_β:
 jmp xchain11_n23_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain11_n19_α:
 mov eax, dword ptr [rsp + 688]
 cmp eax, 7
 je .Lx38_1
 cmp eax, 6
 jne .Lx38_0
 mov eax, dword ptr [rsp + 720]
 cmp eax, 6
 jne .Lx38_0
.Lx38_1:
 mov rax, qword ptr [rsp + 688]
 mov qword ptr [rsp + 624], rax
 mov rax, qword ptr [rsp + 696]
 mov qword ptr [rsp + 632], rax
 jmp .Lx38_2
.Lx38_0:
 lea rdi, [rsp + 688]
 lea rsi, [rsp + 720]
 lea rdx, [rsp + 624]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx38_2:
 jmp xchain11_n21_α
 xchain11_n19_β:
 jmp xchain11_n15_α
# IR_VAR
 xchain11_n20_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 1392], rax
 mov qword ptr [rsp + 1400], rdx
 jmp xchain11_n22_α
 xchain11_n20_β:
 jmp xchain11_n23_α
# IR_CMP_TEST
 xchain11_n21_α:
 lea rdi, [rsp + 656]
 lea rsi, [rsp + 624]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain11_n15_α
 mov qword ptr [rsp + 592], 0
 mov qword ptr [rsp + 600], 0
 jmp xchain11_n24_α
 xchain11_n21_β:
 jmp xchain11_n15_α
 xchain11_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1360]
 mov rsi, qword ptr [rsp + 1368]
 mov rdx, qword ptr [rsp + 1392]
 mov rcx, qword ptr [rsp + 1400]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1328], rax
 mov qword ptr [rsp + 1336], rdx
 jmp xchain11_n25_α
 xchain11_n22_β:
 jmp xchain11_n23_α
# IR_LIT_STRING
 xchain11_n23_α:
 mov qword ptr [rsp + 1472], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rsp + 1480], rax
 jmp xchain11_n26_α
 xchain11_n23_β:
 jmp main_γ
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "ms: "
# IR_VAR
 xchain11_n24_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [rsp + 784], rax
 mov qword ptr [rsp + 792], rdx
 jmp xchain11_n27_α
 xchain11_n24_β:
 jmp xchain11_n15_α
# IR_ASSIGN global
 xchain11_n25_α:
 mov rsi, qword ptr [rsp + 1328]
 mov rdx, qword ptr [rsp + 1336]
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1312], rax
 mov qword ptr [rsp + 1320], rdx
 jmp xchain11_n23_α
 xchain11_n25_β:
 jmp xchain11_n23_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain11_n26_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [rsp + 1536], rax
 mov qword ptr [rsp + 1544], rdx
 jmp xchain11_n28_α
 xchain11_n26_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain11_n27_α:
 mov qword ptr [rsp + 816], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rsp + 824], rax
 jmp xchain11_n29_α
 xchain11_n27_β:
 jmp xchain11_n15_α
.Lx47_0:
 .quad 1
# IR_VAR
 xchain11_n28_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [rsp + 1568], rax
 mov qword ptr [rsp + 1576], rdx
 jmp xchain11_n30_α
 xchain11_n28_β:
 jmp main_γ
 xchain11_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 784]
 cmp eax, 100
 je .Lx49_0
 mov eax, dword ptr [rsp + 784]
 cmp eax, 6
 jne .Lx49_2
.Lx49_1:
 mov rax, qword ptr [rsp + 792]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 752], 6
 mov qword ptr [rsp + 760], rax
 jmp xchain11_n31_α
.Lx49_0:
 mov rdi, qword ptr [rsp + 784]
 mov rsi, qword ptr [rsp + 792]
 mov rdx, qword ptr [rsp + 816]
 mov rcx, qword ptr [rsp + 824]
 mov r8d, 0
 lea r9, [rsp + 752]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx49_3
.Lx49_2:
 mov rdi, qword ptr [rsp + 784]
 mov rsi, qword ptr [rsp + 792]
 mov rdx, qword ptr [rsp + 816]
 mov rcx, qword ptr [rsp + 824]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain11_n15_α
 mov qword ptr [rsp + 752], rax
 mov qword ptr [rsp + 760], rdx
.Lx49_3:
 jmp xchain11_n31_α
 xchain11_n29_β:
 jmp xchain11_n15_α
 xchain11_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1536]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [rsp + 1568]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [rsp + 1536]
 cmp eax, 6
 jne .Lx50_2
 mov eax, dword ptr [rsp + 1568]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [rsp + 1544]
 mov rcx, qword ptr [rsp + 1576]
 sub rax, rcx
 mov qword ptr [rsp + 1504], 6
 mov qword ptr [rsp + 1512], rax
 jmp xchain11_n32_α
.Lx50_0:
 mov rdi, qword ptr [rsp + 1536]
 mov rsi, qword ptr [rsp + 1544]
 mov rdx, qword ptr [rsp + 1568]
 mov rcx, qword ptr [rsp + 1576]
 mov r8d, 1
 lea r9, [rsp + 1504]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx50_3
.Lx50_2:
 mov rdi, qword ptr [rsp + 1536]
 mov rsi, qword ptr [rsp + 1544]
 mov rdx, qword ptr [rsp + 1568]
 mov rcx, qword ptr [rsp + 1576]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1504], rax
 mov qword ptr [rsp + 1512], rdx
.Lx50_3:
 jmp xchain11_n32_α
 xchain11_n30_β:
 jmp main_γ
 xchain11_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 592]
 mov rsi, qword ptr [rsp + 600]
 mov rdx, qword ptr [rsp + 752]
 mov rcx, qword ptr [rsp + 760]
 call str_concat_d@PLT
 mov qword ptr [rsp + 560], rax
 mov qword ptr [rsp + 568], rdx
 jmp xchain11_n33_α
 xchain11_n31_β:
 jmp xchain11_n15_α
 xchain11_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1472]
 mov rsi, qword ptr [rsp + 1480]
 mov rdx, qword ptr [rsp + 1504]
 mov rcx, qword ptr [rsp + 1512]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1440], rax
 mov qword ptr [rsp + 1448], rdx
 jmp xchain11_n34_α
 xchain11_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain11_n33_α:
 mov rax, qword ptr [rsp + 560]
 mov rdx, qword ptr [rsp + 568]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [rsp + 544], rax
 mov qword ptr [rsp + 552], rdx
 jmp xchain11_n35_α
 xchain11_n33_β:
 jmp xchain11_n15_α
# IR_ASSIGN global
 xchain11_n34_α:
 mov rsi, qword ptr [rsp + 1440]
 mov rdx, qword ptr [rsp + 1448]
 mov rdi, qword ptr [rip + .Lx54_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1424], rax
 mov qword ptr [rsp + 1432], rdx
 jmp main_γ
 xchain11_n34_β:
 jmp main_γ
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain11_n35_α:
 mov qword ptr [rsp + 864], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rsp + 872], rax
 jmp xchain11_n36_α
 xchain11_n35_β:
 jmp xchain11_n37_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
# IR_ASSIGN gva
 xchain11_n36_α:
 mov rax, qword ptr [rsp + 864]
 mov rdx, qword ptr [rsp + 872]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [rsp + 848], rax
 mov qword ptr [rsp + 856], rdx
 jmp xchain11_n37_α
 xchain11_n36_β:
 jmp xchain11_n37_α
# IR_LIT_STRING
 xchain11_n37_α:
 mov qword ptr [rsp + 912], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rsp + 920], rax
 jmp xchain11_n38_α
 xchain11_n37_β:
 jmp xchain11_n39_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string ""
# IR_ASSIGN gva
 xchain11_n38_α:
 mov rax, qword ptr [rsp + 912]
 mov rdx, qword ptr [rsp + 920]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 896], rax
 mov qword ptr [rsp + 904], rdx
 jmp xchain11_n39_α
 xchain11_n38_β:
 jmp xchain11_n39_α
# IR_VAR
 xchain11_n39_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [rsp + 1120], rax
 mov qword ptr [rsp + 1128], rdx
 jmp xchain11_n40_α
 xchain11_n39_β:
 jmp xchain11_n13_α
# IR_MATCH_HEAD
 xchain11_n40_α:
 mov r12, rsp
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [r12 + 1000], rbp
 lea rcx, [rip + g_dcap_top]
 mov rbp, qword ptr [rcx + 0]
 mov qword ptr [r12 + 992], rbp
 mov qword ptr [r12 + 976], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r12 + 968], rax
 mov dword ptr [r12 + 960], 0
.Lx61_0:
 mov r14d, dword ptr [r12 + 960]
 jmp xchain11_n41_α
 xchain11_n40_β:
 add dword ptr [r12 + 960], 1
 mov eax, dword ptr [r12 + 960]
 cmp eax, r15d
 jg .Lx61_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx61_1
 jmp .Lx61_0
.Lx61_1:
 mov rax, qword ptr [r12 + 968]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [r12 + 976]
 lea rcx, [rip + g_dcap_top]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 1000]
 jmp xchain11_n13_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain11_n41_α:
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx62_0
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 lea rcx, [rip + .Lx62_4]
 lea rdx, [rip + .Lx62_5]
 jmp rax
.Lx62_4:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain11_n42_α
.Lx62_5:
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain11_n40_β
.Lx62_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_open@PLT
.Lx62_2:
 test rax, rax
 je .Lx62_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx62_7]
 lea rdx, [rip + .Lx62_8]
 jmp rax
.Lx62_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx62_2
.Lx62_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx62_2
.Lx62_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain11_n40_β
 mov r14d, eax
 lea rax, [rip + .Lx62_6]
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
 jmp xchain11_n42_α
.Lx62_6:
 add rsp, 16
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_pat_main_rsp]
 mov rsp, qword ptr [rcx + 0]
 jmp xchain11_n40_β
 xchain11_n41_β:
 lea rcx, [rip + g_pat_main_rsp]
 mov qword ptr [rcx + 0], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rsp, qword ptr [rcx + 0]
 jmp qword ptr [rsp]
# IR_MATCH_RELEASE
 xchain11_n42_α:
 mov rax, qword ptr [r12 + 968]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [r12 + 984], r14
 mov rsp, qword ptr [r12 + 976]
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rcx, [rip + g_dcap_top]
 mov qword ptr [rcx + 0], rbp
 mov rdi, qword ptr [rsp + 1024]
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
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [rcx + 0], rax
 mov rbp, qword ptr [r12 + 1000]
 jmp xchain11_n43_α
# IR_LIT_STRING
 xchain11_n43_α:
 mov qword ptr [rsp + 1024], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rsp + 1032], rax
 jmp xchain11_n44_α
 xchain11_n43_β:
 jmp xchain11_n13_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string ""
# IR_MATCH_REPLACE
 xchain11_n44_α:
 mov rdi, qword ptr [rip + .Lx67_0]
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov ecx, dword ptr [r12 + 960]
 mov r8, qword ptr [r12 + 984]
 lea r9, [r12 + 1024]
 call rt_match_replace@PLT
 jmp .Lx67_1
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "S"
.Lx67_1:
 jmp xchain11_n45_α
# IR_VAR
 xchain11_n45_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [rsp + 1200], rax
 mov qword ptr [rsp + 1208], rdx
 jmp xchain11_n46_α
 xchain11_n45_β:
 jmp xchain11_n39_α
# IR_VAR
 xchain11_n46_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [rsp + 1232], rax
 mov qword ptr [rsp + 1240], rdx
 jmp xchain11_n47_α
 xchain11_n46_β:
 jmp xchain11_n39_α
 xchain11_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1200]
 mov rsi, qword ptr [rsp + 1208]
 mov rdx, qword ptr [rsp + 1232]
 mov rcx, qword ptr [rsp + 1240]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1168], rax
 mov qword ptr [rsp + 1176], rdx
 jmp xchain11_n48_α
 xchain11_n47_β:
 jmp xchain11_n39_α
# IR_ASSIGN gva
 xchain11_n48_α:
 mov rax, qword ptr [rsp + 1168]
 mov rdx, qword ptr [rsp + 1176]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
 jmp xchain11_n39_α
 xchain11_n48_β:
 jmp xchain11_n39_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1608]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1608]
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
