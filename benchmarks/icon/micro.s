  .intel_syntax noprefix
  .text
  .globl proc_report_α
proc_report_α:
#=======================================================================================================================
    .global proc_report_α
    .global proc_report_β
    .global proc_report_γ
    .global proc_report_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_report_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain0_n1_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 lea rdx, [r12 + 448]
 mov ecx, 0
 call rt_call_value@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
# IR_KEYWORD_read
 xchain0_n2_α:
 mov rdi, qword ptr [rip + .Lx5_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "&errout"
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n2_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "."
 xchain0_n5_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn9: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
# IR_VAR gva
 xchain0_n7_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_RETURN
 xchain0_n8_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_report_γ
 xchain0_n9_α:
  .section .rodata
  .Lcall10_pname: .string "measure"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n10_α
xchain0_n9_β:
 jmp xchain0_n8_α
# IR_VAR gva
 xchain0_n10_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n8_α
 xchain0_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx16_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx16_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx16_2
.Lx16_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n12_α
.Lx16_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx16_3
.Lx16_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n8_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx16_3:
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n8_α
.Lx17_0:
 .quad 10
 xchain0_n13_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+128]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn19: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n8_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "  "
# IR_VAR
 xchain0_n15_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n8_α
 xchain0_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+48]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+64]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 72], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+80]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn24: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 48]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n8_α
 xchain0_n16_β:
 jmp xchain0_n8_α
proc_report_β:
jmp proc_report_ω
proc_report_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 464]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_report_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_measure_α
proc_measure_α:
#=======================================================================================================================
    .global proc_measure_α
    .global proc_measure_β
    .global proc_measure_γ
    .global proc_measure_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1440], rax
 pop rsi
proc_measure_α_body:
# IR_VAR
 xchain25_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp xchain25_n2_α
# IR_LIT_INTEGER
 xchain25_n1_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain25_n3_α
 xchain25_n1_β:
 jmp xchain25_n2_α
.Lx28_0:
 .quad 1
# IR_LIT_INTEGER
 xchain25_n2_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain25_n4_α
 xchain25_n2_β:
 jmp xchain25_n5_α
.Lx29_0:
 .quad 1
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain25_n3_α:
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 lea rdx, [r12 + 1392]
 mov ecx, 1
 call rt_call_value@PLT
 cmp eax, 99
 je xchain25_n2_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain25_n2_α
 xchain25_n3_β:
 jmp xchain25_n2_α
 xchain25_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain25_n5_α
 xchain25_n4_β:
 jmp xchain25_n5_α
# IR_KEYWORD_read
 xchain25_n5_α:
 mov rdi, qword ptr [rip + .Lx33_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain25_n6_α
 xchain25_n5_β:
 jmp xchain25_n8_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "&time"
 xchain25_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain25_n8_α
 xchain25_n6_β:
 jmp xchain25_n8_α
 xchain25_n7_α:
 jmp xchain25_n8_α
xchain25_n7_β:
 jmp xchain25_n8_α
# IR_VAR
 xchain25_n8_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1256], rax
 jmp xchain25_n9_α
 xchain25_n8_β:
 jmp xchain25_n10_α
# IR_LIT_INTEGER
 xchain25_n9_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain25_n11_α
 xchain25_n9_β:
 jmp xchain25_n10_α
.Lx38_0:
 .quad 10
# IR_VAR
 xchain25_n10_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1208], rax
 jmp xchain25_n12_α
 xchain25_n10_β:
 jmp xchain25_n13_α
 xchain25_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 100
 je .Lx41_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx41_0
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 6
 jne .Lx41_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx41_2
.Lx41_1:
 mov rax, qword ptr [r12 + 1512]
 mov rcx, qword ptr [r12 + 1272]
 imul rax, rcx
 mov qword ptr [r12 + 1232], 6
 mov qword ptr [r12 + 1240], rax
 jmp xchain25_n14_α
.Lx41_0:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 2
 lea r9, [r12 + 1232]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx41_3
.Lx41_2:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n10_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
.Lx41_3:
 jmp xchain25_n14_α
 xchain25_n11_β:
 jmp xchain25_n10_α
 xchain25_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain25_n13_α
 xchain25_n12_β:
 jmp xchain25_n13_α
# IR_VAR
 xchain25_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1112], rax
 jmp xchain25_n15_α
 xchain25_n13_β:
 jmp xchain25_n16_α
 xchain25_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain25_n10_α
 xchain25_n14_β:
 jmp xchain25_n10_α
# IR_VAR
 xchain25_n15_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1176], rax
 jmp xchain25_n17_α
 xchain25_n15_β:
 jmp xchain25_n16_α
# IR_KEYWORD_read
 xchain25_n16_α:
 mov rdi, qword ptr [rip + .Lx48_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain25_n18_α
 xchain25_n16_β:
 jmp xchain25_n19_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "&time"
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain25_n17_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 lea rdx, [r12 + 1136]
 mov ecx, 1
 call rt_call_value@PLT
 cmp eax, 99
 je xchain25_n16_α
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain25_n16_α
 xchain25_n17_β:
 jmp xchain25_n16_α
 xchain25_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain25_n19_α
 xchain25_n18_β:
 jmp xchain25_n19_α
# IR_VAR
 xchain25_n19_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1032], rax
 jmp xchain25_n20_α
 xchain25_n19_β:
 jmp xchain25_n21_α
# IR_VAR
 xchain25_n20_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1048], rax
 jmp xchain25_n22_α
 xchain25_n20_β:
 jmp xchain25_n21_α
# IR_VAR
 xchain25_n21_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 904], rax
 jmp xchain25_n23_α
 xchain25_n21_β:
 jmp xchain25_n8_α
 xchain25_n22_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx58_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx58_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx58_2
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx58_2
.Lx58_1:
 mov rax, qword ptr [r12 + 1528]
 mov rcx, qword ptr [r12 + 1480]
 sub rax, rcx
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain25_n24_α
.Lx58_0:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 1
 lea r9, [r12 + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx58_3
.Lx58_2:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n21_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
.Lx58_3:
 jmp xchain25_n24_α
 xchain25_n22_β:
 jmp xchain25_n21_α
# IR_VAR gva
 xchain25_n23_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n8_α
 xchain25_n24_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+992]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn61: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain25_n21_α
 jmp xchain25_n26_α
 xchain25_n24_β:
 jmp xchain25_n21_α
# IR_LIT_INTEGER
 xchain25_n25_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain25_n27_α
 xchain25_n25_β:
 jmp xchain25_n8_α
.Lx62_0:
 .quad 20
 xchain25_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain25_n21_α
 xchain25_n26_β:
 jmp xchain25_n21_α
 xchain25_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 928]
 cmp eax, 100
 je .Lx64_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx64_0
 mov eax, dword ptr [r12 + 928]
 cmp eax, 6
 jne .Lx64_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx64_2
.Lx64_1:
 mov rax, qword ptr [r12 + 936]
 mov rcx, qword ptr [r12 + 952]
 cqo
 idiv rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain25_n28_α
.Lx64_0:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 3
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx64_3
.Lx64_2:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n8_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx64_3:
 jmp xchain25_n28_α
 xchain25_n27_β:
 jmp xchain25_n8_α
 xchain25_n28_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx65_2
 mov eax, dword ptr [r12 + 912]
 cmp eax, 6
 jne .Lx65_2
.Lx65_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 920]
 cmp rax, rcx
 jl xchain25_n8_α
 mov rcx, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rcx
 mov rcx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rcx
 jmp xchain25_n30_α
.Lx65_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 8
 lea r9, [r12 + 880]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx65_1
 cmp eax, 1
 je xchain25_n8_α
 jmp xchain25_n30_α
.Lx65_2:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain25_n8_α
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
 jmp xchain25_n30_α
 xchain25_n28_β:
 jmp xchain25_n8_α
 xchain25_n29_α:
 jmp xchain25_n30_α
xchain25_n29_β:
 jmp xchain25_n30_α
# IR_LIT_REAL
 xchain25_n30_α:
 mov qword ptr [r12 + 752], 7
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain25_n31_α
 xchain25_n30_β:
 jmp xchain25_n33_α
.Lx67_0:
 .quad 4607632778762754458
# IR_VAR
 xchain25_n31_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 776], rax
 jmp xchain25_n32_α
 xchain25_n31_β:
 jmp xchain25_n33_α
 xchain25_n32_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n33_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain25_n34_α
 xchain25_n32_β:
 jmp xchain25_n33_α
 xchain25_n33_α:
# BOX IR_CALL collect(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn72: .string "collect"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 656]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain25_n35_α
 jmp xchain25_n35_α
 xchain25_n33_β:
 jmp xchain25_n35_α
# IR_VAR gva
 xchain25_n34_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain25_n36_α
 xchain25_n34_β:
 jmp xchain25_n33_α
# IR_KEYWORD_read
 xchain25_n35_α:
 mov rdi, qword ptr [rip + .Lx74_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain25_n37_α
 xchain25_n35_β:
 jmp xchain25_n39_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "&time"
 xchain25_n36_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n33_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain25_n38_α
 xchain25_n36_β:
 jmp xchain25_n33_α
 xchain25_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain25_n39_α
 xchain25_n37_β:
 jmp xchain25_n39_α
# IR_VAR
 xchain25_n38_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 840], rax
 jmp xchain25_n40_α
 xchain25_n38_β:
 jmp xchain25_n33_α
# IR_VAR
 xchain25_n39_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 552], rax
 jmp xchain25_n41_α
 xchain25_n39_β:
 jmp xchain25_n39_α
 xchain25_n40_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+816]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn82: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain25_n33_α
 jmp xchain25_n42_α
 xchain25_n40_β:
 jmp xchain25_n33_α
# IR_KEYWORD_read
 xchain25_n41_α:
 mov rdi, qword ptr [rip + .Lx83_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain25_n43_α
 xchain25_n41_β:
 jmp xchain25_n39_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "&time"
 xchain25_n42_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n33_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain25_n44_α
 xchain25_n42_β:
 jmp xchain25_n33_α
 xchain25_n43_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx85_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx85_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx85_2
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx85_2
.Lx85_1:
 mov rax, qword ptr [r12 + 1480]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 je xchain25_n39_α
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rcx
 jmp xchain25_n45_α
.Lx85_0:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 10
 lea r9, [r12 + 528]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx85_1
 cmp eax, 1
 je xchain25_n39_α
 jmp xchain25_n45_α
.Lx85_2:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain25_n39_α
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 jmp xchain25_n45_α
 xchain25_n43_β:
 jmp xchain25_n39_α
 xchain25_n44_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+688]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn87: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain25_n33_α
 jmp xchain25_n46_α
 xchain25_n44_β:
 jmp xchain25_n33_α
 xchain25_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain25_n47_α
 xchain25_n45_β:
 jmp xchain25_n39_α
 xchain25_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain25_n33_α
 xchain25_n46_β:
 jmp xchain25_n33_α
# IR_VAR
 xchain25_n47_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain25_n48_α
 xchain25_n47_β:
 jmp xchain25_n49_α
# IR_VAR
 xchain25_n48_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 504], rax
 jmp xchain25_n50_α
 xchain25_n48_β:
 jmp xchain25_n49_α
# IR_KEYWORD_read
 xchain25_n49_α:
 mov rdi, qword ptr [rip + .Lx94_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain25_n51_α
 xchain25_n49_β:
 jmp xchain25_n52_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "&time"
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain25_n50_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 lea rdx, [r12 + 464]
 mov ecx, 1
 call rt_call_value@PLT
 cmp eax, 99
 je xchain25_n49_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain25_n49_α
 xchain25_n50_β:
 jmp xchain25_n49_α
 xchain25_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain25_n52_α
 xchain25_n51_β:
 jmp xchain25_n52_α
# IR_VAR
 xchain25_n52_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 360], rax
 jmp xchain25_n53_α
 xchain25_n52_β:
 jmp xchain25_n54_α
# IR_VAR
 xchain25_n53_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 376], rax
 jmp xchain25_n55_α
 xchain25_n53_β:
 jmp xchain25_n54_α
# IR_VAR
 xchain25_n54_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 232], rax
 jmp xchain25_n56_α
 xchain25_n54_β:
 jmp xchain25_n57_α
 xchain25_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 1520]
 cmp eax, 6
 jne .Lx00001_2
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx00001_2
.Lx00001_1:
 mov rax, qword ptr [r12 + 1528]
 mov rcx, qword ptr [r12 + 1480]
 sub rax, rcx
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain25_n58_α
.Lx00001_0:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 1
 lea r9, [r12 + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00001_3
.Lx00001_2:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1472]
 mov rcx, qword ptr [r12 + 1480]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n54_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
.Lx00001_3:
 jmp xchain25_n58_α
 xchain25_n55_β:
 jmp xchain25_n54_α
# IR_VAR
 xchain25_n56_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 280], rax
 jmp xchain25_n59_α
 xchain25_n56_β:
 jmp xchain25_n57_α
# IR_VAR
 xchain25_n57_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 152], rax
 jmp xchain25_n60_α
 xchain25_n57_β:
 jmp xchain25_n61_α
 xchain25_n58_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+320]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn110: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn110]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain25_n54_α
 jmp xchain25_n62_α
 xchain25_n58_β:
 jmp xchain25_n54_α
 xchain25_n59_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn112: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain25_n57_α
 jmp xchain25_n63_α
 xchain25_n59_β:
 jmp xchain25_n57_α
# IR_LIT_INTEGER
 xchain25_n60_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain25_n64_α
 xchain25_n60_β:
 jmp xchain25_n61_α
.Lx00002_0:
 .quad 1000000
# IR_VAR
 xchain25_n61_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 56], rax
 jmp xchain25_n65_α
 xchain25_n61_β:
 jmp proc_measure_ω
 xchain25_n62_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain25_n54_α
 xchain25_n62_β:
 jmp xchain25_n54_α
 xchain25_n63_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 248]
 cqo
 idiv rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain25_n66_α
.Lx00003_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 3
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00003_3
.Lx00003_2:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n57_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00003_3:
 jmp xchain25_n66_α
 xchain25_n63_β:
 jmp xchain25_n57_α
 xchain25_n64_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx00004_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00004_2
.Lx00004_1:
 mov rax, qword ptr [r12 + 1480]
 mov rcx, qword ptr [r12 + 168]
 imul rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain25_n67_α
.Lx00004_0:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 2
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00004_3
.Lx00004_2:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n61_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
.Lx00004_3:
 jmp xchain25_n67_α
 xchain25_n64_β:
 jmp xchain25_n61_α
# IR_RETURN
 xchain25_n65_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_measure_γ
 xchain25_n66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain25_n57_α
 xchain25_n66_β:
 jmp xchain25_n57_α
# IR_LIT_REAL
 xchain25_n67_α:
 mov qword ptr [r12 + 176], 7
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain25_n68_α
 xchain25_n67_β:
 jmp xchain25_n61_α
.Lx00005_0:
 .quad 4602678819172646912
 xchain25_n68_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n61_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain25_n69_α
 xchain25_n68_β:
 jmp xchain25_n61_α
 xchain25_n69_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn124: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain25_n61_α
 jmp xchain25_n70_α
 xchain25_n69_β:
 jmp xchain25_n61_α
 xchain25_n70_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain25_n61_α
 xchain25_n70_β:
 jmp xchain25_n61_α
proc_measure_β:
jmp proc_measure_ω
proc_measure_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1440]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_measure_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nothing_α
proc_nothing_α:
#=======================================================================================================================
    .global proc_nothing_α
    .global proc_nothing_β
    .global proc_nothing_γ
    .global proc_nothing_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_nothing_α_body:
# IR_VAR
 xchain00006_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00006_n1_α
 xchain00006_n0_β:
 jmp xchain00006_n2_α
# IR_UNOP
 xchain00006_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00006_n2_α
 cmp eax, 0
 jne xchain00006_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00006_n3_α
 xchain00006_n1_β:
 jmp xchain00006_n2_α
# IR_LIT_INTEGER
 xchain00006_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00006_n4_α
 xchain00006_n2_β:
 jmp proc_nothing_ω
.Lx00007_0:
 .quad 1
# IR_LIT_STRING
 xchain00006_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00006_n5_α
 xchain00006_n3_β:
 jmp proc_nothing_ω
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "nothing"
# IR_VAR
 xchain00006_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00006_n6_α
 xchain00006_n4_β:
 jmp proc_nothing_ω
# IR_RETURN
 xchain00006_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nothing_γ
# IR_TO
 xchain00006_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00009_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nothing_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00006_n7_α
 xchain00006_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00009_0
# IR_LIT_INTEGER
 xchain00006_n7_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00006_n6_β
 xchain00006_n7_β:
 jmp xchain00006_n6_β
.Lx00010_0:
 .quad 0
proc_nothing_β:
jmp proc_nothing_ω
proc_nothing_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nothing_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_uplus_α
proc_uplus_α:
#=======================================================================================================================
    .global proc_uplus_α
    .global proc_uplus_β
    .global proc_uplus_γ
    .global proc_uplus_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_uplus_α_body:
# IR_VAR
 xchain00011_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n2_α
# IR_UNOP
 xchain00011_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00011_n2_α
 cmp eax, 0
 jne xchain00011_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00011_n3_α
 xchain00011_n1_β:
 jmp xchain00011_n2_α
# IR_LIT_INTEGER
 xchain00011_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00011_n4_α
 xchain00011_n2_β:
 jmp proc_uplus_ω
.Lx00012_0:
 .quad 1
# IR_LIT_STRING
 xchain00011_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp proc_uplus_ω
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "+407"
# IR_VAR
 xchain00011_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00011_n6_α
 xchain00011_n4_β:
 jmp proc_uplus_ω
# IR_RETURN
 xchain00011_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uplus_γ
# IR_TO
 xchain00011_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00014_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00011_n7_α
 xchain00011_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00014_0
# IR_LIT_INTEGER
 xchain00011_n7_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00011_n6_β
 xchain00011_n7_β:
 jmp xchain00011_n6_β
.Lx00015_0:
 .quad 407
proc_uplus_β:
jmp proc_uplus_ω
proc_uplus_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_uplus_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_uplusr_α
proc_uplusr_α:
#=======================================================================================================================
    .global proc_uplusr_α
    .global proc_uplusr_β
    .global proc_uplusr_γ
    .global proc_uplusr_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_uplusr_α_body:
# IR_VAR
 xchain00016_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00016_n1_α
 xchain00016_n0_β:
 jmp xchain00016_n2_α
# IR_UNOP
 xchain00016_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00016_n2_α
 cmp eax, 0
 jne xchain00016_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00016_n3_α
 xchain00016_n1_β:
 jmp xchain00016_n2_α
# IR_LIT_INTEGER
 xchain00016_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00016_n4_α
 xchain00016_n2_β:
 jmp proc_uplusr_ω
.Lx00017_0:
 .quad 1
# IR_LIT_STRING
 xchain00016_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00016_n5_α
 xchain00016_n3_β:
 jmp proc_uplusr_ω
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "+7.25"
# IR_VAR
 xchain00016_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00016_n6_α
 xchain00016_n4_β:
 jmp proc_uplusr_ω
# IR_RETURN
 xchain00016_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uplusr_γ
# IR_TO
 xchain00016_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00019_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00016_n7_α
 xchain00016_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00019_0
# IR_LIT_REAL
 xchain00016_n7_α:
 mov qword ptr [r12 + 96], 7
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00016_n6_β
 xchain00016_n7_β:
 jmp xchain00016_n6_β
.Lx00020_0:
 .quad 4619848792751996928
proc_uplusr_β:
jmp proc_uplusr_ω
proc_uplusr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_uplusr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_absf_α
proc_absf_α:
#=======================================================================================================================
    .global proc_absf_α
    .global proc_absf_β
    .global proc_absf_γ
    .global proc_absf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_absf_α_body:
# IR_VAR
 xchain00021_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00021_n1_α
 xchain00021_n0_β:
 jmp xchain00021_n2_α
# IR_UNOP
 xchain00021_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00021_n2_α
 cmp eax, 0
 jne xchain00021_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00021_n3_α
 xchain00021_n1_β:
 jmp xchain00021_n2_α
# IR_LIT_INTEGER
 xchain00021_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00021_n4_α
 xchain00021_n2_β:
 jmp proc_absf_ω
.Lx00022_0:
 .quad 1
# IR_LIT_STRING
 xchain00021_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00021_n5_α
 xchain00021_n3_β:
 jmp proc_absf_ω
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "abs(-3)"
# IR_VAR
 xchain00021_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00021_n6_α
 xchain00021_n4_β:
 jmp proc_absf_ω
# IR_RETURN
 xchain00021_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_absf_γ
# IR_TO
 xchain00021_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00024_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00021_n7_α
 xchain00021_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00024_0
# IR_LIT_INTEGER
 xchain00021_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00021_n8_α
 xchain00021_n7_β:
 jmp xchain00021_n6_β
.Lx00025_0:
 .quad 18446744073709551613
 xchain00021_n8_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn175: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00021_n6_β
 jmp xchain00021_n6_β
 xchain00021_n8_β:
 jmp xchain00021_n6_β
proc_absf_β:
jmp proc_absf_ω
proc_absf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_absf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_intadd_α
proc_intadd_α:
#=======================================================================================================================
    .global proc_intadd_α
    .global proc_intadd_β
    .global proc_intadd_γ
    .global proc_intadd_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_intadd_α_body:
# IR_VAR
 xchain00026_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00026_n1_α
 xchain00026_n0_β:
 jmp xchain00026_n2_α
# IR_UNOP
 xchain00026_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00026_n2_α
 cmp eax, 0
 jne xchain00026_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00026_n3_α
 xchain00026_n1_β:
 jmp xchain00026_n2_α
# IR_LIT_INTEGER
 xchain00026_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00026_n4_α
 xchain00026_n2_β:
 jmp proc_intadd_ω
.Lx00027_0:
 .quad 1
# IR_LIT_STRING
 xchain00026_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00026_n5_α
 xchain00026_n3_β:
 jmp proc_intadd_ω
.Lx00028_0:
 .quad .Lx00028_0_s
.Lx00028_0_s:
 .string "4 + 7"
# IR_VAR
 xchain00026_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00026_n6_α
 xchain00026_n4_β:
 jmp proc_intadd_ω
# IR_RETURN
 xchain00026_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intadd_γ
# IR_TO
 xchain00026_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00029_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00026_n7_α
 xchain00026_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00029_0
# IR_LIT_INTEGER
 xchain00026_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00026_n8_α
 xchain00026_n7_β:
 jmp xchain00026_n6_β
.Lx00030_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00026_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00026_n9_α
 xchain00026_n8_β:
 jmp xchain00026_n6_β
.Lx00031_0:
 .quad 7
 xchain00026_n9_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 128]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00032_2
 mov eax, dword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx00032_2
.Lx00032_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 add rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00026_n6_β
.Lx00032_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 0
 lea r9, [r12 + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00032_3
.Lx00032_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00026_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
.Lx00032_3:
 jmp xchain00026_n6_β
 xchain00026_n9_β:
 jmp xchain00026_n6_β
proc_intadd_β:
jmp proc_intadd_ω
proc_intadd_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_intadd_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_intcmp_α
proc_intcmp_α:
#=======================================================================================================================
    .global proc_intcmp_α
    .global proc_intcmp_β
    .global proc_intcmp_γ
    .global proc_intcmp_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_intcmp_α_body:
# IR_VAR
 xchain00033_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00033_n1_α
 xchain00033_n0_β:
 jmp xchain00033_n2_α
# IR_UNOP
 xchain00033_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00033_n2_α
 cmp eax, 0
 jne xchain00033_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00033_n3_α
 xchain00033_n1_β:
 jmp xchain00033_n2_α
# IR_LIT_INTEGER
 xchain00033_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00033_n4_α
 xchain00033_n2_β:
 jmp proc_intcmp_ω
.Lx00034_0:
 .quad 1
# IR_LIT_STRING
 xchain00033_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00033_n5_α
 xchain00033_n3_β:
 jmp proc_intcmp_ω
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "4 < 7"
# IR_VAR
 xchain00033_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00033_n6_α
 xchain00033_n4_β:
 jmp proc_intcmp_ω
# IR_RETURN
 xchain00033_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcmp_γ
# IR_TO
 xchain00033_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00036_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00033_n7_α
 xchain00033_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00036_0
# IR_LIT_INTEGER
 xchain00033_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00033_n8_α
 xchain00033_n7_β:
 jmp xchain00033_n6_β
.Lx00037_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00033_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00033_n9_α
 xchain00033_n8_β:
 jmp xchain00033_n6_β
.Lx00038_0:
 .quad 7
 xchain00033_n9_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [r12 + 128]
 cmp eax, 100
 je .Lx00039_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00039_2
 mov eax, dword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx00039_2
.Lx00039_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 cmp rax, rcx
 jge xchain00033_n6_β
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rcx
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rcx
 jmp xchain00033_n6_β
.Lx00039_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 5
 lea r9, [r12 + 96]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00039_1
 cmp eax, 1
 je xchain00033_n6_β
 jmp xchain00033_n6_β
.Lx00039_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00033_n6_β
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 jmp xchain00033_n6_β
 xchain00033_n9_β:
 jmp xchain00033_n6_β
proc_intcmp_β:
jmp proc_intcmp_ω
proc_intcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_intcmp_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_intpow_α
proc_intpow_α:
#=======================================================================================================================
    .global proc_intpow_α
    .global proc_intpow_β
    .global proc_intpow_γ
    .global proc_intpow_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_intpow_α_body:
# IR_VAR
 xchain00040_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00040_n1_α
 xchain00040_n0_β:
 jmp xchain00040_n2_α
# IR_UNOP
 xchain00040_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00040_n2_α
 cmp eax, 0
 jne xchain00040_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00040_n3_α
 xchain00040_n1_β:
 jmp xchain00040_n2_α
# IR_LIT_INTEGER
 xchain00040_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00040_n4_α
 xchain00040_n2_β:
 jmp proc_intpow_ω
.Lx00041_0:
 .quad 1
# IR_LIT_STRING
 xchain00040_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00040_n5_α
 xchain00040_n3_β:
 jmp proc_intpow_ω
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "4 ^ 7"
# IR_VAR
 xchain00040_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00040_n6_α
 xchain00040_n4_β:
 jmp proc_intpow_ω
# IR_RETURN
 xchain00040_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intpow_γ
# IR_TO
 xchain00040_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00043_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00040_n7_α
 xchain00040_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00043_0
# IR_LIT_INTEGER
 xchain00040_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00040_n8_α
 xchain00040_n7_β:
 jmp xchain00040_n6_β
.Lx00044_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00040_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00040_n9_α
 xchain00040_n8_β:
 jmp xchain00040_n6_β
.Lx00045_0:
 .quad 7
 xchain00040_n9_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00040_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00040_n6_β
 xchain00040_n9_β:
 jmp xchain00040_n6_β
proc_intpow_β:
jmp proc_intpow_ω
proc_intpow_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_intpow_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_realcmp_α
proc_realcmp_α:
#=======================================================================================================================
    .global proc_realcmp_α
    .global proc_realcmp_β
    .global proc_realcmp_γ
    .global proc_realcmp_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_realcmp_α_body:
# IR_VAR
 xchain00046_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00046_n1_α
 xchain00046_n0_β:
 jmp xchain00046_n2_α
# IR_UNOP
 xchain00046_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00046_n2_α
 cmp eax, 0
 jne xchain00046_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00046_n3_α
 xchain00046_n1_β:
 jmp xchain00046_n2_α
# IR_LIT_INTEGER
 xchain00046_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00046_n4_α
 xchain00046_n2_β:
 jmp proc_realcmp_ω
.Lx00047_0:
 .quad 1
# IR_LIT_STRING
 xchain00046_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00046_n5_α
 xchain00046_n3_β:
 jmp proc_realcmp_ω
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "1.6 < 2.7"
# IR_VAR
 xchain00046_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00046_n6_α
 xchain00046_n4_β:
 jmp proc_realcmp_ω
# IR_RETURN
 xchain00046_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcmp_γ
# IR_TO
 xchain00046_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00049_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00046_n7_α
 xchain00046_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00049_0
# IR_LIT_REAL
 xchain00046_n7_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00046_n8_α
 xchain00046_n7_β:
 jmp xchain00046_n6_β
.Lx00050_0:
 .quad 4609884578576439706
# IR_LIT_REAL
 xchain00046_n8_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00046_n9_α
 xchain00046_n8_β:
 jmp xchain00046_n6_β
.Lx00051_0:
 .quad 4613262278296967578
 xchain00046_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00046_n6_β
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 jmp xchain00046_n6_β
 xchain00046_n9_β:
 jmp xchain00046_n6_β
proc_realcmp_β:
jmp proc_realcmp_ω
proc_realcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_realcmp_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_cosf_α
proc_cosf_α:
#=======================================================================================================================
    .global proc_cosf_α
    .global proc_cosf_β
    .global proc_cosf_γ
    .global proc_cosf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_cosf_α_body:
# IR_VAR
 xchain00052_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00052_n1_α
 xchain00052_n0_β:
 jmp xchain00052_n2_α
# IR_UNOP
 xchain00052_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00052_n2_α
 cmp eax, 0
 jne xchain00052_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00052_n3_α
 xchain00052_n1_β:
 jmp xchain00052_n2_α
# IR_LIT_INTEGER
 xchain00052_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00052_n4_α
 xchain00052_n2_β:
 jmp proc_cosf_ω
.Lx00053_0:
 .quad 1
# IR_LIT_STRING
 xchain00052_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00052_n5_α
 xchain00052_n3_β:
 jmp proc_cosf_ω
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "cos(0.2)"
# IR_VAR
 xchain00052_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00052_n6_α
 xchain00052_n4_β:
 jmp proc_cosf_ω
# IR_RETURN
 xchain00052_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cosf_γ
# IR_TO
 xchain00052_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00055_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00052_n7_α
 xchain00052_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00055_0
# IR_LIT_REAL
 xchain00052_n7_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00052_n8_α
 xchain00052_n7_β:
 jmp xchain00052_n6_β
.Lx00056_0:
 .quad 4596373779694328218
 xchain00052_n8_α:
# BOX IR_CALL cos(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn245: .string "cos"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn245]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00052_n6_β
 jmp xchain00052_n6_β
 xchain00052_n8_β:
 jmp xchain00052_n6_β
proc_cosf_β:
jmp proc_cosf_ω
proc_cosf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cosf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_sqrtf_α
proc_sqrtf_α:
#=======================================================================================================================
    .global proc_sqrtf_α
    .global proc_sqrtf_β
    .global proc_sqrtf_γ
    .global proc_sqrtf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_sqrtf_α_body:
# IR_VAR
 xchain00057_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00057_n1_α
 xchain00057_n0_β:
 jmp xchain00057_n2_α
# IR_UNOP
 xchain00057_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00057_n2_α
 cmp eax, 0
 jne xchain00057_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00057_n3_α
 xchain00057_n1_β:
 jmp xchain00057_n2_α
# IR_LIT_INTEGER
 xchain00057_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00057_n4_α
 xchain00057_n2_β:
 jmp proc_sqrtf_ω
.Lx00058_0:
 .quad 1
# IR_LIT_STRING
 xchain00057_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00057_n5_α
 xchain00057_n3_β:
 jmp proc_sqrtf_ω
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "sqrt(7.4)"
# IR_VAR
 xchain00057_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00057_n6_α
 xchain00057_n4_β:
 jmp proc_sqrtf_ω
# IR_RETURN
 xchain00057_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_sqrtf_γ
# IR_TO
 xchain00057_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00060_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00057_n7_α
 xchain00057_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00060_0
# IR_LIT_REAL
 xchain00057_n7_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00057_n8_α
 xchain00057_n7_β:
 jmp xchain00057_n6_β
.Lx00061_0:
 .quad 4620017677738023322
 xchain00057_n8_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn259: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn259]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00057_n6_β
 jmp xchain00057_n6_β
 xchain00057_n8_β:
 jmp xchain00057_n6_β
proc_sqrtf_β:
jmp proc_sqrtf_ω
proc_sqrtf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_sqrtf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_logf_α
proc_logf_α:
#=======================================================================================================================
    .global proc_logf_α
    .global proc_logf_β
    .global proc_logf_γ
    .global proc_logf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_logf_α_body:
# IR_VAR
 xchain00062_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00062_n1_α
 xchain00062_n0_β:
 jmp xchain00062_n2_α
# IR_UNOP
 xchain00062_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00062_n2_α
 cmp eax, 0
 jne xchain00062_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00062_n3_α
 xchain00062_n1_β:
 jmp xchain00062_n2_α
# IR_LIT_INTEGER
 xchain00062_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00062_n4_α
 xchain00062_n2_β:
 jmp proc_logf_ω
.Lx00063_0:
 .quad 1
# IR_LIT_STRING
 xchain00062_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00062_n5_α
 xchain00062_n3_β:
 jmp proc_logf_ω
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "log(25.,17.)"
# IR_VAR
 xchain00062_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00062_n6_α
 xchain00062_n4_β:
 jmp proc_logf_ω
# IR_RETURN
 xchain00062_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_logf_γ
# IR_TO
 xchain00062_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00065_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00062_n7_α
 xchain00062_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00065_0
# IR_LIT_REAL
 xchain00062_n7_α:
 mov qword ptr [r12 + 144], 7
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00062_n8_α
 xchain00062_n7_β:
 jmp xchain00062_n6_β
.Lx00066_0:
 .quad 4627730092099895296
# IR_LIT_REAL
 xchain00062_n8_α:
 mov qword ptr [r12 + 160], 7
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00062_n9_α
 xchain00062_n8_β:
 jmp xchain00062_n6_β
.Lx00067_0:
 .quad 4625478292286210048
 xchain00062_n9_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn274: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00062_n6_β
 jmp xchain00062_n6_β
 xchain00062_n9_β:
 jmp xchain00062_n6_β
proc_logf_β:
jmp proc_logf_ω
proc_logf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_logf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nullfunc_α
proc_nullfunc_α:
#=======================================================================================================================
    .global proc_nullfunc_α
    .global proc_nullfunc_β
    .global proc_nullfunc_γ
    .global proc_nullfunc_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_nullfunc_α_body:
# IR_VAR
 xchain00068_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00068_n1_α
 xchain00068_n0_β:
 jmp xchain00068_n2_α
# IR_UNOP
 xchain00068_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00068_n2_α
 cmp eax, 0
 jne xchain00068_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00068_n3_α
 xchain00068_n1_β:
 jmp xchain00068_n2_α
# IR_LIT_INTEGER
 xchain00068_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00068_n4_α
 xchain00068_n2_β:
 jmp proc_nullfunc_ω
.Lx00069_0:
 .quad 1
# IR_LIT_STRING
 xchain00068_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00068_n5_α
 xchain00068_n3_β:
 jmp proc_nullfunc_ω
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "p()"
# IR_VAR
 xchain00068_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00068_n6_α
 xchain00068_n4_β:
 jmp proc_nullfunc_ω
# IR_RETURN
 xchain00068_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullfunc_γ
# IR_TO
 xchain00068_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00071_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00068_n7_α
 xchain00068_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00071_0
 xchain00068_n7_α:
  .section .rodata
  .Lcall00072_pname: .string "nullf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00072_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00068_n6_β
 jmp xchain00068_n6_β
xchain00068_n7_β:
 jmp xchain00068_n6_β
proc_nullfunc_β:
jmp proc_nullfunc_ω
proc_nullfunc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nullfunc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nullf_α
proc_nullf_α:
#=======================================================================================================================
    .global proc_nullf_α
    .global proc_nullf_β
    .global proc_nullf_γ
    .global proc_nullf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 16], rax
 pop rsi
proc_nullf_α_body:
proc_nullf_β:
jmp proc_nullf_ω
proc_nullf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 16]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nullf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_listcall_α
proc_listcall_α:
#=======================================================================================================================
    .global proc_listcall_α
    .global proc_listcall_β
    .global proc_listcall_γ
    .global proc_listcall_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_listcall_α_body:
# IR_VAR_REF gva
 xchain00073_n0_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00073_n1_α
 xchain00073_n0_β:
 jmp xchain00073_n3_α
# IR_UNOP_TEST lv
 xchain00073_n1_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain00073_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00073_n3_α
 cmp eax, 0
 jne xchain00073_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain00073_n2_α
 xchain00073_n1_β:
 jmp xchain00073_n3_α
# IR_LIT_INTEGER
 xchain00073_n2_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00073_n4_α
 xchain00073_n2_β:
 jmp xchain00073_n3_α
.Lx00074_0:
 .quad 1
# IR_VAR
 xchain00073_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00073_n5_α
 xchain00073_n3_β:
 jmp xchain00073_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00073_n4_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00073_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00073_n7_α
 xchain00073_n4_β:
 jmp xchain00073_n3_α
# IR_UNOP
 xchain00073_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00073_n6_α
 cmp eax, 0
 jne xchain00073_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00073_n8_α
 xchain00073_n5_β:
 jmp xchain00073_n6_α
# IR_LIT_INTEGER
 xchain00073_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00073_n9_α
 xchain00073_n6_β:
 jmp proc_listcall_ω
.Lx00075_0:
 .quad 1
# IR_MAKE_LIST
 xchain00073_n7_α:
 lea rdi, [r12 + 320]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00073_n10_α
 xchain00073_n7_β:
 jmp xchain00073_n3_α
# IR_LIT_STRING
 xchain00073_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00073_n11_α
 xchain00073_n8_β:
 jmp proc_listcall_ω
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string "p ! L"
# IR_VAR
 xchain00073_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00073_n12_α
 xchain00073_n9_β:
 jmp proc_listcall_ω
# IR_ASSIGN gva
 xchain00073_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00073_n13_α
 xchain00073_n10_β:
 jmp xchain00073_n3_α
# IR_RETURN
 xchain00073_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listcall_γ
# IR_TO
 xchain00073_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00077_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00073_n14_α
 xchain00073_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00077_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00073_n13_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00073_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00073_n3_α
 xchain00073_n13_β:
 jmp xchain00073_n3_α
# IR_LIT_STRING
 xchain00073_n14_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00073_n16_α
 xchain00073_n14_β:
 jmp xchain00073_n12_β
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "nullf"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00073_n15_α:
 jmp qword ptr [r12 + 272]
 xchain00073_n15_β:
 jmp xchain00073_n3_α
# IR_VAR gva
 xchain00073_n16_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00073_n17_α
 xchain00073_n16_β:
 jmp xchain00073_n12_β
 xchain00073_n17_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn314: .string "__apply__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn314]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00073_n12_β
 jmp xchain00073_n12_β
 xchain00073_n17_β:
 jmp xchain00073_n12_β
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 384]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_listcall_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_addfunc_α
proc_addfunc_α:
#=======================================================================================================================
    .global proc_addfunc_α
    .global proc_addfunc_β
    .global proc_addfunc_γ
    .global proc_addfunc_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_addfunc_α_body:
# IR_VAR
 xchain00079_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00079_n1_α
 xchain00079_n0_β:
 jmp xchain00079_n2_α
# IR_UNOP
 xchain00079_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00079_n2_α
 cmp eax, 0
 jne xchain00079_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00079_n3_α
 xchain00079_n1_β:
 jmp xchain00079_n2_α
# IR_LIT_INTEGER
 xchain00079_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00079_n4_α
 xchain00079_n2_β:
 jmp proc_addfunc_ω
.Lx00080_0:
 .quad 1
# IR_LIT_STRING
 xchain00079_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00079_n5_α
 xchain00079_n3_β:
 jmp proc_addfunc_ω
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "add(4, 7)"
# IR_VAR
 xchain00079_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00079_n6_α
 xchain00079_n4_β:
 jmp proc_addfunc_ω
# IR_RETURN
 xchain00079_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_addfunc_γ
# IR_TO
 xchain00079_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00082_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00079_n7_α
 xchain00079_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00082_0
# IR_LIT_INTEGER
 xchain00079_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00079_n8_α
 xchain00079_n7_β:
 jmp xchain00079_n6_β
.Lx00083_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00079_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00079_n9_α
 xchain00079_n8_β:
 jmp xchain00079_n6_β
.Lx00084_0:
 .quad 7
 xchain00079_n9_α:
  .section .rodata
  .Lcall00085_pname: .string "add"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00085_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00079_n6_β
 jmp xchain00079_n6_β
xchain00079_n9_β:
 jmp xchain00079_n6_β
proc_addfunc_β:
jmp proc_addfunc_ω
proc_addfunc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_addfunc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_add_α
proc_add_α:
#=======================================================================================================================
    .global proc_add_α
    .global proc_add_β
    .global proc_add_γ
    .global proc_add_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 96], rax
 pop rsi
proc_add_α_body:
# IR_VAR
 xchain00086_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp proc_add_ω
# IR_VAR
 xchain00086_n1_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp proc_add_ω
 xchain00086_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00087_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00087_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00087_2
.Lx00087_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00086_n3_α
.Lx00087_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00087_3
.Lx00087_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_add_ω
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
.Lx00087_3:
 jmp xchain00086_n3_α
 xchain00086_n2_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00086_n3_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_add_γ
proc_add_β:
jmp proc_add_ω
proc_add_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 96]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_add_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rfact0_α
proc_rfact0_α:
#=======================================================================================================================
    .global proc_rfact0_α
    .global proc_rfact0_β
    .global proc_rfact0_γ
    .global proc_rfact0_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfact0_α_body:
# IR_VAR
 xchain00088_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00088_n1_α
 xchain00088_n0_β:
 jmp xchain00088_n2_α
# IR_UNOP
 xchain00088_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00088_n2_α
 cmp eax, 0
 jne xchain00088_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00088_n3_α
 xchain00088_n1_β:
 jmp xchain00088_n2_α
# IR_LIT_INTEGER
 xchain00088_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00088_n4_α
 xchain00088_n2_β:
 jmp proc_rfact0_ω
.Lx00089_0:
 .quad 1
# IR_LIT_STRING
 xchain00088_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00088_n5_α
 xchain00088_n3_β:
 jmp proc_rfact0_ω
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "rfact(0)"
# IR_VAR
 xchain00088_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00088_n6_α
 xchain00088_n4_β:
 jmp proc_rfact0_ω
# IR_RETURN
 xchain00088_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact0_γ
# IR_TO
 xchain00088_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00091_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00088_n7_α
 xchain00088_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00091_0
# IR_LIT_INTEGER
 xchain00088_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00088_n8_α
 xchain00088_n7_β:
 jmp xchain00088_n6_β
.Lx00092_0:
 .quad 0
 xchain00088_n8_α:
  .section .rodata
  .Lcall00093_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00093_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00088_n6_β
 jmp xchain00088_n6_β
xchain00088_n8_β:
 jmp xchain00088_n6_β
proc_rfact0_β:
jmp proc_rfact0_ω
proc_rfact0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rfact0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rfact10_α
proc_rfact10_α:
#=======================================================================================================================
    .global proc_rfact10_α
    .global proc_rfact10_β
    .global proc_rfact10_γ
    .global proc_rfact10_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfact10_α_body:
# IR_VAR
 xchain00094_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00094_n1_α
 xchain00094_n0_β:
 jmp xchain00094_n2_α
# IR_UNOP
 xchain00094_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00094_n2_α
 cmp eax, 0
 jne xchain00094_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00094_n3_α
 xchain00094_n1_β:
 jmp xchain00094_n2_α
# IR_LIT_INTEGER
 xchain00094_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00094_n4_α
 xchain00094_n2_β:
 jmp proc_rfact10_ω
.Lx00095_0:
 .quad 1
# IR_LIT_STRING
 xchain00094_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00094_n5_α
 xchain00094_n3_β:
 jmp proc_rfact10_ω
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "rfact(10)"
# IR_VAR
 xchain00094_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00094_n6_α
 xchain00094_n4_β:
 jmp proc_rfact10_ω
# IR_RETURN
 xchain00094_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact10_γ
# IR_TO
 xchain00094_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00097_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00094_n7_α
 xchain00094_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00097_0
# IR_LIT_INTEGER
 xchain00094_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00094_n8_α
 xchain00094_n7_β:
 jmp xchain00094_n6_β
.Lx00098_0:
 .quad 10
 xchain00094_n8_α:
  .section .rodata
  .Lcall00099_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00099_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00094_n6_β
 jmp xchain00094_n6_β
xchain00094_n8_β:
 jmp xchain00094_n6_β
proc_rfact10_β:
jmp proc_rfact10_ω
proc_rfact10_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rfact10_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rfact_α
proc_rfact_α:
#=======================================================================================================================
    .global proc_rfact_α
    .global proc_rfact_β
    .global proc_rfact_γ
    .global proc_rfact_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_rfact_α_body:
# IR_VAR
 xchain00100_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00100_n1_α
 xchain00100_n0_β:
 jmp xchain00100_n2_α
# IR_LIT_INTEGER
 xchain00100_n1_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00100_n3_α
 xchain00100_n1_β:
 jmp xchain00100_n2_α
.Lx00101_0:
 .quad 1
# IR_VAR
 xchain00100_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00100_n4_α
 xchain00100_n2_β:
 jmp proc_rfact_ω
 xchain00100_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00102_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00102_2
.Lx00102_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 cmp rax, rcx
 jge xchain00100_n2_α
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rcx
 jmp xchain00100_n5_α
.Lx00102_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 lea r9, [r12 + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00102_1
 cmp eax, 1
 je xchain00100_n2_α
 jmp xchain00100_n5_α
.Lx00102_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00100_n2_α
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
 jmp xchain00100_n5_α
 xchain00100_n3_β:
 jmp xchain00100_n2_α
# IR_VAR
 xchain00100_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00100_n6_α
 xchain00100_n4_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00100_n5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00100_n7_α
 xchain00100_n5_β:
 jmp proc_rfact_ω
.Lx00103_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00100_n6_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00100_n8_α
 xchain00100_n6_β:
 jmp proc_rfact_ω
.Lx00104_0:
 .quad 1
# IR_RETURN
 xchain00100_n7_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact_γ
 xchain00100_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00105_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00105_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00105_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00105_2
.Lx00105_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 184]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00100_n9_α
.Lx00105_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00105_3
.Lx00105_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx00105_3:
 jmp xchain00100_n9_α
 xchain00100_n8_β:
 jmp proc_rfact_ω
 xchain00100_n9_α:
  .section .rodata
  .Lcall00061_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00061_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00100_n10_α
xchain00100_n9_β:
 jmp proc_rfact_ω
 xchain00100_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00106_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00106_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00106_2
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00106_2
.Lx00106_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 120]
 imul rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00100_n11_α
.Lx00106_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 2
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00106_3
.Lx00106_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
.Lx00106_3:
 jmp xchain00100_n11_α
 xchain00100_n10_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00100_n11_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact_γ
proc_rfact_β:
jmp proc_rfact_ω
proc_rfact_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rfact_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rfib5_α
proc_rfib5_α:
#=======================================================================================================================
    .global proc_rfib5_α
    .global proc_rfib5_β
    .global proc_rfib5_γ
    .global proc_rfib5_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfib5_α_body:
# IR_VAR
 xchain00107_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00107_n1_α
 xchain00107_n0_β:
 jmp xchain00107_n2_α
# IR_UNOP
 xchain00107_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00107_n2_α
 cmp eax, 0
 jne xchain00107_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00107_n3_α
 xchain00107_n1_β:
 jmp xchain00107_n2_α
# IR_LIT_INTEGER
 xchain00107_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00107_n4_α
 xchain00107_n2_β:
 jmp proc_rfib5_ω
.Lx00108_0:
 .quad 1
# IR_LIT_STRING
 xchain00107_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00107_n5_α
 xchain00107_n3_β:
 jmp proc_rfib5_ω
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "rfib(5)"
# IR_VAR
 xchain00107_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00107_n6_α
 xchain00107_n4_β:
 jmp proc_rfib5_ω
# IR_RETURN
 xchain00107_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib5_γ
# IR_TO
 xchain00107_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00110_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00107_n7_α
 xchain00107_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00110_0
# IR_LIT_INTEGER
 xchain00107_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00107_n8_α
 xchain00107_n7_β:
 jmp xchain00107_n6_β
.Lx00111_0:
 .quad 5
 xchain00107_n8_α:
  .section .rodata
  .Lcall00112_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00112_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00107_n6_β
 jmp xchain00107_n6_β
xchain00107_n8_β:
 jmp xchain00107_n6_β
proc_rfib5_β:
jmp proc_rfib5_ω
proc_rfib5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rfib5_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rfib_α
proc_rfib_α:
#=======================================================================================================================
    .global proc_rfib_α
    .global proc_rfib_β
    .global proc_rfib_γ
    .global proc_rfib_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_rfib_α_body:
# IR_VAR
 xchain00113_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00113_n1_α
 xchain00113_n0_β:
 jmp xchain00113_n2_α
# IR_LIT_INTEGER
 xchain00113_n1_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00113_n3_α
 xchain00113_n1_β:
 jmp xchain00113_n2_α
.Lx00114_0:
 .quad 3
# IR_VAR
 xchain00113_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00113_n4_α
 xchain00113_n2_β:
 jmp proc_rfib_ω
 xchain00113_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00115_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00115_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00115_2
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00115_2
.Lx00115_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jge xchain00113_n2_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rcx
 jmp xchain00113_n5_α
.Lx00115_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 lea r9, [r12 + 256]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00115_1
 cmp eax, 1
 je xchain00113_n2_α
 jmp xchain00113_n5_α
.Lx00115_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00113_n2_α
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 jmp xchain00113_n5_α
 xchain00113_n3_β:
 jmp xchain00113_n2_α
# IR_LIT_INTEGER
 xchain00113_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00113_n6_α
 xchain00113_n4_β:
 jmp proc_rfib_ω
.Lx00116_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00113_n5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00113_n7_α
 xchain00113_n5_β:
 jmp proc_rfib_ω
.Lx00117_0:
 .quad 1
 xchain00113_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00118_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00118_2
.Lx00118_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00113_n8_α
.Lx00118_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00118_3
.Lx00118_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
.Lx00118_3:
 jmp xchain00113_n8_α
 xchain00113_n6_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00113_n7_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib_γ
 xchain00113_n8_α:
  .section .rodata
  .Lcall00119_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00119_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00113_n9_α
xchain00113_n8_β:
 jmp proc_rfib_ω
# IR_VAR
 xchain00113_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00113_n10_α
 xchain00113_n9_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00113_n10_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00113_n11_α
 xchain00113_n10_β:
 jmp proc_rfib_ω
.Lx00120_0:
 .quad 1
 xchain00113_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00121_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00121_2
.Lx00121_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00113_n12_α
.Lx00121_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00121_3
.Lx00121_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00121_3:
 jmp xchain00113_n12_α
 xchain00113_n11_β:
 jmp proc_rfib_ω
 xchain00113_n12_α:
  .section .rodata
  .Lcall00122_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00122_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00113_n13_α
xchain00113_n12_β:
 jmp proc_rfib_ω
 xchain00113_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00123_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00123_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00123_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00123_2
.Lx00123_1:
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00113_n14_α
.Lx00123_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00123_3
.Lx00123_2:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
.Lx00123_3:
 jmp xchain00113_n14_α
 xchain00113_n13_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00113_n14_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib_γ
proc_rfib_β:
jmp proc_rfib_ω
proc_rfib_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rfib_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_prslow_α
proc_prslow_α:
#=======================================================================================================================
    .global proc_prslow_α
    .global proc_prslow_β
    .global proc_prslow_γ
    .global proc_prslow_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_prslow_α_body:
# IR_VAR
 xchain00124_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00124_n1_α
 xchain00124_n0_β:
 jmp xchain00124_n2_α
# IR_UNOP
 xchain00124_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00124_n2_α
 cmp eax, 0
 jne xchain00124_n2_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00124_n3_α
 xchain00124_n1_β:
 jmp xchain00124_n2_α
# IR_LIT_INTEGER
 xchain00124_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00124_n4_α
 xchain00124_n2_β:
 jmp proc_prslow_ω
.Lx00125_0:
 .quad 1
# IR_LIT_STRING
 xchain00124_n3_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00124_n5_α
 xchain00124_n3_β:
 jmp proc_prslow_ω
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "prslow(7)"
# IR_VAR
 xchain00124_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00124_n6_α
 xchain00124_n4_β:
 jmp proc_prslow_ω
# IR_RETURN
 xchain00124_n5_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prslow_γ
# IR_TO
 xchain00124_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00127_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00124_n7_α
 xchain00124_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00127_0
# IR_LIT_INTEGER
 xchain00124_n7_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00124_n8_α
 xchain00124_n7_β:
 jmp xchain00124_n9_α
.Lx00128_0:
 .quad 0
 xchain00124_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00124_n9_α
 xchain00124_n8_β:
 jmp xchain00124_n9_α
# IR_LIT_INTEGER
 xchain00124_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00124_n10_α
 xchain00124_n9_β:
 jmp xchain00124_n6_β
.Lx00129_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00124_n10_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00124_n11_α
 xchain00124_n10_β:
 jmp xchain00124_n6_β
.Lx00130_0:
 .quad 7
# IR_TO
 xchain00124_n11_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00131_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg xchain00124_n6_β
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00124_n12_α
 xchain00124_n11_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00131_0
 xchain00124_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00124_n13_α
 xchain00124_n12_β:
 jmp xchain00124_n6_β
# IR_VAR
 xchain00124_n13_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 312], rax
 jmp xchain00124_n14_α
 xchain00124_n13_β:
 jmp xchain00124_n15_α
# IR_LIT_INTEGER
 xchain00124_n14_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00124_n16_α
 xchain00124_n14_β:
 jmp xchain00124_n15_α
.Lx00132_0:
 .quad 2
# IR_VAR
 xchain00124_n15_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 216], rax
 jmp xchain00124_n17_α
 xchain00124_n15_β:
 jmp xchain00124_n11_β
# IR_VAR
 xchain00124_n16_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 392], rax
 jmp xchain00124_n18_α
 xchain00124_n16_β:
 jmp xchain00124_n15_α
# IR_LIT_INTEGER
 xchain00124_n17_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00124_n19_α
 xchain00124_n17_β:
 jmp xchain00124_n11_β
.Lx00133_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00124_n18_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00124_n20_α
 xchain00124_n18_β:
 jmp xchain00124_n15_α
.Lx00134_0:
 .quad 1
 xchain00124_n19_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00135_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00135_2
.Lx00135_1:
 mov rax, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00124_n21_α
.Lx00135_0:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00135_3
.Lx00135_2:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00124_n11_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00135_3:
 jmp xchain00124_n21_α
 xchain00124_n19_β:
 jmp xchain00124_n11_β
 xchain00124_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 408]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00124_n22_α
.Lx00136_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00136_3
.Lx00136_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00124_n15_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00136_3:
 jmp xchain00124_n22_α
 xchain00124_n20_β:
 jmp xchain00124_n15_α
 xchain00124_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00124_n23_α
 xchain00124_n21_β:
 jmp xchain00124_n11_β
# IR_TO
 xchain00124_n22_α:
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
.Lx00137_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain00124_n15_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00124_n24_α
 xchain00124_n22_β:
 inc qword ptr [r12 + 336]
 jmp .Lx00137_0
 xchain00124_n23_α:
 jmp xchain00124_n11_β
xchain00124_n23_β:
 jmp xchain00124_n11_β
 xchain00124_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00138_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00138_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00138_2
.Lx00138_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00124_n25_α
.Lx00138_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00138_3
.Lx00138_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00124_n15_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00138_3:
 jmp xchain00124_n25_α
 xchain00124_n24_β:
 jmp xchain00124_n15_α
# IR_LIT_INTEGER
 xchain00124_n25_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00124_n26_α
 xchain00124_n25_β:
 jmp xchain00124_n22_β
.Lx00139_0:
 .quad 0
 xchain00124_n26_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00140_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 424]
 cmp rax, rcx
 jne xchain00124_n22_β
 mov rcx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rcx
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rcx
 jmp xchain00124_n11_β
.Lx00140_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 lea r9, [r12 + 272]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00140_1
 cmp eax, 1
 je xchain00124_n22_β
 jmp xchain00124_n11_β
.Lx00140_2:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00124_n22_β
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rax
 jmp xchain00124_n11_β
 xchain00124_n26_β:
 jmp xchain00124_n22_β
 xchain00124_n27_α:
 jmp xchain00124_n11_β
xchain00124_n27_β:
 jmp xchain00124_n11_β
proc_prslow_β:
jmp proc_prslow_ω
proc_prslow_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_prslow_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_if0_α
proc_if0_α:
#=======================================================================================================================
    .global proc_if0_α
    .global proc_if0_β
    .global proc_if0_γ
    .global proc_if0_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_if0_α_body:
# IR_VAR
 xchain00141_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00141_n1_α
 xchain00141_n0_β:
 jmp xchain00141_n2_α
# IR_UNOP
 xchain00141_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00141_n2_α
 cmp eax, 0
 jne xchain00141_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00141_n3_α
 xchain00141_n1_β:
 jmp xchain00141_n2_α
# IR_LIT_INTEGER
 xchain00141_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00141_n4_α
 xchain00141_n2_β:
 jmp proc_if0_ω
.Lx00142_0:
 .quad 1
# IR_LIT_STRING
 xchain00141_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00141_n5_α
 xchain00141_n3_β:
 jmp proc_if0_ω
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "if 0 then 1"
# IR_VAR
 xchain00141_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00141_n6_α
 xchain00141_n4_β:
 jmp proc_if0_ω
# IR_RETURN
 xchain00141_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_if0_γ
# IR_TO
 xchain00141_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00144_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00141_n7_α
 xchain00141_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00144_0
# IR_LIT_INTEGER
 xchain00141_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00141_n8_α
 xchain00141_n7_β:
 jmp xchain00141_n6_β
.Lx00145_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00141_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00141_n9_α
 xchain00141_n8_β:
 jmp xchain00141_n6_β
.Lx00146_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00141_n9_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00141_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00141_n6_β
 xchain00141_n9_β:
 jmp xchain00141_n6_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00141_n10_α:
 jmp qword ptr [r12 + 112]
 xchain00141_n10_β:
 jmp xchain00141_n6_β
proc_if0_β:
jmp proc_if0_ω
proc_if0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_if0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_case3_α
proc_case3_α:
#=======================================================================================================================
    .global proc_case3_α
    .global proc_case3_β
    .global proc_case3_γ
    .global proc_case3_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 624], rax
 pop rsi
proc_case3_α_body:
# IR_VAR
 xchain00147_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00147_n1_α
 xchain00147_n0_β:
 jmp xchain00147_n2_α
# IR_UNOP
 xchain00147_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00147_n2_α
 cmp eax, 0
 jne xchain00147_n2_α
 mov qword ptr [r12 + 592], 0
 mov qword ptr [r12 + 600], 0
 jmp xchain00147_n3_α
 xchain00147_n1_β:
 jmp xchain00147_n2_α
# IR_LIT_INTEGER
 xchain00147_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00147_n4_α
 xchain00147_n2_β:
 jmp proc_case3_ω
.Lx00148_0:
 .quad 1
# IR_LIT_STRING
 xchain00147_n3_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00147_n5_α
 xchain00147_n3_β:
 jmp proc_case3_ω
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "case 3 of..."
# IR_VAR
 xchain00147_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00147_n6_α
 xchain00147_n4_β:
 jmp proc_case3_ω
# IR_RETURN
 xchain00147_n5_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_case3_γ
# IR_TO
 xchain00147_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00150_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00147_n7_α
 xchain00147_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00150_0
# IR_LIT_INTEGER
 xchain00147_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00147_n8_α
 xchain00147_n7_β:
 jmp xchain00147_n6_β
.Lx00151_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00147_n8_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00147_n9_α
 xchain00147_n8_β:
 jmp xchain00147_n6_β
.Lx00152_0:
 .quad 1
 xchain00147_n9_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+512]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn478: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn478]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00147_n11_α
 jmp xchain00147_n10_α
 xchain00147_n9_β:
 jmp xchain00147_n11_α
# IR_LIT_INTEGER
 xchain00147_n10_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00147_n12_α
 xchain00147_n10_β:
 jmp xchain00147_n6_β
.Lx00153_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00147_n11_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00147_n13_α
 xchain00147_n11_β:
 jmp xchain00147_n6_β
.Lx00154_0:
 .quad 2
 xchain00147_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00147_n14_α
 xchain00147_n12_β:
 jmp xchain00147_n6_β
 xchain00147_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+416]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+432]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn483: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn483]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00147_n16_α
 jmp xchain00147_n15_α
 xchain00147_n13_β:
 jmp xchain00147_n16_α
# IR_VAR
 xchain00147_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 104], rax
 jmp xchain00147_n6_β
 xchain00147_n14_β:
 jmp xchain00147_n6_β
# IR_LIT_INTEGER
 xchain00147_n15_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00147_n17_α
 xchain00147_n15_β:
 jmp xchain00147_n6_β
.Lx00155_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00147_n16_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00147_n18_α
 xchain00147_n16_β:
 jmp xchain00147_n6_β
.Lx00156_0:
 .quad 3
 xchain00147_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00147_n14_α
 xchain00147_n17_β:
 jmp xchain00147_n6_β
 xchain00147_n18_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+320]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+336]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn490: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00147_n20_α
 jmp xchain00147_n19_α
 xchain00147_n18_β:
 jmp xchain00147_n20_α
# IR_LIT_INTEGER
 xchain00147_n19_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00147_n21_α
 xchain00147_n19_β:
 jmp xchain00147_n6_β
.Lx00157_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00147_n20_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00147_n22_α
 xchain00147_n20_β:
 jmp xchain00147_n6_β
.Lx00158_0:
 .quad 4
 xchain00147_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00147_n14_α
 xchain00147_n21_β:
 jmp xchain00147_n6_β
 xchain00147_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+224]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+240]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn495: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00147_n24_α
 jmp xchain00147_n23_α
 xchain00147_n22_β:
 jmp xchain00147_n24_α
# IR_LIT_INTEGER
 xchain00147_n23_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00147_n25_α
 xchain00147_n23_β:
 jmp xchain00147_n6_β
.Lx00159_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00147_n24_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00147_n26_α
 xchain00147_n24_β:
 jmp xchain00147_n6_β
.Lx00160_0:
 .quad 0
 xchain00147_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00147_n14_α
 xchain00147_n25_β:
 jmp xchain00147_n6_β
 xchain00147_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00147_n14_α
 xchain00147_n26_β:
 jmp xchain00147_n6_β
proc_case3_β:
jmp proc_case3_ω
proc_case3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 624]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_case3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nulltest_α
proc_nulltest_α:
#=======================================================================================================================
    .global proc_nulltest_α
    .global proc_nulltest_β
    .global proc_nulltest_γ
    .global proc_nulltest_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_nulltest_α_body:
# IR_VAR
 xchain00161_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00161_n1_α
 xchain00161_n0_β:
 jmp xchain00161_n2_α
# IR_UNOP
 xchain00161_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00161_n2_α
 cmp eax, 0
 jne xchain00161_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00161_n3_α
 xchain00161_n1_β:
 jmp xchain00161_n2_α
# IR_LIT_INTEGER
 xchain00161_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00161_n4_α
 xchain00161_n2_β:
 jmp proc_nulltest_ω
.Lx00162_0:
 .quad 1
# IR_LIT_STRING
 xchain00161_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00161_n5_α
 xchain00161_n3_β:
 jmp proc_nulltest_ω
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "\\8"
# IR_VAR
 xchain00161_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00161_n6_α
 xchain00161_n4_β:
 jmp proc_nulltest_ω
# IR_RETURN
 xchain00161_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nulltest_γ
# IR_TO
 xchain00161_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00164_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00161_n7_α
 xchain00161_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00164_0
# IR_LIT_INTEGER
 xchain00161_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00161_n8_α
 xchain00161_n7_β:
 jmp xchain00161_n6_β
.Lx00165_0:
 .quad 8
# IR_UNOP
 xchain00161_n8_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 99
 je xchain00161_n6_β
 cmp eax, 0
 je xchain00161_n6_β
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
 jmp xchain00161_n6_β
 xchain00161_n8_β:
 jmp xchain00161_n6_β
proc_nulltest_β:
jmp proc_nulltest_ω
proc_nulltest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nulltest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_typef_α
proc_typef_α:
#=======================================================================================================================
    .global proc_typef_α
    .global proc_typef_β
    .global proc_typef_γ
    .global proc_typef_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_typef_α_body:
# IR_VAR
 xchain00166_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00166_n1_α
 xchain00166_n0_β:
 jmp xchain00166_n2_α
# IR_UNOP
 xchain00166_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00166_n2_α
 cmp eax, 0
 jne xchain00166_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00166_n3_α
 xchain00166_n1_β:
 jmp xchain00166_n2_α
# IR_LIT_INTEGER
 xchain00166_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00166_n4_α
 xchain00166_n2_β:
 jmp proc_typef_ω
.Lx00167_0:
 .quad 1
# IR_LIT_STRING
 xchain00166_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00166_n5_α
 xchain00166_n3_β:
 jmp proc_typef_ω
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "type(s)"
# IR_VAR
 xchain00166_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00166_n6_α
 xchain00166_n4_β:
 jmp proc_typef_ω
# IR_RETURN
 xchain00166_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_typef_γ
# IR_TO
 xchain00166_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00169_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00166_n7_α
 xchain00166_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00169_0
# IR_LIT_STRING
 xchain00166_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00166_n8_α
 xchain00166_n7_β:
 jmp xchain00166_n6_β
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "abcde"
 xchain00166_n8_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn526: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00166_n6_β
 jmp xchain00166_n6_β
 xchain00166_n8_β:
 jmp xchain00166_n6_β
proc_typef_β:
jmp proc_typef_ω
proc_typef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_typef_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_imagef_α
proc_imagef_α:
#=======================================================================================================================
    .global proc_imagef_α
    .global proc_imagef_β
    .global proc_imagef_γ
    .global proc_imagef_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_imagef_α_body:
# IR_VAR
 xchain00171_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00171_n1_α
 xchain00171_n0_β:
 jmp xchain00171_n2_α
# IR_UNOP
 xchain00171_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00171_n2_α
 cmp eax, 0
 jne xchain00171_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00171_n3_α
 xchain00171_n1_β:
 jmp xchain00171_n2_α
# IR_LIT_INTEGER
 xchain00171_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00171_n4_α
 xchain00171_n2_β:
 jmp proc_imagef_ω
.Lx00172_0:
 .quad 1
# IR_LIT_STRING
 xchain00171_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00171_n5_α
 xchain00171_n3_β:
 jmp proc_imagef_ω
.Lx00173_0:
 .quad .Lx00173_0_s
.Lx00173_0_s:
 .string "image(s)"
# IR_VAR
 xchain00171_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00171_n6_α
 xchain00171_n4_β:
 jmp proc_imagef_ω
# IR_RETURN
 xchain00171_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_imagef_γ
# IR_TO
 xchain00171_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00174_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00171_n7_α
 xchain00171_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00174_0
# IR_LIT_STRING
 xchain00171_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00171_n8_α
 xchain00171_n7_β:
 jmp xchain00171_n6_β
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "ab\tcd"
 xchain00171_n8_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn540: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn540]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00171_n6_β
 jmp xchain00171_n6_β
 xchain00171_n8_β:
 jmp xchain00171_n6_β
proc_imagef_β:
jmp proc_imagef_ω
proc_imagef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_imagef_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_marshal_α
proc_marshal_α:
#=======================================================================================================================
    .global proc_marshal_α
    .global proc_marshal_β
    .global proc_marshal_γ
    .global proc_marshal_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_marshal_α_body:
# IR_VAR
 xchain00176_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00176_n1_α
 xchain00176_n0_β:
 jmp xchain00176_n2_α
# IR_UNOP
 xchain00176_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00176_n2_α
 cmp eax, 0
 jne xchain00176_n2_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00176_n3_α
 xchain00176_n1_β:
 jmp xchain00176_n2_α
# IR_LIT_INTEGER
 xchain00176_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00176_n4_α
 xchain00176_n2_β:
 jmp proc_marshal_ω
.Lx00177_0:
 .quad 1
# IR_LIT_STRING
 xchain00176_n3_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00176_n5_α
 xchain00176_n3_β:
 jmp proc_marshal_ω
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "2(3,1,4,1,6)"
# IR_VAR
 xchain00176_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00176_n6_α
 xchain00176_n4_β:
 jmp proc_marshal_ω
# IR_RETURN
 xchain00176_n5_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_marshal_γ
# IR_TO
 xchain00176_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00179_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00176_n7_α
 xchain00176_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00179_0
# IR_LIT_INTEGER
 xchain00176_n7_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00176_n8_α
 xchain00176_n7_β:
 jmp xchain00176_n6_β
.Lx00180_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00176_n8_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00176_n9_α
 xchain00176_n8_β:
 jmp xchain00176_n6_β
.Lx00181_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00176_n9_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00176_n10_α
 xchain00176_n9_β:
 jmp xchain00176_n6_β
.Lx00182_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00176_n10_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00176_n11_α
 xchain00176_n10_β:
 jmp xchain00176_n6_β
.Lx00183_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00176_n11_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00176_n12_α
 xchain00176_n11_β:
 jmp xchain00176_n6_β
.Lx00184_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00176_n12_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00176_n13_α
 xchain00176_n12_β:
 jmp xchain00176_n6_β
.Lx00185_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain00176_n13_α:
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 200], rax
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 lea rdx, [r12 + 128]
 mov ecx, 5
 call rt_call_value@PLT
 cmp eax, 99
 je xchain00176_n6_β
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00176_n6_β
 xchain00176_n13_β:
 jmp xchain00176_n6_β
proc_marshal_β:
jmp proc_marshal_ω
proc_marshal_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 384]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_marshal_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_conj5_α
proc_conj5_α:
#=======================================================================================================================
    .global proc_conj5_α
    .global proc_conj5_β
    .global proc_conj5_γ
    .global proc_conj5_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_conj5_α_body:
# IR_VAR
 xchain00186_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00186_n1_α
 xchain00186_n0_β:
 jmp xchain00186_n2_α
# IR_UNOP
 xchain00186_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00186_n2_α
 cmp eax, 0
 jne xchain00186_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00186_n3_α
 xchain00186_n1_β:
 jmp xchain00186_n2_α
# IR_LIT_INTEGER
 xchain00186_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00186_n4_α
 xchain00186_n2_β:
 jmp proc_conj5_ω
.Lx00187_0:
 .quad 1
# IR_LIT_STRING
 xchain00186_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00186_n5_α
 xchain00186_n3_β:
 jmp proc_conj5_ω
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "1&2&3&4&5"
# IR_VAR
 xchain00186_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00186_n6_α
 xchain00186_n4_β:
 jmp proc_conj5_ω
# IR_RETURN
 xchain00186_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_conj5_γ
# IR_TO
 xchain00186_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00189_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00186_n7_α
 xchain00186_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00189_0
# IR_LIT_INTEGER
 xchain00186_n7_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00186_n8_α
 xchain00186_n7_β:
 jmp xchain00186_n6_β
.Lx00190_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00186_n8_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00186_n9_α
 xchain00186_n8_β:
 jmp xchain00186_n6_β
.Lx00191_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00186_n9_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00186_n10_α
 xchain00186_n9_β:
 jmp xchain00186_n6_β
.Lx00192_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00186_n10_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00186_n11_α
 xchain00186_n10_β:
 jmp xchain00186_n6_β
.Lx00193_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00186_n11_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00186_n12_α
 xchain00186_n11_β:
 jmp xchain00186_n6_β
.Lx00194_0:
 .quad 5
 xchain00186_n12_α:
 jmp xchain00186_n6_β
xchain00186_n12_β:
 jmp xchain00186_n6_β
proc_conj5_β:
jmp proc_conj5_ω
proc_conj5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_conj5_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_everyalt_α
proc_everyalt_α:
#=======================================================================================================================
    .global proc_everyalt_α
    .global proc_everyalt_β
    .global proc_everyalt_γ
    .global proc_everyalt_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_everyalt_α_body:
# IR_VAR
 xchain00195_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00195_n1_α
 xchain00195_n0_β:
 jmp xchain00195_n2_α
# IR_UNOP
 xchain00195_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00195_n2_α
 cmp eax, 0
 jne xchain00195_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00195_n3_α
 xchain00195_n1_β:
 jmp xchain00195_n2_α
# IR_LIT_INTEGER
 xchain00195_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00195_n4_α
 xchain00195_n2_β:
 jmp proc_everyalt_ω
.Lx00196_0:
 .quad 1
# IR_LIT_STRING
 xchain00195_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00195_n5_α
 xchain00195_n3_β:
 jmp proc_everyalt_ω
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "1|2|3|4|5"
# IR_VAR
 xchain00195_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00195_n6_α
 xchain00195_n4_β:
 jmp proc_everyalt_ω
# IR_RETURN
 xchain00195_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyalt_γ
# IR_TO
 xchain00195_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00198_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00195_n7_α
 xchain00195_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00198_0
# IR_LIT_INTEGER
 xchain00195_n7_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00195_n8_α
 xchain00195_n7_β:
 jmp xchain00195_n9_α
.Lx00199_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00195_n8_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00195_n9_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00195_n10_α
 xchain00195_n8_β:
 jmp xchain00195_n6_β
# IR_LIT_INTEGER
 xchain00195_n9_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00195_n11_α
 xchain00195_n9_β:
 jmp xchain00195_n12_α
.Lx00200_0:
 .quad 2
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00195_n10_α:
 jmp qword ptr [r12 + 112]
 xchain00195_n10_β:
 jmp xchain00195_n6_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00195_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00195_n12_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00195_n10_α
 xchain00195_n11_β:
 jmp xchain00195_n6_β
# IR_LIT_INTEGER
 xchain00195_n12_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00195_n13_α
 xchain00195_n12_β:
 jmp xchain00195_n14_α
.Lx00201_0:
 .quad 3
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00195_n13_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00195_n14_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00195_n10_α
 xchain00195_n13_β:
 jmp xchain00195_n6_β
# IR_LIT_INTEGER
 xchain00195_n14_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00195_n15_α
 xchain00195_n14_β:
 jmp xchain00195_n16_α
.Lx00202_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00195_n15_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00195_n16_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00195_n10_α
 xchain00195_n15_β:
 jmp xchain00195_n6_β
# IR_LIT_INTEGER
 xchain00195_n16_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00195_n17_α
 xchain00195_n16_β:
 jmp xchain00195_n6_β
.Lx00203_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00195_n17_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00195_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00195_n10_α
 xchain00195_n17_β:
 jmp xchain00195_n6_β
proc_everyalt_β:
jmp proc_everyalt_ω
proc_everyalt_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_everyalt_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_everyto_α
proc_everyto_α:
#=======================================================================================================================
    .global proc_everyto_α
    .global proc_everyto_β
    .global proc_everyto_γ
    .global proc_everyto_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_everyto_α_body:
# IR_VAR
 xchain00204_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00204_n1_α
 xchain00204_n0_β:
 jmp xchain00204_n2_α
# IR_UNOP
 xchain00204_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00204_n2_α
 cmp eax, 0
 jne xchain00204_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00204_n3_α
 xchain00204_n1_β:
 jmp xchain00204_n2_α
# IR_LIT_INTEGER
 xchain00204_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00204_n4_α
 xchain00204_n2_β:
 jmp proc_everyto_ω
.Lx00205_0:
 .quad 1
# IR_LIT_STRING
 xchain00204_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00204_n5_α
 xchain00204_n3_β:
 jmp proc_everyto_ω
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "1 to 5"
# IR_VAR
 xchain00204_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00204_n6_α
 xchain00204_n4_β:
 jmp proc_everyto_ω
# IR_RETURN
 xchain00204_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyto_γ
# IR_TO
 xchain00204_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00207_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00204_n7_α
 xchain00204_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00207_0
# IR_LIT_INTEGER
 xchain00204_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00204_n8_α
 xchain00204_n7_β:
 jmp xchain00204_n6_β
.Lx00208_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00204_n8_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00204_n9_α
 xchain00204_n8_β:
 jmp xchain00204_n6_β
.Lx00209_0:
 .quad 5
# IR_TO
 xchain00204_n9_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00210_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00204_n6_β
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00204_n9_β
 xchain00204_n9_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00210_0
proc_everyto_β:
jmp proc_everyto_ω
proc_everyto_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_everyto_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_evsusp_α
proc_evsusp_α:
#=======================================================================================================================
    .global proc_evsusp_α
    .global proc_evsusp_β
    .global proc_evsusp_γ
    .global proc_evsusp_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 144], rax
 pop rsi
proc_evsusp_α_body:
# IR_VAR
 xchain00211_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00211_n1_α
 xchain00211_n0_β:
 jmp xchain00211_n2_α
# IR_UNOP
 xchain00211_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00211_n2_α
 cmp eax, 0
 jne xchain00211_n2_α
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 jmp xchain00211_n3_α
 xchain00211_n1_β:
 jmp xchain00211_n2_α
# IR_VAR
 xchain00211_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
 jmp xchain00211_n4_α
 xchain00211_n2_β:
 jmp proc_evsusp_ω
# IR_LIT_STRING
 xchain00211_n3_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00211_n5_α
 xchain00211_n3_β:
 jmp proc_evsusp_ω
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "suspend i"
 xchain00211_n4_α:
  .section .rodata
  .Lcall00134_pname: .string "susproc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00134_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00211_n4_β
xchain00211_n4_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00211_n4_β
# IR_RETURN
 xchain00211_n5_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_evsusp_γ
proc_evsusp_β:
jmp proc_evsusp_ω
proc_evsusp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 144]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_evsusp_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_susproc_α
proc_susproc_α:
#=======================================================================================================================
    .global proc_susproc_α
    .global proc_susproc_β
    .global proc_susproc_γ
    .global proc_susproc_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_susproc_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 112], rax
 pop rsi
proc_susproc_α_body:
lea rax, [rip + xchain00213_n3_β]
mov qword ptr [r12 + 96], rax
# IR_LIT_INTEGER
 xchain00213_n0_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp proc_susproc_ω
.Lx00214_0:
 .quad 1
# IR_VAR
 xchain00213_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00213_n2_α
 xchain00213_n1_β:
 jmp proc_susproc_ω
# IR_TO
 xchain00213_n2_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00215_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00213_n3_α
 xchain00213_n2_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00215_0
# IR_SUSPEND yield+resume
 xchain00213_n3_α:
 lea rax, [rip + xchain00213_n3_β]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_susproc_γ
 xchain00213_n3_β:
 jmp proc_susproc_ω
proc_susproc_β:
jmp qword ptr [r12 + 96]
proc_susproc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 112]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_susproc_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_intcoerce_α
proc_intcoerce_α:
#=======================================================================================================================
    .global proc_intcoerce_α
    .global proc_intcoerce_β
    .global proc_intcoerce_γ
    .global proc_intcoerce_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_intcoerce_α_body:
# IR_VAR
 xchain00216_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00216_n1_α
 xchain00216_n0_β:
 jmp xchain00216_n2_α
# IR_UNOP
 xchain00216_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00216_n2_α
 cmp eax, 0
 jne xchain00216_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00216_n3_α
 xchain00216_n1_β:
 jmp xchain00216_n2_α
# IR_LIT_INTEGER
 xchain00216_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00216_n4_α
 xchain00216_n2_β:
 jmp proc_intcoerce_ω
.Lx00217_0:
 .quad 1
# IR_LIT_STRING
 xchain00216_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00216_n5_α
 xchain00216_n3_β:
 jmp proc_intcoerce_ω
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "+\"407\""
# IR_VAR
 xchain00216_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00216_n6_α
 xchain00216_n4_β:
 jmp proc_intcoerce_ω
# IR_RETURN
 xchain00216_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcoerce_γ
# IR_TO
 xchain00216_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00219_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00216_n7_α
 xchain00216_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00219_0
# IR_LIT_STRING
 xchain00216_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00216_n8_α
 xchain00216_n7_β:
 jmp xchain00216_n6_β
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "407"
# IR_UNOP
 xchain00216_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00216_n6_β
 xchain00216_n8_β:
 jmp xchain00216_n6_β
proc_intcoerce_β:
jmp proc_intcoerce_ω
proc_intcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_intcoerce_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_realcoerce_α
proc_realcoerce_α:
#=======================================================================================================================
    .global proc_realcoerce_α
    .global proc_realcoerce_β
    .global proc_realcoerce_γ
    .global proc_realcoerce_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_realcoerce_α_body:
# IR_VAR
 xchain00221_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00221_n1_α
 xchain00221_n0_β:
 jmp xchain00221_n2_α
# IR_UNOP
 xchain00221_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00221_n2_α
 cmp eax, 0
 jne xchain00221_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00221_n3_α
 xchain00221_n1_β:
 jmp xchain00221_n2_α
# IR_LIT_INTEGER
 xchain00221_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00221_n4_α
 xchain00221_n2_β:
 jmp proc_realcoerce_ω
.Lx00222_0:
 .quad 1
# IR_LIT_STRING
 xchain00221_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00221_n5_α
 xchain00221_n3_β:
 jmp proc_realcoerce_ω
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "+\"7.25\""
# IR_VAR
 xchain00221_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00221_n6_α
 xchain00221_n4_β:
 jmp proc_realcoerce_ω
# IR_RETURN
 xchain00221_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcoerce_γ
# IR_TO
 xchain00221_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00224_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00221_n7_α
 xchain00221_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00224_0
# IR_LIT_STRING
 xchain00221_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00221_n8_α
 xchain00221_n7_β:
 jmp xchain00221_n6_β
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "7.25"
# IR_UNOP
 xchain00221_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00221_n6_β
 xchain00221_n8_β:
 jmp xchain00221_n6_β
proc_realcoerce_β:
jmp proc_realcoerce_ω
proc_realcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_realcoerce_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strcoerce_α
proc_strcoerce_α:
#=======================================================================================================================
    .global proc_strcoerce_α
    .global proc_strcoerce_β
    .global proc_strcoerce_γ
    .global proc_strcoerce_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strcoerce_α_body:
# IR_VAR
 xchain00226_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00226_n1_α
 xchain00226_n0_β:
 jmp xchain00226_n2_α
# IR_UNOP
 xchain00226_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00226_n2_α
 cmp eax, 0
 jne xchain00226_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00226_n3_α
 xchain00226_n1_β:
 jmp xchain00226_n2_α
# IR_LIT_INTEGER
 xchain00226_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00226_n4_α
 xchain00226_n2_β:
 jmp proc_strcoerce_ω
.Lx00227_0:
 .quad 1
# IR_LIT_STRING
 xchain00226_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00226_n5_α
 xchain00226_n3_β:
 jmp proc_strcoerce_ω
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "*407"
# IR_VAR
 xchain00226_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00226_n6_α
 xchain00226_n4_β:
 jmp proc_strcoerce_ω
# IR_RETURN
 xchain00226_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoerce_γ
# IR_TO
 xchain00226_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00229_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00226_n7_α
 xchain00226_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00229_0
# IR_LIT_INTEGER
 xchain00226_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00226_n8_α
 xchain00226_n7_β:
 jmp xchain00226_n6_β
.Lx00230_0:
 .quad 407
# IR_UNOP
 xchain00226_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00226_n6_β
 xchain00226_n8_β:
 jmp xchain00226_n6_β
proc_strcoerce_β:
jmp proc_strcoerce_ω
proc_strcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strcoerce_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strcoercer_α
proc_strcoercer_α:
#=======================================================================================================================
    .global proc_strcoercer_α
    .global proc_strcoercer_β
    .global proc_strcoercer_γ
    .global proc_strcoercer_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strcoercer_α_body:
# IR_VAR
 xchain00231_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00231_n1_α
 xchain00231_n0_β:
 jmp xchain00231_n2_α
# IR_UNOP
 xchain00231_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00231_n2_α
 cmp eax, 0
 jne xchain00231_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00231_n3_α
 xchain00231_n1_β:
 jmp xchain00231_n2_α
# IR_LIT_INTEGER
 xchain00231_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00231_n4_α
 xchain00231_n2_β:
 jmp proc_strcoercer_ω
.Lx00232_0:
 .quad 1
# IR_LIT_STRING
 xchain00231_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00231_n5_α
 xchain00231_n3_β:
 jmp proc_strcoercer_ω
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "*7.25"
# IR_VAR
 xchain00231_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00231_n6_α
 xchain00231_n4_β:
 jmp proc_strcoercer_ω
# IR_RETURN
 xchain00231_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoercer_γ
# IR_TO
 xchain00231_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00234_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00231_n7_α
 xchain00231_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00234_0
# IR_LIT_REAL
 xchain00231_n7_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00231_n8_α
 xchain00231_n7_β:
 jmp xchain00231_n6_β
.Lx00235_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00231_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00231_n6_β
 xchain00231_n8_β:
 jmp xchain00231_n6_β
proc_strcoercer_β:
jmp proc_strcoercer_ω
proc_strcoercer_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strcoercer_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tointeger_α
proc_tointeger_α:
#=======================================================================================================================
    .global proc_tointeger_α
    .global proc_tointeger_β
    .global proc_tointeger_γ
    .global proc_tointeger_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tointeger_α_body:
# IR_VAR
 xchain00236_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00236_n1_α
 xchain00236_n0_β:
 jmp xchain00236_n2_α
# IR_UNOP
 xchain00236_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00236_n2_α
 cmp eax, 0
 jne xchain00236_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00236_n3_α
 xchain00236_n1_β:
 jmp xchain00236_n2_α
# IR_LIT_INTEGER
 xchain00236_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00236_n4_α
 xchain00236_n2_β:
 jmp proc_tointeger_ω
.Lx00237_0:
 .quad 1
# IR_LIT_STRING
 xchain00236_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00236_n5_α
 xchain00236_n3_β:
 jmp proc_tointeger_ω
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "integer(\"407\")"
# IR_VAR
 xchain00236_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00236_n6_α
 xchain00236_n4_β:
 jmp proc_tointeger_ω
# IR_RETURN
 xchain00236_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tointeger_γ
# IR_TO
 xchain00236_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00239_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00236_n7_α
 xchain00236_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00239_0
# IR_LIT_STRING
 xchain00236_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00236_n8_α
 xchain00236_n7_β:
 jmp xchain00236_n6_β
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "407"
 xchain00236_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn702: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn702]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00236_n6_β
 jmp xchain00236_n6_β
 xchain00236_n8_β:
 jmp xchain00236_n6_β
proc_tointeger_β:
jmp proc_tointeger_ω
proc_tointeger_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tointeger_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_toreal_α
proc_toreal_α:
#=======================================================================================================================
    .global proc_toreal_α
    .global proc_toreal_β
    .global proc_toreal_γ
    .global proc_toreal_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_toreal_α_body:
# IR_VAR
 xchain00241_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00241_n1_α
 xchain00241_n0_β:
 jmp xchain00241_n2_α
# IR_UNOP
 xchain00241_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00241_n2_α
 cmp eax, 0
 jne xchain00241_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00241_n3_α
 xchain00241_n1_β:
 jmp xchain00241_n2_α
# IR_LIT_INTEGER
 xchain00241_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00241_n4_α
 xchain00241_n2_β:
 jmp proc_toreal_ω
.Lx00242_0:
 .quad 1
# IR_LIT_STRING
 xchain00241_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00241_n5_α
 xchain00241_n3_β:
 jmp proc_toreal_ω
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "real(\"7.25\")"
# IR_VAR
 xchain00241_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00241_n6_α
 xchain00241_n4_β:
 jmp proc_toreal_ω
# IR_RETURN
 xchain00241_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_toreal_γ
# IR_TO
 xchain00241_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00244_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00241_n7_α
 xchain00241_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00244_0
# IR_LIT_STRING
 xchain00241_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00241_n8_α
 xchain00241_n7_β:
 jmp xchain00241_n6_β
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "407"
 xchain00241_n8_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn716: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn716]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00241_n6_β
 jmp xchain00241_n6_β
 xchain00241_n8_β:
 jmp xchain00241_n6_β
proc_toreal_β:
jmp proc_toreal_ω
proc_toreal_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_toreal_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tostring_α
proc_tostring_α:
#=======================================================================================================================
    .global proc_tostring_α
    .global proc_tostring_β
    .global proc_tostring_γ
    .global proc_tostring_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tostring_α_body:
# IR_VAR
 xchain00246_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00246_n1_α
 xchain00246_n0_β:
 jmp xchain00246_n2_α
# IR_UNOP
 xchain00246_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00246_n2_α
 cmp eax, 0
 jne xchain00246_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00246_n3_α
 xchain00246_n1_β:
 jmp xchain00246_n2_α
# IR_LIT_INTEGER
 xchain00246_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00246_n4_α
 xchain00246_n2_β:
 jmp proc_tostring_ω
.Lx00247_0:
 .quad 1
# IR_LIT_STRING
 xchain00246_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00246_n5_α
 xchain00246_n3_β:
 jmp proc_tostring_ω
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "string(407)"
# IR_VAR
 xchain00246_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00246_n6_α
 xchain00246_n4_β:
 jmp proc_tostring_ω
# IR_RETURN
 xchain00246_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tostring_γ
# IR_TO
 xchain00246_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00249_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00246_n7_α
 xchain00246_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00249_0
# IR_LIT_INTEGER
 xchain00246_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00246_n8_α
 xchain00246_n7_β:
 jmp xchain00246_n6_β
.Lx00250_0:
 .quad 407
 xchain00246_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn730: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn730]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00246_n6_β
 jmp xchain00246_n6_β
 xchain00246_n8_β:
 jmp xchain00246_n6_β
proc_tostring_β:
jmp proc_tostring_ω
proc_tostring_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tostring_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rtostring_α
proc_rtostring_α:
#=======================================================================================================================
    .global proc_rtostring_α
    .global proc_rtostring_β
    .global proc_rtostring_γ
    .global proc_rtostring_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rtostring_α_body:
# IR_VAR
 xchain00251_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00251_n1_α
 xchain00251_n0_β:
 jmp xchain00251_n2_α
# IR_UNOP
 xchain00251_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00251_n2_α
 cmp eax, 0
 jne xchain00251_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00251_n3_α
 xchain00251_n1_β:
 jmp xchain00251_n2_α
# IR_LIT_INTEGER
 xchain00251_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00251_n4_α
 xchain00251_n2_β:
 jmp proc_rtostring_ω
.Lx00252_0:
 .quad 1
# IR_LIT_STRING
 xchain00251_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00251_n5_α
 xchain00251_n3_β:
 jmp proc_rtostring_ω
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "string(7.25)"
# IR_VAR
 xchain00251_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00251_n6_α
 xchain00251_n4_β:
 jmp proc_rtostring_ω
# IR_RETURN
 xchain00251_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rtostring_γ
# IR_TO
 xchain00251_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00254_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00251_n7_α
 xchain00251_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00254_0
# IR_LIT_REAL
 xchain00251_n7_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00251_n8_α
 xchain00251_n7_β:
 jmp xchain00251_n6_β
.Lx00255_0:
 .quad 4619848792751996928
 xchain00251_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn744: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn744]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00251_n6_β
 jmp xchain00251_n6_β
 xchain00251_n8_β:
 jmp xchain00251_n6_β
proc_rtostring_β:
jmp proc_rtostring_ω
proc_rtostring_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rtostring_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tocset_α
proc_tocset_α:
#=======================================================================================================================
    .global proc_tocset_α
    .global proc_tocset_β
    .global proc_tocset_γ
    .global proc_tocset_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tocset_α_body:
# IR_VAR
 xchain00256_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00256_n1_α
 xchain00256_n0_β:
 jmp xchain00256_n2_α
# IR_UNOP
 xchain00256_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00256_n2_α
 cmp eax, 0
 jne xchain00256_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00256_n3_α
 xchain00256_n1_β:
 jmp xchain00256_n2_α
# IR_LIT_INTEGER
 xchain00256_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00256_n4_α
 xchain00256_n2_β:
 jmp proc_tocset_ω
.Lx00257_0:
 .quad 1
# IR_LIT_STRING
 xchain00256_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00256_n5_α
 xchain00256_n3_β:
 jmp proc_tocset_ω
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "cset(\"407\")"
# IR_VAR
 xchain00256_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00256_n6_α
 xchain00256_n4_β:
 jmp proc_tocset_ω
# IR_RETURN
 xchain00256_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tocset_γ
# IR_TO
 xchain00256_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00259_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00256_n7_α
 xchain00256_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00259_0
# IR_LIT_STRING
 xchain00256_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00256_n8_α
 xchain00256_n7_β:
 jmp xchain00256_n6_β
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "407"
 xchain00256_n8_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn758: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn758]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00256_n6_β
 jmp xchain00256_n6_β
 xchain00256_n8_β:
 jmp xchain00256_n6_β
proc_tocset_β:
jmp proc_tocset_ω
proc_tocset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tocset_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_charf_α
proc_charf_α:
#=======================================================================================================================
    .global proc_charf_α
    .global proc_charf_β
    .global proc_charf_γ
    .global proc_charf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_charf_α_body:
# IR_VAR
 xchain00261_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00261_n1_α
 xchain00261_n0_β:
 jmp xchain00261_n2_α
# IR_UNOP
 xchain00261_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00261_n2_α
 cmp eax, 0
 jne xchain00261_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00261_n3_α
 xchain00261_n1_β:
 jmp xchain00261_n2_α
# IR_LIT_INTEGER
 xchain00261_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00261_n4_α
 xchain00261_n2_β:
 jmp proc_charf_ω
.Lx00262_0:
 .quad 1
# IR_LIT_STRING
 xchain00261_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00261_n5_α
 xchain00261_n3_β:
 jmp proc_charf_ω
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "char(65)"
# IR_VAR
 xchain00261_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00261_n6_α
 xchain00261_n4_β:
 jmp proc_charf_ω
# IR_RETURN
 xchain00261_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_charf_γ
# IR_TO
 xchain00261_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00264_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00261_n7_α
 xchain00261_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00264_0
# IR_LIT_INTEGER
 xchain00261_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00261_n8_α
 xchain00261_n7_β:
 jmp xchain00261_n6_β
.Lx00265_0:
 .quad 65
 xchain00261_n8_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn772: .string "char"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn772]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00261_n6_β
 jmp xchain00261_n6_β
 xchain00261_n8_β:
 jmp xchain00261_n6_β
proc_charf_β:
jmp proc_charf_ω
proc_charf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_charf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_ordf_α
proc_ordf_α:
#=======================================================================================================================
    .global proc_ordf_α
    .global proc_ordf_β
    .global proc_ordf_γ
    .global proc_ordf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_ordf_α_body:
# IR_VAR
 xchain00266_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00266_n1_α
 xchain00266_n0_β:
 jmp xchain00266_n2_α
# IR_UNOP
 xchain00266_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00266_n2_α
 cmp eax, 0
 jne xchain00266_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00266_n3_α
 xchain00266_n1_β:
 jmp xchain00266_n2_α
# IR_LIT_INTEGER
 xchain00266_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00266_n4_α
 xchain00266_n2_β:
 jmp proc_ordf_ω
.Lx00267_0:
 .quad 1
# IR_LIT_STRING
 xchain00266_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00266_n5_α
 xchain00266_n3_β:
 jmp proc_ordf_ω
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "ord(\"A\")"
# IR_VAR
 xchain00266_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00266_n6_α
 xchain00266_n4_β:
 jmp proc_ordf_ω
# IR_RETURN
 xchain00266_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_ordf_γ
# IR_TO
 xchain00266_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00269_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00266_n7_α
 xchain00266_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00269_0
# IR_LIT_STRING
 xchain00266_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00266_n8_α
 xchain00266_n7_β:
 jmp xchain00266_n6_β
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "A"
 xchain00266_n8_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn786: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn786]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00266_n6_β
 jmp xchain00266_n6_β
 xchain00266_n8_β:
 jmp xchain00266_n6_β
proc_ordf_β:
jmp proc_ordf_ω
proc_ordf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_ordf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strsize_α
proc_strsize_α:
#=======================================================================================================================
    .global proc_strsize_α
    .global proc_strsize_β
    .global proc_strsize_γ
    .global proc_strsize_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strsize_α_body:
# IR_VAR
 xchain00271_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00271_n1_α
 xchain00271_n0_β:
 jmp xchain00271_n2_α
# IR_UNOP
 xchain00271_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00271_n2_α
 cmp eax, 0
 jne xchain00271_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00271_n3_α
 xchain00271_n1_β:
 jmp xchain00271_n2_α
# IR_LIT_INTEGER
 xchain00271_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00271_n4_α
 xchain00271_n2_β:
 jmp proc_strsize_ω
.Lx00272_0:
 .quad 1
# IR_LIT_STRING
 xchain00271_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00271_n5_α
 xchain00271_n3_β:
 jmp proc_strsize_ω
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "*\"abcde\""
# IR_VAR
 xchain00271_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00271_n6_α
 xchain00271_n4_β:
 jmp proc_strsize_ω
# IR_RETURN
 xchain00271_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsize_γ
# IR_TO
 xchain00271_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00274_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00271_n7_α
 xchain00271_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00274_0
# IR_LIT_STRING
 xchain00271_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00271_n8_α
 xchain00271_n7_β:
 jmp xchain00271_n6_β
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "abcde"
# IR_UNOP
 xchain00271_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00271_n6_β
 xchain00271_n8_β:
 jmp xchain00271_n6_β
proc_strsize_β:
jmp proc_strsize_ω
proc_strsize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strsize_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_concat_α
proc_concat_α:
#=======================================================================================================================
    .global proc_concat_α
    .global proc_concat_β
    .global proc_concat_γ
    .global proc_concat_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_concat_α_body:
# IR_VAR
 xchain00276_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00276_n1_α
 xchain00276_n0_β:
 jmp xchain00276_n2_α
# IR_UNOP
 xchain00276_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00276_n2_α
 cmp eax, 0
 jne xchain00276_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00276_n3_α
 xchain00276_n1_β:
 jmp xchain00276_n2_α
# IR_LIT_INTEGER
 xchain00276_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00276_n4_α
 xchain00276_n2_β:
 jmp proc_concat_ω
.Lx00277_0:
 .quad 1
# IR_LIT_STRING
 xchain00276_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00276_n5_α
 xchain00276_n3_β:
 jmp proc_concat_ω
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "\"a\" || \"b\""
# IR_VAR
 xchain00276_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00276_n6_α
 xchain00276_n4_β:
 jmp proc_concat_ω
# IR_RETURN
 xchain00276_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_concat_γ
# IR_TO
 xchain00276_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00279_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00276_n7_α
 xchain00276_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00279_0
# IR_LIT_STRING
 xchain00276_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00276_n8_α
 xchain00276_n7_β:
 jmp xchain00276_n6_β
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00276_n8_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00276_n9_α
 xchain00276_n8_β:
 jmp xchain00276_n6_β
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "b"
 xchain00276_n9_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00276_n6_β
 xchain00276_n9_β:
 jmp xchain00276_n6_β
proc_concat_β:
jmp proc_concat_ω
proc_concat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_concat_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strpick_α
proc_strpick_α:
#=======================================================================================================================
    .global proc_strpick_α
    .global proc_strpick_β
    .global proc_strpick_γ
    .global proc_strpick_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strpick_α_body:
# IR_VAR
 xchain00282_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00282_n1_α
 xchain00282_n0_β:
 jmp xchain00282_n2_α
# IR_UNOP
 xchain00282_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00282_n2_α
 cmp eax, 0
 jne xchain00282_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00282_n3_α
 xchain00282_n1_β:
 jmp xchain00282_n2_α
# IR_LIT_INTEGER
 xchain00282_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00282_n4_α
 xchain00282_n2_β:
 jmp proc_strpick_ω
.Lx00283_0:
 .quad 1
# IR_LIT_STRING
 xchain00282_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00282_n5_α
 xchain00282_n3_β:
 jmp proc_strpick_ω
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "?\"abcde\""
# IR_VAR
 xchain00282_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00282_n6_α
 xchain00282_n4_β:
 jmp proc_strpick_ω
# IR_RETURN
 xchain00282_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strpick_γ
# IR_TO
 xchain00282_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00285_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00282_n7_α
 xchain00282_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00285_0
# IR_LIT_STRING
 xchain00282_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00282_n8_α
 xchain00282_n7_β:
 jmp xchain00282_n6_β
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "abcde"
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00282_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00282_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00282_n9_α
 xchain00282_n8_β:
 jmp xchain00282_n6_β
# IR_DEREF variable -> value
 xchain00282_n9_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00282_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00282_n6_β
 xchain00282_n9_β:
 jmp xchain00282_n6_β
proc_strpick_β:
jmp proc_strpick_ω
proc_strpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strpick_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strbang_α
proc_strbang_α:
#=======================================================================================================================
    .global proc_strbang_α
    .global proc_strbang_β
    .global proc_strbang_γ
    .global proc_strbang_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strbang_α_body:
# IR_VAR
 xchain00287_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00287_n1_α
 xchain00287_n0_β:
 jmp xchain00287_n2_α
# IR_UNOP
 xchain00287_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00287_n2_α
 cmp eax, 0
 jne xchain00287_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00287_n3_α
 xchain00287_n1_β:
 jmp xchain00287_n2_α
# IR_LIT_INTEGER
 xchain00287_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00287_n4_α
 xchain00287_n2_β:
 jmp proc_strbang_ω
.Lx00288_0:
 .quad 1
# IR_LIT_STRING
 xchain00287_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00287_n5_α
 xchain00287_n3_β:
 jmp proc_strbang_ω
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "!\"12345\""
# IR_VAR
 xchain00287_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00287_n6_α
 xchain00287_n4_β:
 jmp proc_strbang_ω
# IR_RETURN
 xchain00287_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strbang_γ
# IR_TO
 xchain00287_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00290_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00287_n7_α
 xchain00287_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00290_0
# IR_LIT_STRING
 xchain00287_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00287_n8_α
 xchain00287_n7_β:
 jmp xchain00287_n6_β
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00287_n8_α:
 mov qword ptr [r12 + 112], 0
.Lx00292_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00287_n6_β
 jmp xchain00287_n8_β
 xchain00287_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00292_0
proc_strbang_β:
jmp proc_strbang_ω
proc_strbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strbang_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strsub_α
proc_strsub_α:
#=======================================================================================================================
    .global proc_strsub_α
    .global proc_strsub_β
    .global proc_strsub_γ
    .global proc_strsub_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_strsub_α_body:
# IR_VAR
 xchain00293_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00293_n1_α
 xchain00293_n0_β:
 jmp xchain00293_n2_α
# IR_UNOP
 xchain00293_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00293_n2_α
 cmp eax, 0
 jne xchain00293_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00293_n3_α
 xchain00293_n1_β:
 jmp xchain00293_n2_α
# IR_LIT_INTEGER
 xchain00293_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00293_n4_α
 xchain00293_n2_β:
 jmp proc_strsub_ω
.Lx00294_0:
 .quad 1
# IR_LIT_STRING
 xchain00293_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00293_n5_α
 xchain00293_n3_β:
 jmp proc_strsub_ω
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "\"abcde\"[3]"
# IR_VAR
 xchain00293_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00293_n6_α
 xchain00293_n4_β:
 jmp proc_strsub_ω
# IR_RETURN
 xchain00293_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsub_γ
# IR_TO
 xchain00293_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00296_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00293_n7_α
 xchain00293_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00296_0
# IR_LIT_STRING
 xchain00293_n7_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00293_n8_α
 xchain00293_n7_β:
 jmp xchain00293_n6_β
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00293_n8_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00293_n9_α
 xchain00293_n8_β:
 jmp xchain00293_n6_β
.Lx00298_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00293_n9_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00293_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00293_n10_α
 xchain00293_n9_β:
 jmp xchain00293_n6_β
# IR_DEREF variable -> value
 xchain00293_n10_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00293_n6_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00293_n6_β
 xchain00293_n10_β:
 jmp xchain00293_n6_β
proc_strsub_β:
jmp proc_strsub_ω
proc_strsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strsub_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_substr_α
proc_substr_α:
#=======================================================================================================================
    .global proc_substr_α
    .global proc_substr_β
    .global proc_substr_γ
    .global proc_substr_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_substr_α_body:
# IR_VAR
 xchain00299_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00299_n1_α
 xchain00299_n0_β:
 jmp xchain00299_n2_α
# IR_UNOP
 xchain00299_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00299_n2_α
 cmp eax, 0
 jne xchain00299_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00299_n3_α
 xchain00299_n1_β:
 jmp xchain00299_n2_α
# IR_LIT_INTEGER
 xchain00299_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00299_n4_α
 xchain00299_n2_β:
 jmp proc_substr_ω
.Lx00300_0:
 .quad 1
# IR_LIT_STRING
 xchain00299_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00299_n5_α
 xchain00299_n3_β:
 jmp proc_substr_ω
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "\"abcde\"[2:5]"
# IR_VAR
 xchain00299_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00299_n6_α
 xchain00299_n4_β:
 jmp proc_substr_ω
# IR_RETURN
 xchain00299_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_substr_γ
# IR_TO
 xchain00299_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00302_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00299_n7_α
 xchain00299_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00302_0
# IR_LIT_STRING
 xchain00299_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00299_n8_α
 xchain00299_n7_β:
 jmp xchain00299_n6_β
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00299_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00299_n9_α
 xchain00299_n8_β:
 jmp xchain00299_n6_β
.Lx00304_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00299_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00299_n10_α
 xchain00299_n9_β:
 jmp xchain00299_n6_β
.Lx00305_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00299_n10_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00299_n6_β
 xchain00299_n10_β:
 jmp xchain00299_n6_β
proc_substr_β:
jmp proc_substr_ω
proc_substr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 240]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_substr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_subsasg_α
proc_subsasg_α:
#=======================================================================================================================
    .global proc_subsasg_α
    .global proc_subsasg_β
    .global proc_subsasg_γ
    .global proc_subsasg_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_subsasg_α_body:
# IR_VAR
 xchain00306_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00306_n1_α
 xchain00306_n0_β:
 jmp xchain00306_n2_α
# IR_UNOP
 xchain00306_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00306_n2_α
 cmp eax, 0
 jne xchain00306_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00306_n3_α
 xchain00306_n1_β:
 jmp xchain00306_n2_α
# IR_LIT_INTEGER
 xchain00306_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00306_n4_α
 xchain00306_n2_β:
 jmp proc_subsasg_ω
.Lx00307_0:
 .quad 1
# IR_LIT_STRING
 xchain00306_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00308_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00306_n5_α
 xchain00306_n3_β:
 jmp proc_subsasg_ω
.Lx00308_0:
 .quad .Lx00308_0_s
.Lx00308_0_s:
 .string "s[2:5] := \"x\""
# IR_VAR
 xchain00306_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00306_n6_α
 xchain00306_n4_β:
 jmp proc_subsasg_ω
# IR_RETURN
 xchain00306_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_subsasg_γ
# IR_TO
 xchain00306_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00309_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00306_n7_α
 xchain00306_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00309_0
# IR_LIT_STRING
 xchain00306_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00306_n8_α
 xchain00306_n7_β:
 jmp xchain00306_n6_β
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "abcde"
 xchain00306_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00306_n9_α
 xchain00306_n8_β:
 jmp xchain00306_n6_β
# IR_LIT_INTEGER
 xchain00306_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00306_n10_α
 xchain00306_n9_β:
 jmp xchain00306_n6_β
.Lx00311_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00306_n10_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00306_n11_α
 xchain00306_n10_β:
 jmp xchain00306_n6_β
.Lx00312_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00306_n11_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00306_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00306_n12_α
 xchain00306_n11_β:
 jmp xchain00306_n6_β
# IR_LIT_STRING
 xchain00306_n12_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00306_n13_α
 xchain00306_n12_β:
 jmp xchain00306_n6_β
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "x"
# IR_ASSIGN_VAR write through variable
 xchain00306_n13_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00306_n6_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00306_n6_β
 xchain00306_n13_β:
 jmp xchain00306_n6_β
proc_subsasg_β:
jmp proc_subsasg_ω
proc_subsasg_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_subsasg_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strcmp_α
proc_strcmp_α:
#=======================================================================================================================
    .global proc_strcmp_α
    .global proc_strcmp_β
    .global proc_strcmp_γ
    .global proc_strcmp_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strcmp_α_body:
# IR_VAR
 xchain00314_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00314_n1_α
 xchain00314_n0_β:
 jmp xchain00314_n2_α
# IR_UNOP
 xchain00314_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00314_n2_α
 cmp eax, 0
 jne xchain00314_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00314_n3_α
 xchain00314_n1_β:
 jmp xchain00314_n2_α
# IR_LIT_INTEGER
 xchain00314_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00314_n4_α
 xchain00314_n2_β:
 jmp proc_strcmp_ω
.Lx00315_0:
 .quad 1
# IR_LIT_STRING
 xchain00314_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00314_n5_α
 xchain00314_n3_β:
 jmp proc_strcmp_ω
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "\"abc\">>\"aaa\""
# IR_VAR
 xchain00314_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00314_n6_α
 xchain00314_n4_β:
 jmp proc_strcmp_ω
# IR_RETURN
 xchain00314_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcmp_γ
# IR_TO
 xchain00314_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00317_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00314_n7_α
 xchain00314_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00317_0
# IR_LIT_STRING
 xchain00314_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00314_n8_α
 xchain00314_n7_β:
 jmp xchain00314_n6_β
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00314_n8_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00319_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00314_n9_α
 xchain00314_n8_β:
 jmp xchain00314_n6_β
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "aaa"
 xchain00314_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00314_n6_β
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00314_n6_β
 xchain00314_n9_β:
 jmp xchain00314_n6_β
proc_strcmp_β:
jmp proc_strcmp_ω
proc_strcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strcmp_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_strident_α
proc_strident_α:
#=======================================================================================================================
    .global proc_strident_α
    .global proc_strident_β
    .global proc_strident_γ
    .global proc_strident_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_strident_α_body:
# IR_VAR
 xchain00320_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00320_n1_α
 xchain00320_n0_β:
 jmp xchain00320_n2_α
# IR_UNOP
 xchain00320_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00320_n2_α
 cmp eax, 0
 jne xchain00320_n2_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00320_n3_α
 xchain00320_n1_β:
 jmp xchain00320_n2_α
# IR_LIT_INTEGER
 xchain00320_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00320_n4_α
 xchain00320_n2_β:
 jmp proc_strident_ω
.Lx00321_0:
 .quad 1
# IR_LIT_STRING
 xchain00320_n3_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00320_n5_α
 xchain00320_n3_β:
 jmp proc_strident_ω
.Lx00322_0:
 .quad .Lx00322_0_s
.Lx00322_0_s:
 .string "\"abc\"===\"aaa\""
# IR_VAR
 xchain00320_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00320_n6_α
 xchain00320_n4_β:
 jmp proc_strident_ω
# IR_RETURN
 xchain00320_n5_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strident_γ
# IR_TO
 xchain00320_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00323_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00320_n6_β
 xchain00320_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00323_0
proc_strident_β:
jmp proc_strident_ω
proc_strident_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 176]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_strident_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_replf_α
proc_replf_α:
#=======================================================================================================================
    .global proc_replf_α
    .global proc_replf_β
    .global proc_replf_γ
    .global proc_replf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_replf_α_body:
# IR_VAR
 xchain00324_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00324_n1_α
 xchain00324_n0_β:
 jmp xchain00324_n2_α
# IR_UNOP
 xchain00324_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00324_n2_α
 cmp eax, 0
 jne xchain00324_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00324_n3_α
 xchain00324_n1_β:
 jmp xchain00324_n2_α
# IR_LIT_INTEGER
 xchain00324_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00324_n4_α
 xchain00324_n2_β:
 jmp proc_replf_ω
.Lx00325_0:
 .quad 1
# IR_LIT_STRING
 xchain00324_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00324_n5_α
 xchain00324_n3_β:
 jmp proc_replf_ω
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "repl(\"-\",20)"
# IR_VAR
 xchain00324_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00324_n6_α
 xchain00324_n4_β:
 jmp proc_replf_ω
# IR_RETURN
 xchain00324_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_replf_γ
# IR_TO
 xchain00324_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00327_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00324_n7_α
 xchain00324_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00327_0
# IR_LIT_STRING
 xchain00324_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00324_n8_α
 xchain00324_n7_β:
 jmp xchain00324_n6_β
.Lx00328_0:
 .quad .Lx00328_0_s
.Lx00328_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00324_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00324_n9_α
 xchain00324_n8_β:
 jmp xchain00324_n6_β
.Lx00329_0:
 .quad 20
 xchain00324_n9_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn929: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn929]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00324_n6_β
 jmp xchain00324_n6_β
 xchain00324_n9_β:
 jmp xchain00324_n6_β
proc_replf_β:
jmp proc_replf_ω
proc_replf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_replf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_reversef_α
proc_reversef_α:
#=======================================================================================================================
    .global proc_reversef_α
    .global proc_reversef_β
    .global proc_reversef_γ
    .global proc_reversef_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_reversef_α_body:
# IR_VAR
 xchain00330_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00330_n1_α
 xchain00330_n0_β:
 jmp xchain00330_n2_α
# IR_UNOP
 xchain00330_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00330_n2_α
 cmp eax, 0
 jne xchain00330_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00330_n3_α
 xchain00330_n1_β:
 jmp xchain00330_n2_α
# IR_LIT_INTEGER
 xchain00330_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00330_n4_α
 xchain00330_n2_β:
 jmp proc_reversef_ω
.Lx00331_0:
 .quad 1
# IR_LIT_STRING
 xchain00330_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00330_n5_α
 xchain00330_n3_β:
 jmp proc_reversef_ω
.Lx00332_0:
 .quad .Lx00332_0_s
.Lx00332_0_s:
 .string "reverse(\"a...z\")"
# IR_VAR
 xchain00330_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00330_n6_α
 xchain00330_n4_β:
 jmp proc_reversef_ω
# IR_RETURN
 xchain00330_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reversef_γ
# IR_TO
 xchain00330_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00333_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00330_n7_α
 xchain00330_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00333_0
# IR_LIT_STRING
 xchain00330_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00330_n8_α
 xchain00330_n7_β:
 jmp xchain00330_n6_β
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00330_n8_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn943: .string "reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn943]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00330_n6_β
 jmp xchain00330_n6_β
 xchain00330_n8_β:
 jmp xchain00330_n6_β
proc_reversef_β:
jmp proc_reversef_ω
proc_reversef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_reversef_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_leftf_α
proc_leftf_α:
#=======================================================================================================================
    .global proc_leftf_α
    .global proc_leftf_β
    .global proc_leftf_γ
    .global proc_leftf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_leftf_α_body:
# IR_VAR
 xchain00335_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00335_n1_α
 xchain00335_n0_β:
 jmp xchain00335_n2_α
# IR_UNOP
 xchain00335_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00335_n2_α
 cmp eax, 0
 jne xchain00335_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00335_n3_α
 xchain00335_n1_β:
 jmp xchain00335_n2_α
# IR_LIT_INTEGER
 xchain00335_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00335_n4_α
 xchain00335_n2_β:
 jmp proc_leftf_ω
.Lx00336_0:
 .quad 1
# IR_LIT_STRING
 xchain00335_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00335_n5_α
 xchain00335_n3_β:
 jmp proc_leftf_ω
.Lx00337_0:
 .quad .Lx00337_0_s
.Lx00337_0_s:
 .string "left(\"a\",10)"
# IR_VAR
 xchain00335_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00335_n6_α
 xchain00335_n4_β:
 jmp proc_leftf_ω
# IR_RETURN
 xchain00335_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_leftf_γ
# IR_TO
 xchain00335_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00338_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00335_n7_α
 xchain00335_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00338_0
# IR_LIT_STRING
 xchain00335_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00335_n8_α
 xchain00335_n7_β:
 jmp xchain00335_n6_β
.Lx00339_0:
 .quad .Lx00339_0_s
.Lx00339_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00335_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00335_n9_α
 xchain00335_n8_β:
 jmp xchain00335_n6_β
.Lx00340_0:
 .quad 10
 xchain00335_n9_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn958: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn958]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00335_n6_β
 jmp xchain00335_n6_β
 xchain00335_n9_β:
 jmp xchain00335_n6_β
proc_leftf_β:
jmp proc_leftf_ω
proc_leftf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_leftf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_centerf_α
proc_centerf_α:
#=======================================================================================================================
    .global proc_centerf_α
    .global proc_centerf_β
    .global proc_centerf_γ
    .global proc_centerf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_centerf_α_body:
# IR_VAR
 xchain00341_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00341_n1_α
 xchain00341_n0_β:
 jmp xchain00341_n2_α
# IR_UNOP
 xchain00341_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00341_n2_α
 cmp eax, 0
 jne xchain00341_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00341_n3_α
 xchain00341_n1_β:
 jmp xchain00341_n2_α
# IR_LIT_INTEGER
 xchain00341_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00341_n4_α
 xchain00341_n2_β:
 jmp proc_centerf_ω
.Lx00342_0:
 .quad 1
# IR_LIT_STRING
 xchain00341_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00341_n5_α
 xchain00341_n3_β:
 jmp proc_centerf_ω
.Lx00343_0:
 .quad .Lx00343_0_s
.Lx00343_0_s:
 .string "center(\"a\",10)"
# IR_VAR
 xchain00341_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00341_n6_α
 xchain00341_n4_β:
 jmp proc_centerf_ω
# IR_RETURN
 xchain00341_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_centerf_γ
# IR_TO
 xchain00341_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00344_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00341_n7_α
 xchain00341_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00344_0
# IR_LIT_STRING
 xchain00341_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00341_n8_α
 xchain00341_n7_β:
 jmp xchain00341_n6_β
.Lx00345_0:
 .quad .Lx00345_0_s
.Lx00345_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00341_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00341_n9_α
 xchain00341_n8_β:
 jmp xchain00341_n6_β
.Lx00346_0:
 .quad 10
 xchain00341_n9_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn973: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn973]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00341_n6_β
 jmp xchain00341_n6_β
 xchain00341_n9_β:
 jmp xchain00341_n6_β
proc_centerf_β:
jmp proc_centerf_ω
proc_centerf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_centerf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rightf_α
proc_rightf_α:
#=======================================================================================================================
    .global proc_rightf_α
    .global proc_rightf_β
    .global proc_rightf_γ
    .global proc_rightf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_rightf_α_body:
# IR_VAR
 xchain00347_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00347_n1_α
 xchain00347_n0_β:
 jmp xchain00347_n2_α
# IR_UNOP
 xchain00347_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00347_n2_α
 cmp eax, 0
 jne xchain00347_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00347_n3_α
 xchain00347_n1_β:
 jmp xchain00347_n2_α
# IR_LIT_INTEGER
 xchain00347_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00347_n4_α
 xchain00347_n2_β:
 jmp proc_rightf_ω
.Lx00348_0:
 .quad 1
# IR_LIT_STRING
 xchain00347_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00349_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00347_n5_α
 xchain00347_n3_β:
 jmp proc_rightf_ω
.Lx00349_0:
 .quad .Lx00349_0_s
.Lx00349_0_s:
 .string "right(\"a\",10)"
# IR_VAR
 xchain00347_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00347_n6_α
 xchain00347_n4_β:
 jmp proc_rightf_ω
# IR_RETURN
 xchain00347_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rightf_γ
# IR_TO
 xchain00347_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00350_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00347_n7_α
 xchain00347_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00350_0
# IR_LIT_STRING
 xchain00347_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00347_n8_α
 xchain00347_n7_β:
 jmp xchain00347_n6_β
.Lx00351_0:
 .quad .Lx00351_0_s
.Lx00351_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00347_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00347_n9_α
 xchain00347_n8_β:
 jmp xchain00347_n6_β
.Lx00352_0:
 .quad 10
 xchain00347_n9_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn988: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn988]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00347_n6_β
 jmp xchain00347_n6_β
 xchain00347_n9_β:
 jmp xchain00347_n6_β
proc_rightf_β:
jmp proc_rightf_ω
proc_rightf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rightf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_trimf_α
proc_trimf_α:
#=======================================================================================================================
    .global proc_trimf_α
    .global proc_trimf_β
    .global proc_trimf_γ
    .global proc_trimf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_trimf_α_body:
# IR_VAR
 xchain00353_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00353_n1_α
 xchain00353_n0_β:
 jmp xchain00353_n2_α
# IR_UNOP
 xchain00353_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00353_n2_α
 cmp eax, 0
 jne xchain00353_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00353_n3_α
 xchain00353_n1_β:
 jmp xchain00353_n2_α
# IR_LIT_INTEGER
 xchain00353_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00353_n4_α
 xchain00353_n2_β:
 jmp proc_trimf_ω
.Lx00354_0:
 .quad 1
# IR_LIT_STRING
 xchain00353_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00353_n5_α
 xchain00353_n3_β:
 jmp proc_trimf_ω
.Lx00355_0:
 .quad .Lx00355_0_s
.Lx00355_0_s:
 .string "trim(\"a  ...\")"
# IR_VAR
 xchain00353_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00353_n6_α
 xchain00353_n4_β:
 jmp proc_trimf_ω
# IR_RETURN
 xchain00353_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_trimf_γ
# IR_TO
 xchain00353_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00356_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00353_n7_α
 xchain00353_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00356_0
# IR_LIT_STRING
 xchain00353_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00353_n8_α
 xchain00353_n7_β:
 jmp xchain00353_n6_β
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string "a         "
 xchain00353_n8_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1002: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1002]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00353_n6_β
 jmp xchain00353_n6_β
 xchain00353_n8_β:
 jmp xchain00353_n6_β
proc_trimf_β:
jmp proc_trimf_ω
proc_trimf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_trimf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_entabf_α
proc_entabf_α:
#=======================================================================================================================
    .global proc_entabf_α
    .global proc_entabf_β
    .global proc_entabf_γ
    .global proc_entabf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_entabf_α_body:
# IR_VAR
 xchain00358_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00358_n1_α
 xchain00358_n0_β:
 jmp xchain00358_n2_α
# IR_UNOP
 xchain00358_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00358_n2_α
 cmp eax, 0
 jne xchain00358_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00358_n3_α
 xchain00358_n1_β:
 jmp xchain00358_n2_α
# IR_LIT_INTEGER
 xchain00358_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00358_n4_α
 xchain00358_n2_β:
 jmp proc_entabf_ω
.Lx00359_0:
 .quad 1
# IR_LIT_STRING
 xchain00358_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00358_n5_α
 xchain00358_n3_β:
 jmp proc_entabf_ω
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "entab(\"a  ...\")"
# IR_VAR
 xchain00358_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00358_n6_α
 xchain00358_n4_β:
 jmp proc_entabf_ω
# IR_RETURN
 xchain00358_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_entabf_γ
# IR_TO
 xchain00358_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00361_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00358_n7_α
 xchain00358_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00361_0
# IR_LIT_STRING
 xchain00358_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00358_n8_α
 xchain00358_n7_β:
 jmp xchain00358_n6_β
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string "a         "
 xchain00358_n8_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1016: .string "entab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1016]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00358_n6_β
 jmp xchain00358_n6_β
 xchain00358_n8_β:
 jmp xchain00358_n6_β
proc_entabf_β:
jmp proc_entabf_ω
proc_entabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_entabf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_detabf_α
proc_detabf_α:
#=======================================================================================================================
    .global proc_detabf_α
    .global proc_detabf_β
    .global proc_detabf_γ
    .global proc_detabf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_detabf_α_body:
# IR_VAR
 xchain00363_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00363_n1_α
 xchain00363_n0_β:
 jmp xchain00363_n2_α
# IR_UNOP
 xchain00363_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00363_n2_α
 cmp eax, 0
 jne xchain00363_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00363_n3_α
 xchain00363_n1_β:
 jmp xchain00363_n2_α
# IR_LIT_INTEGER
 xchain00363_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00363_n4_α
 xchain00363_n2_β:
 jmp proc_detabf_ω
.Lx00364_0:
 .quad 1
# IR_LIT_STRING
 xchain00363_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00363_n5_α
 xchain00363_n3_β:
 jmp proc_detabf_ω
.Lx00365_0:
 .quad .Lx00365_0_s
.Lx00365_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_VAR
 xchain00363_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00363_n6_α
 xchain00363_n4_β:
 jmp proc_detabf_ω
# IR_RETURN
 xchain00363_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_detabf_γ
# IR_TO
 xchain00363_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00366_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00363_n7_α
 xchain00363_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00366_0
# IR_LIT_STRING
 xchain00363_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00363_n8_α
 xchain00363_n7_β:
 jmp xchain00363_n6_β
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "a\tb\tc"
 xchain00363_n8_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1030: .string "detab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1030]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00363_n6_β
 jmp xchain00363_n6_β
 xchain00363_n8_β:
 jmp xchain00363_n6_β
proc_detabf_β:
jmp proc_detabf_ω
proc_detabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_detabf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_mapf_α
proc_mapf_α:
#=======================================================================================================================
    .global proc_mapf_α
    .global proc_mapf_β
    .global proc_mapf_γ
    .global proc_mapf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_mapf_α_body:
# IR_VAR
 xchain00368_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00368_n1_α
 xchain00368_n0_β:
 jmp xchain00368_n2_α
# IR_UNOP
 xchain00368_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00368_n2_α
 cmp eax, 0
 jne xchain00368_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00368_n3_α
 xchain00368_n1_β:
 jmp xchain00368_n2_α
# IR_LIT_INTEGER
 xchain00368_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00368_n4_α
 xchain00368_n2_β:
 jmp proc_mapf_ω
.Lx00369_0:
 .quad 1
# IR_LIT_STRING
 xchain00368_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00368_n5_α
 xchain00368_n3_β:
 jmp proc_mapf_ω
.Lx00370_0:
 .quad .Lx00370_0_s
.Lx00370_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_VAR
 xchain00368_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00368_n6_α
 xchain00368_n4_β:
 jmp proc_mapf_ω
# IR_RETURN
 xchain00368_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mapf_γ
# IR_TO
 xchain00368_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00371_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00368_n7_α
 xchain00368_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00371_0
# IR_LIT_STRING
 xchain00368_n7_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00368_n8_α
 xchain00368_n7_β:
 jmp xchain00368_n6_β
.Lx00372_0:
 .quad .Lx00372_0_s
.Lx00372_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00368_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00368_n9_α
 xchain00368_n8_β:
 jmp xchain00368_n6_β
.Lx00373_0:
 .quad .Lx00373_0_s
.Lx00373_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00368_n9_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00368_n10_α
 xchain00368_n9_β:
 jmp xchain00368_n6_β
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00368_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1046: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1046]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00368_n6_β
 jmp xchain00368_n6_β
 xchain00368_n10_β:
 jmp xchain00368_n6_β
proc_mapf_β:
jmp proc_mapf_ω
proc_mapf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mapf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_map1_α
proc_map1_α:
#=======================================================================================================================
    .global proc_map1_α
    .global proc_map1_β
    .global proc_map1_γ
    .global proc_map1_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_map1_α_body:
# IR_VAR
 xchain00375_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00375_n1_α
 xchain00375_n0_β:
 jmp xchain00375_n2_α
# IR_UNOP
 xchain00375_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00375_n2_α
 cmp eax, 0
 jne xchain00375_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00375_n3_α
 xchain00375_n1_β:
 jmp xchain00375_n2_α
# IR_LIT_INTEGER
 xchain00375_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00375_n4_α
 xchain00375_n2_β:
 jmp proc_map1_ω
.Lx00376_0:
 .quad 1
# IR_LIT_STRING
 xchain00375_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00375_n5_α
 xchain00375_n3_β:
 jmp proc_map1_ω
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_VAR
 xchain00375_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00375_n6_α
 xchain00375_n4_β:
 jmp proc_map1_ω
# IR_RETURN
 xchain00375_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map1_γ
# IR_TO
 xchain00375_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00378_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00375_n7_α
 xchain00375_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00378_0
# IR_LIT_STRING
 xchain00375_n7_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00375_n8_α
 xchain00375_n7_β:
 jmp xchain00375_n6_β
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00375_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00375_n9_α
 xchain00375_n8_β:
 jmp xchain00375_n6_β
.Lx00380_0:
 .quad .Lx00380_0_s
.Lx00380_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00375_n9_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00375_n10_α
 xchain00375_n9_β:
 jmp xchain00375_n6_β
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "ba"
 xchain00375_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1062: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1062]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00375_n6_β
 jmp xchain00375_n6_β
 xchain00375_n10_β:
 jmp xchain00375_n6_β
proc_map1_β:
jmp proc_map1_ω
proc_map1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_map1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_map2_α
proc_map2_α:
#=======================================================================================================================
    .global proc_map2_α
    .global proc_map2_β
    .global proc_map2_γ
    .global proc_map2_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_map2_α_body:
# IR_VAR
 xchain00382_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 392], rax
 jmp xchain00382_n1_α
 xchain00382_n0_β:
 jmp xchain00382_n2_α
# IR_UNOP
 xchain00382_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00382_n2_α
 cmp eax, 0
 jne xchain00382_n2_α
 mov qword ptr [r12 + 368], 0
 mov qword ptr [r12 + 376], 0
 jmp xchain00382_n3_α
 xchain00382_n1_β:
 jmp xchain00382_n2_α
# IR_LIT_INTEGER
 xchain00382_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00382_n4_α
 xchain00382_n2_β:
 jmp proc_map2_ω
.Lx00383_0:
 .quad 1
# IR_LIT_STRING
 xchain00382_n3_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00382_n5_α
 xchain00382_n3_β:
 jmp proc_map2_ω
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_VAR
 xchain00382_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00382_n6_α
 xchain00382_n4_β:
 jmp proc_map2_ω
# IR_RETURN
 xchain00382_n5_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map2_γ
# IR_TO
 xchain00382_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00385_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00382_n7_α
 xchain00382_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00385_0
# IR_LIT_STRING
 xchain00382_n7_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00382_n8_α
 xchain00382_n7_β:
 jmp xchain00382_n6_β
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00382_n8_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00387_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00382_n9_α
 xchain00382_n8_β:
 jmp xchain00382_n6_β
.Lx00387_0:
 .quad .Lx00387_0_s
.Lx00387_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00382_n9_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00382_n10_α
 xchain00382_n9_β:
 jmp xchain00382_n6_β
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string "ba"
 xchain00382_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [r12+304] -> [r12+256]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1078: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1078]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00382_n6_β
 jmp xchain00382_n11_α
 xchain00382_n10_β:
 jmp xchain00382_n6_β
# IR_LIT_STRING
 xchain00382_n11_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00382_n12_α
 xchain00382_n11_β:
 jmp xchain00382_n6_β
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "c"
# IR_LIT_STRING
 xchain00382_n12_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00382_n13_α
 xchain00382_n12_β:
 jmp xchain00382_n6_β
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00382_n13_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00382_n14_α
 xchain00382_n13_β:
 jmp xchain00382_n6_β
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "cd"
 xchain00382_n14_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+160] -> [r12+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1083: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1083]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00382_n6_β
 jmp xchain00382_n15_α
 xchain00382_n14_β:
 jmp xchain00382_n6_β
 xchain00382_n15_α:
 jmp xchain00382_n6_β
xchain00382_n15_β:
 jmp xchain00382_n6_β
proc_map2_β:
jmp proc_map2_ω
proc_map2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 400]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_map2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tablemap_α
proc_tablemap_α:
#=======================================================================================================================
    .global proc_tablemap_α
    .global proc_tablemap_β
    .global proc_tablemap_γ
    .global proc_tablemap_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 528], rax
 pop rsi
proc_tablemap_α_body:
# IR_VAR_REF gva
 xchain00392_n0_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00392_n1_α
 xchain00392_n0_β:
 jmp xchain00392_n3_α
# IR_UNOP_TEST lv
 xchain00392_n1_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain00392_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00392_n3_α
 cmp eax, 0
 jne xchain00392_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain00392_n2_α
 xchain00392_n1_β:
 jmp xchain00392_n3_α
# IR_LIT_INTEGER
 xchain00392_n2_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00392_n4_α
 xchain00392_n2_β:
 jmp xchain00392_n3_α
.Lx00393_0:
 .quad 1
# IR_VAR
 xchain00392_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00392_n5_α
 xchain00392_n3_β:
 jmp xchain00392_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00392_n4_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00392_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00392_n7_α
 xchain00392_n4_β:
 jmp xchain00392_n3_α
# IR_UNOP
 xchain00392_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00392_n6_α
 cmp eax, 0
 jne xchain00392_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00392_n8_α
 xchain00392_n5_β:
 jmp xchain00392_n6_α
# IR_LIT_INTEGER
 xchain00392_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00392_n9_α
 xchain00392_n6_β:
 jmp proc_tablemap_ω
.Lx00394_0:
 .quad 1
 xchain00392_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1096: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1096]
 lea rsi, [r12 + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00392_n11_α
 jmp xchain00392_n10_α
 xchain00392_n7_β:
 jmp xchain00392_n11_α
# IR_LIT_STRING
 xchain00392_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00392_n12_α
 xchain00392_n8_β:
 jmp proc_tablemap_ω
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string "T[\"b\"]"
# IR_VAR
 xchain00392_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00392_n13_α
 xchain00392_n9_β:
 jmp proc_tablemap_ω
# IR_ASSIGN gva
 xchain00392_n10_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00392_n11_α
 xchain00392_n10_β:
 jmp xchain00392_n11_α
# IR_VAR_REF gva
 xchain00392_n11_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00392_n14_α
 xchain00392_n11_β:
 jmp xchain00392_n19_α
# IR_RETURN
 xchain00392_n12_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tablemap_γ
# IR_TO
 xchain00392_n13_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00396_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00392_n15_α
 xchain00392_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00396_0
# IR_LIT_STRING
 xchain00392_n14_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00392_n16_α
 xchain00392_n14_β:
 jmp xchain00392_n19_α
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "a"
# IR_VAR_REF gva
 xchain00392_n15_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00392_n17_α
 xchain00392_n15_β:
 jmp xchain00392_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00392_n16_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00392_n19_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00392_n18_α
 xchain00392_n16_β:
 jmp xchain00392_n19_α
# IR_LIT_STRING
 xchain00392_n17_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00392_n20_α
 xchain00392_n17_β:
 jmp xchain00392_n13_β
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00392_n18_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00392_n21_α
 xchain00392_n18_β:
 jmp xchain00392_n19_α
.Lx00399_0:
 .quad .Lx00399_0_s
.Lx00399_0_s:
 .string "b"
# IR_VAR_REF gva
 xchain00392_n19_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00392_n22_α
 xchain00392_n19_β:
 jmp xchain00392_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00392_n20_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00392_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00392_n23_α
 xchain00392_n20_β:
 jmp xchain00392_n13_β
# IR_ASSIGN_VAR write through variable
 xchain00392_n21_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00392_n19_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00392_n19_α
 xchain00392_n21_β:
 jmp xchain00392_n19_α
# IR_LIT_STRING
 xchain00392_n22_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00392_n24_α
 xchain00392_n22_β:
 jmp xchain00392_n3_α
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00392_n23_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00392_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00392_n13_β
 xchain00392_n23_β:
 jmp xchain00392_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00392_n24_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00392_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00392_n25_α
 xchain00392_n24_β:
 jmp xchain00392_n3_α
# IR_LIT_STRING
 xchain00392_n25_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00392_n26_α
 xchain00392_n25_β:
 jmp xchain00392_n3_α
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string "a"
# IR_ASSIGN_VAR write through variable
 xchain00392_n26_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00392_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00392_n27_α
 xchain00392_n26_β:
 jmp xchain00392_n3_α
 xchain00392_n27_α:
 jmp xchain00392_n28_α
xchain00392_n27_β:
 jmp xchain00392_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00392_n28_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00392_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00392_n3_α
 xchain00392_n28_β:
 jmp xchain00392_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00392_n29_α:
 jmp qword ptr [r12 + 256]
 xchain00392_n29_β:
 jmp xchain00392_n3_α
proc_tablemap_β:
jmp proc_tablemap_ω
proc_tablemap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 528]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tablemap_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_listmap_α
proc_listmap_α:
#=======================================================================================================================
    .global proc_listmap_α
    .global proc_listmap_β
    .global proc_listmap_γ
    .global proc_listmap_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 656], rax
 pop rsi
proc_listmap_α_body:
# IR_VAR_REF gva
 xchain00402_n0_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00402_n1_α
 xchain00402_n0_β:
 jmp xchain00402_n3_α
# IR_UNOP_TEST lv
 xchain00402_n1_α:
 mov eax, dword ptr [r12 + 592]
 cmp eax, 99
 je xchain00402_n3_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00402_n3_α
 cmp eax, 0
 jne xchain00402_n3_α
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 616], rax
 jmp xchain00402_n2_α
 xchain00402_n1_β:
 jmp xchain00402_n3_α
# IR_LIT_INTEGER
 xchain00402_n2_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00402_n4_α
 xchain00402_n2_β:
 jmp xchain00402_n3_α
.Lx00403_0:
 .quad 1
# IR_VAR
 xchain00402_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00402_n5_α
 xchain00402_n3_β:
 jmp xchain00402_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00402_n4_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00402_n3_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00402_n7_α
 xchain00402_n4_β:
 jmp xchain00402_n3_α
# IR_UNOP
 xchain00402_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00402_n6_α
 cmp eax, 0
 jne xchain00402_n6_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00402_n8_α
 xchain00402_n5_β:
 jmp xchain00402_n6_α
# IR_LIT_INTEGER
 xchain00402_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00402_n9_α
 xchain00402_n6_β:
 jmp proc_listmap_ω
.Lx00404_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00402_n7_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00402_n10_α
 xchain00402_n7_β:
 jmp xchain00402_n14_α
.Lx00405_0:
 .quad 256
# IR_LIT_STRING
 xchain00402_n8_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00402_n11_α
 xchain00402_n8_β:
 jmp proc_listmap_ω
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "L[ord(\"b\")]"
# IR_VAR
 xchain00402_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00402_n12_α
 xchain00402_n9_β:
 jmp proc_listmap_ω
 xchain00402_n10_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+560]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn1141: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1141]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00402_n14_α
 jmp xchain00402_n13_α
 xchain00402_n10_β:
 jmp xchain00402_n14_α
# IR_RETURN
 xchain00402_n11_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listmap_γ
# IR_TO
 xchain00402_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00407_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00402_n15_α
 xchain00402_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00407_0
# IR_ASSIGN gva
 xchain00402_n13_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00402_n14_α
 xchain00402_n13_β:
 jmp xchain00402_n14_α
# IR_VAR_REF gva
 xchain00402_n14_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00402_n16_α
 xchain00402_n14_β:
 jmp xchain00402_n21_α
# IR_VAR_REF gva
 xchain00402_n15_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00402_n17_α
 xchain00402_n15_β:
 jmp xchain00402_n12_β
# IR_LIT_STRING
 xchain00402_n16_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00402_n18_α
 xchain00402_n16_β:
 jmp xchain00402_n21_α
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00402_n17_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00402_n19_α
 xchain00402_n17_β:
 jmp xchain00402_n12_β
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string "b"
 xchain00402_n18_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn1153: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1153]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00402_n21_α
 jmp xchain00402_n20_α
 xchain00402_n18_β:
 jmp xchain00402_n21_α
 xchain00402_n19_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1155: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1155]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00402_n12_β
 jmp xchain00402_n22_α
 xchain00402_n19_β:
 jmp xchain00402_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00402_n20_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00402_n21_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00402_n23_α
 xchain00402_n20_β:
 jmp xchain00402_n21_α
# IR_VAR_REF gva
 xchain00402_n21_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00402_n24_α
 xchain00402_n21_β:
 jmp xchain00402_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00402_n22_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00402_n12_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00402_n25_α
 xchain00402_n22_β:
 jmp xchain00402_n12_β
# IR_LIT_STRING
 xchain00402_n23_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00402_n26_α
 xchain00402_n23_β:
 jmp xchain00402_n21_α
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00402_n24_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00402_n27_α
 xchain00402_n24_β:
 jmp xchain00402_n3_α
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00402_n25_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00402_n12_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00402_n12_β
 xchain00402_n25_β:
 jmp xchain00402_n12_β
# IR_ASSIGN_VAR write through variable
 xchain00402_n26_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00402_n21_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00402_n21_α
 xchain00402_n26_β:
 jmp xchain00402_n21_α
 xchain00402_n27_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn1165: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1165]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00402_n3_α
 jmp xchain00402_n28_α
 xchain00402_n27_β:
 jmp xchain00402_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00402_n28_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00402_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00402_n29_α
 xchain00402_n28_β:
 jmp xchain00402_n3_α
# IR_LIT_STRING
 xchain00402_n29_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00402_n30_α
 xchain00402_n29_β:
 jmp xchain00402_n3_α
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "a"
# IR_ASSIGN_VAR write through variable
 xchain00402_n30_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00402_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00402_n31_α
 xchain00402_n30_β:
 jmp xchain00402_n3_α
 xchain00402_n31_α:
 jmp xchain00402_n32_α
xchain00402_n31_β:
 jmp xchain00402_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00402_n32_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 280], rax
 lea rax, [rip + xchain00402_n3_α]
 mov qword ptr [r12 + 288], rax
 jmp xchain00402_n3_α
 xchain00402_n32_β:
 jmp xchain00402_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00402_n33_α:
 jmp qword ptr [r12 + 288]
 xchain00402_n33_β:
 jmp xchain00402_n3_α
proc_listmap_β:
jmp proc_listmap_ω
proc_listmap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 656]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_listmap_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_nullscan_α
proc_nullscan_α:
#=======================================================================================================================
    .global proc_nullscan_α
    .global proc_nullscan_β
    .global proc_nullscan_γ
    .global proc_nullscan_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 272], rax
 pop rsi
proc_nullscan_α_body:
# IR_VAR
 xchain00413_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00413_n1_α
 xchain00413_n0_β:
 jmp xchain00413_n2_α
# IR_UNOP
 xchain00413_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00413_n2_α
 cmp eax, 0
 jne xchain00413_n2_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00413_n3_α
 xchain00413_n1_β:
 jmp xchain00413_n2_α
# IR_LIT_INTEGER
 xchain00413_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00413_n4_α
 xchain00413_n2_β:
 jmp proc_nullscan_ω
.Lx00414_0:
 .quad 1
# IR_LIT_STRING
 xchain00413_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00415_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00413_n5_α
 xchain00413_n3_β:
 jmp proc_nullscan_ω
.Lx00415_0:
 .quad .Lx00415_0_s
.Lx00415_0_s:
 .string "s ? 0"
# IR_VAR
 xchain00413_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00413_n6_α
 xchain00413_n4_β:
 jmp proc_nullscan_ω
# IR_RETURN
 xchain00413_n5_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullscan_γ
# IR_TO
 xchain00413_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00416_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00413_n7_α
 xchain00413_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00416_0
# IR_LIT_STRING
 xchain00413_n7_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00413_n8_α
 xchain00413_n7_β:
 jmp xchain00413_n6_β
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00413_n8_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00413_n9_α
 xchain00413_n8_β:
 jmp xchain00413_n6_β
# IR_LIT_INTEGER
 xchain00413_n9_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00413_n10_α
 xchain00413_n9_β:
 jmp proc_nullscan_ω
.Lx00418_0:
 .quad 0
# IR_GEN_SCAN
 xchain00413_n10_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain00413_n6_β
 xchain00413_n10_β:
 jmp xchain00413_n6_β
proc_nullscan_β:
jmp proc_nullscan_ω
proc_nullscan_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 272]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nullscan_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_movef_α
proc_movef_α:
#=======================================================================================================================
    .global proc_movef_α
    .global proc_movef_β
    .global proc_movef_γ
    .global proc_movef_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_movef_α_body:
# IR_VAR
 xchain00419_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00419_n1_α
 xchain00419_n0_β:
 jmp xchain00419_n2_α
# IR_UNOP
 xchain00419_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00419_n2_α
 cmp eax, 0
 jne xchain00419_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00419_n3_α
 xchain00419_n1_β:
 jmp xchain00419_n2_α
# IR_LIT_STRING
 xchain00419_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00419_n4_α
 xchain00419_n2_β:
 jmp proc_movef_ω
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00419_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00419_n5_α
 xchain00419_n3_β:
 jmp proc_movef_ω
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "move(0)"
# IR_GEN_SCAN
 xchain00419_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00419_n6_α
 xchain00419_n4_β:
 jmp proc_movef_ω
# IR_RETURN
 xchain00419_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_movef_γ
# IR_LIT_INTEGER
 xchain00419_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00419_n7_α
 xchain00419_n6_β:
 jmp xchain00419_n9_α
.Lx00422_0:
 .quad 1
# IR_VAR
 xchain00419_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00419_n8_α
 xchain00419_n7_β:
 jmp xchain00419_n9_α
# IR_TO
 xchain00419_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00423_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00419_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00419_n10_α
 xchain00419_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00423_0
# IR_GEN_SCAN
 xchain00419_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_movef_ω
 xchain00419_n9_β:
 jmp proc_movef_ω
# IR_LIT_INTEGER
 xchain00419_n10_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00419_n11_α
 xchain00419_n10_β:
 jmp xchain00419_n8_β
.Lx00424_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00419_n11_α:
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00419_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00419_n8_β
 mov qword ptr [r12 + 176], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00419_n8_β
 xchain00419_n11_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00419_n8_β
proc_movef_β:
jmp proc_movef_ω
proc_movef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_movef_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_mov11_α
proc_mov11_α:
#=======================================================================================================================
    .global proc_mov11_α
    .global proc_mov11_β
    .global proc_mov11_γ
    .global proc_mov11_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_mov11_α_body:
# IR_VAR
 xchain00425_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00425_n1_α
 xchain00425_n0_β:
 jmp xchain00425_n2_α
# IR_UNOP
 xchain00425_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00425_n2_α
 cmp eax, 0
 jne xchain00425_n2_α
 mov qword ptr [r12 + 320], 0
 mov qword ptr [r12 + 328], 0
 jmp xchain00425_n3_α
 xchain00425_n1_β:
 jmp xchain00425_n2_α
# IR_LIT_STRING
 xchain00425_n2_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00425_n4_α
 xchain00425_n2_β:
 jmp proc_mov11_ω
.Lx00426_0:
 .quad .Lx00426_0_s
.Lx00426_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00425_n3_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00425_n5_α
 xchain00425_n3_β:
 jmp proc_mov11_ω
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "move(1) & move(-1)"
# IR_GEN_SCAN
 xchain00425_n4_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00425_n6_α
 xchain00425_n4_β:
 jmp proc_mov11_ω
# IR_RETURN
 xchain00425_n5_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mov11_γ
# IR_LIT_INTEGER
 xchain00425_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00425_n7_α
 xchain00425_n6_β:
 jmp xchain00425_n9_α
.Lx00428_0:
 .quad 1
# IR_VAR
 xchain00425_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00425_n8_α
 xchain00425_n7_β:
 jmp xchain00425_n9_α
# IR_TO
 xchain00425_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00429_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00425_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00425_n10_α
 xchain00425_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00429_0
# IR_GEN_SCAN
 xchain00425_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_mov11_ω
 xchain00425_n9_β:
 jmp proc_mov11_ω
# IR_LIT_INTEGER
 xchain00425_n10_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00430_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00425_n11_α
 xchain00425_n10_β:
 jmp xchain00425_n8_β
.Lx00430_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00425_n11_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00425_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00425_n8_β
 mov qword ptr [r12 + 224], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00425_n12_α
 xchain00425_n11_β:
 mov r14, qword ptr [r12 + 224]
 jmp xchain00425_n8_β
# IR_LIT_INTEGER
 xchain00425_n12_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00425_n13_α
 xchain00425_n12_β:
 jmp xchain00425_n8_β
.Lx00431_0:
 .quad 18446744073709551615
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00425_n13_α:
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00425_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00425_n8_β
 mov qword ptr [r12 + 176], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00425_n14_α
 xchain00425_n13_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00425_n8_β
 xchain00425_n14_α:
 jmp xchain00425_n8_β
xchain00425_n14_β:
 jmp xchain00425_n8_β
proc_mov11_β:
jmp proc_mov11_ω
proc_mov11_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mov11_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_pos11_α
proc_pos11_α:
#=======================================================================================================================
    .global proc_pos11_α
    .global proc_pos11_β
    .global proc_pos11_γ
    .global proc_pos11_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_pos11_α_body:
# IR_VAR
 xchain00432_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 408], rax
 jmp xchain00432_n1_α
 xchain00432_n0_β:
 jmp xchain00432_n2_α
# IR_UNOP
 xchain00432_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00432_n2_α
 cmp eax, 0
 jne xchain00432_n2_α
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain00432_n3_α
 xchain00432_n1_β:
 jmp xchain00432_n2_α
# IR_LIT_STRING
 xchain00432_n2_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00432_n4_α
 xchain00432_n2_β:
 jmp proc_pos11_ω
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00432_n3_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00432_n5_α
 xchain00432_n3_β:
 jmp proc_pos11_ω
.Lx00434_0:
 .quad .Lx00434_0_s
.Lx00434_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_GEN_SCAN
 xchain00432_n4_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00432_n6_α
 xchain00432_n4_β:
 jmp proc_pos11_ω
# IR_RETURN
 xchain00432_n5_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pos11_γ
# IR_LIT_INTEGER
 xchain00432_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00432_n7_α
 xchain00432_n6_β:
 jmp xchain00432_n9_α
.Lx00435_0:
 .quad 1
# IR_VAR
 xchain00432_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00432_n8_α
 xchain00432_n7_β:
 jmp xchain00432_n9_α
# IR_TO
 xchain00432_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00436_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00432_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00432_n10_α
 xchain00432_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00436_0
# IR_GEN_SCAN
 xchain00432_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_pos11_ω
 xchain00432_n9_β:
 jmp proc_pos11_ω
# IR_KEYWORD_pos_call
 xchain00432_n10_α:
 call rt_keyword_pos@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00432_n11_α
 xchain00432_n10_β:
 jmp xchain00432_n8_β
# IR_LIT_INTEGER
 xchain00432_n11_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00432_n12_α
 xchain00432_n11_β:
 jmp xchain00432_n8_β
.Lx00437_0:
 .quad 1
 xchain00432_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00438_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx00438_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00438_2
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00438_2
.Lx00438_1:
 mov rax, qword ptr [r12 + 280]
 mov rcx, qword ptr [r12 + 312]
 add rax, rcx
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xchain00432_n13_α
.Lx00438_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 0
 lea r9, [r12 + 256]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00438_3
.Lx00438_2:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00432_n8_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
.Lx00438_3:
 jmp xchain00432_n13_α
 xchain00432_n12_β:
 jmp xchain00432_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00432_n13_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00432_n8_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00432_n14_α
 xchain00432_n13_β:
 jmp xchain00432_n8_β
# IR_KEYWORD_pos_call
 xchain00432_n14_α:
 call rt_keyword_pos@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00432_n15_α
 xchain00432_n14_β:
 jmp xchain00432_n8_β
# IR_LIT_INTEGER
 xchain00432_n15_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00432_n16_α
 xchain00432_n15_β:
 jmp xchain00432_n8_β
.Lx00439_0:
 .quad 1
 xchain00432_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00440_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00440_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00440_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00440_2
.Lx00440_1:
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain00432_n17_α
.Lx00440_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 lea r9, [r12 + 176]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00440_3
.Lx00440_2:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00432_n8_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
.Lx00440_3:
 jmp xchain00432_n17_α
 xchain00432_n16_β:
 jmp xchain00432_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00432_n17_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00432_n8_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00432_n18_α
 xchain00432_n17_β:
 jmp xchain00432_n8_β
 xchain00432_n18_α:
 jmp xchain00432_n8_β
xchain00432_n18_β:
 jmp xchain00432_n8_β
proc_pos11_β:
jmp proc_pos11_ω
proc_pos11_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_pos11_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tabf_α
proc_tabf_α:
#=======================================================================================================================
    .global proc_tabf_α
    .global proc_tabf_β
    .global proc_tabf_γ
    .global proc_tabf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_tabf_α_body:
# IR_VAR
 xchain00441_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00441_n1_α
 xchain00441_n0_β:
 jmp xchain00441_n2_α
# IR_UNOP
 xchain00441_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00441_n2_α
 cmp eax, 0
 jne xchain00441_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00441_n3_α
 xchain00441_n1_β:
 jmp xchain00441_n2_α
# IR_LIT_STRING
 xchain00441_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00441_n4_α
 xchain00441_n2_β:
 jmp proc_tabf_ω
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00441_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00441_n5_α
 xchain00441_n3_β:
 jmp proc_tabf_ω
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "tab(3)"
# IR_GEN_SCAN
 xchain00441_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00441_n6_α
 xchain00441_n4_β:
 jmp proc_tabf_ω
# IR_RETURN
 xchain00441_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabf_γ
# IR_LIT_INTEGER
 xchain00441_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00441_n7_α
 xchain00441_n6_β:
 jmp xchain00441_n9_α
.Lx00444_0:
 .quad 1
# IR_VAR
 xchain00441_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00441_n8_α
 xchain00441_n7_β:
 jmp xchain00441_n9_α
# IR_TO
 xchain00441_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00445_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00441_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00441_n10_α
 xchain00441_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00445_0
# IR_GEN_SCAN
 xchain00441_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabf_ω
 xchain00441_n9_β:
 jmp proc_tabf_ω
# IR_LIT_INTEGER
 xchain00441_n10_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00441_n11_α
 xchain00441_n10_β:
 jmp xchain00441_n8_β
.Lx00446_0:
 .quad 3
# IR_SCAN_TAB
 xchain00441_n11_α:
 mov rax, 3
 cmp rax, 1
 jge .Lx00447_0
 add rax, r15
 add rax, 1
.Lx00447_0:
 cmp rax, 1
 jl xchain00441_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00441_n8_β
 mov qword ptr [r12 + 176], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00441_n8_β
 xchain00441_n11_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00441_n8_β
proc_tabf_β:
jmp proc_tabf_ω
proc_tabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tabf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_matchf_α
proc_matchf_α:
#=======================================================================================================================
    .global proc_matchf_α
    .global proc_matchf_β
    .global proc_matchf_γ
    .global proc_matchf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_matchf_α_body:
# IR_VAR
 xchain00448_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00448_n1_α
 xchain00448_n0_β:
 jmp xchain00448_n2_α
# IR_UNOP
 xchain00448_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00448_n2_α
 cmp eax, 0
 jne xchain00448_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00448_n3_α
 xchain00448_n1_β:
 jmp xchain00448_n2_α
# IR_LIT_STRING
 xchain00448_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00448_n4_α
 xchain00448_n2_β:
 jmp proc_matchf_ω
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00448_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00450_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00448_n5_α
 xchain00448_n3_β:
 jmp proc_matchf_ω
.Lx00450_0:
 .quad .Lx00450_0_s
.Lx00450_0_s:
 .string "match(\"abc\")"
# IR_GEN_SCAN
 xchain00448_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00448_n6_α
 xchain00448_n4_β:
 jmp proc_matchf_ω
# IR_RETURN
 xchain00448_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_matchf_γ
# IR_LIT_INTEGER
 xchain00448_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00448_n7_α
 xchain00448_n6_β:
 jmp xchain00448_n9_α
.Lx00451_0:
 .quad 1
# IR_VAR
 xchain00448_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00448_n8_α
 xchain00448_n7_β:
 jmp xchain00448_n9_α
# IR_TO
 xchain00448_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00452_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00448_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00448_n10_α
 xchain00448_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00452_0
# IR_GEN_SCAN
 xchain00448_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_matchf_ω
 xchain00448_n9_β:
 jmp proc_matchf_ω
# IR_LIT_STRING
 xchain00448_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00448_n11_α
 xchain00448_n10_β:
 jmp xchain00448_n8_β
.Lx00453_0:
 .quad .Lx00453_0_s
.Lx00453_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00448_n11_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00448_n8_β
 mov rdi, qword ptr [rip + .Lx00454_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00448_n8_β
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 168], rax
 jmp xchain00448_n8_β
 xchain00448_n11_β:
 jmp xchain00448_n8_β
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "abc"
proc_matchf_β:
jmp proc_matchf_ω
proc_matchf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_matchf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tabmat_α
proc_tabmat_α:
#=======================================================================================================================
    .global proc_tabmat_α
    .global proc_tabmat_β
    .global proc_tabmat_γ
    .global proc_tabmat_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_tabmat_α_body:
# IR_VAR
 xchain00455_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain00455_n1_α
 xchain00455_n0_β:
 jmp xchain00455_n2_α
# IR_UNOP
 xchain00455_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00455_n2_α
 cmp eax, 0
 jne xchain00455_n2_α
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 jmp xchain00455_n3_α
 xchain00455_n1_β:
 jmp xchain00455_n2_α
# IR_LIT_STRING
 xchain00455_n2_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00456_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00455_n4_α
 xchain00455_n2_β:
 jmp proc_tabmat_ω
.Lx00456_0:
 .quad .Lx00456_0_s
.Lx00456_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00455_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00457_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00455_n5_α
 xchain00455_n3_β:
 jmp proc_tabmat_ω
.Lx00457_0:
 .quad .Lx00457_0_s
.Lx00457_0_s:
 .string "s1 ? =s2"
# IR_GEN_SCAN
 xchain00455_n4_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00455_n6_α
 xchain00455_n4_β:
 jmp proc_tabmat_ω
# IR_RETURN
 xchain00455_n5_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabmat_γ
# IR_LIT_INTEGER
 xchain00455_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00455_n7_α
 xchain00455_n6_β:
 jmp xchain00455_n9_α
.Lx00458_0:
 .quad 1
# IR_VAR
 xchain00455_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00455_n8_α
 xchain00455_n7_β:
 jmp xchain00455_n9_α
# IR_TO
 xchain00455_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00459_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00455_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00455_n10_α
 xchain00455_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00459_0
# IR_GEN_SCAN
 xchain00455_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabmat_ω
 xchain00455_n9_β:
 jmp proc_tabmat_ω
# IR_LIT_STRING
 xchain00455_n10_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00455_n11_α
 xchain00455_n10_β:
 jmp xchain00455_n8_β
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00455_n11_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00455_n8_β
 mov rdi, qword ptr [rip + .Lx00461_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00455_n8_β
 mov qword ptr [r12 + 192], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 200], rax
 jmp xchain00455_n12_α
 xchain00455_n11_β:
 jmp xchain00455_n8_β
.Lx00461_0:
 .quad .Lx00461_0_s
.Lx00461_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00455_n12_α:
 mov rax, qword ptr [r12 + 200]
 cmp rax, 1
 jge .Lx00462_0
 add rax, r15
 add rax, 1
.Lx00462_0:
 cmp rax, 1
 jl xchain00455_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00455_n8_β
 mov qword ptr [r12 + 176], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00455_n8_β
 xchain00455_n12_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00455_n8_β
proc_tabmat_β:
jmp proc_tabmat_ω
proc_tabmat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tabmat_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_posf_α
proc_posf_α:
#=======================================================================================================================
    .global proc_posf_α
    .global proc_posf_β
    .global proc_posf_γ
    .global proc_posf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_posf_α_body:
# IR_VAR
 xchain00463_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00463_n1_α
 xchain00463_n0_β:
 jmp xchain00463_n2_α
# IR_UNOP
 xchain00463_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00463_n2_α
 cmp eax, 0
 jne xchain00463_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00463_n3_α
 xchain00463_n1_β:
 jmp xchain00463_n2_α
# IR_LIT_STRING
 xchain00463_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00463_n4_α
 xchain00463_n2_β:
 jmp proc_posf_ω
.Lx00464_0:
 .quad .Lx00464_0_s
.Lx00464_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00463_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00463_n5_α
 xchain00463_n3_β:
 jmp proc_posf_ω
.Lx00465_0:
 .quad .Lx00465_0_s
.Lx00465_0_s:
 .string "pos(-1)"
# IR_GEN_SCAN
 xchain00463_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00463_n6_α
 xchain00463_n4_β:
 jmp proc_posf_ω
# IR_RETURN
 xchain00463_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_posf_γ
# IR_LIT_INTEGER
 xchain00463_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00466_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00463_n7_α
 xchain00463_n6_β:
 jmp xchain00463_n9_α
.Lx00466_0:
 .quad 1
# IR_VAR
 xchain00463_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00463_n8_α
 xchain00463_n7_β:
 jmp xchain00463_n9_α
# IR_TO
 xchain00463_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00467_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00463_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00463_n10_α
 xchain00463_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00467_0
# IR_GEN_SCAN
 xchain00463_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_posf_ω
 xchain00463_n9_β:
 jmp proc_posf_ω
# IR_LIT_INTEGER
 xchain00463_n10_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00463_n11_α
 xchain00463_n10_β:
 jmp xchain00463_n8_β
.Lx00468_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00463_n11_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00469_0
 add rax, r15
 add rax, 1
.Lx00469_0:
 cmp rax, 1
 jl xchain00463_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00463_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00463_n8_β
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00463_n8_β
 xchain00463_n11_β:
 jmp xchain00463_n8_β
proc_posf_β:
jmp proc_posf_ω
proc_posf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_posf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_anyf_α
proc_anyf_α:
#=======================================================================================================================
    .global proc_anyf_α
    .global proc_anyf_β
    .global proc_anyf_γ
    .global proc_anyf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_anyf_α_body:
# IR_VAR
 xchain00470_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00470_n1_α
 xchain00470_n0_β:
 jmp xchain00470_n2_α
# IR_UNOP
 xchain00470_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00470_n2_α
 cmp eax, 0
 jne xchain00470_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00470_n3_α
 xchain00470_n1_β:
 jmp xchain00470_n2_α
# IR_LIT_STRING
 xchain00470_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00470_n4_α
 xchain00470_n2_β:
 jmp proc_anyf_ω
.Lx00471_0:
 .quad .Lx00471_0_s
.Lx00471_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00470_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00472_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00470_n5_α
 xchain00470_n3_β:
 jmp proc_anyf_ω
.Lx00472_0:
 .quad .Lx00472_0_s
.Lx00472_0_s:
 .string "any('aeiou')"
# IR_GEN_SCAN
 xchain00470_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00470_n6_α
 xchain00470_n4_β:
 jmp proc_anyf_ω
# IR_RETURN
 xchain00470_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_anyf_γ
# IR_LIT_INTEGER
 xchain00470_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00473_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00470_n7_α
 xchain00470_n6_β:
 jmp xchain00470_n9_α
.Lx00473_0:
 .quad 1
# IR_VAR
 xchain00470_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00470_n8_α
 xchain00470_n7_β:
 jmp xchain00470_n9_α
# IR_TO
 xchain00470_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00474_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00470_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00470_n10_α
 xchain00470_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00474_0
# IR_GEN_SCAN
 xchain00470_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_anyf_ω
 xchain00470_n9_β:
 jmp proc_anyf_ω
# IR_LIT_CHARSET
 xchain00470_n10_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00470_n11_α
 xchain00470_n10_β:
 jmp xchain00470_n8_β
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00470_n11_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00470_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00476_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00470_n8_β
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 168], rax
 jmp xchain00470_n8_β
 xchain00470_n11_β:
 jmp xchain00470_n8_β
.Lx00476_0:
 .quad .Lx00476_0_s
.Lx00476_0_s:
 .string "aeiou"
proc_anyf_β:
jmp proc_anyf_ω
proc_anyf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_anyf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_manyf_α
proc_manyf_α:
#=======================================================================================================================
    .global proc_manyf_α
    .global proc_manyf_β
    .global proc_manyf_γ
    .global proc_manyf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_manyf_α_body:
# IR_VAR
 xchain00477_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00477_n1_α
 xchain00477_n0_β:
 jmp xchain00477_n2_α
# IR_UNOP
 xchain00477_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00477_n2_α
 cmp eax, 0
 jne xchain00477_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00477_n3_α
 xchain00477_n1_β:
 jmp xchain00477_n2_α
# IR_LIT_STRING
 xchain00477_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00478_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00477_n4_α
 xchain00477_n2_β:
 jmp proc_manyf_ω
.Lx00478_0:
 .quad .Lx00478_0_s
.Lx00478_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00477_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00479_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00477_n5_α
 xchain00477_n3_β:
 jmp proc_manyf_ω
.Lx00479_0:
 .quad .Lx00479_0_s
.Lx00479_0_s:
 .string "many(&lcase)"
# IR_GEN_SCAN
 xchain00477_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00477_n6_α
 xchain00477_n4_β:
 jmp proc_manyf_ω
# IR_RETURN
 xchain00477_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_manyf_γ
# IR_LIT_INTEGER
 xchain00477_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00480_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00477_n7_α
 xchain00477_n6_β:
 jmp xchain00477_n9_α
.Lx00480_0:
 .quad 1
# IR_VAR
 xchain00477_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00477_n8_α
 xchain00477_n7_β:
 jmp xchain00477_n9_α
# IR_TO
 xchain00477_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00481_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00477_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00477_n10_α
 xchain00477_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00481_0
# IR_GEN_SCAN
 xchain00477_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_manyf_ω
 xchain00477_n9_β:
 jmp proc_manyf_ω
# IR_LIT_CHARSET
 xchain00477_n10_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00482_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00477_n11_α
 xchain00477_n10_β:
 jmp xchain00477_n8_β
.Lx00482_0:
 .quad .Lx00482_0_s
.Lx00482_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00477_n11_α:
 mov eax, r14d
.Lx00483_0:
 cmp eax, r15d
 jge .Lx00483_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00483_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00483_1
 add eax, 1
 jmp .Lx00483_0
.Lx00483_1:
 cmp eax, r14d
 je xchain00477_n8_β
 mov qword ptr [r12 + 160], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 168], rcx
 jmp xchain00477_n8_β
 xchain00477_n11_β:
 jmp xchain00477_n8_β
.Lx00483_2:
 .quad .Lx00483_2_s
.Lx00483_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
proc_manyf_β:
jmp proc_manyf_ω
proc_manyf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_manyf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_uptof_α
proc_uptof_α:
#=======================================================================================================================
    .global proc_uptof_α
    .global proc_uptof_β
    .global proc_uptof_γ
    .global proc_uptof_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_uptof_α_body:
# IR_VAR
 xchain00484_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00484_n1_α
 xchain00484_n0_β:
 jmp xchain00484_n2_α
# IR_UNOP
 xchain00484_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00484_n2_α
 cmp eax, 0
 jne xchain00484_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00484_n3_α
 xchain00484_n1_β:
 jmp xchain00484_n2_α
# IR_LIT_STRING
 xchain00484_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00485_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00484_n4_α
 xchain00484_n2_β:
 jmp proc_uptof_ω
.Lx00485_0:
 .quad .Lx00485_0_s
.Lx00485_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00484_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00484_n5_α
 xchain00484_n3_β:
 jmp proc_uptof_ω
.Lx00486_0:
 .quad .Lx00486_0_s
.Lx00486_0_s:
 .string "upto('d')"
# IR_GEN_SCAN
 xchain00484_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00484_n6_α
 xchain00484_n4_β:
 jmp proc_uptof_ω
# IR_RETURN
 xchain00484_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uptof_γ
# IR_LIT_INTEGER
 xchain00484_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00487_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00484_n7_α
 xchain00484_n6_β:
 jmp xchain00484_n9_α
.Lx00487_0:
 .quad 1
# IR_VAR
 xchain00484_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00484_n8_α
 xchain00484_n7_β:
 jmp xchain00484_n9_α
# IR_TO
 xchain00484_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00488_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00484_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00484_n10_α
 xchain00484_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00488_0
# IR_GEN_SCAN
 xchain00484_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_uptof_ω
 xchain00484_n9_β:
 jmp proc_uptof_ω
# IR_LIT_CHARSET
 xchain00484_n10_α:
 mov qword ptr [r12 + 192], 1
 mov dword ptr [r12 + 196], -1
 mov rax, qword ptr [rip + .Lx00489_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00484_n11_α
 xchain00484_n10_β:
 jmp xchain00484_n8_β
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00484_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00490_0:
 mov rax, qword ptr [r12 + 176]
 cmp rax, r15
 jge xchain00484_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00490_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00490_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00484_n8_β
.Lx00490_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00490_0
 xchain00484_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00490_0
.Lx00490_2:
 .quad .Lx00490_2_s
.Lx00490_2_s:
 .string "d"
proc_uptof_β:
jmp proc_uptof_ω
proc_uptof_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_uptof_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_findf_α
proc_findf_α:
#=======================================================================================================================
    .global proc_findf_α
    .global proc_findf_β
    .global proc_findf_γ
    .global proc_findf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_findf_α_body:
# IR_VAR
 xchain00491_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00491_n1_α
 xchain00491_n0_β:
 jmp xchain00491_n2_α
# IR_UNOP
 xchain00491_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00491_n2_α
 cmp eax, 0
 jne xchain00491_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00491_n3_α
 xchain00491_n1_β:
 jmp xchain00491_n2_α
# IR_LIT_STRING
 xchain00491_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00491_n4_α
 xchain00491_n2_β:
 jmp proc_findf_ω
.Lx00492_0:
 .quad .Lx00492_0_s
.Lx00492_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00491_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00493_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00491_n5_α
 xchain00491_n3_β:
 jmp proc_findf_ω
.Lx00493_0:
 .quad .Lx00493_0_s
.Lx00493_0_s:
 .string "find(\"de\")"
# IR_GEN_SCAN
 xchain00491_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00491_n6_α
 xchain00491_n4_β:
 jmp proc_findf_ω
# IR_RETURN
 xchain00491_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_findf_γ
# IR_LIT_INTEGER
 xchain00491_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00494_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00491_n7_α
 xchain00491_n6_β:
 jmp xchain00491_n9_α
.Lx00494_0:
 .quad 1
# IR_VAR
 xchain00491_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00491_n8_α
 xchain00491_n7_β:
 jmp xchain00491_n9_α
# IR_TO
 xchain00491_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00495_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00491_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00491_n10_α
 xchain00491_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00495_0
# IR_GEN_SCAN
 xchain00491_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_findf_ω
 xchain00491_n9_β:
 jmp proc_findf_ω
# IR_LIT_STRING
 xchain00491_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00491_n11_α
 xchain00491_n10_β:
 jmp xchain00491_n8_β
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00491_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00497_0:
 mov rax, qword ptr [r12 + 176]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00491_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00497_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00497_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00491_n8_β
.Lx00497_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00497_0
 xchain00491_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00497_0
proc_findf_β:
jmp proc_findf_ω
proc_findf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_findf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_balf_α
proc_balf_α:
#=======================================================================================================================
    .global proc_balf_α
    .global proc_balf_β
    .global proc_balf_γ
    .global proc_balf_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_balf_α_body:
# IR_VAR
 xchain00498_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00498_n1_α
 xchain00498_n0_β:
 jmp xchain00498_n2_α
# IR_UNOP
 xchain00498_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00498_n2_α
 cmp eax, 0
 jne xchain00498_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00498_n3_α
 xchain00498_n1_β:
 jmp xchain00498_n2_α
# IR_LIT_STRING
 xchain00498_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00498_n4_α
 xchain00498_n2_β:
 jmp proc_balf_ω
.Lx00499_0:
 .quad .Lx00499_0_s
.Lx00499_0_s:
 .string "(a*b)+(c/d)"
# IR_LIT_STRING
 xchain00498_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00498_n5_α
 xchain00498_n3_β:
 jmp proc_balf_ω
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "bal('+')"
# IR_GEN_SCAN
 xchain00498_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00498_n6_α
 xchain00498_n4_β:
 jmp proc_balf_ω
# IR_RETURN
 xchain00498_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_balf_γ
# IR_LIT_INTEGER
 xchain00498_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00501_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00498_n7_α
 xchain00498_n6_β:
 jmp xchain00498_n9_α
.Lx00501_0:
 .quad 1
# IR_VAR
 xchain00498_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00498_n8_α
 xchain00498_n7_β:
 jmp xchain00498_n9_α
# IR_TO
 xchain00498_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00502_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00498_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00498_n10_α
 xchain00498_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00502_0
# IR_GEN_SCAN
 xchain00498_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_balf_ω
 xchain00498_n9_β:
 jmp proc_balf_ω
# IR_LIT_CHARSET
 xchain00498_n10_α:
 mov qword ptr [r12 + 192], 1
 mov dword ptr [r12 + 196], -1
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00498_n11_α
 xchain00498_n10_β:
 jmp xchain00498_n8_β
.Lx00503_0:
 .quad .Lx00503_0_s
.Lx00503_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00498_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00504_0:
 mov rax, qword ptr [r12 + 176]
 cmp rax, r15
 jge xchain00498_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00504_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00504_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00498_n8_β
.Lx00504_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00504_0
 xchain00498_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00504_0
.Lx00504_2:
 .quad .Lx00504_2_s
.Lx00504_2_s:
 .string "+"
proc_balf_β:
jmp proc_balf_ω
proc_balf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_balf_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_cssize_α
proc_cssize_α:
#=======================================================================================================================
    .global proc_cssize_α
    .global proc_cssize_β
    .global proc_cssize_γ
    .global proc_cssize_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_cssize_α_body:
# IR_VAR
 xchain00505_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00505_n1_α
 xchain00505_n0_β:
 jmp xchain00505_n2_α
# IR_UNOP
 xchain00505_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00505_n2_α
 cmp eax, 0
 jne xchain00505_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00505_n3_α
 xchain00505_n1_β:
 jmp xchain00505_n2_α
# IR_LIT_INTEGER
 xchain00505_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00506_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00505_n4_α
 xchain00505_n2_β:
 jmp proc_cssize_ω
.Lx00506_0:
 .quad 1
# IR_LIT_STRING
 xchain00505_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00505_n5_α
 xchain00505_n3_β:
 jmp proc_cssize_ω
.Lx00507_0:
 .quad .Lx00507_0_s
.Lx00507_0_s:
 .string "*&digits"
# IR_VAR
 xchain00505_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00505_n6_α
 xchain00505_n4_β:
 jmp proc_cssize_ω
# IR_RETURN
 xchain00505_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cssize_γ
# IR_TO
 xchain00505_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00508_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00505_n7_α
 xchain00505_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00508_0
# IR_LIT_CHARSET
 xchain00505_n7_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00505_n8_α
 xchain00505_n7_β:
 jmp xchain00505_n6_β
.Lx00509_0:
 .quad .Lx00509_0_s
.Lx00509_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00505_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00505_n6_β
 xchain00505_n8_β:
 jmp xchain00505_n6_β
proc_cssize_β:
jmp proc_cssize_ω
proc_cssize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cssize_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_cscompl_α
proc_cscompl_α:
#=======================================================================================================================
    .global proc_cscompl_α
    .global proc_cscompl_β
    .global proc_cscompl_γ
    .global proc_cscompl_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_cscompl_α_body:
# IR_VAR
 xchain00510_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00510_n1_α
 xchain00510_n0_β:
 jmp xchain00510_n2_α
# IR_UNOP
 xchain00510_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00510_n2_α
 cmp eax, 0
 jne xchain00510_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00510_n3_α
 xchain00510_n1_β:
 jmp xchain00510_n2_α
# IR_LIT_INTEGER
 xchain00510_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00511_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00510_n4_α
 xchain00510_n2_β:
 jmp proc_cscompl_ω
.Lx00511_0:
 .quad 1
# IR_LIT_STRING
 xchain00510_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00512_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00510_n5_α
 xchain00510_n3_β:
 jmp proc_cscompl_ω
.Lx00512_0:
 .quad .Lx00512_0_s
.Lx00512_0_s:
 .string "~&digits"
# IR_VAR
 xchain00510_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00510_n6_α
 xchain00510_n4_β:
 jmp proc_cscompl_ω
# IR_RETURN
 xchain00510_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cscompl_γ
# IR_TO
 xchain00510_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00513_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00510_n7_α
 xchain00510_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00513_0
# IR_LIT_CHARSET
 xchain00510_n7_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00510_n8_α
 xchain00510_n7_β:
 jmp xchain00510_n6_β
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00510_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00510_n6_β
 xchain00510_n8_β:
 jmp xchain00510_n6_β
proc_cscompl_β:
jmp proc_cscompl_ω
proc_cscompl_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cscompl_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lcreate_α
proc_lcreate_α:
#=======================================================================================================================
    .global proc_lcreate_α
    .global proc_lcreate_β
    .global proc_lcreate_γ
    .global proc_lcreate_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_lcreate_α_body:
# IR_VAR
 xchain00515_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00515_n1_α
 xchain00515_n0_β:
 jmp xchain00515_n2_α
# IR_UNOP
 xchain00515_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00515_n2_α
 cmp eax, 0
 jne xchain00515_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00515_n3_α
 xchain00515_n1_β:
 jmp xchain00515_n2_α
# IR_LIT_INTEGER
 xchain00515_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00516_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00515_n4_α
 xchain00515_n2_β:
 jmp proc_lcreate_ω
.Lx00516_0:
 .quad 1
# IR_LIT_STRING
 xchain00515_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00515_n5_α
 xchain00515_n3_β:
 jmp proc_lcreate_ω
.Lx00517_0:
 .quad .Lx00517_0_s
.Lx00517_0_s:
 .string "list(5,0)"
# IR_VAR
 xchain00515_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00515_n6_α
 xchain00515_n4_β:
 jmp proc_lcreate_ω
# IR_RETURN
 xchain00515_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcreate_γ
# IR_TO
 xchain00515_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00518_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00515_n7_α
 xchain00515_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00518_0
# IR_LIT_INTEGER
 xchain00515_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00519_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00515_n8_α
 xchain00515_n7_β:
 jmp xchain00515_n6_β
.Lx00519_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00515_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00520_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00515_n9_α
 xchain00515_n8_β:
 jmp xchain00515_n6_β
.Lx00520_0:
 .quad 0
 xchain00515_n9_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1471: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1471]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00515_n6_β
 jmp xchain00515_n6_β
 xchain00515_n9_β:
 jmp xchain00515_n6_β
proc_lcreate_β:
jmp proc_lcreate_ω
proc_lcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lcreate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lconst_α
proc_lconst_α:
#=======================================================================================================================
    .global proc_lconst_α
    .global proc_lconst_β
    .global proc_lconst_γ
    .global proc_lconst_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 368], rax
 pop rsi
proc_lconst_α_body:
# IR_VAR
 xchain00521_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00521_n1_α
 xchain00521_n0_β:
 jmp xchain00521_n2_α
# IR_UNOP
 xchain00521_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00521_n2_α
 cmp eax, 0
 jne xchain00521_n2_α
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain00521_n3_α
 xchain00521_n1_β:
 jmp xchain00521_n2_α
# IR_LIT_INTEGER
 xchain00521_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00521_n4_α
 xchain00521_n2_β:
 jmp proc_lconst_ω
.Lx00522_0:
 .quad 1
# IR_LIT_STRING
 xchain00521_n3_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00523_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00521_n5_α
 xchain00521_n3_β:
 jmp proc_lconst_ω
.Lx00523_0:
 .quad .Lx00523_0_s
.Lx00523_0_s:
 .string "[1,2,3,4,5]"
# IR_VAR
 xchain00521_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00521_n6_α
 xchain00521_n4_β:
 jmp proc_lconst_ω
# IR_RETURN
 xchain00521_n5_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lconst_γ
# IR_TO
 xchain00521_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00524_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00521_n7_α
 xchain00521_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00524_0
# IR_LIT_INTEGER
 xchain00521_n7_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00525_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00521_n8_α
 xchain00521_n7_β:
 jmp xchain00521_n6_β
.Lx00525_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00521_n8_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00526_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00521_n9_α
 xchain00521_n8_β:
 jmp xchain00521_n6_β
.Lx00526_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00521_n9_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00527_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00521_n10_α
 xchain00521_n9_β:
 jmp xchain00521_n6_β
.Lx00527_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00521_n10_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00521_n11_α
 xchain00521_n10_β:
 jmp xchain00521_n6_β
.Lx00528_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00521_n11_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00521_n12_α
 xchain00521_n11_β:
 jmp xchain00521_n6_β
.Lx00529_0:
 .quad 5
# IR_MAKE_LIST
 xchain00521_n12_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 200], rax
 lea rdi, [r12 + 128]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00521_n13_α
 xchain00521_n12_β:
 jmp xchain00521_n6_β
 xchain00521_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00521_n6_β
 xchain00521_n13_β:
 jmp xchain00521_n6_β
proc_lconst_β:
jmp proc_lconst_ω
proc_lconst_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 368]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lconst_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lcopy_α
proc_lcopy_α:
#=======================================================================================================================
    .global proc_lcopy_α
    .global proc_lcopy_β
    .global proc_lcopy_γ
    .global proc_lcopy_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lcopy_α_body:
# IR_VAR_REF gva
 xchain00530_n0_α:
 lea rdi, [rbx + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00530_n1_α
 xchain00530_n0_β:
 jmp xchain00530_n3_α
# IR_UNOP_TEST lv
 xchain00530_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00530_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00530_n3_α
 cmp eax, 0
 jne xchain00530_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00530_n2_α
 xchain00530_n1_β:
 jmp xchain00530_n3_α
# IR_LIT_INTEGER
 xchain00530_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00531_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00530_n4_α
 xchain00530_n2_β:
 jmp xchain00530_n3_α
.Lx00531_0:
 .quad 1
# IR_VAR
 xchain00530_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00530_n5_α
 xchain00530_n3_β:
 jmp xchain00530_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00530_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00530_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00530_n7_α
 xchain00530_n4_β:
 jmp xchain00530_n3_α
# IR_UNOP
 xchain00530_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00530_n6_α
 cmp eax, 0
 jne xchain00530_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00530_n8_α
 xchain00530_n5_β:
 jmp xchain00530_n6_α
# IR_LIT_INTEGER
 xchain00530_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00530_n9_α
 xchain00530_n6_β:
 jmp proc_lcopy_ω
.Lx00532_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00530_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00533_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00530_n10_α
 xchain00530_n7_β:
 jmp xchain00530_n3_α
.Lx00533_0:
 .quad 1
# IR_LIT_STRING
 xchain00530_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00534_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00530_n11_α
 xchain00530_n8_β:
 jmp proc_lcopy_ω
.Lx00534_0:
 .quad .Lx00534_0_s
.Lx00534_0_s:
 .string "copy(L)"
# IR_VAR
 xchain00530_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00530_n12_α
 xchain00530_n9_β:
 jmp proc_lcopy_ω
# IR_LIT_INTEGER
 xchain00530_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00530_n13_α
 xchain00530_n10_β:
 jmp xchain00530_n3_α
.Lx00535_0:
 .quad 2
# IR_RETURN
 xchain00530_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcopy_γ
# IR_TO
 xchain00530_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00536_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00530_n14_α
 xchain00530_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00536_0
# IR_LIT_INTEGER
 xchain00530_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00537_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00530_n15_α
 xchain00530_n13_β:
 jmp xchain00530_n3_α
.Lx00537_0:
 .quad 3
# IR_VAR gva
 xchain00530_n14_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00530_n16_α
 xchain00530_n14_β:
 jmp xchain00530_n12_β
# IR_LIT_INTEGER
 xchain00530_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00530_n17_α
 xchain00530_n15_β:
 jmp xchain00530_n3_α
.Lx00538_0:
 .quad 4
 xchain00530_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1513: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1513]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00530_n12_β
 jmp xchain00530_n12_β
 xchain00530_n16_β:
 jmp xchain00530_n12_β
# IR_LIT_INTEGER
 xchain00530_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00530_n18_α
 xchain00530_n17_β:
 jmp xchain00530_n3_α
.Lx00539_0:
 .quad 5
# IR_MAKE_LIST
 xchain00530_n18_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
 lea rdi, [r12 + 288]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00530_n19_α
 xchain00530_n18_β:
 jmp xchain00530_n3_α
# IR_ASSIGN gva
 xchain00530_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00530_n20_α
 xchain00530_n19_β:
 jmp xchain00530_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00530_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00530_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00530_n3_α
 xchain00530_n20_β:
 jmp xchain00530_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00530_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00530_n21_β:
 jmp xchain00530_n3_α
proc_lcopy_β:
jmp proc_lcopy_ω
proc_lcopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lcopy_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lsort_α
proc_lsort_α:
#=======================================================================================================================
    .global proc_lsort_α
    .global proc_lsort_β
    .global proc_lsort_γ
    .global proc_lsort_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lsort_α_body:
# IR_VAR_REF gva
 xchain00540_n0_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00540_n1_α
 xchain00540_n0_β:
 jmp xchain00540_n3_α
# IR_UNOP_TEST lv
 xchain00540_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00540_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00540_n3_α
 cmp eax, 0
 jne xchain00540_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00540_n2_α
 xchain00540_n1_β:
 jmp xchain00540_n3_α
# IR_LIT_INTEGER
 xchain00540_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00541_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00540_n4_α
 xchain00540_n2_β:
 jmp xchain00540_n3_α
.Lx00541_0:
 .quad 1
# IR_VAR
 xchain00540_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00540_n5_α
 xchain00540_n3_β:
 jmp xchain00540_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00540_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00540_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00540_n7_α
 xchain00540_n4_β:
 jmp xchain00540_n3_α
# IR_UNOP
 xchain00540_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00540_n6_α
 cmp eax, 0
 jne xchain00540_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00540_n8_α
 xchain00540_n5_β:
 jmp xchain00540_n6_α
# IR_LIT_INTEGER
 xchain00540_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00540_n9_α
 xchain00540_n6_β:
 jmp proc_lsort_ω
.Lx00542_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00540_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00543_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00540_n10_α
 xchain00540_n7_β:
 jmp xchain00540_n3_α
.Lx00543_0:
 .quad 2
# IR_LIT_STRING
 xchain00540_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00540_n11_α
 xchain00540_n8_β:
 jmp proc_lsort_ω
.Lx00544_0:
 .quad .Lx00544_0_s
.Lx00544_0_s:
 .string "sort(L)"
# IR_VAR
 xchain00540_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00540_n12_α
 xchain00540_n9_β:
 jmp proc_lsort_ω
# IR_LIT_INTEGER
 xchain00540_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00545_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00540_n13_α
 xchain00540_n10_β:
 jmp xchain00540_n3_α
.Lx00545_0:
 .quad 7
# IR_RETURN
 xchain00540_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsort_γ
# IR_TO
 xchain00540_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00546_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00540_n14_α
 xchain00540_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00546_0
# IR_LIT_INTEGER
 xchain00540_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00547_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00540_n15_α
 xchain00540_n13_β:
 jmp xchain00540_n3_α
.Lx00547_0:
 .quad 1
# IR_VAR gva
 xchain00540_n14_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00540_n16_α
 xchain00540_n14_β:
 jmp xchain00540_n12_β
# IR_LIT_INTEGER
 xchain00540_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00540_n17_α
 xchain00540_n15_β:
 jmp xchain00540_n3_α
.Lx00548_0:
 .quad 8
 xchain00540_n16_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1544: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1544]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00540_n12_β
 jmp xchain00540_n12_β
 xchain00540_n16_β:
 jmp xchain00540_n12_β
# IR_LIT_INTEGER
 xchain00540_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00540_n18_α
 xchain00540_n17_β:
 jmp xchain00540_n3_α
.Lx00549_0:
 .quad 3
# IR_MAKE_LIST
 xchain00540_n18_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
 lea rdi, [r12 + 288]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00540_n19_α
 xchain00540_n18_β:
 jmp xchain00540_n3_α
# IR_ASSIGN gva
 xchain00540_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00540_n20_α
 xchain00540_n19_β:
 jmp xchain00540_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00540_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00540_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00540_n3_α
 xchain00540_n20_β:
 jmp xchain00540_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00540_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00540_n21_β:
 jmp xchain00540_n3_α
proc_lsort_β:
jmp proc_lsort_ω
proc_lsort_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lsort_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lsize_α
proc_lsize_α:
#=======================================================================================================================
    .global proc_lsize_α
    .global proc_lsize_β
    .global proc_lsize_γ
    .global proc_lsize_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 496], rax
 pop rsi
proc_lsize_α_body:
# IR_VAR_REF gva
 xchain00550_n0_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00550_n1_α
 xchain00550_n0_β:
 jmp xchain00550_n3_α
# IR_UNOP_TEST lv
 xchain00550_n1_α:
 mov eax, dword ptr [r12 + 432]
 cmp eax, 99
 je xchain00550_n3_α
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00550_n3_α
 cmp eax, 0
 jne xchain00550_n3_α
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00550_n2_α
 xchain00550_n1_β:
 jmp xchain00550_n3_α
# IR_LIT_INTEGER
 xchain00550_n2_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00550_n4_α
 xchain00550_n2_β:
 jmp xchain00550_n3_α
.Lx00551_0:
 .quad 1
# IR_VAR
 xchain00550_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00550_n5_α
 xchain00550_n3_β:
 jmp xchain00550_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00550_n4_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00550_n3_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00550_n7_α
 xchain00550_n4_β:
 jmp xchain00550_n3_α
# IR_UNOP
 xchain00550_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00550_n6_α
 cmp eax, 0
 jne xchain00550_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00550_n8_α
 xchain00550_n5_β:
 jmp xchain00550_n6_α
# IR_LIT_INTEGER
 xchain00550_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00550_n9_α
 xchain00550_n6_β:
 jmp proc_lsize_ω
.Lx00552_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00550_n7_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00550_n10_α
 xchain00550_n7_β:
 jmp xchain00550_n3_α
.Lx00553_0:
 .quad 1
# IR_LIT_STRING
 xchain00550_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00550_n11_α
 xchain00550_n8_β:
 jmp proc_lsize_ω
.Lx00554_0:
 .quad .Lx00554_0_s
.Lx00554_0_s:
 .string "*L"
# IR_VAR
 xchain00550_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00550_n12_α
 xchain00550_n9_β:
 jmp proc_lsize_ω
# IR_LIT_INTEGER
 xchain00550_n10_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00550_n13_α
 xchain00550_n10_β:
 jmp xchain00550_n3_α
.Lx00555_0:
 .quad 2
# IR_RETURN
 xchain00550_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsize_γ
# IR_TO
 xchain00550_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00556_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00550_n14_α
 xchain00550_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00556_0
# IR_LIT_INTEGER
 xchain00550_n13_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00557_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00550_n15_α
 xchain00550_n13_β:
 jmp xchain00550_n3_α
.Lx00557_0:
 .quad 3
# IR_VAR gva
 xchain00550_n14_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00550_n16_α
 xchain00550_n14_β:
 jmp xchain00550_n12_β
# IR_LIT_INTEGER
 xchain00550_n15_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00550_n17_α
 xchain00550_n15_β:
 jmp xchain00550_n3_α
.Lx00558_0:
 .quad 4
# IR_UNOP
 xchain00550_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00550_n12_β
 xchain00550_n16_β:
 jmp xchain00550_n12_β
# IR_LIT_INTEGER
 xchain00550_n17_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00559_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00550_n18_α
 xchain00550_n17_β:
 jmp xchain00550_n3_α
.Lx00559_0:
 .quad 5
# IR_MAKE_LIST
 xchain00550_n18_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 lea rdi, [r12 + 272]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00550_n19_α
 xchain00550_n18_β:
 jmp xchain00550_n3_α
# IR_ASSIGN gva
 xchain00550_n19_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00550_n20_α
 xchain00550_n19_β:
 jmp xchain00550_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00550_n20_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00550_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00550_n3_α
 xchain00550_n20_β:
 jmp xchain00550_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00550_n21_α:
 jmp qword ptr [r12 + 224]
 xchain00550_n21_β:
 jmp xchain00550_n3_α
proc_lsize_β:
jmp proc_lsize_ω
proc_lsize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 496]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lsize_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lpick_α
proc_lpick_α:
#=======================================================================================================================
    .global proc_lpick_α
    .global proc_lpick_β
    .global proc_lpick_γ
    .global proc_lpick_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lpick_α_body:
# IR_VAR_REF gva
 xchain00560_n0_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00560_n1_α
 xchain00560_n0_β:
 jmp xchain00560_n3_α
# IR_UNOP_TEST lv
 xchain00560_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00560_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00560_n3_α
 cmp eax, 0
 jne xchain00560_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00560_n2_α
 xchain00560_n1_β:
 jmp xchain00560_n3_α
# IR_LIT_INTEGER
 xchain00560_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00560_n4_α
 xchain00560_n2_β:
 jmp xchain00560_n3_α
.Lx00561_0:
 .quad 1
# IR_VAR
 xchain00560_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00560_n5_α
 xchain00560_n3_β:
 jmp xchain00560_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00560_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00560_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00560_n7_α
 xchain00560_n4_β:
 jmp xchain00560_n3_α
# IR_UNOP
 xchain00560_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00560_n6_α
 cmp eax, 0
 jne xchain00560_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00560_n8_α
 xchain00560_n5_β:
 jmp xchain00560_n6_α
# IR_LIT_INTEGER
 xchain00560_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00560_n9_α
 xchain00560_n6_β:
 jmp proc_lpick_ω
.Lx00562_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00560_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00563_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00560_n10_α
 xchain00560_n7_β:
 jmp xchain00560_n3_α
.Lx00563_0:
 .quad 1
# IR_LIT_STRING
 xchain00560_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00560_n11_α
 xchain00560_n8_β:
 jmp proc_lpick_ω
.Lx00564_0:
 .quad .Lx00564_0_s
.Lx00564_0_s:
 .string "?L"
# IR_VAR
 xchain00560_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00560_n12_α
 xchain00560_n9_β:
 jmp proc_lpick_ω
# IR_LIT_INTEGER
 xchain00560_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00565_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00560_n13_α
 xchain00560_n10_β:
 jmp xchain00560_n3_α
.Lx00565_0:
 .quad 2
# IR_RETURN
 xchain00560_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lpick_γ
# IR_TO
 xchain00560_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00566_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00560_n14_α
 xchain00560_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00566_0
# IR_LIT_INTEGER
 xchain00560_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00567_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00560_n15_α
 xchain00560_n13_β:
 jmp xchain00560_n3_α
.Lx00567_0:
 .quad 3
# IR_VAR_REF gva
 xchain00560_n14_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00560_n16_α
 xchain00560_n14_β:
 jmp xchain00560_n12_β
# IR_LIT_INTEGER
 xchain00560_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00560_n17_α
 xchain00560_n15_β:
 jmp xchain00560_n3_α
.Lx00568_0:
 .quad 4
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00560_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00560_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00560_n18_α
 xchain00560_n16_β:
 jmp xchain00560_n12_β
# IR_LIT_INTEGER
 xchain00560_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00560_n19_α
 xchain00560_n17_β:
 jmp xchain00560_n3_α
.Lx00569_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00560_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00560_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00560_n12_β
 xchain00560_n18_β:
 jmp xchain00560_n12_β
# IR_MAKE_LIST
 xchain00560_n19_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
 lea rdi, [r12 + 288]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00560_n20_α
 xchain00560_n19_β:
 jmp xchain00560_n3_α
# IR_ASSIGN gva
 xchain00560_n20_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00560_n21_α
 xchain00560_n20_β:
 jmp xchain00560_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00560_n21_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00560_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00560_n3_α
 xchain00560_n21_β:
 jmp xchain00560_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00560_n22_α:
 jmp qword ptr [r12 + 240]
 xchain00560_n22_β:
 jmp xchain00560_n3_α
proc_lpick_β:
jmp proc_lpick_ω
proc_lpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lpick_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lsubscr_α
proc_lsubscr_α:
#=======================================================================================================================
    .global proc_lsubscr_α
    .global proc_lsubscr_β
    .global proc_lsubscr_γ
    .global proc_lsubscr_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 528], rax
 pop rsi
proc_lsubscr_α_body:
# IR_VAR_REF gva
 xchain00570_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00570_n1_α
 xchain00570_n0_β:
 jmp xchain00570_n3_α
# IR_UNOP_TEST lv
 xchain00570_n1_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain00570_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00570_n3_α
 cmp eax, 0
 jne xchain00570_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain00570_n2_α
 xchain00570_n1_β:
 jmp xchain00570_n3_α
# IR_LIT_INTEGER
 xchain00570_n2_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00570_n4_α
 xchain00570_n2_β:
 jmp xchain00570_n3_α
.Lx00571_0:
 .quad 1
# IR_VAR
 xchain00570_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00570_n5_α
 xchain00570_n3_β:
 jmp xchain00570_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00570_n4_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00570_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00570_n7_α
 xchain00570_n4_β:
 jmp xchain00570_n3_α
# IR_UNOP
 xchain00570_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00570_n6_α
 cmp eax, 0
 jne xchain00570_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00570_n8_α
 xchain00570_n5_β:
 jmp xchain00570_n6_α
# IR_LIT_INTEGER
 xchain00570_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00570_n9_α
 xchain00570_n6_β:
 jmp proc_lsubscr_ω
.Lx00572_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00570_n7_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00570_n10_α
 xchain00570_n7_β:
 jmp xchain00570_n3_α
.Lx00573_0:
 .quad 1
# IR_LIT_STRING
 xchain00570_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00570_n11_α
 xchain00570_n8_β:
 jmp proc_lsubscr_ω
.Lx00574_0:
 .quad .Lx00574_0_s
.Lx00574_0_s:
 .string "L[3]"
# IR_VAR
 xchain00570_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00570_n12_α
 xchain00570_n9_β:
 jmp proc_lsubscr_ω
# IR_LIT_INTEGER
 xchain00570_n10_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00575_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00570_n13_α
 xchain00570_n10_β:
 jmp xchain00570_n3_α
.Lx00575_0:
 .quad 2
# IR_RETURN
 xchain00570_n11_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsubscr_γ
# IR_TO
 xchain00570_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00576_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00570_n14_α
 xchain00570_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00576_0
# IR_LIT_INTEGER
 xchain00570_n13_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00570_n15_α
 xchain00570_n13_β:
 jmp xchain00570_n3_α
.Lx00577_0:
 .quad 3
# IR_VAR_REF gva
 xchain00570_n14_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00570_n16_α
 xchain00570_n14_β:
 jmp xchain00570_n12_β
# IR_LIT_INTEGER
 xchain00570_n15_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00570_n17_α
 xchain00570_n15_β:
 jmp xchain00570_n3_α
.Lx00578_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00570_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00570_n18_α
 xchain00570_n16_β:
 jmp xchain00570_n12_β
.Lx00579_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00570_n17_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00580_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00570_n19_α
 xchain00570_n17_β:
 jmp xchain00570_n3_α
.Lx00580_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00570_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00570_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00570_n20_α
 xchain00570_n18_β:
 jmp xchain00570_n12_β
# IR_MAKE_LIST
 xchain00570_n19_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 376], rax
 lea rdi, [r12 + 304]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00570_n21_α
 xchain00570_n19_β:
 jmp xchain00570_n3_α
# IR_DEREF variable -> value
 xchain00570_n20_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00570_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00570_n12_β
 xchain00570_n20_β:
 jmp xchain00570_n12_β
# IR_ASSIGN gva
 xchain00570_n21_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00570_n22_α
 xchain00570_n21_β:
 jmp xchain00570_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00570_n22_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00570_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00570_n3_α
 xchain00570_n22_β:
 jmp xchain00570_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00570_n23_α:
 jmp qword ptr [r12 + 256]
 xchain00570_n23_β:
 jmp xchain00570_n3_α
proc_lsubscr_β:
jmp proc_lsubscr_ω
proc_lsubscr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 528]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lsubscr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_lbang_α
proc_lbang_α:
#=======================================================================================================================
    .global proc_lbang_α
    .global proc_lbang_β
    .global proc_lbang_γ
    .global proc_lbang_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lbang_α_body:
# IR_VAR_REF gva
 xchain00581_n0_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00581_n1_α
 xchain00581_n0_β:
 jmp xchain00581_n3_α
# IR_UNOP_TEST lv
 xchain00581_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00581_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00581_n3_α
 cmp eax, 0
 jne xchain00581_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00581_n2_α
 xchain00581_n1_β:
 jmp xchain00581_n3_α
# IR_LIT_INTEGER
 xchain00581_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00582_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00581_n4_α
 xchain00581_n2_β:
 jmp xchain00581_n3_α
.Lx00582_0:
 .quad 1
# IR_VAR
 xchain00581_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00581_n5_α
 xchain00581_n3_β:
 jmp xchain00581_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00581_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00581_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00581_n7_α
 xchain00581_n4_β:
 jmp xchain00581_n3_α
# IR_UNOP
 xchain00581_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00581_n6_α
 cmp eax, 0
 jne xchain00581_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00581_n8_α
 xchain00581_n5_β:
 jmp xchain00581_n6_α
# IR_LIT_INTEGER
 xchain00581_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00581_n9_α
 xchain00581_n6_β:
 jmp proc_lbang_ω
.Lx00583_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00581_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00581_n10_α
 xchain00581_n7_β:
 jmp xchain00581_n3_α
.Lx00584_0:
 .quad 1
# IR_LIT_STRING
 xchain00581_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00585_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00581_n11_α
 xchain00581_n8_β:
 jmp proc_lbang_ω
.Lx00585_0:
 .quad .Lx00585_0_s
.Lx00585_0_s:
 .string "!L"
# IR_VAR
 xchain00581_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00581_n12_α
 xchain00581_n9_β:
 jmp proc_lbang_ω
# IR_LIT_INTEGER
 xchain00581_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00581_n13_α
 xchain00581_n10_β:
 jmp xchain00581_n3_α
.Lx00586_0:
 .quad 2
# IR_RETURN
 xchain00581_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lbang_γ
# IR_TO
 xchain00581_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00587_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00581_n14_α
 xchain00581_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00587_0
# IR_LIT_INTEGER
 xchain00581_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00581_n15_α
 xchain00581_n13_β:
 jmp xchain00581_n3_α
.Lx00588_0:
 .quad 3
# IR_VAR gva
 xchain00581_n14_α:
 mov rax, qword ptr [rbx + 320]
 mov rdx, qword ptr [rbx + 328]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00581_n16_α
 xchain00581_n14_β:
 jmp xchain00581_n12_β
# IR_LIT_INTEGER
 xchain00581_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00589_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00581_n17_α
 xchain00581_n15_β:
 jmp xchain00581_n3_α
.Lx00589_0:
 .quad 4
# IR_LIST_BANG
 xchain00581_n16_α:
 mov qword ptr [r12 + 112], 0
.Lx00590_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00581_n12_β
 jmp xchain00581_n16_β
 xchain00581_n16_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00590_0
# IR_LIT_INTEGER
 xchain00581_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00581_n18_α
 xchain00581_n17_β:
 jmp xchain00581_n3_α
.Lx00591_0:
 .quad 5
# IR_MAKE_LIST
 xchain00581_n18_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
 lea rdi, [r12 + 288]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00581_n19_α
 xchain00581_n18_β:
 jmp xchain00581_n3_α
# IR_ASSIGN gva
 xchain00581_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 320], rax
 mov qword ptr [rbx + 328], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00581_n20_α
 xchain00581_n19_β:
 jmp xchain00581_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00581_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00581_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00581_n3_α
 xchain00581_n20_β:
 jmp xchain00581_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00581_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00581_n21_β:
 jmp xchain00581_n3_α
proc_lbang_β:
jmp proc_lbang_ω
proc_lbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lbang_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_put1get1_α
proc_put1get1_α:
#=======================================================================================================================
    .global proc_put1get1_α
    .global proc_put1get1_β
    .global proc_put1get1_γ
    .global proc_put1get1_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_put1get1_α_body:
# IR_VAR_REF gva
 xchain00592_n0_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00592_n1_α
 xchain00592_n0_β:
 jmp xchain00592_n3_α
# IR_UNOP_TEST lv
 xchain00592_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00592_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00592_n3_α
 cmp eax, 0
 jne xchain00592_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00592_n2_α
 xchain00592_n1_β:
 jmp xchain00592_n3_α
# IR_LIT_INTEGER
 xchain00592_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00592_n4_α
 xchain00592_n2_β:
 jmp xchain00592_n3_α
.Lx00593_0:
 .quad 1
# IR_VAR
 xchain00592_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00592_n5_α
 xchain00592_n3_β:
 jmp xchain00592_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00592_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00592_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00592_n7_α
 xchain00592_n4_β:
 jmp xchain00592_n3_α
# IR_UNOP
 xchain00592_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00592_n6_α
 cmp eax, 0
 jne xchain00592_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00592_n8_α
 xchain00592_n5_β:
 jmp xchain00592_n6_α
# IR_LIT_INTEGER
 xchain00592_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00592_n9_α
 xchain00592_n6_β:
 jmp proc_put1get1_ω
.Lx00594_0:
 .quad 1
# IR_MAKE_LIST
 xchain00592_n7_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00592_n10_α
 xchain00592_n7_β:
 jmp xchain00592_n3_α
# IR_LIT_STRING
 xchain00592_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00595_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00592_n11_α
 xchain00592_n8_β:
 jmp proc_put1get1_ω
.Lx00595_0:
 .quad .Lx00595_0_s
.Lx00595_0_s:
 .string "get(put(L,0))"
# IR_VAR
 xchain00592_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00592_n12_α
 xchain00592_n9_β:
 jmp proc_put1get1_ω
# IR_ASSIGN gva
 xchain00592_n10_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 352], rax
 mov qword ptr [rbx + 360], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00592_n13_α
 xchain00592_n10_β:
 jmp xchain00592_n3_α
# IR_RETURN
 xchain00592_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put1get1_γ
# IR_TO
 xchain00592_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00596_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00592_n14_α
 xchain00592_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00596_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00592_n13_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00592_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00592_n3_α
 xchain00592_n13_β:
 jmp xchain00592_n3_α
# IR_VAR gva
 xchain00592_n14_α:
 mov rax, qword ptr [rbx + 352]
 mov rdx, qword ptr [rbx + 360]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00592_n16_α
 xchain00592_n14_β:
 jmp xchain00592_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00592_n15_α:
 jmp qword ptr [r12 + 304]
 xchain00592_n15_β:
 jmp xchain00592_n3_α
# IR_LIT_INTEGER
 xchain00592_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00592_n17_α
 xchain00592_n16_β:
 jmp xchain00592_n12_β
.Lx00597_0:
 .quad 0
 xchain00592_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1705: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1705]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00592_n12_β
 jmp xchain00592_n18_α
 xchain00592_n17_β:
 jmp xchain00592_n12_β
 xchain00592_n18_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1707: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1707]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00592_n12_β
 jmp xchain00592_n12_β
 xchain00592_n18_β:
 jmp xchain00592_n12_β
proc_put1get1_β:
jmp proc_put1get1_ω
proc_put1get1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_put1get1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_put2get2_α
proc_put2get2_α:
#=======================================================================================================================
    .global proc_put2get2_α
    .global proc_put2get2_β
    .global proc_put2get2_γ
    .global proc_put2get2_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_put2get2_α_body:
# IR_VAR_REF gva
 xchain00598_n0_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00598_n1_α
 xchain00598_n0_β:
 jmp xchain00598_n3_α
# IR_UNOP_TEST lv
 xchain00598_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00598_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00598_n3_α
 cmp eax, 0
 jne xchain00598_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00598_n2_α
 xchain00598_n1_β:
 jmp xchain00598_n3_α
# IR_LIT_INTEGER
 xchain00598_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00598_n4_α
 xchain00598_n2_β:
 jmp xchain00598_n3_α
.Lx00599_0:
 .quad 1
# IR_VAR
 xchain00598_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00598_n5_α
 xchain00598_n3_β:
 jmp xchain00598_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00598_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00598_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00598_n7_α
 xchain00598_n4_β:
 jmp xchain00598_n3_α
# IR_UNOP
 xchain00598_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00598_n6_α
 cmp eax, 0
 jne xchain00598_n6_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00598_n8_α
 xchain00598_n5_β:
 jmp xchain00598_n6_α
# IR_LIT_INTEGER
 xchain00598_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00598_n9_α
 xchain00598_n6_β:
 jmp proc_put2get2_ω
.Lx00600_0:
 .quad 1
# IR_MAKE_LIST
 xchain00598_n7_α:
 lea rdi, [r12 + 448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00598_n10_α
 xchain00598_n7_β:
 jmp xchain00598_n3_α
# IR_LIT_STRING
 xchain00598_n8_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00598_n11_α
 xchain00598_n8_β:
 jmp proc_put2get2_ω
.Lx00601_0:
 .quad .Lx00601_0_s
.Lx00601_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_VAR
 xchain00598_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00598_n12_α
 xchain00598_n9_β:
 jmp proc_put2get2_ω
# IR_ASSIGN gva
 xchain00598_n10_α:
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 384], rax
 mov qword ptr [rbx + 392], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00598_n13_α
 xchain00598_n10_β:
 jmp xchain00598_n3_α
# IR_RETURN
 xchain00598_n11_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put2get2_γ
# IR_TO
 xchain00598_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00602_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00598_n14_α
 xchain00598_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00602_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00598_n13_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00598_n3_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00598_n3_α
 xchain00598_n13_β:
 jmp xchain00598_n3_α
# IR_VAR gva
 xchain00598_n14_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00598_n16_α
 xchain00598_n14_β:
 jmp xchain00598_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00598_n15_α:
 jmp qword ptr [r12 + 400]
 xchain00598_n15_β:
 jmp xchain00598_n3_α
# IR_LIT_INTEGER
 xchain00598_n16_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00598_n17_α
 xchain00598_n16_β:
 jmp xchain00598_n12_β
.Lx00603_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00598_n17_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00598_n18_α
 xchain00598_n17_β:
 jmp xchain00598_n12_β
.Lx00604_0:
 .quad 2
 xchain00598_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn1735: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1735]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00598_n12_β
 jmp xchain00598_n19_α
 xchain00598_n18_β:
 jmp xchain00598_n12_β
# IR_VAR gva
 xchain00598_n19_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00598_n20_α
 xchain00598_n19_β:
 jmp xchain00598_n12_β
 xchain00598_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1738: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1738]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00598_n12_β
 jmp xchain00598_n21_α
 xchain00598_n20_β:
 jmp xchain00598_n12_β
# IR_VAR gva
 xchain00598_n21_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00598_n22_α
 xchain00598_n21_β:
 jmp xchain00598_n12_β
 xchain00598_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1741: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1741]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00598_n12_β
 jmp xchain00598_n23_α
 xchain00598_n22_β:
 jmp xchain00598_n12_β
 xchain00598_n23_α:
 jmp xchain00598_n12_β
xchain00598_n23_β:
 jmp xchain00598_n12_β
proc_put2get2_β:
jmp proc_put2get2_ω
proc_put2get2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 512]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_put2get2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_put3get3_α
proc_put3get3_α:
#=======================================================================================================================
    .global proc_put3get3_α
    .global proc_put3get3_β
    .global proc_put3get3_γ
    .global proc_put3get3_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_put3get3_α_body:
# IR_VAR_REF gva
 xchain00605_n0_α:
 lea rdi, [rbx + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00605_n1_α
 xchain00605_n0_β:
 jmp xchain00605_n3_α
# IR_UNOP_TEST lv
 xchain00605_n1_α:
 mov eax, dword ptr [r12 + 528]
 cmp eax, 99
 je xchain00605_n3_α
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00605_n3_α
 cmp eax, 0
 jne xchain00605_n3_α
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 552], rax
 jmp xchain00605_n2_α
 xchain00605_n1_β:
 jmp xchain00605_n3_α
# IR_LIT_INTEGER
 xchain00605_n2_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00605_n4_α
 xchain00605_n2_β:
 jmp xchain00605_n3_α
.Lx00606_0:
 .quad 1
# IR_VAR
 xchain00605_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain00605_n5_α
 xchain00605_n3_β:
 jmp xchain00605_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00605_n4_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00605_n3_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00605_n7_α
 xchain00605_n4_β:
 jmp xchain00605_n3_α
# IR_UNOP
 xchain00605_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00605_n6_α
 cmp eax, 0
 jne xchain00605_n6_α
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain00605_n8_α
 xchain00605_n5_β:
 jmp xchain00605_n6_α
# IR_LIT_INTEGER
 xchain00605_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00605_n9_α
 xchain00605_n6_β:
 jmp proc_put3get3_ω
.Lx00607_0:
 .quad 1
# IR_MAKE_LIST
 xchain00605_n7_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00605_n10_α
 xchain00605_n7_β:
 jmp xchain00605_n3_α
# IR_LIT_STRING
 xchain00605_n8_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00605_n11_α
 xchain00605_n8_β:
 jmp proc_put3get3_ω
.Lx00608_0:
 .quad .Lx00608_0_s
.Lx00608_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_VAR
 xchain00605_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00605_n12_α
 xchain00605_n9_β:
 jmp proc_put3get3_ω
# IR_ASSIGN gva
 xchain00605_n10_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 416], rax
 mov qword ptr [rbx + 424], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00605_n13_α
 xchain00605_n10_β:
 jmp xchain00605_n3_α
# IR_RETURN
 xchain00605_n11_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put3get3_γ
# IR_TO
 xchain00605_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00609_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00605_n14_α
 xchain00605_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00609_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00605_n13_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain00605_n3_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain00605_n3_α
 xchain00605_n13_β:
 jmp xchain00605_n3_α
# IR_VAR gva
 xchain00605_n14_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00605_n16_α
 xchain00605_n14_β:
 jmp xchain00605_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00605_n15_α:
 jmp qword ptr [r12 + 480]
 xchain00605_n15_β:
 jmp xchain00605_n3_α
# IR_LIT_INTEGER
 xchain00605_n16_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00605_n17_α
 xchain00605_n16_β:
 jmp xchain00605_n12_β
.Lx00610_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00605_n17_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00611_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00605_n18_α
 xchain00605_n17_β:
 jmp xchain00605_n12_β
.Lx00611_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00605_n18_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00605_n19_α
 xchain00605_n18_β:
 jmp xchain00605_n12_β
.Lx00612_0:
 .quad 3
 xchain00605_n19_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+272]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 280], rax
# marshal arg2 = producer-box slot [r12+352] -> [r12+288]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
# marshal arg3 = producer-box slot [r12+368] -> [r12+304]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn1771: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1771]
 lea rsi, [r12 + 256]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00605_n12_β
 jmp xchain00605_n20_α
 xchain00605_n19_β:
 jmp xchain00605_n12_β
# IR_VAR gva
 xchain00605_n20_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00605_n21_α
 xchain00605_n20_β:
 jmp xchain00605_n12_β
 xchain00605_n21_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1774: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1774]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00605_n12_β
 jmp xchain00605_n22_α
 xchain00605_n21_β:
 jmp xchain00605_n12_β
# IR_VAR gva
 xchain00605_n22_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00605_n23_α
 xchain00605_n22_β:
 jmp xchain00605_n12_β
 xchain00605_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1777: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1777]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00605_n12_β
 jmp xchain00605_n24_α
 xchain00605_n23_β:
 jmp xchain00605_n12_β
# IR_VAR gva
 xchain00605_n24_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00605_n25_α
 xchain00605_n24_β:
 jmp xchain00605_n12_β
 xchain00605_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1780: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1780]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00605_n12_β
 jmp xchain00605_n26_α
 xchain00605_n25_β:
 jmp xchain00605_n12_β
 xchain00605_n26_α:
 jmp xchain00605_n12_β
xchain00605_n26_β:
 jmp xchain00605_n12_β
proc_put3get3_β:
jmp proc_put3get3_ω
proc_put3get3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 592]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_put3get3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_put4get4_α
proc_put4get4_α:
#=======================================================================================================================
    .global proc_put4get4_α
    .global proc_put4get4_β
    .global proc_put4get4_γ
    .global proc_put4get4_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 672], rax
 pop rsi
proc_put4get4_α_body:
# IR_VAR_REF gva
 xchain00613_n0_α:
 lea rdi, [rbx + 464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00613_n1_α
 xchain00613_n0_β:
 jmp xchain00613_n3_α
# IR_UNOP_TEST lv
 xchain00613_n1_α:
 mov eax, dword ptr [r12 + 608]
 cmp eax, 99
 je xchain00613_n3_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00613_n3_α
 cmp eax, 0
 jne xchain00613_n3_α
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 632], rax
 jmp xchain00613_n2_α
 xchain00613_n1_β:
 jmp xchain00613_n3_α
# IR_LIT_INTEGER
 xchain00613_n2_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00613_n4_α
 xchain00613_n2_β:
 jmp xchain00613_n3_α
.Lx00614_0:
 .quad 1
# IR_VAR
 xchain00613_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00613_n5_α
 xchain00613_n3_β:
 jmp xchain00613_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00613_n4_α:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00613_n3_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00613_n7_α
 xchain00613_n4_β:
 jmp xchain00613_n3_α
# IR_UNOP
 xchain00613_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00613_n6_α
 cmp eax, 0
 jne xchain00613_n6_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00613_n8_α
 xchain00613_n5_β:
 jmp xchain00613_n6_α
# IR_LIT_INTEGER
 xchain00613_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00615_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00613_n9_α
 xchain00613_n6_β:
 jmp proc_put4get4_ω
.Lx00615_0:
 .quad 1
# IR_MAKE_LIST
 xchain00613_n7_α:
 lea rdi, [r12 + 608]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00613_n10_α
 xchain00613_n7_β:
 jmp xchain00613_n3_α
# IR_LIT_STRING
 xchain00613_n8_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00613_n11_α
 xchain00613_n8_β:
 jmp proc_put4get4_ω
.Lx00616_0:
 .quad .Lx00616_0_s
.Lx00616_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_VAR
 xchain00613_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00613_n12_α
 xchain00613_n9_β:
 jmp proc_put4get4_ω
# IR_ASSIGN gva
 xchain00613_n10_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 448], rax
 mov qword ptr [rbx + 456], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00613_n13_α
 xchain00613_n10_β:
 jmp xchain00613_n3_α
# IR_RETURN
 xchain00613_n11_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put4get4_γ
# IR_TO
 xchain00613_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00617_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00613_n14_α
 xchain00613_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00617_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00613_n13_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
 lea rax, [rip + xchain00613_n3_α]
 mov qword ptr [r12 + 560], rax
 jmp xchain00613_n3_α
 xchain00613_n13_β:
 jmp xchain00613_n3_α
# IR_VAR gva
 xchain00613_n14_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00613_n16_α
 xchain00613_n14_β:
 jmp xchain00613_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00613_n15_α:
 jmp qword ptr [r12 + 560]
 xchain00613_n15_β:
 jmp xchain00613_n3_α
# IR_LIT_INTEGER
 xchain00613_n16_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00618_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00613_n17_α
 xchain00613_n16_β:
 jmp xchain00613_n12_β
.Lx00618_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00613_n17_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00613_n18_α
 xchain00613_n17_β:
 jmp xchain00613_n12_β
.Lx00619_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00613_n18_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00620_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00613_n19_α
 xchain00613_n18_β:
 jmp xchain00613_n12_β
.Lx00620_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00613_n19_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00613_n20_α
 xchain00613_n19_β:
 jmp xchain00613_n12_β
.Lx00621_0:
 .quad 4
 xchain00613_n20_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+384] -> [r12+304]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+320]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+416] -> [r12+336]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
# marshal arg3 = producer-box slot [r12+432] -> [r12+352]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
# marshal arg4 = producer-box slot [r12+448] -> [r12+368]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn1811: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1811]
 lea rsi, [r12 + 304]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00613_n12_β
 jmp xchain00613_n21_α
 xchain00613_n20_β:
 jmp xchain00613_n12_β
# IR_VAR gva
 xchain00613_n21_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00613_n22_α
 xchain00613_n21_β:
 jmp xchain00613_n12_β
 xchain00613_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1814: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1814]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00613_n12_β
 jmp xchain00613_n23_α
 xchain00613_n22_β:
 jmp xchain00613_n12_β
# IR_VAR gva
 xchain00613_n23_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00613_n24_α
 xchain00613_n23_β:
 jmp xchain00613_n12_β
 xchain00613_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1817: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1817]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00613_n12_β
 jmp xchain00613_n25_α
 xchain00613_n24_β:
 jmp xchain00613_n12_β
# IR_VAR gva
 xchain00613_n25_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00613_n26_α
 xchain00613_n25_β:
 jmp xchain00613_n12_β
 xchain00613_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1820: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1820]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00613_n12_β
 jmp xchain00613_n27_α
 xchain00613_n26_β:
 jmp xchain00613_n12_β
# IR_VAR gva
 xchain00613_n27_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00613_n28_α
 xchain00613_n27_β:
 jmp xchain00613_n12_β
 xchain00613_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1823: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1823]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00613_n12_β
 jmp xchain00613_n29_α
 xchain00613_n28_β:
 jmp xchain00613_n12_β
 xchain00613_n29_α:
 jmp xchain00613_n12_β
xchain00613_n29_β:
 jmp xchain00613_n12_β
proc_put4get4_β:
jmp proc_put4get4_ω
proc_put4get4_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 672]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_put4get4_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_pushpop_α
proc_pushpop_α:
#=======================================================================================================================
    .global proc_pushpop_α
    .global proc_pushpop_β
    .global proc_pushpop_γ
    .global proc_pushpop_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_pushpop_α_body:
# IR_VAR_REF gva
 xchain00622_n0_α:
 lea rdi, [rbx + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00622_n1_α
 xchain00622_n0_β:
 jmp xchain00622_n3_α
# IR_UNOP_TEST lv
 xchain00622_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00622_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00622_n3_α
 cmp eax, 0
 jne xchain00622_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00622_n2_α
 xchain00622_n1_β:
 jmp xchain00622_n3_α
# IR_LIT_INTEGER
 xchain00622_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00623_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00622_n4_α
 xchain00622_n2_β:
 jmp xchain00622_n3_α
.Lx00623_0:
 .quad 1
# IR_VAR
 xchain00622_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00622_n5_α
 xchain00622_n3_β:
 jmp xchain00622_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00622_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00622_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00622_n7_α
 xchain00622_n4_β:
 jmp xchain00622_n3_α
# IR_UNOP
 xchain00622_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00622_n6_α
 cmp eax, 0
 jne xchain00622_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00622_n8_α
 xchain00622_n5_β:
 jmp xchain00622_n6_α
# IR_LIT_INTEGER
 xchain00622_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00622_n9_α
 xchain00622_n6_β:
 jmp proc_pushpop_ω
.Lx00624_0:
 .quad 1
# IR_MAKE_LIST
 xchain00622_n7_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00622_n10_α
 xchain00622_n7_β:
 jmp xchain00622_n3_α
# IR_LIT_STRING
 xchain00622_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00622_n11_α
 xchain00622_n8_β:
 jmp proc_pushpop_ω
.Lx00625_0:
 .quad .Lx00625_0_s
.Lx00625_0_s:
 .string "pop(push(L,0))"
# IR_VAR
 xchain00622_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00622_n12_α
 xchain00622_n9_β:
 jmp proc_pushpop_ω
# IR_ASSIGN gva
 xchain00622_n10_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 480], rax
 mov qword ptr [rbx + 488], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00622_n13_α
 xchain00622_n10_β:
 jmp xchain00622_n3_α
# IR_RETURN
 xchain00622_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop_γ
# IR_TO
 xchain00622_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00626_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00622_n14_α
 xchain00622_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00626_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00622_n13_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00622_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00622_n3_α
 xchain00622_n13_β:
 jmp xchain00622_n3_α
# IR_VAR gva
 xchain00622_n14_α:
 mov rax, qword ptr [rbx + 480]
 mov rdx, qword ptr [rbx + 488]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00622_n16_α
 xchain00622_n14_β:
 jmp xchain00622_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00622_n15_α:
 jmp qword ptr [r12 + 304]
 xchain00622_n15_β:
 jmp xchain00622_n3_α
# IR_LIT_INTEGER
 xchain00622_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00627_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00622_n17_α
 xchain00622_n16_β:
 jmp xchain00622_n12_β
.Lx00627_0:
 .quad 0
 xchain00622_n17_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1851: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1851]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00622_n12_β
 jmp xchain00622_n18_α
 xchain00622_n17_β:
 jmp xchain00622_n12_β
 xchain00622_n18_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1853: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1853]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00622_n12_β
 jmp xchain00622_n12_β
 xchain00622_n18_β:
 jmp xchain00622_n12_β
proc_pushpop_β:
jmp proc_pushpop_ω
proc_pushpop_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_pushpop_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_putget12_α
proc_putget12_α:
#=======================================================================================================================
    .global proc_putget12_α
    .global proc_putget12_β
    .global proc_putget12_γ
    .global proc_putget12_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_putget12_α_body:
# IR_VAR_REF gva
 xchain00628_n0_α:
 lea rdi, [rbx + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00628_n1_α
 xchain00628_n0_β:
 jmp xchain00628_n3_α
# IR_UNOP_TEST lv
 xchain00628_n1_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00628_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00628_n3_α
 cmp eax, 0
 jne xchain00628_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00628_n2_α
 xchain00628_n1_β:
 jmp xchain00628_n3_α
# IR_LIT_INTEGER
 xchain00628_n2_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00629_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00628_n4_α
 xchain00628_n2_β:
 jmp xchain00628_n3_α
.Lx00629_0:
 .quad 1
# IR_VAR
 xchain00628_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00628_n5_α
 xchain00628_n3_β:
 jmp xchain00628_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00628_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00628_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00628_n7_α
 xchain00628_n4_β:
 jmp xchain00628_n3_α
# IR_UNOP
 xchain00628_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00628_n6_α
 cmp eax, 0
 jne xchain00628_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00628_n8_α
 xchain00628_n5_β:
 jmp xchain00628_n6_α
# IR_LIT_INTEGER
 xchain00628_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00628_n9_α
 xchain00628_n6_β:
 jmp proc_putget12_ω
.Lx00630_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00628_n7_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00631_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00628_n10_α
 xchain00628_n7_β:
 jmp xchain00628_n3_α
.Lx00631_0:
 .quad 3
# IR_LIT_STRING
 xchain00628_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00632_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00628_n11_α
 xchain00628_n8_β:
 jmp proc_putget12_ω
.Lx00632_0:
 .quad .Lx00632_0_s
.Lx00632_0_s:
 .string "get(put(L12,0))"
# IR_VAR
 xchain00628_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00628_n12_α
 xchain00628_n9_β:
 jmp proc_putget12_ω
# IR_LIT_INTEGER
 xchain00628_n10_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00628_n13_α
 xchain00628_n10_β:
 jmp xchain00628_n3_α
.Lx00633_0:
 .quad 1
# IR_RETURN
 xchain00628_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putget12_γ
# IR_TO
 xchain00628_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00634_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00628_n14_α
 xchain00628_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00634_0
# IR_LIT_INTEGER
 xchain00628_n13_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00628_n15_α
 xchain00628_n13_β:
 jmp xchain00628_n3_α
.Lx00635_0:
 .quad 4
# IR_VAR gva
 xchain00628_n14_α:
 mov rax, qword ptr [rbx + 512]
 mov rdx, qword ptr [rbx + 520]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00628_n16_α
 xchain00628_n14_β:
 jmp xchain00628_n12_β
# IR_LIT_INTEGER
 xchain00628_n15_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00628_n17_α
 xchain00628_n15_β:
 jmp xchain00628_n3_α
.Lx00636_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00628_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00637_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00628_n18_α
 xchain00628_n16_β:
 jmp xchain00628_n12_β
.Lx00637_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00628_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00638_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00628_n19_α
 xchain00628_n17_β:
 jmp xchain00628_n3_α
.Lx00638_0:
 .quad 5
 xchain00628_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1878: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1878]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00628_n12_β
 jmp xchain00628_n20_α
 xchain00628_n18_β:
 jmp xchain00628_n12_β
# IR_LIT_INTEGER
 xchain00628_n19_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00628_n21_α
 xchain00628_n19_β:
 jmp xchain00628_n3_α
.Lx00639_0:
 .quad 9
 xchain00628_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1881: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1881]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00628_n12_β
 jmp xchain00628_n12_β
 xchain00628_n20_β:
 jmp xchain00628_n12_β
# IR_LIT_INTEGER
 xchain00628_n21_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00628_n22_α
 xchain00628_n21_β:
 jmp xchain00628_n3_α
.Lx00640_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00628_n22_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00641_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00628_n23_α
 xchain00628_n22_β:
 jmp xchain00628_n3_α
.Lx00641_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00628_n23_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00628_n24_α
 xchain00628_n23_β:
 jmp xchain00628_n3_α
.Lx00642_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00628_n24_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00628_n25_α
 xchain00628_n24_β:
 jmp xchain00628_n3_α
.Lx00643_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00628_n25_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00644_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00628_n26_α
 xchain00628_n25_β:
 jmp xchain00628_n3_α
.Lx00644_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00628_n26_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00628_n27_α
 xchain00628_n26_β:
 jmp xchain00628_n3_α
.Lx00645_0:
 .quad 8
# IR_MAKE_LIST
 xchain00628_n27_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 504], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 520], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 536], rax
 lea rdi, [r12 + 352]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00628_n28_α
 xchain00628_n27_β:
 jmp xchain00628_n3_α
# IR_ASSIGN gva
 xchain00628_n28_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 512], rax
 mov qword ptr [rbx + 520], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00628_n29_α
 xchain00628_n28_β:
 jmp xchain00628_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00628_n29_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00628_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00628_n3_α
 xchain00628_n29_β:
 jmp xchain00628_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00628_n30_α:
 jmp qword ptr [r12 + 304]
 xchain00628_n30_β:
 jmp xchain00628_n3_α
proc_putget12_β:
jmp proc_putget12_ω
proc_putget12_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 800]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_putget12_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_pushpop12_α
proc_pushpop12_α:
#=======================================================================================================================
    .global proc_pushpop12_α
    .global proc_pushpop12_β
    .global proc_pushpop12_γ
    .global proc_pushpop12_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_pushpop12_α_body:
# IR_VAR_REF gva
 xchain00646_n0_α:
 lea rdi, [rbx + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00646_n1_α
 xchain00646_n0_β:
 jmp xchain00646_n3_α
# IR_UNOP_TEST lv
 xchain00646_n1_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00646_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00646_n3_α
 cmp eax, 0
 jne xchain00646_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00646_n2_α
 xchain00646_n1_β:
 jmp xchain00646_n3_α
# IR_LIT_INTEGER
 xchain00646_n2_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00646_n4_α
 xchain00646_n2_β:
 jmp xchain00646_n3_α
.Lx00647_0:
 .quad 1
# IR_VAR
 xchain00646_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00646_n5_α
 xchain00646_n3_β:
 jmp xchain00646_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00646_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00646_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00646_n7_α
 xchain00646_n4_β:
 jmp xchain00646_n3_α
# IR_UNOP
 xchain00646_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00646_n6_α
 cmp eax, 0
 jne xchain00646_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00646_n8_α
 xchain00646_n5_β:
 jmp xchain00646_n6_α
# IR_LIT_INTEGER
 xchain00646_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00648_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00646_n9_α
 xchain00646_n6_β:
 jmp proc_pushpop12_ω
.Lx00648_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00646_n7_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00649_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00646_n10_α
 xchain00646_n7_β:
 jmp xchain00646_n3_α
.Lx00649_0:
 .quad 3
# IR_LIT_STRING
 xchain00646_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00646_n11_α
 xchain00646_n8_β:
 jmp proc_pushpop12_ω
.Lx00650_0:
 .quad .Lx00650_0_s
.Lx00650_0_s:
 .string "pop(push(L12,0))"
# IR_VAR
 xchain00646_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00646_n12_α
 xchain00646_n9_β:
 jmp proc_pushpop12_ω
# IR_LIT_INTEGER
 xchain00646_n10_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00646_n13_α
 xchain00646_n10_β:
 jmp xchain00646_n3_α
.Lx00651_0:
 .quad 1
# IR_RETURN
 xchain00646_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop12_γ
# IR_TO
 xchain00646_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00652_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00646_n14_α
 xchain00646_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00652_0
# IR_LIT_INTEGER
 xchain00646_n13_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00646_n15_α
 xchain00646_n13_β:
 jmp xchain00646_n3_α
.Lx00653_0:
 .quad 4
# IR_VAR gva
 xchain00646_n14_α:
 mov rax, qword ptr [rbx + 544]
 mov rdx, qword ptr [rbx + 552]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00646_n16_α
 xchain00646_n14_β:
 jmp xchain00646_n12_β
# IR_LIT_INTEGER
 xchain00646_n15_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00646_n17_α
 xchain00646_n15_β:
 jmp xchain00646_n3_α
.Lx00654_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00646_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00646_n18_α
 xchain00646_n16_β:
 jmp xchain00646_n12_β
.Lx00655_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00646_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00646_n19_α
 xchain00646_n17_β:
 jmp xchain00646_n3_α
.Lx00656_0:
 .quad 5
 xchain00646_n18_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1919: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1919]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00646_n12_β
 jmp xchain00646_n20_α
 xchain00646_n18_β:
 jmp xchain00646_n12_β
# IR_LIT_INTEGER
 xchain00646_n19_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00646_n21_α
 xchain00646_n19_β:
 jmp xchain00646_n3_α
.Lx00657_0:
 .quad 9
 xchain00646_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1922: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1922]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00646_n12_β
 jmp xchain00646_n12_β
 xchain00646_n20_β:
 jmp xchain00646_n12_β
# IR_LIT_INTEGER
 xchain00646_n21_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00658_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00646_n22_α
 xchain00646_n21_β:
 jmp xchain00646_n3_α
.Lx00658_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00646_n22_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00646_n23_α
 xchain00646_n22_β:
 jmp xchain00646_n3_α
.Lx00659_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00646_n23_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00646_n24_α
 xchain00646_n23_β:
 jmp xchain00646_n3_α
.Lx00660_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00646_n24_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00661_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00646_n25_α
 xchain00646_n24_β:
 jmp xchain00646_n3_α
.Lx00661_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00646_n25_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00646_n26_α
 xchain00646_n25_β:
 jmp xchain00646_n3_α
.Lx00662_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00646_n26_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00646_n27_α
 xchain00646_n26_β:
 jmp xchain00646_n3_α
.Lx00663_0:
 .quad 8
# IR_MAKE_LIST
 xchain00646_n27_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 392], rax
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 504], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 520], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 536], rax
 lea rdi, [r12 + 352]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00646_n28_α
 xchain00646_n27_β:
 jmp xchain00646_n3_α
# IR_ASSIGN gva
 xchain00646_n28_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 544], rax
 mov qword ptr [rbx + 552], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00646_n29_α
 xchain00646_n28_β:
 jmp xchain00646_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00646_n29_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00646_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00646_n3_α
 xchain00646_n29_β:
 jmp xchain00646_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00646_n30_α:
 jmp qword ptr [r12 + 304]
 xchain00646_n30_β:
 jmp xchain00646_n3_α
proc_pushpop12_β:
jmp proc_pushpop12_ω
proc_pushpop12_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 800]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_pushpop12_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setcreate_α
proc_setcreate_α:
#=======================================================================================================================
    .global proc_setcreate_α
    .global proc_setcreate_β
    .global proc_setcreate_γ
    .global proc_setcreate_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_setcreate_α_body:
# IR_VAR
 xchain00664_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00664_n1_α
 xchain00664_n0_β:
 jmp xchain00664_n2_α
# IR_UNOP
 xchain00664_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00664_n2_α
 cmp eax, 0
 jne xchain00664_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00664_n3_α
 xchain00664_n1_β:
 jmp xchain00664_n2_α
# IR_LIT_INTEGER
 xchain00664_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00664_n4_α
 xchain00664_n2_β:
 jmp proc_setcreate_ω
.Lx00665_0:
 .quad 1
# IR_LIT_STRING
 xchain00664_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00664_n5_α
 xchain00664_n3_β:
 jmp proc_setcreate_ω
.Lx00666_0:
 .quad .Lx00666_0_s
.Lx00666_0_s:
 .string "set()"
# IR_VAR
 xchain00664_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00664_n6_α
 xchain00664_n4_β:
 jmp proc_setcreate_ω
# IR_RETURN
 xchain00664_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcreate_γ
# IR_TO
 xchain00664_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00667_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00664_n7_α
 xchain00664_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00667_0
 xchain00664_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1948: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1948]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00664_n6_β
 jmp xchain00664_n6_β
 xchain00664_n7_β:
 jmp xchain00664_n6_β
proc_setcreate_β:
jmp proc_setcreate_ω
proc_setcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setcreate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setcopy_α
proc_setcopy_α:
#=======================================================================================================================
    .global proc_setcopy_α
    .global proc_setcopy_β
    .global proc_setcopy_γ
    .global proc_setcopy_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_setcopy_α_body:
# IR_VAR_REF gva
 xchain00668_n0_α:
 lea rdi, [rbx + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00668_n1_α
 xchain00668_n0_β:
 jmp xchain00668_n3_α
# IR_UNOP_TEST lv
 xchain00668_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00668_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00668_n3_α
 cmp eax, 0
 jne xchain00668_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00668_n2_α
 xchain00668_n1_β:
 jmp xchain00668_n3_α
# IR_LIT_INTEGER
 xchain00668_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00669_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00668_n4_α
 xchain00668_n2_β:
 jmp xchain00668_n3_α
.Lx00669_0:
 .quad 1
# IR_VAR
 xchain00668_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00668_n5_α
 xchain00668_n3_β:
 jmp xchain00668_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00668_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00668_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00668_n7_α
 xchain00668_n4_β:
 jmp xchain00668_n3_α
# IR_UNOP
 xchain00668_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00668_n6_α
 cmp eax, 0
 jne xchain00668_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00668_n8_α
 xchain00668_n5_β:
 jmp xchain00668_n6_α
# IR_LIT_INTEGER
 xchain00668_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00668_n9_α
 xchain00668_n6_β:
 jmp proc_setcopy_ω
.Lx00670_0:
 .quad 1
 xchain00668_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1960: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1960]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00668_n3_α
 jmp xchain00668_n10_α
 xchain00668_n7_β:
 jmp xchain00668_n3_α
# IR_LIT_STRING
 xchain00668_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00668_n11_α
 xchain00668_n8_β:
 jmp proc_setcopy_ω
.Lx00671_0:
 .quad .Lx00671_0_s
.Lx00671_0_s:
 .string "copy(S)"
# IR_VAR
 xchain00668_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00668_n12_α
 xchain00668_n9_β:
 jmp proc_setcopy_ω
# IR_ASSIGN gva
 xchain00668_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 576], rax
 mov qword ptr [rbx + 584], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00668_n13_α
 xchain00668_n10_β:
 jmp xchain00668_n3_α
# IR_RETURN
 xchain00668_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcopy_γ
# IR_TO
 xchain00668_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00672_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00668_n14_α
 xchain00668_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00672_0
# IR_LIT_INTEGER
 xchain00668_n13_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00673_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00668_n15_α
 xchain00668_n13_β:
 jmp xchain00668_n3_α
.Lx00673_0:
 .quad 5
# IR_VAR gva
 xchain00668_n14_α:
 mov rax, qword ptr [rbx + 576]
 mov rdx, qword ptr [rbx + 584]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00668_n16_α
 xchain00668_n14_β:
 jmp xchain00668_n12_β
 xchain00668_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn1971: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1971]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00668_n3_α
 jmp xchain00668_n17_α
 xchain00668_n15_β:
 jmp xchain00668_n3_α
 xchain00668_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1973: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1973]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00668_n12_β
 jmp xchain00668_n12_β
 xchain00668_n16_β:
 jmp xchain00668_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00668_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00668_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00668_n3_α
 xchain00668_n17_β:
 jmp xchain00668_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00668_n18_α:
 jmp qword ptr [r12 + 240]
 xchain00668_n18_β:
 jmp xchain00668_n3_α
proc_setcopy_β:
jmp proc_setcopy_ω
proc_setcopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setcopy_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setinsert_α
proc_setinsert_α:
#=======================================================================================================================
    .global proc_setinsert_α
    .global proc_setinsert_β
    .global proc_setinsert_γ
    .global proc_setinsert_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setinsert_α_body:
# IR_VAR_REF gva
 xchain00674_n0_α:
 lea rdi, [rbx + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00674_n1_α
 xchain00674_n0_β:
 jmp xchain00674_n3_α
# IR_UNOP_TEST lv
 xchain00674_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00674_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00674_n3_α
 cmp eax, 0
 jne xchain00674_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00674_n2_α
 xchain00674_n1_β:
 jmp xchain00674_n3_α
# IR_LIT_INTEGER
 xchain00674_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00674_n4_α
 xchain00674_n2_β:
 jmp xchain00674_n3_α
.Lx00675_0:
 .quad 1
# IR_VAR
 xchain00674_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00674_n5_α
 xchain00674_n3_β:
 jmp xchain00674_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00674_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00674_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00674_n7_α
 xchain00674_n4_β:
 jmp xchain00674_n3_α
# IR_UNOP
 xchain00674_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00674_n6_α
 cmp eax, 0
 jne xchain00674_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00674_n8_α
 xchain00674_n5_β:
 jmp xchain00674_n6_α
# IR_LIT_INTEGER
 xchain00674_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00674_n9_α
 xchain00674_n6_β:
 jmp proc_setinsert_ω
.Lx00676_0:
 .quad 1
 xchain00674_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1989: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1989]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00674_n3_α
 jmp xchain00674_n10_α
 xchain00674_n7_β:
 jmp xchain00674_n3_α
# IR_LIT_STRING
 xchain00674_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00674_n11_α
 xchain00674_n8_β:
 jmp proc_setinsert_ω
.Lx00677_0:
 .quad .Lx00677_0_s
.Lx00677_0_s:
 .string "insert(S,5)"
# IR_VAR
 xchain00674_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00674_n12_α
 xchain00674_n9_β:
 jmp proc_setinsert_ω
# IR_ASSIGN gva
 xchain00674_n10_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 608], rax
 mov qword ptr [rbx + 616], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00674_n13_α
 xchain00674_n10_β:
 jmp xchain00674_n3_α
# IR_RETURN
 xchain00674_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsert_γ
# IR_TO
 xchain00674_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00678_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00674_n14_α
 xchain00674_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00678_0
# IR_LIT_INTEGER
 xchain00674_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00674_n15_α
 xchain00674_n13_β:
 jmp xchain00674_n3_α
.Lx00679_0:
 .quad 5
# IR_VAR gva
 xchain00674_n14_α:
 mov rax, qword ptr [rbx + 608]
 mov rdx, qword ptr [rbx + 616]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00674_n16_α
 xchain00674_n14_β:
 jmp xchain00674_n12_β
 xchain00674_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn2000: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2000]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00674_n3_α
 jmp xchain00674_n17_α
 xchain00674_n15_β:
 jmp xchain00674_n3_α
# IR_LIT_INTEGER
 xchain00674_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00674_n18_α
 xchain00674_n16_β:
 jmp xchain00674_n12_β
.Lx00680_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00674_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00674_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00674_n3_α
 xchain00674_n17_β:
 jmp xchain00674_n3_α
 xchain00674_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2005: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2005]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00674_n12_β
 jmp xchain00674_n12_β
 xchain00674_n18_β:
 jmp xchain00674_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00674_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00674_n19_β:
 jmp xchain00674_n3_α
proc_setinsert_β:
jmp proc_setinsert_ω
proc_setinsert_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setinsert_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setmember_α
proc_setmember_α:
#=======================================================================================================================
    .global proc_setmember_α
    .global proc_setmember_β
    .global proc_setmember_γ
    .global proc_setmember_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setmember_α_body:
# IR_VAR_REF gva
 xchain00681_n0_α:
 lea rdi, [rbx + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00681_n1_α
 xchain00681_n0_β:
 jmp xchain00681_n3_α
# IR_UNOP_TEST lv
 xchain00681_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00681_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00681_n3_α
 cmp eax, 0
 jne xchain00681_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00681_n2_α
 xchain00681_n1_β:
 jmp xchain00681_n3_α
# IR_LIT_INTEGER
 xchain00681_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00682_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00681_n4_α
 xchain00681_n2_β:
 jmp xchain00681_n3_α
.Lx00682_0:
 .quad 1
# IR_VAR
 xchain00681_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00681_n5_α
 xchain00681_n3_β:
 jmp xchain00681_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00681_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00681_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00681_n7_α
 xchain00681_n4_β:
 jmp xchain00681_n3_α
# IR_UNOP
 xchain00681_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00681_n6_α
 cmp eax, 0
 jne xchain00681_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00681_n8_α
 xchain00681_n5_β:
 jmp xchain00681_n6_α
# IR_LIT_INTEGER
 xchain00681_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00681_n9_α
 xchain00681_n6_β:
 jmp proc_setmember_ω
.Lx00683_0:
 .quad 1
 xchain00681_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2019: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2019]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00681_n3_α
 jmp xchain00681_n10_α
 xchain00681_n7_β:
 jmp xchain00681_n3_α
# IR_LIT_STRING
 xchain00681_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00681_n11_α
 xchain00681_n8_β:
 jmp proc_setmember_ω
.Lx00684_0:
 .quad .Lx00684_0_s
.Lx00684_0_s:
 .string "member(S,5)"
# IR_VAR
 xchain00681_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00681_n12_α
 xchain00681_n9_β:
 jmp proc_setmember_ω
# IR_ASSIGN gva
 xchain00681_n10_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 640], rax
 mov qword ptr [rbx + 648], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00681_n13_α
 xchain00681_n10_β:
 jmp xchain00681_n3_α
# IR_RETURN
 xchain00681_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setmember_γ
# IR_TO
 xchain00681_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00685_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00681_n14_α
 xchain00681_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00685_0
# IR_LIT_INTEGER
 xchain00681_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00681_n15_α
 xchain00681_n13_β:
 jmp xchain00681_n3_α
.Lx00686_0:
 .quad 5
# IR_VAR gva
 xchain00681_n14_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00681_n16_α
 xchain00681_n14_β:
 jmp xchain00681_n12_β
 xchain00681_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn2030: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2030]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00681_n3_α
 jmp xchain00681_n17_α
 xchain00681_n15_β:
 jmp xchain00681_n3_α
# IR_LIT_INTEGER
 xchain00681_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00681_n18_α
 xchain00681_n16_β:
 jmp xchain00681_n12_β
.Lx00687_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00681_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00681_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00681_n3_α
 xchain00681_n17_β:
 jmp xchain00681_n3_α
 xchain00681_n18_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2035: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2035]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00681_n12_β
 jmp xchain00681_n12_β
 xchain00681_n18_β:
 jmp xchain00681_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00681_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00681_n19_β:
 jmp xchain00681_n3_α
proc_setmember_β:
jmp proc_setmember_ω
proc_setmember_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setmember_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setinsdel_α
proc_setinsdel_α:
#=======================================================================================================================
    .global proc_setinsdel_α
    .global proc_setinsdel_β
    .global proc_setinsdel_γ
    .global proc_setinsdel_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setinsdel_α_body:
# IR_VAR_REF gva
 xchain00688_n0_α:
 lea rdi, [rbx + 688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00688_n1_α
 xchain00688_n0_β:
 jmp xchain00688_n3_α
# IR_UNOP_TEST lv
 xchain00688_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00688_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00688_n3_α
 cmp eax, 0
 jne xchain00688_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00688_n2_α
 xchain00688_n1_β:
 jmp xchain00688_n3_α
# IR_LIT_INTEGER
 xchain00688_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00688_n4_α
 xchain00688_n2_β:
 jmp xchain00688_n3_α
.Lx00689_0:
 .quad 1
# IR_VAR
 xchain00688_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00688_n5_α
 xchain00688_n3_β:
 jmp xchain00688_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00688_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00688_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00688_n7_α
 xchain00688_n4_β:
 jmp xchain00688_n3_α
# IR_UNOP
 xchain00688_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00688_n6_α
 cmp eax, 0
 jne xchain00688_n6_α
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 jmp xchain00688_n8_α
 xchain00688_n5_β:
 jmp xchain00688_n6_α
# IR_LIT_INTEGER
 xchain00688_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00688_n9_α
 xchain00688_n6_β:
 jmp proc_setinsdel_ω
.Lx00690_0:
 .quad 1
 xchain00688_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2049: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2049]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00688_n3_α
 jmp xchain00688_n10_α
 xchain00688_n7_β:
 jmp xchain00688_n3_α
# IR_LIT_STRING
 xchain00688_n8_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00688_n11_α
 xchain00688_n8_β:
 jmp proc_setinsdel_ω
.Lx00691_0:
 .quad .Lx00691_0_s
.Lx00691_0_s:
 .string "insert+delete"
# IR_VAR
 xchain00688_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00688_n12_α
 xchain00688_n9_β:
 jmp proc_setinsdel_ω
# IR_ASSIGN gva
 xchain00688_n10_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 672], rax
 mov qword ptr [rbx + 680], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00688_n13_α
 xchain00688_n10_β:
 jmp xchain00688_n3_α
# IR_RETURN
 xchain00688_n11_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsdel_γ
# IR_TO
 xchain00688_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00692_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00688_n14_α
 xchain00688_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00692_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00688_n13_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00688_n3_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00688_n3_α
 xchain00688_n13_β:
 jmp xchain00688_n3_α
# IR_VAR gva
 xchain00688_n14_α:
 mov rax, qword ptr [rbx + 672]
 mov rdx, qword ptr [rbx + 680]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00688_n16_α
 xchain00688_n14_β:
 jmp xchain00688_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00688_n15_α:
 jmp qword ptr [r12 + 336]
 xchain00688_n15_β:
 jmp xchain00688_n3_α
# IR_LIT_INTEGER
 xchain00688_n16_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00688_n17_α
 xchain00688_n16_β:
 jmp xchain00688_n12_β
.Lx00693_0:
 .quad 5
 xchain00688_n17_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn2064: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2064]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00688_n12_β
 jmp xchain00688_n18_α
 xchain00688_n17_β:
 jmp xchain00688_n12_β
# IR_LIT_INTEGER
 xchain00688_n18_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00688_n19_α
 xchain00688_n18_β:
 jmp xchain00688_n12_β
.Lx00694_0:
 .quad 5
 xchain00688_n19_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+128]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2067: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2067]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00688_n12_β
 jmp xchain00688_n12_β
 xchain00688_n19_β:
 jmp xchain00688_n12_β
proc_setinsdel_β:
jmp proc_setinsdel_ω
proc_setinsdel_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setinsdel_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setpick_α
proc_setpick_α:
#=======================================================================================================================
    .global proc_setpick_α
    .global proc_setpick_β
    .global proc_setpick_γ
    .global proc_setpick_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_setpick_α_body:
# IR_VAR_REF gva
 xchain00695_n0_α:
 lea rdi, [rbx + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00695_n1_α
 xchain00695_n0_β:
 jmp xchain00695_n3_α
# IR_UNOP_TEST lv
 xchain00695_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00695_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00695_n3_α
 cmp eax, 0
 jne xchain00695_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00695_n2_α
 xchain00695_n1_β:
 jmp xchain00695_n3_α
# IR_LIT_INTEGER
 xchain00695_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00696_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00695_n4_α
 xchain00695_n2_β:
 jmp xchain00695_n3_α
.Lx00696_0:
 .quad 1
# IR_VAR
 xchain00695_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00695_n5_α
 xchain00695_n3_β:
 jmp xchain00695_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00695_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00695_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00695_n7_α
 xchain00695_n4_β:
 jmp xchain00695_n3_α
# IR_UNOP
 xchain00695_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00695_n6_α
 cmp eax, 0
 jne xchain00695_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00695_n8_α
 xchain00695_n5_β:
 jmp xchain00695_n6_α
# IR_LIT_INTEGER
 xchain00695_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00695_n9_α
 xchain00695_n6_β:
 jmp proc_setpick_ω
.Lx00697_0:
 .quad 1
 xchain00695_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2079: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2079]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00695_n3_α
 jmp xchain00695_n10_α
 xchain00695_n7_β:
 jmp xchain00695_n3_α
# IR_LIT_STRING
 xchain00695_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00698_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00695_n11_α
 xchain00695_n8_β:
 jmp proc_setpick_ω
.Lx00698_0:
 .quad .Lx00698_0_s
.Lx00698_0_s:
 .string "?S"
# IR_VAR
 xchain00695_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00695_n12_α
 xchain00695_n9_β:
 jmp proc_setpick_ω
# IR_ASSIGN gva
 xchain00695_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 704], rax
 mov qword ptr [rbx + 712], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00695_n13_α
 xchain00695_n10_β:
 jmp xchain00695_n3_α
# IR_RETURN
 xchain00695_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setpick_γ
# IR_TO
 xchain00695_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00699_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00695_n14_α
 xchain00695_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00699_0
# IR_LIT_INTEGER
 xchain00695_n13_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00695_n15_α
 xchain00695_n13_β:
 jmp xchain00695_n3_α
.Lx00700_0:
 .quad 5
# IR_VAR_REF gva
 xchain00695_n14_α:
 lea rdi, [rbx + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00695_n16_α
 xchain00695_n14_β:
 jmp xchain00695_n12_β
 xchain00695_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2091: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2091]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00695_n3_α
 jmp xchain00695_n17_α
 xchain00695_n15_β:
 jmp xchain00695_n3_α
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00695_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00695_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00695_n18_α
 xchain00695_n16_β:
 jmp xchain00695_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00695_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00695_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00695_n3_α
 xchain00695_n17_β:
 jmp xchain00695_n3_α
# IR_DEREF variable -> value
 xchain00695_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00695_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00695_n12_β
 xchain00695_n18_β:
 jmp xchain00695_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00695_n19_α:
 jmp qword ptr [r12 + 240]
 xchain00695_n19_β:
 jmp xchain00695_n3_α
proc_setpick_β:
jmp proc_setpick_ω
proc_setpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setpick_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_setbang_α
proc_setbang_α:
#=======================================================================================================================
    .global proc_setbang_α
    .global proc_setbang_β
    .global proc_setbang_γ
    .global proc_setbang_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_setbang_α_body:
# IR_VAR_REF gva
 xchain00701_n0_α:
 lea rdi, [rbx + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00701_n1_α
 xchain00701_n0_β:
 jmp xchain00701_n3_α
# IR_UNOP_TEST lv
 xchain00701_n1_α:
 mov eax, dword ptr [r12 + 400]
 cmp eax, 99
 je xchain00701_n3_α
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00701_n3_α
 cmp eax, 0
 jne xchain00701_n3_α
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 424], rax
 jmp xchain00701_n2_α
 xchain00701_n1_β:
 jmp xchain00701_n3_α
# IR_LIT_INTEGER
 xchain00701_n2_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00702_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00701_n4_α
 xchain00701_n2_β:
 jmp xchain00701_n3_α
.Lx00702_0:
 .quad 1
# IR_VAR
 xchain00701_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00701_n5_α
 xchain00701_n3_β:
 jmp xchain00701_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00701_n4_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00701_n3_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00701_n7_α
 xchain00701_n4_β:
 jmp xchain00701_n3_α
# IR_UNOP
 xchain00701_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00701_n6_α
 cmp eax, 0
 jne xchain00701_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00701_n8_α
 xchain00701_n5_β:
 jmp xchain00701_n6_α
# IR_LIT_INTEGER
 xchain00701_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00703_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00701_n9_α
 xchain00701_n6_β:
 jmp proc_setbang_ω
.Lx00703_0:
 .quad 1
 xchain00701_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2109: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2109]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00701_n3_α
 jmp xchain00701_n10_α
 xchain00701_n7_β:
 jmp xchain00701_n3_α
# IR_LIT_STRING
 xchain00701_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00701_n11_α
 xchain00701_n8_β:
 jmp proc_setbang_ω
.Lx00704_0:
 .quad .Lx00704_0_s
.Lx00704_0_s:
 .string "!S"
# IR_VAR
 xchain00701_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00701_n12_α
 xchain00701_n9_β:
 jmp proc_setbang_ω
# IR_ASSIGN gva
 xchain00701_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 736], rax
 mov qword ptr [rbx + 744], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00701_n13_α
 xchain00701_n10_β:
 jmp xchain00701_n3_α
# IR_RETURN
 xchain00701_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setbang_γ
# IR_TO
 xchain00701_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00705_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00701_n14_α
 xchain00701_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00705_0
# IR_LIT_INTEGER
 xchain00701_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00706_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00701_n15_α
 xchain00701_n13_β:
 jmp xchain00701_n3_α
.Lx00706_0:
 .quad 1
# IR_VAR gva
 xchain00701_n14_α:
 mov rax, qword ptr [rbx + 736]
 mov rdx, qword ptr [rbx + 744]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00701_n16_α
 xchain00701_n14_β:
 jmp xchain00701_n12_β
# IR_LIT_INTEGER
 xchain00701_n15_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00707_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00701_n17_α
 xchain00701_n15_β:
 jmp xchain00701_n3_α
.Lx00707_0:
 .quad 5
# IR_LIST_BANG
 xchain00701_n16_α:
 mov qword ptr [r12 + 112], 0
.Lx00708_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00701_n12_β
 jmp xchain00701_n16_β
 xchain00701_n16_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00708_0
# IR_TO
 xchain00701_n17_α:
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 352], rax
.Lx00709_0:
 mov rax, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jg xchain00701_n3_α
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain00701_n18_α
 xchain00701_n17_β:
 inc qword ptr [r12 + 352]
 jmp .Lx00709_0
 xchain00701_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2125: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2125]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00701_n3_α
 jmp xchain00701_n17_β
 xchain00701_n18_β:
 jmp xchain00701_n3_α
proc_setbang_β:
jmp proc_setbang_ω
proc_setbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 464]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_setbang_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tblcreate_α
proc_tblcreate_α:
#=======================================================================================================================
    .global proc_tblcreate_α
    .global proc_tblcreate_β
    .global proc_tblcreate_γ
    .global proc_tblcreate_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_tblcreate_α_body:
# IR_VAR
 xchain00710_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00710_n1_α
 xchain00710_n0_β:
 jmp xchain00710_n2_α
# IR_UNOP
 xchain00710_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00710_n2_α
 cmp eax, 0
 jne xchain00710_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00710_n3_α
 xchain00710_n1_β:
 jmp xchain00710_n2_α
# IR_LIT_INTEGER
 xchain00710_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00711_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00710_n4_α
 xchain00710_n2_β:
 jmp proc_tblcreate_ω
.Lx00711_0:
 .quad 1
# IR_LIT_STRING
 xchain00710_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00710_n5_α
 xchain00710_n3_β:
 jmp proc_tblcreate_ω
.Lx00712_0:
 .quad .Lx00712_0_s
.Lx00712_0_s:
 .string "table()"
# IR_VAR
 xchain00710_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00710_n6_α
 xchain00710_n4_β:
 jmp proc_tblcreate_ω
# IR_RETURN
 xchain00710_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblcreate_γ
# IR_TO
 xchain00710_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00713_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00710_n7_α
 xchain00710_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00713_0
 xchain00710_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2138: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2138]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00710_n6_β
 jmp xchain00710_n6_β
 xchain00710_n7_β:
 jmp xchain00710_n6_β
proc_tblcreate_β:
jmp proc_tblcreate_ω
proc_tblcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tblcreate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tblasgn_α
proc_tblasgn_α:
#=======================================================================================================================
    .global proc_tblasgn_α
    .global proc_tblasgn_β
    .global proc_tblasgn_γ
    .global proc_tblasgn_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_tblasgn_α_body:
# IR_VAR_REF gva
 xchain00714_n0_α:
 lea rdi, [rbx + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00714_n1_α
 xchain00714_n0_β:
 jmp xchain00714_n3_α
# IR_UNOP_TEST lv
 xchain00714_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00714_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00714_n3_α
 cmp eax, 0
 jne xchain00714_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00714_n2_α
 xchain00714_n1_β:
 jmp xchain00714_n3_α
# IR_LIT_INTEGER
 xchain00714_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00714_n4_α
 xchain00714_n2_β:
 jmp xchain00714_n3_α
.Lx00715_0:
 .quad 1
# IR_VAR
 xchain00714_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00714_n5_α
 xchain00714_n3_β:
 jmp xchain00714_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00714_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00714_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00714_n7_α
 xchain00714_n4_β:
 jmp xchain00714_n3_α
# IR_UNOP
 xchain00714_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00714_n6_α
 cmp eax, 0
 jne xchain00714_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00714_n8_α
 xchain00714_n5_β:
 jmp xchain00714_n6_α
# IR_LIT_INTEGER
 xchain00714_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00716_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00714_n9_α
 xchain00714_n6_β:
 jmp proc_tblasgn_ω
.Lx00716_0:
 .quad 1
 xchain00714_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2150: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2150]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00714_n3_α
 jmp xchain00714_n10_α
 xchain00714_n7_β:
 jmp xchain00714_n3_α
# IR_LIT_STRING
 xchain00714_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00717_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00714_n11_α
 xchain00714_n8_β:
 jmp proc_tblasgn_ω
.Lx00717_0:
 .quad .Lx00717_0_s
.Lx00717_0_s:
 .string "T[5] := 1"
# IR_VAR
 xchain00714_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00714_n12_α
 xchain00714_n9_β:
 jmp proc_tblasgn_ω
# IR_ASSIGN gva
 xchain00714_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 768], rax
 mov qword ptr [rbx + 776], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00714_n13_α
 xchain00714_n10_β:
 jmp xchain00714_n3_α
# IR_RETURN
 xchain00714_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblasgn_γ
# IR_TO
 xchain00714_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00718_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00714_n14_α
 xchain00714_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00718_0
# IR_LIT_INTEGER
 xchain00714_n13_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00714_n15_α
 xchain00714_n13_β:
 jmp xchain00714_n3_α
.Lx00719_0:
 .quad 5
# IR_VAR_REF gva
 xchain00714_n14_α:
 lea rdi, [rbx + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00714_n16_α
 xchain00714_n14_β:
 jmp xchain00714_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00714_n15_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00714_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00714_n17_α
 xchain00714_n15_β:
 jmp xchain00714_n3_α
# IR_LIT_INTEGER
 xchain00714_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00720_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00714_n18_α
 xchain00714_n16_β:
 jmp xchain00714_n12_β
.Lx00720_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00714_n17_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00714_n19_α
 xchain00714_n17_β:
 jmp xchain00714_n3_α
.Lx00721_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00714_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00714_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00714_n20_α
 xchain00714_n18_β:
 jmp xchain00714_n12_β
# IR_ASSIGN_VAR write through variable
 xchain00714_n19_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00714_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00714_n21_α
 xchain00714_n19_β:
 jmp xchain00714_n3_α
# IR_LIT_INTEGER
 xchain00714_n20_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00714_n22_α
 xchain00714_n20_β:
 jmp xchain00714_n12_β
.Lx00722_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00714_n21_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00714_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00714_n3_α
 xchain00714_n21_β:
 jmp xchain00714_n3_α
# IR_ASSIGN_VAR write through variable
 xchain00714_n22_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00714_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00714_n12_β
 xchain00714_n22_β:
 jmp xchain00714_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00714_n23_α:
 jmp qword ptr [r12 + 272]
 xchain00714_n23_β:
 jmp xchain00714_n3_α
proc_tblasgn_β:
jmp proc_tblasgn_ω
proc_tblasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tblasgn_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tblsub_α
proc_tblsub_α:
#=======================================================================================================================
    .global proc_tblsub_α
    .global proc_tblsub_β
    .global proc_tblsub_γ
    .global proc_tblsub_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 432], rax
 pop rsi
proc_tblsub_α_body:
# IR_VAR_REF gva
 xchain00723_n0_α:
 lea rdi, [rbx + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00723_n1_α
 xchain00723_n0_β:
 jmp xchain00723_n3_α
# IR_UNOP_TEST lv
 xchain00723_n1_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain00723_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00723_n3_α
 cmp eax, 0
 jne xchain00723_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain00723_n2_α
 xchain00723_n1_β:
 jmp xchain00723_n3_α
# IR_LIT_INTEGER
 xchain00723_n2_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00723_n4_α
 xchain00723_n2_β:
 jmp xchain00723_n3_α
.Lx00724_0:
 .quad 1
# IR_VAR
 xchain00723_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00723_n5_α
 xchain00723_n3_β:
 jmp xchain00723_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00723_n4_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00723_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00723_n7_α
 xchain00723_n4_β:
 jmp xchain00723_n3_α
# IR_UNOP
 xchain00723_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00723_n6_α
 cmp eax, 0
 jne xchain00723_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00723_n8_α
 xchain00723_n5_β:
 jmp xchain00723_n6_α
# IR_LIT_INTEGER
 xchain00723_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00723_n9_α
 xchain00723_n6_β:
 jmp proc_tblsub_ω
.Lx00725_0:
 .quad 1
 xchain00723_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2183: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2183]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00723_n3_α
 jmp xchain00723_n10_α
 xchain00723_n7_β:
 jmp xchain00723_n3_α
# IR_LIT_STRING
 xchain00723_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00723_n11_α
 xchain00723_n8_β:
 jmp proc_tblsub_ω
.Lx00726_0:
 .quad .Lx00726_0_s
.Lx00726_0_s:
 .string "T[5]"
# IR_VAR
 xchain00723_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00723_n12_α
 xchain00723_n9_β:
 jmp proc_tblsub_ω
# IR_ASSIGN gva
 xchain00723_n10_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 800], rax
 mov qword ptr [rbx + 808], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00723_n13_α
 xchain00723_n10_β:
 jmp xchain00723_n3_α
# IR_RETURN
 xchain00723_n11_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblsub_γ
# IR_TO
 xchain00723_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00727_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00723_n14_α
 xchain00723_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00727_0
# IR_LIT_INTEGER
 xchain00723_n13_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00728_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00723_n15_α
 xchain00723_n13_β:
 jmp xchain00723_n3_α
.Lx00728_0:
 .quad 5
# IR_VAR_REF gva
 xchain00723_n14_α:
 lea rdi, [rbx + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00723_n16_α
 xchain00723_n14_β:
 jmp xchain00723_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00723_n15_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00723_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00723_n17_α
 xchain00723_n15_β:
 jmp xchain00723_n3_α
# IR_LIT_INTEGER
 xchain00723_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00723_n18_α
 xchain00723_n16_β:
 jmp xchain00723_n12_β
.Lx00729_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00723_n17_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00730_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00723_n19_α
 xchain00723_n17_β:
 jmp xchain00723_n3_α
.Lx00730_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00723_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00723_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00723_n20_α
 xchain00723_n18_β:
 jmp xchain00723_n12_β
# IR_ASSIGN_VAR write through variable
 xchain00723_n19_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00723_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00723_n21_α
 xchain00723_n19_β:
 jmp xchain00723_n3_α
# IR_DEREF variable -> value
 xchain00723_n20_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00723_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00723_n12_β
 xchain00723_n20_β:
 jmp xchain00723_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00723_n21_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00723_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00723_n3_α
 xchain00723_n21_β:
 jmp xchain00723_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00723_n22_α:
 jmp qword ptr [r12 + 256]
 xchain00723_n22_β:
 jmp xchain00723_n3_α
proc_tblsub_β:
jmp proc_tblsub_ω
proc_tblsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 432]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tblsub_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_recconstr_α
proc_recconstr_α:
#=======================================================================================================================
    .global proc_recconstr_α
    .global proc_recconstr_β
    .global proc_recconstr_γ
    .global proc_recconstr_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_recconstr_α_body:
# IR_VAR
 xchain00731_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00731_n1_α
 xchain00731_n0_β:
 jmp xchain00731_n2_α
# IR_UNOP
 xchain00731_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00731_n2_α
 cmp eax, 0
 jne xchain00731_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00731_n3_α
 xchain00731_n1_β:
 jmp xchain00731_n2_α
# IR_LIT_INTEGER
 xchain00731_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00731_n4_α
 xchain00731_n2_β:
 jmp proc_recconstr_ω
.Lx00732_0:
 .quad 1
# IR_LIT_STRING
 xchain00731_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00731_n5_α
 xchain00731_n3_β:
 jmp proc_recconstr_ω
.Lx00733_0:
 .quad .Lx00733_0_s
.Lx00733_0_s:
 .string "record(4,7)"
# IR_VAR
 xchain00731_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00731_n6_α
 xchain00731_n4_β:
 jmp proc_recconstr_ω
# IR_RETURN
 xchain00731_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recconstr_γ
# IR_TO
 xchain00731_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00734_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00731_n7_α
 xchain00731_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00734_0
# IR_LIT_INTEGER
 xchain00731_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00731_n8_α
 xchain00731_n7_β:
 jmp xchain00731_n6_β
.Lx00735_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00731_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00731_n9_α
 xchain00731_n8_β:
 jmp xchain00731_n6_β
.Lx00736_0:
 .quad 7
 xchain00731_n9_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2218: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2218]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00731_n6_β
 jmp xchain00731_n6_β
 xchain00731_n9_β:
 jmp xchain00731_n6_β
proc_recconstr_β:
jmp proc_recconstr_ω
proc_recconstr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_recconstr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_reccopy_α
proc_reccopy_α:
#=======================================================================================================================
    .global proc_reccopy_α
    .global proc_reccopy_β
    .global proc_reccopy_γ
    .global proc_reccopy_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_reccopy_α_body:
# IR_VAR_REF gva
 xchain00737_n0_α:
 lea rdi, [rbx + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00737_n1_α
 xchain00737_n0_β:
 jmp xchain00737_n3_α
# IR_UNOP_TEST lv
 xchain00737_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00737_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00737_n3_α
 cmp eax, 0
 jne xchain00737_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00737_n2_α
 xchain00737_n1_β:
 jmp xchain00737_n3_α
# IR_LIT_INTEGER
 xchain00737_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00737_n4_α
 xchain00737_n2_β:
 jmp xchain00737_n3_α
.Lx00738_0:
 .quad 1
# IR_VAR
 xchain00737_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00737_n5_α
 xchain00737_n3_β:
 jmp xchain00737_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00737_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00737_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00737_n7_α
 xchain00737_n4_β:
 jmp xchain00737_n3_α
# IR_UNOP
 xchain00737_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00737_n6_α
 cmp eax, 0
 jne xchain00737_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00737_n8_α
 xchain00737_n5_β:
 jmp xchain00737_n6_α
# IR_LIT_INTEGER
 xchain00737_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00737_n9_α
 xchain00737_n6_β:
 jmp proc_reccopy_ω
.Lx00739_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00737_n7_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00740_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00737_n10_α
 xchain00737_n7_β:
 jmp xchain00737_n3_α
.Lx00740_0:
 .quad 4
# IR_LIT_STRING
 xchain00737_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00741_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00737_n11_α
 xchain00737_n8_β:
 jmp proc_reccopy_ω
.Lx00741_0:
 .quad .Lx00741_0_s
.Lx00741_0_s:
 .string "copy(R)"
# IR_VAR
 xchain00737_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00737_n12_α
 xchain00737_n9_β:
 jmp proc_reccopy_ω
# IR_LIT_INTEGER
 xchain00737_n10_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00737_n13_α
 xchain00737_n10_β:
 jmp xchain00737_n3_α
.Lx00742_0:
 .quad 7
# IR_RETURN
 xchain00737_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reccopy_γ
# IR_TO
 xchain00737_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00743_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00737_n14_α
 xchain00737_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00743_0
 xchain00737_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn2238: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2238]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00737_n3_α
 jmp xchain00737_n15_α
 xchain00737_n13_β:
 jmp xchain00737_n3_α
# IR_VAR gva
 xchain00737_n14_α:
 mov rax, qword ptr [rbx + 832]
 mov rdx, qword ptr [rbx + 840]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00737_n16_α
 xchain00737_n14_β:
 jmp xchain00737_n12_β
# IR_ASSIGN gva
 xchain00737_n15_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 832], rax
 mov qword ptr [rbx + 840], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00737_n17_α
 xchain00737_n15_β:
 jmp xchain00737_n3_α
 xchain00737_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn2242: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2242]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00737_n12_β
 jmp xchain00737_n12_β
 xchain00737_n16_β:
 jmp xchain00737_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00737_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00737_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00737_n3_α
 xchain00737_n17_β:
 jmp xchain00737_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00737_n18_α:
 jmp qword ptr [r12 + 240]
 xchain00737_n18_β:
 jmp xchain00737_n3_α
proc_reccopy_β:
jmp proc_reccopy_ω
proc_reccopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 416]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_reccopy_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_recfield_α
proc_recfield_α:
#=======================================================================================================================
    .global proc_recfield_α
    .global proc_recfield_β
    .global proc_recfield_γ
    .global proc_recfield_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_recfield_α_body:
# IR_VAR_REF gva
 xchain00744_n0_α:
 lea rdi, [rbx + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00744_n1_α
 xchain00744_n0_β:
 jmp xchain00744_n3_α
# IR_UNOP_TEST lv
 xchain00744_n1_α:
 mov eax, dword ptr [r12 + 336]
 cmp eax, 99
 je xchain00744_n3_α
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00744_n3_α
 cmp eax, 0
 jne xchain00744_n3_α
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 360], rax
 jmp xchain00744_n2_α
 xchain00744_n1_β:
 jmp xchain00744_n3_α
# IR_LIT_INTEGER
 xchain00744_n2_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00745_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00744_n4_α
 xchain00744_n2_β:
 jmp xchain00744_n3_α
.Lx00745_0:
 .quad 1
# IR_VAR
 xchain00744_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00744_n5_α
 xchain00744_n3_β:
 jmp xchain00744_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00744_n4_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00744_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00744_n7_α
 xchain00744_n4_β:
 jmp xchain00744_n3_α
# IR_UNOP
 xchain00744_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00744_n6_α
 cmp eax, 0
 jne xchain00744_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00744_n8_α
 xchain00744_n5_β:
 jmp xchain00744_n6_α
# IR_LIT_INTEGER
 xchain00744_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00746_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00744_n9_α
 xchain00744_n6_β:
 jmp proc_recfield_ω
.Lx00746_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00744_n7_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00747_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00744_n10_α
 xchain00744_n7_β:
 jmp xchain00744_n3_α
.Lx00747_0:
 .quad 4
# IR_LIT_STRING
 xchain00744_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00748_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00744_n11_α
 xchain00744_n8_β:
 jmp proc_recfield_ω
.Lx00748_0:
 .quad .Lx00748_0_s
.Lx00748_0_s:
 .string "R.f"
# IR_VAR
 xchain00744_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00744_n12_α
 xchain00744_n9_β:
 jmp proc_recfield_ω
# IR_LIT_INTEGER
 xchain00744_n10_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00749_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00744_n13_α
 xchain00744_n10_β:
 jmp xchain00744_n3_α
.Lx00749_0:
 .quad 7
# IR_RETURN
 xchain00744_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recfield_γ
# IR_TO
 xchain00744_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00750_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00744_n14_α
 xchain00744_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00750_0
 xchain00744_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2266: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2266]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00744_n3_α
 jmp xchain00744_n15_α
 xchain00744_n13_β:
 jmp xchain00744_n3_α
# IR_VAR gva
 xchain00744_n14_α:
 mov rax, qword ptr [rbx + 864]
 mov rdx, qword ptr [rbx + 872]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00744_n16_α
 xchain00744_n14_β:
 jmp xchain00744_n12_β
# IR_ASSIGN gva
 xchain00744_n15_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 864], rax
 mov qword ptr [rbx + 872], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00744_n17_α
 xchain00744_n15_β:
 jmp xchain00744_n3_α
# IR_FIELD_GET
 xchain00744_n16_α:
 mov rdi, qword ptr [rip + .Lx00751_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00744_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00744_n12_β
 xchain00744_n16_β:
 jmp xchain00744_n12_β
.Lx00751_0:
 .quad .Lx00751_0_s
.Lx00751_0_s:
 .string "y"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00744_n17_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00744_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00744_n3_α
 xchain00744_n17_β:
 jmp xchain00744_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00744_n18_α:
 jmp qword ptr [r12 + 224]
 xchain00744_n18_β:
 jmp xchain00744_n3_α
proc_recfield_β:
jmp proc_recfield_ω
proc_recfield_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 400]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_recfield_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_bigfield_α
proc_bigfield_α:
#=======================================================================================================================
    .global proc_bigfield_α
    .global proc_bigfield_β
    .global proc_bigfield_γ
    .global proc_bigfield_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_bigfield_α_body:
# IR_VAR_REF gva
 xchain00752_n0_α:
 lea rdi, [rbx + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00752_n1_α
 xchain00752_n0_β:
 jmp xchain00752_n3_α
# IR_UNOP_TEST lv
 xchain00752_n1_α:
 mov eax, dword ptr [r12 + 272]
 cmp eax, 99
 je xchain00752_n3_α
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00752_n3_α
 cmp eax, 0
 jne xchain00752_n3_α
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 296], rax
 jmp xchain00752_n2_α
 xchain00752_n1_β:
 jmp xchain00752_n3_α
# IR_LIT_INTEGER
 xchain00752_n2_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00753_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00752_n4_α
 xchain00752_n2_β:
 jmp xchain00752_n3_α
.Lx00753_0:
 .quad 1
# IR_VAR
 xchain00752_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00752_n5_α
 xchain00752_n3_β:
 jmp xchain00752_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00752_n4_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00752_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00752_n7_α
 xchain00752_n4_β:
 jmp xchain00752_n3_α
# IR_UNOP
 xchain00752_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00752_n6_α
 cmp eax, 0
 jne xchain00752_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00752_n8_α
 xchain00752_n5_β:
 jmp xchain00752_n6_α
# IR_LIT_INTEGER
 xchain00752_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00754_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00752_n9_α
 xchain00752_n6_β:
 jmp proc_bigfield_ω
.Lx00754_0:
 .quad 1
 xchain00752_n7_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2285: .string "bigrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2285]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00752_n3_α
 jmp xchain00752_n10_α
 xchain00752_n7_β:
 jmp xchain00752_n3_α
# IR_LIT_STRING
 xchain00752_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00752_n11_α
 xchain00752_n8_β:
 jmp proc_bigfield_ω
.Lx00755_0:
 .quad .Lx00755_0_s
.Lx00755_0_s:
 .string "R2.f"
# IR_VAR
 xchain00752_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00752_n12_α
 xchain00752_n9_β:
 jmp proc_bigfield_ω
# IR_ASSIGN gva
 xchain00752_n10_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 896], rax
 mov qword ptr [rbx + 904], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00752_n13_α
 xchain00752_n10_β:
 jmp xchain00752_n3_α
# IR_RETURN
 xchain00752_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bigfield_γ
# IR_TO
 xchain00752_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00756_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00752_n14_α
 xchain00752_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00756_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00752_n13_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00752_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00752_n3_α
 xchain00752_n13_β:
 jmp xchain00752_n3_α
# IR_VAR gva
 xchain00752_n14_α:
 mov rax, qword ptr [rbx + 896]
 mov rdx, qword ptr [rbx + 904]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00752_n16_α
 xchain00752_n14_β:
 jmp xchain00752_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00752_n15_α:
 jmp qword ptr [r12 + 224]
 xchain00752_n15_β:
 jmp xchain00752_n3_α
# IR_FIELD_GET
 xchain00752_n16_α:
 mov rdi, qword ptr [rip + .Lx00757_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00752_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00752_n12_β
 xchain00752_n16_β:
 jmp xchain00752_n12_β
.Lx00757_0:
 .quad .Lx00757_0_s
.Lx00757_0_s:
 .string "horatio"
proc_bigfield_β:
jmp proc_bigfield_ω
proc_bigfield_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_bigfield_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_globasgn_α
proc_globasgn_α:
#=======================================================================================================================
    .global proc_globasgn_α
    .global proc_globasgn_β
    .global proc_globasgn_γ
    .global proc_globasgn_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_globasgn_α_body:
# IR_VAR
 xchain00758_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00758_n1_α
 xchain00758_n0_β:
 jmp xchain00758_n2_α
# IR_UNOP
 xchain00758_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00758_n2_α
 cmp eax, 0
 jne xchain00758_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00758_n3_α
 xchain00758_n1_β:
 jmp xchain00758_n2_α
# IR_LIT_INTEGER
 xchain00758_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00759_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00758_n4_α
 xchain00758_n2_β:
 jmp proc_globasgn_ω
.Lx00759_0:
 .quad 1
# IR_LIT_STRING
 xchain00758_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00758_n5_α
 xchain00758_n3_β:
 jmp proc_globasgn_ω
.Lx00760_0:
 .quad .Lx00760_0_s
.Lx00760_0_s:
 .string "global := 1"
# IR_VAR
 xchain00758_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00758_n6_α
 xchain00758_n4_β:
 jmp proc_globasgn_ω
# IR_RETURN
 xchain00758_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_globasgn_γ
# IR_TO
 xchain00758_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00761_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00758_n7_α
 xchain00758_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00761_0
# IR_LIT_INTEGER
 xchain00758_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00758_n8_α
 xchain00758_n7_β:
 jmp xchain00758_n6_β
.Lx00762_0:
 .quad 1
# IR_ASSIGN gva
 xchain00758_n8_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00758_n6_β
 xchain00758_n8_β:
 jmp xchain00758_n6_β
proc_globasgn_β:
jmp proc_globasgn_ω
proc_globasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_globasgn_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_loclasgn_α
proc_loclasgn_α:
#=======================================================================================================================
    .global proc_loclasgn_α
    .global proc_loclasgn_β
    .global proc_loclasgn_γ
    .global proc_loclasgn_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_loclasgn_α_body:
# IR_VAR
 xchain00763_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00763_n1_α
 xchain00763_n0_β:
 jmp xchain00763_n2_α
# IR_UNOP
 xchain00763_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00763_n2_α
 cmp eax, 0
 jne xchain00763_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00763_n3_α
 xchain00763_n1_β:
 jmp xchain00763_n2_α
# IR_LIT_INTEGER
 xchain00763_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00763_n4_α
 xchain00763_n2_β:
 jmp proc_loclasgn_ω
.Lx00764_0:
 .quad 1
# IR_LIT_STRING
 xchain00763_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00763_n5_α
 xchain00763_n3_β:
 jmp proc_loclasgn_ω
.Lx00765_0:
 .quad .Lx00765_0_s
.Lx00765_0_s:
 .string "local := 1"
# IR_VAR
 xchain00763_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00763_n6_α
 xchain00763_n4_β:
 jmp proc_loclasgn_ω
# IR_RETURN
 xchain00763_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_loclasgn_γ
# IR_TO
 xchain00763_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00766_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00763_n7_α
 xchain00763_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00766_0
# IR_LIT_INTEGER
 xchain00763_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00763_n8_α
 xchain00763_n7_β:
 jmp xchain00763_n6_β
.Lx00767_0:
 .quad 1
 xchain00763_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00763_n6_β
 xchain00763_n8_β:
 jmp xchain00763_n6_β
proc_loclasgn_β:
jmp proc_loclasgn_ω
proc_loclasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_loclasgn_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_statasgn_α
proc_statasgn_α:
#=======================================================================================================================
    .global proc_statasgn_α
    .global proc_statasgn_β
    .global proc_statasgn_γ
    .global proc_statasgn_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_statasgn_α_body:
# IR_VAR
 xchain00768_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00768_n1_α
 xchain00768_n0_β:
 jmp xchain00768_n2_α
# IR_UNOP
 xchain00768_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00768_n2_α
 cmp eax, 0
 jne xchain00768_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00768_n3_α
 xchain00768_n1_β:
 jmp xchain00768_n2_α
# IR_LIT_INTEGER
 xchain00768_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00768_n4_α
 xchain00768_n2_β:
 jmp proc_statasgn_ω
.Lx00769_0:
 .quad 1
# IR_LIT_STRING
 xchain00768_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00770_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00768_n5_α
 xchain00768_n3_β:
 jmp proc_statasgn_ω
.Lx00770_0:
 .quad .Lx00770_0_s
.Lx00770_0_s:
 .string "static := 1"
# IR_VAR
 xchain00768_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00768_n6_α
 xchain00768_n4_β:
 jmp proc_statasgn_ω
# IR_RETURN
 xchain00768_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_statasgn_γ
# IR_TO
 xchain00768_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00771_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00768_n7_α
 xchain00768_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00771_0
# IR_LIT_INTEGER
 xchain00768_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00772_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00768_n8_α
 xchain00768_n7_β:
 jmp xchain00768_n6_β
.Lx00772_0:
 .quad 1
# IR_ASSIGN gva
 xchain00768_n8_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 928], rax
 mov qword ptr [rbx + 936], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00768_n6_β
 xchain00768_n8_β:
 jmp xchain00768_n6_β
proc_statasgn_β:
jmp proc_statasgn_ω
proc_statasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_statasgn_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_readz_α
proc_readz_α:
#=======================================================================================================================
    .global proc_readz_α
    .global proc_readz_β
    .global proc_readz_γ
    .global proc_readz_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_readz_α_body:
# IR_VAR_REF gva
 xchain00773_n0_α:
 lea rdi, [rbx + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00773_n1_α
 xchain00773_n0_β:
 jmp xchain00773_n3_α
# IR_UNOP_TEST lv
 xchain00773_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00773_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00773_n3_α
 cmp eax, 0
 jne xchain00773_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00773_n2_α
 xchain00773_n1_β:
 jmp xchain00773_n3_α
# IR_LIT_INTEGER
 xchain00773_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00773_n4_α
 xchain00773_n2_β:
 jmp xchain00773_n3_α
.Lx00774_0:
 .quad 1
# IR_VAR
 xchain00773_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00773_n5_α
 xchain00773_n3_β:
 jmp xchain00773_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00773_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00773_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00773_n7_α
 xchain00773_n4_β:
 jmp xchain00773_n3_α
# IR_UNOP
 xchain00773_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00773_n6_α
 cmp eax, 0
 jne xchain00773_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00773_n8_α
 xchain00773_n5_β:
 jmp xchain00773_n6_α
# IR_LIT_INTEGER
 xchain00773_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00773_n9_α
 xchain00773_n6_β:
 jmp proc_readz_ω
.Lx00775_0:
 .quad 1
# IR_LIT_STRING
 xchain00773_n7_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00773_n10_α
 xchain00773_n7_β:
 jmp xchain00773_n3_α
.Lx00776_0:
 .quad .Lx00776_0_s
.Lx00776_0_s:
 .string "/dev/zero"
# IR_LIT_STRING
 xchain00773_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00773_n11_α
 xchain00773_n8_β:
 jmp proc_readz_ω
.Lx00777_0:
 .quad .Lx00777_0_s
.Lx00777_0_s:
 .string "reads(zero,8)"
# IR_VAR
 xchain00773_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00773_n12_α
 xchain00773_n9_β:
 jmp proc_readz_ω
# IR_LIT_STRING
 xchain00773_n10_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00773_n13_α
 xchain00773_n10_β:
 jmp xchain00773_n3_α
.Lx00778_0:
 .quad .Lx00778_0_s
.Lx00778_0_s:
 .string "ru"
# IR_RETURN
 xchain00773_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_readz_γ
# IR_TO
 xchain00773_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00779_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00773_n14_α
 xchain00773_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00779_0
 xchain00773_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn2357: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2357]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00773_n3_α
 jmp xchain00773_n15_α
 xchain00773_n13_β:
 jmp xchain00773_n3_α
# IR_VAR gva
 xchain00773_n14_α:
 mov rax, qword ptr [rbx + 944]
 mov rdx, qword ptr [rbx + 952]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00773_n16_α
 xchain00773_n14_β:
 jmp xchain00773_n12_β
# IR_ASSIGN gva
 xchain00773_n15_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 944], rax
 mov qword ptr [rbx + 952], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00773_n17_α
 xchain00773_n15_β:
 jmp xchain00773_n3_α
# IR_LIT_INTEGER
 xchain00773_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00773_n18_α
 xchain00773_n16_β:
 jmp xchain00773_n12_β
.Lx00780_0:
 .quad 8
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00773_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00773_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00773_n3_α
 xchain00773_n17_β:
 jmp xchain00773_n3_α
 xchain00773_n18_α:
# BOX IR_CALL reads(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2364: .string "reads"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2364]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00773_n12_β
 jmp xchain00773_n12_β
 xchain00773_n18_β:
 jmp xchain00773_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00773_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00773_n19_β:
 jmp xchain00773_n3_α
proc_readz_β:
jmp proc_readz_ω
proc_readz_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 448]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_readz_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_writecon_α
proc_writecon_α:
#=======================================================================================================================
    .global proc_writecon_α
    .global proc_writecon_β
    .global proc_writecon_γ
    .global proc_writecon_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_writecon_α_body:
# IR_VAR
 xchain00781_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00781_n1_α
 xchain00781_n0_β:
 jmp xchain00781_n2_α
# IR_UNOP
 xchain00781_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00781_n2_α
 cmp eax, 0
 jne xchain00781_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00781_n3_α
 xchain00781_n1_β:
 jmp xchain00781_n2_α
# IR_LIT_INTEGER
 xchain00781_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00781_n4_α
 xchain00781_n2_β:
 jmp proc_writecon_ω
.Lx00782_0:
 .quad 1
# IR_LIT_STRING
 xchain00781_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00783_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00781_n5_α
 xchain00781_n3_β:
 jmp proc_writecon_ω
.Lx00783_0:
 .quad .Lx00783_0_s
.Lx00783_0_s:
 .string "write(\"a...z\")"
# IR_VAR
 xchain00781_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00781_n6_α
 xchain00781_n4_β:
 jmp proc_writecon_ω
# IR_RETURN
 xchain00781_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writecon_γ
# IR_TO
 xchain00781_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00784_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00781_n7_α
 xchain00781_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00784_0
# IR_VAR gva
 xchain00781_n7_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00781_n8_α
 xchain00781_n7_β:
 jmp xchain00781_n6_β
# IR_LIT_STRING
 xchain00781_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00785_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00781_n9_α
 xchain00781_n8_β:
 jmp xchain00781_n6_β
.Lx00785_0:
 .quad .Lx00785_0_s
.Lx00785_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00781_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2381: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2381]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00781_n6_β
 jmp xchain00781_n6_β
 xchain00781_n9_β:
 jmp xchain00781_n6_β
proc_writecon_β:
jmp proc_writecon_ω
proc_writecon_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 256]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_writecon_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_writestr_α
proc_writestr_α:
#=======================================================================================================================
    .global proc_writestr_α
    .global proc_writestr_β
    .global proc_writestr_γ
    .global proc_writestr_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_writestr_α_body:
# IR_VAR_REF gva
 xchain00786_n0_α:
 lea rdi, [rbx + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00786_n1_α
 xchain00786_n0_β:
 jmp xchain00786_n3_α
# IR_UNOP_TEST lv
 xchain00786_n1_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain00786_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00786_n3_α
 cmp eax, 0
 jne xchain00786_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain00786_n2_α
 xchain00786_n1_β:
 jmp xchain00786_n3_α
# IR_LIT_INTEGER
 xchain00786_n2_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00787_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00786_n4_α
 xchain00786_n2_β:
 jmp xchain00786_n3_α
.Lx00787_0:
 .quad 1
# IR_VAR
 xchain00786_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00786_n5_α
 xchain00786_n3_β:
 jmp xchain00786_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00786_n4_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00786_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00786_n7_α
 xchain00786_n4_β:
 jmp xchain00786_n3_α
# IR_UNOP
 xchain00786_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00786_n6_α
 cmp eax, 0
 jne xchain00786_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00786_n8_α
 xchain00786_n5_β:
 jmp xchain00786_n6_α
# IR_LIT_INTEGER
 xchain00786_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00786_n9_α
 xchain00786_n6_β:
 jmp proc_writestr_ω
.Lx00788_0:
 .quad 1
# IR_LIT_STRING
 xchain00786_n7_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00789_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00786_n10_α
 xchain00786_n7_β:
 jmp xchain00786_n3_α
.Lx00789_0:
 .quad .Lx00789_0_s
.Lx00789_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00786_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00786_n11_α
 xchain00786_n8_β:
 jmp proc_writestr_ω
.Lx00790_0:
 .quad .Lx00790_0_s
.Lx00790_0_s:
 .string "write(s)"
# IR_VAR
 xchain00786_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00786_n12_α
 xchain00786_n9_β:
 jmp proc_writestr_ω
# IR_ASSIGN gva
 xchain00786_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 976], rax
 mov qword ptr [rbx + 984], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00786_n13_α
 xchain00786_n10_β:
 jmp xchain00786_n3_α
# IR_RETURN
 xchain00786_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writestr_γ
# IR_TO
 xchain00786_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00791_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00786_n14_α
 xchain00786_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00791_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00786_n13_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00786_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00786_n3_α
 xchain00786_n13_β:
 jmp xchain00786_n3_α
# IR_VAR gva
 xchain00786_n14_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00786_n16_α
 xchain00786_n14_β:
 jmp xchain00786_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00786_n15_α:
 jmp qword ptr [r12 + 272]
 xchain00786_n15_β:
 jmp xchain00786_n3_α
# IR_VAR gva
 xchain00786_n16_α:
 mov rax, qword ptr [rbx + 976]
 mov rdx, qword ptr [rbx + 984]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00786_n17_α
 xchain00786_n16_β:
 jmp xchain00786_n12_β
 xchain00786_n17_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2407: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2407]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00786_n12_β
 jmp xchain00786_n12_β
 xchain00786_n17_β:
 jmp xchain00786_n12_β
proc_writestr_β:
jmp proc_writestr_ω
proc_writestr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 384]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_writestr_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_cxcreate_α
proc_cxcreate_α:
#=======================================================================================================================
    .global proc_cxcreate_α
    .global proc_cxcreate_β
    .global proc_cxcreate_γ
    .global proc_cxcreate_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_cxcreate_α_body:
# IR_VAR
 xchain00792_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00792_n1_α
 xchain00792_n0_β:
 jmp xchain00792_n2_α
# IR_UNOP
 xchain00792_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00792_n2_α
 cmp eax, 0
 jne xchain00792_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00792_n3_α
 xchain00792_n1_β:
 jmp xchain00792_n2_α
# IR_LIT_INTEGER
 xchain00792_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00792_n4_α
 xchain00792_n2_β:
 jmp proc_cxcreate_ω
.Lx00793_0:
 .quad 1
# IR_LIT_STRING
 xchain00792_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00794_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00792_n5_α
 xchain00792_n3_β:
 jmp proc_cxcreate_ω
.Lx00794_0:
 .quad .Lx00794_0_s
.Lx00794_0_s:
 .string "create |\"a\""
# IR_VAR
 xchain00792_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00792_n6_α
 xchain00792_n4_β:
 jmp proc_cxcreate_ω
# IR_RETURN
 xchain00792_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxcreate_γ
# IR_TO
 xchain00792_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00795_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00792_n7_α
 xchain00792_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00795_0
# IR_CREATE
 xchain00792_n7_α:
 mov qword ptr [r12 + 112], r12
 mov qword ptr [r12 + 120], r13
 mov qword ptr [r12 + 128], r14
 mov qword ptr [r12 + 136], r15
 mov qword ptr [r12 + 144], rbx
 mov qword ptr [r12 + 152], rbp
 lea rdi, [rip + xchain00792_n8_α]
 lea rsi, [r12 + 112]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 96], rax
 jmp xchain00792_n6_β
 xchain00792_n7_β:
 jmp xchain00792_n6_β
 xchain00792_n8_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 176], 0
jmp xchain00792_n10_α
xchain00792_n8_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], 1
jmp xchain00792_n9_α
xchain00792_n8_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 176]
 cmp rax, 1
je xchain00792_n8_α
jmp xchain00792_n11_α
xchain00792_n8_β:
jmp xchain00792_n8_rt
# IR_CORET yield
 xchain00792_n9_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00792_n8_β
# IR_LIT_STRING
 xchain00792_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00796_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00792_n8_ry
 xchain00792_n10_β:
 jmp xchain00792_n8_rt
.Lx00796_0:
 .quad .Lx00796_0_s
.Lx00796_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00792_n11_α:
 call scrip_cofail@PLT
 jmp proc_cxcreate_ω
proc_cxcreate_β:
jmp proc_cxcreate_ω
proc_cxcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cxcreate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_cxget_α
proc_cxget_α:
#=======================================================================================================================
    .global proc_cxget_α
    .global proc_cxget_β
    .global proc_cxget_γ
    .global proc_cxget_ω
push r12
  mov r12, rdi
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 432], rax
 pop rsi
proc_cxget_α_body:
# IR_VAR_REF local
 xchain00797_n0_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00797_n1_α
 xchain00797_n0_β:
 jmp xchain00797_n3_α
# IR_UNOP_TEST lv
 xchain00797_n1_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain00797_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00797_n3_α
 cmp eax, 0
 jne xchain00797_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain00797_n2_α
 xchain00797_n1_β:
 jmp xchain00797_n3_α
# IR_LIT_INTEGER
 xchain00797_n2_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00797_n4_α
 xchain00797_n2_β:
 jmp xchain00797_n3_α
.Lx00798_0:
 .quad 1
# IR_VAR
 xchain00797_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00797_n5_α
 xchain00797_n3_β:
 jmp xchain00797_n6_α
# IR_ASSIGN_VAR write through variable
 xchain00797_n4_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00797_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00797_n7_α
 xchain00797_n4_β:
 jmp xchain00797_n3_α
# IR_UNOP
 xchain00797_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00797_n6_α
 cmp eax, 0
 jne xchain00797_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00797_n8_α
 xchain00797_n5_β:
 jmp xchain00797_n6_α
# IR_LIT_INTEGER
 xchain00797_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00799_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00797_n9_α
 xchain00797_n6_β:
 jmp proc_cxget_ω
.Lx00799_0:
 .quad 1
# IR_CREATE
 xchain00797_n7_α:
 mov qword ptr [r12 + 272], r12
 mov qword ptr [r12 + 280], r13
 mov qword ptr [r12 + 288], r14
 mov qword ptr [r12 + 296], r15
 mov qword ptr [r12 + 304], rbx
 mov qword ptr [r12 + 312], rbp
 lea rdi, [rip + xchain00797_n11_α]
 lea rsi, [r12 + 272]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 256], rax
 jmp xchain00797_n10_α
 xchain00797_n7_β:
 jmp xchain00797_n3_α
# IR_LIT_STRING
 xchain00797_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00797_n12_α
 xchain00797_n8_β:
 jmp proc_cxget_ω
.Lx00800_0:
 .quad .Lx00800_0_s
.Lx00800_0_s:
 .string "@C"
# IR_VAR
 xchain00797_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00797_n13_α
 xchain00797_n9_β:
 jmp proc_cxget_ω
# IR_ASSIGN gva
 xchain00797_n10_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 1008], rax
 mov qword ptr [rbx + 1016], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00797_n14_α
 xchain00797_n10_β:
 jmp xchain00797_n3_α
 xchain00797_n11_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 336], 0
jmp xchain00797_n16_α
xchain00797_n11_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], 1
jmp xchain00797_n15_α
xchain00797_n11_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 336]
 cmp rax, 1
je xchain00797_n11_α
jmp xchain00797_n20_α
xchain00797_n11_β:
jmp xchain00797_n11_rt
# IR_RETURN
 xchain00797_n12_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxget_γ
# IR_TO
 xchain00797_n13_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00801_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00797_n17_α
 xchain00797_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00801_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00797_n14_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00797_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00797_n3_α
 xchain00797_n14_β:
 jmp xchain00797_n3_α
# IR_CORET yield
 xchain00797_n15_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00797_n11_β
# IR_LIT_STRING
 xchain00797_n16_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00802_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00797_n11_ry
 xchain00797_n16_β:
 jmp xchain00797_n11_rt
.Lx00802_0:
 .quad .Lx00802_0_s
.Lx00802_0_s:
 .string "a"
# IR_VAR gva
 xchain00797_n17_α:
 mov rax, qword ptr [rbx + 1008]
 mov rdx, qword ptr [rbx + 1016]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00797_n19_α
 xchain00797_n17_β:
 jmp xchain00797_n13_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00797_n18_α:
 jmp qword ptr [r12 + 224]
 xchain00797_n18_β:
 jmp xchain00797_n3_α
# IR_ACTIVATE
 xchain00797_n19_α:
 mov rdi, qword ptr [r12 + 112]
 xor esi, esi
 xor edx, edx
 lea rcx, [r12 + 96]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00797_n13_β
 jmp xchain00797_n13_β
 xchain00797_n19_β:
 jmp xchain00797_n13_β
# IR_COFAIL exhausted
 xchain00797_n20_α:
 call scrip_cofail@PLT
 jmp proc_cxget_ω
proc_cxget_β:
jmp proc_cxget_ω
proc_cxget_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 432]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cxget_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "point(x,y)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "bigrec(alpha,beta,gamma,delta,epsilon,figaro,guido,horatio)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "report"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_report_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "measure"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_measure_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "nothing"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_nothing_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "uplus"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_uplus_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "uplusr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_uplusr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "absf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_absf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "intadd"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_intadd_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname7: .string "intcmp"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_intcmp_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname8: .string "intpow"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_intpow_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname9: .string "realcmp"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_realcmp_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname10: .string "cosf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_cosf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname11: .string "sqrtf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_sqrtf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname12: .string "logf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_logf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname13: .string "nullfunc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_nullfunc_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname14: .string "nullf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_nullf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname15: .string "listcall"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_listcall_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname16: .string "addfunc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_addfunc_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname17: .string "add"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_add_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname18: .string "rfact0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_rfact0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname19: .string "rfact10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_rfact10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname20: .string "rfact"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_rfact_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname21: .string "rfib5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_rfib5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname22: .string "rfib"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + proc_rfib_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname23: .string "prslow"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname23]
  lea rsi, [rip + proc_prslow_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname24: .string "if0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname24]
  lea rsi, [rip + proc_if0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname25: .string "case3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname25]
  lea rsi, [rip + proc_case3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname26: .string "nulltest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname26]
  lea rsi, [rip + proc_nulltest_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname27: .string "typef"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname27]
  lea rsi, [rip + proc_typef_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname28: .string "imagef"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname28]
  lea rsi, [rip + proc_imagef_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname29: .string "marshal"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname29]
  lea rsi, [rip + proc_marshal_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname30: .string "conj5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname30]
  lea rsi, [rip + proc_conj5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname31: .string "everyalt"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname31]
  lea rsi, [rip + proc_everyalt_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname32: .string "everyto"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname32]
  lea rsi, [rip + proc_everyto_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname33: .string "evsusp"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname33]
  lea rsi, [rip + proc_evsusp_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname34: .string "susproc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname34]
  lea rsi, [rip + proc_susproc_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname35: .string "intcoerce"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname35]
  lea rsi, [rip + proc_intcoerce_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname36: .string "realcoerce"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname36]
  lea rsi, [rip + proc_realcoerce_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname37: .string "strcoerce"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname37]
  lea rsi, [rip + proc_strcoerce_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname38: .string "strcoercer"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname38]
  lea rsi, [rip + proc_strcoercer_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname39: .string "tointeger"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname39]
  lea rsi, [rip + proc_tointeger_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname40: .string "toreal"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname40]
  lea rsi, [rip + proc_toreal_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname41: .string "tostring"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname41]
  lea rsi, [rip + proc_tostring_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname42: .string "rtostring"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname42]
  lea rsi, [rip + proc_rtostring_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname43: .string "tocset"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname43]
  lea rsi, [rip + proc_tocset_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname44: .string "charf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname44]
  lea rsi, [rip + proc_charf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname45: .string "ordf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname45]
  lea rsi, [rip + proc_ordf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname46: .string "strsize"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname46]
  lea rsi, [rip + proc_strsize_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname47: .string "concat"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname47]
  lea rsi, [rip + proc_concat_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname48: .string "strpick"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname48]
  lea rsi, [rip + proc_strpick_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname49: .string "strbang"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname49]
  lea rsi, [rip + proc_strbang_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname50: .string "strsub"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname50]
  lea rsi, [rip + proc_strsub_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname51: .string "substr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname51]
  lea rsi, [rip + proc_substr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname52: .string "subsasg"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname52]
  lea rsi, [rip + proc_subsasg_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname53: .string "strcmp"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname53]
  lea rsi, [rip + proc_strcmp_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname54: .string "strident"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname54]
  lea rsi, [rip + proc_strident_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname55: .string "replf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname55]
  lea rsi, [rip + proc_replf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname56: .string "reversef"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname56]
  lea rsi, [rip + proc_reversef_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname57: .string "leftf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname57]
  lea rsi, [rip + proc_leftf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname58: .string "centerf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname58]
  lea rsi, [rip + proc_centerf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname59: .string "rightf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname59]
  lea rsi, [rip + proc_rightf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname60: .string "trimf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname60]
  lea rsi, [rip + proc_trimf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname61: .string "entabf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname61]
  lea rsi, [rip + proc_entabf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname62: .string "detabf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname62]
  lea rsi, [rip + proc_detabf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname63: .string "mapf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname63]
  lea rsi, [rip + proc_mapf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname64: .string "map1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname64]
  lea rsi, [rip + proc_map1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname65: .string "map2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname65]
  lea rsi, [rip + proc_map2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname66: .string "tablemap"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname66]
  lea rsi, [rip + proc_tablemap_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname67: .string "listmap"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname67]
  lea rsi, [rip + proc_listmap_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname68: .string "nullscan"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname68]
  lea rsi, [rip + proc_nullscan_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname69: .string "movef"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname69]
  lea rsi, [rip + proc_movef_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname70: .string "mov11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname70]
  lea rsi, [rip + proc_mov11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname71: .string "pos11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + proc_pos11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname72: .string "tabf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + proc_tabf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname73: .string "matchf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + proc_matchf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname74: .string "tabmat"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + proc_tabmat_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname75: .string "posf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + proc_posf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname76: .string "anyf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + proc_anyf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname77: .string "manyf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + proc_manyf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname78: .string "uptof"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + proc_uptof_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname79: .string "findf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + proc_findf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname80: .string "balf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + proc_balf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname81: .string "cssize"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + proc_cssize_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname82: .string "cscompl"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + proc_cscompl_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname83: .string "lcreate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + proc_lcreate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname84: .string "lconst"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + proc_lconst_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname85: .string "lcopy"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + proc_lcopy_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname86: .string "lsort"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + proc_lsort_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname87: .string "lsize"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + proc_lsize_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname88: .string "lpick"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + proc_lpick_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname89: .string "lsubscr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + proc_lsubscr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname90: .string "lbang"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + proc_lbang_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname91: .string "put1get1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + proc_put1get1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname92: .string "put2get2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + proc_put2get2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname93: .string "put3get3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + proc_put3get3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname94: .string "put4get4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + proc_put4get4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname95: .string "pushpop"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + proc_pushpop_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname96: .string "putget12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + proc_putget12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname97: .string "pushpop12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + proc_pushpop12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname98: .string "setcreate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + proc_setcreate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname99: .string "setcopy"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + proc_setcopy_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname100: .string "setinsert"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + proc_setinsert_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname101: .string "setmember"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + proc_setmember_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname102: .string "setinsdel"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + proc_setinsdel_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname103: .string "setpick"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + proc_setpick_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname104: .string "setbang"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + proc_setbang_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname105: .string "tblcreate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + proc_tblcreate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname106: .string "tblasgn"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + proc_tblasgn_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname107: .string "tblsub"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + proc_tblsub_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname108: .string "recconstr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + proc_recconstr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname109: .string "reccopy"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + proc_reccopy_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname110: .string "recfield"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + proc_recfield_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname111: .string "bigfield"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + proc_bigfield_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname112: .string "globasgn"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + proc_globasgn_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname113: .string "loclasgn"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname113]
  lea rsi, [rip + proc_loclasgn_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname114: .string "statasgn"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname114]
  lea rsi, [rip + proc_statasgn_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname115: .string "readz"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname115]
  lea rsi, [rip + proc_readz_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname116: .string "writecon"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname116]
  lea rsi, [rip + proc_writecon_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname117: .string "writestr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname117]
  lea rsi, [rip + proc_writestr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname118: .string "cxcreate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname118]
  lea rsi, [rip + proc_cxcreate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname119: .string "cxget"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname119]
  lea rsi, [rip + proc_cxget_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "looptime"
  .Lgvan1: .string "overhead"
  .Lgvan2: .string "sink"
  .Lgvan3: .string "ggg"
  .Lgvan4: .string "listcall__STATIC__L"
  .Lgvan5: .string "listcall__INITFLAG__0"
  .Lgvan6: .string "tablemap__STATIC__T"
  .Lgvan7: .string "tablemap__INITFLAG__0"
  .Lgvan8: .string "listmap__STATIC__L"
  .Lgvan9: .string "listmap__INITFLAG__0"
  .Lgvan10: .string "lcopy__STATIC__L"
  .Lgvan11: .string "lcopy__INITFLAG__0"
  .Lgvan12: .string "lsort__STATIC__L"
  .Lgvan13: .string "lsort__INITFLAG__0"
  .Lgvan14: .string "lsize__STATIC__L"
  .Lgvan15: .string "lsize__INITFLAG__0"
  .Lgvan16: .string "lpick__STATIC__L"
  .Lgvan17: .string "lpick__INITFLAG__0"
  .Lgvan18: .string "lsubscr__STATIC__L"
  .Lgvan19: .string "lsubscr__INITFLAG__0"
  .Lgvan20: .string "lbang__STATIC__L"
  .Lgvan21: .string "lbang__INITFLAG__0"
  .Lgvan22: .string "put1get1__STATIC__L"
  .Lgvan23: .string "put1get1__INITFLAG__0"
  .Lgvan24: .string "put2get2__STATIC__L"
  .Lgvan25: .string "put2get2__INITFLAG__0"
  .Lgvan26: .string "put3get3__STATIC__L"
  .Lgvan27: .string "put3get3__INITFLAG__0"
  .Lgvan28: .string "put4get4__STATIC__L"
  .Lgvan29: .string "put4get4__INITFLAG__0"
  .Lgvan30: .string "pushpop__STATIC__L"
  .Lgvan31: .string "pushpop__INITFLAG__0"
  .Lgvan32: .string "putget12__STATIC__L"
  .Lgvan33: .string "putget12__INITFLAG__0"
  .Lgvan34: .string "pushpop12__STATIC__L"
  .Lgvan35: .string "pushpop12__INITFLAG__0"
  .Lgvan36: .string "setcopy__STATIC__S"
  .Lgvan37: .string "setcopy__INITFLAG__0"
  .Lgvan38: .string "setinsert__STATIC__S"
  .Lgvan39: .string "setinsert__INITFLAG__0"
  .Lgvan40: .string "setmember__STATIC__S"
  .Lgvan41: .string "setmember__INITFLAG__0"
  .Lgvan42: .string "setinsdel__STATIC__S"
  .Lgvan43: .string "setinsdel__INITFLAG__0"
  .Lgvan44: .string "setpick__STATIC__S"
  .Lgvan45: .string "setpick__INITFLAG__0"
  .Lgvan46: .string "setbang__STATIC__S"
  .Lgvan47: .string "setbang__INITFLAG__0"
  .Lgvan48: .string "tblasgn__STATIC__T"
  .Lgvan49: .string "tblasgn__INITFLAG__0"
  .Lgvan50: .string "tblsub__STATIC__T"
  .Lgvan51: .string "tblsub__INITFLAG__0"
  .Lgvan52: .string "reccopy__STATIC__R"
  .Lgvan53: .string "reccopy__INITFLAG__0"
  .Lgvan54: .string "recfield__STATIC__R"
  .Lgvan55: .string "recfield__INITFLAG__0"
  .Lgvan56: .string "bigfield__STATIC__R"
  .Lgvan57: .string "bigfield__INITFLAG__0"
  .Lgvan58: .string "statasgn__STATIC__i"
  .Lgvan59: .string "readz__STATIC__f"
  .Lgvan60: .string "readz__INITFLAG__0"
  .Lgvan61: .string "writestr__STATIC__s"
  .Lgvan62: .string "writestr__INITFLAG__0"
  .Lgvan63: .string "cxget__STATIC__C"
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
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .quad .Lgvan26
  .quad .Lgvan27
  .quad .Lgvan28
  .quad .Lgvan29
  .quad .Lgvan30
  .quad .Lgvan31
  .quad .Lgvan32
  .quad .Lgvan33
  .quad .Lgvan34
  .quad .Lgvan35
  .quad .Lgvan36
  .quad .Lgvan37
  .quad .Lgvan38
  .quad .Lgvan39
  .quad .Lgvan40
  .quad .Lgvan41
  .quad .Lgvan42
  .quad .Lgvan43
  .quad .Lgvan44
  .quad .Lgvan45
  .quad .Lgvan46
  .quad .Lgvan47
  .quad .Lgvan48
  .quad .Lgvan49
  .quad .Lgvan50
  .quad .Lgvan51
  .quad .Lgvan52
  .quad .Lgvan53
  .quad .Lgvan54
  .quad .Lgvan55
  .quad .Lgvan56
  .quad .Lgvan57
  .quad .Lgvan58
  .quad .Lgvan59
  .quad .Lgvan60
  .quad .Lgvan61
  .quad .Lgvan62
  .quad .Lgvan63
  .section .bss
  .align 16
__gva: .space 1024, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 64
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
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
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6880], rax
 pop rsi
main_α_body:
# IR_LIT_INTEGER
 xchain00803_n0_α:
 mov qword ptr [r12 + 6752], 6
 mov rax, qword ptr [rip + .Lx00804_0]
 mov qword ptr [r12 + 6760], rax
 jmp xchain00803_n1_α
 xchain00803_n0_β:
 jmp xchain00803_n10_α
.Lx00804_0:
 .quad 1000
# IR_VAR_REF local
 xchain00803_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6816], rax
 mov qword ptr [r12 + 6824], rdx
 jmp xchain00803_n2_α
 xchain00803_n1_β:
 jmp xchain00803_n5_α
# IR_LIT_INTEGER
 xchain00803_n2_α:
 mov qword ptr [r12 + 6832], 6
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [r12 + 6840], rax
 jmp xchain00803_n3_α
 xchain00803_n2_β:
 jmp xchain00803_n5_α
.Lx00805_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00803_n3_α:
 mov rdi, qword ptr [r12 + 6816]
 mov rsi, qword ptr [r12 + 6824]
 mov rdx, qword ptr [r12 + 6832]
 mov rcx, qword ptr [r12 + 6840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00803_n5_α
 mov qword ptr [r12 + 6848], rax
 mov qword ptr [r12 + 6856], rdx
 jmp xchain00803_n4_α
 xchain00803_n3_β:
 jmp xchain00803_n5_α
# IR_DEREF variable -> value
 xchain00803_n4_α:
 mov rdi, qword ptr [r12 + 6848]
 mov rsi, qword ptr [r12 + 6856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00803_n5_α
 mov qword ptr [r12 + 6864], rax
 mov qword ptr [r12 + 6872], rdx
 jmp xchain00803_n6_α
 xchain00803_n4_β:
 jmp xchain00803_n5_α
# IR_LIT_REAL
 xchain00803_n5_α:
 mov qword ptr [r12 + 6800], 7
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [r12 + 6808], rax
 jmp xchain00803_n7_α
 xchain00803_n5_β:
 jmp xchain00803_n10_α
.Lx00806_0:
 .quad 4607182418800017408
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00803_n6_α:
 mov rax, qword ptr [r12 + 6864]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6872]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain00803_n5_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain00803_n8_α
 xchain00803_n6_β:
 jmp xchain00803_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00803_n7_α:
 mov rax, qword ptr [r12 + 6800]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6808]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain00803_n10_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain00803_n8_α
 xchain00803_n7_β:
 jmp xchain00803_n10_α
 xchain00803_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 100
 je .Lx00807_0
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 100
 je .Lx00807_0
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 6
 jne .Lx00807_2
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 6
 jne .Lx00807_2
.Lx00807_1:
 mov rax, qword ptr [r12 + 6760]
 mov rcx, qword ptr [r12 + 6776]
 imul rax, rcx
 mov qword ptr [r12 + 6736], 6
 mov qword ptr [r12 + 6744], rax
 jmp xchain00803_n11_α
.Lx00807_0:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 lea r9, [r12 + 6736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00807_3
.Lx00807_2:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00803_n10_α
 mov qword ptr [r12 + 6736], rax
 mov qword ptr [r12 + 6744], rdx
.Lx00807_3:
 jmp xchain00803_n11_α
 xchain00803_n8_β:
 jmp xchain00803_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00803_n9_α:
 jmp qword ptr [r12 + 6784]
 xchain00803_n9_β:
 jmp xchain00803_n10_α
# IR_LIT_STRING
 xchain00803_n10_α:
 mov qword ptr [r12 + 6656], 1
 mov rax, qword ptr [rip + .Lx00808_0]
 mov qword ptr [r12 + 6664], rax
 jmp xchain00803_n12_α
 xchain00803_n10_β:
 jmp xchain00803_n16_α
.Lx00808_0:
 .quad .Lx00808_0_s
.Lx00808_0_s:
 .string "/dev/null"
 xchain00803_n11_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6736] -> [r12+6720]
 mov rax, qword ptr [r12 + 6736]
 mov qword ptr [r12 + 6720], rax
 mov rax, qword ptr [r12 + 6744]
 mov qword ptr [r12 + 6728], rax
  .section .rodata
  .Lrkfn2482: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2482]
 lea rsi, [r12 + 6720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6704], rax
 mov qword ptr [r12 + 6712], rdx
 cmp eax, 99
 je xchain00803_n10_α
 jmp xchain00803_n13_α
 xchain00803_n11_β:
 jmp xchain00803_n10_α
# IR_LIT_STRING
 xchain00803_n12_α:
 mov qword ptr [r12 + 6672], 1
 mov rax, qword ptr [rip + .Lx00809_0]
 mov qword ptr [r12 + 6680], rax
 jmp xchain00803_n14_α
 xchain00803_n12_β:
 jmp xchain00803_n16_α
.Lx00809_0:
 .quad .Lx00809_0_s
.Lx00809_0_s:
 .string "w"
# IR_ASSIGN gva
 xchain00803_n13_α:
 mov rax, qword ptr [r12 + 6704]
 mov rdx, qword ptr [r12 + 6712]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 jmp xchain00803_n10_α
 xchain00803_n13_β:
 jmp xchain00803_n10_α
 xchain00803_n14_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6656] -> [r12+6624]
 mov rax, qword ptr [r12 + 6656]
 mov qword ptr [r12 + 6624], rax
 mov rax, qword ptr [r12 + 6664]
 mov qword ptr [r12 + 6632], rax
# marshal arg1 = producer-box slot [r12+6672] -> [r12+6640]
 mov rax, qword ptr [r12 + 6672]
 mov qword ptr [r12 + 6640], rax
 mov rax, qword ptr [r12 + 6680]
 mov qword ptr [r12 + 6648], rax
  .section .rodata
  .Lrkfn2486: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2486]
 lea rsi, [r12 + 6624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 cmp eax, 99
 je xchain00803_n16_α
 jmp xchain00803_n15_α
 xchain00803_n14_β:
 jmp xchain00803_n16_α
# IR_ASSIGN gva
 xchain00803_n15_α:
 mov rax, qword ptr [r12 + 6608]
 mov rdx, qword ptr [r12 + 6616]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain00803_n16_α
 xchain00803_n15_β:
 jmp xchain00803_n16_α
# IR_VAR gva
 xchain00803_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 6576], rax
 mov qword ptr [r12 + 6584], rdx
 jmp xchain00803_n17_α
 xchain00803_n16_β:
 jmp xchain00803_n18_α
 xchain00803_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6576]
 mov rdx, qword ptr [r12 + 6584]
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 jmp xchain00803_n18_α
 xchain00803_n17_β:
 jmp xchain00803_n18_α
# IR_VAR
 xchain00803_n18_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6504], rax
 jmp xchain00803_n19_α
 xchain00803_n18_β:
 jmp xchain00803_n20_α
# IR_LIT_REAL
 xchain00803_n19_α:
 mov qword ptr [r12 + 6544], 7
 mov rax, qword ptr [rip + .Lx00810_0]
 mov qword ptr [r12 + 6552], rax
 jmp xchain00803_n21_α
 xchain00803_n19_β:
 jmp xchain00803_n20_α
.Lx00810_0:
 .quad 4652007308841189376
 xchain00803_n20_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2494: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2494]
 lea rsi, [r12 + 6464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 cmp eax, 99
 je xchain00803_n23_α
 jmp xchain00803_n22_α
 xchain00803_n20_β:
 jmp xchain00803_n23_α
 xchain00803_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6544] -> [r12+6528]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6536], rax
  .section .rodata
  .Lrkfn2496: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2496]
 lea rsi, [r12 + 6528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6512], rax
 mov qword ptr [r12 + 6520], rdx
 cmp eax, 99
 je xchain00803_n20_α
 jmp xchain00803_n24_α
 xchain00803_n21_β:
 jmp xchain00803_n20_α
 xchain00803_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6448]
 mov rdx, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain00803_n23_α
 xchain00803_n22_β:
 jmp xchain00803_n23_α
# IR_LIT_INTEGER
 xchain00803_n23_α:
 mov qword ptr [r12 + 6160], 6
 mov rax, qword ptr [rip + .Lx00811_0]
 mov qword ptr [r12 + 6168], rax
 jmp xchain00803_n25_α
 xchain00803_n23_β:
 jmp xchain00803_n37_α
.Lx00811_0:
 .quad 1
 xchain00803_n24_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 6912]
 cmp eax, 100
 je .Lx00812_0
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 100
 je .Lx00812_0
 mov eax, dword ptr [r12 + 6912]
 cmp eax, 6
 jne .Lx00812_2
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 6
 jne .Lx00812_2
.Lx00812_1:
 mov rax, qword ptr [r12 + 6920]
 mov rcx, qword ptr [r12 + 6520]
 cmp rax, rcx
 jge xchain00803_n20_α
 mov rcx, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rcx
 mov rcx, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rcx
 jmp xchain00803_n26_α
.Lx00812_0:
 mov rdi, qword ptr [r12 + 6912]
 mov rsi, qword ptr [r12 + 6920]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 lea r9, [r12 + 6480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00812_1
 cmp eax, 1
 je xchain00803_n20_α
 jmp xchain00803_n26_α
.Lx00812_2:
 mov rdi, qword ptr [r12 + 6912]
 mov rsi, qword ptr [r12 + 6920]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00803_n20_α
 mov rax, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rax
 jmp xchain00803_n26_α
 xchain00803_n24_β:
 jmp xchain00803_n20_α
# IR_LIT_INTEGER
 xchain00803_n25_α:
 mov qword ptr [r12 + 6176], 6
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [r12 + 6184], rax
 jmp xchain00803_n27_α
 xchain00803_n25_β:
 jmp xchain00803_n37_α
.Lx00813_0:
 .quad 5
 xchain00803_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6480]
 mov rdx, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain00803_n20_α
 xchain00803_n26_β:
 jmp xchain00803_n20_α
# IR_TO
 xchain00803_n27_α:
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6144], rax
.Lx00814_0:
 mov rax, qword ptr [r12 + 6144]
 mov rcx, qword ptr [r12 + 6184]
 cmp rax, rcx
 jg xchain00803_n37_α
 mov qword ptr [r12 + 6128], 6
 mov qword ptr [r12 + 6136], rax
 jmp xchain00803_n28_α
 xchain00803_n27_β:
 inc qword ptr [r12 + 6144]
 jmp .Lx00814_0
# IR_KEYWORD_read
 xchain00803_n28_α:
 mov rdi, qword ptr [rip + .Lx00815_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain00803_n29_α
 xchain00803_n28_β:
 jmp xchain00803_n31_α
.Lx00815_0:
 .quad .Lx00815_0_s
.Lx00815_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00803_n29_α:
 mov qword ptr [r12 + 6416], 1
 mov rax, qword ptr [rip + .Lx00816_0]
 mov qword ptr [r12 + 6424], rax
 jmp xchain00803_n30_α
 xchain00803_n29_β:
 jmp xchain00803_n31_α
.Lx00816_0:
 .quad .Lx00816_0_s
.Lx00816_0_s:
 .string "."
 xchain00803_n30_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6384] -> [r12+6352]
 mov rax, qword ptr [r12 + 6384]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 6392]
 mov qword ptr [r12 + 6360], rax
# marshal arg1 = producer-box slot [r12+6416] -> [r12+6368]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6368], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6376], rax
  .section .rodata
  .Lrkfn2507: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2507]
 lea rsi, [r12 + 6352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 cmp eax, 99
 je xchain00803_n31_α
 jmp xchain00803_n31_α
 xchain00803_n30_β:
 jmp xchain00803_n31_α
# IR_VAR
 xchain00803_n31_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6248], rax
 jmp xchain00803_n32_α
 xchain00803_n31_β:
 jmp xchain00803_n27_β
# IR_PROC_VALUE first-class procedure value
 xchain00803_n32_α:
 mov rdi, qword ptr [rip + .Lx00817_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 jmp xchain00803_n33_α
 xchain00803_n32_β:
 jmp xchain00803_n27_β
.Lx00817_0:
 .quad .Lx00817_0_s
.Lx00817_0_s:
 .string "nothing"
# IR_VAR
 xchain00803_n33_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6328], rax
 jmp xchain00803_n34_α
 xchain00803_n33_β:
 jmp xchain00803_n27_β
 xchain00803_n34_α:
  .section .rodata
  .Lcall00818_pname: .string "measure"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6304]
 mov rdx, qword ptr [r12 + 6312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6320]
 mov rdx, qword ptr [r12 + 6328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00818_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 cmp eax, 99
 je xchain00803_n27_β
 jmp xchain00803_n35_α
xchain00803_n34_β:
 jmp xchain00803_n27_β
 xchain00803_n35_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6240] -> [r12+6208]
 mov rax, qword ptr [r12 + 6240]
 mov qword ptr [r12 + 6208], rax
 mov rax, qword ptr [r12 + 6248]
 mov qword ptr [r12 + 6216], rax
# marshal arg1 = producer-box slot [r12+6256] -> [r12+6224]
 mov rax, qword ptr [r12 + 6256]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6264]
 mov qword ptr [r12 + 6232], rax
  .section .rodata
  .Lrkfn2516: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2516]
 lea rsi, [r12 + 6208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 cmp eax, 99
 je xchain00803_n27_β
 jmp xchain00803_n36_α
 xchain00803_n35_β:
 jmp xchain00803_n27_β
 xchain00803_n36_α:
 jmp xchain00803_n27_β
xchain00803_n36_β:
 jmp xchain00803_n27_β
# IR_VAR
 xchain00803_n37_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00803_n38_α
 xchain00803_n37_β:
 jmp xchain00803_n39_α
 xchain00803_n38_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5952] -> [r12+5936]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5944], rax
  .section .rodata
  .Lrkfn2521: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2521]
 lea rsi, [r12 + 5936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5920], rax
 mov qword ptr [r12 + 5928], rdx
 cmp eax, 99
 je xchain00803_n39_α
 jmp xchain00803_n40_α
 xchain00803_n38_β:
 jmp xchain00803_n39_α
# IR_VAR gva
 xchain00803_n39_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 jmp xchain00803_n41_α
 xchain00803_n39_β:
 jmp xchain00803_n42_α
# IR_LIT_INTEGER
 xchain00803_n40_α:
 mov qword ptr [r12 + 5984], 6
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00803_n43_α
 xchain00803_n40_β:
 jmp xchain00803_n39_α
.Lx00819_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00803_n41_α:
 mov qword ptr [r12 + 5872], 6
 mov rax, qword ptr [rip + .Lx00820_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00803_n44_α
 xchain00803_n41_β:
 jmp xchain00803_n42_α
.Lx00820_0:
 .quad 10
# IR_PROC_VALUE first-class procedure value
 xchain00803_n42_α:
 mov rdi, qword ptr [rip + .Lx00821_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain00803_n45_α
 xchain00803_n42_β:
 jmp xchain00803_n48_α
.Lx00821_0:
 .quad .Lx00821_0_s
.Lx00821_0_s:
 .string "nothing"
# IR_VAR
 xchain00803_n43_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00803_n46_α
 xchain00803_n43_β:
 jmp xchain00803_n39_α
 xchain00803_n44_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5856] -> [r12+5824]
 mov rax, qword ptr [r12 + 5856]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5864]
 mov qword ptr [r12 + 5832], rax
# marshal arg1 = producer-box slot [r12+5872] -> [r12+5840]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5848], rax
  .section .rodata
  .Lrkfn2530: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2530]
 lea rsi, [r12 + 5824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain00803_n42_α
 jmp xchain00803_n47_α
 xchain00803_n44_β:
 jmp xchain00803_n42_α
 xchain00803_n45_α:
  .section .rodata
  .Lcall00604_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5744]
 mov rdx, qword ptr [r12 + 5752]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00604_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain00803_n48_α
 jmp xchain00803_n48_α
xchain00803_n45_β:
 jmp xchain00803_n48_α
# IR_UNOP
 xchain00803_n46_α:
 mov rdi, qword ptr [r12 + 6896]
 mov rsi, qword ptr [r12 + 6904]
 call rt_size_d@PLT
 mov qword ptr [r12 + 6032], rax
 mov qword ptr [r12 + 6040], rdx
 jmp xchain00803_n49_α
 xchain00803_n46_β:
 jmp xchain00803_n39_α
# IR_LIT_STRING
 xchain00803_n47_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00822_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00803_n50_α
 xchain00803_n47_β:
 jmp xchain00803_n42_α
.Lx00822_0:
 .quad .Lx00822_0_s
.Lx00822_0_s:
 .string "  overhead"
# IR_PROC_VALUE first-class procedure value
 xchain00803_n48_α:
 mov rdi, qword ptr [rip + .Lx00823_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain00803_n51_α
 xchain00803_n48_β:
 jmp xchain00803_n53_α
.Lx00823_0:
 .quad .Lx00823_0_s
.Lx00823_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00803_n49_α:
 mov qword ptr [r12 + 6064], 6
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain00803_n52_α
 xchain00803_n49_β:
 jmp xchain00803_n39_α
.Lx00824_0:
 .quad 1
 xchain00803_n50_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5808] -> [r12+5776]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5784], rax
# marshal arg1 = producer-box slot [r12+5888] -> [r12+5792]
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5800], rax
  .section .rodata
  .Lrkfn2538: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2538]
 lea rsi, [r12 + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 cmp eax, 99
 je xchain00803_n42_α
 jmp xchain00803_n42_α
 xchain00803_n50_β:
 jmp xchain00803_n42_α
 xchain00803_n51_α:
  .section .rodata
  .Lcall00825_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5696]
 mov rdx, qword ptr [r12 + 5704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00825_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 cmp eax, 99
 je xchain00803_n53_α
 jmp xchain00803_n53_α
xchain00803_n51_β:
 jmp xchain00803_n53_α
 xchain00803_n52_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 100
 je .Lx00826_0
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 100
 je .Lx00826_0
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 6
 jne .Lx00826_2
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 6
 jne .Lx00826_2
.Lx00826_1:
 mov rax, qword ptr [r12 + 6040]
 mov rcx, qword ptr [r12 + 6072]
 sub rax, rcx
 mov qword ptr [r12 + 6016], 6
 mov qword ptr [r12 + 6024], rax
 jmp xchain00803_n54_α
.Lx00826_0:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 lea r9, [r12 + 6016]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00826_3
.Lx00826_2:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00803_n39_α
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
.Lx00826_3:
 jmp xchain00803_n54_α
 xchain00803_n52_β:
 jmp xchain00803_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n53_α:
 mov rdi, qword ptr [rip + .Lx00827_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain00803_n55_α
 xchain00803_n53_β:
 jmp xchain00803_n57_α
.Lx00827_0:
 .quad .Lx00827_0_s
.Lx00827_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00803_n54_α:
 mov qword ptr [r12 + 6080], 6
 mov rax, qword ptr [rip + .Lx00828_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain00803_n56_α
 xchain00803_n54_β:
 jmp xchain00803_n39_α
.Lx00828_0:
 .quad 2
 xchain00803_n55_α:
  .section .rodata
  .Lcall00605_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5648]
 mov rdx, qword ptr [r12 + 5656]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00605_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 cmp eax, 99
 je xchain00803_n57_α
 jmp xchain00803_n57_α
xchain00803_n55_β:
 jmp xchain00803_n57_α
 xchain00803_n56_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 100
 je .Lx00829_0
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 100
 je .Lx00829_0
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 6
 jne .Lx00829_2
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 6
 jne .Lx00829_2
.Lx00829_1:
 mov rax, qword ptr [r12 + 6024]
 mov rcx, qword ptr [r12 + 6088]
 cqo
 idiv rcx
 mov qword ptr [r12 + 6000], 6
 mov qword ptr [r12 + 6008], rax
 jmp xchain00803_n58_α
.Lx00829_0:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 lea r9, [r12 + 6000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00829_3
.Lx00829_2:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00803_n39_α
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
.Lx00829_3:
 jmp xchain00803_n58_α
 xchain00803_n56_β:
 jmp xchain00803_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n57_α:
 mov rdi, qword ptr [rip + .Lx00830_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain00803_n59_α
 xchain00803_n57_β:
 jmp xchain00803_n61_α
.Lx00830_0:
 .quad .Lx00830_0_s
.Lx00830_0_s:
 .string "globasgn"
 xchain00803_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 100
 je .Lx00831_0
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 100
 je .Lx00831_0
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 6
 jne .Lx00831_2
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 6
 jne .Lx00831_2
.Lx00831_1:
 mov rax, qword ptr [r12 + 5992]
 mov rcx, qword ptr [r12 + 6008]
 add rax, rcx
 mov qword ptr [r12 + 5968], 6
 mov qword ptr [r12 + 5976], rax
 jmp xchain00803_n60_α
.Lx00831_0:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 lea r9, [r12 + 5968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00831_3
.Lx00831_2:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00803_n39_α
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
.Lx00831_3:
 jmp xchain00803_n60_α
 xchain00803_n58_β:
 jmp xchain00803_n39_α
 xchain00803_n59_α:
  .section .rodata
  .Lcall00606_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00606_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5568], rax
 mov qword ptr [r12 + 5576], rdx
 cmp eax, 99
 je xchain00803_n61_α
 jmp xchain00803_n61_α
xchain00803_n59_β:
 jmp xchain00803_n61_α
# IR_SUBSCRIPT x[i] variable
 xchain00803_n60_α:
 mov rdi, qword ptr [r12 + 5920]
 mov rsi, qword ptr [r12 + 5928]
 mov rdx, qword ptr [r12 + 5968]
 mov rcx, qword ptr [r12 + 5976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00803_n39_α
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain00803_n62_α
 xchain00803_n60_β:
 jmp xchain00803_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n61_α:
 mov rdi, qword ptr [rip + .Lx00832_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 jmp xchain00803_n63_α
 xchain00803_n61_β:
 jmp xchain00803_n65_α
.Lx00832_0:
 .quad .Lx00832_0_s
.Lx00832_0_s:
 .string "statasgn"
# IR_DEREF variable -> value
 xchain00803_n62_α:
 mov rdi, qword ptr [r12 + 6096]
 mov rsi, qword ptr [r12 + 6104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00803_n39_α
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain00803_n64_α
 xchain00803_n62_β:
 jmp xchain00803_n39_α
 xchain00803_n63_α:
  .section .rodata
  .Lcall00833_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5552]
 mov rdx, qword ptr [r12 + 5560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00833_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain00803_n65_α
 jmp xchain00803_n65_α
xchain00803_n63_β:
 jmp xchain00803_n65_α
# IR_ASSIGN gva
 xchain00803_n64_α:
 mov rax, qword ptr [r12 + 6112]
 mov rdx, qword ptr [r12 + 6120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 jmp xchain00803_n39_α
 xchain00803_n64_β:
 jmp xchain00803_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n65_α:
 mov rdi, qword ptr [rip + .Lx00834_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain00803_n66_α
 xchain00803_n65_β:
 jmp xchain00803_n67_α
.Lx00834_0:
 .quad .Lx00834_0_s
.Lx00834_0_s:
 .string "loclasgn"
 xchain00803_n66_α:
  .section .rodata
  .Lcall00835_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00835_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain00803_n67_α
 jmp xchain00803_n67_α
xchain00803_n66_β:
 jmp xchain00803_n67_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n67_α:
 mov rdi, qword ptr [rip + .Lx00836_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain00803_n68_α
 xchain00803_n67_β:
 jmp xchain00803_n69_α
.Lx00836_0:
 .quad .Lx00836_0_s
.Lx00836_0_s:
 .string "if0"
 xchain00803_n68_α:
  .section .rodata
  .Lcall00837_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5456]
 mov rdx, qword ptr [r12 + 5464]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00837_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain00803_n69_α
 jmp xchain00803_n69_α
xchain00803_n68_β:
 jmp xchain00803_n69_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n69_α:
 mov rdi, qword ptr [rip + .Lx00838_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain00803_n70_α
 xchain00803_n69_β:
 jmp xchain00803_n71_α
.Lx00838_0:
 .quad .Lx00838_0_s
.Lx00838_0_s:
 .string "case3"
 xchain00803_n70_α:
  .section .rodata
  .Lcall00839_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00839_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 cmp eax, 99
 je xchain00803_n71_α
 jmp xchain00803_n71_α
xchain00803_n70_β:
 jmp xchain00803_n71_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n71_α:
 mov rdi, qword ptr [rip + .Lx00840_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain00803_n72_α
 xchain00803_n71_β:
 jmp xchain00803_n73_α
.Lx00840_0:
 .quad .Lx00840_0_s
.Lx00840_0_s:
 .string "nulltest"
 xchain00803_n72_α:
  .section .rodata
  .Lcall00841_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5360]
 mov rdx, qword ptr [r12 + 5368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00841_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 cmp eax, 99
 je xchain00803_n73_α
 jmp xchain00803_n73_α
xchain00803_n72_β:
 jmp xchain00803_n73_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n73_α:
 mov rdi, qword ptr [rip + .Lx00842_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain00803_n74_α
 xchain00803_n73_β:
 jmp xchain00803_n75_α
.Lx00842_0:
 .quad .Lx00842_0_s
.Lx00842_0_s:
 .string "typef"
 xchain00803_n74_α:
  .section .rodata
  .Lcall00843_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5312]
 mov rdx, qword ptr [r12 + 5320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00843_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain00803_n75_α
 jmp xchain00803_n75_α
xchain00803_n74_β:
 jmp xchain00803_n75_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n75_α:
 mov rdi, qword ptr [rip + .Lx00844_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain00803_n76_α
 xchain00803_n75_β:
 jmp xchain00803_n77_α
.Lx00844_0:
 .quad .Lx00844_0_s
.Lx00844_0_s:
 .string "imagef"
 xchain00803_n76_α:
  .section .rodata
  .Lcall00845_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00845_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 cmp eax, 99
 je xchain00803_n77_α
 jmp xchain00803_n77_α
xchain00803_n76_β:
 jmp xchain00803_n77_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n77_α:
 mov rdi, qword ptr [rip + .Lx00846_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain00803_n78_α
 xchain00803_n77_β:
 jmp xchain00803_n79_α
.Lx00846_0:
 .quad .Lx00846_0_s
.Lx00846_0_s:
 .string "everyto"
 xchain00803_n78_α:
  .section .rodata
  .Lcall00847_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5216]
 mov rdx, qword ptr [r12 + 5224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00847_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain00803_n79_α
 jmp xchain00803_n79_α
xchain00803_n78_β:
 jmp xchain00803_n79_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n79_α:
 mov rdi, qword ptr [rip + .Lx00848_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain00803_n80_α
 xchain00803_n79_β:
 jmp xchain00803_n81_α
.Lx00848_0:
 .quad .Lx00848_0_s
.Lx00848_0_s:
 .string "everyalt"
 xchain00803_n80_α:
  .section .rodata
  .Lcall00611_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5168]
 mov rdx, qword ptr [r12 + 5176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00611_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 cmp eax, 99
 je xchain00803_n81_α
 jmp xchain00803_n81_α
xchain00803_n80_β:
 jmp xchain00803_n81_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n81_α:
 mov rdi, qword ptr [rip + .Lx00849_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 jmp xchain00803_n82_α
 xchain00803_n81_β:
 jmp xchain00803_n83_α
.Lx00849_0:
 .quad .Lx00849_0_s
.Lx00849_0_s:
 .string "conj5"
 xchain00803_n82_α:
  .section .rodata
  .Lcall00850_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5120]
 mov rdx, qword ptr [r12 + 5128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00850_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain00803_n83_α
 jmp xchain00803_n83_α
xchain00803_n82_β:
 jmp xchain00803_n83_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n83_α:
 mov rdi, qword ptr [rip + .Lx00851_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain00803_n84_α
 xchain00803_n83_β:
 jmp xchain00803_n85_α
.Lx00851_0:
 .quad .Lx00851_0_s
.Lx00851_0_s:
 .string "nullfunc"
 xchain00803_n84_α:
  .section .rodata
  .Lcall00852_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00852_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain00803_n85_α
 jmp xchain00803_n85_α
xchain00803_n84_β:
 jmp xchain00803_n85_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n85_α:
 mov rdi, qword ptr [rip + .Lx00853_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00803_n86_α
 xchain00803_n85_β:
 jmp xchain00803_n87_α
.Lx00853_0:
 .quad .Lx00853_0_s
.Lx00853_0_s:
 .string "listcall"
 xchain00803_n86_α:
  .section .rodata
  .Lcall00854_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5024]
 mov rdx, qword ptr [r12 + 5032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00854_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain00803_n87_α
 jmp xchain00803_n87_α
xchain00803_n86_β:
 jmp xchain00803_n87_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n87_α:
 mov rdi, qword ptr [rip + .Lx00855_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00803_n88_α
 xchain00803_n87_β:
 jmp xchain00803_n89_α
.Lx00855_0:
 .quad .Lx00855_0_s
.Lx00855_0_s:
 .string "marshal"
 xchain00803_n88_α:
  .section .rodata
  .Lcall00856_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00856_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain00803_n89_α
 jmp xchain00803_n89_α
xchain00803_n88_β:
 jmp xchain00803_n89_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n89_α:
 mov rdi, qword ptr [rip + .Lx00857_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00803_n90_α
 xchain00803_n89_β:
 jmp xchain00803_n91_α
.Lx00857_0:
 .quad .Lx00857_0_s
.Lx00857_0_s:
 .string "evsusp"
 xchain00803_n90_α:
  .section .rodata
  .Lcall00858_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4928]
 mov rdx, qword ptr [r12 + 4936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00858_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je xchain00803_n91_α
 jmp xchain00803_n91_α
xchain00803_n90_β:
 jmp xchain00803_n91_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n91_α:
 mov rdi, qword ptr [rip + .Lx00859_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 jmp xchain00803_n92_α
 xchain00803_n91_β:
 jmp xchain00803_n93_α
.Lx00859_0:
 .quad .Lx00859_0_s
.Lx00859_0_s:
 .string "tointeger"
 xchain00803_n92_α:
  .section .rodata
  .Lcall00860_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4880]
 mov rdx, qword ptr [r12 + 4888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00860_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 cmp eax, 99
 je xchain00803_n93_α
 jmp xchain00803_n93_α
xchain00803_n92_β:
 jmp xchain00803_n93_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n93_α:
 mov rdi, qword ptr [rip + .Lx00861_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00803_n94_α
 xchain00803_n93_β:
 jmp xchain00803_n95_α
.Lx00861_0:
 .quad .Lx00861_0_s
.Lx00861_0_s:
 .string "intcoerce"
 xchain00803_n94_α:
  .section .rodata
  .Lcall00613_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4832]
 mov rdx, qword ptr [r12 + 4840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00613_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 cmp eax, 99
 je xchain00803_n95_α
 jmp xchain00803_n95_α
xchain00803_n94_β:
 jmp xchain00803_n95_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n95_α:
 mov rdi, qword ptr [rip + .Lx00862_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00803_n96_α
 xchain00803_n95_β:
 jmp xchain00803_n97_α
.Lx00862_0:
 .quad .Lx00862_0_s
.Lx00862_0_s:
 .string "uplus"
 xchain00803_n96_α:
  .section .rodata
  .Lcall00863_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00863_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je xchain00803_n97_α
 jmp xchain00803_n97_α
xchain00803_n96_β:
 jmp xchain00803_n97_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n97_α:
 mov rdi, qword ptr [rip + .Lx00864_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain00803_n98_α
 xchain00803_n97_β:
 jmp xchain00803_n99_α
.Lx00864_0:
 .quad .Lx00864_0_s
.Lx00864_0_s:
 .string "tostring"
 xchain00803_n98_α:
  .section .rodata
  .Lcall00614_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4736]
 mov rdx, qword ptr [r12 + 4744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00614_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je xchain00803_n99_α
 jmp xchain00803_n99_α
xchain00803_n98_β:
 jmp xchain00803_n99_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n99_α:
 mov rdi, qword ptr [rip + .Lx00865_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain00803_n00866_α
 xchain00803_n99_β:
 jmp xchain00803_n00867_α
.Lx00865_0:
 .quad .Lx00865_0_s
.Lx00865_0_s:
 .string "strcoerce"
 xchain00803_n00866_α:
  .section .rodata
  .Lcall00868_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00868_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain00803_n00867_α
 jmp xchain00803_n00867_α
xchain00803_n00866_β:
 jmp xchain00803_n00867_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00867_α:
 mov rdi, qword ptr [rip + .Lx00869_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00803_n00870_α
 xchain00803_n00867_β:
 jmp xchain00803_n00871_α
.Lx00869_0:
 .quad .Lx00869_0_s
.Lx00869_0_s:
 .string "absf"
 xchain00803_n00870_α:
  .section .rodata
  .Lcall00872_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4640]
 mov rdx, qword ptr [r12 + 4648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00872_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain00803_n00871_α
 jmp xchain00803_n00871_α
xchain00803_n00870_β:
 jmp xchain00803_n00871_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00871_α:
 mov rdi, qword ptr [rip + .Lx00873_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain00803_n00001_α
 xchain00803_n00871_β:
 jmp xchain00803_n00874_α
.Lx00873_0:
 .quad .Lx00873_0_s
.Lx00873_0_s:
 .string "intadd"
 xchain00803_n00001_α:
  .section .rodata
  .Lcall00875_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00875_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 cmp eax, 99
 je xchain00803_n00874_α
 jmp xchain00803_n00874_α
xchain00803_n00001_β:
 jmp xchain00803_n00874_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00874_α:
 mov rdi, qword ptr [rip + .Lx00876_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain00803_n00877_α
 xchain00803_n00874_β:
 jmp xchain00803_n00878_α
.Lx00876_0:
 .quad .Lx00876_0_s
.Lx00876_0_s:
 .string "addfunc"
 xchain00803_n00877_α:
  .section .rodata
  .Lcall00616_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4544]
 mov rdx, qword ptr [r12 + 4552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00616_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je xchain00803_n00878_α
 jmp xchain00803_n00878_α
xchain00803_n00877_β:
 jmp xchain00803_n00878_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00878_α:
 mov rdi, qword ptr [rip + .Lx00879_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00803_n00880_α
 xchain00803_n00878_β:
 jmp xchain00803_n00881_α
.Lx00879_0:
 .quad .Lx00879_0_s
.Lx00879_0_s:
 .string "intpow"
 xchain00803_n00880_α:
  .section .rodata
  .Lcall00882_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00882_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 cmp eax, 99
 je xchain00803_n00881_α
 jmp xchain00803_n00881_α
xchain00803_n00880_β:
 jmp xchain00803_n00881_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00881_α:
 mov rdi, qword ptr [rip + .Lx00883_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain00803_n00884_α
 xchain00803_n00881_β:
 jmp xchain00803_n00885_α
.Lx00883_0:
 .quad .Lx00883_0_s
.Lx00883_0_s:
 .string "intcmp"
 xchain00803_n00884_α:
  .section .rodata
  .Lcall00886_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4448]
 mov rdx, qword ptr [r12 + 4456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00886_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je xchain00803_n00885_α
 jmp xchain00803_n00885_α
xchain00803_n00884_β:
 jmp xchain00803_n00885_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00885_α:
 mov rdi, qword ptr [rip + .Lx00887_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain00803_n00888_α
 xchain00803_n00885_β:
 jmp xchain00803_n00002_α
.Lx00887_0:
 .quad .Lx00887_0_s
.Lx00887_0_s:
 .string "rfact0"
 xchain00803_n00888_α:
  .section .rodata
  .Lcall00617_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00617_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain00803_n00002_α
 jmp xchain00803_n00002_α
xchain00803_n00888_β:
 jmp xchain00803_n00002_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00002_α:
 mov rdi, qword ptr [rip + .Lx00889_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00803_n00890_α
 xchain00803_n00002_β:
 jmp xchain00803_n00891_α
.Lx00889_0:
 .quad .Lx00889_0_s
.Lx00889_0_s:
 .string "rfact10"
 xchain00803_n00890_α:
  .section .rodata
  .Lcall00892_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4352]
 mov rdx, qword ptr [r12 + 4360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00892_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain00803_n00891_α
 jmp xchain00803_n00891_α
xchain00803_n00890_β:
 jmp xchain00803_n00891_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00891_α:
 mov rdi, qword ptr [rip + .Lx00893_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 jmp xchain00803_n00894_α
 xchain00803_n00891_β:
 jmp xchain00803_n00003_α
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "rfib5"
 xchain00803_n00894_α:
  .section .rodata
  .Lcall00895_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00895_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain00803_n00003_α
 jmp xchain00803_n00003_α
xchain00803_n00894_β:
 jmp xchain00803_n00003_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00003_α:
 mov rdi, qword ptr [rip + .Lx00896_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00803_n00004_α
 xchain00803_n00003_β:
 jmp xchain00803_n00897_α
.Lx00896_0:
 .quad .Lx00896_0_s
.Lx00896_0_s:
 .string "prslow"
 xchain00803_n00004_α:
  .section .rodata
  .Lcall00618_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4256]
 mov rdx, qword ptr [r12 + 4264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00618_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain00803_n00897_α
 jmp xchain00803_n00897_α
xchain00803_n00004_β:
 jmp xchain00803_n00897_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00897_α:
 mov rdi, qword ptr [rip + .Lx00898_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain00803_n00899_α
 xchain00803_n00897_β:
 jmp xchain00803_n00005_α
.Lx00898_0:
 .quad .Lx00898_0_s
.Lx00898_0_s:
 .string "toreal"
 xchain00803_n00899_α:
  .section .rodata
  .Lcall00620_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00620_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 cmp eax, 99
 je xchain00803_n00005_α
 jmp xchain00803_n00005_α
xchain00803_n00899_β:
 jmp xchain00803_n00005_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00005_α:
 mov rdi, qword ptr [rip + .Lx00900_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00803_n00901_α
 xchain00803_n00005_β:
 jmp xchain00803_n00902_α
.Lx00900_0:
 .quad .Lx00900_0_s
.Lx00900_0_s:
 .string "realcoerce"
 xchain00803_n00901_α:
  .section .rodata
  .Lcall00903_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4160]
 mov rdx, qword ptr [r12 + 4168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00903_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je xchain00803_n00902_α
 jmp xchain00803_n00902_α
xchain00803_n00901_β:
 jmp xchain00803_n00902_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00902_α:
 mov rdi, qword ptr [rip + .Lx00904_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain00803_n00905_α
 xchain00803_n00902_β:
 jmp xchain00803_n00906_α
.Lx00904_0:
 .quad .Lx00904_0_s
.Lx00904_0_s:
 .string "uplusr"
 xchain00803_n00905_α:
  .section .rodata
  .Lcall00907_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00907_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 cmp eax, 99
 je xchain00803_n00906_α
 jmp xchain00803_n00906_α
xchain00803_n00905_β:
 jmp xchain00803_n00906_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00906_α:
 mov rdi, qword ptr [rip + .Lx00908_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00803_n00006_α
 xchain00803_n00906_β:
 jmp xchain00803_n00909_α
.Lx00908_0:
 .quad .Lx00908_0_s
.Lx00908_0_s:
 .string "rtostring"
 xchain00803_n00006_α:
  .section .rodata
  .Lcall00910_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4064]
 mov rdx, qword ptr [r12 + 4072]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00910_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain00803_n00909_α
 jmp xchain00803_n00909_α
xchain00803_n00006_β:
 jmp xchain00803_n00909_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00909_α:
 mov rdi, qword ptr [rip + .Lx00911_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00803_n00912_α
 xchain00803_n00909_β:
 jmp xchain00803_n00913_α
.Lx00911_0:
 .quad .Lx00911_0_s
.Lx00911_0_s:
 .string "strcoercer"
 xchain00803_n00912_α:
  .section .rodata
  .Lcall00914_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00914_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain00803_n00913_α
 jmp xchain00803_n00913_α
xchain00803_n00912_β:
 jmp xchain00803_n00913_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00913_α:
 mov rdi, qword ptr [rip + .Lx00915_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 jmp xchain00803_n00007_α
 xchain00803_n00913_β:
 jmp xchain00803_n00008_α
.Lx00915_0:
 .quad .Lx00915_0_s
.Lx00915_0_s:
 .string "realcmp"
 xchain00803_n00007_α:
  .section .rodata
  .Lcall00916_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00916_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je xchain00803_n00008_α
 jmp xchain00803_n00008_α
xchain00803_n00007_β:
 jmp xchain00803_n00008_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00008_α:
 mov rdi, qword ptr [rip + .Lx00917_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 jmp xchain00803_n00918_α
 xchain00803_n00008_β:
 jmp xchain00803_n00919_α
.Lx00917_0:
 .quad .Lx00917_0_s
.Lx00917_0_s:
 .string "sqrtf"
 xchain00803_n00918_α:
  .section .rodata
  .Lcall00920_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3920]
 mov rdx, qword ptr [r12 + 3928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00920_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 cmp eax, 99
 je xchain00803_n00919_α
 jmp xchain00803_n00919_α
xchain00803_n00918_β:
 jmp xchain00803_n00919_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00919_α:
 mov rdi, qword ptr [rip + .Lx00921_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain00803_n00922_α
 xchain00803_n00919_β:
 jmp xchain00803_n00923_α
.Lx00921_0:
 .quad .Lx00921_0_s
.Lx00921_0_s:
 .string "cosf"
 xchain00803_n00922_α:
  .section .rodata
  .Lcall00924_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3872]
 mov rdx, qword ptr [r12 + 3880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00924_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain00803_n00923_α
 jmp xchain00803_n00923_α
xchain00803_n00922_β:
 jmp xchain00803_n00923_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00923_α:
 mov rdi, qword ptr [rip + .Lx00925_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain00803_n00009_α
 xchain00803_n00923_β:
 jmp xchain00803_n00010_α
.Lx00925_0:
 .quad .Lx00925_0_s
.Lx00925_0_s:
 .string "logf"
 xchain00803_n00009_α:
  .section .rodata
  .Lcall00926_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3824]
 mov rdx, qword ptr [r12 + 3832]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00926_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je xchain00803_n00010_α
 jmp xchain00803_n00010_α
xchain00803_n00009_β:
 jmp xchain00803_n00010_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00010_α:
 mov rdi, qword ptr [rip + .Lx00927_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 jmp xchain00803_n00011_α
 xchain00803_n00010_β:
 jmp xchain00803_n00928_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "charf"
 xchain00803_n00011_α:
  .section .rodata
  .Lcall00929_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3776]
 mov rdx, qword ptr [r12 + 3784]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00929_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je xchain00803_n00928_α
 jmp xchain00803_n00928_α
xchain00803_n00011_β:
 jmp xchain00803_n00928_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00928_α:
 mov rdi, qword ptr [rip + .Lx00930_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain00803_n00931_α
 xchain00803_n00928_β:
 jmp xchain00803_n00932_α
.Lx00930_0:
 .quad .Lx00930_0_s
.Lx00930_0_s:
 .string "ordf"
 xchain00803_n00931_α:
  .section .rodata
  .Lcall00933_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3728]
 mov rdx, qword ptr [r12 + 3736]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00933_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 cmp eax, 99
 je xchain00803_n00932_α
 jmp xchain00803_n00932_α
xchain00803_n00931_β:
 jmp xchain00803_n00932_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00932_α:
 mov rdi, qword ptr [rip + .Lx00934_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain00803_n00012_α
 xchain00803_n00932_β:
 jmp xchain00803_n00013_α
.Lx00934_0:
 .quad .Lx00934_0_s
.Lx00934_0_s:
 .string "strsize"
 xchain00803_n00012_α:
  .section .rodata
  .Lcall00935_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3680]
 mov rdx, qword ptr [r12 + 3688]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00935_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je xchain00803_n00013_α
 jmp xchain00803_n00013_α
xchain00803_n00012_β:
 jmp xchain00803_n00013_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00013_α:
 mov rdi, qword ptr [rip + .Lx00936_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00803_n00937_α
 xchain00803_n00013_β:
 jmp xchain00803_n00938_α
.Lx00936_0:
 .quad .Lx00936_0_s
.Lx00936_0_s:
 .string "strpick"
 xchain00803_n00937_α:
  .section .rodata
  .Lcall00939_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3632]
 mov rdx, qword ptr [r12 + 3640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00939_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain00803_n00938_α
 jmp xchain00803_n00938_α
xchain00803_n00937_β:
 jmp xchain00803_n00938_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00938_α:
 mov rdi, qword ptr [rip + .Lx00940_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00803_n00941_α
 xchain00803_n00938_β:
 jmp xchain00803_n00942_α
.Lx00940_0:
 .quad .Lx00940_0_s
.Lx00940_0_s:
 .string "strbang"
 xchain00803_n00941_α:
  .section .rodata
  .Lcall00624_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00624_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je xchain00803_n00942_α
 jmp xchain00803_n00942_α
xchain00803_n00941_β:
 jmp xchain00803_n00942_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00942_α:
 mov rdi, qword ptr [rip + .Lx00943_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain00803_n00014_α
 xchain00803_n00942_β:
 jmp xchain00803_n00015_α
.Lx00943_0:
 .quad .Lx00943_0_s
.Lx00943_0_s:
 .string "strsub"
 xchain00803_n00014_α:
  .section .rodata
  .Lcall00944_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3536]
 mov rdx, qword ptr [r12 + 3544]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00944_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00803_n00015_α
 jmp xchain00803_n00015_α
xchain00803_n00014_β:
 jmp xchain00803_n00015_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00015_α:
 mov rdi, qword ptr [rip + .Lx00945_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00803_n00016_α
 xchain00803_n00015_β:
 jmp xchain00803_n00946_α
.Lx00945_0:
 .quad .Lx00945_0_s
.Lx00945_0_s:
 .string "substr"
 xchain00803_n00016_α:
  .section .rodata
  .Lcall00947_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00947_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain00803_n00946_α
 jmp xchain00803_n00946_α
xchain00803_n00016_β:
 jmp xchain00803_n00946_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00946_α:
 mov rdi, qword ptr [rip + .Lx00948_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain00803_n00949_α
 xchain00803_n00946_β:
 jmp xchain00803_n00950_α
.Lx00948_0:
 .quad .Lx00948_0_s
.Lx00948_0_s:
 .string "subsasg"
 xchain00803_n00949_α:
  .section .rodata
  .Lcall00951_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00951_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain00803_n00950_α
 jmp xchain00803_n00950_α
xchain00803_n00949_β:
 jmp xchain00803_n00950_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00950_α:
 mov rdi, qword ptr [rip + .Lx00952_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain00803_n00017_α
 xchain00803_n00950_β:
 jmp xchain00803_n00018_α
.Lx00952_0:
 .quad .Lx00952_0_s
.Lx00952_0_s:
 .string "strcmp"
 xchain00803_n00017_α:
  .section .rodata
  .Lcall00953_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00953_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je xchain00803_n00018_α
 jmp xchain00803_n00018_α
xchain00803_n00017_β:
 jmp xchain00803_n00018_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00018_α:
 mov rdi, qword ptr [rip + .Lx00954_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00803_n00955_α
 xchain00803_n00018_β:
 jmp xchain00803_n00956_α
.Lx00954_0:
 .quad .Lx00954_0_s
.Lx00954_0_s:
 .string "strident"
 xchain00803_n00955_α:
  .section .rodata
  .Lcall00957_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3344]
 mov rdx, qword ptr [r12 + 3352]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00957_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xchain00803_n00956_α
 jmp xchain00803_n00956_α
xchain00803_n00955_β:
 jmp xchain00803_n00956_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00956_α:
 mov rdi, qword ptr [rip + .Lx00958_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain00803_n00959_α
 xchain00803_n00956_β:
 jmp xchain00803_n00960_α
.Lx00958_0:
 .quad .Lx00958_0_s
.Lx00958_0_s:
 .string "concat"
 xchain00803_n00959_α:
  .section .rodata
  .Lcall00961_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3296]
 mov rdx, qword ptr [r12 + 3304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00961_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain00803_n00960_α
 jmp xchain00803_n00960_α
xchain00803_n00959_β:
 jmp xchain00803_n00960_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00960_α:
 mov rdi, qword ptr [rip + .Lx00962_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain00803_n00019_α
 xchain00803_n00960_β:
 jmp xchain00803_n00020_α
.Lx00962_0:
 .quad .Lx00962_0_s
.Lx00962_0_s:
 .string "reversef"
 xchain00803_n00019_α:
  .section .rodata
  .Lcall00963_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3248]
 mov rdx, qword ptr [r12 + 3256]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00963_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je xchain00803_n00020_α
 jmp xchain00803_n00020_α
xchain00803_n00019_β:
 jmp xchain00803_n00020_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00020_α:
 mov rdi, qword ptr [rip + .Lx00964_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain00803_n00021_α
 xchain00803_n00020_β:
 jmp xchain00803_n00965_α
.Lx00964_0:
 .quad .Lx00964_0_s
.Lx00964_0_s:
 .string "trimf"
 xchain00803_n00021_α:
  .section .rodata
  .Lcall00966_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00966_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain00803_n00965_α
 jmp xchain00803_n00965_α
xchain00803_n00021_β:
 jmp xchain00803_n00965_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00965_α:
 mov rdi, qword ptr [rip + .Lx00967_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain00803_n00968_α
 xchain00803_n00965_β:
 jmp xchain00803_n00969_α
.Lx00967_0:
 .quad .Lx00967_0_s
.Lx00967_0_s:
 .string "replf"
 xchain00803_n00968_α:
  .section .rodata
  .Lcall00970_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00970_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00803_n00969_α
 jmp xchain00803_n00969_α
xchain00803_n00968_β:
 jmp xchain00803_n00969_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00969_α:
 mov rdi, qword ptr [rip + .Lx00971_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain00803_n00022_α
 xchain00803_n00969_β:
 jmp xchain00803_n00023_α
.Lx00971_0:
 .quad .Lx00971_0_s
.Lx00971_0_s:
 .string "leftf"
 xchain00803_n00022_α:
  .section .rodata
  .Lcall00628_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3104]
 mov rdx, qword ptr [r12 + 3112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00628_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain00803_n00023_α
 jmp xchain00803_n00023_α
xchain00803_n00022_β:
 jmp xchain00803_n00023_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00023_α:
 mov rdi, qword ptr [rip + .Lx00972_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00803_n00973_α
 xchain00803_n00023_β:
 jmp xchain00803_n00974_α
.Lx00972_0:
 .quad .Lx00972_0_s
.Lx00972_0_s:
 .string "centerf"
 xchain00803_n00973_α:
  .section .rodata
  .Lcall00975_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00975_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain00803_n00974_α
 jmp xchain00803_n00974_α
xchain00803_n00973_β:
 jmp xchain00803_n00974_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00974_α:
 mov rdi, qword ptr [rip + .Lx00976_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain00803_n00977_α
 xchain00803_n00974_β:
 jmp xchain00803_n00978_α
.Lx00976_0:
 .quad .Lx00976_0_s
.Lx00976_0_s:
 .string "rightf"
 xchain00803_n00977_α:
  .section .rodata
  .Lcall00629_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00629_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00803_n00978_α
 jmp xchain00803_n00978_α
xchain00803_n00977_β:
 jmp xchain00803_n00978_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00978_α:
 mov rdi, qword ptr [rip + .Lx00979_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00803_n00024_α
 xchain00803_n00978_β:
 jmp xchain00803_n00025_α
.Lx00979_0:
 .quad .Lx00979_0_s
.Lx00979_0_s:
 .string "entabf"
 xchain00803_n00024_α:
  .section .rodata
  .Lcall00980_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00980_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je xchain00803_n00025_α
 jmp xchain00803_n00025_α
xchain00803_n00024_β:
 jmp xchain00803_n00025_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00025_α:
 mov rdi, qword ptr [rip + .Lx00981_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00803_n00982_α
 xchain00803_n00025_β:
 jmp xchain00803_n00983_α
.Lx00981_0:
 .quad .Lx00981_0_s
.Lx00981_0_s:
 .string "detabf"
 xchain00803_n00982_α:
  .section .rodata
  .Lcall00984_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00984_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain00803_n00983_α
 jmp xchain00803_n00983_α
xchain00803_n00982_β:
 jmp xchain00803_n00983_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00983_α:
 mov rdi, qword ptr [rip + .Lx00985_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00803_n00026_α
 xchain00803_n00983_β:
 jmp xchain00803_n00986_α
.Lx00985_0:
 .quad .Lx00985_0_s
.Lx00985_0_s:
 .string "mapf"
 xchain00803_n00026_α:
  .section .rodata
  .Lcall00631_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00631_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain00803_n00986_α
 jmp xchain00803_n00986_α
xchain00803_n00026_β:
 jmp xchain00803_n00986_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00986_α:
 mov rdi, qword ptr [rip + .Lx00987_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00803_n00988_α
 xchain00803_n00986_β:
 jmp xchain00803_n00989_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "map1"
 xchain00803_n00988_α:
  .section .rodata
  .Lcall00990_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2816]
 mov rdx, qword ptr [r12 + 2824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00990_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je xchain00803_n00989_α
 jmp xchain00803_n00989_α
xchain00803_n00988_β:
 jmp xchain00803_n00989_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00989_α:
 mov rdi, qword ptr [rip + .Lx00991_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00803_n00027_α
 xchain00803_n00989_β:
 jmp xchain00803_n00028_α
.Lx00991_0:
 .quad .Lx00991_0_s
.Lx00991_0_s:
 .string "map2"
 xchain00803_n00027_α:
  .section .rodata
  .Lcall00633_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00633_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain00803_n00028_α
 jmp xchain00803_n00028_α
xchain00803_n00027_β:
 jmp xchain00803_n00028_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00028_α:
 mov rdi, qword ptr [rip + .Lx00992_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00803_n00993_α
 xchain00803_n00028_β:
 jmp xchain00803_n00994_α
.Lx00992_0:
 .quad .Lx00992_0_s
.Lx00992_0_s:
 .string "tablemap"
 xchain00803_n00993_α:
  .section .rodata
  .Lcall00995_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2720]
 mov rdx, qword ptr [r12 + 2728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00995_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je xchain00803_n00994_α
 jmp xchain00803_n00994_α
xchain00803_n00993_β:
 jmp xchain00803_n00994_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00994_α:
 mov rdi, qword ptr [rip + .Lx00996_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00803_n00997_α
 xchain00803_n00994_β:
 jmp xchain00803_n00998_α
.Lx00996_0:
 .quad .Lx00996_0_s
.Lx00996_0_s:
 .string "listmap"
 xchain00803_n00997_α:
  .section .rodata
  .Lcall00635_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2672]
 mov rdx, qword ptr [r12 + 2680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00635_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00803_n00998_α
 jmp xchain00803_n00998_α
xchain00803_n00997_β:
 jmp xchain00803_n00998_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00998_α:
 mov rdi, qword ptr [rip + .Lx00999_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00803_n00029_α
 xchain00803_n00998_β:
 jmp xchain00803_n00030_α
.Lx00999_0:
 .quad .Lx00999_0_s
.Lx00999_0_s:
 .string "nullscan"
 xchain00803_n00029_α:
  .section .rodata
  .Lcall00636_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00636_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00803_n00030_α
 jmp xchain00803_n00030_α
xchain00803_n00029_β:
 jmp xchain00803_n00030_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00030_α:
 mov rdi, qword ptr [rip + .Lx01000_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00803_n00031_α
 xchain00803_n00030_β:
 jmp xchain00803_n00032_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "movef"
 xchain00803_n00031_α:
  .section .rodata
  .Lcall00638_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2576]
 mov rdx, qword ptr [r12 + 2584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00638_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain00803_n00032_α
 jmp xchain00803_n00032_α
xchain00803_n00031_β:
 jmp xchain00803_n00032_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00032_α:
 mov rdi, qword ptr [rip + .Lx01001_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00803_n00033_α
 xchain00803_n00032_β:
 jmp xchain00803_n01002_α
.Lx01001_0:
 .quad .Lx01001_0_s
.Lx01001_0_s:
 .string "mov11"
 xchain00803_n00033_α:
  .section .rodata
  .Lcall01003_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01003_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain00803_n01002_α
 jmp xchain00803_n01002_α
xchain00803_n00033_β:
 jmp xchain00803_n01002_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01002_α:
 mov rdi, qword ptr [rip + .Lx01004_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00803_n01005_α
 xchain00803_n01002_β:
 jmp xchain00803_n01006_α
.Lx01004_0:
 .quad .Lx01004_0_s
.Lx01004_0_s:
 .string "pos11"
 xchain00803_n01005_α:
  .section .rodata
  .Lcall01007_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01007_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain00803_n01006_α
 jmp xchain00803_n01006_α
xchain00803_n01005_β:
 jmp xchain00803_n01006_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01006_α:
 mov rdi, qword ptr [rip + .Lx01008_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00803_n00034_α
 xchain00803_n01006_β:
 jmp xchain00803_n00035_α
.Lx01008_0:
 .quad .Lx01008_0_s
.Lx01008_0_s:
 .string "tabf"
 xchain00803_n00034_α:
  .section .rodata
  .Lcall00640_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00640_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00803_n00035_α
 jmp xchain00803_n00035_α
xchain00803_n00034_β:
 jmp xchain00803_n00035_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00035_α:
 mov rdi, qword ptr [rip + .Lx01009_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00803_n01010_α
 xchain00803_n00035_β:
 jmp xchain00803_n00072_α
.Lx01009_0:
 .quad .Lx01009_0_s
.Lx01009_0_s:
 .string "matchf"
 xchain00803_n01010_α:
  .section .rodata
  .Lcall00642_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00642_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain00803_n00072_α
 jmp xchain00803_n00072_α
xchain00803_n01010_β:
 jmp xchain00803_n00072_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00072_α:
 mov rdi, qword ptr [rip + .Lx01011_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00803_n01012_α
 xchain00803_n00072_β:
 jmp xchain00803_n01013_α
.Lx01011_0:
 .quad .Lx01011_0_s
.Lx01011_0_s:
 .string "tabmat"
 xchain00803_n01012_α:
  .section .rodata
  .Lcall00644_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00644_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain00803_n01013_α
 jmp xchain00803_n01013_α
xchain00803_n01012_β:
 jmp xchain00803_n01013_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01013_α:
 mov rdi, qword ptr [rip + .Lx01014_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00803_n00036_α
 xchain00803_n01013_β:
 jmp xchain00803_n00037_α
.Lx01014_0:
 .quad .Lx01014_0_s
.Lx01014_0_s:
 .string "posf"
 xchain00803_n00036_α:
  .section .rodata
  .Lcall01015_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01015_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00803_n00037_α
 jmp xchain00803_n00037_α
xchain00803_n00036_β:
 jmp xchain00803_n00037_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00037_α:
 mov rdi, qword ptr [rip + .Lx01016_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00803_n00038_α
 xchain00803_n00037_β:
 jmp xchain00803_n00039_α
.Lx01016_0:
 .quad .Lx01016_0_s
.Lx01016_0_s:
 .string "anyf"
 xchain00803_n00038_α:
  .section .rodata
  .Lcall01017_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01017_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain00803_n00039_α
 jmp xchain00803_n00039_α
xchain00803_n00038_β:
 jmp xchain00803_n00039_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00039_α:
 mov rdi, qword ptr [rip + .Lx01018_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00803_n00040_α
 xchain00803_n00039_β:
 jmp xchain00803_n01019_α
.Lx01018_0:
 .quad .Lx01018_0_s
.Lx01018_0_s:
 .string "manyf"
 xchain00803_n00040_α:
  .section .rodata
  .Lcall01020_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01020_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain00803_n01019_α
 jmp xchain00803_n01019_α
xchain00803_n00040_β:
 jmp xchain00803_n01019_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01019_α:
 mov rdi, qword ptr [rip + .Lx01021_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00803_n01022_α
 xchain00803_n01019_β:
 jmp xchain00803_n01023_α
.Lx01021_0:
 .quad .Lx01021_0_s
.Lx01021_0_s:
 .string "uptof"
 xchain00803_n01022_α:
  .section .rodata
  .Lcall01024_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01024_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain00803_n01023_α
 jmp xchain00803_n01023_α
xchain00803_n01022_β:
 jmp xchain00803_n01023_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01023_α:
 mov rdi, qword ptr [rip + .Lx01025_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00803_n00041_α
 xchain00803_n01023_β:
 jmp xchain00803_n00042_α
.Lx01025_0:
 .quad .Lx01025_0_s
.Lx01025_0_s:
 .string "findf"
 xchain00803_n00041_α:
  .section .rodata
  .Lcall01026_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01026_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 cmp eax, 99
 je xchain00803_n00042_α
 jmp xchain00803_n00042_α
xchain00803_n00041_β:
 jmp xchain00803_n00042_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00042_α:
 mov rdi, qword ptr [rip + .Lx01027_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00803_n01028_α
 xchain00803_n00042_β:
 jmp xchain00803_n01029_α
.Lx01027_0:
 .quad .Lx01027_0_s
.Lx01027_0_s:
 .string "balf"
 xchain00803_n01028_α:
  .section .rodata
  .Lcall01030_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01030_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00803_n01029_α
 jmp xchain00803_n01029_α
xchain00803_n01028_β:
 jmp xchain00803_n01029_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01029_α:
 mov rdi, qword ptr [rip + .Lx01031_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00803_n01032_α
 xchain00803_n01029_β:
 jmp xchain00803_n01033_α
.Lx01031_0:
 .quad .Lx01031_0_s
.Lx01031_0_s:
 .string "tocset"
 xchain00803_n01032_α:
  .section .rodata
  .Lcall01034_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01034_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00803_n01033_α
 jmp xchain00803_n01033_α
xchain00803_n01032_β:
 jmp xchain00803_n01033_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01033_α:
 mov rdi, qword ptr [rip + .Lx01035_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00803_n00043_α
 xchain00803_n01033_β:
 jmp xchain00803_n00044_α
.Lx01035_0:
 .quad .Lx01035_0_s
.Lx01035_0_s:
 .string "cssize"
 xchain00803_n00043_α:
  .section .rodata
  .Lcall01036_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01036_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain00803_n00044_α
 jmp xchain00803_n00044_α
xchain00803_n00043_β:
 jmp xchain00803_n00044_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00044_α:
 mov rdi, qword ptr [rip + .Lx01037_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00803_n00045_α
 xchain00803_n00044_β:
 jmp xchain00803_n01038_α
.Lx01037_0:
 .quad .Lx01037_0_s
.Lx01037_0_s:
 .string "cscompl"
 xchain00803_n00045_α:
  .section .rodata
  .Lcall00648_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00648_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00803_n01038_α
 jmp xchain00803_n01038_α
xchain00803_n00045_β:
 jmp xchain00803_n01038_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01038_α:
 mov rdi, qword ptr [rip + .Lx01039_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00803_n00046_α
 xchain00803_n01038_β:
 jmp xchain00803_n01040_α
.Lx01039_0:
 .quad .Lx01039_0_s
.Lx01039_0_s:
 .string "lcreate"
 xchain00803_n00046_α:
  .section .rodata
  .Lcall00650_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00650_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain00803_n01040_α
 jmp xchain00803_n01040_α
xchain00803_n00046_β:
 jmp xchain00803_n01040_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01040_α:
 mov rdi, qword ptr [rip + .Lx01041_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00803_n01042_α
 xchain00803_n01040_β:
 jmp xchain00803_n01043_α
.Lx01041_0:
 .quad .Lx01041_0_s
.Lx01041_0_s:
 .string "lconst"
 xchain00803_n01042_α:
  .section .rodata
  .Lcall01044_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01044_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain00803_n01043_α
 jmp xchain00803_n01043_α
xchain00803_n01042_β:
 jmp xchain00803_n01043_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01043_α:
 mov rdi, qword ptr [rip + .Lx01045_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00803_n00047_α
 xchain00803_n01043_β:
 jmp xchain00803_n00048_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "lcopy"
 xchain00803_n00047_α:
  .section .rodata
  .Lcall01046_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01046_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00803_n00048_α
 jmp xchain00803_n00048_α
xchain00803_n00047_β:
 jmp xchain00803_n00048_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00048_α:
 mov rdi, qword ptr [rip + .Lx01047_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00803_n01048_α
 xchain00803_n00048_β:
 jmp xchain00803_n00085_α
.Lx01047_0:
 .quad .Lx01047_0_s
.Lx01047_0_s:
 .string "lsort"
 xchain00803_n01048_α:
  .section .rodata
  .Lcall00652_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00652_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00803_n00085_α
 jmp xchain00803_n00085_α
xchain00803_n01048_β:
 jmp xchain00803_n00085_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00085_α:
 mov rdi, qword ptr [rip + .Lx01049_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00803_n01050_α
 xchain00803_n00085_β:
 jmp xchain00803_n01051_α
.Lx01049_0:
 .quad .Lx01049_0_s
.Lx01049_0_s:
 .string "lsize"
 xchain00803_n01050_α:
  .section .rodata
  .Lcall01052_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01052_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain00803_n01051_α
 jmp xchain00803_n01051_α
xchain00803_n01050_β:
 jmp xchain00803_n01051_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01051_α:
 mov rdi, qword ptr [rip + .Lx01053_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00803_n00049_α
 xchain00803_n01051_β:
 jmp xchain00803_n00050_α
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "lpick"
 xchain00803_n00049_α:
  .section .rodata
  .Lcall00655_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00655_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain00803_n00050_α
 jmp xchain00803_n00050_α
xchain00803_n00049_β:
 jmp xchain00803_n00050_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00050_α:
 mov rdi, qword ptr [rip + .Lx01054_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00803_n00051_α
 xchain00803_n00050_β:
 jmp xchain00803_n01055_α
.Lx01054_0:
 .quad .Lx01054_0_s
.Lx01054_0_s:
 .string "lbang"
 xchain00803_n00051_α:
  .section .rodata
  .Lcall01056_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01056_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain00803_n01055_α
 jmp xchain00803_n01055_α
xchain00803_n00051_β:
 jmp xchain00803_n01055_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01055_α:
 mov rdi, qword ptr [rip + .Lx01057_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00803_n00052_α
 xchain00803_n01055_β:
 jmp xchain00803_n01058_α
.Lx01057_0:
 .quad .Lx01057_0_s
.Lx01057_0_s:
 .string "lsubscr"
 xchain00803_n00052_α:
  .section .rodata
  .Lcall00657_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00657_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00803_n01058_α
 jmp xchain00803_n01058_α
xchain00803_n00052_β:
 jmp xchain00803_n01058_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01058_α:
 mov rdi, qword ptr [rip + .Lx01059_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00803_n01060_α
 xchain00803_n01058_β:
 jmp xchain00803_n01061_α
.Lx01059_0:
 .quad .Lx01059_0_s
.Lx01059_0_s:
 .string "put1get1"
 xchain00803_n01060_α:
  .section .rodata
  .Lcall01062_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01062_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain00803_n01061_α
 jmp xchain00803_n01061_α
xchain00803_n01060_β:
 jmp xchain00803_n01061_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01061_α:
 mov rdi, qword ptr [rip + .Lx01063_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00803_n00053_α
 xchain00803_n01061_β:
 jmp xchain00803_n00054_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "put2get2"
 xchain00803_n00053_α:
  .section .rodata
  .Lcall00659_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00659_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain00803_n00054_α
 jmp xchain00803_n00054_α
xchain00803_n00053_β:
 jmp xchain00803_n00054_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00054_α:
 mov rdi, qword ptr [rip + .Lx01064_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00803_n00093_α
 xchain00803_n00054_β:
 jmp xchain00803_n01065_α
.Lx01064_0:
 .quad .Lx01064_0_s
.Lx01064_0_s:
 .string "put3get3"
 xchain00803_n00093_α:
  .section .rodata
  .Lcall00661_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00661_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain00803_n01065_α
 jmp xchain00803_n01065_α
xchain00803_n00093_β:
 jmp xchain00803_n01065_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01065_α:
 mov rdi, qword ptr [rip + .Lx01066_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00803_n01067_α
 xchain00803_n01065_β:
 jmp xchain00803_n01068_α
.Lx01066_0:
 .quad .Lx01066_0_s
.Lx01066_0_s:
 .string "put4get4"
 xchain00803_n01067_α:
  .section .rodata
  .Lcall00663_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00663_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain00803_n01068_α
 jmp xchain00803_n01068_α
xchain00803_n01067_β:
 jmp xchain00803_n01068_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01068_α:
 mov rdi, qword ptr [rip + .Lx01069_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00803_n00055_α
 xchain00803_n01068_β:
 jmp xchain00803_n00056_α
.Lx01069_0:
 .quad .Lx01069_0_s
.Lx01069_0_s:
 .string "pushpop"
 xchain00803_n00055_α:
  .section .rodata
  .Lcall01070_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01070_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00803_n00056_α
 jmp xchain00803_n00056_α
xchain00803_n00055_β:
 jmp xchain00803_n00056_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00056_α:
 mov rdi, qword ptr [rip + .Lx01071_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00803_n01072_α
 xchain00803_n00056_β:
 jmp xchain00803_n01073_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "putget12"
 xchain00803_n01072_α:
  .section .rodata
  .Lcall01074_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01074_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain00803_n01073_α
 jmp xchain00803_n01073_α
xchain00803_n01072_β:
 jmp xchain00803_n01073_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01073_α:
 mov rdi, qword ptr [rip + .Lx01075_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00803_n00057_α
 xchain00803_n01073_β:
 jmp xchain00803_n00099_α
.Lx01075_0:
 .quad .Lx01075_0_s
.Lx01075_0_s:
 .string "pushpop12"
 xchain00803_n00057_α:
  .section .rodata
  .Lcall01076_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01076_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00803_n00099_α
 jmp xchain00803_n00099_α
xchain00803_n00057_β:
 jmp xchain00803_n00099_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00099_α:
 mov rdi, qword ptr [rip + .Lx01077_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00803_n01078_α
 xchain00803_n00099_β:
 jmp xchain00803_n01079_α
.Lx01077_0:
 .quad .Lx01077_0_s
.Lx01077_0_s:
 .string "setcreate"
 xchain00803_n01078_α:
  .section .rodata
  .Lcall00664_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00664_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain00803_n01079_α
 jmp xchain00803_n01079_α
xchain00803_n01078_β:
 jmp xchain00803_n01079_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01079_α:
 mov rdi, qword ptr [rip + .Lx01080_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00803_n00058_α
 xchain00803_n01079_β:
 jmp xchain00803_n00059_α
.Lx01080_0:
 .quad .Lx01080_0_s
.Lx01080_0_s:
 .string "setcopy"
 xchain00803_n00058_α:
  .section .rodata
  .Lcall01081_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01081_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00803_n00059_α
 jmp xchain00803_n00059_α
xchain00803_n00058_β:
 jmp xchain00803_n00059_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00059_α:
 mov rdi, qword ptr [rip + .Lx01082_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00803_n01083_α
 xchain00803_n00059_β:
 jmp xchain00803_n01084_α
.Lx01082_0:
 .quad .Lx01082_0_s
.Lx01082_0_s:
 .string "setmember"
 xchain00803_n01083_α:
  .section .rodata
  .Lcall00665_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00665_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain00803_n01084_α
 jmp xchain00803_n01084_α
xchain00803_n01083_β:
 jmp xchain00803_n01084_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01084_α:
 mov rdi, qword ptr [rip + .Lx01085_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00803_n01086_α
 xchain00803_n01084_β:
 jmp xchain00803_n01087_α
.Lx01085_0:
 .quad .Lx01085_0_s
.Lx01085_0_s:
 .string "setinsert"
 xchain00803_n01086_α:
  .section .rodata
  .Lcall01088_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01088_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00803_n01087_α
 jmp xchain00803_n01087_α
xchain00803_n01086_β:
 jmp xchain00803_n01087_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01087_α:
 mov rdi, qword ptr [rip + .Lx01089_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00803_n00060_α
 xchain00803_n01087_β:
 jmp xchain00803_n00061_α
.Lx01089_0:
 .quad .Lx01089_0_s
.Lx01089_0_s:
 .string "setinsdel"
 xchain00803_n00060_α:
  .section .rodata
  .Lcall01090_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01090_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00803_n00061_α
 jmp xchain00803_n00061_α
xchain00803_n00060_β:
 jmp xchain00803_n00061_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00061_α:
 mov rdi, qword ptr [rip + .Lx01091_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00803_n01092_α
 xchain00803_n00061_β:
 jmp xchain00803_n01093_α
.Lx01091_0:
 .quad .Lx01091_0_s
.Lx01091_0_s:
 .string "setbang"
 xchain00803_n01092_α:
  .section .rodata
  .Lcall00667_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00667_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00803_n01093_α
 jmp xchain00803_n01093_α
xchain00803_n01092_β:
 jmp xchain00803_n01093_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01093_α:
 mov rdi, qword ptr [rip + .Lx01094_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00803_n00062_α
 xchain00803_n01093_β:
 jmp xchain00803_n01095_α
.Lx01094_0:
 .quad .Lx01094_0_s
.Lx01094_0_s:
 .string "setpick"
 xchain00803_n00062_α:
  .section .rodata
  .Lcall01096_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01096_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00803_n01095_α
 jmp xchain00803_n01095_α
xchain00803_n00062_β:
 jmp xchain00803_n01095_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01095_α:
 mov rdi, qword ptr [rip + .Lx01097_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00803_n01098_α
 xchain00803_n01095_β:
 jmp xchain00803_n01099_α
.Lx01097_0:
 .quad .Lx01097_0_s
.Lx01097_0_s:
 .string "tblcreate"
 xchain00803_n01098_α:
  .section .rodata
  .Lcall01100_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01100_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00803_n01099_α
 jmp xchain00803_n01099_α
xchain00803_n01098_β:
 jmp xchain00803_n01099_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01099_α:
 mov rdi, qword ptr [rip + .Lx01101_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00803_n00063_α
 xchain00803_n01099_β:
 jmp xchain00803_n00064_α
.Lx01101_0:
 .quad .Lx01101_0_s
.Lx01101_0_s:
 .string "tblsub"
 xchain00803_n00063_α:
  .section .rodata
  .Lcall01102_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01102_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00803_n00064_α
 jmp xchain00803_n00064_α
xchain00803_n00063_β:
 jmp xchain00803_n00064_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00064_α:
 mov rdi, qword ptr [rip + .Lx01103_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00803_n01104_α
 xchain00803_n00064_β:
 jmp xchain00803_n01105_α
.Lx01103_0:
 .quad .Lx01103_0_s
.Lx01103_0_s:
 .string "tblasgn"
 xchain00803_n01104_α:
  .section .rodata
  .Lcall01106_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01106_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain00803_n01105_α
 jmp xchain00803_n01105_α
xchain00803_n01104_β:
 jmp xchain00803_n01105_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01105_α:
 mov rdi, qword ptr [rip + .Lx01107_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00803_n00112_α
 xchain00803_n01105_β:
 jmp xchain00803_n01108_α
.Lx01107_0:
 .quad .Lx01107_0_s
.Lx01107_0_s:
 .string "recconstr"
 xchain00803_n00112_α:
  .section .rodata
  .Lcall01109_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01109_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00803_n01108_α
 jmp xchain00803_n01108_α
xchain00803_n00112_β:
 jmp xchain00803_n01108_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01108_α:
 mov rdi, qword ptr [rip + .Lx01110_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00803_n00065_α
 xchain00803_n01108_β:
 jmp xchain00803_n00066_α
.Lx01110_0:
 .quad .Lx01110_0_s
.Lx01110_0_s:
 .string "reccopy"
 xchain00803_n00065_α:
  .section .rodata
  .Lcall00670_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00670_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00803_n00066_α
 jmp xchain00803_n00066_α
xchain00803_n00065_β:
 jmp xchain00803_n00066_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00066_α:
 mov rdi, qword ptr [rip + .Lx01111_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00803_n00067_α
 xchain00803_n00066_β:
 jmp xchain00803_n01112_α
.Lx01111_0:
 .quad .Lx01111_0_s
.Lx01111_0_s:
 .string "recfield"
 xchain00803_n00067_α:
  .section .rodata
  .Lcall01113_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01113_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00803_n01112_α
 jmp xchain00803_n01112_α
xchain00803_n00067_β:
 jmp xchain00803_n01112_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01112_α:
 mov rdi, qword ptr [rip + .Lx01114_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00803_n01115_α
 xchain00803_n01112_β:
 jmp xchain00803_n00068_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "bigfield"
 xchain00803_n01115_α:
  .section .rodata
  .Lcall01116_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01116_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain00803_n00068_α
 jmp xchain00803_n00068_α
xchain00803_n01115_β:
 jmp xchain00803_n00068_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00068_α:
 mov rdi, qword ptr [rip + .Lx01117_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00803_n01118_α
 xchain00803_n00068_β:
 jmp xchain00803_n00119_α
.Lx01117_0:
 .quad .Lx01117_0_s
.Lx01117_0_s:
 .string "readz"
 xchain00803_n01118_α:
  .section .rodata
  .Lcall01119_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01119_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00803_n00119_α
 jmp xchain00803_n00119_α
xchain00803_n01118_β:
 jmp xchain00803_n00119_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00119_α:
 mov rdi, qword ptr [rip + .Lx01120_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00803_n01121_α
 xchain00803_n00119_β:
 jmp xchain00803_n00069_α
.Lx01120_0:
 .quad .Lx01120_0_s
.Lx01120_0_s:
 .string "writecon"
 xchain00803_n01121_α:
  .section .rodata
  .Lcall01122_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01122_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00803_n00069_α
 jmp xchain00803_n00069_α
xchain00803_n01121_β:
 jmp xchain00803_n00069_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00069_α:
 mov rdi, qword ptr [rip + .Lx01123_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00803_n00070_α
 xchain00803_n00069_β:
 jmp xchain00803_n00122_α
.Lx01123_0:
 .quad .Lx01123_0_s
.Lx01123_0_s:
 .string "writestr"
 xchain00803_n00070_α:
  .section .rodata
  .Lcall00673_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00673_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00803_n00122_α
 jmp xchain00803_n00122_α
xchain00803_n00070_β:
 jmp xchain00803_n00122_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00122_α:
 mov rdi, qword ptr [rip + .Lx01124_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00803_n01125_α
 xchain00803_n00122_β:
 jmp xchain00803_n01126_α
.Lx01124_0:
 .quad .Lx01124_0_s
.Lx01124_0_s:
 .string "cxcreate"
 xchain00803_n01125_α:
  .section .rodata
  .Lcall01127_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01127_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00803_n01126_α
 jmp xchain00803_n01126_α
xchain00803_n01125_β:
 jmp xchain00803_n01126_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01126_α:
 mov rdi, qword ptr [rip + .Lx01128_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00803_n01129_α
 xchain00803_n01126_β:
 jmp xchain00803_n00071_α
.Lx01128_0:
 .quad .Lx01128_0_s
.Lx01128_0_s:
 .string "cxget"
 xchain00803_n01129_α:
  .section .rodata
  .Lcall01130_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01130_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00803_n00071_α
 jmp xchain00803_n00071_α
xchain00803_n01129_β:
 jmp xchain00803_n00071_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n00071_α:
 mov rdi, qword ptr [rip + .Lx01131_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00803_n01132_α
 xchain00803_n00071_β:
 jmp xchain00803_n01133_α
.Lx01131_0:
 .quad .Lx01131_0_s
.Lx01131_0_s:
 .string "nothing"
 xchain00803_n01132_α:
  .section .rodata
  .Lcall01134_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01134_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00803_n01133_α
 jmp xchain00803_n01133_α
xchain00803_n01132_β:
 jmp xchain00803_n01133_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01133_α:
 mov rdi, qword ptr [rip + .Lx01135_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00803_n00073_α
 xchain00803_n01133_β:
 jmp xchain00803_n01136_α
.Lx01135_0:
 .quad .Lx01135_0_s
.Lx01135_0_s:
 .string "nothing"
 xchain00803_n00073_α:
  .section .rodata
  .Lcall01137_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01137_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00803_n01136_α
 jmp xchain00803_n01136_α
xchain00803_n00073_β:
 jmp xchain00803_n01136_α
# IR_PROC_VALUE first-class procedure value
 xchain00803_n01136_α:
 mov rdi, qword ptr [rip + .Lx01138_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00803_n01139_α
 xchain00803_n01136_β:
 jmp xchain00803_n01140_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "nothing"
 xchain00803_n01139_α:
  .section .rodata
  .Lcall00674_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00674_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00803_n01140_α
 jmp xchain00803_n01140_α
xchain00803_n01139_β:
 jmp xchain00803_n01140_α
# IR_KEYWORD_read
 xchain00803_n01140_α:
 mov rdi, qword ptr [rip + .Lx01141_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00803_n00074_α
 xchain00803_n01140_β:
 jmp main_ω
.Lx01141_0:
 .quad .Lx01141_0_s
.Lx01141_0_s:
 .string "&errout"
 xchain00803_n00074_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2897: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2897]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain00803_n00074_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 6880]
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
pop r12
ret
