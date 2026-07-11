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
 mov qword ptr [r12 + 128], rax
 pop rsi
proc_PAT$0_α_body:
# IR_MATCH_ALT_SAVE
 xchain0_n0_α:
 mov dword ptr [r12 + 48], r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_height@PLT
 mov rsp, rbp
 pop rbp
 mov dword ptr [r12 + 52], eax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp qword ptr [r12 + 56]
# IR_MATCH_LIT
 xchain0_n1_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n2_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n2_β
 add r14d, 3
 jmp xchain0_n2_α
 xchain0_n1_β:
 sub r14d, 3
 jmp xchain0_n2_β
# IR_MATCH_ALT_JOIN
 xchain0_n2_α:
 lea rax, [rip + .Lx6_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
.Lx6_0:
 mov r14d, dword ptr [r12 + 48]
 mov edi, dword ptr [r12 + 52]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_restore_to@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n3_α
# IR_MATCH_LIT
 xchain0_n3_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n5_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n5_β
 add r14d, 3
 jmp xchain0_n5_α
 xchain0_n3_β:
 sub r14d, 3
 jmp xchain0_n5_β
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n4_α:
 lea rdi, [r12 + 16]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n6_α
 xchain0_n4_β:
 lea rdi, [r12 + 16]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n0_β
# IR_MATCH_ALT_JOIN
 xchain0_n5_α:
 lea rax, [rip + .Lx12_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n5_β:
.Lx12_0:
 mov r14d, dword ptr [r12 + 48]
 mov edi, dword ptr [r12 + 52]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_restore_to@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n7_α
# IR_MATCH_SPAN
 xchain0_n6_α:
 mov dword ptr [r12 + 32], 0
.Lx14_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 32]
 cmp eax, r15d
 jge .Lx14_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S2]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je .Lx14_1
 add dword ptr [r12 + 32], 1
 jmp .Lx14_0
.Lx14_1:
 mov eax, dword ptr [r12 + 32]
 test eax, eax
 jle xchain0_n4_β
 mov edx, r14d
 mov dword ptr [r12 + 36], edx
 add edx, eax
 mov r14d, edx
 jmp xchain0_n8_α
 xchain0_n6_β:
 xchain0_n6_β:
 mov r14d, dword ptr [r12 + 36]
 jmp xchain0_n4_β
# IR_MATCH_LIT
 xchain0_n7_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n9_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S3]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n9_β
 add r14d, 3
 jmp xchain0_n9_α
 xchain0_n7_β:
 sub r14d, 3
 jmp xchain0_n9_β
# IR_MATCH_CAPTURE_COND
 xchain0_n8_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 16]
 call rt_cap_top@PLT
 lea rdi, [rip + .S4]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_assign_cursor@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_γ
 xchain0_n8_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n6_β
# IR_MATCH_ALT_JOIN
 xchain0_n9_α:
 lea rax, [rip + .Lx20_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n9_β:
.Lx20_0:
 mov r14d, dword ptr [r12 + 48]
 mov edi, dword ptr [r12 + 52]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_restore_to@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n10_α
# IR_MATCH_LIT
 xchain0_n10_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n11_β
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S5]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n11_β
 add r14d, 3
 jmp xchain0_n11_α
 xchain0_n10_β:
 sub r14d, 3
 jmp xchain0_n11_β
