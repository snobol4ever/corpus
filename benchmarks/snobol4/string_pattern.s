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
  cmp esi, 0
  jne proc_PAT$0_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 160], rax
 pop rsi
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [r12 + 144], rax
# IR_MATCH_SEQ_NARY
 xchain0_n0_α:
 mov dword ptr [r12 + 32], r14d
 mov dword ptr [r12 + 36], 0
 jmp xchain0_n1_α
xchain0_n0_as:
 mov eax, dword ptr [r12 + 36]
 add eax, 1
 mov dword ptr [r12 + 36], eax
 cmp eax, 1
 je xchain0_n3_α
 jmp proc_PAT$0_γ
 xchain0_n0_β:
 mov dword ptr [r12 + 36], 2
xchain0_n0_af:
 mov eax, dword ptr [r12 + 36]
 sub eax, 1
 mov dword ptr [r12 + 36], eax
 cmp eax, 0
 je xchain0_n2_β
 cmp eax, 1
 je xchain0_n3_β
 jmp proc_PAT$0_ω
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n1_α:
 lea rdi, [r12 + 80]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n4_α
 xchain0_n1_β:
 lea rdi, [r12 + 80]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n0_af
# IR_MATCH_CAPTURE_COND
 xchain0_n2_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 80]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_open@PLT
 test rax, rax
 je .Lx6_1
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
.Lx6_1:
 mov rsp, rbp
 pop rbp
 jmp xchain0_n0_as
 xchain0_n2_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n4_β
# IR_MATCH_LIT
 xchain0_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain0_n0_af
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov edx, 1
 call memcmp@PLT
 test eax, eax
 jne xchain0_n0_af
 add r14d, 1
 jmp xchain0_n0_as
 xchain0_n3_β:
 sub r14d, 1
 jmp xchain0_n0_af
# IR_MATCH_BREAK
 xchain0_n4_α:
 mov dword ptr [r12 + 112], 0
.Lx10_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 112]
 cmp eax, r15d
 jge xchain0_n1_β
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 call strchr@PLT
 test rax, rax
 jnz .Lx10_1
 add dword ptr [r12 + 112], 1
 jmp .Lx10_0
.Lx10_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 112]
 mov r14d, eax
 jmp xchain0_n2_α
 xchain0_n4_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 112]
 mov r14d, eax
 jmp xchain0_n1_β
proc_PAT$0_β:
jmp qword ptr [r12 + 144]
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
 mov rdi, qword ptr [r12 + 160]
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
  mov esi, 176
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
 mov qword ptr [r12 + 1584], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain11_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain11_n1_α
 xchain11_n0_β:
 jmp xchain11_n3_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain11_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain11_n2_α
 xchain11_n1_β:
 jmp xchain11_n3_α
.Lx13_0:
 .quad 1
 xchain11_n2_α:
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
  .Lrkfn15: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain11_n3_α
 jmp xchain11_n3_α
 xchain11_n2_β:
 jmp xchain11_n3_α
# IR_LIT_STRING
 xchain11_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain11_n4_α
 xchain11_n3_β:
 jmp xchain11_n6_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain11_n4_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain11_n5_α
 xchain11_n4_β:
 jmp xchain11_n6_α
.Lx17_0:
 .quad 1000000000
 xchain11_n5_α:
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
  .Lrkfn19: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain11_n6_α
 jmp xchain11_n6_α
 xchain11_n5_β:
 jmp xchain11_n6_α
# IR_LIT_STRING
 xchain11_n6_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 424], rax
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
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn22: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain11_n9_α
 jmp xchain11_n8_α
 xchain11_n7_β:
 jmp xchain11_n9_α
