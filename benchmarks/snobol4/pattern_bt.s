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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [r12 + 224], rax
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
 je xchain0_n2_α
 jmp proc_PAT$0_γ
 xchain0_n0_β:
 mov dword ptr [r12 + 36], 2
xchain0_n0_af:
 mov eax, dword ptr [r12 + 36]
 sub eax, 1
 mov dword ptr [r12 + 36], eax
 cmp eax, 0
 je xchain0_n1_β
 cmp eax, 1
 je xchain0_n3_β
 jmp proc_PAT$0_ω
# IR_MATCH_ALT_NARY
 xchain0_n1_α:
 mov dword ptr [r12 + 64], r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_height@PLT
 mov rsp, rbp
 pop rbp
 mov dword ptr [r12 + 68], eax
 mov dword ptr [r12 + 72], 0
 jmp xchain0_n4_α
xchain0_n1_as:
 jmp xchain0_n0_as
 xchain0_n1_β:
 mov eax, dword ptr [r12 + 72]
 cmp eax, 0
 je xchain0_n4_β
 cmp eax, 1
 je xchain0_n5_β
 cmp eax, 2
 je xchain0_n6_β
 jmp xchain0_n7_β
xchain0_n1_af:
 add dword ptr [r12 + 72], 1
 mov r14d, dword ptr [r12 + 64]
 mov edi, dword ptr [r12 + 68]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_restore_to@PLT
 mov rsp, rbp
 pop rbp
 mov eax, dword ptr [r12 + 72]
 cmp eax, 1
 je xchain0_n5_α
 cmp eax, 2
 je xchain0_n6_α
 cmp eax, 3
 je xchain0_n7_α
 jmp xchain0_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain0_n2_α:
 lea rdi, [r12 + 176]
 mov esi, r14d
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_push@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n8_α
 xchain0_n2_β:
 lea rdi, [r12 + 176]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_cap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n0_af
# IR_MATCH_CAPTURE_COND
 xchain0_n3_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 lea rdi, [r12 + 176]
 call rt_cap_top@PLT
 lea rdi, [rip + .S0]
 mov esi, eax
 mov edx, r14d
 mov ecx, 0
 call rt_cap_open@PLT
 test rax, rax
 je .Lx8_1
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
.Lx8_1:
 mov rsp, rbp
 pop rbp
 jmp xchain0_n0_as
 xchain0_n3_β:
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_pop@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain0_n8_β
# IR_MATCH_LIT
 xchain0_n4_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n1_af
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_as
 xchain0_n4_β:
 sub r14d, 3
 jmp xchain0_n1_af
# IR_MATCH_LIT
 xchain0_n5_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n1_af
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_as
 xchain0_n5_β:
 sub r14d, 3
 jmp xchain0_n1_af
# IR_MATCH_LIT
 xchain0_n6_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n1_af
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S3]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_as
 xchain0_n6_β:
 sub r14d, 3
 jmp xchain0_n1_af
# IR_MATCH_LIT
 xchain0_n7_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n1_af
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S4]
 mov edx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_as
 xchain0_n7_β:
 sub r14d, 3
 jmp xchain0_n1_af
# IR_MATCH_SPAN
 xchain0_n8_α:
 mov dword ptr [r12 + 208], 0
.Lx18_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jge .Lx18_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S5]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je .Lx18_1
 add dword ptr [r12 + 208], 1
 jmp .Lx18_0
.Lx18_1:
 mov eax, dword ptr [r12 + 208]
 test eax, eax
 jle xchain0_n2_β
 mov edx, r14d
 mov dword ptr [r12 + 212], edx
 add edx, eax
 mov r14d, edx
 jmp xchain0_n3_α
 xchain0_n8_β:
 xchain0_n8_β:
 mov r14d, dword ptr [r12 + 212]
 jmp xchain0_n2_β
proc_PAT$0_β:
jmp qword ptr [r12 + 224]
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
 mov rdi, qword ptr [r12 + 240]
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
  mov esi, 256
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
 mov qword ptr [r12 + 1616], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain19_n0_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain19_n1_α
 xchain19_n0_β:
 jmp xchain19_n3_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain19_n1_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain19_n2_α
 xchain19_n1_β:
 jmp xchain19_n3_α
.Lx21_0:
 .quad 1
 xchain19_n2_α:
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
  .Lrkfn23: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain19_n3_α
 jmp xchain19_n3_α
 xchain19_n2_β:
 jmp xchain19_n3_α
# IR_LIT_STRING
 xchain19_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain19_n4_α
 xchain19_n3_β:
 jmp xchain19_n6_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain19_n4_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain19_n5_α
 xchain19_n4_β:
 jmp xchain19_n6_α
.Lx25_0:
 .quad 1000000000
 xchain19_n5_α:
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
  .Lrkfn27: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain19_n6_α
 jmp xchain19_n6_α
 xchain19_n5_β:
 jmp xchain19_n6_α
# IR_LIT_STRING
 xchain19_n6_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain19_n7_α
 xchain19_n6_β:
 jmp xchain19_n9_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ANCHOR"