# IR_MATCH_ALT_JOIN
 xchain0_n11_α:
 lea rax, [rip + .Lx24_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n11_β:
.Lx24_0:
 mov r14d, dword ptr [r12 + 48]
 mov edi, dword ptr [r12 + 52]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_restore_to@PLT
 mov rsp, rbp
 pop rbp
 jmp proc_PAT$0_ω
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
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "PAT"
  .Lgvan1: .string "S"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "N"
  .Lgvan4: .string "T2"
  .Lgvan5: .string "W"
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
  call core_lib_init@PLT
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
 mov qword ptr [r12 + 944], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain25_n0_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp xchain25_n3_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain25_n1_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain25_n2_α
 xchain25_n1_β:
 jmp xchain25_n3_α
.Lx27_0:
 .quad 1
 xchain25_n2_α:
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
  .Lrkfn29: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain25_n3_α
 jmp xchain25_n3_α
 xchain25_n2_β:
 jmp xchain25_n3_α
# IR_LIT_STRING
 xchain25_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain25_n4_α
 xchain25_n3_β:
 jmp xchain25_n6_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain25_n4_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain25_n5_α
 xchain25_n4_β:
 jmp xchain25_n6_α
.Lx31_0:
 .quad 1000000000
 xchain25_n5_α:
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
  .Lrkfn33: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain25_n6_α
 jmp xchain25_n6_α
 xchain25_n5_β:
 jmp xchain25_n6_α
# IR_LIT_STRING
 xchain25_n6_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain25_n7_α
 xchain25_n6_β:
 jmp xchain25_n9_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "ANCHOR"
# IR_LIT_INTEGER
 xchain25_n7_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain25_n8_α
 xchain25_n7_β:
 jmp xchain25_n9_α
.Lx35_0:
 .quad 0
 xchain25_n8_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
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
 je xchain25_n9_α
 jmp xchain25_n9_α
 xchain25_n8_β:
 jmp xchain25_n9_α
# IR_LIT_STRING
 xchain25_n9_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain25_n10_α
 xchain25_n9_β:
 jmp xchain25_n12_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "PAT$0"
 xchain25_n10_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn40: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain25_n12_α
 jmp xchain25_n11_α
 xchain25_n10_β:
 jmp xchain25_n12_α
# IR_ASSIGN gva
 xchain25_n11_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain25_n12_α
 xchain25_n11_β:
 jmp xchain25_n12_α
# IR_LIT_STRING
 xchain25_n12_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain25_n13_α
 xchain25_n12_β:
 jmp xchain25_n14_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
# IR_ASSIGN gva
 xchain25_n13_α:
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain25_n14_α
 xchain25_n13_β:
 jmp xchain25_n14_α
 xchain25_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn45: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain25_n16_α
 jmp xchain25_n15_α
 xchain25_n14_β:
 jmp xchain25_n16_α
# IR_ASSIGN gva
 xchain25_n15_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain25_n16_α
 xchain25_n15_β:
 jmp xchain25_n16_α
# IR_LIT_INTEGER
 xchain25_n16_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain25_n17_α
 xchain25_n16_β:
 jmp xchain25_n18_α
.Lx47_0:
 .quad 0
# IR_ASSIGN gva
 xchain25_n17_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain25_n18_α
 xchain25_n17_β:
 jmp xchain25_n18_α
# IR_VAR
 xchain25_n18_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain25_n19_α
 xchain25_n18_β:
 jmp xchain25_n20_α
# IR_MATCH_HEAD
 xchain25_n19_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rsp
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 464], 0
.Lx51_0:
 mov r14d, dword ptr [r12 + 464]
 jmp xchain25_n21_α
 xchain25_n19_β:
 add dword ptr [r12 + 464], 1
 mov eax, dword ptr [r12 + 464]
 cmp eax, r15d
 jg .Lx51_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx51_1
 jmp .Lx51_0
.Lx51_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 472]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 480]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain25_n20_α
 xchain25_n20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn53: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 720]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain25_n23_α
 jmp xchain25_n22_α
 xchain25_n20_β:
 jmp xchain25_n23_α
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain25_n21_α:
 lea rax, [rip + proc_PAT$0_α]
 test rax, rax
 jz .Lx54_0
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
 je .Lx54_1
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain25_n19_β
.Lx54_1:
 jmp xchain25_n24_α
.Lx54_0:
 lea rdi, [rip + .S6]
 xor esi, esi
 mov edx, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbp
 pop rbp
 test eax, eax
 js xchain25_n19_β
 mov r14d, eax
 jmp xchain25_n24_α
 xchain25_n21_β:
 jmp xchain25_n19_β
# IR_ASSIGN gva
 xchain25_n22_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain25_n23_α
 xchain25_n22_β:
 jmp xchain25_n23_α
# IR_LIT_STRING
 xchain25_n23_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n28_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "result: "
# IR_MATCH_RELEASE
 xchain25_n24_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 472]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 480]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain25_n26_α
# IR_VAR
 xchain25_n25_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain25_n27_α
 xchain25_n25_β:
 jmp xchain25_n28_α
# IR_VAR
 xchain25_n26_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain25_n29_α
 xchain25_n26_β:
 jmp xchain25_n20_α
 xchain25_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain25_n30_α
 xchain25_n27_β:
 jmp xchain25_n28_α
# IR_LIT_STRING
 xchain25_n28_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain25_n31_α
 xchain25_n28_β:
 jmp xchain25_n34_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "W: "
# IR_LIT_INTEGER
 xchain25_n29_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain25_n32_α
 xchain25_n29_β:
 jmp xchain25_n20_α
.Lx63_0:
 .quad 500000
