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
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 96], 0
  mov qword ptr [rsp + 104], 0
  mov qword ptr [rsp + 144], 0
  mov qword ptr [rsp + 152], 0
  mov qword ptr [rsp + 160], 0
  mov qword ptr [rsp + 168], rsp
mov qword ptr [rbp + 176], r8
mov dword ptr [rbp + 168], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [rbp + 144], rax
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain0_n0_α:
 jmp xchain0_n1_α
xchain0_n0_as:
 jmp proc_PAT$0_γ
 xchain0_n0_β:
 jmp xchain0_n3_β
xchain0_n0_af:
 jmp proc_PAT$0_ω
# IR_MATCH_ALT_NARY
 xchain0_n1_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 mov dword ptr [rsp + 4], 0
 jmp xchain0_n4_α
xchain0_n1_s0:
 jmp xchain0_n1_as
xchain0_n1_s1:
 jmp xchain0_n1_as
xchain0_n1_s2:
 jmp xchain0_n1_as
xchain0_n1_s3:
 jmp xchain0_n1_as
xchain0_n1_as:
 jmp xchain0_n2_α
 xchain0_n1_β:
 mov eax, dword ptr [rsp + 4]
 cmp eax, 0
 je xchain0_n4_β
 cmp eax, 1
 je xchain0_n5_β
 cmp eax, 2
 je xchain0_n6_β
 jmp xchain0_n7_β
xchain0_n1_af:
 add dword ptr [rsp + 4], 1
 mov r14d, dword ptr [rsp + 0]
 mov eax, dword ptr [rsp + 4]
 cmp eax, 1
 je xchain0_n5_α
 cmp eax, 2
 je xchain0_n6_α
 cmp eax, 3
 je xchain0_n7_α
 add rsp, 16
 jmp proc_PAT$0_ω
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain0_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain0_n8_α
 xchain0_n2_β:
 add rsp, 16
 jmp xchain0_n1_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain0_n3_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$0_γ
 xchain0_n3_β:
 sub r12, 24
 jmp xchain0_n8_β
# IR_MATCH_LIT
 xchain0_n4_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg xchain0_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 97
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+1]
 cmp eax, 97
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+2]
 cmp eax, 97
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_s0
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
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 98
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+1]
 cmp eax, 98
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+2]
 cmp eax, 98
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_s1
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
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 99
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+1]
 cmp eax, 99
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+2]
 cmp eax, 99
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_s2
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
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 100
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+1]
 cmp eax, 100
 jne xchain0_n1_af
 movzx eax, byte ptr [r13+rcx+2]
 cmp eax, 100
 jne xchain0_n1_af
 add r14d, 3
 jmp xchain0_n1_s3
 xchain0_n7_β:
 sub r14d, 3
 jmp xchain0_n1_af
# IR_MATCH_SPAN
 xchain0_n8_α:
 sub rsp, 16
 lea rdi, [rip + .C0]
 movsxd rcx, r14d
.Lx18_0:
 cmp ecx, r15d
 jge .Lx18_1
 movzx esi, byte ptr [r13+rcx]
 cmp byte ptr [rdi+rsi], 0
 je .Lx18_1
 add ecx, 1
 cmp ecx, r15d
 jge .Lx18_1
 movzx esi, byte ptr [r13+rcx]
 cmp byte ptr [rdi+rsi], 0
 je .Lx18_1
 add ecx, 1
 cmp ecx, r15d
 jge .Lx18_1
 movzx esi, byte ptr [r13+rcx]
 cmp byte ptr [rdi+rsi], 0
 je .Lx18_1
 add ecx, 1
 cmp ecx, r15d
 jge .Lx18_1
 movzx esi, byte ptr [r13+rcx]
 cmp byte ptr [rdi+rsi], 0
 je .Lx18_1
 add ecx, 1
 jmp .Lx18_0
.Lx18_1:
 cmp ecx, r14d
 jg .Lx18_240
 add rsp, 16
 add rsp, 16
 jmp xchain0_n1_β
.Lx18_240:
 mov dword ptr [rsp + 4], r14d
 mov r14d, ecx
 jmp xchain0_n3_α
 xchain0_n8_β:
 xchain0_n8_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 add rsp, 16
 jmp xchain0_n1_β
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "PAT"
  .Lgvan1: .string "W"
  .Lgvan2: .string "S"
  .Lgvan3: .string "T1"
  .Lgvan4: .string "N"
  .Lgvan5: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 6
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 6
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
  mov qword ptr [rsp + 1624], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain19_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain19_n1_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain19_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain19_n2_α