# IR_LIT_INTEGER
 xchain19_n7_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain19_n8_α
 xchain19_n7_β:
 jmp xchain19_n9_α
.Lx29_0:
 .quad 0
 xchain19_n8_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn31: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain19_n9_α
 jmp xchain19_n9_α
 xchain19_n8_β:
 jmp xchain19_n9_α
# IR_LIT_STRING
 xchain19_n9_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain19_n10_α
 xchain19_n9_β:
 jmp xchain19_n12_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "PAT$0"
 xchain19_n10_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn34: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain19_n12_α
 jmp xchain19_n11_α
 xchain19_n10_β:
 jmp xchain19_n12_α
# IR_ASSIGN gva
 xchain19_n11_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain19_n12_α
 xchain19_n11_β:
 jmp xchain19_n12_α
# IR_LIT_STRING
 xchain19_n12_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain19_n13_α
 xchain19_n12_β:
 jmp xchain19_n14_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
# IR_ASSIGN gva
 xchain19_n13_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain19_n14_α
 xchain19_n13_β:
 jmp xchain19_n14_α
 xchain19_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 656]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain19_n16_α
 jmp xchain19_n15_α
 xchain19_n14_β:
 jmp xchain19_n16_α
# IR_ASSIGN gva
 xchain19_n15_α:
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain19_n16_α
 xchain19_n15_β:
 jmp xchain19_n16_α
# IR_LIT_INTEGER
 xchain19_n16_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain19_n17_α
 xchain19_n16_β:
 jmp xchain19_n18_α
.Lx41_0:
 .quad 0
# IR_ASSIGN gva
 xchain19_n17_α:
 mov rax, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain19_n18_α
 xchain19_n17_β:
 jmp xchain19_n18_α
# IR_VAR
 xchain19_n18_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain19_n19_α
 xchain19_n18_β:
 jmp xchain19_n20_α
# IR_MATCH_HEAD
 xchain19_n19_α:
 call rt_zls_mark@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rsp
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov dword ptr [r12 + 736], 0
.Lx45_0:
 mov r14d, dword ptr [r12 + 736]
 jmp xchain19_n21_α
 xchain19_n19_β:
 add dword ptr [r12 + 736], 1
 mov eax, dword ptr [r12 + 736]
 cmp eax, r15d
 jg .Lx45_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx45_1
 jmp .Lx45_0
.Lx45_1:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 744]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 752]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbp
 pop rbp
 jmp xchain19_n20_α
 xchain19_n20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn47: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 1200]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain19_n23_α
 jmp xchain19_n22_α
 xchain19_n20_β:
 jmp xchain19_n23_α
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
 xchain19_n21_α:
 lea rax, [rip + proc_PAT$0_α]
 xor ecx, ecx
 mov qword ptr [r12 + 784], rcx
 test rax, rax
 jz .Lx48_0
 mov qword ptr [r12 + 784], rax
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, 65536
 call rt_zls_alloc@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 792], rax
 mov rcx, qword ptr [r12 + 784]
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 je .Lx48_1
 mov rdi, qword ptr [r12 + 792]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 784], rax
 jmp xchain19_n19_β
.Lx48_1:
 jmp xchain19_n24_α
.Lx48_0:
 push r14
 push r15
 push r13
 lea rdi, [rip + .S6]
 xor esi, esi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_defer_open@PLT
.Lx48_2:
 test rax, rax
 je .Lx48_3
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
 jmp .Lx48_2
.Lx48_3:
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
 js xchain19_n19_β
 mov r14d, eax
 jmp xchain19_n24_α
 xchain19_n21_β:
 mov rcx, qword ptr [r12 + 784]
 test rcx, rcx
 jz xchain19_n19_β
 mov rdi, qword ptr [r12 + 792]
 mov esi, 1
 call rcx
 cmp eax, 1
 je .Lx48_1
 mov rdi, qword ptr [r12 + 792]
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_release@PLT
 mov rsp, rbp
 pop rbp
 xor eax, eax
 mov qword ptr [r12 + 784], rax
 jmp xchain19_n19_β
# IR_ASSIGN gva
 xchain19_n22_α:
 mov rax, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain19_n23_α
 xchain19_n22_β:
 jmp xchain19_n23_α
# IR_LIT_STRING
 xchain19_n23_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain19_n25_α
 xchain19_n23_β:
 jmp xchain19_n28_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "result: "
# IR_MATCH_RELEASE
 xchain19_n24_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 744]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
 mov rsp, qword ptr [r12 + 752]
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
.Lx52_1:
 test rax, rax
 je .Lx52_2
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
 jmp .Lx52_1
.Lx52_2:
 call rt_dcap_end_ok_close@PLT
 mov rsp, rbp
 pop rbp
 pop r13
 pop r15
 pop r14
 jmp xchain19_n26_α
# IR_VAR
 xchain19_n25_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain19_n27_α
 xchain19_n25_β:
 jmp xchain19_n28_α