# IR_ASSIGN gva
 xchain11_n8_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
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
 lea rsi, [r12 + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain11_n11_α
 jmp xchain11_n10_α
 xchain11_n9_β:
 jmp xchain11_n11_α
# IR_ASSIGN gva
 xchain11_n10_α:
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain11_n11_α
 xchain11_n10_β:
 jmp xchain11_n11_α
# IR_LIT_INTEGER
 xchain11_n11_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain11_n12_α
 xchain11_n11_β:
 jmp xchain11_n13_α
.Lx27_0:
 .quad 0
# IR_ASSIGN gva
 xchain11_n12_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain11_n13_α
 xchain11_n12_β:
 jmp xchain11_n13_α
# IR_VAR
 xchain11_n13_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain11_n14_α
 xchain11_n13_β:
 jmp xchain11_n15_α
# IR_LIT_INTEGER
 xchain11_n14_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 696], rax
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
 lea rsi, [r12 + 1280]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain11_n18_α
 jmp xchain11_n17_α
 xchain11_n15_β:
 jmp xchain11_n18_α
# IR_COERCE_NUMERIC
 xchain11_n16_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 7
 je .Lx34_1
 cmp eax, 6
 jne .Lx34_0
 mov eax, dword ptr [r12 + 688]
 cmp eax, 6
 jne .Lx34_0
.Lx34_1:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 664], rax
 jmp .Lx34_2
.Lx34_0:
 lea rdi, [r12 + 720]
 lea rsi, [r12 + 688]
 lea rdx, [r12 + 656]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx34_2:
 jmp xchain11_n19_α
 xchain11_n16_β:
 jmp xchain11_n15_α
# IR_ASSIGN gva
 xchain11_n17_α:
 mov rax, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain11_n18_α
 xchain11_n17_β:
 jmp xchain11_n18_α
# IR_LIT_STRING
 xchain11_n18_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain11_n20_α
 xchain11_n18_β:
 jmp xchain11_n23_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain11_n19_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 7
 je .Lx38_1
 cmp eax, 6
 jne .Lx38_0
 mov eax, dword ptr [r12 + 720]
 cmp eax, 6
 jne .Lx38_0
.Lx38_1:
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 jmp .Lx38_2
.Lx38_0:
 lea rdi, [r12 + 688]
 lea rsi, [r12 + 720]
 lea rdx, [r12 + 624]
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
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain11_n22_α
 xchain11_n20_β:
 jmp xchain11_n23_α
# IR_CMP_TEST
 xchain11_n21_α:
 lea rdi, [r12 + 656]
 lea rsi, [r12 + 624]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain11_n15_α
 mov qword ptr [r12 + 592], 0
 mov qword ptr [r12 + 600], 0
 jmp xchain11_n24_α
 xchain11_n21_β:
 jmp xchain11_n15_α
 xchain11_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1344]
 mov rsi, qword ptr [r12 + 1352]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain11_n25_α
 xchain11_n22_β:
 jmp xchain11_n23_α
# IR_LIT_STRING
 xchain11_n23_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 1464], rax
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
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain11_n27_α
 xchain11_n24_β:
 jmp xchain11_n15_α
# IR_ASSIGN global
 xchain11_n25_α:
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
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
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain11_n28_α
 xchain11_n26_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain11_n27_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain11_n29_α
 xchain11_n27_β:
 jmp xchain11_n15_α
.Lx47_0:
 .quad 1
# IR_VAR
 xchain11_n28_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain11_n30_α
 xchain11_n28_β:
 jmp main_γ
 xchain11_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 784]
 cmp eax, 100
 je .Lx49_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx49_2
.Lx49_1:
 mov rax, qword ptr [r12 + 792]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 752], 6
 mov qword ptr [r12 + 760], rax
 jmp xchain11_n31_α
.Lx49_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 lea r9, [r12 + 752]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx49_3
.Lx49_2:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 816]
 mov rcx, qword ptr [r12 + 824]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain11_n15_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
.Lx49_3:
 jmp xchain11_n31_α
 xchain11_n29_β:
 jmp xchain11_n15_α
 xchain11_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 1552]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx50_2
 mov eax, dword ptr [r12 + 1552]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [r12 + 1528]
 mov rcx, qword ptr [r12 + 1560]
 sub rax, rcx
 mov qword ptr [r12 + 1488], 6
 mov qword ptr [r12 + 1496], rax
 jmp xchain11_n32_α
.Lx50_0:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1552]
 mov rcx, qword ptr [r12 + 1560]
 mov r8d, 1
 lea r9, [r12 + 1488]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx50_3
.Lx50_2:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1552]
 mov rcx, qword ptr [r12 + 1560]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