.Lx21_0:
 .quad 1
 xchain19_n2_α:
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
  .Lrkfn23: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn23]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain19_n3_α
 jmp xchain19_n3_α
 xchain19_n2_β:
 jmp xchain19_n3_α
# IR_LIT_STRING
 xchain19_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain19_n4_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain19_n4_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain19_n5_α
.Lx25_0:
 .quad 1000000000
 xchain19_n5_α:
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
  .Lrkfn27: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn27]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain19_n6_α
 jmp xchain19_n6_α
 xchain19_n5_β:
 jmp xchain19_n6_α
# IR_LIT_STRING
 xchain19_n6_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain19_n7_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ANCHOR"
# IR_LIT_INTEGER
 xchain19_n7_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain19_n8_α
.Lx29_0:
 .quad 0
 xchain19_n8_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn31: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn31]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain19_n9_α
 jmp xchain19_n9_α
 xchain19_n8_β:
 jmp xchain19_n9_α
# IR_LIT_STRING
 xchain19_n9_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain19_n10_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "PAT$0"
 xchain19_n10_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn34: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain19_n12_α
 jmp xchain19_n11_α
 xchain19_n10_β:
 jmp xchain19_n12_α
# IR_ASSIGN gva
 xchain19_n11_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain19_n12_α
# IR_LIT_STRING
 xchain19_n12_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain19_n13_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
# IR_ASSIGN gva
 xchain19_n13_α:
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain19_n14_α
 xchain19_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn39]
 lea rsi, [rbp + 656]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain19_n16_α
 jmp xchain19_n15_α
 xchain19_n14_β:
 jmp xchain19_n16_α
# IR_ASSIGN gva
 xchain19_n15_α:
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain19_n16_α
# IR_LIT_INTEGER
 xchain19_n16_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain19_n17_α
.Lx41_0:
 .quad 0
# IR_ASSIGN gva
 xchain19_n17_α:
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain19_n18_α
# IR_VAR
 xchain19_n18_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain19_n19_α
# IR_MATCH_HEAD
 xchain19_n19_α:
 mov qword ptr [rbp + 776], rbp
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 768], r12
 mov qword ptr [rbp + 752], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 744], rax
 mov dword ptr [rbp + 736], 0
.Lx45_0:
 mov r14d, dword ptr [rbp + 736]
 jmp xchain19_n21_α
 xchain19_n19_β:
 add dword ptr [rbp + 736], 1
 mov eax, dword ptr [rbp + 736]
 cmp eax, r15d
 jg .Lx45_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx45_1
 jmp .Lx45_0
.Lx45_1:
 mov rax, qword ptr [rbp + 744]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 752]
 mov r12, qword ptr [rbp + 768]
 mov rbp, qword ptr [rbp + 776]
 jmp xchain19_n20_α
 xchain19_n20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn47: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn47]
 lea rsi, [rbp + 1200]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain19_n23_α
 jmp xchain19_n22_α
 xchain19_n20_β:
 jmp xchain19_n23_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain19_n21_α:
 lea rsi, [rip + g_sno_defer_cells+0]
 mov rax, qword ptr [rsi + 0]
 test rax, rax
 jne .Lx48_11
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 cmp eax, 3
 jne .Lx48_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx48_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx48_10
.Lx48_9:
 xor eax, eax
.Lx48_10:
 lea rsi, [rip + g_sno_defer_cells+0]
 mov qword ptr [rsi + 0], rax
.Lx48_11:
 test rax, rax
 jz .Lx48_0
 mov r8d, 1
 lea rcx, [rip + .Lx48_4]
 lea rdx, [rip + .Lx48_5]
 jmp rax
.Lx48_4:
 lea rcx, [rip + g_scan_hit_start]
 mov rax, qword ptr [rcx]
 mov dword ptr [rbp + 736], eax
 jmp xchain19_n24_α
.Lx48_5:
 jmp xchain19_n19_β
.Lx48_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S1]
 xor esi, esi
 call rt_defer_open@PLT
.Lx48_2:
 test rax, rax
 je .Lx48_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx48_7]
 lea rdx, [rip + .Lx48_8]
 jmp rax
.Lx48_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx48_2
.Lx48_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx48_2
.Lx48_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain19_n19_β
 mov r14d, eax
 lea rax, [rip + .Lx48_6]
 sub rsp, 8
 push rax
 jmp xchain19_n24_α
.Lx48_6:
 add rsp, 16
 jmp xchain19_n19_β
 xchain19_n21_β:
 jmp qword ptr [rsp]