# IR_VAR
 xchain19_n26_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain19_n29_α
 xchain19_n26_β:
 jmp xchain19_n20_α
 xchain19_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain19_n30_α
 xchain19_n27_β:
 jmp xchain19_n28_α
# IR_LIT_STRING
 xchain19_n28_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain19_n31_α
 xchain19_n28_β:
 jmp xchain19_n34_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "W: "
# IR_LIT_INTEGER
 xchain19_n29_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain19_n32_α
 xchain19_n29_β:
 jmp xchain19_n20_α
.Lx57_0:
 .quad 500000
# IR_ASSIGN global
 xchain19_n30_α:
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain19_n28_α
 xchain19_n30_β:
 jmp xchain19_n28_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain19_n31_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain19_n33_α
 xchain19_n31_β:
 jmp xchain19_n34_α
# IR_COERCE_NUMERIC
 xchain19_n32_α:
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 7
 je .Lx61_1
 cmp eax, 6
 jne .Lx61_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx61_0
.Lx61_1:
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 984], rax
 jmp .Lx61_2
.Lx61_0:
 lea rdi, [r12 + 1040]
 lea rsi, [r12 + 1008]
 lea rdx, [r12 + 976]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx61_2:
 jmp xchain19_n35_α
 xchain19_n32_β:
 jmp xchain19_n20_α
 xchain19_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain19_n36_α
 xchain19_n33_β:
 jmp xchain19_n34_α
# IR_LIT_STRING
 xchain19_n34_α:
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain19_n37_α
 xchain19_n34_β:
 jmp main_γ
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "ms: "
# IR_COERCE_NUMERIC
 xchain19_n35_α:
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 7
 je .Lx65_1
 cmp eax, 6
 jne .Lx65_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx65_0
.Lx65_1:
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 952], rax
 jmp .Lx65_2
.Lx65_0:
 lea rdi, [r12 + 1008]
 lea rsi, [r12 + 1040]
 lea rdx, [r12 + 944]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx65_2:
 jmp xchain19_n38_α
 xchain19_n35_β:
 jmp xchain19_n20_α
# IR_ASSIGN global
 xchain19_n36_α:
 mov rsi, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain19_n34_α
 xchain19_n36_β:
 jmp xchain19_n34_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain19_n37_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain19_n39_α
 xchain19_n37_β:
 jmp main_γ
# IR_CMP_TEST
 xchain19_n38_α:
 lea rdi, [r12 + 976]
 lea rsi, [r12 + 944]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain19_n20_α
 mov qword ptr [r12 + 912], 0
 mov qword ptr [r12 + 920], 0
 jmp xchain19_n40_α
 xchain19_n38_β:
 jmp xchain19_n20_α
# IR_VAR
 xchain19_n39_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain19_n41_α
 xchain19_n39_β:
 jmp main_γ
# IR_VAR
 xchain19_n40_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain19_n42_α
 xchain19_n40_β:
 jmp xchain19_n20_α
 xchain19_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1552]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [r12 + 1552]
 cmp eax, 6
 jne .Lx72_2
 mov eax, dword ptr [r12 + 1584]
 cmp eax, 6
 jne .Lx72_2
.Lx72_1:
 mov rax, qword ptr [r12 + 1560]
 mov rcx, qword ptr [r12 + 1592]
 sub rax, rcx
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain19_n43_α
.Lx72_0:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 lea r9, [r12 + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx72_3
.Lx72_2:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1584]
 mov rcx, qword ptr [r12 + 1592]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
.Lx72_3:
 jmp xchain19_n43_α
 xchain19_n41_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain19_n42_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain19_n44_α
 xchain19_n42_β:
 jmp xchain19_n20_α
.Lx73_0:
 .quad 1
 xchain19_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain19_n45_α
 xchain19_n43_β:
 jmp main_γ
 xchain19_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 100
 je .Lx75_0
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 6
 jne .Lx75_2
.Lx75_1:
 mov rax, qword ptr [r12 + 1112]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1072], 6
 mov qword ptr [r12 + 1080], rax
 jmp xchain19_n46_α
.Lx75_0:
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 lea r9, [r12 + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx75_3
.Lx75_2:
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1136]
 mov rcx, qword ptr [r12 + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain19_n20_α
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
.Lx75_3:
 jmp xchain19_n46_α
 xchain19_n44_β:
 jmp xchain19_n20_α
# IR_ASSIGN global
 xchain19_n45_α:
 mov rsi, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp main_γ
 xchain19_n45_β:
 jmp main_γ
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "OUTPUT"
 xchain19_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 call str_concat_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain19_n47_α
 xchain19_n46_β:
 jmp xchain19_n20_α
# IR_ASSIGN gva
 xchain19_n47_α:
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain19_n18_α
 xchain19_n47_β:
 jmp xchain19_n20_α
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
 mov rdi, qword ptr [r12 + 1616]
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
.S0: .string "W"
.S1: .string "aaa"
.S2: .string "bbb"
.S3: .string "ccc"
.S4: .string "ddd"
.S5: .string "abcd"
.S6: .string "PAT"
.text