.Lx50_3:
 jmp xchain11_n32_α
 xchain11_n30_β:
 jmp main_γ
 xchain11_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call str_concat_d@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain11_n33_α
 xchain11_n31_β:
 jmp xchain11_n15_α
 xchain11_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 1488]
 mov rcx, qword ptr [r12 + 1496]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain11_n34_α
 xchain11_n32_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain11_n33_α:
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain11_n35_α
 xchain11_n33_β:
 jmp xchain11_n15_α
# IR_ASSIGN global
 xchain11_n34_α:
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 mov rdi, qword ptr [rip + .Lx54_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp main_γ
 xchain11_n34_β:
 jmp main_γ
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain11_n35_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain11_n36_α
 xchain11_n35_β:
 jmp xchain11_n37_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
# IR_ASSIGN gva
 xchain11_n36_α:
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain11_n37_α
 xchain11_n36_β:
 jmp xchain11_n37_α
# IR_LIT_STRING
 xchain11_n37_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain11_n38_α
 xchain11_n37_β:
 jmp xchain11_n39_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string ""
# IR_ASSIGN gva
 xchain11_n38_α:
 mov rax, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain11_n39_α
 xchain11_n38_β:
 jmp xchain11_n39_α
# IR_VAR
 xchain11_n39_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain11_n40_α
 xchain11_n39_β:
 jmp xchain11_n13_α
# IR_MATCH_HEAD
 xchain11_n40_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rsp
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
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
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 968]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 976]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain11_n13_α
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain11_n41_α:
 lea rax, [rip + proc_PAT$0_α]
 xor ecx, ecx
 mov qword ptr [r12 + 1056], rcx
 test rax, rax
 jz .Lx62_0
 mov qword ptr [r12 + 1056], rax
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1064], rax
 mov rcx, qword ptr [r12 + 1056]
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 je .Lx62_1
 mov rdi, qword ptr [r12 + 1064]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 1056], rax
 jmp xchain11_n40_β
.Lx62_1:
 jmp xchain11_n42_α
.Lx62_0:
 push r14
 push r15
 push r13
 lea rdi, [rip + .S2]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_open@PLT
.Lx62_2:
 test rax, rax
 je .Lx62_3
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
 jmp .Lx62_2
.Lx62_3:
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
 js xchain11_n40_β
 mov r14d, eax
 jmp xchain11_n42_α
 xchain11_n41_β:
 mov rcx, qword ptr [r12 + 1056]
 test rcx, rcx
 jz xchain11_n40_β
 mov rdi, qword ptr [r12 + 1064]
 mov esi, 1
 call rcx
 cmp eax, 1
 je .Lx62_1
 mov rdi, qword ptr [r12 + 1064]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 1056], rax
 jmp xchain11_n40_β
# IR_MATCH_RELEASE
 xchain11_n42_α:
 mov qword ptr [r12 + 984], r14
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 968]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 976]
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
.Lx64_1:
 test rax, rax
 je .Lx64_2
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
 jmp .Lx64_1
.Lx64_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 jmp xchain11_n43_α
# IR_LIT_STRING
 xchain11_n43_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain11_n44_α
 xchain11_n43_β:
 jmp xchain11_n13_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string ""
# IR_MATCH_REPLACE
 xchain11_n44_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx67_0]
 mov rsi, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 mov ecx, dword ptr [r12 + 960]
 mov r8, qword ptr [r12 + 984]
 lea r9, [r12 + 1008]
 call rt_match_replace@PLT
 mov rsp, rbp
 pop rbp
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
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain11_n46_α
 xchain11_n45_β:
 jmp xchain11_n39_α
# IR_VAR
 xchain11_n46_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain11_n47_α
 xchain11_n46_β:
 jmp xchain11_n39_α
 xchain11_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain11_n48_α
 xchain11_n47_β:
 jmp xchain11_n39_α
# IR_ASSIGN gva
 xchain11_n48_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain11_n39_α
 xchain11_n48_β:
 jmp xchain11_n39_α
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
 mov rdi, qword ptr [r12 + 1584]
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
.S0: .string "WORD"
.S1: .string ","
.S2: .string "PAT"
.text