# IR_ASSIGN global
 xchain25_n30_α:
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov rdi, qword ptr [rip + .Lx64_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain25_n28_α
 xchain25_n30_β:
 jmp xchain25_n28_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain25_n31_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain25_n33_α
 xchain25_n31_β:
 jmp xchain25_n34_α
# IR_COERCE_NUMERIC
 xchain25_n32_α:
 mov eax, dword ptr [r12 + 624]
 cmp eax, 7
 je .Lx67_1
 cmp eax, 6
 jne .Lx67_0
 mov eax, dword ptr [r12 + 608]
 cmp eax, 6
 jne .Lx67_0
.Lx67_1:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
 jmp .Lx67_2
.Lx67_0:
 lea rdi, [r12 + 624]
 lea rsi, [r12 + 608]
 lea rdx, [r12 + 592]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx67_2:
 jmp xchain25_n35_α
 xchain25_n32_β:
 jmp xchain25_n20_α
 xchain25_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 mov rdx, qword ptr [r12 + 832]
 mov rcx, qword ptr [r12 + 840]
 call str_concat_d@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain25_n36_α
 xchain25_n33_β:
 jmp xchain25_n34_α
# IR_LIT_STRING
 xchain25_n34_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain25_n37_α
 xchain25_n34_β:
 jmp main_γ
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "ms: "
# IR_COERCE_NUMERIC
 xchain25_n35_α:
 mov eax, dword ptr [r12 + 608]
 cmp eax, 7
 je .Lx71_1
 cmp eax, 6
 jne .Lx71_0
 mov eax, dword ptr [r12 + 624]
 cmp eax, 6
 jne .Lx71_0
.Lx71_1:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 jmp .Lx71_2
.Lx71_0:
 lea rdi, [r12 + 608]
 lea rsi, [r12 + 624]
 lea rdx, [r12 + 576]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx71_2:
 jmp xchain25_n38_α
 xchain25_n35_β:
 jmp xchain25_n20_α
# IR_ASSIGN global
 xchain25_n36_α:
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov rdi, qword ptr [rip + .Lx72_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain25_n34_α
 xchain25_n36_β:
 jmp xchain25_n34_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain25_n37_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain25_n39_α
 xchain25_n37_β:
 jmp main_γ
# IR_CMP_TEST
 xchain25_n38_α:
 lea rdi, [r12 + 592]
 lea rsi, [r12 + 576]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain25_n20_α
 mov qword ptr [r12 + 560], 0
 mov qword ptr [r12 + 568], 0
 jmp xchain25_n40_α
 xchain25_n38_β:
 jmp xchain25_n20_α
# IR_VAR
 xchain25_n39_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain25_n41_α
 xchain25_n39_β:
 jmp main_γ
# IR_VAR
 xchain25_n40_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain25_n42_α
 xchain25_n40_β:
 jmp xchain25_n20_α
 xchain25_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx78_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx78_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 6
 jne .Lx78_2
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx78_2
.Lx78_1:
 mov rax, qword ptr [r12 + 920]
 mov rcx, qword ptr [r12 + 936]
 sub rax, rcx
 mov qword ptr [r12 + 896], 6
 mov qword ptr [r12 + 904], rax
 jmp xchain25_n43_α
.Lx78_0:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 1
 lea r9, [r12 + 896]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx78_3
.Lx78_2:
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
.Lx78_3:
 jmp xchain25_n43_α
 xchain25_n41_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain25_n42_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain25_n44_α
 xchain25_n42_β:
 jmp xchain25_n20_α
.Lx79_0:
 .quad 1
 xchain25_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 mov rdx, qword ptr [r12 + 896]
 mov rcx, qword ptr [r12 + 904]
 call str_concat_d@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain25_n45_α
 xchain25_n43_β:
 jmp main_γ
 xchain25_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 656]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [r12 + 656]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [r12 + 664]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 640], 6
 mov qword ptr [r12 + 648], rax
 jmp xchain25_n46_α
.Lx81_0:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 0
 lea r9, [r12 + 640]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx81_3
.Lx81_2:
 mov rdi, qword ptr [r12 + 656]
 mov rsi, qword ptr [r12 + 664]
 mov rdx, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n20_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
.Lx81_3:
 jmp xchain25_n46_α
 xchain25_n44_β:
 jmp xchain25_n20_α
# IR_ASSIGN global
 xchain25_n45_α:
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp main_γ
 xchain25_n45_β:
 jmp main_γ
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "OUTPUT"
 xchain25_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call str_concat_d@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain25_n47_α
 xchain25_n46_β:
 jmp xchain25_n20_α
# IR_ASSIGN gva
 xchain25_n47_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain25_n18_α
 xchain25_n47_β:
 jmp xchain25_n20_α
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
 mov rdi, qword ptr [r12 + 944]
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
.S0: .string "aaa"
.S1: .string "bbb"
.S2: .string "abcd"
.S3: .string "ccc"
.S4: .string "W"
.S5: .string "ddd"
.S6: .string "PAT"
.text