# IR_ASSIGN gva
 xchain19_n22_α:
 mov rax, qword ptr [rbp + 1184]
 mov rdx, qword ptr [rbp + 1192]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain19_n23_α
# IR_LIT_STRING
 xchain19_n23_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain19_n25_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "result: "
# IR_MATCH_RELEASE
 xchain19_n24_α:
 mov rax, qword ptr [rbp + 744]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 752]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 800]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx52_1:
 test rax, rax
 je .Lx52_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx52_3]
 lea rdx, [rip + .Lx52_4]
 jmp rax
.Lx52_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx52_1
.Lx52_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx52_1
.Lx52_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 768]
 mov rbp, qword ptr [rbp + 776]
 jmp xchain19_n26_α
# IR_VAR
 xchain19_n25_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain19_n27_α
# IR_VAR
 xchain19_n26_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain19_n29_α
 xchain19_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain19_n30_α
# IR_LIT_STRING
 xchain19_n28_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain19_n31_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "W: "
# IR_LIT_INTEGER
 xchain19_n29_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain19_n32_α
.Lx57_0:
 .quad 500000
# IR_ASSIGN global
 xchain19_n30_α:
 mov rsi, qword ptr [rbp + 1232]
 mov rdx, qword ptr [rbp + 1240]
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain19_n28_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain19_n31_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain19_n33_α
# IR_COERCE_NUMERIC
 xchain19_n32_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx61_1
 cmp eax, 6
 jne .Lx61_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx61_0
.Lx61_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
 jmp xchain19_n35_α
.Lx61_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 1008]
 lea rdx, [rbp + 976]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain19_n35_α
 xchain19_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1408]
 mov rcx, qword ptr [rbp + 1416]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain19_n36_α
# IR_LIT_STRING
 xchain19_n34_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain19_n37_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "ms: "
# IR_COERCE_NUMERIC
 xchain19_n35_α:
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 7
 je .Lx65_1
 cmp eax, 6
 jne .Lx65_0
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 6
 jne .Lx65_0
.Lx65_1:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
 jmp xchain19_n38_α
.Lx65_0:
 lea rdi, [rbp + 1008]
 lea rsi, [rbp + 1040]
 lea rdx, [rbp + 944]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain19_n38_α
# IR_ASSIGN global
 xchain19_n36_α:
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain19_n34_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain19_n37_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain19_n39_α
# IR_CMP_TEST
 xchain19_n38_α:
 lea rdi, [rbp + 976]
 lea rsi, [rbp + 944]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain19_n20_α
 mov qword ptr [rbp + 912], 0
 mov qword ptr [rbp + 920], 0
 jmp xchain19_n40_α
# IR_VAR
 xchain19_n39_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain19_n41_α
# IR_VAR
 xchain19_n40_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain19_n42_α
 xchain19_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 1584]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 1552]
 cmp eax, 6
 jne .Lx72_2
 mov eax, dword ptr [rbp + 1584]
 cmp eax, 6
 jne .Lx72_2
.Lx72_1:
 mov rax, qword ptr [rbp + 1560]
 mov rcx, qword ptr [rbp + 1592]
 sub rax, rcx
 mov qword ptr [rbp + 1520], 6
 mov qword ptr [rbp + 1528], rax
 jmp xchain19_n43_α
.Lx72_0:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 mov rdx, qword ptr [rbp + 1584]
 mov rcx, qword ptr [rbp + 1592]
 mov r8d, 1
 lea r9, [rbp + 1520]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain19_n43_α
.Lx72_2:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 mov rdx, qword ptr [rbp + 1584]
 mov rcx, qword ptr [rbp + 1592]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain19_n43_α
 xchain19_n41_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain19_n42_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain19_n44_α
.Lx73_0:
 .quad 1
 xchain19_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1520]
 mov rcx, qword ptr [rbp + 1528]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain19_n45_α
 xchain19_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx75_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx75_2
.Lx75_1:
 mov rax, qword ptr [rbp + 1112]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1072], 6
 mov qword ptr [rbp + 1080], rax
 jmp xchain19_n46_α
.Lx75_0:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 lea r9, [rbp + 1072]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain19_n46_α
.Lx75_2:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain19_n20_α
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain19_n46_α
 xchain19_n44_β:
 jmp xchain19_n20_α
# IR_ASSIGN global
 xchain19_n45_α:
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp main_γ
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "OUTPUT"
 xchain19_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain19_n47_α
# IR_ASSIGN gva
 xchain19_n47_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain19_n18_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1624]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1624]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "W"
.S1: .string "PAT"
.text
.section .rodata
.C0:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
