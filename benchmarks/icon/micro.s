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
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+336]
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
# IR_VAR
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
# IR_VAR
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
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+128]
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
# marshal arg0 = producer-box slot [zr+96] -> [zr+48]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+64]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 72], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+80]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# IR_VAR
 xchain25_n23_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 936], rax
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n8_α
 xchain25_n24_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+992]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn62: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
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
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain25_n27_α
 xchain25_n25_β:
 jmp xchain25_n8_α
.Lx63_0:
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
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx65_2
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx65_2
.Lx65_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 952]
 cqo
 idiv rcx
 mov qword ptr [r12 + 912], 6
 mov qword ptr [r12 + 920], rax
 jmp xchain25_n28_α
.Lx65_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 3
 lea r9, [r12 + 912]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx65_3
.Lx65_2:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n8_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx65_3:
 jmp xchain25_n28_α
 xchain25_n27_β:
 jmp xchain25_n8_α
 xchain25_n28_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx66_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx66_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx66_2
 mov eax, dword ptr [r12 + 912]
 cmp eax, 6
 jne .Lx66_2
.Lx66_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 920]
 cmp rax, rcx
 jl xchain25_n8_α
 mov rcx, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rcx
 mov rcx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rcx
 jmp xchain25_n30_α
.Lx66_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 912]
 mov rcx, qword ptr [r12 + 920]
 mov r8d, 8
 lea r9, [r12 + 880]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx66_1
 cmp eax, 1
 je xchain25_n8_α
 jmp xchain25_n30_α
.Lx66_2:
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
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain25_n31_α
 xchain25_n30_β:
 jmp xchain25_n33_α
.Lx68_0:
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
  .Lrkfn73: .string "collect"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
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
# IR_VAR
 xchain25_n34_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 792], rax
 jmp xchain25_n36_α
 xchain25_n34_β:
 jmp xchain25_n33_α
# IR_KEYWORD_read
 xchain25_n35_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain25_n37_α
 xchain25_n35_β:
 jmp xchain25_n39_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
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
# marshal arg0 = producer-box slot [zr+832] -> [zr+816]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn84: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn84]
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
 mov rdi, qword ptr [rip + .Lx85_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain25_n43_α
 xchain25_n41_β:
 jmp xchain25_n39_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
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
 je .Lx87_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx87_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx87_2
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx87_2
.Lx87_1:
 mov rax, qword ptr [r12 + 1480]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 je xchain25_n39_α
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rcx
 jmp xchain25_n45_α
.Lx87_0:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 10
 lea r9, [r12 + 528]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx87_1
 cmp eax, 1
 je xchain25_n39_α
 jmp xchain25_n45_α
.Lx87_2:
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
# marshal arg0 = producer-box slot [zr+704] -> [zr+688]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn89: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
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
 mov rdi, qword ptr [rip + .Lx96_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain25_n51_α
 xchain25_n49_β:
 jmp xchain25_n52_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
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
# marshal arg0 = producer-box slot [zr+336] -> [zr+320]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn112: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
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
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn114: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn114]
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
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn126: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn126]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn177: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn247: .string "cos"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn261: .string "sqrt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn261]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn276: .string "log"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  .Lcall00035_pname: .string "nullf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00035_pname]
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 16], rax
 pop rsi
proc_nullf_α_body:
proc_nullf_β:
jmp proc_nullf_ω
proc_nullf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_listcall_α_body:
# IR_VAR_REF
 xchain00072_n0_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00072_n1_α
 xchain00072_n0_β:
 jmp xchain00072_n3_α
# IR_NULLTEST_VAR
 xchain00072_n1_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain00072_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00072_n3_α
 cmp eax, 0
 jne xchain00072_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain00072_n2_α
 xchain00072_n1_β:
 jmp xchain00072_n3_α
# IR_LIT_INTEGER
 xchain00072_n2_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00072_n4_α
 xchain00072_n2_β:
 jmp xchain00072_n3_α
.Lx00073_0:
 .quad 1
# IR_VAR
 xchain00072_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00072_n5_α
 xchain00072_n3_β:
 jmp xchain00072_n6_α
# IR_ASSIGN_VAR
 xchain00072_n4_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00072_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00072_n7_α
 xchain00072_n4_β:
 jmp xchain00072_n3_α
# IR_UNOP
 xchain00072_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00072_n6_α
 cmp eax, 0
 jne xchain00072_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00072_n8_α
 xchain00072_n5_β:
 jmp xchain00072_n6_α
# IR_LIT_INTEGER
 xchain00072_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00072_n9_α
 xchain00072_n6_β:
 jmp proc_listcall_ω
.Lx00074_0:
 .quad 1
# IR_MAKE_LIST
 xchain00072_n7_α:
 lea rdi, [r12 + 320]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00072_n10_α
 xchain00072_n7_β:
 jmp xchain00072_n3_α
# IR_LIT_STRING
 xchain00072_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00072_n11_α
 xchain00072_n8_β:
 jmp proc_listcall_ω
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "p ! L"
# IR_VAR
 xchain00072_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00072_n12_α
 xchain00072_n9_β:
 jmp proc_listcall_ω
# IR_ASSIGN gva
 xchain00072_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00072_n13_α
 xchain00072_n10_β:
 jmp xchain00072_n3_α
# IR_RETURN
 xchain00072_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listcall_γ
# IR_TO
 xchain00072_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00076_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00072_n14_α
 xchain00072_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00076_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00072_n13_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00072_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00072_n3_α
 xchain00072_n13_β:
 jmp xchain00072_n3_α
# IR_LIT_STRING
 xchain00072_n14_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00072_n16_α
 xchain00072_n14_β:
 jmp xchain00072_n12_β
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "nullf"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00072_n15_α:
 jmp qword ptr [r12 + 272]
 xchain00072_n15_β:
 jmp xchain00072_n3_α
# IR_VAR
 xchain00072_n16_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00072_n17_α
 xchain00072_n16_β:
 jmp xchain00072_n12_β
 xchain00072_n17_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn316: .string "__apply__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn316]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00072_n12_β
 jmp xchain00072_n12_β
 xchain00072_n17_β:
 jmp xchain00072_n12_β
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_addfunc_α_body:
# IR_VAR
 xchain00078_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00078_n1_α
 xchain00078_n0_β:
 jmp xchain00078_n2_α
# IR_UNOP
 xchain00078_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00078_n2_α
 cmp eax, 0
 jne xchain00078_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00078_n3_α
 xchain00078_n1_β:
 jmp xchain00078_n2_α
# IR_LIT_INTEGER
 xchain00078_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00078_n4_α
 xchain00078_n2_β:
 jmp proc_addfunc_ω
.Lx00079_0:
 .quad 1
# IR_LIT_STRING
 xchain00078_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00078_n5_α
 xchain00078_n3_β:
 jmp proc_addfunc_ω
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "add(4, 7)"
# IR_VAR
 xchain00078_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00078_n6_α
 xchain00078_n4_β:
 jmp proc_addfunc_ω
# IR_RETURN
 xchain00078_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_addfunc_γ
# IR_TO
 xchain00078_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00081_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00078_n7_α
 xchain00078_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00081_0
# IR_LIT_INTEGER
 xchain00078_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00078_n8_α
 xchain00078_n7_β:
 jmp xchain00078_n6_β
.Lx00082_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00078_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00078_n9_α
 xchain00078_n8_β:
 jmp xchain00078_n6_β
.Lx00083_0:
 .quad 7
 xchain00078_n9_α:
  .section .rodata
  .Lcall00048_pname: .string "add"
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
   lea rdi, [rip + .Lcall00048_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00078_n6_β
 jmp xchain00078_n6_β
xchain00078_n9_β:
 jmp xchain00078_n6_β
proc_addfunc_β:
jmp proc_addfunc_ω
proc_addfunc_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 96], rax
 pop rsi
proc_add_α_body:
# IR_VAR
 xchain00084_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
 jmp xchain00084_n1_α
 xchain00084_n0_β:
 jmp proc_add_ω
# IR_VAR
 xchain00084_n1_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
 jmp xchain00084_n2_α
 xchain00084_n1_β:
 jmp proc_add_ω
 xchain00084_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00085_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00085_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00085_2
.Lx00085_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00084_n3_α
.Lx00085_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00085_3
.Lx00085_2:
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
.Lx00085_3:
 jmp xchain00084_n3_α
 xchain00084_n2_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00084_n3_α:
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfact0_α_body:
# IR_VAR
 xchain00086_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp xchain00086_n2_α
# IR_UNOP
 xchain00086_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00086_n2_α
 cmp eax, 0
 jne xchain00086_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00086_n3_α
 xchain00086_n1_β:
 jmp xchain00086_n2_α
# IR_LIT_INTEGER
 xchain00086_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00086_n4_α
 xchain00086_n2_β:
 jmp proc_rfact0_ω
.Lx00087_0:
 .quad 1
# IR_LIT_STRING
 xchain00086_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00086_n5_α
 xchain00086_n3_β:
 jmp proc_rfact0_ω
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "rfact(0)"
# IR_VAR
 xchain00086_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00086_n6_α
 xchain00086_n4_β:
 jmp proc_rfact0_ω
# IR_RETURN
 xchain00086_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact0_γ
# IR_TO
 xchain00086_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00089_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00086_n7_α
 xchain00086_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00089_0
# IR_LIT_INTEGER
 xchain00086_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00086_n8_α
 xchain00086_n7_β:
 jmp xchain00086_n6_β
.Lx00090_0:
 .quad 0
 xchain00086_n8_α:
  .section .rodata
  .Lcall00053_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00053_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00086_n6_β
 jmp xchain00086_n6_β
xchain00086_n8_β:
 jmp xchain00086_n6_β
proc_rfact0_β:
jmp proc_rfact0_ω
proc_rfact0_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfact10_α_body:
# IR_VAR
 xchain00091_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00091_n1_α
 xchain00091_n0_β:
 jmp xchain00091_n2_α
# IR_UNOP
 xchain00091_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00091_n2_α
 cmp eax, 0
 jne xchain00091_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00091_n3_α
 xchain00091_n1_β:
 jmp xchain00091_n2_α
# IR_LIT_INTEGER
 xchain00091_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00091_n4_α
 xchain00091_n2_β:
 jmp proc_rfact10_ω
.Lx00092_0:
 .quad 1
# IR_LIT_STRING
 xchain00091_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00091_n5_α
 xchain00091_n3_β:
 jmp proc_rfact10_ω
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "rfact(10)"
# IR_VAR
 xchain00091_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00091_n6_α
 xchain00091_n4_β:
 jmp proc_rfact10_ω
# IR_RETURN
 xchain00091_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact10_γ
# IR_TO
 xchain00091_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00094_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00091_n7_α
 xchain00091_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00094_0
# IR_LIT_INTEGER
 xchain00091_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00091_n8_α
 xchain00091_n7_β:
 jmp xchain00091_n6_β
.Lx00095_0:
 .quad 10
 xchain00091_n8_α:
  .section .rodata
  .Lcall00096_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00096_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00091_n6_β
 jmp xchain00091_n6_β
xchain00091_n8_β:
 jmp xchain00091_n6_β
proc_rfact10_β:
jmp proc_rfact10_ω
proc_rfact10_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_rfact_α_body:
# IR_VAR
 xchain00097_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00097_n1_α
 xchain00097_n0_β:
 jmp xchain00097_n2_α
# IR_LIT_INTEGER
 xchain00097_n1_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00097_n3_α
 xchain00097_n1_β:
 jmp xchain00097_n2_α
.Lx00098_0:
 .quad 1
# IR_VAR
 xchain00097_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00097_n4_α
 xchain00097_n2_β:
 jmp proc_rfact_ω
 xchain00097_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00099_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00099_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00099_2
.Lx00099_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 cmp rax, rcx
 jge xchain00097_n2_α
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rcx
 jmp xchain00097_n5_α
.Lx00099_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 lea r9, [r12 + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00099_1
 cmp eax, 1
 je xchain00097_n2_α
 jmp xchain00097_n5_α
.Lx00099_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00097_n2_α
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
 jmp xchain00097_n5_α
 xchain00097_n3_β:
 jmp xchain00097_n2_α
# IR_VAR
 xchain00097_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00097_n6_α
 xchain00097_n4_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00097_n5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00097_n7_α
 xchain00097_n5_β:
 jmp proc_rfact_ω
.Lx00100_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00097_n6_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00097_n8_α
 xchain00097_n6_β:
 jmp proc_rfact_ω
.Lx00101_0:
 .quad 1
# IR_RETURN
 xchain00097_n7_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact_γ
 xchain00097_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00102_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00102_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00102_2
.Lx00102_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 184]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00097_n9_α
.Lx00102_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00102_3
.Lx00102_2:
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
.Lx00102_3:
 jmp xchain00097_n9_α
 xchain00097_n8_β:
 jmp proc_rfact_ω
 xchain00097_n9_α:
  .section .rodata
  .Lcall00103_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00103_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00097_n10_α
xchain00097_n9_β:
 jmp proc_rfact_ω
 xchain00097_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00104_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00104_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00104_2
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00104_2
.Lx00104_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 120]
 imul rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00097_n11_α
.Lx00104_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 2
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00104_3
.Lx00104_2:
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
.Lx00104_3:
 jmp xchain00097_n11_α
 xchain00097_n10_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00097_n11_α:
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
proc_rfact_ω:
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
  .globl proc_rfib5_α
proc_rfib5_α:
#=======================================================================================================================
    .global proc_rfib5_α
    .global proc_rfib5_β
    .global proc_rfib5_γ
    .global proc_rfib5_ω
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rfib5_α_body:
# IR_VAR
 xchain00105_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00105_n1_α
 xchain00105_n0_β:
 jmp xchain00105_n2_α
# IR_UNOP
 xchain00105_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00105_n2_α
 cmp eax, 0
 jne xchain00105_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00105_n3_α
 xchain00105_n1_β:
 jmp xchain00105_n2_α
# IR_LIT_INTEGER
 xchain00105_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00105_n4_α
 xchain00105_n2_β:
 jmp proc_rfib5_ω
.Lx00106_0:
 .quad 1
# IR_LIT_STRING
 xchain00105_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00105_n5_α
 xchain00105_n3_β:
 jmp proc_rfib5_ω
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "rfib(5)"
# IR_VAR
 xchain00105_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00105_n6_α
 xchain00105_n4_β:
 jmp proc_rfib5_ω
# IR_RETURN
 xchain00105_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib5_γ
# IR_TO
 xchain00105_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00108_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00105_n7_α
 xchain00105_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00108_0
# IR_LIT_INTEGER
 xchain00105_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00105_n8_α
 xchain00105_n7_β:
 jmp xchain00105_n6_β
.Lx00109_0:
 .quad 5
 xchain00105_n8_α:
  .section .rodata
  .Lcall00110_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00110_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00105_n6_β
 jmp xchain00105_n6_β
xchain00105_n8_β:
 jmp xchain00105_n6_β
proc_rfib5_β:
jmp proc_rfib5_ω
proc_rfib5_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_rfib_α_body:
# IR_VAR
 xchain00111_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00111_n1_α
 xchain00111_n0_β:
 jmp xchain00111_n2_α
# IR_LIT_INTEGER
 xchain00111_n1_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00111_n3_α
 xchain00111_n1_β:
 jmp xchain00111_n2_α
.Lx00112_0:
 .quad 3
# IR_VAR
 xchain00111_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00111_n4_α
 xchain00111_n2_β:
 jmp proc_rfib_ω
 xchain00111_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00113_2
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00113_2
.Lx00113_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jge xchain00111_n2_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rcx
 jmp xchain00111_n5_α
.Lx00113_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 lea r9, [r12 + 256]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00113_1
 cmp eax, 1
 je xchain00111_n2_α
 jmp xchain00111_n5_α
.Lx00113_2:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00111_n2_α
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 jmp xchain00111_n5_α
 xchain00111_n3_β:
 jmp xchain00111_n2_α
# IR_LIT_INTEGER
 xchain00111_n4_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00111_n6_α
 xchain00111_n4_β:
 jmp proc_rfib_ω
.Lx00114_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00111_n5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00111_n7_α
 xchain00111_n5_β:
 jmp proc_rfib_ω
.Lx00115_0:
 .quad 1
 xchain00111_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00116_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00116_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00116_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00116_2
.Lx00116_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00111_n8_α
.Lx00116_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00116_3
.Lx00116_2:
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
.Lx00116_3:
 jmp xchain00111_n8_α
 xchain00111_n6_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00111_n7_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib_γ
 xchain00111_n8_α:
  .section .rodata
  .Lcall00068_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00068_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00111_n9_α
xchain00111_n8_β:
 jmp proc_rfib_ω
# IR_VAR
 xchain00111_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00111_n10_α
 xchain00111_n9_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00111_n10_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00111_n11_α
 xchain00111_n10_β:
 jmp proc_rfib_ω
.Lx00117_0:
 .quad 1
 xchain00111_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00118_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00118_2
.Lx00118_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00111_n12_α
.Lx00118_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00118_3
.Lx00118_2:
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
.Lx00118_3:
 jmp xchain00111_n12_α
 xchain00111_n11_β:
 jmp proc_rfib_ω
 xchain00111_n12_α:
  .section .rodata
  .Lcall00069_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00069_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00111_n13_α
xchain00111_n12_β:
 jmp proc_rfib_ω
 xchain00111_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00119_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00119_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00119_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00119_2
.Lx00119_1:
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00111_n14_α
.Lx00119_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00119_3
.Lx00119_2:
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
.Lx00119_3:
 jmp xchain00111_n14_α
 xchain00111_n13_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00111_n14_α:
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
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_prslow_α_body:
# IR_VAR
 xchain00120_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 jmp xchain00120_n2_α
# IR_UNOP
 xchain00120_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00120_n2_α
 cmp eax, 0
 jne xchain00120_n2_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00120_n3_α
 xchain00120_n1_β:
 jmp xchain00120_n2_α
# IR_LIT_INTEGER
 xchain00120_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00120_n4_α
 xchain00120_n2_β:
 jmp proc_prslow_ω
.Lx00121_0:
 .quad 1
# IR_LIT_STRING
 xchain00120_n3_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00120_n5_α
 xchain00120_n3_β:
 jmp proc_prslow_ω
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "prslow(7)"
# IR_VAR
 xchain00120_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00120_n6_α
 xchain00120_n4_β:
 jmp proc_prslow_ω
# IR_RETURN
 xchain00120_n5_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prslow_γ
# IR_TO
 xchain00120_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00123_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00120_n7_α
 xchain00120_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00123_0
# IR_LIT_INTEGER
 xchain00120_n7_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00120_n8_α
 xchain00120_n7_β:
 jmp xchain00120_n9_α
.Lx00124_0:
 .quad 0
 xchain00120_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00120_n9_α
 xchain00120_n8_β:
 jmp xchain00120_n9_α
# IR_LIT_INTEGER
 xchain00120_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00120_n10_α
 xchain00120_n9_β:
 jmp xchain00120_n6_β
.Lx00125_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00120_n10_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00120_n11_α
 xchain00120_n10_β:
 jmp xchain00120_n6_β
.Lx00126_0:
 .quad 7
# IR_TO
 xchain00120_n11_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00127_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg xchain00120_n6_β
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00120_n12_α
 xchain00120_n11_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00127_0
 xchain00120_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00120_n13_α
 xchain00120_n12_β:
 jmp xchain00120_n6_β
# IR_VAR
 xchain00120_n13_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 312], rax
 jmp xchain00120_n14_α
 xchain00120_n13_β:
 jmp xchain00120_n15_α
# IR_LIT_INTEGER
 xchain00120_n14_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00120_n16_α
 xchain00120_n14_β:
 jmp xchain00120_n15_α
.Lx00128_0:
 .quad 2
# IR_VAR
 xchain00120_n15_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 216], rax
 jmp xchain00120_n17_α
 xchain00120_n15_β:
 jmp xchain00120_n11_β
# IR_VAR
 xchain00120_n16_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 392], rax
 jmp xchain00120_n18_α
 xchain00120_n16_β:
 jmp xchain00120_n15_α
# IR_LIT_INTEGER
 xchain00120_n17_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00120_n19_α
 xchain00120_n17_β:
 jmp xchain00120_n11_β
.Lx00129_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00120_n18_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00120_n20_α
 xchain00120_n18_β:
 jmp xchain00120_n15_α
.Lx00130_0:
 .quad 1
 xchain00120_n19_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 576]
 cmp eax, 100
 je .Lx00131_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00131_0
 mov eax, dword ptr [r12 + 576]
 cmp eax, 6
 jne .Lx00131_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00131_2
.Lx00131_1:
 mov rax, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00120_n21_α
.Lx00131_0:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00131_3
.Lx00131_2:
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n11_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00131_3:
 jmp xchain00120_n21_α
 xchain00120_n19_β:
 jmp xchain00120_n11_β
 xchain00120_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00132_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00132_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00132_2
.Lx00132_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 408]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00120_n22_α
.Lx00132_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00132_3
.Lx00132_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n15_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00132_3:
 jmp xchain00120_n22_α
 xchain00120_n20_β:
 jmp xchain00120_n15_α
 xchain00120_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00120_n23_α
 xchain00120_n21_β:
 jmp xchain00120_n11_β
# IR_TO
 xchain00120_n22_α:
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
.Lx00133_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain00120_n15_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00120_n24_α
 xchain00120_n22_β:
 inc qword ptr [r12 + 336]
 jmp .Lx00133_0
 xchain00120_n23_α:
 jmp xchain00120_n11_β
xchain00120_n23_β:
 jmp xchain00120_n11_β
 xchain00120_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00134_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00134_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00134_2
.Lx00134_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00120_n25_α
.Lx00134_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00134_3
.Lx00134_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n15_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00134_3:
 jmp xchain00120_n25_α
 xchain00120_n24_β:
 jmp xchain00120_n15_α
# IR_LIT_INTEGER
 xchain00120_n25_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00120_n26_α
 xchain00120_n25_β:
 jmp xchain00120_n22_β
.Lx00135_0:
 .quad 0
 xchain00120_n26_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00136_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx00136_2
 mov eax, dword ptr [r12 + 416]
 cmp eax, 6
 jne .Lx00136_2
.Lx00136_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 424]
 cmp rax, rcx
 jne xchain00120_n22_β
 mov rcx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rcx
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rcx
 jmp xchain00120_n11_β
.Lx00136_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 lea r9, [r12 + 272]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00136_1
 cmp eax, 1
 je xchain00120_n22_β
 jmp xchain00120_n11_β
.Lx00136_2:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00120_n22_β
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rax
 jmp xchain00120_n11_β
 xchain00120_n26_β:
 jmp xchain00120_n22_β
 xchain00120_n27_α:
 jmp xchain00120_n11_β
xchain00120_n27_β:
 jmp xchain00120_n11_β
proc_prslow_β:
jmp proc_prslow_ω
proc_prslow_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_if0_α_body:
# IR_VAR
 xchain00137_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00137_n1_α
 xchain00137_n0_β:
 jmp xchain00137_n2_α
# IR_UNOP
 xchain00137_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00137_n2_α
 cmp eax, 0
 jne xchain00137_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00137_n3_α
 xchain00137_n1_β:
 jmp xchain00137_n2_α
# IR_LIT_INTEGER
 xchain00137_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00137_n4_α
 xchain00137_n2_β:
 jmp proc_if0_ω
.Lx00138_0:
 .quad 1
# IR_LIT_STRING
 xchain00137_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00137_n5_α
 xchain00137_n3_β:
 jmp proc_if0_ω
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "if 0 then 1"
# IR_VAR
 xchain00137_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00137_n6_α
 xchain00137_n4_β:
 jmp proc_if0_ω
# IR_RETURN
 xchain00137_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_if0_γ
# IR_TO
 xchain00137_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00140_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00137_n7_α
 xchain00137_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00140_0
# IR_LIT_INTEGER
 xchain00137_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00137_n8_α
 xchain00137_n7_β:
 jmp xchain00137_n6_β
.Lx00141_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00137_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00137_n9_α
 xchain00137_n8_β:
 jmp xchain00137_n6_β
.Lx00142_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00137_n9_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00137_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00137_n6_β
 xchain00137_n9_β:
 jmp xchain00137_n6_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00137_n10_α:
 jmp qword ptr [r12 + 112]
 xchain00137_n10_β:
 jmp xchain00137_n6_β
proc_if0_β:
jmp proc_if0_ω
proc_if0_γ:
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
proc_if0_ω:
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
  .globl proc_case3_α
proc_case3_α:
#=======================================================================================================================
    .global proc_case3_α
    .global proc_case3_β
    .global proc_case3_γ
    .global proc_case3_ω
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
 mov qword ptr [r12 + 624], rax
 pop rsi
proc_case3_α_body:
# IR_VAR
 xchain00143_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00143_n1_α
 xchain00143_n0_β:
 jmp xchain00143_n2_α
# IR_UNOP
 xchain00143_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00143_n2_α
 cmp eax, 0
 jne xchain00143_n2_α
 mov qword ptr [r12 + 592], 0
 mov qword ptr [r12 + 600], 0
 jmp xchain00143_n3_α
 xchain00143_n1_β:
 jmp xchain00143_n2_α
# IR_LIT_INTEGER
 xchain00143_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00143_n4_α
 xchain00143_n2_β:
 jmp proc_case3_ω
.Lx00144_0:
 .quad 1
# IR_LIT_STRING
 xchain00143_n3_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00143_n5_α
 xchain00143_n3_β:
 jmp proc_case3_ω
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "case 3 of..."
# IR_VAR
 xchain00143_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00143_n6_α
 xchain00143_n4_β:
 jmp proc_case3_ω
# IR_RETURN
 xchain00143_n5_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_case3_γ
# IR_TO
 xchain00143_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00146_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00143_n7_α
 xchain00143_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00146_0
# IR_LIT_INTEGER
 xchain00143_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00143_n8_α
 xchain00143_n7_β:
 jmp xchain00143_n6_β
.Lx00147_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00143_n8_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00143_n9_α
 xchain00143_n8_β:
 jmp xchain00143_n6_β
.Lx00148_0:
 .quad 1
 xchain00143_n9_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+512]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn480: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn480]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00143_n11_α
 jmp xchain00143_n10_α
 xchain00143_n9_β:
 jmp xchain00143_n11_α
# IR_LIT_INTEGER
 xchain00143_n10_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00143_n12_α
 xchain00143_n10_β:
 jmp xchain00143_n6_β
.Lx00149_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00143_n11_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00143_n13_α
 xchain00143_n11_β:
 jmp xchain00143_n6_β
.Lx00150_0:
 .quad 2
 xchain00143_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00143_n14_α
 xchain00143_n12_β:
 jmp xchain00143_n6_β
 xchain00143_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+416]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+432]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn485: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn485]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00143_n16_α
 jmp xchain00143_n15_α
 xchain00143_n13_β:
 jmp xchain00143_n16_α
# IR_VAR
 xchain00143_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 104], rax
 jmp xchain00143_n6_β
 xchain00143_n14_β:
 jmp xchain00143_n6_β
# IR_LIT_INTEGER
 xchain00143_n15_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00143_n17_α
 xchain00143_n15_β:
 jmp xchain00143_n6_β
.Lx00151_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00143_n16_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00143_n18_α
 xchain00143_n16_β:
 jmp xchain00143_n6_β
.Lx00152_0:
 .quad 3
 xchain00143_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00143_n14_α
 xchain00143_n17_β:
 jmp xchain00143_n6_β
 xchain00143_n18_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+320]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+336]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn492: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn492]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00143_n20_α
 jmp xchain00143_n19_α
 xchain00143_n18_β:
 jmp xchain00143_n20_α
# IR_LIT_INTEGER
 xchain00143_n19_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00143_n21_α
 xchain00143_n19_β:
 jmp xchain00143_n6_β
.Lx00153_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00143_n20_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00143_n22_α
 xchain00143_n20_β:
 jmp xchain00143_n6_β
.Lx00154_0:
 .quad 4
 xchain00143_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00143_n14_α
 xchain00143_n21_β:
 jmp xchain00143_n6_β
 xchain00143_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+224]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+240]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn497: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn497]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00143_n24_α
 jmp xchain00143_n23_α
 xchain00143_n22_β:
 jmp xchain00143_n24_α
# IR_LIT_INTEGER
 xchain00143_n23_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00143_n25_α
 xchain00143_n23_β:
 jmp xchain00143_n6_β
.Lx00155_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00143_n24_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00143_n26_α
 xchain00143_n24_β:
 jmp xchain00143_n6_β
.Lx00156_0:
 .quad 0
 xchain00143_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00143_n14_α
 xchain00143_n25_β:
 jmp xchain00143_n6_β
 xchain00143_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00143_n14_α
 xchain00143_n26_β:
 jmp xchain00143_n6_β
proc_case3_β:
jmp proc_case3_ω
proc_case3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_nulltest_α_body:
# IR_VAR
 xchain00157_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00157_n1_α
 xchain00157_n0_β:
 jmp xchain00157_n2_α
# IR_UNOP
 xchain00157_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00157_n2_α
 cmp eax, 0
 jne xchain00157_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00157_n3_α
 xchain00157_n1_β:
 jmp xchain00157_n2_α
# IR_LIT_INTEGER
 xchain00157_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00157_n4_α
 xchain00157_n2_β:
 jmp proc_nulltest_ω
.Lx00158_0:
 .quad 1
# IR_LIT_STRING
 xchain00157_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00157_n5_α
 xchain00157_n3_β:
 jmp proc_nulltest_ω
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "\\8"
# IR_VAR
 xchain00157_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00157_n6_α
 xchain00157_n4_β:
 jmp proc_nulltest_ω
# IR_RETURN
 xchain00157_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nulltest_γ
# IR_TO
 xchain00157_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00160_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00157_n7_α
 xchain00157_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00160_0
# IR_LIT_INTEGER
 xchain00157_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00157_n8_α
 xchain00157_n7_β:
 jmp xchain00157_n6_β
.Lx00161_0:
 .quad 8
# IR_UNOP
 xchain00157_n8_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 99
 je xchain00157_n6_β
 cmp eax, 0
 je xchain00157_n6_β
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
 jmp xchain00157_n6_β
 xchain00157_n8_β:
 jmp xchain00157_n6_β
proc_nulltest_β:
jmp proc_nulltest_ω
proc_nulltest_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_typef_α_body:
# IR_VAR
 xchain00162_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00162_n1_α
 xchain00162_n0_β:
 jmp xchain00162_n2_α
# IR_UNOP
 xchain00162_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00162_n2_α
 cmp eax, 0
 jne xchain00162_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00162_n3_α
 xchain00162_n1_β:
 jmp xchain00162_n2_α
# IR_LIT_INTEGER
 xchain00162_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00162_n4_α
 xchain00162_n2_β:
 jmp proc_typef_ω
.Lx00163_0:
 .quad 1
# IR_LIT_STRING
 xchain00162_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00162_n5_α
 xchain00162_n3_β:
 jmp proc_typef_ω
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "type(s)"
# IR_VAR
 xchain00162_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00162_n6_α
 xchain00162_n4_β:
 jmp proc_typef_ω
# IR_RETURN
 xchain00162_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_typef_γ
# IR_TO
 xchain00162_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00165_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00162_n7_α
 xchain00162_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00165_0
# IR_LIT_STRING
 xchain00162_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00162_n8_α
 xchain00162_n7_β:
 jmp xchain00162_n6_β
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "abcde"
 xchain00162_n8_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn528: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00162_n6_β
 jmp xchain00162_n6_β
 xchain00162_n8_β:
 jmp xchain00162_n6_β
proc_typef_β:
jmp proc_typef_ω
proc_typef_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_imagef_α_body:
# IR_VAR
 xchain00167_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00167_n1_α
 xchain00167_n0_β:
 jmp xchain00167_n2_α
# IR_UNOP
 xchain00167_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00167_n2_α
 cmp eax, 0
 jne xchain00167_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00167_n3_α
 xchain00167_n1_β:
 jmp xchain00167_n2_α
# IR_LIT_INTEGER
 xchain00167_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00167_n4_α
 xchain00167_n2_β:
 jmp proc_imagef_ω
.Lx00168_0:
 .quad 1
# IR_LIT_STRING
 xchain00167_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00167_n5_α
 xchain00167_n3_β:
 jmp proc_imagef_ω
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "image(s)"
# IR_VAR
 xchain00167_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00167_n6_α
 xchain00167_n4_β:
 jmp proc_imagef_ω
# IR_RETURN
 xchain00167_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_imagef_γ
# IR_TO
 xchain00167_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00170_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00167_n7_α
 xchain00167_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00170_0
# IR_LIT_STRING
 xchain00167_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00167_n8_α
 xchain00167_n7_β:
 jmp xchain00167_n6_β
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "ab\tcd"
 xchain00167_n8_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn542: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn542]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00167_n6_β
 jmp xchain00167_n6_β
 xchain00167_n8_β:
 jmp xchain00167_n6_β
proc_imagef_β:
jmp proc_imagef_ω
proc_imagef_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_marshal_α_body:
# IR_VAR
 xchain00172_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00172_n1_α
 xchain00172_n0_β:
 jmp xchain00172_n2_α
# IR_UNOP
 xchain00172_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00172_n2_α
 cmp eax, 0
 jne xchain00172_n2_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00172_n3_α
 xchain00172_n1_β:
 jmp xchain00172_n2_α
# IR_LIT_INTEGER
 xchain00172_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00172_n4_α
 xchain00172_n2_β:
 jmp proc_marshal_ω
.Lx00173_0:
 .quad 1
# IR_LIT_STRING
 xchain00172_n3_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00172_n5_α
 xchain00172_n3_β:
 jmp proc_marshal_ω
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "2(3,1,4,1,6)"
# IR_VAR
 xchain00172_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00172_n6_α
 xchain00172_n4_β:
 jmp proc_marshal_ω
# IR_RETURN
 xchain00172_n5_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_marshal_γ
# IR_TO
 xchain00172_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00175_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00172_n7_α
 xchain00172_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00175_0
# IR_LIT_INTEGER
 xchain00172_n7_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00172_n8_α
 xchain00172_n7_β:
 jmp xchain00172_n6_β
.Lx00176_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00172_n8_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00172_n9_α
 xchain00172_n8_β:
 jmp xchain00172_n6_β
.Lx00177_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00172_n9_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00172_n10_α
 xchain00172_n9_β:
 jmp xchain00172_n6_β
.Lx00178_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00172_n10_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00172_n11_α
 xchain00172_n10_β:
 jmp xchain00172_n6_β
.Lx00179_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00172_n11_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00172_n12_α
 xchain00172_n11_β:
 jmp xchain00172_n6_β
.Lx00180_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00172_n12_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00172_n13_α
 xchain00172_n12_β:
 jmp xchain00172_n6_β
.Lx00181_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
 xchain00172_n13_α:
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
 je xchain00172_n6_β
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00172_n6_β
 xchain00172_n13_β:
 jmp xchain00172_n6_β
proc_marshal_β:
jmp proc_marshal_ω
proc_marshal_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_conj5_α_body:
# IR_VAR
 xchain00182_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00182_n1_α
 xchain00182_n0_β:
 jmp xchain00182_n2_α
# IR_UNOP
 xchain00182_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00182_n2_α
 cmp eax, 0
 jne xchain00182_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00182_n3_α
 xchain00182_n1_β:
 jmp xchain00182_n2_α
# IR_LIT_INTEGER
 xchain00182_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00182_n4_α
 xchain00182_n2_β:
 jmp proc_conj5_ω
.Lx00183_0:
 .quad 1
# IR_LIT_STRING
 xchain00182_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00182_n5_α
 xchain00182_n3_β:
 jmp proc_conj5_ω
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "1&2&3&4&5"
# IR_VAR
 xchain00182_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00182_n6_α
 xchain00182_n4_β:
 jmp proc_conj5_ω
# IR_RETURN
 xchain00182_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_conj5_γ
# IR_TO
 xchain00182_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00185_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00182_n7_α
 xchain00182_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00185_0
# IR_LIT_INTEGER
 xchain00182_n7_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00182_n8_α
 xchain00182_n7_β:
 jmp xchain00182_n6_β
.Lx00186_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00182_n8_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00182_n9_α
 xchain00182_n8_β:
 jmp xchain00182_n6_β
.Lx00187_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00182_n9_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00182_n10_α
 xchain00182_n9_β:
 jmp xchain00182_n6_β
.Lx00188_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00182_n10_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00182_n11_α
 xchain00182_n10_β:
 jmp xchain00182_n6_β
.Lx00189_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00182_n11_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00182_n12_α
 xchain00182_n11_β:
 jmp xchain00182_n6_β
.Lx00190_0:
 .quad 5
 xchain00182_n12_α:
 jmp xchain00182_n6_β
xchain00182_n12_β:
 jmp xchain00182_n6_β
proc_conj5_β:
jmp proc_conj5_ω
proc_conj5_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_everyalt_α_body:
# IR_VAR
 xchain00191_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00191_n1_α
 xchain00191_n0_β:
 jmp xchain00191_n2_α
# IR_UNOP
 xchain00191_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00191_n2_α
 cmp eax, 0
 jne xchain00191_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00191_n3_α
 xchain00191_n1_β:
 jmp xchain00191_n2_α
# IR_LIT_INTEGER
 xchain00191_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00191_n4_α
 xchain00191_n2_β:
 jmp proc_everyalt_ω
.Lx00192_0:
 .quad 1
# IR_LIT_STRING
 xchain00191_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00191_n5_α
 xchain00191_n3_β:
 jmp proc_everyalt_ω
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "1|2|3|4|5"
# IR_VAR
 xchain00191_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00191_n6_α
 xchain00191_n4_β:
 jmp proc_everyalt_ω
# IR_RETURN
 xchain00191_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyalt_γ
# IR_TO
 xchain00191_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00194_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00191_n7_α
 xchain00191_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00194_0
# IR_LIT_INTEGER
 xchain00191_n7_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00191_n8_α
 xchain00191_n7_β:
 jmp xchain00191_n9_α
.Lx00195_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00191_n8_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00191_n9_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00191_n10_α
 xchain00191_n8_β:
 jmp xchain00191_n6_β
# IR_LIT_INTEGER
 xchain00191_n9_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00191_n11_α
 xchain00191_n9_β:
 jmp xchain00191_n12_α
.Lx00196_0:
 .quad 2
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00191_n10_α:
 jmp qword ptr [r12 + 112]
 xchain00191_n10_β:
 jmp xchain00191_n6_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00191_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00191_n12_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00191_n10_α
 xchain00191_n11_β:
 jmp xchain00191_n6_β
# IR_LIT_INTEGER
 xchain00191_n12_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00191_n13_α
 xchain00191_n12_β:
 jmp xchain00191_n14_α
.Lx00197_0:
 .quad 3
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00191_n13_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00191_n14_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00191_n10_α
 xchain00191_n13_β:
 jmp xchain00191_n6_β
# IR_LIT_INTEGER
 xchain00191_n14_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00191_n15_α
 xchain00191_n14_β:
 jmp xchain00191_n16_α
.Lx00198_0:
 .quad 4
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00191_n15_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00191_n16_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00191_n10_α
 xchain00191_n15_β:
 jmp xchain00191_n6_β
# IR_LIT_INTEGER
 xchain00191_n16_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00191_n17_α
 xchain00191_n16_β:
 jmp xchain00191_n6_β
.Lx00199_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00191_n17_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00191_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00191_n10_α
 xchain00191_n17_β:
 jmp xchain00191_n6_β
proc_everyalt_β:
jmp proc_everyalt_ω
proc_everyalt_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_everyto_α_body:
# IR_VAR
 xchain00200_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00200_n1_α
 xchain00200_n0_β:
 jmp xchain00200_n2_α
# IR_UNOP
 xchain00200_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00200_n2_α
 cmp eax, 0
 jne xchain00200_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00200_n3_α
 xchain00200_n1_β:
 jmp xchain00200_n2_α
# IR_LIT_INTEGER
 xchain00200_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00200_n4_α
 xchain00200_n2_β:
 jmp proc_everyto_ω
.Lx00201_0:
 .quad 1
# IR_LIT_STRING
 xchain00200_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00200_n5_α
 xchain00200_n3_β:
 jmp proc_everyto_ω
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "1 to 5"
# IR_VAR
 xchain00200_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00200_n6_α
 xchain00200_n4_β:
 jmp proc_everyto_ω
# IR_RETURN
 xchain00200_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyto_γ
# IR_TO
 xchain00200_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00203_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00200_n7_α
 xchain00200_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00203_0
# IR_LIT_INTEGER
 xchain00200_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00200_n8_α
 xchain00200_n7_β:
 jmp xchain00200_n6_β
.Lx00204_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00200_n8_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00200_n9_α
 xchain00200_n8_β:
 jmp xchain00200_n6_β
.Lx00205_0:
 .quad 5
# IR_TO
 xchain00200_n9_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00206_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00200_n6_β
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00200_n9_β
 xchain00200_n9_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00206_0
proc_everyto_β:
jmp proc_everyto_ω
proc_everyto_γ:
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
proc_everyto_ω:
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
  .globl proc_evsusp_α
proc_evsusp_α:
#=======================================================================================================================
    .global proc_evsusp_α
    .global proc_evsusp_β
    .global proc_evsusp_γ
    .global proc_evsusp_ω
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
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_evsusp_α_body:
# IR_VAR
 xchain00207_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00207_n1_α
 xchain00207_n0_β:
 jmp xchain00207_n2_α
# IR_UNOP
 xchain00207_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00207_n2_α
 cmp eax, 0
 jne xchain00207_n2_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00207_n3_α
 xchain00207_n1_β:
 jmp xchain00207_n2_α
# IR_VAR
 xchain00207_n2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00207_n4_α
 xchain00207_n2_β:
 jmp proc_evsusp_ω
# IR_LIT_STRING
 xchain00207_n3_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00207_n5_α
 xchain00207_n3_β:
 jmp proc_evsusp_ω
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "suspend i"
 xchain00207_n4_α:
  .section .rodata
  .Lcall00209_pname: .string "susproc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00209_pname]
 mov esi, 1
 lea rdx, [r12 + 64]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00207_n4_β
xchain00207_n4_β:
 lea rdi, [r12 + 64]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00207_n4_β
# IR_RETURN
 xchain00207_n5_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_evsusp_γ
proc_evsusp_β:
jmp proc_evsusp_ω
proc_evsusp_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 176]
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
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
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
lea rax, [rip + xchain00210_n3_β]
mov qword ptr [r12 + 96], rax
# IR_LIT_INTEGER
 xchain00210_n0_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00210_n1_α
 xchain00210_n0_β:
 jmp proc_susproc_ω
.Lx00211_0:
 .quad 1
# IR_VAR
 xchain00210_n1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00210_n2_α
 xchain00210_n1_β:
 jmp proc_susproc_ω
# IR_TO
 xchain00210_n2_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00212_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00210_n3_α
 xchain00210_n2_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00212_0
# IR_SUSPEND yield+resume
 xchain00210_n3_α:
 lea rax, [rip + xchain00210_n3_β]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_susproc_γ
 xchain00210_n3_β:
 jmp xchain00210_n2_β
proc_susproc_β:
jmp qword ptr [r12 + 96]
proc_susproc_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_intcoerce_α_body:
# IR_VAR
 xchain00213_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp xchain00213_n2_α
# IR_UNOP
 xchain00213_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00213_n2_α
 cmp eax, 0
 jne xchain00213_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00213_n3_α
 xchain00213_n1_β:
 jmp xchain00213_n2_α
# IR_LIT_INTEGER
 xchain00213_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00213_n4_α
 xchain00213_n2_β:
 jmp proc_intcoerce_ω
.Lx00214_0:
 .quad 1
# IR_LIT_STRING
 xchain00213_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00213_n5_α
 xchain00213_n3_β:
 jmp proc_intcoerce_ω
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "+\"407\""
# IR_VAR
 xchain00213_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00213_n6_α
 xchain00213_n4_β:
 jmp proc_intcoerce_ω
# IR_RETURN
 xchain00213_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcoerce_γ
# IR_TO
 xchain00213_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00216_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00213_n7_α
 xchain00213_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00216_0
# IR_LIT_STRING
 xchain00213_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00213_n8_α
 xchain00213_n7_β:
 jmp xchain00213_n6_β
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "407"
# IR_UNOP
 xchain00213_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00213_n6_β
 xchain00213_n8_β:
 jmp xchain00213_n6_β
proc_intcoerce_β:
jmp proc_intcoerce_ω
proc_intcoerce_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_realcoerce_α_body:
# IR_VAR
 xchain00218_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00218_n1_α
 xchain00218_n0_β:
 jmp xchain00218_n2_α
# IR_UNOP
 xchain00218_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00218_n2_α
 cmp eax, 0
 jne xchain00218_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00218_n3_α
 xchain00218_n1_β:
 jmp xchain00218_n2_α
# IR_LIT_INTEGER
 xchain00218_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00218_n4_α
 xchain00218_n2_β:
 jmp proc_realcoerce_ω
.Lx00219_0:
 .quad 1
# IR_LIT_STRING
 xchain00218_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00218_n5_α
 xchain00218_n3_β:
 jmp proc_realcoerce_ω
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "+\"7.25\""
# IR_VAR
 xchain00218_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00218_n6_α
 xchain00218_n4_β:
 jmp proc_realcoerce_ω
# IR_RETURN
 xchain00218_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcoerce_γ
# IR_TO
 xchain00218_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00221_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00218_n7_α
 xchain00218_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00221_0
# IR_LIT_STRING
 xchain00218_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00218_n8_α
 xchain00218_n7_β:
 jmp xchain00218_n6_β
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "7.25"
# IR_UNOP
 xchain00218_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00218_n6_β
 xchain00218_n8_β:
 jmp xchain00218_n6_β
proc_realcoerce_β:
jmp proc_realcoerce_ω
proc_realcoerce_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strcoerce_α_body:
# IR_VAR
 xchain00223_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00223_n1_α
 xchain00223_n0_β:
 jmp xchain00223_n2_α
# IR_UNOP
 xchain00223_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00223_n2_α
 cmp eax, 0
 jne xchain00223_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00223_n3_α
 xchain00223_n1_β:
 jmp xchain00223_n2_α
# IR_LIT_INTEGER
 xchain00223_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00223_n4_α
 xchain00223_n2_β:
 jmp proc_strcoerce_ω
.Lx00224_0:
 .quad 1
# IR_LIT_STRING
 xchain00223_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00223_n5_α
 xchain00223_n3_β:
 jmp proc_strcoerce_ω
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "*407"
# IR_VAR
 xchain00223_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00223_n6_α
 xchain00223_n4_β:
 jmp proc_strcoerce_ω
# IR_RETURN
 xchain00223_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoerce_γ
# IR_TO
 xchain00223_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00226_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00223_n7_α
 xchain00223_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00226_0
# IR_LIT_INTEGER
 xchain00223_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00223_n8_α
 xchain00223_n7_β:
 jmp xchain00223_n6_β
.Lx00227_0:
 .quad 407
# IR_UNOP
 xchain00223_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00223_n6_β
 xchain00223_n8_β:
 jmp xchain00223_n6_β
proc_strcoerce_β:
jmp proc_strcoerce_ω
proc_strcoerce_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strcoercer_α_body:
# IR_VAR
 xchain00228_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00228_n1_α
 xchain00228_n0_β:
 jmp xchain00228_n2_α
# IR_UNOP
 xchain00228_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00228_n2_α
 cmp eax, 0
 jne xchain00228_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00228_n3_α
 xchain00228_n1_β:
 jmp xchain00228_n2_α
# IR_LIT_INTEGER
 xchain00228_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00228_n4_α
 xchain00228_n2_β:
 jmp proc_strcoercer_ω
.Lx00229_0:
 .quad 1
# IR_LIT_STRING
 xchain00228_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00228_n5_α
 xchain00228_n3_β:
 jmp proc_strcoercer_ω
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "*7.25"
# IR_VAR
 xchain00228_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00228_n6_α
 xchain00228_n4_β:
 jmp proc_strcoercer_ω
# IR_RETURN
 xchain00228_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoercer_γ
# IR_TO
 xchain00228_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00231_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00228_n7_α
 xchain00228_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00231_0
# IR_LIT_REAL
 xchain00228_n7_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00228_n8_α
 xchain00228_n7_β:
 jmp xchain00228_n6_β
.Lx00232_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00228_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00228_n6_β
 xchain00228_n8_β:
 jmp xchain00228_n6_β
proc_strcoercer_β:
jmp proc_strcoercer_ω
proc_strcoercer_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tointeger_α_body:
# IR_VAR
 xchain00233_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00233_n1_α
 xchain00233_n0_β:
 jmp xchain00233_n2_α
# IR_UNOP
 xchain00233_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00233_n2_α
 cmp eax, 0
 jne xchain00233_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00233_n3_α
 xchain00233_n1_β:
 jmp xchain00233_n2_α
# IR_LIT_INTEGER
 xchain00233_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00233_n4_α
 xchain00233_n2_β:
 jmp proc_tointeger_ω
.Lx00234_0:
 .quad 1
# IR_LIT_STRING
 xchain00233_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00233_n5_α
 xchain00233_n3_β:
 jmp proc_tointeger_ω
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "integer(\"407\")"
# IR_VAR
 xchain00233_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00233_n6_α
 xchain00233_n4_β:
 jmp proc_tointeger_ω
# IR_RETURN
 xchain00233_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tointeger_γ
# IR_TO
 xchain00233_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00236_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00233_n7_α
 xchain00233_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00236_0
# IR_LIT_STRING
 xchain00233_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00233_n8_α
 xchain00233_n7_β:
 jmp xchain00233_n6_β
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "407"
 xchain00233_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn704: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn704]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00233_n6_β
 jmp xchain00233_n6_β
 xchain00233_n8_β:
 jmp xchain00233_n6_β
proc_tointeger_β:
jmp proc_tointeger_ω
proc_tointeger_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_toreal_α_body:
# IR_VAR
 xchain00238_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00238_n1_α
 xchain00238_n0_β:
 jmp xchain00238_n2_α
# IR_UNOP
 xchain00238_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00238_n2_α
 cmp eax, 0
 jne xchain00238_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00238_n3_α
 xchain00238_n1_β:
 jmp xchain00238_n2_α
# IR_LIT_INTEGER
 xchain00238_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00238_n4_α
 xchain00238_n2_β:
 jmp proc_toreal_ω
.Lx00239_0:
 .quad 1
# IR_LIT_STRING
 xchain00238_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00238_n5_α
 xchain00238_n3_β:
 jmp proc_toreal_ω
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "real(\"7.25\")"
# IR_VAR
 xchain00238_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00238_n6_α
 xchain00238_n4_β:
 jmp proc_toreal_ω
# IR_RETURN
 xchain00238_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_toreal_γ
# IR_TO
 xchain00238_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00241_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00238_n7_α
 xchain00238_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00241_0
# IR_LIT_STRING
 xchain00238_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00238_n8_α
 xchain00238_n7_β:
 jmp xchain00238_n6_β
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "407"
 xchain00238_n8_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn718: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00238_n6_β
 jmp xchain00238_n6_β
 xchain00238_n8_β:
 jmp xchain00238_n6_β
proc_toreal_β:
jmp proc_toreal_ω
proc_toreal_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tostring_α_body:
# IR_VAR
 xchain00243_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00243_n1_α
 xchain00243_n0_β:
 jmp xchain00243_n2_α
# IR_UNOP
 xchain00243_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00243_n2_α
 cmp eax, 0
 jne xchain00243_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00243_n3_α
 xchain00243_n1_β:
 jmp xchain00243_n2_α
# IR_LIT_INTEGER
 xchain00243_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00243_n4_α
 xchain00243_n2_β:
 jmp proc_tostring_ω
.Lx00244_0:
 .quad 1
# IR_LIT_STRING
 xchain00243_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00243_n5_α
 xchain00243_n3_β:
 jmp proc_tostring_ω
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "string(407)"
# IR_VAR
 xchain00243_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00243_n6_α
 xchain00243_n4_β:
 jmp proc_tostring_ω
# IR_RETURN
 xchain00243_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tostring_γ
# IR_TO
 xchain00243_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00246_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00243_n7_α
 xchain00243_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00246_0
# IR_LIT_INTEGER
 xchain00243_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00243_n8_α
 xchain00243_n7_β:
 jmp xchain00243_n6_β
.Lx00247_0:
 .quad 407
 xchain00243_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn732: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn732]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00243_n6_β
 jmp xchain00243_n6_β
 xchain00243_n8_β:
 jmp xchain00243_n6_β
proc_tostring_β:
jmp proc_tostring_ω
proc_tostring_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_rtostring_α_body:
# IR_VAR
 xchain00248_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00248_n1_α
 xchain00248_n0_β:
 jmp xchain00248_n2_α
# IR_UNOP
 xchain00248_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00248_n2_α
 cmp eax, 0
 jne xchain00248_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00248_n3_α
 xchain00248_n1_β:
 jmp xchain00248_n2_α
# IR_LIT_INTEGER
 xchain00248_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00248_n4_α
 xchain00248_n2_β:
 jmp proc_rtostring_ω
.Lx00249_0:
 .quad 1
# IR_LIT_STRING
 xchain00248_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00248_n5_α
 xchain00248_n3_β:
 jmp proc_rtostring_ω
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "string(7.25)"
# IR_VAR
 xchain00248_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00248_n6_α
 xchain00248_n4_β:
 jmp proc_rtostring_ω
# IR_RETURN
 xchain00248_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rtostring_γ
# IR_TO
 xchain00248_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00251_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00248_n7_α
 xchain00248_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00251_0
# IR_LIT_REAL
 xchain00248_n7_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00248_n8_α
 xchain00248_n7_β:
 jmp xchain00248_n6_β
.Lx00252_0:
 .quad 4619848792751996928
 xchain00248_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn746: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn746]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00248_n6_β
 jmp xchain00248_n6_β
 xchain00248_n8_β:
 jmp xchain00248_n6_β
proc_rtostring_β:
jmp proc_rtostring_ω
proc_rtostring_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_tocset_α_body:
# IR_VAR
 xchain00253_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00253_n1_α
 xchain00253_n0_β:
 jmp xchain00253_n2_α
# IR_UNOP
 xchain00253_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00253_n2_α
 cmp eax, 0
 jne xchain00253_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00253_n3_α
 xchain00253_n1_β:
 jmp xchain00253_n2_α
# IR_LIT_INTEGER
 xchain00253_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00253_n4_α
 xchain00253_n2_β:
 jmp proc_tocset_ω
.Lx00254_0:
 .quad 1
# IR_LIT_STRING
 xchain00253_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00253_n5_α
 xchain00253_n3_β:
 jmp proc_tocset_ω
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "cset(\"407\")"
# IR_VAR
 xchain00253_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00253_n6_α
 xchain00253_n4_β:
 jmp proc_tocset_ω
# IR_RETURN
 xchain00253_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tocset_γ
# IR_TO
 xchain00253_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00256_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00253_n7_α
 xchain00253_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00256_0
# IR_LIT_STRING
 xchain00253_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00253_n8_α
 xchain00253_n7_β:
 jmp xchain00253_n6_β
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "407"
 xchain00253_n8_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn760: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn760]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00253_n6_β
 jmp xchain00253_n6_β
 xchain00253_n8_β:
 jmp xchain00253_n6_β
proc_tocset_β:
jmp proc_tocset_ω
proc_tocset_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_charf_α_body:
# IR_VAR
 xchain00258_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00258_n1_α
 xchain00258_n0_β:
 jmp xchain00258_n2_α
# IR_UNOP
 xchain00258_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00258_n2_α
 cmp eax, 0
 jne xchain00258_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00258_n3_α
 xchain00258_n1_β:
 jmp xchain00258_n2_α
# IR_LIT_INTEGER
 xchain00258_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00258_n4_α
 xchain00258_n2_β:
 jmp proc_charf_ω
.Lx00259_0:
 .quad 1
# IR_LIT_STRING
 xchain00258_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00258_n5_α
 xchain00258_n3_β:
 jmp proc_charf_ω
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "char(65)"
# IR_VAR
 xchain00258_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00258_n6_α
 xchain00258_n4_β:
 jmp proc_charf_ω
# IR_RETURN
 xchain00258_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_charf_γ
# IR_TO
 xchain00258_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00261_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00258_n7_α
 xchain00258_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00261_0
# IR_LIT_INTEGER
 xchain00258_n7_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00258_n8_α
 xchain00258_n7_β:
 jmp xchain00258_n6_β
.Lx00262_0:
 .quad 65
 xchain00258_n8_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn774: .string "char"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn774]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00258_n6_β
 jmp xchain00258_n6_β
 xchain00258_n8_β:
 jmp xchain00258_n6_β
proc_charf_β:
jmp proc_charf_ω
proc_charf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_ordf_α_body:
# IR_VAR
 xchain00263_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00263_n1_α
 xchain00263_n0_β:
 jmp xchain00263_n2_α
# IR_UNOP
 xchain00263_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00263_n2_α
 cmp eax, 0
 jne xchain00263_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00263_n3_α
 xchain00263_n1_β:
 jmp xchain00263_n2_α
# IR_LIT_INTEGER
 xchain00263_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00263_n4_α
 xchain00263_n2_β:
 jmp proc_ordf_ω
.Lx00264_0:
 .quad 1
# IR_LIT_STRING
 xchain00263_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00263_n5_α
 xchain00263_n3_β:
 jmp proc_ordf_ω
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "ord(\"A\")"
# IR_VAR
 xchain00263_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00263_n6_α
 xchain00263_n4_β:
 jmp proc_ordf_ω
# IR_RETURN
 xchain00263_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_ordf_γ
# IR_TO
 xchain00263_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00266_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00263_n7_α
 xchain00263_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00266_0
# IR_LIT_STRING
 xchain00263_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00263_n8_α
 xchain00263_n7_β:
 jmp xchain00263_n6_β
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "A"
 xchain00263_n8_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn788: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn788]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00263_n6_β
 jmp xchain00263_n6_β
 xchain00263_n8_β:
 jmp xchain00263_n6_β
proc_ordf_β:
jmp proc_ordf_ω
proc_ordf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_strsize_α_body:
# IR_VAR
 xchain00268_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00268_n1_α
 xchain00268_n0_β:
 jmp xchain00268_n2_α
# IR_UNOP
 xchain00268_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00268_n2_α
 cmp eax, 0
 jne xchain00268_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00268_n3_α
 xchain00268_n1_β:
 jmp xchain00268_n2_α
# IR_LIT_INTEGER
 xchain00268_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00268_n4_α
 xchain00268_n2_β:
 jmp proc_strsize_ω
.Lx00269_0:
 .quad 1
# IR_LIT_STRING
 xchain00268_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00268_n5_α
 xchain00268_n3_β:
 jmp proc_strsize_ω
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "*\"abcde\""
# IR_VAR
 xchain00268_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00268_n6_α
 xchain00268_n4_β:
 jmp proc_strsize_ω
# IR_RETURN
 xchain00268_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsize_γ
# IR_TO
 xchain00268_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00271_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00268_n7_α
 xchain00268_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00271_0
# IR_LIT_STRING
 xchain00268_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00268_n8_α
 xchain00268_n7_β:
 jmp xchain00268_n6_β
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "abcde"
# IR_UNOP
 xchain00268_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00268_n6_β
 xchain00268_n8_β:
 jmp xchain00268_n6_β
proc_strsize_β:
jmp proc_strsize_ω
proc_strsize_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_concat_α_body:
# IR_VAR
 xchain00273_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00273_n1_α
 xchain00273_n0_β:
 jmp xchain00273_n2_α
# IR_UNOP
 xchain00273_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00273_n2_α
 cmp eax, 0
 jne xchain00273_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00273_n3_α
 xchain00273_n1_β:
 jmp xchain00273_n2_α
# IR_LIT_INTEGER
 xchain00273_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00273_n4_α
 xchain00273_n2_β:
 jmp proc_concat_ω
.Lx00274_0:
 .quad 1
# IR_LIT_STRING
 xchain00273_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00273_n5_α
 xchain00273_n3_β:
 jmp proc_concat_ω
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "\"a\" || \"b\""
# IR_VAR
 xchain00273_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00273_n6_α
 xchain00273_n4_β:
 jmp proc_concat_ω
# IR_RETURN
 xchain00273_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_concat_γ
# IR_TO
 xchain00273_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00276_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00273_n7_α
 xchain00273_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00276_0
# IR_LIT_STRING
 xchain00273_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00273_n8_α
 xchain00273_n7_β:
 jmp xchain00273_n6_β
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00273_n8_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00273_n9_α
 xchain00273_n8_β:
 jmp xchain00273_n6_β
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "b"
 xchain00273_n9_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00273_n6_β
 xchain00273_n9_β:
 jmp xchain00273_n6_β
proc_concat_β:
jmp proc_concat_ω
proc_concat_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strpick_α_body:
# IR_VAR
 xchain00279_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00279_n1_α
 xchain00279_n0_β:
 jmp xchain00279_n2_α
# IR_UNOP
 xchain00279_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00279_n2_α
 cmp eax, 0
 jne xchain00279_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00279_n3_α
 xchain00279_n1_β:
 jmp xchain00279_n2_α
# IR_LIT_INTEGER
 xchain00279_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00279_n4_α
 xchain00279_n2_β:
 jmp proc_strpick_ω
.Lx00280_0:
 .quad 1
# IR_LIT_STRING
 xchain00279_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00279_n5_α
 xchain00279_n3_β:
 jmp proc_strpick_ω
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "?\"abcde\""
# IR_VAR
 xchain00279_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00279_n6_α
 xchain00279_n4_β:
 jmp proc_strpick_ω
# IR_RETURN
 xchain00279_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strpick_γ
# IR_TO
 xchain00279_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00282_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00279_n7_α
 xchain00279_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00282_0
# IR_LIT_STRING
 xchain00279_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00279_n8_α
 xchain00279_n7_β:
 jmp xchain00279_n6_β
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "abcde"
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00279_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00279_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00279_n9_α
 xchain00279_n8_β:
 jmp xchain00279_n6_β
# IR_DEREF variable -> value
 xchain00279_n9_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00279_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00279_n6_β
 xchain00279_n9_β:
 jmp xchain00279_n6_β
proc_strpick_β:
jmp proc_strpick_ω
proc_strpick_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strbang_α_body:
# IR_VAR
 xchain00284_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00284_n1_α
 xchain00284_n0_β:
 jmp xchain00284_n2_α
# IR_UNOP
 xchain00284_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00284_n2_α
 cmp eax, 0
 jne xchain00284_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00284_n3_α
 xchain00284_n1_β:
 jmp xchain00284_n2_α
# IR_LIT_INTEGER
 xchain00284_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00284_n4_α
 xchain00284_n2_β:
 jmp proc_strbang_ω
.Lx00285_0:
 .quad 1
# IR_LIT_STRING
 xchain00284_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00284_n5_α
 xchain00284_n3_β:
 jmp proc_strbang_ω
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "!\"12345\""
# IR_VAR
 xchain00284_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00284_n6_α
 xchain00284_n4_β:
 jmp proc_strbang_ω
# IR_RETURN
 xchain00284_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strbang_γ
# IR_TO
 xchain00284_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00287_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00284_n7_α
 xchain00284_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00287_0
# IR_LIT_STRING
 xchain00284_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00284_n8_α
 xchain00284_n7_β:
 jmp xchain00284_n6_β
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00284_n8_α:
 mov qword ptr [r12 + 112], 0
.Lx00289_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00284_n6_β
 jmp xchain00284_n8_β
 xchain00284_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00289_0
proc_strbang_β:
jmp proc_strbang_ω
proc_strbang_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_strsub_α_body:
# IR_VAR
 xchain00290_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00290_n1_α
 xchain00290_n0_β:
 jmp xchain00290_n2_α
# IR_UNOP
 xchain00290_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00290_n2_α
 cmp eax, 0
 jne xchain00290_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00290_n3_α
 xchain00290_n1_β:
 jmp xchain00290_n2_α
# IR_LIT_INTEGER
 xchain00290_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00290_n4_α
 xchain00290_n2_β:
 jmp proc_strsub_ω
.Lx00291_0:
 .quad 1
# IR_LIT_STRING
 xchain00290_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00290_n5_α
 xchain00290_n3_β:
 jmp proc_strsub_ω
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "\"abcde\"[3]"
# IR_VAR
 xchain00290_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00290_n6_α
 xchain00290_n4_β:
 jmp proc_strsub_ω
# IR_RETURN
 xchain00290_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsub_γ
# IR_TO
 xchain00290_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00293_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00290_n7_α
 xchain00290_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00293_0
# IR_LIT_STRING
 xchain00290_n7_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00290_n8_α
 xchain00290_n7_β:
 jmp xchain00290_n6_β
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00290_n8_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00290_n9_α
 xchain00290_n8_β:
 jmp xchain00290_n6_β
.Lx00295_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00290_n9_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00290_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00290_n10_α
 xchain00290_n9_β:
 jmp xchain00290_n6_β
# IR_DEREF variable -> value
 xchain00290_n10_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00290_n6_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00290_n6_β
 xchain00290_n10_β:
 jmp xchain00290_n6_β
proc_strsub_β:
jmp proc_strsub_ω
proc_strsub_γ:
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
proc_strsub_ω:
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
  .globl proc_substr_α
proc_substr_α:
#=======================================================================================================================
    .global proc_substr_α
    .global proc_substr_β
    .global proc_substr_γ
    .global proc_substr_ω
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
 mov qword ptr [r12 + 240], rax
 pop rsi
proc_substr_α_body:
# IR_VAR
 xchain00296_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00296_n1_α
 xchain00296_n0_β:
 jmp xchain00296_n2_α
# IR_UNOP
 xchain00296_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00296_n2_α
 cmp eax, 0
 jne xchain00296_n2_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00296_n3_α
 xchain00296_n1_β:
 jmp xchain00296_n2_α
# IR_LIT_INTEGER
 xchain00296_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00296_n4_α
 xchain00296_n2_β:
 jmp proc_substr_ω
.Lx00297_0:
 .quad 1
# IR_LIT_STRING
 xchain00296_n3_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00296_n5_α
 xchain00296_n3_β:
 jmp proc_substr_ω
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "\"abcde\"[2:5]"
# IR_VAR
 xchain00296_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00296_n6_α
 xchain00296_n4_β:
 jmp proc_substr_ω
# IR_RETURN
 xchain00296_n5_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_substr_γ
# IR_TO
 xchain00296_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00299_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00296_n7_α
 xchain00296_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00299_0
# IR_LIT_STRING
 xchain00296_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00296_n8_α
 xchain00296_n7_β:
 jmp xchain00296_n6_β
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00296_n8_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00296_n9_α
 xchain00296_n8_β:
 jmp xchain00296_n6_β
.Lx00301_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00296_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00296_n10_α
 xchain00296_n9_β:
 jmp xchain00296_n6_β
.Lx00302_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00296_n10_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00296_n6_β
 xchain00296_n10_β:
 jmp xchain00296_n6_β
proc_substr_β:
jmp proc_substr_ω
proc_substr_γ:
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
proc_substr_ω:
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
  .globl proc_subsasg_α
proc_subsasg_α:
#=======================================================================================================================
    .global proc_subsasg_α
    .global proc_subsasg_β
    .global proc_subsasg_γ
    .global proc_subsasg_ω
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_subsasg_α_body:
# IR_VAR
 xchain00303_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00303_n1_α
 xchain00303_n0_β:
 jmp xchain00303_n2_α
# IR_UNOP
 xchain00303_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00303_n2_α
 cmp eax, 0
 jne xchain00303_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00303_n3_α
 xchain00303_n1_β:
 jmp xchain00303_n2_α
# IR_LIT_INTEGER
 xchain00303_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00303_n4_α
 xchain00303_n2_β:
 jmp proc_subsasg_ω
.Lx00304_0:
 .quad 1
# IR_LIT_STRING
 xchain00303_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00303_n5_α
 xchain00303_n3_β:
 jmp proc_subsasg_ω
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "s[2:5] := \"x\""
# IR_VAR
 xchain00303_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00303_n6_α
 xchain00303_n4_β:
 jmp proc_subsasg_ω
# IR_RETURN
 xchain00303_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_subsasg_γ
# IR_TO
 xchain00303_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00306_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00303_n7_α
 xchain00303_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00306_0
# IR_LIT_STRING
 xchain00303_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00303_n8_α
 xchain00303_n7_β:
 jmp xchain00303_n6_β
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "abcde"
 xchain00303_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00303_n9_α
 xchain00303_n8_β:
 jmp xchain00303_n6_β
# IR_LIT_INTEGER
 xchain00303_n9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00308_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00303_n10_α
 xchain00303_n9_β:
 jmp xchain00303_n6_β
.Lx00308_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00303_n10_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00303_n11_α
 xchain00303_n10_β:
 jmp xchain00303_n6_β
.Lx00309_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00303_n11_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00303_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00303_n12_α
 xchain00303_n11_β:
 jmp xchain00303_n6_β
# IR_LIT_STRING
 xchain00303_n12_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00303_n13_α
 xchain00303_n12_β:
 jmp xchain00303_n6_β
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "x"
# IR_ASSIGN_VAR
 xchain00303_n13_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00303_n6_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00303_n6_β
 xchain00303_n13_β:
 jmp xchain00303_n6_β
proc_subsasg_β:
jmp proc_subsasg_ω
proc_subsasg_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_strcmp_α_body:
# IR_VAR
 xchain00311_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00311_n1_α
 xchain00311_n0_β:
 jmp xchain00311_n2_α
# IR_UNOP
 xchain00311_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00311_n2_α
 cmp eax, 0
 jne xchain00311_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00311_n3_α
 xchain00311_n1_β:
 jmp xchain00311_n2_α
# IR_LIT_INTEGER
 xchain00311_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00311_n4_α
 xchain00311_n2_β:
 jmp proc_strcmp_ω
.Lx00312_0:
 .quad 1
# IR_LIT_STRING
 xchain00311_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00311_n5_α
 xchain00311_n3_β:
 jmp proc_strcmp_ω
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "\"abc\">>\"aaa\""
# IR_VAR
 xchain00311_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00311_n6_α
 xchain00311_n4_β:
 jmp proc_strcmp_ω
# IR_RETURN
 xchain00311_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcmp_γ
# IR_TO
 xchain00311_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00314_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00311_n7_α
 xchain00311_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00314_0
# IR_LIT_STRING
 xchain00311_n7_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00311_n8_α
 xchain00311_n7_β:
 jmp xchain00311_n6_β
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00311_n8_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00311_n9_α
 xchain00311_n8_β:
 jmp xchain00311_n6_β
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "aaa"
 xchain00311_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00311_n6_β
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00311_n6_β
 xchain00311_n9_β:
 jmp xchain00311_n6_β
proc_strcmp_β:
jmp proc_strcmp_ω
proc_strcmp_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_strident_α_body:
# IR_VAR
 xchain00317_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00317_n1_α
 xchain00317_n0_β:
 jmp xchain00317_n2_α
# IR_UNOP
 xchain00317_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00317_n2_α
 cmp eax, 0
 jne xchain00317_n2_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00317_n3_α
 xchain00317_n1_β:
 jmp xchain00317_n2_α
# IR_LIT_INTEGER
 xchain00317_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00317_n4_α
 xchain00317_n2_β:
 jmp proc_strident_ω
.Lx00318_0:
 .quad 1
# IR_LIT_STRING
 xchain00317_n3_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00319_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00317_n5_α
 xchain00317_n3_β:
 jmp proc_strident_ω
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "\"abc\"===\"aaa\""
# IR_VAR
 xchain00317_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00317_n6_α
 xchain00317_n4_β:
 jmp proc_strident_ω
# IR_RETURN
 xchain00317_n5_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strident_γ
# IR_TO
 xchain00317_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00320_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00317_n6_β
 xchain00317_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00320_0
proc_strident_β:
jmp proc_strident_ω
proc_strident_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_replf_α_body:
# IR_VAR
 xchain00321_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00321_n1_α
 xchain00321_n0_β:
 jmp xchain00321_n2_α
# IR_UNOP
 xchain00321_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00321_n2_α
 cmp eax, 0
 jne xchain00321_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00321_n3_α
 xchain00321_n1_β:
 jmp xchain00321_n2_α
# IR_LIT_INTEGER
 xchain00321_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00321_n4_α
 xchain00321_n2_β:
 jmp proc_replf_ω
.Lx00322_0:
 .quad 1
# IR_LIT_STRING
 xchain00321_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00321_n5_α
 xchain00321_n3_β:
 jmp proc_replf_ω
.Lx00323_0:
 .quad .Lx00323_0_s
.Lx00323_0_s:
 .string "repl(\"-\",20)"
# IR_VAR
 xchain00321_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00321_n6_α
 xchain00321_n4_β:
 jmp proc_replf_ω
# IR_RETURN
 xchain00321_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_replf_γ
# IR_TO
 xchain00321_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00324_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00321_n7_α
 xchain00321_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00324_0
# IR_LIT_STRING
 xchain00321_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00321_n8_α
 xchain00321_n7_β:
 jmp xchain00321_n6_β
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00321_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00321_n9_α
 xchain00321_n8_β:
 jmp xchain00321_n6_β
.Lx00326_0:
 .quad 20
 xchain00321_n9_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn931: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn931]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00321_n6_β
 jmp xchain00321_n6_β
 xchain00321_n9_β:
 jmp xchain00321_n6_β
proc_replf_β:
jmp proc_replf_ω
proc_replf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_reversef_α_body:
# IR_VAR
 xchain00327_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00327_n1_α
 xchain00327_n0_β:
 jmp xchain00327_n2_α
# IR_UNOP
 xchain00327_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00327_n2_α
 cmp eax, 0
 jne xchain00327_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00327_n3_α
 xchain00327_n1_β:
 jmp xchain00327_n2_α
# IR_LIT_INTEGER
 xchain00327_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00327_n4_α
 xchain00327_n2_β:
 jmp proc_reversef_ω
.Lx00328_0:
 .quad 1
# IR_LIT_STRING
 xchain00327_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00327_n5_α
 xchain00327_n3_β:
 jmp proc_reversef_ω
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "reverse(\"a...z\")"
# IR_VAR
 xchain00327_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00327_n6_α
 xchain00327_n4_β:
 jmp proc_reversef_ω
# IR_RETURN
 xchain00327_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reversef_γ
# IR_TO
 xchain00327_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00330_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00327_n7_α
 xchain00327_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00330_0
# IR_LIT_STRING
 xchain00327_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00327_n8_α
 xchain00327_n7_β:
 jmp xchain00327_n6_β
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00327_n8_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn945: .string "reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn945]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00327_n6_β
 jmp xchain00327_n6_β
 xchain00327_n8_β:
 jmp xchain00327_n6_β
proc_reversef_β:
jmp proc_reversef_ω
proc_reversef_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_leftf_α_body:
# IR_VAR
 xchain00332_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00332_n1_α
 xchain00332_n0_β:
 jmp xchain00332_n2_α
# IR_UNOP
 xchain00332_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00332_n2_α
 cmp eax, 0
 jne xchain00332_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00332_n3_α
 xchain00332_n1_β:
 jmp xchain00332_n2_α
# IR_LIT_INTEGER
 xchain00332_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00332_n4_α
 xchain00332_n2_β:
 jmp proc_leftf_ω
.Lx00333_0:
 .quad 1
# IR_LIT_STRING
 xchain00332_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00332_n5_α
 xchain00332_n3_β:
 jmp proc_leftf_ω
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "left(\"a\",10)"
# IR_VAR
 xchain00332_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00332_n6_α
 xchain00332_n4_β:
 jmp proc_leftf_ω
# IR_RETURN
 xchain00332_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_leftf_γ
# IR_TO
 xchain00332_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00335_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00332_n7_α
 xchain00332_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00335_0
# IR_LIT_STRING
 xchain00332_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00332_n8_α
 xchain00332_n7_β:
 jmp xchain00332_n6_β
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00332_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00332_n9_α
 xchain00332_n8_β:
 jmp xchain00332_n6_β
.Lx00337_0:
 .quad 10
 xchain00332_n9_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn960: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn960]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00332_n6_β
 jmp xchain00332_n6_β
 xchain00332_n9_β:
 jmp xchain00332_n6_β
proc_leftf_β:
jmp proc_leftf_ω
proc_leftf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_centerf_α_body:
# IR_VAR
 xchain00338_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00338_n1_α
 xchain00338_n0_β:
 jmp xchain00338_n2_α
# IR_UNOP
 xchain00338_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00338_n2_α
 cmp eax, 0
 jne xchain00338_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00338_n3_α
 xchain00338_n1_β:
 jmp xchain00338_n2_α
# IR_LIT_INTEGER
 xchain00338_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00338_n4_α
 xchain00338_n2_β:
 jmp proc_centerf_ω
.Lx00339_0:
 .quad 1
# IR_LIT_STRING
 xchain00338_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00338_n5_α
 xchain00338_n3_β:
 jmp proc_centerf_ω
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "center(\"a\",10)"
# IR_VAR
 xchain00338_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00338_n6_α
 xchain00338_n4_β:
 jmp proc_centerf_ω
# IR_RETURN
 xchain00338_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_centerf_γ
# IR_TO
 xchain00338_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00341_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00338_n7_α
 xchain00338_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00341_0
# IR_LIT_STRING
 xchain00338_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00338_n8_α
 xchain00338_n7_β:
 jmp xchain00338_n6_β
.Lx00342_0:
 .quad .Lx00342_0_s
.Lx00342_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00338_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00338_n9_α
 xchain00338_n8_β:
 jmp xchain00338_n6_β
.Lx00343_0:
 .quad 10
 xchain00338_n9_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn975: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn975]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00338_n6_β
 jmp xchain00338_n6_β
 xchain00338_n9_β:
 jmp xchain00338_n6_β
proc_centerf_β:
jmp proc_centerf_ω
proc_centerf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_rightf_α_body:
# IR_VAR
 xchain00344_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00344_n1_α
 xchain00344_n0_β:
 jmp xchain00344_n2_α
# IR_UNOP
 xchain00344_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00344_n2_α
 cmp eax, 0
 jne xchain00344_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00344_n3_α
 xchain00344_n1_β:
 jmp xchain00344_n2_α
# IR_LIT_INTEGER
 xchain00344_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00344_n4_α
 xchain00344_n2_β:
 jmp proc_rightf_ω
.Lx00345_0:
 .quad 1
# IR_LIT_STRING
 xchain00344_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00344_n5_α
 xchain00344_n3_β:
 jmp proc_rightf_ω
.Lx00346_0:
 .quad .Lx00346_0_s
.Lx00346_0_s:
 .string "right(\"a\",10)"
# IR_VAR
 xchain00344_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00344_n6_α
 xchain00344_n4_β:
 jmp proc_rightf_ω
# IR_RETURN
 xchain00344_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rightf_γ
# IR_TO
 xchain00344_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00347_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00344_n7_α
 xchain00344_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00347_0
# IR_LIT_STRING
 xchain00344_n7_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00344_n8_α
 xchain00344_n7_β:
 jmp xchain00344_n6_β
.Lx00348_0:
 .quad .Lx00348_0_s
.Lx00348_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00344_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00349_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00344_n9_α
 xchain00344_n8_β:
 jmp xchain00344_n6_β
.Lx00349_0:
 .quad 10
 xchain00344_n9_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn990: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn990]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00344_n6_β
 jmp xchain00344_n6_β
 xchain00344_n9_β:
 jmp xchain00344_n6_β
proc_rightf_β:
jmp proc_rightf_ω
proc_rightf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_trimf_α_body:
# IR_VAR
 xchain00350_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00350_n1_α
 xchain00350_n0_β:
 jmp xchain00350_n2_α
# IR_UNOP
 xchain00350_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00350_n2_α
 cmp eax, 0
 jne xchain00350_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00350_n3_α
 xchain00350_n1_β:
 jmp xchain00350_n2_α
# IR_LIT_INTEGER
 xchain00350_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00350_n4_α
 xchain00350_n2_β:
 jmp proc_trimf_ω
.Lx00351_0:
 .quad 1
# IR_LIT_STRING
 xchain00350_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00350_n5_α
 xchain00350_n3_β:
 jmp proc_trimf_ω
.Lx00352_0:
 .quad .Lx00352_0_s
.Lx00352_0_s:
 .string "trim(\"a  ...\")"
# IR_VAR
 xchain00350_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00350_n6_α
 xchain00350_n4_β:
 jmp proc_trimf_ω
# IR_RETURN
 xchain00350_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_trimf_γ
# IR_TO
 xchain00350_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00353_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00350_n7_α
 xchain00350_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00353_0
# IR_LIT_STRING
 xchain00350_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00350_n8_α
 xchain00350_n7_β:
 jmp xchain00350_n6_β
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "a         "
 xchain00350_n8_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1004: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1004]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00350_n6_β
 jmp xchain00350_n6_β
 xchain00350_n8_β:
 jmp xchain00350_n6_β
proc_trimf_β:
jmp proc_trimf_ω
proc_trimf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_entabf_α_body:
# IR_VAR
 xchain00355_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00355_n1_α
 xchain00355_n0_β:
 jmp xchain00355_n2_α
# IR_UNOP
 xchain00355_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00355_n2_α
 cmp eax, 0
 jne xchain00355_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00355_n3_α
 xchain00355_n1_β:
 jmp xchain00355_n2_α
# IR_LIT_INTEGER
 xchain00355_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00355_n4_α
 xchain00355_n2_β:
 jmp proc_entabf_ω
.Lx00356_0:
 .quad 1
# IR_LIT_STRING
 xchain00355_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00355_n5_α
 xchain00355_n3_β:
 jmp proc_entabf_ω
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string "entab(\"a  ...\")"
# IR_VAR
 xchain00355_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00355_n6_α
 xchain00355_n4_β:
 jmp proc_entabf_ω
# IR_RETURN
 xchain00355_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_entabf_γ
# IR_TO
 xchain00355_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00358_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00355_n7_α
 xchain00355_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00358_0
# IR_LIT_STRING
 xchain00355_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00355_n8_α
 xchain00355_n7_β:
 jmp xchain00355_n6_β
.Lx00359_0:
 .quad .Lx00359_0_s
.Lx00359_0_s:
 .string "a         "
 xchain00355_n8_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1018: .string "entab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1018]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00355_n6_β
 jmp xchain00355_n6_β
 xchain00355_n8_β:
 jmp xchain00355_n6_β
proc_entabf_β:
jmp proc_entabf_ω
proc_entabf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_detabf_α_body:
# IR_VAR
 xchain00360_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00360_n1_α
 xchain00360_n0_β:
 jmp xchain00360_n2_α
# IR_UNOP
 xchain00360_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00360_n2_α
 cmp eax, 0
 jne xchain00360_n2_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00360_n3_α
 xchain00360_n1_β:
 jmp xchain00360_n2_α
# IR_LIT_INTEGER
 xchain00360_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00360_n4_α
 xchain00360_n2_β:
 jmp proc_detabf_ω
.Lx00361_0:
 .quad 1
# IR_LIT_STRING
 xchain00360_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00360_n5_α
 xchain00360_n3_β:
 jmp proc_detabf_ω
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_VAR
 xchain00360_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00360_n6_α
 xchain00360_n4_β:
 jmp proc_detabf_ω
# IR_RETURN
 xchain00360_n5_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_detabf_γ
# IR_TO
 xchain00360_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00363_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00360_n7_α
 xchain00360_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00363_0
# IR_LIT_STRING
 xchain00360_n7_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00360_n8_α
 xchain00360_n7_β:
 jmp xchain00360_n6_β
.Lx00364_0:
 .quad .Lx00364_0_s
.Lx00364_0_s:
 .string "a\tb\tc"
 xchain00360_n8_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1032: .string "detab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1032]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00360_n6_β
 jmp xchain00360_n6_β
 xchain00360_n8_β:
 jmp xchain00360_n6_β
proc_detabf_β:
jmp proc_detabf_ω
proc_detabf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_mapf_α_body:
# IR_VAR
 xchain00365_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00365_n1_α
 xchain00365_n0_β:
 jmp xchain00365_n2_α
# IR_UNOP
 xchain00365_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00365_n2_α
 cmp eax, 0
 jne xchain00365_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00365_n3_α
 xchain00365_n1_β:
 jmp xchain00365_n2_α
# IR_LIT_INTEGER
 xchain00365_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00365_n4_α
 xchain00365_n2_β:
 jmp proc_mapf_ω
.Lx00366_0:
 .quad 1
# IR_LIT_STRING
 xchain00365_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00365_n5_α
 xchain00365_n3_β:
 jmp proc_mapf_ω
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_VAR
 xchain00365_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00365_n6_α
 xchain00365_n4_β:
 jmp proc_mapf_ω
# IR_RETURN
 xchain00365_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mapf_γ
# IR_TO
 xchain00365_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00368_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00365_n7_α
 xchain00365_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00368_0
# IR_LIT_STRING
 xchain00365_n7_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00365_n8_α
 xchain00365_n7_β:
 jmp xchain00365_n6_β
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00365_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00365_n9_α
 xchain00365_n8_β:
 jmp xchain00365_n6_β
.Lx00370_0:
 .quad .Lx00370_0_s
.Lx00370_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00365_n9_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00371_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00365_n10_α
 xchain00365_n9_β:
 jmp xchain00365_n6_β
.Lx00371_0:
 .quad .Lx00371_0_s
.Lx00371_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00365_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1048: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1048]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00365_n6_β
 jmp xchain00365_n6_β
 xchain00365_n10_β:
 jmp xchain00365_n6_β
proc_mapf_β:
jmp proc_mapf_ω
proc_mapf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_map1_α_body:
# IR_VAR
 xchain00372_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00372_n1_α
 xchain00372_n0_β:
 jmp xchain00372_n2_α
# IR_UNOP
 xchain00372_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00372_n2_α
 cmp eax, 0
 jne xchain00372_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00372_n3_α
 xchain00372_n1_β:
 jmp xchain00372_n2_α
# IR_LIT_INTEGER
 xchain00372_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00372_n4_α
 xchain00372_n2_β:
 jmp proc_map1_ω
.Lx00373_0:
 .quad 1
# IR_LIT_STRING
 xchain00372_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00372_n5_α
 xchain00372_n3_β:
 jmp proc_map1_ω
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_VAR
 xchain00372_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00372_n6_α
 xchain00372_n4_β:
 jmp proc_map1_ω
# IR_RETURN
 xchain00372_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map1_γ
# IR_TO
 xchain00372_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00375_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00372_n7_α
 xchain00372_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00375_0
# IR_LIT_STRING
 xchain00372_n7_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00372_n8_α
 xchain00372_n7_β:
 jmp xchain00372_n6_β
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00372_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00372_n9_α
 xchain00372_n8_β:
 jmp xchain00372_n6_β
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00372_n9_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00372_n10_α
 xchain00372_n9_β:
 jmp xchain00372_n6_β
.Lx00378_0:
 .quad .Lx00378_0_s
.Lx00378_0_s:
 .string "ba"
 xchain00372_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1064: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1064]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00372_n6_β
 jmp xchain00372_n6_β
 xchain00372_n10_β:
 jmp xchain00372_n6_β
proc_map1_β:
jmp proc_map1_ω
proc_map1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_map2_α_body:
# IR_VAR
 xchain00379_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 392], rax
 jmp xchain00379_n1_α
 xchain00379_n0_β:
 jmp xchain00379_n2_α
# IR_UNOP
 xchain00379_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00379_n2_α
 cmp eax, 0
 jne xchain00379_n2_α
 mov qword ptr [r12 + 368], 0
 mov qword ptr [r12 + 376], 0
 jmp xchain00379_n3_α
 xchain00379_n1_β:
 jmp xchain00379_n2_α
# IR_LIT_INTEGER
 xchain00379_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00379_n4_α
 xchain00379_n2_β:
 jmp proc_map2_ω
.Lx00380_0:
 .quad 1
# IR_LIT_STRING
 xchain00379_n3_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00379_n5_α
 xchain00379_n3_β:
 jmp proc_map2_ω
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_VAR
 xchain00379_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00379_n6_α
 xchain00379_n4_β:
 jmp proc_map2_ω
# IR_RETURN
 xchain00379_n5_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map2_γ
# IR_TO
 xchain00379_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00382_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00379_n7_α
 xchain00379_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00382_0
# IR_LIT_STRING
 xchain00379_n7_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00379_n8_α
 xchain00379_n7_β:
 jmp xchain00379_n6_β
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00379_n8_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00379_n9_α
 xchain00379_n8_β:
 jmp xchain00379_n6_β
.Lx00384_0:
 .quad .Lx00384_0_s
.Lx00384_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00379_n9_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00379_n10_α
 xchain00379_n9_β:
 jmp xchain00379_n6_β
.Lx00385_0:
 .quad .Lx00385_0_s
.Lx00385_0_s:
 .string "ba"
 xchain00379_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1080: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1080]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00379_n6_β
 jmp xchain00379_n11_α
 xchain00379_n10_β:
 jmp xchain00379_n6_β
# IR_LIT_STRING
 xchain00379_n11_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00379_n12_α
 xchain00379_n11_β:
 jmp xchain00379_n6_β
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "c"
# IR_LIT_STRING
 xchain00379_n12_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00387_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00379_n13_α
 xchain00379_n12_β:
 jmp xchain00379_n6_β
.Lx00387_0:
 .quad .Lx00387_0_s
.Lx00387_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00379_n13_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00379_n14_α
 xchain00379_n13_β:
 jmp xchain00379_n6_β
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string "cd"
 xchain00379_n14_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn1085: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1085]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00379_n6_β
 jmp xchain00379_n15_α
 xchain00379_n14_β:
 jmp xchain00379_n6_β
 xchain00379_n15_α:
 jmp xchain00379_n6_β
xchain00379_n15_β:
 jmp xchain00379_n6_β
proc_map2_β:
jmp proc_map2_ω
proc_map2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 528], rax
 pop rsi
proc_tablemap_α_body:
# IR_VAR_REF
 xchain00389_n0_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00389_n1_α
 xchain00389_n0_β:
 jmp xchain00389_n3_α
# IR_NULLTEST_VAR
 xchain00389_n1_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain00389_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00389_n3_α
 cmp eax, 0
 jne xchain00389_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain00389_n2_α
 xchain00389_n1_β:
 jmp xchain00389_n3_α
# IR_LIT_INTEGER
 xchain00389_n2_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00389_n4_α
 xchain00389_n2_β:
 jmp xchain00389_n3_α
.Lx00390_0:
 .quad 1
# IR_VAR
 xchain00389_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00389_n5_α
 xchain00389_n3_β:
 jmp xchain00389_n6_α
# IR_ASSIGN_VAR
 xchain00389_n4_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00389_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00389_n7_α
 xchain00389_n4_β:
 jmp xchain00389_n3_α
# IR_UNOP
 xchain00389_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00389_n6_α
 cmp eax, 0
 jne xchain00389_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00389_n8_α
 xchain00389_n5_β:
 jmp xchain00389_n6_α
# IR_LIT_INTEGER
 xchain00389_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00389_n9_α
 xchain00389_n6_β:
 jmp proc_tablemap_ω
.Lx00391_0:
 .quad 1
 xchain00389_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1098: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1098]
 lea rsi, [r12 + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00389_n11_α
 jmp xchain00389_n10_α
 xchain00389_n7_β:
 jmp xchain00389_n11_α
# IR_LIT_STRING
 xchain00389_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00392_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00389_n12_α
 xchain00389_n8_β:
 jmp proc_tablemap_ω
.Lx00392_0:
 .quad .Lx00392_0_s
.Lx00392_0_s:
 .string "T[\"b\"]"
# IR_VAR
 xchain00389_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00389_n13_α
 xchain00389_n9_β:
 jmp proc_tablemap_ω
# IR_ASSIGN gva
 xchain00389_n10_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00389_n11_α
 xchain00389_n10_β:
 jmp xchain00389_n11_α
# IR_VAR_REF
 xchain00389_n11_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00389_n14_α
 xchain00389_n11_β:
 jmp xchain00389_n19_α
# IR_RETURN
 xchain00389_n12_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tablemap_γ
# IR_TO
 xchain00389_n13_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00393_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00389_n15_α
 xchain00389_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00393_0
# IR_LIT_STRING
 xchain00389_n14_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00389_n16_α
 xchain00389_n14_β:
 jmp xchain00389_n19_α
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "a"
# IR_VAR_REF
 xchain00389_n15_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00389_n17_α
 xchain00389_n15_β:
 jmp xchain00389_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00389_n16_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00389_n19_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00389_n18_α
 xchain00389_n16_β:
 jmp xchain00389_n19_α
# IR_LIT_STRING
 xchain00389_n17_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00389_n20_α
 xchain00389_n17_β:
 jmp xchain00389_n13_β
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00389_n18_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00389_n21_α
 xchain00389_n18_β:
 jmp xchain00389_n19_α
.Lx00396_0:
 .quad .Lx00396_0_s
.Lx00396_0_s:
 .string "b"
# IR_VAR_REF
 xchain00389_n19_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00389_n22_α
 xchain00389_n19_β:
 jmp xchain00389_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00389_n20_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00389_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00389_n23_α
 xchain00389_n20_β:
 jmp xchain00389_n13_β
# IR_ASSIGN_VAR
 xchain00389_n21_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00389_n19_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00389_n19_α
 xchain00389_n21_β:
 jmp xchain00389_n19_α
# IR_LIT_STRING
 xchain00389_n22_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00389_n24_α
 xchain00389_n22_β:
 jmp xchain00389_n3_α
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00389_n23_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00389_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00389_n13_β
 xchain00389_n23_β:
 jmp xchain00389_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00389_n24_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00389_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00389_n25_α
 xchain00389_n24_β:
 jmp xchain00389_n3_α
# IR_LIT_STRING
 xchain00389_n25_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00389_n26_α
 xchain00389_n25_β:
 jmp xchain00389_n3_α
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00389_n26_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00389_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00389_n27_α
 xchain00389_n26_β:
 jmp xchain00389_n3_α
 xchain00389_n27_α:
 jmp xchain00389_n28_α
xchain00389_n27_β:
 jmp xchain00389_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00389_n28_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00389_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00389_n3_α
 xchain00389_n28_β:
 jmp xchain00389_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00389_n29_α:
 jmp qword ptr [r12 + 256]
 xchain00389_n29_β:
 jmp xchain00389_n3_α
proc_tablemap_β:
jmp proc_tablemap_ω
proc_tablemap_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 656], rax
 pop rsi
proc_listmap_α_body:
# IR_VAR_REF
 xchain00399_n0_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00399_n1_α
 xchain00399_n0_β:
 jmp xchain00399_n3_α
# IR_NULLTEST_VAR
 xchain00399_n1_α:
 mov eax, dword ptr [r12 + 592]
 cmp eax, 99
 je xchain00399_n3_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00399_n3_α
 cmp eax, 0
 jne xchain00399_n3_α
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 616], rax
 jmp xchain00399_n2_α
 xchain00399_n1_β:
 jmp xchain00399_n3_α
# IR_LIT_INTEGER
 xchain00399_n2_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00399_n4_α
 xchain00399_n2_β:
 jmp xchain00399_n3_α
.Lx00400_0:
 .quad 1
# IR_VAR
 xchain00399_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00399_n5_α
 xchain00399_n3_β:
 jmp xchain00399_n6_α
# IR_ASSIGN_VAR
 xchain00399_n4_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00399_n3_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00399_n7_α
 xchain00399_n4_β:
 jmp xchain00399_n3_α
# IR_UNOP
 xchain00399_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00399_n6_α
 cmp eax, 0
 jne xchain00399_n6_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00399_n8_α
 xchain00399_n5_β:
 jmp xchain00399_n6_α
# IR_LIT_INTEGER
 xchain00399_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00399_n9_α
 xchain00399_n6_β:
 jmp proc_listmap_ω
.Lx00401_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00399_n7_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00399_n10_α
 xchain00399_n7_β:
 jmp xchain00399_n14_α
.Lx00402_0:
 .quad 256
# IR_LIT_STRING
 xchain00399_n8_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00399_n11_α
 xchain00399_n8_β:
 jmp proc_listmap_ω
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string "L[ord(\"b\")]"
# IR_VAR
 xchain00399_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00399_n12_α
 xchain00399_n9_β:
 jmp proc_listmap_ω
 xchain00399_n10_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+560]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn1143: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1143]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00399_n14_α
 jmp xchain00399_n13_α
 xchain00399_n10_β:
 jmp xchain00399_n14_α
# IR_RETURN
 xchain00399_n11_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listmap_γ
# IR_TO
 xchain00399_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00404_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00399_n15_α
 xchain00399_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00404_0
# IR_ASSIGN gva
 xchain00399_n13_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00399_n14_α
 xchain00399_n13_β:
 jmp xchain00399_n14_α
# IR_VAR_REF
 xchain00399_n14_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00399_n16_α
 xchain00399_n14_β:
 jmp xchain00399_n21_α
# IR_VAR_REF
 xchain00399_n15_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00399_n17_α
 xchain00399_n15_β:
 jmp xchain00399_n12_β
# IR_LIT_STRING
 xchain00399_n16_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00399_n18_α
 xchain00399_n16_β:
 jmp xchain00399_n21_α
.Lx00405_0:
 .quad .Lx00405_0_s
.Lx00405_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00399_n17_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00399_n19_α
 xchain00399_n17_β:
 jmp xchain00399_n12_β
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "b"
 xchain00399_n18_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn1155: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1155]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00399_n21_α
 jmp xchain00399_n20_α
 xchain00399_n18_β:
 jmp xchain00399_n21_α
 xchain00399_n19_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1157: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1157]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00399_n12_β
 jmp xchain00399_n22_α
 xchain00399_n19_β:
 jmp xchain00399_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00399_n20_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00399_n21_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00399_n23_α
 xchain00399_n20_β:
 jmp xchain00399_n21_α
# IR_VAR_REF
 xchain00399_n21_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00399_n24_α
 xchain00399_n21_β:
 jmp xchain00399_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00399_n22_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00399_n12_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00399_n25_α
 xchain00399_n22_β:
 jmp xchain00399_n12_β
# IR_LIT_STRING
 xchain00399_n23_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00399_n26_α
 xchain00399_n23_β:
 jmp xchain00399_n21_α
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00399_n24_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00399_n27_α
 xchain00399_n24_β:
 jmp xchain00399_n3_α
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00399_n25_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00399_n12_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00399_n12_β
 xchain00399_n25_β:
 jmp xchain00399_n12_β
# IR_ASSIGN_VAR
 xchain00399_n26_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00399_n21_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00399_n21_α
 xchain00399_n26_β:
 jmp xchain00399_n21_α
 xchain00399_n27_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn1167: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1167]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00399_n3_α
 jmp xchain00399_n28_α
 xchain00399_n27_β:
 jmp xchain00399_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00399_n28_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00399_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00399_n29_α
 xchain00399_n28_β:
 jmp xchain00399_n3_α
# IR_LIT_STRING
 xchain00399_n29_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00399_n30_α
 xchain00399_n29_β:
 jmp xchain00399_n3_α
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00399_n30_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00399_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00399_n31_α
 xchain00399_n30_β:
 jmp xchain00399_n3_α
 xchain00399_n31_α:
 jmp xchain00399_n32_α
xchain00399_n31_β:
 jmp xchain00399_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00399_n32_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 280], rax
 lea rax, [rip + xchain00399_n3_α]
 mov qword ptr [r12 + 288], rax
 jmp xchain00399_n3_α
 xchain00399_n32_β:
 jmp xchain00399_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00399_n33_α:
 jmp qword ptr [r12 + 288]
 xchain00399_n33_β:
 jmp xchain00399_n3_α
proc_listmap_β:
jmp proc_listmap_ω
proc_listmap_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 272], rax
 pop rsi
proc_nullscan_α_body:
# IR_VAR
 xchain00410_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00410_n1_α
 xchain00410_n0_β:
 jmp xchain00410_n2_α
# IR_UNOP
 xchain00410_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00410_n2_α
 cmp eax, 0
 jne xchain00410_n2_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00410_n3_α
 xchain00410_n1_β:
 jmp xchain00410_n2_α
# IR_LIT_INTEGER
 xchain00410_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00410_n4_α
 xchain00410_n2_β:
 jmp proc_nullscan_ω
.Lx00411_0:
 .quad 1
# IR_LIT_STRING
 xchain00410_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00410_n5_α
 xchain00410_n3_β:
 jmp proc_nullscan_ω
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "s ? 0"
# IR_VAR
 xchain00410_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00410_n6_α
 xchain00410_n4_β:
 jmp proc_nullscan_ω
# IR_RETURN
 xchain00410_n5_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullscan_γ
# IR_TO
 xchain00410_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00413_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00410_n7_α
 xchain00410_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00413_0
# IR_LIT_STRING
 xchain00410_n7_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00410_n8_α
 xchain00410_n7_β:
 jmp xchain00410_n6_β
.Lx00414_0:
 .quad .Lx00414_0_s
.Lx00414_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00410_n8_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00410_n9_α
 xchain00410_n8_β:
 jmp xchain00410_n6_β
# IR_LIT_INTEGER
 xchain00410_n9_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00415_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00410_n10_α
 xchain00410_n9_β:
 jmp proc_nullscan_ω
.Lx00415_0:
 .quad 0
# IR_GEN_SCAN
 xchain00410_n10_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain00410_n6_β
 xchain00410_n10_β:
 jmp xchain00410_n6_β
proc_nullscan_β:
jmp proc_nullscan_ω
proc_nullscan_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_movef_α_body:
# IR_VAR
 xchain00416_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00416_n1_α
 xchain00416_n0_β:
 jmp xchain00416_n2_α
# IR_UNOP
 xchain00416_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00416_n2_α
 cmp eax, 0
 jne xchain00416_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00416_n3_α
 xchain00416_n1_β:
 jmp xchain00416_n2_α
# IR_LIT_STRING
 xchain00416_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00416_n4_α
 xchain00416_n2_β:
 jmp proc_movef_ω
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00416_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00416_n5_α
 xchain00416_n3_β:
 jmp proc_movef_ω
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "move(0)"
# IR_GEN_SCAN
 xchain00416_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00416_n6_α
 xchain00416_n4_β:
 jmp proc_movef_ω
# IR_RETURN
 xchain00416_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_movef_γ
# IR_LIT_INTEGER
 xchain00416_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00416_n7_α
 xchain00416_n6_β:
 jmp xchain00416_n9_α
.Lx00419_0:
 .quad 1
# IR_VAR
 xchain00416_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00416_n8_α
 xchain00416_n7_β:
 jmp xchain00416_n9_α
# IR_TO
 xchain00416_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00420_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00416_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00416_n10_α
 xchain00416_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00420_0
# IR_GEN_SCAN
 xchain00416_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_movef_ω
 xchain00416_n9_β:
 jmp proc_movef_ω
# IR_LIT_INTEGER
 xchain00416_n10_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00416_n11_α
 xchain00416_n10_β:
 jmp xchain00416_n8_β
.Lx00421_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00416_n11_α:
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00416_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00416_n8_β
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
 jmp xchain00416_n8_β
 xchain00416_n11_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00416_n8_β
proc_movef_β:
jmp proc_movef_ω
proc_movef_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_mov11_α_body:
# IR_VAR
 xchain00422_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00422_n1_α
 xchain00422_n0_β:
 jmp xchain00422_n2_α
# IR_UNOP
 xchain00422_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00422_n2_α
 cmp eax, 0
 jne xchain00422_n2_α
 mov qword ptr [r12 + 320], 0
 mov qword ptr [r12 + 328], 0
 jmp xchain00422_n3_α
 xchain00422_n1_β:
 jmp xchain00422_n2_α
# IR_LIT_STRING
 xchain00422_n2_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00422_n4_α
 xchain00422_n2_β:
 jmp proc_mov11_ω
.Lx00423_0:
 .quad .Lx00423_0_s
.Lx00423_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00422_n3_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00422_n5_α
 xchain00422_n3_β:
 jmp proc_mov11_ω
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "move(1) & move(-1)"
# IR_GEN_SCAN
 xchain00422_n4_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00422_n6_α
 xchain00422_n4_β:
 jmp proc_mov11_ω
# IR_RETURN
 xchain00422_n5_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mov11_γ
# IR_LIT_INTEGER
 xchain00422_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00422_n7_α
 xchain00422_n6_β:
 jmp xchain00422_n9_α
.Lx00425_0:
 .quad 1
# IR_VAR
 xchain00422_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00422_n8_α
 xchain00422_n7_β:
 jmp xchain00422_n9_α
# IR_TO
 xchain00422_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00426_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00422_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00422_n10_α
 xchain00422_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00426_0
# IR_GEN_SCAN
 xchain00422_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_mov11_ω
 xchain00422_n9_β:
 jmp proc_mov11_ω
# IR_LIT_INTEGER
 xchain00422_n10_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00422_n11_α
 xchain00422_n10_β:
 jmp xchain00422_n8_β
.Lx00427_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00422_n11_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00422_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00422_n8_β
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
 jmp xchain00422_n12_α
 xchain00422_n11_β:
 mov r14, qword ptr [r12 + 224]
 jmp xchain00422_n8_β
# IR_LIT_INTEGER
 xchain00422_n12_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00422_n13_α
 xchain00422_n12_β:
 jmp xchain00422_n8_β
.Lx00428_0:
 .quad 18446744073709551615
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00422_n13_α:
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00422_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00422_n8_β
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
 jmp xchain00422_n14_α
 xchain00422_n13_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00422_n8_β
 xchain00422_n14_α:
 jmp xchain00422_n8_β
xchain00422_n14_β:
 jmp xchain00422_n8_β
proc_mov11_β:
jmp proc_mov11_ω
proc_mov11_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_pos11_α_body:
# IR_VAR
 xchain00429_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 408], rax
 jmp xchain00429_n1_α
 xchain00429_n0_β:
 jmp xchain00429_n2_α
# IR_UNOP
 xchain00429_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00429_n2_α
 cmp eax, 0
 jne xchain00429_n2_α
 mov qword ptr [r12 + 384], 0
 mov qword ptr [r12 + 392], 0
 jmp xchain00429_n3_α
 xchain00429_n1_β:
 jmp xchain00429_n2_α
# IR_LIT_STRING
 xchain00429_n2_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00430_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00429_n4_α
 xchain00429_n2_β:
 jmp proc_pos11_ω
.Lx00430_0:
 .quad .Lx00430_0_s
.Lx00430_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00429_n3_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00429_n5_α
 xchain00429_n3_β:
 jmp proc_pos11_ω
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_GEN_SCAN
 xchain00429_n4_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00429_n6_α
 xchain00429_n4_β:
 jmp proc_pos11_ω
# IR_RETURN
 xchain00429_n5_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pos11_γ
# IR_LIT_INTEGER
 xchain00429_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00429_n7_α
 xchain00429_n6_β:
 jmp xchain00429_n9_α
.Lx00432_0:
 .quad 1
# IR_VAR
 xchain00429_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00429_n8_α
 xchain00429_n7_β:
 jmp xchain00429_n9_α
# IR_TO
 xchain00429_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00433_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00429_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00429_n10_α
 xchain00429_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00433_0
# IR_GEN_SCAN
 xchain00429_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_pos11_ω
 xchain00429_n9_β:
 jmp proc_pos11_ω
# IR_KEYWORD_pos_call
 xchain00429_n10_α:
 call rt_keyword_pos@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00429_n11_α
 xchain00429_n10_β:
 jmp xchain00429_n8_β
# IR_LIT_INTEGER
 xchain00429_n11_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00429_n12_α
 xchain00429_n11_β:
 jmp xchain00429_n8_β
.Lx00434_0:
 .quad 1
 xchain00429_n12_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00435_0
 mov eax, dword ptr [r12 + 304]
 cmp eax, 100
 je .Lx00435_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00435_2
 mov eax, dword ptr [r12 + 304]
 cmp eax, 6
 jne .Lx00435_2
.Lx00435_1:
 mov rax, qword ptr [r12 + 280]
 mov rcx, qword ptr [r12 + 312]
 add rax, rcx
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xchain00429_n13_α
.Lx00435_0:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 0
 lea r9, [r12 + 256]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00435_3
.Lx00435_2:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00429_n8_β
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
.Lx00435_3:
 jmp xchain00429_n13_α
 xchain00429_n12_β:
 jmp xchain00429_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00429_n13_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00429_n8_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00429_n14_α
 xchain00429_n13_β:
 jmp xchain00429_n8_β
# IR_KEYWORD_pos_call
 xchain00429_n14_α:
 call rt_keyword_pos@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00429_n15_α
 xchain00429_n14_β:
 jmp xchain00429_n8_β
# IR_LIT_INTEGER
 xchain00429_n15_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00429_n16_α
 xchain00429_n15_β:
 jmp xchain00429_n8_β
.Lx00436_0:
 .quad 1
 xchain00429_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00437_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00437_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00437_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00437_2
.Lx00437_1:
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 232]
 sub rax, rcx
 mov qword ptr [r12 + 176], 6
 mov qword ptr [r12 + 184], rax
 jmp xchain00429_n17_α
.Lx00437_0:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 lea r9, [r12 + 176]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00437_3
.Lx00437_2:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00429_n8_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
.Lx00437_3:
 jmp xchain00429_n17_α
 xchain00429_n16_β:
 jmp xchain00429_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00429_n17_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00429_n8_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00429_n18_α
 xchain00429_n17_β:
 jmp xchain00429_n8_β
 xchain00429_n18_α:
 jmp xchain00429_n8_β
xchain00429_n18_β:
 jmp xchain00429_n8_β
proc_pos11_β:
jmp proc_pos11_ω
proc_pos11_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_tabf_α_body:
# IR_VAR
 xchain00438_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00438_n1_α
 xchain00438_n0_β:
 jmp xchain00438_n2_α
# IR_UNOP
 xchain00438_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00438_n2_α
 cmp eax, 0
 jne xchain00438_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00438_n3_α
 xchain00438_n1_β:
 jmp xchain00438_n2_α
# IR_LIT_STRING
 xchain00438_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00438_n4_α
 xchain00438_n2_β:
 jmp proc_tabf_ω
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00438_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00438_n5_α
 xchain00438_n3_β:
 jmp proc_tabf_ω
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "tab(3)"
# IR_GEN_SCAN
 xchain00438_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00438_n6_α
 xchain00438_n4_β:
 jmp proc_tabf_ω
# IR_RETURN
 xchain00438_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabf_γ
# IR_LIT_INTEGER
 xchain00438_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00441_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00438_n7_α
 xchain00438_n6_β:
 jmp xchain00438_n9_α
.Lx00441_0:
 .quad 1
# IR_VAR
 xchain00438_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00438_n8_α
 xchain00438_n7_β:
 jmp xchain00438_n9_α
# IR_TO
 xchain00438_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00442_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00438_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00438_n10_α
 xchain00438_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00442_0
# IR_GEN_SCAN
 xchain00438_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabf_ω
 xchain00438_n9_β:
 jmp proc_tabf_ω
# IR_LIT_INTEGER
 xchain00438_n10_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00438_n11_α
 xchain00438_n10_β:
 jmp xchain00438_n8_β
.Lx00443_0:
 .quad 3
# IR_SCAN_TAB
 xchain00438_n11_α:
 mov rax, 3
 cmp rax, 1
 jge .Lx00444_0
 add rax, r15
 add rax, 1
.Lx00444_0:
 cmp rax, 1
 jl xchain00438_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00438_n8_β
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
 jmp xchain00438_n8_β
 xchain00438_n11_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00438_n8_β
proc_tabf_β:
jmp proc_tabf_ω
proc_tabf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_matchf_α_body:
# IR_VAR
 xchain00445_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00445_n1_α
 xchain00445_n0_β:
 jmp xchain00445_n2_α
# IR_UNOP
 xchain00445_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00445_n2_α
 cmp eax, 0
 jne xchain00445_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00445_n3_α
 xchain00445_n1_β:
 jmp xchain00445_n2_α
# IR_LIT_STRING
 xchain00445_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00445_n4_α
 xchain00445_n2_β:
 jmp proc_matchf_ω
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00445_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00447_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00445_n5_α
 xchain00445_n3_β:
 jmp proc_matchf_ω
.Lx00447_0:
 .quad .Lx00447_0_s
.Lx00447_0_s:
 .string "match(\"abc\")"
# IR_GEN_SCAN
 xchain00445_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00445_n6_α
 xchain00445_n4_β:
 jmp proc_matchf_ω
# IR_RETURN
 xchain00445_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_matchf_γ
# IR_LIT_INTEGER
 xchain00445_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00448_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00445_n7_α
 xchain00445_n6_β:
 jmp xchain00445_n9_α
.Lx00448_0:
 .quad 1
# IR_VAR
 xchain00445_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00445_n8_α
 xchain00445_n7_β:
 jmp xchain00445_n9_α
# IR_TO
 xchain00445_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00449_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00445_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00445_n10_α
 xchain00445_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00449_0
# IR_GEN_SCAN
 xchain00445_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_matchf_ω
 xchain00445_n9_β:
 jmp proc_matchf_ω
# IR_LIT_STRING
 xchain00445_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00450_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00445_n11_α
 xchain00445_n10_β:
 jmp xchain00445_n8_β
.Lx00450_0:
 .quad .Lx00450_0_s
.Lx00450_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00445_n11_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00445_n8_β
 mov rdi, qword ptr [rip + .Lx00451_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00445_n8_β
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 168], rax
 jmp xchain00445_n8_β
 xchain00445_n11_β:
 jmp xchain00445_n8_β
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "abc"
proc_matchf_β:
jmp proc_matchf_ω
proc_matchf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_tabmat_α_body:
# IR_VAR
 xchain00452_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
 jmp xchain00452_n1_α
 xchain00452_n0_β:
 jmp xchain00452_n2_α
# IR_UNOP
 xchain00452_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00452_n2_α
 cmp eax, 0
 jne xchain00452_n2_α
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 jmp xchain00452_n3_α
 xchain00452_n1_β:
 jmp xchain00452_n2_α
# IR_LIT_STRING
 xchain00452_n2_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00452_n4_α
 xchain00452_n2_β:
 jmp proc_tabmat_ω
.Lx00453_0:
 .quad .Lx00453_0_s
.Lx00453_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00452_n3_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00454_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00452_n5_α
 xchain00452_n3_β:
 jmp proc_tabmat_ω
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "s1 ? =s2"
# IR_GEN_SCAN
 xchain00452_n4_α:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00452_n6_α
 xchain00452_n4_β:
 jmp proc_tabmat_ω
# IR_RETURN
 xchain00452_n5_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabmat_γ
# IR_LIT_INTEGER
 xchain00452_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00452_n7_α
 xchain00452_n6_β:
 jmp xchain00452_n9_α
.Lx00455_0:
 .quad 1
# IR_VAR
 xchain00452_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00452_n8_α
 xchain00452_n7_β:
 jmp xchain00452_n9_α
# IR_TO
 xchain00452_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00456_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00452_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00452_n10_α
 xchain00452_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00456_0
# IR_GEN_SCAN
 xchain00452_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabmat_ω
 xchain00452_n9_β:
 jmp proc_tabmat_ω
# IR_LIT_STRING
 xchain00452_n10_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00457_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00452_n11_α
 xchain00452_n10_β:
 jmp xchain00452_n8_β
.Lx00457_0:
 .quad .Lx00457_0_s
.Lx00457_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00452_n11_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00452_n8_β
 mov rdi, qword ptr [rip + .Lx00458_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00452_n8_β
 mov qword ptr [r12 + 192], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 200], rax
 jmp xchain00452_n12_α
 xchain00452_n11_β:
 jmp xchain00452_n8_β
.Lx00458_0:
 .quad .Lx00458_0_s
.Lx00458_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00452_n12_α:
 mov rax, qword ptr [r12 + 200]
 cmp rax, 1
 jge .Lx00459_0
 add rax, r15
 add rax, 1
.Lx00459_0:
 cmp rax, 1
 jl xchain00452_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00452_n8_β
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
 jmp xchain00452_n8_β
 xchain00452_n12_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00452_n8_β
proc_tabmat_β:
jmp proc_tabmat_ω
proc_tabmat_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_posf_α_body:
# IR_VAR
 xchain00460_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00460_n1_α
 xchain00460_n0_β:
 jmp xchain00460_n2_α
# IR_UNOP
 xchain00460_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00460_n2_α
 cmp eax, 0
 jne xchain00460_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00460_n3_α
 xchain00460_n1_β:
 jmp xchain00460_n2_α
# IR_LIT_STRING
 xchain00460_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00461_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00460_n4_α
 xchain00460_n2_β:
 jmp proc_posf_ω
.Lx00461_0:
 .quad .Lx00461_0_s
.Lx00461_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00460_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00460_n5_α
 xchain00460_n3_β:
 jmp proc_posf_ω
.Lx00462_0:
 .quad .Lx00462_0_s
.Lx00462_0_s:
 .string "pos(-1)"
# IR_GEN_SCAN
 xchain00460_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00460_n6_α
 xchain00460_n4_β:
 jmp proc_posf_ω
# IR_RETURN
 xchain00460_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_posf_γ
# IR_LIT_INTEGER
 xchain00460_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00463_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00460_n7_α
 xchain00460_n6_β:
 jmp xchain00460_n9_α
.Lx00463_0:
 .quad 1
# IR_VAR
 xchain00460_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00460_n8_α
 xchain00460_n7_β:
 jmp xchain00460_n9_α
# IR_TO
 xchain00460_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00464_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00460_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00460_n10_α
 xchain00460_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00464_0
# IR_GEN_SCAN
 xchain00460_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_posf_ω
 xchain00460_n9_β:
 jmp proc_posf_ω
# IR_LIT_INTEGER
 xchain00460_n10_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00460_n11_α
 xchain00460_n10_β:
 jmp xchain00460_n8_β
.Lx00465_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00460_n11_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00466_0
 add rax, r15
 add rax, 1
.Lx00466_0:
 cmp rax, 1
 jl xchain00460_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00460_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00460_n8_β
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain00460_n8_β
 xchain00460_n11_β:
 jmp xchain00460_n8_β
proc_posf_β:
jmp proc_posf_ω
proc_posf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_anyf_α_body:
# IR_VAR
 xchain00467_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00467_n1_α
 xchain00467_n0_β:
 jmp xchain00467_n2_α
# IR_UNOP
 xchain00467_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00467_n2_α
 cmp eax, 0
 jne xchain00467_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00467_n3_α
 xchain00467_n1_β:
 jmp xchain00467_n2_α
# IR_LIT_STRING
 xchain00467_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00467_n4_α
 xchain00467_n2_β:
 jmp proc_anyf_ω
.Lx00468_0:
 .quad .Lx00468_0_s
.Lx00468_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00467_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00469_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00467_n5_α
 xchain00467_n3_β:
 jmp proc_anyf_ω
.Lx00469_0:
 .quad .Lx00469_0_s
.Lx00469_0_s:
 .string "any('aeiou')"
# IR_GEN_SCAN
 xchain00467_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00467_n6_α
 xchain00467_n4_β:
 jmp proc_anyf_ω
# IR_RETURN
 xchain00467_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_anyf_γ
# IR_LIT_INTEGER
 xchain00467_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00470_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00467_n7_α
 xchain00467_n6_β:
 jmp xchain00467_n9_α
.Lx00470_0:
 .quad 1
# IR_VAR
 xchain00467_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00467_n8_α
 xchain00467_n7_β:
 jmp xchain00467_n9_α
# IR_TO
 xchain00467_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00471_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00467_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00467_n10_α
 xchain00467_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00471_0
# IR_GEN_SCAN
 xchain00467_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_anyf_ω
 xchain00467_n9_β:
 jmp proc_anyf_ω
# IR_LIT_CHARSET
 xchain00467_n10_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00472_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00467_n11_α
 xchain00467_n10_β:
 jmp xchain00467_n8_β
.Lx00472_0:
 .quad .Lx00472_0_s
.Lx00472_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00467_n11_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00467_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00473_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00467_n8_β
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 168], rax
 jmp xchain00467_n8_β
 xchain00467_n11_β:
 jmp xchain00467_n8_β
.Lx00473_0:
 .quad .Lx00473_0_s
.Lx00473_0_s:
 .string "aeiou"
proc_anyf_β:
jmp proc_anyf_ω
proc_anyf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_manyf_α_body:
# IR_VAR
 xchain00474_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00474_n1_α
 xchain00474_n0_β:
 jmp xchain00474_n2_α
# IR_UNOP
 xchain00474_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00474_n2_α
 cmp eax, 0
 jne xchain00474_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00474_n3_α
 xchain00474_n1_β:
 jmp xchain00474_n2_α
# IR_LIT_STRING
 xchain00474_n2_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00474_n4_α
 xchain00474_n2_β:
 jmp proc_manyf_ω
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00474_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00476_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00474_n5_α
 xchain00474_n3_β:
 jmp proc_manyf_ω
.Lx00476_0:
 .quad .Lx00476_0_s
.Lx00476_0_s:
 .string "many(&lcase)"
# IR_GEN_SCAN
 xchain00474_n4_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00474_n6_α
 xchain00474_n4_β:
 jmp proc_manyf_ω
# IR_RETURN
 xchain00474_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_manyf_γ
# IR_LIT_INTEGER
 xchain00474_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00474_n7_α
 xchain00474_n6_β:
 jmp xchain00474_n9_α
.Lx00477_0:
 .quad 1
# IR_VAR
 xchain00474_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00474_n8_α
 xchain00474_n7_β:
 jmp xchain00474_n9_α
# IR_TO
 xchain00474_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00478_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00474_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00474_n10_α
 xchain00474_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00478_0
# IR_GEN_SCAN
 xchain00474_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_manyf_ω
 xchain00474_n9_β:
 jmp proc_manyf_ω
# IR_LIT_CHARSET
 xchain00474_n10_α:
 mov qword ptr [r12 + 176], 1
 mov dword ptr [r12 + 180], -1
 mov rax, qword ptr [rip + .Lx00479_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00474_n11_α
 xchain00474_n10_β:
 jmp xchain00474_n8_β
.Lx00479_0:
 .quad .Lx00479_0_s
.Lx00479_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00474_n11_α:
 mov eax, r14d
.Lx00480_0:
 cmp eax, r15d
 jge .Lx00480_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00480_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00480_1
 add eax, 1
 jmp .Lx00480_0
.Lx00480_1:
 cmp eax, r14d
 je xchain00474_n8_β
 mov qword ptr [r12 + 160], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 168], rcx
 jmp xchain00474_n8_β
 xchain00474_n11_β:
 jmp xchain00474_n8_β
.Lx00480_2:
 .quad .Lx00480_2_s
.Lx00480_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
proc_manyf_β:
jmp proc_manyf_ω
proc_manyf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_uptof_α_body:
# IR_VAR
 xchain00481_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00481_n1_α
 xchain00481_n0_β:
 jmp xchain00481_n2_α
# IR_UNOP
 xchain00481_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00481_n2_α
 cmp eax, 0
 jne xchain00481_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00481_n3_α
 xchain00481_n1_β:
 jmp xchain00481_n2_α
# IR_LIT_STRING
 xchain00481_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00482_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00481_n4_α
 xchain00481_n2_β:
 jmp proc_uptof_ω
.Lx00482_0:
 .quad .Lx00482_0_s
.Lx00482_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00481_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00483_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00481_n5_α
 xchain00481_n3_β:
 jmp proc_uptof_ω
.Lx00483_0:
 .quad .Lx00483_0_s
.Lx00483_0_s:
 .string "upto('d')"
# IR_GEN_SCAN
 xchain00481_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00481_n6_α
 xchain00481_n4_β:
 jmp proc_uptof_ω
# IR_RETURN
 xchain00481_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uptof_γ
# IR_LIT_INTEGER
 xchain00481_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00484_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00481_n7_α
 xchain00481_n6_β:
 jmp xchain00481_n9_α
.Lx00484_0:
 .quad 1
# IR_VAR
 xchain00481_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00481_n8_α
 xchain00481_n7_β:
 jmp xchain00481_n9_α
# IR_TO
 xchain00481_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00485_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00481_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00481_n10_α
 xchain00481_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00485_0
# IR_GEN_SCAN
 xchain00481_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_uptof_ω
 xchain00481_n9_β:
 jmp proc_uptof_ω
# IR_LIT_CHARSET
 xchain00481_n10_α:
 mov qword ptr [r12 + 192], 1
 mov dword ptr [r12 + 196], -1
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00481_n11_α
 xchain00481_n10_β:
 jmp xchain00481_n8_β
.Lx00486_0:
 .quad .Lx00486_0_s
.Lx00486_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00481_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00487_0:
 mov rax, qword ptr [r12 + 176]
 cmp rax, r15
 jge xchain00481_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00487_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00487_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00481_n8_β
.Lx00487_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00487_0
 xchain00481_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00487_0
.Lx00487_2:
 .quad .Lx00487_2_s
.Lx00487_2_s:
 .string "d"
proc_uptof_β:
jmp proc_uptof_ω
proc_uptof_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_findf_α_body:
# IR_VAR
 xchain00488_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00488_n1_α
 xchain00488_n0_β:
 jmp xchain00488_n2_α
# IR_UNOP
 xchain00488_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00488_n2_α
 cmp eax, 0
 jne xchain00488_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00488_n3_α
 xchain00488_n1_β:
 jmp xchain00488_n2_α
# IR_LIT_STRING
 xchain00488_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00489_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00488_n4_α
 xchain00488_n2_β:
 jmp proc_findf_ω
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00488_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00490_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00488_n5_α
 xchain00488_n3_β:
 jmp proc_findf_ω
.Lx00490_0:
 .quad .Lx00490_0_s
.Lx00490_0_s:
 .string "find(\"de\")"
# IR_GEN_SCAN
 xchain00488_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00488_n6_α
 xchain00488_n4_β:
 jmp proc_findf_ω
# IR_RETURN
 xchain00488_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_findf_γ
# IR_LIT_INTEGER
 xchain00488_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00488_n7_α
 xchain00488_n6_β:
 jmp xchain00488_n9_α
.Lx00491_0:
 .quad 1
# IR_VAR
 xchain00488_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00488_n8_α
 xchain00488_n7_β:
 jmp xchain00488_n9_α
# IR_TO
 xchain00488_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00492_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00488_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00488_n10_α
 xchain00488_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00492_0
# IR_GEN_SCAN
 xchain00488_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_findf_ω
 xchain00488_n9_β:
 jmp proc_findf_ω
# IR_LIT_STRING
 xchain00488_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00493_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00488_n11_α
 xchain00488_n10_β:
 jmp xchain00488_n8_β
.Lx00493_0:
 .quad .Lx00493_0_s
.Lx00493_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00488_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00494_0:
 mov rax, qword ptr [r12 + 176]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00488_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00494_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00494_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00488_n8_β
.Lx00494_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00494_0
 xchain00488_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00494_0
proc_findf_β:
jmp proc_findf_ω
proc_findf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 304], rax
 pop rsi
proc_balf_α_body:
# IR_VAR
 xchain00495_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00495_n1_α
 xchain00495_n0_β:
 jmp xchain00495_n2_α
# IR_UNOP
 xchain00495_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00495_n2_α
 cmp eax, 0
 jne xchain00495_n2_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00495_n3_α
 xchain00495_n1_β:
 jmp xchain00495_n2_α
# IR_LIT_STRING
 xchain00495_n2_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00495_n4_α
 xchain00495_n2_β:
 jmp proc_balf_ω
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "(a*b)+(c/d)"
# IR_LIT_STRING
 xchain00495_n3_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00497_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00495_n5_α
 xchain00495_n3_β:
 jmp proc_balf_ω
.Lx00497_0:
 .quad .Lx00497_0_s
.Lx00497_0_s:
 .string "bal('+')"
# IR_GEN_SCAN
 xchain00495_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00495_n6_α
 xchain00495_n4_β:
 jmp proc_balf_ω
# IR_RETURN
 xchain00495_n5_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_balf_γ
# IR_LIT_INTEGER
 xchain00495_n6_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00498_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00495_n7_α
 xchain00495_n6_β:
 jmp xchain00495_n9_α
.Lx00498_0:
 .quad 1
# IR_VAR
 xchain00495_n7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00495_n8_α
 xchain00495_n7_β:
 jmp xchain00495_n9_α
# IR_TO
 xchain00495_n8_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00499_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00495_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00495_n10_α
 xchain00495_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00499_0
# IR_GEN_SCAN
 xchain00495_n9_α:
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_balf_ω
 xchain00495_n9_β:
 jmp proc_balf_ω
# IR_LIT_CHARSET
 xchain00495_n10_α:
 mov qword ptr [r12 + 192], 1
 mov dword ptr [r12 + 196], -1
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00495_n11_α
 xchain00495_n10_β:
 jmp xchain00495_n8_β
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00495_n11_α:
 mov qword ptr [r12 + 176], r14
.Lx00501_0:
 mov rax, qword ptr [r12 + 176]
 cmp rax, r15
 jge xchain00495_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00501_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00501_1
 mov qword ptr [r12 + 160], 6
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00495_n8_β
.Lx00501_1:
 inc qword ptr [r12 + 176]
 jmp .Lx00501_0
 xchain00495_n11_β:
 inc qword ptr [r12 + 176]
 jmp .Lx00501_0
.Lx00501_2:
 .quad .Lx00501_2_s
.Lx00501_2_s:
 .string "+"
proc_balf_β:
jmp proc_balf_ω
proc_balf_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_cssize_α_body:
# IR_VAR
 xchain00502_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00502_n1_α
 xchain00502_n0_β:
 jmp xchain00502_n2_α
# IR_UNOP
 xchain00502_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00502_n2_α
 cmp eax, 0
 jne xchain00502_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00502_n3_α
 xchain00502_n1_β:
 jmp xchain00502_n2_α
# IR_LIT_INTEGER
 xchain00502_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00502_n4_α
 xchain00502_n2_β:
 jmp proc_cssize_ω
.Lx00503_0:
 .quad 1
# IR_LIT_STRING
 xchain00502_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00504_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00502_n5_α
 xchain00502_n3_β:
 jmp proc_cssize_ω
.Lx00504_0:
 .quad .Lx00504_0_s
.Lx00504_0_s:
 .string "*&digits"
# IR_VAR
 xchain00502_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00502_n6_α
 xchain00502_n4_β:
 jmp proc_cssize_ω
# IR_RETURN
 xchain00502_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cssize_γ
# IR_TO
 xchain00502_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00505_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00502_n7_α
 xchain00502_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00505_0
# IR_LIT_CHARSET
 xchain00502_n7_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx00506_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00502_n8_α
 xchain00502_n7_β:
 jmp xchain00502_n6_β
.Lx00506_0:
 .quad .Lx00506_0_s
.Lx00506_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00502_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00502_n6_β
 xchain00502_n8_β:
 jmp xchain00502_n6_β
proc_cssize_β:
jmp proc_cssize_ω
proc_cssize_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_cscompl_α_body:
# IR_VAR
 xchain00507_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00507_n1_α
 xchain00507_n0_β:
 jmp xchain00507_n2_α
# IR_UNOP
 xchain00507_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00507_n2_α
 cmp eax, 0
 jne xchain00507_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00507_n3_α
 xchain00507_n1_β:
 jmp xchain00507_n2_α
# IR_LIT_INTEGER
 xchain00507_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00508_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00507_n4_α
 xchain00507_n2_β:
 jmp proc_cscompl_ω
.Lx00508_0:
 .quad 1
# IR_LIT_STRING
 xchain00507_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00507_n5_α
 xchain00507_n3_β:
 jmp proc_cscompl_ω
.Lx00509_0:
 .quad .Lx00509_0_s
.Lx00509_0_s:
 .string "~&digits"
# IR_VAR
 xchain00507_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00507_n6_α
 xchain00507_n4_β:
 jmp proc_cscompl_ω
# IR_RETURN
 xchain00507_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cscompl_γ
# IR_TO
 xchain00507_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00510_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00507_n7_α
 xchain00507_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00510_0
# IR_LIT_CHARSET
 xchain00507_n7_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx00511_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00507_n8_α
 xchain00507_n7_β:
 jmp xchain00507_n6_β
.Lx00511_0:
 .quad .Lx00511_0_s
.Lx00511_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00507_n8_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00507_n6_β
 xchain00507_n8_β:
 jmp xchain00507_n6_β
proc_cscompl_β:
jmp proc_cscompl_ω
proc_cscompl_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_lcreate_α_body:
# IR_VAR
 xchain00512_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00512_n1_α
 xchain00512_n0_β:
 jmp xchain00512_n2_α
# IR_UNOP
 xchain00512_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00512_n2_α
 cmp eax, 0
 jne xchain00512_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00512_n3_α
 xchain00512_n1_β:
 jmp xchain00512_n2_α
# IR_LIT_INTEGER
 xchain00512_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00513_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00512_n4_α
 xchain00512_n2_β:
 jmp proc_lcreate_ω
.Lx00513_0:
 .quad 1
# IR_LIT_STRING
 xchain00512_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00512_n5_α
 xchain00512_n3_β:
 jmp proc_lcreate_ω
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "list(5,0)"
# IR_VAR
 xchain00512_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00512_n6_α
 xchain00512_n4_β:
 jmp proc_lcreate_ω
# IR_RETURN
 xchain00512_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcreate_γ
# IR_TO
 xchain00512_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00515_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00512_n7_α
 xchain00512_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00515_0
# IR_LIT_INTEGER
 xchain00512_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00516_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00512_n8_α
 xchain00512_n7_β:
 jmp xchain00512_n6_β
.Lx00516_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00512_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00512_n9_α
 xchain00512_n8_β:
 jmp xchain00512_n6_β
.Lx00517_0:
 .quad 0
 xchain00512_n9_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1473: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1473]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00512_n6_β
 jmp xchain00512_n6_β
 xchain00512_n9_β:
 jmp xchain00512_n6_β
proc_lcreate_β:
jmp proc_lcreate_ω
proc_lcreate_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 368], rax
 pop rsi
proc_lconst_α_body:
# IR_VAR
 xchain00518_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain00518_n1_α
 xchain00518_n0_β:
 jmp xchain00518_n2_α
# IR_UNOP
 xchain00518_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00518_n2_α
 cmp eax, 0
 jne xchain00518_n2_α
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain00518_n3_α
 xchain00518_n1_β:
 jmp xchain00518_n2_α
# IR_LIT_INTEGER
 xchain00518_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00519_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00518_n4_α
 xchain00518_n2_β:
 jmp proc_lconst_ω
.Lx00519_0:
 .quad 1
# IR_LIT_STRING
 xchain00518_n3_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00520_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00518_n5_α
 xchain00518_n3_β:
 jmp proc_lconst_ω
.Lx00520_0:
 .quad .Lx00520_0_s
.Lx00520_0_s:
 .string "[1,2,3,4,5]"
# IR_VAR
 xchain00518_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00518_n6_α
 xchain00518_n4_β:
 jmp proc_lconst_ω
# IR_RETURN
 xchain00518_n5_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lconst_γ
# IR_TO
 xchain00518_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00521_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00518_n7_α
 xchain00518_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00521_0
# IR_LIT_INTEGER
 xchain00518_n7_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00518_n8_α
 xchain00518_n7_β:
 jmp xchain00518_n6_β
.Lx00522_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00518_n8_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00523_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00518_n9_α
 xchain00518_n8_β:
 jmp xchain00518_n6_β
.Lx00523_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00518_n9_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00524_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00518_n10_α
 xchain00518_n9_β:
 jmp xchain00518_n6_β
.Lx00524_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00518_n10_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00525_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00518_n11_α
 xchain00518_n10_β:
 jmp xchain00518_n6_β
.Lx00525_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00518_n11_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00526_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00518_n12_α
 xchain00518_n11_β:
 jmp xchain00518_n6_β
.Lx00526_0:
 .quad 5
# IR_MAKE_LIST
 xchain00518_n12_α:
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
 jmp xchain00518_n13_α
 xchain00518_n12_β:
 jmp xchain00518_n6_β
 xchain00518_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00518_n6_β
 xchain00518_n13_β:
 jmp xchain00518_n6_β
proc_lconst_β:
jmp proc_lconst_ω
proc_lconst_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lcopy_α_body:
# IR_VAR_REF
 xchain00527_n0_α:
 lea rdi, [rbx + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00527_n1_α
 xchain00527_n0_β:
 jmp xchain00527_n3_α
# IR_NULLTEST_VAR
 xchain00527_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00527_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00527_n3_α
 cmp eax, 0
 jne xchain00527_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00527_n2_α
 xchain00527_n1_β:
 jmp xchain00527_n3_α
# IR_LIT_INTEGER
 xchain00527_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00527_n4_α
 xchain00527_n2_β:
 jmp xchain00527_n3_α
.Lx00528_0:
 .quad 1
# IR_VAR
 xchain00527_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00527_n5_α
 xchain00527_n3_β:
 jmp xchain00527_n6_α
# IR_ASSIGN_VAR
 xchain00527_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00527_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00527_n7_α
 xchain00527_n4_β:
 jmp xchain00527_n3_α
# IR_UNOP
 xchain00527_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00527_n6_α
 cmp eax, 0
 jne xchain00527_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00527_n8_α
 xchain00527_n5_β:
 jmp xchain00527_n6_α
# IR_LIT_INTEGER
 xchain00527_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00527_n9_α
 xchain00527_n6_β:
 jmp proc_lcopy_ω
.Lx00529_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00527_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00530_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00527_n10_α
 xchain00527_n7_β:
 jmp xchain00527_n3_α
.Lx00530_0:
 .quad 1
# IR_LIT_STRING
 xchain00527_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00531_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00527_n11_α
 xchain00527_n8_β:
 jmp proc_lcopy_ω
.Lx00531_0:
 .quad .Lx00531_0_s
.Lx00531_0_s:
 .string "copy(L)"
# IR_VAR
 xchain00527_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00527_n12_α
 xchain00527_n9_β:
 jmp proc_lcopy_ω
# IR_LIT_INTEGER
 xchain00527_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00527_n13_α
 xchain00527_n10_β:
 jmp xchain00527_n3_α
.Lx00532_0:
 .quad 2
# IR_RETURN
 xchain00527_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcopy_γ
# IR_TO
 xchain00527_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00533_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00527_n14_α
 xchain00527_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00533_0
# IR_LIT_INTEGER
 xchain00527_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00534_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00527_n15_α
 xchain00527_n13_β:
 jmp xchain00527_n3_α
.Lx00534_0:
 .quad 3
# IR_VAR
 xchain00527_n14_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00527_n16_α
 xchain00527_n14_β:
 jmp xchain00527_n12_β
# IR_LIT_INTEGER
 xchain00527_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00527_n17_α
 xchain00527_n15_β:
 jmp xchain00527_n3_α
.Lx00535_0:
 .quad 4
 xchain00527_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1515: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1515]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00527_n12_β
 jmp xchain00527_n12_β
 xchain00527_n16_β:
 jmp xchain00527_n12_β
# IR_LIT_INTEGER
 xchain00527_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00536_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00527_n18_α
 xchain00527_n17_β:
 jmp xchain00527_n3_α
.Lx00536_0:
 .quad 5
# IR_MAKE_LIST
 xchain00527_n18_α:
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
 jmp xchain00527_n19_α
 xchain00527_n18_β:
 jmp xchain00527_n3_α
# IR_ASSIGN gva
 xchain00527_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00527_n20_α
 xchain00527_n19_β:
 jmp xchain00527_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00527_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00527_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00527_n3_α
 xchain00527_n20_β:
 jmp xchain00527_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00527_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00527_n21_β:
 jmp xchain00527_n3_α
proc_lcopy_β:
jmp proc_lcopy_ω
proc_lcopy_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lsort_α_body:
# IR_VAR_REF
 xchain00537_n0_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00537_n1_α
 xchain00537_n0_β:
 jmp xchain00537_n3_α
# IR_NULLTEST_VAR
 xchain00537_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00537_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00537_n3_α
 cmp eax, 0
 jne xchain00537_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00537_n2_α
 xchain00537_n1_β:
 jmp xchain00537_n3_α
# IR_LIT_INTEGER
 xchain00537_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00537_n4_α
 xchain00537_n2_β:
 jmp xchain00537_n3_α
.Lx00538_0:
 .quad 1
# IR_VAR
 xchain00537_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00537_n5_α
 xchain00537_n3_β:
 jmp xchain00537_n6_α
# IR_ASSIGN_VAR
 xchain00537_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00537_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00537_n7_α
 xchain00537_n4_β:
 jmp xchain00537_n3_α
# IR_UNOP
 xchain00537_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00537_n6_α
 cmp eax, 0
 jne xchain00537_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00537_n8_α
 xchain00537_n5_β:
 jmp xchain00537_n6_α
# IR_LIT_INTEGER
 xchain00537_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00537_n9_α
 xchain00537_n6_β:
 jmp proc_lsort_ω
.Lx00539_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00537_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00540_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00537_n10_α
 xchain00537_n7_β:
 jmp xchain00537_n3_α
.Lx00540_0:
 .quad 2
# IR_LIT_STRING
 xchain00537_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00541_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00537_n11_α
 xchain00537_n8_β:
 jmp proc_lsort_ω
.Lx00541_0:
 .quad .Lx00541_0_s
.Lx00541_0_s:
 .string "sort(L)"
# IR_VAR
 xchain00537_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00537_n12_α
 xchain00537_n9_β:
 jmp proc_lsort_ω
# IR_LIT_INTEGER
 xchain00537_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00537_n13_α
 xchain00537_n10_β:
 jmp xchain00537_n3_α
.Lx00542_0:
 .quad 7
# IR_RETURN
 xchain00537_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsort_γ
# IR_TO
 xchain00537_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00543_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00537_n14_α
 xchain00537_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00543_0
# IR_LIT_INTEGER
 xchain00537_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00537_n15_α
 xchain00537_n13_β:
 jmp xchain00537_n3_α
.Lx00544_0:
 .quad 1
# IR_VAR
 xchain00537_n14_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00537_n16_α
 xchain00537_n14_β:
 jmp xchain00537_n12_β
# IR_LIT_INTEGER
 xchain00537_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00545_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00537_n17_α
 xchain00537_n15_β:
 jmp xchain00537_n3_α
.Lx00545_0:
 .quad 8
 xchain00537_n16_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1546: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1546]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00537_n12_β
 jmp xchain00537_n12_β
 xchain00537_n16_β:
 jmp xchain00537_n12_β
# IR_LIT_INTEGER
 xchain00537_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00546_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00537_n18_α
 xchain00537_n17_β:
 jmp xchain00537_n3_α
.Lx00546_0:
 .quad 3
# IR_MAKE_LIST
 xchain00537_n18_α:
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
 jmp xchain00537_n19_α
 xchain00537_n18_β:
 jmp xchain00537_n3_α
# IR_ASSIGN gva
 xchain00537_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00537_n20_α
 xchain00537_n19_β:
 jmp xchain00537_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00537_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00537_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00537_n3_α
 xchain00537_n20_β:
 jmp xchain00537_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00537_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00537_n21_β:
 jmp xchain00537_n3_α
proc_lsort_β:
jmp proc_lsort_ω
proc_lsort_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 496], rax
 pop rsi
proc_lsize_α_body:
# IR_VAR_REF
 xchain00547_n0_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00547_n1_α
 xchain00547_n0_β:
 jmp xchain00547_n3_α
# IR_NULLTEST_VAR
 xchain00547_n1_α:
 mov eax, dword ptr [r12 + 432]
 cmp eax, 99
 je xchain00547_n3_α
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00547_n3_α
 cmp eax, 0
 jne xchain00547_n3_α
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00547_n2_α
 xchain00547_n1_β:
 jmp xchain00547_n3_α
# IR_LIT_INTEGER
 xchain00547_n2_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain00547_n4_α
 xchain00547_n2_β:
 jmp xchain00547_n3_α
.Lx00548_0:
 .quad 1
# IR_VAR
 xchain00547_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00547_n5_α
 xchain00547_n3_β:
 jmp xchain00547_n6_α
# IR_ASSIGN_VAR
 xchain00547_n4_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00547_n3_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00547_n7_α
 xchain00547_n4_β:
 jmp xchain00547_n3_α
# IR_UNOP
 xchain00547_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00547_n6_α
 cmp eax, 0
 jne xchain00547_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00547_n8_α
 xchain00547_n5_β:
 jmp xchain00547_n6_α
# IR_LIT_INTEGER
 xchain00547_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00547_n9_α
 xchain00547_n6_β:
 jmp proc_lsize_ω
.Lx00549_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00547_n7_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00550_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00547_n10_α
 xchain00547_n7_β:
 jmp xchain00547_n3_α
.Lx00550_0:
 .quad 1
# IR_LIT_STRING
 xchain00547_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00547_n11_α
 xchain00547_n8_β:
 jmp proc_lsize_ω
.Lx00551_0:
 .quad .Lx00551_0_s
.Lx00551_0_s:
 .string "*L"
# IR_VAR
 xchain00547_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00547_n12_α
 xchain00547_n9_β:
 jmp proc_lsize_ω
# IR_LIT_INTEGER
 xchain00547_n10_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00547_n13_α
 xchain00547_n10_β:
 jmp xchain00547_n3_α
.Lx00552_0:
 .quad 2
# IR_RETURN
 xchain00547_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsize_γ
# IR_TO
 xchain00547_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00553_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00547_n14_α
 xchain00547_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00553_0
# IR_LIT_INTEGER
 xchain00547_n13_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00547_n15_α
 xchain00547_n13_β:
 jmp xchain00547_n3_α
.Lx00554_0:
 .quad 3
# IR_VAR
 xchain00547_n14_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00547_n16_α
 xchain00547_n14_β:
 jmp xchain00547_n12_β
# IR_LIT_INTEGER
 xchain00547_n15_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00547_n17_α
 xchain00547_n15_β:
 jmp xchain00547_n3_α
.Lx00555_0:
 .quad 4
# IR_UNOP
 xchain00547_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00547_n12_β
 xchain00547_n16_β:
 jmp xchain00547_n12_β
# IR_LIT_INTEGER
 xchain00547_n17_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00547_n18_α
 xchain00547_n17_β:
 jmp xchain00547_n3_α
.Lx00556_0:
 .quad 5
# IR_MAKE_LIST
 xchain00547_n18_α:
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
 jmp xchain00547_n19_α
 xchain00547_n18_β:
 jmp xchain00547_n3_α
# IR_ASSIGN gva
 xchain00547_n19_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00547_n20_α
 xchain00547_n19_β:
 jmp xchain00547_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00547_n20_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00547_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00547_n3_α
 xchain00547_n20_β:
 jmp xchain00547_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00547_n21_α:
 jmp qword ptr [r12 + 224]
 xchain00547_n21_β:
 jmp xchain00547_n3_α
proc_lsize_β:
jmp proc_lsize_ω
proc_lsize_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lpick_α_body:
# IR_VAR_REF
 xchain00557_n0_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00557_n1_α
 xchain00557_n0_β:
 jmp xchain00557_n3_α
# IR_NULLTEST_VAR
 xchain00557_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00557_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00557_n3_α
 cmp eax, 0
 jne xchain00557_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00557_n2_α
 xchain00557_n1_β:
 jmp xchain00557_n3_α
# IR_LIT_INTEGER
 xchain00557_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00557_n4_α
 xchain00557_n2_β:
 jmp xchain00557_n3_α
.Lx00558_0:
 .quad 1
# IR_VAR
 xchain00557_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00557_n5_α
 xchain00557_n3_β:
 jmp xchain00557_n6_α
# IR_ASSIGN_VAR
 xchain00557_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00557_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00557_n7_α
 xchain00557_n4_β:
 jmp xchain00557_n3_α
# IR_UNOP
 xchain00557_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00557_n6_α
 cmp eax, 0
 jne xchain00557_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00557_n8_α
 xchain00557_n5_β:
 jmp xchain00557_n6_α
# IR_LIT_INTEGER
 xchain00557_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00559_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00557_n9_α
 xchain00557_n6_β:
 jmp proc_lpick_ω
.Lx00559_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00557_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00560_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00557_n10_α
 xchain00557_n7_β:
 jmp xchain00557_n3_α
.Lx00560_0:
 .quad 1
# IR_LIT_STRING
 xchain00557_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00557_n11_α
 xchain00557_n8_β:
 jmp proc_lpick_ω
.Lx00561_0:
 .quad .Lx00561_0_s
.Lx00561_0_s:
 .string "?L"
# IR_VAR
 xchain00557_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00557_n12_α
 xchain00557_n9_β:
 jmp proc_lpick_ω
# IR_LIT_INTEGER
 xchain00557_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00557_n13_α
 xchain00557_n10_β:
 jmp xchain00557_n3_α
.Lx00562_0:
 .quad 2
# IR_RETURN
 xchain00557_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lpick_γ
# IR_TO
 xchain00557_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00563_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00557_n14_α
 xchain00557_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00563_0
# IR_LIT_INTEGER
 xchain00557_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00557_n15_α
 xchain00557_n13_β:
 jmp xchain00557_n3_α
.Lx00564_0:
 .quad 3
# IR_VAR_REF
 xchain00557_n14_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00557_n16_α
 xchain00557_n14_β:
 jmp xchain00557_n12_β
# IR_LIT_INTEGER
 xchain00557_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00565_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00557_n17_α
 xchain00557_n15_β:
 jmp xchain00557_n3_α
.Lx00565_0:
 .quad 4
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00557_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00557_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00557_n18_α
 xchain00557_n16_β:
 jmp xchain00557_n12_β
# IR_LIT_INTEGER
 xchain00557_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00566_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00557_n19_α
 xchain00557_n17_β:
 jmp xchain00557_n3_α
.Lx00566_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00557_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00557_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00557_n12_β
 xchain00557_n18_β:
 jmp xchain00557_n12_β
# IR_MAKE_LIST
 xchain00557_n19_α:
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
 jmp xchain00557_n20_α
 xchain00557_n19_β:
 jmp xchain00557_n3_α
# IR_ASSIGN gva
 xchain00557_n20_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00557_n21_α
 xchain00557_n20_β:
 jmp xchain00557_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00557_n21_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00557_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00557_n3_α
 xchain00557_n21_β:
 jmp xchain00557_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00557_n22_α:
 jmp qword ptr [r12 + 240]
 xchain00557_n22_β:
 jmp xchain00557_n3_α
proc_lpick_β:
jmp proc_lpick_ω
proc_lpick_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 528], rax
 pop rsi
proc_lsubscr_α_body:
# IR_VAR_REF
 xchain00567_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00567_n1_α
 xchain00567_n0_β:
 jmp xchain00567_n3_α
# IR_NULLTEST_VAR
 xchain00567_n1_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain00567_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00567_n3_α
 cmp eax, 0
 jne xchain00567_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain00567_n2_α
 xchain00567_n1_β:
 jmp xchain00567_n3_α
# IR_LIT_INTEGER
 xchain00567_n2_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00567_n4_α
 xchain00567_n2_β:
 jmp xchain00567_n3_α
.Lx00568_0:
 .quad 1
# IR_VAR
 xchain00567_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00567_n5_α
 xchain00567_n3_β:
 jmp xchain00567_n6_α
# IR_ASSIGN_VAR
 xchain00567_n4_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00567_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00567_n7_α
 xchain00567_n4_β:
 jmp xchain00567_n3_α
# IR_UNOP
 xchain00567_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00567_n6_α
 cmp eax, 0
 jne xchain00567_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00567_n8_α
 xchain00567_n5_β:
 jmp xchain00567_n6_α
# IR_LIT_INTEGER
 xchain00567_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00567_n9_α
 xchain00567_n6_β:
 jmp proc_lsubscr_ω
.Lx00569_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00567_n7_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00567_n10_α
 xchain00567_n7_β:
 jmp xchain00567_n3_α
.Lx00570_0:
 .quad 1
# IR_LIT_STRING
 xchain00567_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00567_n11_α
 xchain00567_n8_β:
 jmp proc_lsubscr_ω
.Lx00571_0:
 .quad .Lx00571_0_s
.Lx00571_0_s:
 .string "L[3]"
# IR_VAR
 xchain00567_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00567_n12_α
 xchain00567_n9_β:
 jmp proc_lsubscr_ω
# IR_LIT_INTEGER
 xchain00567_n10_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00567_n13_α
 xchain00567_n10_β:
 jmp xchain00567_n3_α
.Lx00572_0:
 .quad 2
# IR_RETURN
 xchain00567_n11_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsubscr_γ
# IR_TO
 xchain00567_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00573_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00567_n14_α
 xchain00567_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00573_0
# IR_LIT_INTEGER
 xchain00567_n13_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00567_n15_α
 xchain00567_n13_β:
 jmp xchain00567_n3_α
.Lx00574_0:
 .quad 3
# IR_VAR_REF
 xchain00567_n14_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00567_n16_α
 xchain00567_n14_β:
 jmp xchain00567_n12_β
# IR_LIT_INTEGER
 xchain00567_n15_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00575_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00567_n17_α
 xchain00567_n15_β:
 jmp xchain00567_n3_α
.Lx00575_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00567_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00576_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00567_n18_α
 xchain00567_n16_β:
 jmp xchain00567_n12_β
.Lx00576_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00567_n17_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00567_n19_α
 xchain00567_n17_β:
 jmp xchain00567_n3_α
.Lx00577_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00567_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00567_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00567_n20_α
 xchain00567_n18_β:
 jmp xchain00567_n12_β
# IR_MAKE_LIST
 xchain00567_n19_α:
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
 jmp xchain00567_n21_α
 xchain00567_n19_β:
 jmp xchain00567_n3_α
# IR_DEREF variable -> value
 xchain00567_n20_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00567_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00567_n12_β
 xchain00567_n20_β:
 jmp xchain00567_n12_β
# IR_ASSIGN gva
 xchain00567_n21_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00567_n22_α
 xchain00567_n21_β:
 jmp xchain00567_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00567_n22_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00567_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00567_n3_α
 xchain00567_n22_β:
 jmp xchain00567_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00567_n23_α:
 jmp qword ptr [r12 + 256]
 xchain00567_n23_β:
 jmp xchain00567_n3_α
proc_lsubscr_β:
jmp proc_lsubscr_ω
proc_lsubscr_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_lbang_α_body:
# IR_VAR_REF
 xchain00578_n0_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00578_n1_α
 xchain00578_n0_β:
 jmp xchain00578_n3_α
# IR_NULLTEST_VAR
 xchain00578_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00578_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00578_n3_α
 cmp eax, 0
 jne xchain00578_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00578_n2_α
 xchain00578_n1_β:
 jmp xchain00578_n3_α
# IR_LIT_INTEGER
 xchain00578_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00578_n4_α
 xchain00578_n2_β:
 jmp xchain00578_n3_α
.Lx00579_0:
 .quad 1
# IR_VAR
 xchain00578_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00578_n5_α
 xchain00578_n3_β:
 jmp xchain00578_n6_α
# IR_ASSIGN_VAR
 xchain00578_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00578_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00578_n7_α
 xchain00578_n4_β:
 jmp xchain00578_n3_α
# IR_UNOP
 xchain00578_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00578_n6_α
 cmp eax, 0
 jne xchain00578_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00578_n8_α
 xchain00578_n5_β:
 jmp xchain00578_n6_α
# IR_LIT_INTEGER
 xchain00578_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00580_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00578_n9_α
 xchain00578_n6_β:
 jmp proc_lbang_ω
.Lx00580_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00578_n7_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00581_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00578_n10_α
 xchain00578_n7_β:
 jmp xchain00578_n3_α
.Lx00581_0:
 .quad 1
# IR_LIT_STRING
 xchain00578_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00582_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00578_n11_α
 xchain00578_n8_β:
 jmp proc_lbang_ω
.Lx00582_0:
 .quad .Lx00582_0_s
.Lx00582_0_s:
 .string "!L"
# IR_VAR
 xchain00578_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00578_n12_α
 xchain00578_n9_β:
 jmp proc_lbang_ω
# IR_LIT_INTEGER
 xchain00578_n10_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00578_n13_α
 xchain00578_n10_β:
 jmp xchain00578_n3_α
.Lx00583_0:
 .quad 2
# IR_RETURN
 xchain00578_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lbang_γ
# IR_TO
 xchain00578_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00584_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00578_n14_α
 xchain00578_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00584_0
# IR_LIT_INTEGER
 xchain00578_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00585_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00578_n15_α
 xchain00578_n13_β:
 jmp xchain00578_n3_α
.Lx00585_0:
 .quad 3
# IR_VAR
 xchain00578_n14_α:
 mov rax, qword ptr [rbx + 320]
 mov rdx, qword ptr [rbx + 328]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00578_n16_α
 xchain00578_n14_β:
 jmp xchain00578_n12_β
# IR_LIT_INTEGER
 xchain00578_n15_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00578_n17_α
 xchain00578_n15_β:
 jmp xchain00578_n3_α
.Lx00586_0:
 .quad 4
# IR_LIST_BANG
 xchain00578_n16_α:
 mov qword ptr [r12 + 112], 0
.Lx00587_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00578_n12_β
 jmp xchain00578_n16_β
 xchain00578_n16_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00587_0
# IR_LIT_INTEGER
 xchain00578_n17_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00578_n18_α
 xchain00578_n17_β:
 jmp xchain00578_n3_α
.Lx00588_0:
 .quad 5
# IR_MAKE_LIST
 xchain00578_n18_α:
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
 jmp xchain00578_n19_α
 xchain00578_n18_β:
 jmp xchain00578_n3_α
# IR_ASSIGN gva
 xchain00578_n19_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 320], rax
 mov qword ptr [rbx + 328], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00578_n20_α
 xchain00578_n19_β:
 jmp xchain00578_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00578_n20_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00578_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00578_n3_α
 xchain00578_n20_β:
 jmp xchain00578_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00578_n21_α:
 jmp qword ptr [r12 + 240]
 xchain00578_n21_β:
 jmp xchain00578_n3_α
proc_lbang_β:
jmp proc_lbang_ω
proc_lbang_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_put1get1_α_body:
# IR_VAR_REF
 xchain00589_n0_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00589_n1_α
 xchain00589_n0_β:
 jmp xchain00589_n3_α
# IR_NULLTEST_VAR
 xchain00589_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00589_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00589_n3_α
 cmp eax, 0
 jne xchain00589_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00589_n2_α
 xchain00589_n1_β:
 jmp xchain00589_n3_α
# IR_LIT_INTEGER
 xchain00589_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00590_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00589_n4_α
 xchain00589_n2_β:
 jmp xchain00589_n3_α
.Lx00590_0:
 .quad 1
# IR_VAR
 xchain00589_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00589_n5_α
 xchain00589_n3_β:
 jmp xchain00589_n6_α
# IR_ASSIGN_VAR
 xchain00589_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00589_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00589_n7_α
 xchain00589_n4_β:
 jmp xchain00589_n3_α
# IR_UNOP
 xchain00589_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00589_n6_α
 cmp eax, 0
 jne xchain00589_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00589_n8_α
 xchain00589_n5_β:
 jmp xchain00589_n6_α
# IR_LIT_INTEGER
 xchain00589_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00589_n9_α
 xchain00589_n6_β:
 jmp proc_put1get1_ω
.Lx00591_0:
 .quad 1
# IR_MAKE_LIST
 xchain00589_n7_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00589_n10_α
 xchain00589_n7_β:
 jmp xchain00589_n3_α
# IR_LIT_STRING
 xchain00589_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00589_n11_α
 xchain00589_n8_β:
 jmp proc_put1get1_ω
.Lx00592_0:
 .quad .Lx00592_0_s
.Lx00592_0_s:
 .string "get(put(L,0))"
# IR_VAR
 xchain00589_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00589_n12_α
 xchain00589_n9_β:
 jmp proc_put1get1_ω
# IR_ASSIGN gva
 xchain00589_n10_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 352], rax
 mov qword ptr [rbx + 360], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00589_n13_α
 xchain00589_n10_β:
 jmp xchain00589_n3_α
# IR_RETURN
 xchain00589_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put1get1_γ
# IR_TO
 xchain00589_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00593_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00589_n14_α
 xchain00589_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00593_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00589_n13_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00589_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00589_n3_α
 xchain00589_n13_β:
 jmp xchain00589_n3_α
# IR_VAR
 xchain00589_n14_α:
 mov rax, qword ptr [rbx + 352]
 mov rdx, qword ptr [rbx + 360]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00589_n16_α
 xchain00589_n14_β:
 jmp xchain00589_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00589_n15_α:
 jmp qword ptr [r12 + 304]
 xchain00589_n15_β:
 jmp xchain00589_n3_α
# IR_LIT_INTEGER
 xchain00589_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00589_n17_α
 xchain00589_n16_β:
 jmp xchain00589_n12_β
.Lx00594_0:
 .quad 0
 xchain00589_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1707: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1707]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00589_n12_β
 jmp xchain00589_n18_α
 xchain00589_n17_β:
 jmp xchain00589_n12_β
 xchain00589_n18_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1709: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1709]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00589_n12_β
 jmp xchain00589_n12_β
 xchain00589_n18_β:
 jmp xchain00589_n12_β
proc_put1get1_β:
jmp proc_put1get1_ω
proc_put1get1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 512], rax
 pop rsi
proc_put2get2_α_body:
# IR_VAR_REF
 xchain00595_n0_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00595_n1_α
 xchain00595_n0_β:
 jmp xchain00595_n3_α
# IR_NULLTEST_VAR
 xchain00595_n1_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain00595_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00595_n3_α
 cmp eax, 0
 jne xchain00595_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain00595_n2_α
 xchain00595_n1_β:
 jmp xchain00595_n3_α
# IR_LIT_INTEGER
 xchain00595_n2_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx00596_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00595_n4_α
 xchain00595_n2_β:
 jmp xchain00595_n3_α
.Lx00596_0:
 .quad 1
# IR_VAR
 xchain00595_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00595_n5_α
 xchain00595_n3_β:
 jmp xchain00595_n6_α
# IR_ASSIGN_VAR
 xchain00595_n4_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00595_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00595_n7_α
 xchain00595_n4_β:
 jmp xchain00595_n3_α
# IR_UNOP
 xchain00595_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00595_n6_α
 cmp eax, 0
 jne xchain00595_n6_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00595_n8_α
 xchain00595_n5_β:
 jmp xchain00595_n6_α
# IR_LIT_INTEGER
 xchain00595_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00595_n9_α
 xchain00595_n6_β:
 jmp proc_put2get2_ω
.Lx00597_0:
 .quad 1
# IR_MAKE_LIST
 xchain00595_n7_α:
 lea rdi, [r12 + 448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00595_n10_α
 xchain00595_n7_β:
 jmp xchain00595_n3_α
# IR_LIT_STRING
 xchain00595_n8_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00598_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00595_n11_α
 xchain00595_n8_β:
 jmp proc_put2get2_ω
.Lx00598_0:
 .quad .Lx00598_0_s
.Lx00598_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_VAR
 xchain00595_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00595_n12_α
 xchain00595_n9_β:
 jmp proc_put2get2_ω
# IR_ASSIGN gva
 xchain00595_n10_α:
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 384], rax
 mov qword ptr [rbx + 392], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00595_n13_α
 xchain00595_n10_β:
 jmp xchain00595_n3_α
# IR_RETURN
 xchain00595_n11_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put2get2_γ
# IR_TO
 xchain00595_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00599_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00595_n14_α
 xchain00595_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00599_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00595_n13_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain00595_n3_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain00595_n3_α
 xchain00595_n13_β:
 jmp xchain00595_n3_α
# IR_VAR
 xchain00595_n14_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00595_n16_α
 xchain00595_n14_β:
 jmp xchain00595_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00595_n15_α:
 jmp qword ptr [r12 + 400]
 xchain00595_n15_β:
 jmp xchain00595_n3_α
# IR_LIT_INTEGER
 xchain00595_n16_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00595_n17_α
 xchain00595_n16_β:
 jmp xchain00595_n12_β
.Lx00600_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00595_n17_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00595_n18_α
 xchain00595_n17_β:
 jmp xchain00595_n12_β
.Lx00601_0:
 .quad 2
 xchain00595_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn1737: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1737]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00595_n12_β
 jmp xchain00595_n19_α
 xchain00595_n18_β:
 jmp xchain00595_n12_β
# IR_VAR
 xchain00595_n19_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00595_n20_α
 xchain00595_n19_β:
 jmp xchain00595_n12_β
 xchain00595_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1740: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1740]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00595_n12_β
 jmp xchain00595_n21_α
 xchain00595_n20_β:
 jmp xchain00595_n12_β
# IR_VAR
 xchain00595_n21_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00595_n22_α
 xchain00595_n21_β:
 jmp xchain00595_n12_β
 xchain00595_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1743: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1743]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00595_n12_β
 jmp xchain00595_n23_α
 xchain00595_n22_β:
 jmp xchain00595_n12_β
 xchain00595_n23_α:
 jmp xchain00595_n12_β
xchain00595_n23_β:
 jmp xchain00595_n12_β
proc_put2get2_β:
jmp proc_put2get2_ω
proc_put2get2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 592], rax
 pop rsi
proc_put3get3_α_body:
# IR_VAR_REF
 xchain00602_n0_α:
 lea rdi, [rbx + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00602_n1_α
 xchain00602_n0_β:
 jmp xchain00602_n3_α
# IR_NULLTEST_VAR
 xchain00602_n1_α:
 mov eax, dword ptr [r12 + 528]
 cmp eax, 99
 je xchain00602_n3_α
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00602_n3_α
 cmp eax, 0
 jne xchain00602_n3_α
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 552], rax
 jmp xchain00602_n2_α
 xchain00602_n1_β:
 jmp xchain00602_n3_α
# IR_LIT_INTEGER
 xchain00602_n2_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00602_n4_α
 xchain00602_n2_β:
 jmp xchain00602_n3_α
.Lx00603_0:
 .quad 1
# IR_VAR
 xchain00602_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain00602_n5_α
 xchain00602_n3_β:
 jmp xchain00602_n6_α
# IR_ASSIGN_VAR
 xchain00602_n4_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00602_n3_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00602_n7_α
 xchain00602_n4_β:
 jmp xchain00602_n3_α
# IR_UNOP
 xchain00602_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00602_n6_α
 cmp eax, 0
 jne xchain00602_n6_α
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain00602_n8_α
 xchain00602_n5_β:
 jmp xchain00602_n6_α
# IR_LIT_INTEGER
 xchain00602_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00602_n9_α
 xchain00602_n6_β:
 jmp proc_put3get3_ω
.Lx00604_0:
 .quad 1
# IR_MAKE_LIST
 xchain00602_n7_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00602_n10_α
 xchain00602_n7_β:
 jmp xchain00602_n3_α
# IR_LIT_STRING
 xchain00602_n8_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00605_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00602_n11_α
 xchain00602_n8_β:
 jmp proc_put3get3_ω
.Lx00605_0:
 .quad .Lx00605_0_s
.Lx00605_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_VAR
 xchain00602_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00602_n12_α
 xchain00602_n9_β:
 jmp proc_put3get3_ω
# IR_ASSIGN gva
 xchain00602_n10_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 416], rax
 mov qword ptr [rbx + 424], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00602_n13_α
 xchain00602_n10_β:
 jmp xchain00602_n3_α
# IR_RETURN
 xchain00602_n11_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put3get3_γ
# IR_TO
 xchain00602_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00606_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00602_n14_α
 xchain00602_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00606_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00602_n13_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain00602_n3_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain00602_n3_α
 xchain00602_n13_β:
 jmp xchain00602_n3_α
# IR_VAR
 xchain00602_n14_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00602_n16_α
 xchain00602_n14_β:
 jmp xchain00602_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00602_n15_α:
 jmp qword ptr [r12 + 480]
 xchain00602_n15_β:
 jmp xchain00602_n3_α
# IR_LIT_INTEGER
 xchain00602_n16_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00602_n17_α
 xchain00602_n16_β:
 jmp xchain00602_n12_β
.Lx00607_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00602_n17_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00602_n18_α
 xchain00602_n17_β:
 jmp xchain00602_n12_β
.Lx00608_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00602_n18_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00602_n19_α
 xchain00602_n18_β:
 jmp xchain00602_n12_β
.Lx00609_0:
 .quad 3
 xchain00602_n19_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+272]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 280], rax
# marshal arg2 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
# marshal arg3 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn1773: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1773]
 lea rsi, [r12 + 256]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00602_n12_β
 jmp xchain00602_n20_α
 xchain00602_n19_β:
 jmp xchain00602_n12_β
# IR_VAR
 xchain00602_n20_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00602_n21_α
 xchain00602_n20_β:
 jmp xchain00602_n12_β
 xchain00602_n21_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1776: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1776]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00602_n12_β
 jmp xchain00602_n22_α
 xchain00602_n21_β:
 jmp xchain00602_n12_β
# IR_VAR
 xchain00602_n22_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00602_n23_α
 xchain00602_n22_β:
 jmp xchain00602_n12_β
 xchain00602_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1779: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1779]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00602_n12_β
 jmp xchain00602_n24_α
 xchain00602_n23_β:
 jmp xchain00602_n12_β
# IR_VAR
 xchain00602_n24_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00602_n25_α
 xchain00602_n24_β:
 jmp xchain00602_n12_β
 xchain00602_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1782: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1782]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00602_n12_β
 jmp xchain00602_n26_α
 xchain00602_n25_β:
 jmp xchain00602_n12_β
 xchain00602_n26_α:
 jmp xchain00602_n12_β
xchain00602_n26_β:
 jmp xchain00602_n12_β
proc_put3get3_β:
jmp proc_put3get3_ω
proc_put3get3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 672], rax
 pop rsi
proc_put4get4_α_body:
# IR_VAR_REF
 xchain00610_n0_α:
 lea rdi, [rbx + 464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00610_n1_α
 xchain00610_n0_β:
 jmp xchain00610_n3_α
# IR_NULLTEST_VAR
 xchain00610_n1_α:
 mov eax, dword ptr [r12 + 608]
 cmp eax, 99
 je xchain00610_n3_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00610_n3_α
 cmp eax, 0
 jne xchain00610_n3_α
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 632], rax
 jmp xchain00610_n2_α
 xchain00610_n1_β:
 jmp xchain00610_n3_α
# IR_LIT_INTEGER
 xchain00610_n2_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00611_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00610_n4_α
 xchain00610_n2_β:
 jmp xchain00610_n3_α
.Lx00611_0:
 .quad 1
# IR_VAR
 xchain00610_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00610_n5_α
 xchain00610_n3_β:
 jmp xchain00610_n6_α
# IR_ASSIGN_VAR
 xchain00610_n4_α:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00610_n3_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00610_n7_α
 xchain00610_n4_β:
 jmp xchain00610_n3_α
# IR_UNOP
 xchain00610_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00610_n6_α
 cmp eax, 0
 jne xchain00610_n6_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00610_n8_α
 xchain00610_n5_β:
 jmp xchain00610_n6_α
# IR_LIT_INTEGER
 xchain00610_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00610_n9_α
 xchain00610_n6_β:
 jmp proc_put4get4_ω
.Lx00612_0:
 .quad 1
# IR_MAKE_LIST
 xchain00610_n7_α:
 lea rdi, [r12 + 608]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00610_n10_α
 xchain00610_n7_β:
 jmp xchain00610_n3_α
# IR_LIT_STRING
 xchain00610_n8_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00610_n11_α
 xchain00610_n8_β:
 jmp proc_put4get4_ω
.Lx00613_0:
 .quad .Lx00613_0_s
.Lx00613_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_VAR
 xchain00610_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00610_n12_α
 xchain00610_n9_β:
 jmp proc_put4get4_ω
# IR_ASSIGN gva
 xchain00610_n10_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 448], rax
 mov qword ptr [rbx + 456], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00610_n13_α
 xchain00610_n10_β:
 jmp xchain00610_n3_α
# IR_RETURN
 xchain00610_n11_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put4get4_γ
# IR_TO
 xchain00610_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00614_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00610_n14_α
 xchain00610_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00614_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00610_n13_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
 lea rax, [rip + xchain00610_n3_α]
 mov qword ptr [r12 + 560], rax
 jmp xchain00610_n3_α
 xchain00610_n13_β:
 jmp xchain00610_n3_α
# IR_VAR
 xchain00610_n14_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00610_n16_α
 xchain00610_n14_β:
 jmp xchain00610_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00610_n15_α:
 jmp qword ptr [r12 + 560]
 xchain00610_n15_β:
 jmp xchain00610_n3_α
# IR_LIT_INTEGER
 xchain00610_n16_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00615_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00610_n17_α
 xchain00610_n16_β:
 jmp xchain00610_n12_β
.Lx00615_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00610_n17_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00610_n18_α
 xchain00610_n17_β:
 jmp xchain00610_n12_β
.Lx00616_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00610_n18_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00617_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00610_n19_α
 xchain00610_n18_β:
 jmp xchain00610_n12_β
.Lx00617_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00610_n19_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00618_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00610_n20_α
 xchain00610_n19_β:
 jmp xchain00610_n12_β
.Lx00618_0:
 .quad 4
 xchain00610_n20_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+304]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+320]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+336]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 344], rax
# marshal arg3 = producer-box slot [zr+432] -> [zr+352]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 360], rax
# marshal arg4 = producer-box slot [zr+448] -> [zr+368]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn1813: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1813]
 lea rsi, [r12 + 304]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00610_n12_β
 jmp xchain00610_n21_α
 xchain00610_n20_β:
 jmp xchain00610_n12_β
# IR_VAR
 xchain00610_n21_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00610_n22_α
 xchain00610_n21_β:
 jmp xchain00610_n12_β
 xchain00610_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1816: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1816]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00610_n12_β
 jmp xchain00610_n23_α
 xchain00610_n22_β:
 jmp xchain00610_n12_β
# IR_VAR
 xchain00610_n23_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00610_n24_α
 xchain00610_n23_β:
 jmp xchain00610_n12_β
 xchain00610_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1819: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1819]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00610_n12_β
 jmp xchain00610_n25_α
 xchain00610_n24_β:
 jmp xchain00610_n12_β
# IR_VAR
 xchain00610_n25_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00610_n26_α
 xchain00610_n25_β:
 jmp xchain00610_n12_β
 xchain00610_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1822: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1822]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00610_n12_β
 jmp xchain00610_n27_α
 xchain00610_n26_β:
 jmp xchain00610_n12_β
# IR_VAR
 xchain00610_n27_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00610_n28_α
 xchain00610_n27_β:
 jmp xchain00610_n12_β
 xchain00610_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1825: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1825]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00610_n12_β
 jmp xchain00610_n29_α
 xchain00610_n28_β:
 jmp xchain00610_n12_β
 xchain00610_n29_α:
 jmp xchain00610_n12_β
xchain00610_n29_β:
 jmp xchain00610_n12_β
proc_put4get4_β:
jmp proc_put4get4_ω
proc_put4get4_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_pushpop_α_body:
# IR_VAR_REF
 xchain00619_n0_α:
 lea rdi, [rbx + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00619_n1_α
 xchain00619_n0_β:
 jmp xchain00619_n3_α
# IR_NULLTEST_VAR
 xchain00619_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00619_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00619_n3_α
 cmp eax, 0
 jne xchain00619_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00619_n2_α
 xchain00619_n1_β:
 jmp xchain00619_n3_α
# IR_LIT_INTEGER
 xchain00619_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00620_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00619_n4_α
 xchain00619_n2_β:
 jmp xchain00619_n3_α
.Lx00620_0:
 .quad 1
# IR_VAR
 xchain00619_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00619_n5_α
 xchain00619_n3_β:
 jmp xchain00619_n6_α
# IR_ASSIGN_VAR
 xchain00619_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00619_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00619_n7_α
 xchain00619_n4_β:
 jmp xchain00619_n3_α
# IR_UNOP
 xchain00619_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00619_n6_α
 cmp eax, 0
 jne xchain00619_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00619_n8_α
 xchain00619_n5_β:
 jmp xchain00619_n6_α
# IR_LIT_INTEGER
 xchain00619_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00619_n9_α
 xchain00619_n6_β:
 jmp proc_pushpop_ω
.Lx00621_0:
 .quad 1
# IR_MAKE_LIST
 xchain00619_n7_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00619_n10_α
 xchain00619_n7_β:
 jmp xchain00619_n3_α
# IR_LIT_STRING
 xchain00619_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00622_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00619_n11_α
 xchain00619_n8_β:
 jmp proc_pushpop_ω
.Lx00622_0:
 .quad .Lx00622_0_s
.Lx00622_0_s:
 .string "pop(push(L,0))"
# IR_VAR
 xchain00619_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00619_n12_α
 xchain00619_n9_β:
 jmp proc_pushpop_ω
# IR_ASSIGN gva
 xchain00619_n10_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 480], rax
 mov qword ptr [rbx + 488], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00619_n13_α
 xchain00619_n10_β:
 jmp xchain00619_n3_α
# IR_RETURN
 xchain00619_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop_γ
# IR_TO
 xchain00619_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00623_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00619_n14_α
 xchain00619_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00623_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00619_n13_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00619_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00619_n3_α
 xchain00619_n13_β:
 jmp xchain00619_n3_α
# IR_VAR
 xchain00619_n14_α:
 mov rax, qword ptr [rbx + 480]
 mov rdx, qword ptr [rbx + 488]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00619_n16_α
 xchain00619_n14_β:
 jmp xchain00619_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00619_n15_α:
 jmp qword ptr [r12 + 304]
 xchain00619_n15_β:
 jmp xchain00619_n3_α
# IR_LIT_INTEGER
 xchain00619_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00619_n17_α
 xchain00619_n16_β:
 jmp xchain00619_n12_β
.Lx00624_0:
 .quad 0
 xchain00619_n17_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1853: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1853]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00619_n12_β
 jmp xchain00619_n18_α
 xchain00619_n17_β:
 jmp xchain00619_n12_β
 xchain00619_n18_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1855: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1855]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00619_n12_β
 jmp xchain00619_n12_β
 xchain00619_n18_β:
 jmp xchain00619_n12_β
proc_pushpop_β:
jmp proc_pushpop_ω
proc_pushpop_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_putget12_α_body:
# IR_VAR_REF
 xchain00625_n0_α:
 lea rdi, [rbx + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00625_n1_α
 xchain00625_n0_β:
 jmp xchain00625_n3_α
# IR_NULLTEST_VAR
 xchain00625_n1_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00625_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00625_n3_α
 cmp eax, 0
 jne xchain00625_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00625_n2_α
 xchain00625_n1_β:
 jmp xchain00625_n3_α
# IR_LIT_INTEGER
 xchain00625_n2_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00626_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00625_n4_α
 xchain00625_n2_β:
 jmp xchain00625_n3_α
.Lx00626_0:
 .quad 1
# IR_VAR
 xchain00625_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00625_n5_α
 xchain00625_n3_β:
 jmp xchain00625_n6_α
# IR_ASSIGN_VAR
 xchain00625_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00625_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00625_n7_α
 xchain00625_n4_β:
 jmp xchain00625_n3_α
# IR_UNOP
 xchain00625_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00625_n6_α
 cmp eax, 0
 jne xchain00625_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00625_n8_α
 xchain00625_n5_β:
 jmp xchain00625_n6_α
# IR_LIT_INTEGER
 xchain00625_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00627_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00625_n9_α
 xchain00625_n6_β:
 jmp proc_putget12_ω
.Lx00627_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00625_n7_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00628_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00625_n10_α
 xchain00625_n7_β:
 jmp xchain00625_n3_α
.Lx00628_0:
 .quad 3
# IR_LIT_STRING
 xchain00625_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00629_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00625_n11_α
 xchain00625_n8_β:
 jmp proc_putget12_ω
.Lx00629_0:
 .quad .Lx00629_0_s
.Lx00629_0_s:
 .string "get(put(L12,0))"
# IR_VAR
 xchain00625_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00625_n12_α
 xchain00625_n9_β:
 jmp proc_putget12_ω
# IR_LIT_INTEGER
 xchain00625_n10_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00625_n13_α
 xchain00625_n10_β:
 jmp xchain00625_n3_α
.Lx00630_0:
 .quad 1
# IR_RETURN
 xchain00625_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putget12_γ
# IR_TO
 xchain00625_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00631_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00625_n14_α
 xchain00625_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00631_0
# IR_LIT_INTEGER
 xchain00625_n13_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00632_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00625_n15_α
 xchain00625_n13_β:
 jmp xchain00625_n3_α
.Lx00632_0:
 .quad 4
# IR_VAR
 xchain00625_n14_α:
 mov rax, qword ptr [rbx + 512]
 mov rdx, qword ptr [rbx + 520]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00625_n16_α
 xchain00625_n14_β:
 jmp xchain00625_n12_β
# IR_LIT_INTEGER
 xchain00625_n15_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00625_n17_α
 xchain00625_n15_β:
 jmp xchain00625_n3_α
.Lx00633_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00625_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00634_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00625_n18_α
 xchain00625_n16_β:
 jmp xchain00625_n12_β
.Lx00634_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00625_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00625_n19_α
 xchain00625_n17_β:
 jmp xchain00625_n3_α
.Lx00635_0:
 .quad 5
 xchain00625_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1880: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1880]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00625_n12_β
 jmp xchain00625_n20_α
 xchain00625_n18_β:
 jmp xchain00625_n12_β
# IR_LIT_INTEGER
 xchain00625_n19_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00625_n21_α
 xchain00625_n19_β:
 jmp xchain00625_n3_α
.Lx00636_0:
 .quad 9
 xchain00625_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1883: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1883]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00625_n12_β
 jmp xchain00625_n12_β
 xchain00625_n20_β:
 jmp xchain00625_n12_β
# IR_LIT_INTEGER
 xchain00625_n21_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00637_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00625_n22_α
 xchain00625_n21_β:
 jmp xchain00625_n3_α
.Lx00637_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00625_n22_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00638_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00625_n23_α
 xchain00625_n22_β:
 jmp xchain00625_n3_α
.Lx00638_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00625_n23_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00625_n24_α
 xchain00625_n23_β:
 jmp xchain00625_n3_α
.Lx00639_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00625_n24_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00625_n25_α
 xchain00625_n24_β:
 jmp xchain00625_n3_α
.Lx00640_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00625_n25_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00641_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00625_n26_α
 xchain00625_n25_β:
 jmp xchain00625_n3_α
.Lx00641_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00625_n26_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00625_n27_α
 xchain00625_n26_β:
 jmp xchain00625_n3_α
.Lx00642_0:
 .quad 8
# IR_MAKE_LIST
 xchain00625_n27_α:
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
 jmp xchain00625_n28_α
 xchain00625_n27_β:
 jmp xchain00625_n3_α
# IR_ASSIGN gva
 xchain00625_n28_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 512], rax
 mov qword ptr [rbx + 520], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00625_n29_α
 xchain00625_n28_β:
 jmp xchain00625_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00625_n29_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00625_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00625_n3_α
 xchain00625_n29_β:
 jmp xchain00625_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00625_n30_α:
 jmp qword ptr [r12 + 304]
 xchain00625_n30_β:
 jmp xchain00625_n3_α
proc_putget12_β:
jmp proc_putget12_ω
proc_putget12_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 800], rax
 pop rsi
proc_pushpop12_α_body:
# IR_VAR_REF
 xchain00643_n0_α:
 lea rdi, [rbx + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00643_n1_α
 xchain00643_n0_β:
 jmp xchain00643_n3_α
# IR_NULLTEST_VAR
 xchain00643_n1_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain00643_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00643_n3_α
 cmp eax, 0
 jne xchain00643_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain00643_n2_α
 xchain00643_n1_β:
 jmp xchain00643_n3_α
# IR_LIT_INTEGER
 xchain00643_n2_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00644_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00643_n4_α
 xchain00643_n2_β:
 jmp xchain00643_n3_α
.Lx00644_0:
 .quad 1
# IR_VAR
 xchain00643_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00643_n5_α
 xchain00643_n3_β:
 jmp xchain00643_n6_α
# IR_ASSIGN_VAR
 xchain00643_n4_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00643_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00643_n7_α
 xchain00643_n4_β:
 jmp xchain00643_n3_α
# IR_UNOP
 xchain00643_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00643_n6_α
 cmp eax, 0
 jne xchain00643_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00643_n8_α
 xchain00643_n5_β:
 jmp xchain00643_n6_α
# IR_LIT_INTEGER
 xchain00643_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00643_n9_α
 xchain00643_n6_β:
 jmp proc_pushpop12_ω
.Lx00645_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00643_n7_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx00646_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain00643_n10_α
 xchain00643_n7_β:
 jmp xchain00643_n3_α
.Lx00646_0:
 .quad 3
# IR_LIT_STRING
 xchain00643_n8_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00643_n11_α
 xchain00643_n8_β:
 jmp proc_pushpop12_ω
.Lx00647_0:
 .quad .Lx00647_0_s
.Lx00647_0_s:
 .string "pop(push(L12,0))"
# IR_VAR
 xchain00643_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00643_n12_α
 xchain00643_n9_β:
 jmp proc_pushpop12_ω
# IR_LIT_INTEGER
 xchain00643_n10_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00648_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00643_n13_α
 xchain00643_n10_β:
 jmp xchain00643_n3_α
.Lx00648_0:
 .quad 1
# IR_RETURN
 xchain00643_n11_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop12_γ
# IR_TO
 xchain00643_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00649_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00643_n14_α
 xchain00643_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00649_0
# IR_LIT_INTEGER
 xchain00643_n13_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00643_n15_α
 xchain00643_n13_β:
 jmp xchain00643_n3_α
.Lx00650_0:
 .quad 4
# IR_VAR
 xchain00643_n14_α:
 mov rax, qword ptr [rbx + 544]
 mov rdx, qword ptr [rbx + 552]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00643_n16_α
 xchain00643_n14_β:
 jmp xchain00643_n12_β
# IR_LIT_INTEGER
 xchain00643_n15_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain00643_n17_α
 xchain00643_n15_β:
 jmp xchain00643_n3_α
.Lx00651_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00643_n16_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00652_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00643_n18_α
 xchain00643_n16_β:
 jmp xchain00643_n12_β
.Lx00652_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00643_n17_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain00643_n19_α
 xchain00643_n17_β:
 jmp xchain00643_n3_α
.Lx00653_0:
 .quad 5
 xchain00643_n18_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1921: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1921]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00643_n12_β
 jmp xchain00643_n20_α
 xchain00643_n18_β:
 jmp xchain00643_n12_β
# IR_LIT_INTEGER
 xchain00643_n19_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00643_n21_α
 xchain00643_n19_β:
 jmp xchain00643_n3_α
.Lx00654_0:
 .quad 9
 xchain00643_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1924: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1924]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00643_n12_β
 jmp xchain00643_n12_β
 xchain00643_n20_β:
 jmp xchain00643_n12_β
# IR_LIT_INTEGER
 xchain00643_n21_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00643_n22_α
 xchain00643_n21_β:
 jmp xchain00643_n3_α
.Lx00655_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00643_n22_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00643_n23_α
 xchain00643_n22_β:
 jmp xchain00643_n3_α
.Lx00656_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00643_n23_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00643_n24_α
 xchain00643_n23_β:
 jmp xchain00643_n3_α
.Lx00657_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00643_n24_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00658_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00643_n25_α
 xchain00643_n24_β:
 jmp xchain00643_n3_α
.Lx00658_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00643_n25_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00643_n26_α
 xchain00643_n25_β:
 jmp xchain00643_n3_α
.Lx00659_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00643_n26_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain00643_n27_α
 xchain00643_n26_β:
 jmp xchain00643_n3_α
.Lx00660_0:
 .quad 8
# IR_MAKE_LIST
 xchain00643_n27_α:
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
 jmp xchain00643_n28_α
 xchain00643_n27_β:
 jmp xchain00643_n3_α
# IR_ASSIGN gva
 xchain00643_n28_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 544], rax
 mov qword ptr [rbx + 552], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00643_n29_α
 xchain00643_n28_β:
 jmp xchain00643_n3_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00643_n29_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain00643_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain00643_n3_α
 xchain00643_n29_β:
 jmp xchain00643_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00643_n30_α:
 jmp qword ptr [r12 + 304]
 xchain00643_n30_β:
 jmp xchain00643_n3_α
proc_pushpop12_β:
jmp proc_pushpop12_ω
proc_pushpop12_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_setcreate_α_body:
# IR_VAR
 xchain00661_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00661_n1_α
 xchain00661_n0_β:
 jmp xchain00661_n2_α
# IR_UNOP
 xchain00661_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00661_n2_α
 cmp eax, 0
 jne xchain00661_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00661_n3_α
 xchain00661_n1_β:
 jmp xchain00661_n2_α
# IR_LIT_INTEGER
 xchain00661_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00661_n4_α
 xchain00661_n2_β:
 jmp proc_setcreate_ω
.Lx00662_0:
 .quad 1
# IR_LIT_STRING
 xchain00661_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00661_n5_α
 xchain00661_n3_β:
 jmp proc_setcreate_ω
.Lx00663_0:
 .quad .Lx00663_0_s
.Lx00663_0_s:
 .string "set()"
# IR_VAR
 xchain00661_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00661_n6_α
 xchain00661_n4_β:
 jmp proc_setcreate_ω
# IR_RETURN
 xchain00661_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcreate_γ
# IR_TO
 xchain00661_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00664_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00661_n7_α
 xchain00661_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00664_0
 xchain00661_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1950: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1950]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00661_n6_β
 jmp xchain00661_n6_β
 xchain00661_n7_β:
 jmp xchain00661_n6_β
proc_setcreate_β:
jmp proc_setcreate_ω
proc_setcreate_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_setcopy_α_body:
# IR_VAR_REF
 xchain00665_n0_α:
 lea rdi, [rbx + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00665_n1_α
 xchain00665_n0_β:
 jmp xchain00665_n3_α
# IR_NULLTEST_VAR
 xchain00665_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00665_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00665_n3_α
 cmp eax, 0
 jne xchain00665_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00665_n2_α
 xchain00665_n1_β:
 jmp xchain00665_n3_α
# IR_LIT_INTEGER
 xchain00665_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00665_n4_α
 xchain00665_n2_β:
 jmp xchain00665_n3_α
.Lx00666_0:
 .quad 1
# IR_VAR
 xchain00665_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00665_n5_α
 xchain00665_n3_β:
 jmp xchain00665_n6_α
# IR_ASSIGN_VAR
 xchain00665_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00665_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00665_n7_α
 xchain00665_n4_β:
 jmp xchain00665_n3_α
# IR_UNOP
 xchain00665_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00665_n6_α
 cmp eax, 0
 jne xchain00665_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00665_n8_α
 xchain00665_n5_β:
 jmp xchain00665_n6_α
# IR_LIT_INTEGER
 xchain00665_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00667_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00665_n9_α
 xchain00665_n6_β:
 jmp proc_setcopy_ω
.Lx00667_0:
 .quad 1
 xchain00665_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1962: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1962]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00665_n3_α
 jmp xchain00665_n10_α
 xchain00665_n7_β:
 jmp xchain00665_n3_α
# IR_LIT_STRING
 xchain00665_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00668_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00665_n11_α
 xchain00665_n8_β:
 jmp proc_setcopy_ω
.Lx00668_0:
 .quad .Lx00668_0_s
.Lx00668_0_s:
 .string "copy(S)"
# IR_VAR
 xchain00665_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00665_n12_α
 xchain00665_n9_β:
 jmp proc_setcopy_ω
# IR_ASSIGN gva
 xchain00665_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 576], rax
 mov qword ptr [rbx + 584], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00665_n13_α
 xchain00665_n10_β:
 jmp xchain00665_n3_α
# IR_RETURN
 xchain00665_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcopy_γ
# IR_TO
 xchain00665_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00669_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00665_n14_α
 xchain00665_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00669_0
# IR_LIT_INTEGER
 xchain00665_n13_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00665_n15_α
 xchain00665_n13_β:
 jmp xchain00665_n3_α
.Lx00670_0:
 .quad 5
# IR_VAR
 xchain00665_n14_α:
 mov rax, qword ptr [rbx + 576]
 mov rdx, qword ptr [rbx + 584]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00665_n16_α
 xchain00665_n14_β:
 jmp xchain00665_n12_β
 xchain00665_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn1973: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1973]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00665_n3_α
 jmp xchain00665_n17_α
 xchain00665_n15_β:
 jmp xchain00665_n3_α
 xchain00665_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1975: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1975]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00665_n12_β
 jmp xchain00665_n12_β
 xchain00665_n16_β:
 jmp xchain00665_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00665_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00665_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00665_n3_α
 xchain00665_n17_β:
 jmp xchain00665_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00665_n18_α:
 jmp qword ptr [r12 + 240]
 xchain00665_n18_β:
 jmp xchain00665_n3_α
proc_setcopy_β:
jmp proc_setcopy_ω
proc_setcopy_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setinsert_α_body:
# IR_VAR_REF
 xchain00671_n0_α:
 lea rdi, [rbx + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00671_n1_α
 xchain00671_n0_β:
 jmp xchain00671_n3_α
# IR_NULLTEST_VAR
 xchain00671_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00671_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00671_n3_α
 cmp eax, 0
 jne xchain00671_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00671_n2_α
 xchain00671_n1_β:
 jmp xchain00671_n3_α
# IR_LIT_INTEGER
 xchain00671_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00671_n4_α
 xchain00671_n2_β:
 jmp xchain00671_n3_α
.Lx00672_0:
 .quad 1
# IR_VAR
 xchain00671_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00671_n5_α
 xchain00671_n3_β:
 jmp xchain00671_n6_α
# IR_ASSIGN_VAR
 xchain00671_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00671_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00671_n7_α
 xchain00671_n4_β:
 jmp xchain00671_n3_α
# IR_UNOP
 xchain00671_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00671_n6_α
 cmp eax, 0
 jne xchain00671_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00671_n8_α
 xchain00671_n5_β:
 jmp xchain00671_n6_α
# IR_LIT_INTEGER
 xchain00671_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00673_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00671_n9_α
 xchain00671_n6_β:
 jmp proc_setinsert_ω
.Lx00673_0:
 .quad 1
 xchain00671_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1991: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1991]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00671_n3_α
 jmp xchain00671_n10_α
 xchain00671_n7_β:
 jmp xchain00671_n3_α
# IR_LIT_STRING
 xchain00671_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00671_n11_α
 xchain00671_n8_β:
 jmp proc_setinsert_ω
.Lx00674_0:
 .quad .Lx00674_0_s
.Lx00674_0_s:
 .string "insert(S,5)"
# IR_VAR
 xchain00671_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00671_n12_α
 xchain00671_n9_β:
 jmp proc_setinsert_ω
# IR_ASSIGN gva
 xchain00671_n10_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 608], rax
 mov qword ptr [rbx + 616], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00671_n13_α
 xchain00671_n10_β:
 jmp xchain00671_n3_α
# IR_RETURN
 xchain00671_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsert_γ
# IR_TO
 xchain00671_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00675_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00671_n14_α
 xchain00671_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00675_0
# IR_LIT_INTEGER
 xchain00671_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00671_n15_α
 xchain00671_n13_β:
 jmp xchain00671_n3_α
.Lx00676_0:
 .quad 5
# IR_VAR
 xchain00671_n14_α:
 mov rax, qword ptr [rbx + 608]
 mov rdx, qword ptr [rbx + 616]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00671_n16_α
 xchain00671_n14_β:
 jmp xchain00671_n12_β
 xchain00671_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn2002: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2002]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00671_n3_α
 jmp xchain00671_n17_α
 xchain00671_n15_β:
 jmp xchain00671_n3_α
# IR_LIT_INTEGER
 xchain00671_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00671_n18_α
 xchain00671_n16_β:
 jmp xchain00671_n12_β
.Lx00677_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00671_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00671_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00671_n3_α
 xchain00671_n17_β:
 jmp xchain00671_n3_α
 xchain00671_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2007: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2007]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00671_n12_β
 jmp xchain00671_n12_β
 xchain00671_n18_β:
 jmp xchain00671_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00671_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00671_n19_β:
 jmp xchain00671_n3_α
proc_setinsert_β:
jmp proc_setinsert_ω
proc_setinsert_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setmember_α_body:
# IR_VAR_REF
 xchain00678_n0_α:
 lea rdi, [rbx + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00678_n1_α
 xchain00678_n0_β:
 jmp xchain00678_n3_α
# IR_NULLTEST_VAR
 xchain00678_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00678_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00678_n3_α
 cmp eax, 0
 jne xchain00678_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00678_n2_α
 xchain00678_n1_β:
 jmp xchain00678_n3_α
# IR_LIT_INTEGER
 xchain00678_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00678_n4_α
 xchain00678_n2_β:
 jmp xchain00678_n3_α
.Lx00679_0:
 .quad 1
# IR_VAR
 xchain00678_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00678_n5_α
 xchain00678_n3_β:
 jmp xchain00678_n6_α
# IR_ASSIGN_VAR
 xchain00678_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00678_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00678_n7_α
 xchain00678_n4_β:
 jmp xchain00678_n3_α
# IR_UNOP
 xchain00678_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00678_n6_α
 cmp eax, 0
 jne xchain00678_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00678_n8_α
 xchain00678_n5_β:
 jmp xchain00678_n6_α
# IR_LIT_INTEGER
 xchain00678_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00678_n9_α
 xchain00678_n6_β:
 jmp proc_setmember_ω
.Lx00680_0:
 .quad 1
 xchain00678_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2021: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2021]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00678_n3_α
 jmp xchain00678_n10_α
 xchain00678_n7_β:
 jmp xchain00678_n3_α
# IR_LIT_STRING
 xchain00678_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00681_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00678_n11_α
 xchain00678_n8_β:
 jmp proc_setmember_ω
.Lx00681_0:
 .quad .Lx00681_0_s
.Lx00681_0_s:
 .string "member(S,5)"
# IR_VAR
 xchain00678_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00678_n12_α
 xchain00678_n9_β:
 jmp proc_setmember_ω
# IR_ASSIGN gva
 xchain00678_n10_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 640], rax
 mov qword ptr [rbx + 648], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00678_n13_α
 xchain00678_n10_β:
 jmp xchain00678_n3_α
# IR_RETURN
 xchain00678_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setmember_γ
# IR_TO
 xchain00678_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00682_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00678_n14_α
 xchain00678_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00682_0
# IR_LIT_INTEGER
 xchain00678_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00678_n15_α
 xchain00678_n13_β:
 jmp xchain00678_n3_α
.Lx00683_0:
 .quad 5
# IR_VAR
 xchain00678_n14_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00678_n16_α
 xchain00678_n14_β:
 jmp xchain00678_n12_β
 xchain00678_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn2032: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2032]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00678_n3_α
 jmp xchain00678_n17_α
 xchain00678_n15_β:
 jmp xchain00678_n3_α
# IR_LIT_INTEGER
 xchain00678_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00678_n18_α
 xchain00678_n16_β:
 jmp xchain00678_n12_β
.Lx00684_0:
 .quad 5
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00678_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00678_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00678_n3_α
 xchain00678_n17_β:
 jmp xchain00678_n3_α
 xchain00678_n18_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2037: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2037]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00678_n12_β
 jmp xchain00678_n12_β
 xchain00678_n18_β:
 jmp xchain00678_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00678_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00678_n19_β:
 jmp xchain00678_n3_α
proc_setmember_β:
jmp proc_setmember_ω
proc_setmember_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_setinsdel_α_body:
# IR_VAR_REF
 xchain00685_n0_α:
 lea rdi, [rbx + 688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00685_n1_α
 xchain00685_n0_β:
 jmp xchain00685_n3_α
# IR_NULLTEST_VAR
 xchain00685_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00685_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00685_n3_α
 cmp eax, 0
 jne xchain00685_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00685_n2_α
 xchain00685_n1_β:
 jmp xchain00685_n3_α
# IR_LIT_INTEGER
 xchain00685_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00685_n4_α
 xchain00685_n2_β:
 jmp xchain00685_n3_α
.Lx00686_0:
 .quad 1
# IR_VAR
 xchain00685_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00685_n5_α
 xchain00685_n3_β:
 jmp xchain00685_n6_α
# IR_ASSIGN_VAR
 xchain00685_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00685_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00685_n7_α
 xchain00685_n4_β:
 jmp xchain00685_n3_α
# IR_UNOP
 xchain00685_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00685_n6_α
 cmp eax, 0
 jne xchain00685_n6_α
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 jmp xchain00685_n8_α
 xchain00685_n5_β:
 jmp xchain00685_n6_α
# IR_LIT_INTEGER
 xchain00685_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00685_n9_α
 xchain00685_n6_β:
 jmp proc_setinsdel_ω
.Lx00687_0:
 .quad 1
 xchain00685_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2051: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2051]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain00685_n3_α
 jmp xchain00685_n10_α
 xchain00685_n7_β:
 jmp xchain00685_n3_α
# IR_LIT_STRING
 xchain00685_n8_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00688_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00685_n11_α
 xchain00685_n8_β:
 jmp proc_setinsdel_ω
.Lx00688_0:
 .quad .Lx00688_0_s
.Lx00688_0_s:
 .string "insert+delete"
# IR_VAR
 xchain00685_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00685_n12_α
 xchain00685_n9_β:
 jmp proc_setinsdel_ω
# IR_ASSIGN gva
 xchain00685_n10_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 672], rax
 mov qword ptr [rbx + 680], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00685_n13_α
 xchain00685_n10_β:
 jmp xchain00685_n3_α
# IR_RETURN
 xchain00685_n11_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsdel_γ
# IR_TO
 xchain00685_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00689_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00685_n14_α
 xchain00685_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00689_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00685_n13_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain00685_n3_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain00685_n3_α
 xchain00685_n13_β:
 jmp xchain00685_n3_α
# IR_VAR
 xchain00685_n14_α:
 mov rax, qword ptr [rbx + 672]
 mov rdx, qword ptr [rbx + 680]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00685_n16_α
 xchain00685_n14_β:
 jmp xchain00685_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00685_n15_α:
 jmp qword ptr [r12 + 336]
 xchain00685_n15_β:
 jmp xchain00685_n3_α
# IR_LIT_INTEGER
 xchain00685_n16_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00685_n17_α
 xchain00685_n16_β:
 jmp xchain00685_n12_β
.Lx00690_0:
 .quad 5
 xchain00685_n17_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2066: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2066]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00685_n12_β
 jmp xchain00685_n18_α
 xchain00685_n17_β:
 jmp xchain00685_n12_β
# IR_LIT_INTEGER
 xchain00685_n18_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00685_n19_α
 xchain00685_n18_β:
 jmp xchain00685_n12_β
.Lx00691_0:
 .quad 5
 xchain00685_n19_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+128]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2069: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2069]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00685_n12_β
 jmp xchain00685_n12_β
 xchain00685_n19_β:
 jmp xchain00685_n12_β
proc_setinsdel_β:
jmp proc_setinsdel_ω
proc_setinsdel_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_setpick_α_body:
# IR_VAR_REF
 xchain00692_n0_α:
 lea rdi, [rbx + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00692_n1_α
 xchain00692_n0_β:
 jmp xchain00692_n3_α
# IR_NULLTEST_VAR
 xchain00692_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00692_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00692_n3_α
 cmp eax, 0
 jne xchain00692_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00692_n2_α
 xchain00692_n1_β:
 jmp xchain00692_n3_α
# IR_LIT_INTEGER
 xchain00692_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00692_n4_α
 xchain00692_n2_β:
 jmp xchain00692_n3_α
.Lx00693_0:
 .quad 1
# IR_VAR
 xchain00692_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00692_n5_α
 xchain00692_n3_β:
 jmp xchain00692_n6_α
# IR_ASSIGN_VAR
 xchain00692_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00692_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00692_n7_α
 xchain00692_n4_β:
 jmp xchain00692_n3_α
# IR_UNOP
 xchain00692_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00692_n6_α
 cmp eax, 0
 jne xchain00692_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00692_n8_α
 xchain00692_n5_β:
 jmp xchain00692_n6_α
# IR_LIT_INTEGER
 xchain00692_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00692_n9_α
 xchain00692_n6_β:
 jmp proc_setpick_ω
.Lx00694_0:
 .quad 1
 xchain00692_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2081: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2081]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00692_n3_α
 jmp xchain00692_n10_α
 xchain00692_n7_β:
 jmp xchain00692_n3_α
# IR_LIT_STRING
 xchain00692_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00692_n11_α
 xchain00692_n8_β:
 jmp proc_setpick_ω
.Lx00695_0:
 .quad .Lx00695_0_s
.Lx00695_0_s:
 .string "?S"
# IR_VAR
 xchain00692_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00692_n12_α
 xchain00692_n9_β:
 jmp proc_setpick_ω
# IR_ASSIGN gva
 xchain00692_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 704], rax
 mov qword ptr [rbx + 712], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00692_n13_α
 xchain00692_n10_β:
 jmp xchain00692_n3_α
# IR_RETURN
 xchain00692_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setpick_γ
# IR_TO
 xchain00692_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00696_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00692_n14_α
 xchain00692_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00696_0
# IR_LIT_INTEGER
 xchain00692_n13_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00692_n15_α
 xchain00692_n13_β:
 jmp xchain00692_n3_α
.Lx00697_0:
 .quad 5
# IR_VAR_REF
 xchain00692_n14_α:
 lea rdi, [rbx + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00692_n16_α
 xchain00692_n14_β:
 jmp xchain00692_n12_β
 xchain00692_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2093: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2093]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00692_n3_α
 jmp xchain00692_n17_α
 xchain00692_n15_β:
 jmp xchain00692_n3_α
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00692_n16_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00692_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00692_n18_α
 xchain00692_n16_β:
 jmp xchain00692_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00692_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00692_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00692_n3_α
 xchain00692_n17_β:
 jmp xchain00692_n3_α
# IR_DEREF variable -> value
 xchain00692_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00692_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00692_n12_β
 xchain00692_n18_β:
 jmp xchain00692_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00692_n19_α:
 jmp qword ptr [r12 + 240]
 xchain00692_n19_β:
 jmp xchain00692_n3_α
proc_setpick_β:
jmp proc_setpick_ω
proc_setpick_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_setbang_α_body:
# IR_VAR_REF
 xchain00698_n0_α:
 lea rdi, [rbx + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00698_n1_α
 xchain00698_n0_β:
 jmp xchain00698_n3_α
# IR_NULLTEST_VAR
 xchain00698_n1_α:
 mov eax, dword ptr [r12 + 400]
 cmp eax, 99
 je xchain00698_n3_α
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00698_n3_α
 cmp eax, 0
 jne xchain00698_n3_α
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 424], rax
 jmp xchain00698_n2_α
 xchain00698_n1_β:
 jmp xchain00698_n3_α
# IR_LIT_INTEGER
 xchain00698_n2_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00698_n4_α
 xchain00698_n2_β:
 jmp xchain00698_n3_α
.Lx00699_0:
 .quad 1
# IR_VAR
 xchain00698_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00698_n5_α
 xchain00698_n3_β:
 jmp xchain00698_n6_α
# IR_ASSIGN_VAR
 xchain00698_n4_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00698_n3_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00698_n7_α
 xchain00698_n4_β:
 jmp xchain00698_n3_α
# IR_UNOP
 xchain00698_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00698_n6_α
 cmp eax, 0
 jne xchain00698_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00698_n8_α
 xchain00698_n5_β:
 jmp xchain00698_n6_α
# IR_LIT_INTEGER
 xchain00698_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00698_n9_α
 xchain00698_n6_β:
 jmp proc_setbang_ω
.Lx00700_0:
 .quad 1
 xchain00698_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2111: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2111]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00698_n3_α
 jmp xchain00698_n10_α
 xchain00698_n7_β:
 jmp xchain00698_n3_α
# IR_LIT_STRING
 xchain00698_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00698_n11_α
 xchain00698_n8_β:
 jmp proc_setbang_ω
.Lx00701_0:
 .quad .Lx00701_0_s
.Lx00701_0_s:
 .string "!S"
# IR_VAR
 xchain00698_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00698_n12_α
 xchain00698_n9_β:
 jmp proc_setbang_ω
# IR_ASSIGN gva
 xchain00698_n10_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 736], rax
 mov qword ptr [rbx + 744], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00698_n13_α
 xchain00698_n10_β:
 jmp xchain00698_n3_α
# IR_RETURN
 xchain00698_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setbang_γ
# IR_TO
 xchain00698_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00702_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00698_n14_α
 xchain00698_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00702_0
# IR_LIT_INTEGER
 xchain00698_n13_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00703_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00698_n15_α
 xchain00698_n13_β:
 jmp xchain00698_n3_α
.Lx00703_0:
 .quad 1
# IR_VAR
 xchain00698_n14_α:
 mov rax, qword ptr [rbx + 736]
 mov rdx, qword ptr [rbx + 744]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00698_n16_α
 xchain00698_n14_β:
 jmp xchain00698_n12_β
# IR_LIT_INTEGER
 xchain00698_n15_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00698_n17_α
 xchain00698_n15_β:
 jmp xchain00698_n3_α
.Lx00704_0:
 .quad 5
# IR_LIST_BANG
 xchain00698_n16_α:
 mov qword ptr [r12 + 112], 0
.Lx00705_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00698_n12_β
 jmp xchain00698_n16_β
 xchain00698_n16_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00705_0
# IR_TO
 xchain00698_n17_α:
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 352], rax
.Lx00706_0:
 mov rax, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jg xchain00698_n3_α
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain00698_n18_α
 xchain00698_n17_β:
 inc qword ptr [r12 + 352]
 jmp .Lx00706_0
 xchain00698_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2127: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2127]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00698_n3_α
 jmp xchain00698_n17_β
 xchain00698_n18_β:
 jmp xchain00698_n3_α
proc_setbang_β:
jmp proc_setbang_ω
proc_setbang_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_tblcreate_α_body:
# IR_VAR
 xchain00707_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00707_n1_α
 xchain00707_n0_β:
 jmp xchain00707_n2_α
# IR_UNOP
 xchain00707_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00707_n2_α
 cmp eax, 0
 jne xchain00707_n2_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00707_n3_α
 xchain00707_n1_β:
 jmp xchain00707_n2_α
# IR_LIT_INTEGER
 xchain00707_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00708_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00707_n4_α
 xchain00707_n2_β:
 jmp proc_tblcreate_ω
.Lx00708_0:
 .quad 1
# IR_LIT_STRING
 xchain00707_n3_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00709_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00707_n5_α
 xchain00707_n3_β:
 jmp proc_tblcreate_ω
.Lx00709_0:
 .quad .Lx00709_0_s
.Lx00709_0_s:
 .string "table()"
# IR_VAR
 xchain00707_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00707_n6_α
 xchain00707_n4_β:
 jmp proc_tblcreate_ω
# IR_RETURN
 xchain00707_n5_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblcreate_γ
# IR_TO
 xchain00707_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00710_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00707_n7_α
 xchain00707_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00710_0
 xchain00707_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2140: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2140]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00707_n6_β
 jmp xchain00707_n6_β
 xchain00707_n7_β:
 jmp xchain00707_n6_β
proc_tblcreate_β:
jmp proc_tblcreate_ω
proc_tblcreate_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_tblasgn_α_body:
# IR_VAR_REF
 xchain00711_n0_α:
 lea rdi, [rbx + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00711_n1_α
 xchain00711_n0_β:
 jmp xchain00711_n3_α
# IR_NULLTEST_VAR
 xchain00711_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00711_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00711_n3_α
 cmp eax, 0
 jne xchain00711_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00711_n2_α
 xchain00711_n1_β:
 jmp xchain00711_n3_α
# IR_LIT_INTEGER
 xchain00711_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00711_n4_α
 xchain00711_n2_β:
 jmp xchain00711_n3_α
.Lx00712_0:
 .quad 1
# IR_VAR
 xchain00711_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00711_n5_α
 xchain00711_n3_β:
 jmp xchain00711_n6_α
# IR_ASSIGN_VAR
 xchain00711_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00711_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00711_n7_α
 xchain00711_n4_β:
 jmp xchain00711_n3_α
# IR_UNOP
 xchain00711_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00711_n6_α
 cmp eax, 0
 jne xchain00711_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00711_n8_α
 xchain00711_n5_β:
 jmp xchain00711_n6_α
# IR_LIT_INTEGER
 xchain00711_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00713_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00711_n9_α
 xchain00711_n6_β:
 jmp proc_tblasgn_ω
.Lx00713_0:
 .quad 1
 xchain00711_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2152: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2152]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00711_n3_α
 jmp xchain00711_n10_α
 xchain00711_n7_β:
 jmp xchain00711_n3_α
# IR_LIT_STRING
 xchain00711_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00714_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00711_n11_α
 xchain00711_n8_β:
 jmp proc_tblasgn_ω
.Lx00714_0:
 .quad .Lx00714_0_s
.Lx00714_0_s:
 .string "T[5] := 1"
# IR_VAR
 xchain00711_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00711_n12_α
 xchain00711_n9_β:
 jmp proc_tblasgn_ω
# IR_ASSIGN gva
 xchain00711_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 768], rax
 mov qword ptr [rbx + 776], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00711_n13_α
 xchain00711_n10_β:
 jmp xchain00711_n3_α
# IR_RETURN
 xchain00711_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblasgn_γ
# IR_TO
 xchain00711_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00715_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00711_n14_α
 xchain00711_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00715_0
# IR_LIT_INTEGER
 xchain00711_n13_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00716_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00711_n15_α
 xchain00711_n13_β:
 jmp xchain00711_n3_α
.Lx00716_0:
 .quad 5
# IR_VAR_REF
 xchain00711_n14_α:
 lea rdi, [rbx + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00711_n16_α
 xchain00711_n14_β:
 jmp xchain00711_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00711_n15_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00711_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00711_n17_α
 xchain00711_n15_β:
 jmp xchain00711_n3_α
# IR_LIT_INTEGER
 xchain00711_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00717_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00711_n18_α
 xchain00711_n16_β:
 jmp xchain00711_n12_β
.Lx00717_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00711_n17_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00718_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00711_n19_α
 xchain00711_n17_β:
 jmp xchain00711_n3_α
.Lx00718_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00711_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00711_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00711_n20_α
 xchain00711_n18_β:
 jmp xchain00711_n12_β
# IR_ASSIGN_VAR
 xchain00711_n19_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00711_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00711_n21_α
 xchain00711_n19_β:
 jmp xchain00711_n3_α
# IR_LIT_INTEGER
 xchain00711_n20_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00711_n22_α
 xchain00711_n20_β:
 jmp xchain00711_n12_β
.Lx00719_0:
 .quad 1
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00711_n21_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00711_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00711_n3_α
 xchain00711_n21_β:
 jmp xchain00711_n3_α
# IR_ASSIGN_VAR
 xchain00711_n22_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00711_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00711_n12_β
 xchain00711_n22_β:
 jmp xchain00711_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00711_n23_α:
 jmp qword ptr [r12 + 272]
 xchain00711_n23_β:
 jmp xchain00711_n3_α
proc_tblasgn_β:
jmp proc_tblasgn_ω
proc_tblasgn_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 432], rax
 pop rsi
proc_tblsub_α_body:
# IR_VAR_REF
 xchain00720_n0_α:
 lea rdi, [rbx + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00720_n1_α
 xchain00720_n0_β:
 jmp xchain00720_n3_α
# IR_NULLTEST_VAR
 xchain00720_n1_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain00720_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00720_n3_α
 cmp eax, 0
 jne xchain00720_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain00720_n2_α
 xchain00720_n1_β:
 jmp xchain00720_n3_α
# IR_LIT_INTEGER
 xchain00720_n2_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00720_n4_α
 xchain00720_n2_β:
 jmp xchain00720_n3_α
.Lx00721_0:
 .quad 1
# IR_VAR
 xchain00720_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00720_n5_α
 xchain00720_n3_β:
 jmp xchain00720_n6_α
# IR_ASSIGN_VAR
 xchain00720_n4_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00720_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00720_n7_α
 xchain00720_n4_β:
 jmp xchain00720_n3_α
# IR_UNOP
 xchain00720_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00720_n6_α
 cmp eax, 0
 jne xchain00720_n6_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00720_n8_α
 xchain00720_n5_β:
 jmp xchain00720_n6_α
# IR_LIT_INTEGER
 xchain00720_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00720_n9_α
 xchain00720_n6_β:
 jmp proc_tblsub_ω
.Lx00722_0:
 .quad 1
 xchain00720_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2185: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2185]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00720_n3_α
 jmp xchain00720_n10_α
 xchain00720_n7_β:
 jmp xchain00720_n3_α
# IR_LIT_STRING
 xchain00720_n8_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00723_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00720_n11_α
 xchain00720_n8_β:
 jmp proc_tblsub_ω
.Lx00723_0:
 .quad .Lx00723_0_s
.Lx00723_0_s:
 .string "T[5]"
# IR_VAR
 xchain00720_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00720_n12_α
 xchain00720_n9_β:
 jmp proc_tblsub_ω
# IR_ASSIGN gva
 xchain00720_n10_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 800], rax
 mov qword ptr [rbx + 808], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00720_n13_α
 xchain00720_n10_β:
 jmp xchain00720_n3_α
# IR_RETURN
 xchain00720_n11_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblsub_γ
# IR_TO
 xchain00720_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00724_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00720_n14_α
 xchain00720_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00724_0
# IR_LIT_INTEGER
 xchain00720_n13_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00720_n15_α
 xchain00720_n13_β:
 jmp xchain00720_n3_α
.Lx00725_0:
 .quad 5
# IR_VAR_REF
 xchain00720_n14_α:
 lea rdi, [rbx + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00720_n16_α
 xchain00720_n14_β:
 jmp xchain00720_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00720_n15_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00720_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00720_n17_α
 xchain00720_n15_β:
 jmp xchain00720_n3_α
# IR_LIT_INTEGER
 xchain00720_n16_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00720_n18_α
 xchain00720_n16_β:
 jmp xchain00720_n12_β
.Lx00726_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00720_n17_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00727_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00720_n19_α
 xchain00720_n17_β:
 jmp xchain00720_n3_α
.Lx00727_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00720_n18_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00720_n12_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00720_n20_α
 xchain00720_n18_β:
 jmp xchain00720_n12_β
# IR_ASSIGN_VAR
 xchain00720_n19_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00720_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00720_n21_α
 xchain00720_n19_β:
 jmp xchain00720_n3_α
# IR_DEREF variable -> value
 xchain00720_n20_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00720_n12_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00720_n12_β
 xchain00720_n20_β:
 jmp xchain00720_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00720_n21_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00720_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00720_n3_α
 xchain00720_n21_β:
 jmp xchain00720_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00720_n22_α:
 jmp qword ptr [r12 + 256]
 xchain00720_n22_β:
 jmp xchain00720_n3_α
proc_tblsub_β:
jmp proc_tblsub_ω
proc_tblsub_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_recconstr_α_body:
# IR_VAR
 xchain00728_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00728_n1_α
 xchain00728_n0_β:
 jmp xchain00728_n2_α
# IR_UNOP
 xchain00728_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00728_n2_α
 cmp eax, 0
 jne xchain00728_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00728_n3_α
 xchain00728_n1_β:
 jmp xchain00728_n2_α
# IR_LIT_INTEGER
 xchain00728_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00728_n4_α
 xchain00728_n2_β:
 jmp proc_recconstr_ω
.Lx00729_0:
 .quad 1
# IR_LIT_STRING
 xchain00728_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00730_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00728_n5_α
 xchain00728_n3_β:
 jmp proc_recconstr_ω
.Lx00730_0:
 .quad .Lx00730_0_s
.Lx00730_0_s:
 .string "record(4,7)"
# IR_VAR
 xchain00728_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00728_n6_α
 xchain00728_n4_β:
 jmp proc_recconstr_ω
# IR_RETURN
 xchain00728_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recconstr_γ
# IR_TO
 xchain00728_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00731_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00728_n7_α
 xchain00728_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00731_0
# IR_LIT_INTEGER
 xchain00728_n7_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00728_n8_α
 xchain00728_n7_β:
 jmp xchain00728_n6_β
.Lx00732_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00728_n8_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00728_n9_α
 xchain00728_n8_β:
 jmp xchain00728_n6_β
.Lx00733_0:
 .quad 7
 xchain00728_n9_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2220: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2220]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00728_n6_β
 jmp xchain00728_n6_β
 xchain00728_n9_β:
 jmp xchain00728_n6_β
proc_recconstr_β:
jmp proc_recconstr_ω
proc_recconstr_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 416], rax
 pop rsi
proc_reccopy_α_body:
# IR_VAR_REF
 xchain00734_n0_α:
 lea rdi, [rbx + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00734_n1_α
 xchain00734_n0_β:
 jmp xchain00734_n3_α
# IR_NULLTEST_VAR
 xchain00734_n1_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00734_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00734_n3_α
 cmp eax, 0
 jne xchain00734_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain00734_n2_α
 xchain00734_n1_β:
 jmp xchain00734_n3_α
# IR_LIT_INTEGER
 xchain00734_n2_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00734_n4_α
 xchain00734_n2_β:
 jmp xchain00734_n3_α
.Lx00735_0:
 .quad 1
# IR_VAR
 xchain00734_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00734_n5_α
 xchain00734_n3_β:
 jmp xchain00734_n6_α
# IR_ASSIGN_VAR
 xchain00734_n4_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00734_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00734_n7_α
 xchain00734_n4_β:
 jmp xchain00734_n3_α
# IR_UNOP
 xchain00734_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00734_n6_α
 cmp eax, 0
 jne xchain00734_n6_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00734_n8_α
 xchain00734_n5_β:
 jmp xchain00734_n6_α
# IR_LIT_INTEGER
 xchain00734_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00734_n9_α
 xchain00734_n6_β:
 jmp proc_reccopy_ω
.Lx00736_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00734_n7_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00737_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00734_n10_α
 xchain00734_n7_β:
 jmp xchain00734_n3_α
.Lx00737_0:
 .quad 4
# IR_LIT_STRING
 xchain00734_n8_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00734_n11_α
 xchain00734_n8_β:
 jmp proc_reccopy_ω
.Lx00738_0:
 .quad .Lx00738_0_s
.Lx00738_0_s:
 .string "copy(R)"
# IR_VAR
 xchain00734_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00734_n12_α
 xchain00734_n9_β:
 jmp proc_reccopy_ω
# IR_LIT_INTEGER
 xchain00734_n10_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00734_n13_α
 xchain00734_n10_β:
 jmp xchain00734_n3_α
.Lx00739_0:
 .quad 7
# IR_RETURN
 xchain00734_n11_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reccopy_γ
# IR_TO
 xchain00734_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00740_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00734_n14_α
 xchain00734_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00740_0
 xchain00734_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn2240: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2240]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00734_n3_α
 jmp xchain00734_n15_α
 xchain00734_n13_β:
 jmp xchain00734_n3_α
# IR_VAR
 xchain00734_n14_α:
 mov rax, qword ptr [rbx + 832]
 mov rdx, qword ptr [rbx + 840]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00734_n16_α
 xchain00734_n14_β:
 jmp xchain00734_n12_β
# IR_ASSIGN gva
 xchain00734_n15_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 832], rax
 mov qword ptr [rbx + 840], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00734_n17_α
 xchain00734_n15_β:
 jmp xchain00734_n3_α
 xchain00734_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn2244: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2244]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00734_n12_β
 jmp xchain00734_n12_β
 xchain00734_n16_β:
 jmp xchain00734_n12_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00734_n17_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain00734_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain00734_n3_α
 xchain00734_n17_β:
 jmp xchain00734_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00734_n18_α:
 jmp qword ptr [r12 + 240]
 xchain00734_n18_β:
 jmp xchain00734_n3_α
proc_reccopy_β:
jmp proc_reccopy_ω
proc_reccopy_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 400], rax
 pop rsi
proc_recfield_α_body:
# IR_VAR_REF
 xchain00741_n0_α:
 lea rdi, [rbx + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00741_n1_α
 xchain00741_n0_β:
 jmp xchain00741_n3_α
# IR_NULLTEST_VAR
 xchain00741_n1_α:
 mov eax, dword ptr [r12 + 336]
 cmp eax, 99
 je xchain00741_n3_α
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00741_n3_α
 cmp eax, 0
 jne xchain00741_n3_α
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 360], rax
 jmp xchain00741_n2_α
 xchain00741_n1_β:
 jmp xchain00741_n3_α
# IR_LIT_INTEGER
 xchain00741_n2_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00741_n4_α
 xchain00741_n2_β:
 jmp xchain00741_n3_α
.Lx00742_0:
 .quad 1
# IR_VAR
 xchain00741_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00741_n5_α
 xchain00741_n3_β:
 jmp xchain00741_n6_α
# IR_ASSIGN_VAR
 xchain00741_n4_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00741_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00741_n7_α
 xchain00741_n4_β:
 jmp xchain00741_n3_α
# IR_UNOP
 xchain00741_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00741_n6_α
 cmp eax, 0
 jne xchain00741_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00741_n8_α
 xchain00741_n5_β:
 jmp xchain00741_n6_α
# IR_LIT_INTEGER
 xchain00741_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00743_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00741_n9_α
 xchain00741_n6_β:
 jmp proc_recfield_ω
.Lx00743_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00741_n7_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx00744_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00741_n10_α
 xchain00741_n7_β:
 jmp xchain00741_n3_α
.Lx00744_0:
 .quad 4
# IR_LIT_STRING
 xchain00741_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00745_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00741_n11_α
 xchain00741_n8_β:
 jmp proc_recfield_ω
.Lx00745_0:
 .quad .Lx00745_0_s
.Lx00745_0_s:
 .string "R.f"
# IR_VAR
 xchain00741_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00741_n12_α
 xchain00741_n9_β:
 jmp proc_recfield_ω
# IR_LIT_INTEGER
 xchain00741_n10_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00746_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00741_n13_α
 xchain00741_n10_β:
 jmp xchain00741_n3_α
.Lx00746_0:
 .quad 7
# IR_RETURN
 xchain00741_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recfield_γ
# IR_TO
 xchain00741_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00747_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00741_n14_α
 xchain00741_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00747_0
 xchain00741_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn2268: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2268]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00741_n3_α
 jmp xchain00741_n15_α
 xchain00741_n13_β:
 jmp xchain00741_n3_α
# IR_VAR
 xchain00741_n14_α:
 mov rax, qword ptr [rbx + 864]
 mov rdx, qword ptr [rbx + 872]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00741_n16_α
 xchain00741_n14_β:
 jmp xchain00741_n12_β
# IR_ASSIGN gva
 xchain00741_n15_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 864], rax
 mov qword ptr [rbx + 872], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00741_n17_α
 xchain00741_n15_β:
 jmp xchain00741_n3_α
# IR_FIELD_GET
 xchain00741_n16_α:
 mov rdi, qword ptr [rip + .Lx00748_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00741_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00741_n12_β
 xchain00741_n16_β:
 jmp xchain00741_n12_β
.Lx00748_0:
 .quad .Lx00748_0_s
.Lx00748_0_s:
 .string "y"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00741_n17_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00741_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00741_n3_α
 xchain00741_n17_β:
 jmp xchain00741_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00741_n18_α:
 jmp qword ptr [r12 + 224]
 xchain00741_n18_β:
 jmp xchain00741_n3_α
proc_recfield_β:
jmp proc_recfield_ω
proc_recfield_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_bigfield_α_body:
# IR_VAR_REF
 xchain00749_n0_α:
 lea rdi, [rbx + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00749_n1_α
 xchain00749_n0_β:
 jmp xchain00749_n3_α
# IR_NULLTEST_VAR
 xchain00749_n1_α:
 mov eax, dword ptr [r12 + 272]
 cmp eax, 99
 je xchain00749_n3_α
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00749_n3_α
 cmp eax, 0
 jne xchain00749_n3_α
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 296], rax
 jmp xchain00749_n2_α
 xchain00749_n1_β:
 jmp xchain00749_n3_α
# IR_LIT_INTEGER
 xchain00749_n2_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx00750_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00749_n4_α
 xchain00749_n2_β:
 jmp xchain00749_n3_α
.Lx00750_0:
 .quad 1
# IR_VAR
 xchain00749_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00749_n5_α
 xchain00749_n3_β:
 jmp xchain00749_n6_α
# IR_ASSIGN_VAR
 xchain00749_n4_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00749_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00749_n7_α
 xchain00749_n4_β:
 jmp xchain00749_n3_α
# IR_UNOP
 xchain00749_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00749_n6_α
 cmp eax, 0
 jne xchain00749_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00749_n8_α
 xchain00749_n5_β:
 jmp xchain00749_n6_α
# IR_LIT_INTEGER
 xchain00749_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00749_n9_α
 xchain00749_n6_β:
 jmp proc_bigfield_ω
.Lx00751_0:
 .quad 1
 xchain00749_n7_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2287: .string "bigrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2287]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain00749_n3_α
 jmp xchain00749_n10_α
 xchain00749_n7_β:
 jmp xchain00749_n3_α
# IR_LIT_STRING
 xchain00749_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00749_n11_α
 xchain00749_n8_β:
 jmp proc_bigfield_ω
.Lx00752_0:
 .quad .Lx00752_0_s
.Lx00752_0_s:
 .string "R2.f"
# IR_VAR
 xchain00749_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00749_n12_α
 xchain00749_n9_β:
 jmp proc_bigfield_ω
# IR_ASSIGN gva
 xchain00749_n10_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 896], rax
 mov qword ptr [rbx + 904], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00749_n13_α
 xchain00749_n10_β:
 jmp xchain00749_n3_α
# IR_RETURN
 xchain00749_n11_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bigfield_γ
# IR_TO
 xchain00749_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00753_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00749_n14_α
 xchain00749_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00753_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00749_n13_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00749_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00749_n3_α
 xchain00749_n13_β:
 jmp xchain00749_n3_α
# IR_VAR
 xchain00749_n14_α:
 mov rax, qword ptr [rbx + 896]
 mov rdx, qword ptr [rbx + 904]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00749_n16_α
 xchain00749_n14_β:
 jmp xchain00749_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00749_n15_α:
 jmp qword ptr [r12 + 224]
 xchain00749_n15_β:
 jmp xchain00749_n3_α
# IR_FIELD_GET
 xchain00749_n16_α:
 mov rdi, qword ptr [rip + .Lx00754_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00749_n12_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00749_n12_β
 xchain00749_n16_β:
 jmp xchain00749_n12_β
.Lx00754_0:
 .quad .Lx00754_0_s
.Lx00754_0_s:
 .string "horatio"
proc_bigfield_β:
jmp proc_bigfield_ω
proc_bigfield_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_globasgn_α_body:
# IR_VAR
 xchain00755_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00755_n1_α
 xchain00755_n0_β:
 jmp xchain00755_n2_α
# IR_UNOP
 xchain00755_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00755_n2_α
 cmp eax, 0
 jne xchain00755_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00755_n3_α
 xchain00755_n1_β:
 jmp xchain00755_n2_α
# IR_LIT_INTEGER
 xchain00755_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00756_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00755_n4_α
 xchain00755_n2_β:
 jmp proc_globasgn_ω
.Lx00756_0:
 .quad 1
# IR_LIT_STRING
 xchain00755_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00757_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00755_n5_α
 xchain00755_n3_β:
 jmp proc_globasgn_ω
.Lx00757_0:
 .quad .Lx00757_0_s
.Lx00757_0_s:
 .string "global := 1"
# IR_VAR
 xchain00755_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00755_n6_α
 xchain00755_n4_β:
 jmp proc_globasgn_ω
# IR_RETURN
 xchain00755_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_globasgn_γ
# IR_TO
 xchain00755_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00758_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00755_n7_α
 xchain00755_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00758_0
# IR_LIT_INTEGER
 xchain00755_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00759_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00755_n8_α
 xchain00755_n7_β:
 jmp xchain00755_n6_β
.Lx00759_0:
 .quad 1
# IR_ASSIGN gva
 xchain00755_n8_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00755_n6_β
 xchain00755_n8_β:
 jmp xchain00755_n6_β
proc_globasgn_β:
jmp proc_globasgn_ω
proc_globasgn_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_loclasgn_α_body:
# IR_VAR
 xchain00760_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00760_n1_α
 xchain00760_n0_β:
 jmp xchain00760_n2_α
# IR_UNOP
 xchain00760_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00760_n2_α
 cmp eax, 0
 jne xchain00760_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00760_n3_α
 xchain00760_n1_β:
 jmp xchain00760_n2_α
# IR_LIT_INTEGER
 xchain00760_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00760_n4_α
 xchain00760_n2_β:
 jmp proc_loclasgn_ω
.Lx00761_0:
 .quad 1
# IR_LIT_STRING
 xchain00760_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00760_n5_α
 xchain00760_n3_β:
 jmp proc_loclasgn_ω
.Lx00762_0:
 .quad .Lx00762_0_s
.Lx00762_0_s:
 .string "local := 1"
# IR_VAR
 xchain00760_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00760_n6_α
 xchain00760_n4_β:
 jmp proc_loclasgn_ω
# IR_RETURN
 xchain00760_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_loclasgn_γ
# IR_TO
 xchain00760_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00763_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00760_n7_α
 xchain00760_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00763_0
# IR_LIT_INTEGER
 xchain00760_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00760_n8_α
 xchain00760_n7_β:
 jmp xchain00760_n6_β
.Lx00764_0:
 .quad 1
 xchain00760_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00760_n6_β
 xchain00760_n8_β:
 jmp xchain00760_n6_β
proc_loclasgn_β:
jmp proc_loclasgn_ω
proc_loclasgn_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_statasgn_α_body:
# IR_VAR
 xchain00765_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00765_n1_α
 xchain00765_n0_β:
 jmp xchain00765_n2_α
# IR_UNOP
 xchain00765_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00765_n2_α
 cmp eax, 0
 jne xchain00765_n2_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00765_n3_α
 xchain00765_n1_β:
 jmp xchain00765_n2_α
# IR_LIT_INTEGER
 xchain00765_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00766_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00765_n4_α
 xchain00765_n2_β:
 jmp proc_statasgn_ω
.Lx00766_0:
 .quad 1
# IR_LIT_STRING
 xchain00765_n3_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00765_n5_α
 xchain00765_n3_β:
 jmp proc_statasgn_ω
.Lx00767_0:
 .quad .Lx00767_0_s
.Lx00767_0_s:
 .string "static := 1"
# IR_VAR
 xchain00765_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00765_n6_α
 xchain00765_n4_β:
 jmp proc_statasgn_ω
# IR_RETURN
 xchain00765_n5_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_statasgn_γ
# IR_TO
 xchain00765_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00768_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00765_n7_α
 xchain00765_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00768_0
# IR_LIT_INTEGER
 xchain00765_n7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00765_n8_α
 xchain00765_n7_β:
 jmp xchain00765_n6_β
.Lx00769_0:
 .quad 1
# IR_ASSIGN gva
 xchain00765_n8_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 928], rax
 mov qword ptr [rbx + 936], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00765_n6_β
 xchain00765_n8_β:
 jmp xchain00765_n6_β
proc_statasgn_β:
jmp proc_statasgn_ω
proc_statasgn_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 448], rax
 pop rsi
proc_readz_α_body:
# IR_VAR_REF
 xchain00770_n0_α:
 lea rdi, [rbx + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00770_n1_α
 xchain00770_n0_β:
 jmp xchain00770_n3_α
# IR_NULLTEST_VAR
 xchain00770_n1_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain00770_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00770_n3_α
 cmp eax, 0
 jne xchain00770_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain00770_n2_α
 xchain00770_n1_β:
 jmp xchain00770_n3_α
# IR_LIT_INTEGER
 xchain00770_n2_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain00770_n4_α
 xchain00770_n2_β:
 jmp xchain00770_n3_α
.Lx00771_0:
 .quad 1
# IR_VAR
 xchain00770_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00770_n5_α
 xchain00770_n3_β:
 jmp xchain00770_n6_α
# IR_ASSIGN_VAR
 xchain00770_n4_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00770_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00770_n7_α
 xchain00770_n4_β:
 jmp xchain00770_n3_α
# IR_UNOP
 xchain00770_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00770_n6_α
 cmp eax, 0
 jne xchain00770_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00770_n8_α
 xchain00770_n5_β:
 jmp xchain00770_n6_α
# IR_LIT_INTEGER
 xchain00770_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00772_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00770_n9_α
 xchain00770_n6_β:
 jmp proc_readz_ω
.Lx00772_0:
 .quad 1
# IR_LIT_STRING
 xchain00770_n7_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00773_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00770_n10_α
 xchain00770_n7_β:
 jmp xchain00770_n3_α
.Lx00773_0:
 .quad .Lx00773_0_s
.Lx00773_0_s:
 .string "/dev/zero"
# IR_LIT_STRING
 xchain00770_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00770_n11_α
 xchain00770_n8_β:
 jmp proc_readz_ω
.Lx00774_0:
 .quad .Lx00774_0_s
.Lx00774_0_s:
 .string "reads(zero,8)"
# IR_VAR
 xchain00770_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00770_n12_α
 xchain00770_n9_β:
 jmp proc_readz_ω
# IR_LIT_STRING
 xchain00770_n10_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00770_n13_α
 xchain00770_n10_β:
 jmp xchain00770_n3_α
.Lx00775_0:
 .quad .Lx00775_0_s
.Lx00775_0_s:
 .string "ru"
# IR_RETURN
 xchain00770_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_readz_γ
# IR_TO
 xchain00770_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00776_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00770_n14_α
 xchain00770_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00776_0
 xchain00770_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn2359: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2359]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00770_n3_α
 jmp xchain00770_n15_α
 xchain00770_n13_β:
 jmp xchain00770_n3_α
# IR_VAR
 xchain00770_n14_α:
 mov rax, qword ptr [rbx + 944]
 mov rdx, qword ptr [rbx + 952]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00770_n16_α
 xchain00770_n14_β:
 jmp xchain00770_n12_β
# IR_ASSIGN gva
 xchain00770_n15_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 944], rax
 mov qword ptr [rbx + 952], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00770_n17_α
 xchain00770_n15_β:
 jmp xchain00770_n3_α
# IR_LIT_INTEGER
 xchain00770_n16_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00770_n18_α
 xchain00770_n16_β:
 jmp xchain00770_n12_β
.Lx00777_0:
 .quad 8
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00770_n17_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00770_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00770_n3_α
 xchain00770_n17_β:
 jmp xchain00770_n3_α
 xchain00770_n18_α:
# BOX IR_CALL reads(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2366: .string "reads"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2366]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00770_n12_β
 jmp xchain00770_n12_β
 xchain00770_n18_β:
 jmp xchain00770_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00770_n19_α:
 jmp qword ptr [r12 + 272]
 xchain00770_n19_β:
 jmp xchain00770_n3_α
proc_readz_β:
jmp proc_readz_ω
proc_readz_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 256], rax
 pop rsi
proc_writecon_α_body:
# IR_VAR
 xchain00778_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00778_n1_α
 xchain00778_n0_β:
 jmp xchain00778_n2_α
# IR_UNOP
 xchain00778_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00778_n2_α
 cmp eax, 0
 jne xchain00778_n2_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00778_n3_α
 xchain00778_n1_β:
 jmp xchain00778_n2_α
# IR_LIT_INTEGER
 xchain00778_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00779_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00778_n4_α
 xchain00778_n2_β:
 jmp proc_writecon_ω
.Lx00779_0:
 .quad 1
# IR_LIT_STRING
 xchain00778_n3_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00778_n5_α
 xchain00778_n3_β:
 jmp proc_writecon_ω
.Lx00780_0:
 .quad .Lx00780_0_s
.Lx00780_0_s:
 .string "write(\"a...z\")"
# IR_VAR
 xchain00778_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00778_n6_α
 xchain00778_n4_β:
 jmp proc_writecon_ω
# IR_RETURN
 xchain00778_n5_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writecon_γ
# IR_TO
 xchain00778_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00781_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00778_n7_α
 xchain00778_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00781_0
# IR_VAR
 xchain00778_n7_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00778_n8_α
 xchain00778_n7_β:
 jmp xchain00778_n6_β
# IR_LIT_STRING
 xchain00778_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00778_n9_α
 xchain00778_n8_β:
 jmp xchain00778_n6_β
.Lx00782_0:
 .quad .Lx00782_0_s
.Lx00782_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00778_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2383: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2383]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00778_n6_β
 jmp xchain00778_n6_β
 xchain00778_n9_β:
 jmp xchain00778_n6_β
proc_writecon_β:
jmp proc_writecon_ω
proc_writecon_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 384], rax
 pop rsi
proc_writestr_α_body:
# IR_VAR_REF
 xchain00783_n0_α:
 lea rdi, [rbx + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00783_n1_α
 xchain00783_n0_β:
 jmp xchain00783_n3_α
# IR_NULLTEST_VAR
 xchain00783_n1_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain00783_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00783_n3_α
 cmp eax, 0
 jne xchain00783_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain00783_n2_α
 xchain00783_n1_β:
 jmp xchain00783_n3_α
# IR_LIT_INTEGER
 xchain00783_n2_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00783_n4_α
 xchain00783_n2_β:
 jmp xchain00783_n3_α
.Lx00784_0:
 .quad 1
# IR_VAR
 xchain00783_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00783_n5_α
 xchain00783_n3_β:
 jmp xchain00783_n6_α
# IR_ASSIGN_VAR
 xchain00783_n4_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00783_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00783_n7_α
 xchain00783_n4_β:
 jmp xchain00783_n3_α
# IR_UNOP
 xchain00783_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00783_n6_α
 cmp eax, 0
 jne xchain00783_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00783_n8_α
 xchain00783_n5_β:
 jmp xchain00783_n6_α
# IR_LIT_INTEGER
 xchain00783_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00785_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00783_n9_α
 xchain00783_n6_β:
 jmp proc_writestr_ω
.Lx00785_0:
 .quad 1
# IR_LIT_STRING
 xchain00783_n7_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00786_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00783_n10_α
 xchain00783_n7_β:
 jmp xchain00783_n3_α
.Lx00786_0:
 .quad .Lx00786_0_s
.Lx00786_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00783_n8_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00787_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00783_n11_α
 xchain00783_n8_β:
 jmp proc_writestr_ω
.Lx00787_0:
 .quad .Lx00787_0_s
.Lx00787_0_s:
 .string "write(s)"
# IR_VAR
 xchain00783_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00783_n12_α
 xchain00783_n9_β:
 jmp proc_writestr_ω
# IR_ASSIGN gva
 xchain00783_n10_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 976], rax
 mov qword ptr [rbx + 984], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00783_n13_α
 xchain00783_n10_β:
 jmp xchain00783_n3_α
# IR_RETURN
 xchain00783_n11_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writestr_γ
# IR_TO
 xchain00783_n12_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00788_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00783_n14_α
 xchain00783_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00788_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00783_n13_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00783_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00783_n3_α
 xchain00783_n13_β:
 jmp xchain00783_n3_α
# IR_VAR
 xchain00783_n14_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00783_n16_α
 xchain00783_n14_β:
 jmp xchain00783_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00783_n15_α:
 jmp qword ptr [r12 + 272]
 xchain00783_n15_β:
 jmp xchain00783_n3_α
# IR_VAR
 xchain00783_n16_α:
 mov rax, qword ptr [rbx + 976]
 mov rdx, qword ptr [rbx + 984]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00783_n17_α
 xchain00783_n16_β:
 jmp xchain00783_n12_β
 xchain00783_n17_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn2409: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2409]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00783_n12_β
 jmp xchain00783_n12_β
 xchain00783_n17_β:
 jmp xchain00783_n12_β
proc_writestr_β:
jmp proc_writestr_ω
proc_writestr_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_cxcreate_α_body:
# IR_VAR
 xchain00789_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00789_n1_α
 xchain00789_n0_β:
 jmp xchain00789_n2_α
# IR_UNOP
 xchain00789_n1_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00789_n2_α
 cmp eax, 0
 jne xchain00789_n2_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00789_n3_α
 xchain00789_n1_β:
 jmp xchain00789_n2_α
# IR_LIT_INTEGER
 xchain00789_n2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00789_n4_α
 xchain00789_n2_β:
 jmp proc_cxcreate_ω
.Lx00790_0:
 .quad 1
# IR_LIT_STRING
 xchain00789_n3_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00791_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00789_n5_α
 xchain00789_n3_β:
 jmp proc_cxcreate_ω
.Lx00791_0:
 .quad .Lx00791_0_s
.Lx00791_0_s:
 .string "create |\"a\""
# IR_VAR
 xchain00789_n4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00789_n6_α
 xchain00789_n4_β:
 jmp proc_cxcreate_ω
# IR_RETURN
 xchain00789_n5_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxcreate_γ
# IR_TO
 xchain00789_n6_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00792_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00789_n7_α
 xchain00789_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00792_0
# IR_CREATE
 xchain00789_n7_α:
 mov qword ptr [r12 + 112], r12
 mov qword ptr [r12 + 120], r13
 mov qword ptr [r12 + 128], r14
 mov qword ptr [r12 + 136], r15
 mov qword ptr [r12 + 144], rbx
 mov qword ptr [r12 + 152], rbp
 lea rdi, [rip + xchain00789_n8_α]
 lea rsi, [r12 + 112]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 96], rax
 jmp xchain00789_n6_β
 xchain00789_n7_β:
 jmp xchain00789_n6_β
 xchain00789_n8_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 176], 0
jmp xchain00789_n10_α
xchain00789_n8_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], 1
jmp xchain00789_n9_α
xchain00789_n8_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 176]
 cmp rax, 1
je xchain00789_n8_α
jmp xchain00789_n11_α
xchain00789_n8_β:
jmp xchain00789_n8_rt
# IR_CORET yield
 xchain00789_n9_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00789_n8_β
# IR_LIT_STRING
 xchain00789_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00789_n8_ry
 xchain00789_n10_β:
 jmp xchain00789_n8_rt
.Lx00793_0:
 .quad .Lx00793_0_s
.Lx00793_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00789_n11_α:
 call scrip_cofail@PLT
 jmp proc_cxcreate_ω
proc_cxcreate_β:
jmp proc_cxcreate_ω
proc_cxcreate_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
 mov qword ptr [r12 + 432], rax
 pop rsi
proc_cxget_α_body:
# IR_VAR_REF
 xchain00794_n0_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00794_n1_α
 xchain00794_n0_β:
 jmp xchain00794_n3_α
# IR_NULLTEST_VAR
 xchain00794_n1_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain00794_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00794_n3_α
 cmp eax, 0
 jne xchain00794_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain00794_n2_α
 xchain00794_n1_β:
 jmp xchain00794_n3_α
# IR_LIT_INTEGER
 xchain00794_n2_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00795_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00794_n4_α
 xchain00794_n2_β:
 jmp xchain00794_n3_α
.Lx00795_0:
 .quad 1
# IR_VAR
 xchain00794_n3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00794_n5_α
 xchain00794_n3_β:
 jmp xchain00794_n6_α
# IR_ASSIGN_VAR
 xchain00794_n4_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00794_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00794_n7_α
 xchain00794_n4_β:
 jmp xchain00794_n3_α
# IR_UNOP
 xchain00794_n5_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00794_n6_α
 cmp eax, 0
 jne xchain00794_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00794_n8_α
 xchain00794_n5_β:
 jmp xchain00794_n6_α
# IR_LIT_INTEGER
 xchain00794_n6_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00796_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00794_n9_α
 xchain00794_n6_β:
 jmp proc_cxget_ω
.Lx00796_0:
 .quad 1
# IR_CREATE
 xchain00794_n7_α:
 mov qword ptr [r12 + 272], r12
 mov qword ptr [r12 + 280], r13
 mov qword ptr [r12 + 288], r14
 mov qword ptr [r12 + 296], r15
 mov qword ptr [r12 + 304], rbx
 mov qword ptr [r12 + 312], rbp
 lea rdi, [rip + xchain00794_n11_α]
 lea rsi, [r12 + 272]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 256], rax
 jmp xchain00794_n10_α
 xchain00794_n7_β:
 jmp xchain00794_n3_α
# IR_LIT_STRING
 xchain00794_n8_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00797_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00794_n12_α
 xchain00794_n8_β:
 jmp proc_cxget_ω
.Lx00797_0:
 .quad .Lx00797_0_s
.Lx00797_0_s:
 .string "@C"
# IR_VAR
 xchain00794_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00794_n13_α
 xchain00794_n9_β:
 jmp proc_cxget_ω
# IR_ASSIGN gva
 xchain00794_n10_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 1008], rax
 mov qword ptr [rbx + 1016], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00794_n14_α
 xchain00794_n10_β:
 jmp xchain00794_n3_α
 xchain00794_n11_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 336], 0
jmp xchain00794_n16_α
xchain00794_n11_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], 1
jmp xchain00794_n15_α
xchain00794_n11_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 336]
 cmp rax, 1
je xchain00794_n11_α
jmp xchain00794_n20_α
xchain00794_n11_β:
jmp xchain00794_n11_rt
# IR_RETURN
 xchain00794_n12_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxget_γ
# IR_TO
 xchain00794_n13_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00798_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00794_n17_α
 xchain00794_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00798_0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00794_n14_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain00794_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain00794_n3_α
 xchain00794_n14_β:
 jmp xchain00794_n3_α
# IR_CORET yield
 xchain00794_n15_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00794_n11_β
# IR_LIT_STRING
 xchain00794_n16_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00799_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00794_n11_ry
 xchain00794_n16_β:
 jmp xchain00794_n11_rt
.Lx00799_0:
 .quad .Lx00799_0_s
.Lx00799_0_s:
 .string "a"
# IR_VAR
 xchain00794_n17_α:
 mov rax, qword ptr [rbx + 1008]
 mov rdx, qword ptr [rbx + 1016]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00794_n19_α
 xchain00794_n17_β:
 jmp xchain00794_n13_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00794_n18_α:
 jmp qword ptr [r12 + 224]
 xchain00794_n18_β:
 jmp xchain00794_n3_α
# IR_ACTIVATE
 xchain00794_n19_α:
 mov rdi, qword ptr [r12 + 112]
 xor esi, esi
 xor edx, edx
 lea rcx, [r12 + 96]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00794_n13_β
 jmp xchain00794_n13_β
 xchain00794_n19_β:
 jmp xchain00794_n13_β
# IR_COFAIL exhausted
 xchain00794_n20_α:
 call scrip_cofail@PLT
 jmp proc_cxget_ω
proc_cxget_β:
jmp proc_cxget_ω
proc_cxget_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
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
mov rsp, rbp
pop rbp
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
  call core_lib_init@PLT
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
 mov qword ptr [r12 + 6880], rax
 pop rsi
main_α_body:
# IR_LIT_INTEGER
 xchain00800_n0_α:
 mov qword ptr [r12 + 6752], 6
 mov rax, qword ptr [rip + .Lx00801_0]
 mov qword ptr [r12 + 6760], rax
 jmp xchain00800_n1_α
 xchain00800_n0_β:
 jmp xchain00800_n10_α
.Lx00801_0:
 .quad 1000
# IR_VAR_REF
 xchain00800_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6816], rax
 mov qword ptr [r12 + 6824], rdx
 jmp xchain00800_n2_α
 xchain00800_n1_β:
 jmp xchain00800_n5_α
# IR_LIT_INTEGER
 xchain00800_n2_α:
 mov qword ptr [r12 + 6832], 6
 mov rax, qword ptr [rip + .Lx00802_0]
 mov qword ptr [r12 + 6840], rax
 jmp xchain00800_n3_α
 xchain00800_n2_β:
 jmp xchain00800_n5_α
.Lx00802_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00800_n3_α:
 mov rdi, qword ptr [r12 + 6816]
 mov rsi, qword ptr [r12 + 6824]
 mov rdx, qword ptr [r12 + 6832]
 mov rcx, qword ptr [r12 + 6840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00800_n5_α
 mov qword ptr [r12 + 6848], rax
 mov qword ptr [r12 + 6856], rdx
 jmp xchain00800_n4_α
 xchain00800_n3_β:
 jmp xchain00800_n5_α
# IR_DEREF variable -> value
 xchain00800_n4_α:
 mov rdi, qword ptr [r12 + 6848]
 mov rsi, qword ptr [r12 + 6856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00800_n5_α
 mov qword ptr [r12 + 6864], rax
 mov qword ptr [r12 + 6872], rdx
 jmp xchain00800_n6_α
 xchain00800_n4_β:
 jmp xchain00800_n5_α
# IR_LIT_REAL
 xchain00800_n5_α:
 mov qword ptr [r12 + 6800], 7
 mov rax, qword ptr [rip + .Lx00803_0]
 mov qword ptr [r12 + 6808], rax
 jmp xchain00800_n7_α
 xchain00800_n5_β:
 jmp xchain00800_n10_α
.Lx00803_0:
 .quad 4607182418800017408
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00800_n6_α:
 mov rax, qword ptr [r12 + 6864]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6872]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain00800_n5_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain00800_n8_α
 xchain00800_n6_β:
 jmp xchain00800_n10_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00800_n7_α:
 mov rax, qword ptr [r12 + 6800]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6808]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain00800_n10_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain00800_n8_α
 xchain00800_n7_β:
 jmp xchain00800_n10_α
 xchain00800_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 100
 je .Lx00804_0
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 100
 je .Lx00804_0
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 6
 jne .Lx00804_2
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 6
 jne .Lx00804_2
.Lx00804_1:
 mov rax, qword ptr [r12 + 6760]
 mov rcx, qword ptr [r12 + 6776]
 imul rax, rcx
 mov qword ptr [r12 + 6736], 6
 mov qword ptr [r12 + 6744], rax
 jmp xchain00800_n11_α
.Lx00804_0:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 lea r9, [r12 + 6736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00804_3
.Lx00804_2:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00800_n10_α
 mov qword ptr [r12 + 6736], rax
 mov qword ptr [r12 + 6744], rdx
.Lx00804_3:
 jmp xchain00800_n11_α
 xchain00800_n8_β:
 jmp xchain00800_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00800_n9_α:
 jmp qword ptr [r12 + 6784]
 xchain00800_n9_β:
 jmp xchain00800_n10_α
# IR_LIT_STRING
 xchain00800_n10_α:
 mov qword ptr [r12 + 6656], 1
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [r12 + 6664], rax
 jmp xchain00800_n12_α
 xchain00800_n10_β:
 jmp xchain00800_n16_α
.Lx00805_0:
 .quad .Lx00805_0_s
.Lx00805_0_s:
 .string "/dev/null"
 xchain00800_n11_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6720]
 mov rax, qword ptr [r12 + 6736]
 mov qword ptr [r12 + 6720], rax
 mov rax, qword ptr [r12 + 6744]
 mov qword ptr [r12 + 6728], rax
  .section .rodata
  .Lrkfn2484: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2484]
 lea rsi, [r12 + 6720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6704], rax
 mov qword ptr [r12 + 6712], rdx
 cmp eax, 99
 je xchain00800_n10_α
 jmp xchain00800_n13_α
 xchain00800_n11_β:
 jmp xchain00800_n10_α
# IR_LIT_STRING
 xchain00800_n12_α:
 mov qword ptr [r12 + 6672], 1
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [r12 + 6680], rax
 jmp xchain00800_n14_α
 xchain00800_n12_β:
 jmp xchain00800_n16_α
.Lx00806_0:
 .quad .Lx00806_0_s
.Lx00806_0_s:
 .string "w"
# IR_ASSIGN gva
 xchain00800_n13_α:
 mov rax, qword ptr [r12 + 6704]
 mov rdx, qword ptr [r12 + 6712]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 jmp xchain00800_n10_α
 xchain00800_n13_β:
 jmp xchain00800_n10_α
 xchain00800_n14_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6656] -> [zr+6624]
 mov rax, qword ptr [r12 + 6656]
 mov qword ptr [r12 + 6624], rax
 mov rax, qword ptr [r12 + 6664]
 mov qword ptr [r12 + 6632], rax
# marshal arg1 = producer-box slot [zr+6672] -> [zr+6640]
 mov rax, qword ptr [r12 + 6672]
 mov qword ptr [r12 + 6640], rax
 mov rax, qword ptr [r12 + 6680]
 mov qword ptr [r12 + 6648], rax
  .section .rodata
  .Lrkfn2488: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2488]
 lea rsi, [r12 + 6624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 cmp eax, 99
 je xchain00800_n16_α
 jmp xchain00800_n15_α
 xchain00800_n14_β:
 jmp xchain00800_n16_α
# IR_ASSIGN gva
 xchain00800_n15_α:
 mov rax, qword ptr [r12 + 6608]
 mov rdx, qword ptr [r12 + 6616]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain00800_n16_α
 xchain00800_n15_β:
 jmp xchain00800_n16_α
# IR_VAR
 xchain00800_n16_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 6576], rax
 mov qword ptr [r12 + 6584], rdx
 jmp xchain00800_n17_α
 xchain00800_n16_β:
 jmp xchain00800_n18_α
 xchain00800_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6576]
 mov rdx, qword ptr [r12 + 6584]
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 jmp xchain00800_n18_α
 xchain00800_n17_β:
 jmp xchain00800_n18_α
# IR_VAR
 xchain00800_n18_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6504], rax
 jmp xchain00800_n19_α
 xchain00800_n18_β:
 jmp xchain00800_n20_α
# IR_LIT_REAL
 xchain00800_n19_α:
 mov qword ptr [r12 + 6544], 7
 mov rax, qword ptr [rip + .Lx00807_0]
 mov qword ptr [r12 + 6552], rax
 jmp xchain00800_n21_α
 xchain00800_n19_β:
 jmp xchain00800_n20_α
.Lx00807_0:
 .quad 4652007308841189376
 xchain00800_n20_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2496: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2496]
 lea rsi, [r12 + 6464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 cmp eax, 99
 je xchain00800_n23_α
 jmp xchain00800_n22_α
 xchain00800_n20_β:
 jmp xchain00800_n23_α
 xchain00800_n21_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6544] -> [zr+6528]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6536], rax
  .section .rodata
  .Lrkfn2498: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2498]
 lea rsi, [r12 + 6528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6512], rax
 mov qword ptr [r12 + 6520], rdx
 cmp eax, 99
 je xchain00800_n20_α
 jmp xchain00800_n24_α
 xchain00800_n21_β:
 jmp xchain00800_n20_α
 xchain00800_n22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6448]
 mov rdx, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain00800_n23_α
 xchain00800_n22_β:
 jmp xchain00800_n23_α
# IR_LIT_INTEGER
 xchain00800_n23_α:
 mov qword ptr [r12 + 6160], 6
 mov rax, qword ptr [rip + .Lx00808_0]
 mov qword ptr [r12 + 6168], rax
 jmp xchain00800_n25_α
 xchain00800_n23_β:
 jmp xchain00800_n37_α
.Lx00808_0:
 .quad 1
 xchain00800_n24_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 6912]
 cmp eax, 100
 je .Lx00809_0
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 100
 je .Lx00809_0
 mov eax, dword ptr [r12 + 6912]
 cmp eax, 6
 jne .Lx00809_2
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 6
 jne .Lx00809_2
.Lx00809_1:
 mov rax, qword ptr [r12 + 6920]
 mov rcx, qword ptr [r12 + 6520]
 cmp rax, rcx
 jge xchain00800_n20_α
 mov rcx, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rcx
 mov rcx, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rcx
 jmp xchain00800_n26_α
.Lx00809_0:
 mov rdi, qword ptr [r12 + 6912]
 mov rsi, qword ptr [r12 + 6920]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 lea r9, [r12 + 6480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00809_1
 cmp eax, 1
 je xchain00800_n20_α
 jmp xchain00800_n26_α
.Lx00809_2:
 mov rdi, qword ptr [r12 + 6912]
 mov rsi, qword ptr [r12 + 6920]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00800_n20_α
 mov rax, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rax
 jmp xchain00800_n26_α
 xchain00800_n24_β:
 jmp xchain00800_n20_α
# IR_LIT_INTEGER
 xchain00800_n25_α:
 mov qword ptr [r12 + 6176], 6
 mov rax, qword ptr [rip + .Lx00810_0]
 mov qword ptr [r12 + 6184], rax
 jmp xchain00800_n27_α
 xchain00800_n25_β:
 jmp xchain00800_n37_α
.Lx00810_0:
 .quad 5
 xchain00800_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6480]
 mov rdx, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain00800_n20_α
 xchain00800_n26_β:
 jmp xchain00800_n20_α
# IR_TO
 xchain00800_n27_α:
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6144], rax
.Lx00811_0:
 mov rax, qword ptr [r12 + 6144]
 mov rcx, qword ptr [r12 + 6184]
 cmp rax, rcx
 jg xchain00800_n37_α
 mov qword ptr [r12 + 6128], 6
 mov qword ptr [r12 + 6136], rax
 jmp xchain00800_n28_α
 xchain00800_n27_β:
 inc qword ptr [r12 + 6144]
 jmp .Lx00811_0
# IR_KEYWORD_read
 xchain00800_n28_α:
 mov rdi, qword ptr [rip + .Lx00812_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain00800_n29_α
 xchain00800_n28_β:
 jmp xchain00800_n31_α
.Lx00812_0:
 .quad .Lx00812_0_s
.Lx00812_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00800_n29_α:
 mov qword ptr [r12 + 6416], 1
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [r12 + 6424], rax
 jmp xchain00800_n30_α
 xchain00800_n29_β:
 jmp xchain00800_n31_α
.Lx00813_0:
 .quad .Lx00813_0_s
.Lx00813_0_s:
 .string "."
 xchain00800_n30_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6352]
 mov rax, qword ptr [r12 + 6384]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 6392]
 mov qword ptr [r12 + 6360], rax
# marshal arg1 = producer-box slot [zr+6416] -> [zr+6368]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6368], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6376], rax
  .section .rodata
  .Lrkfn2509: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2509]
 lea rsi, [r12 + 6352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 cmp eax, 99
 je xchain00800_n31_α
 jmp xchain00800_n31_α
 xchain00800_n30_β:
 jmp xchain00800_n31_α
# IR_VAR
 xchain00800_n31_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6248], rax
 jmp xchain00800_n32_α
 xchain00800_n31_β:
 jmp xchain00800_n27_β
# IR_PROC_VALUE first-class procedure value
 xchain00800_n32_α:
 mov rdi, qword ptr [rip + .Lx00814_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 jmp xchain00800_n33_α
 xchain00800_n32_β:
 jmp xchain00800_n27_β
.Lx00814_0:
 .quad .Lx00814_0_s
.Lx00814_0_s:
 .string "nothing"
# IR_VAR
 xchain00800_n33_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6328], rax
 jmp xchain00800_n34_α
 xchain00800_n33_β:
 jmp xchain00800_n27_β
 xchain00800_n34_α:
  .section .rodata
  .Lcall00598_pname: .string "measure"
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
   lea rdi, [rip + .Lcall00598_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 cmp eax, 99
 je xchain00800_n27_β
 jmp xchain00800_n35_α
xchain00800_n34_β:
 jmp xchain00800_n27_β
 xchain00800_n35_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6208]
 mov rax, qword ptr [r12 + 6240]
 mov qword ptr [r12 + 6208], rax
 mov rax, qword ptr [r12 + 6248]
 mov qword ptr [r12 + 6216], rax
# marshal arg1 = producer-box slot [zr+6256] -> [zr+6224]
 mov rax, qword ptr [r12 + 6256]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6264]
 mov qword ptr [r12 + 6232], rax
  .section .rodata
  .Lrkfn2518: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2518]
 lea rsi, [r12 + 6208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 cmp eax, 99
 je xchain00800_n27_β
 jmp xchain00800_n36_α
 xchain00800_n35_β:
 jmp xchain00800_n27_β
 xchain00800_n36_α:
 jmp xchain00800_n27_β
xchain00800_n36_β:
 jmp xchain00800_n27_β
# IR_VAR
 xchain00800_n37_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 5960], rax
 jmp xchain00800_n38_α
 xchain00800_n37_β:
 jmp xchain00800_n39_α
 xchain00800_n38_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5936]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5944], rax
  .section .rodata
  .Lrkfn2523: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2523]
 lea rsi, [r12 + 5936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5920], rax
 mov qword ptr [r12 + 5928], rdx
 cmp eax, 99
 je xchain00800_n39_α
 jmp xchain00800_n40_α
 xchain00800_n38_β:
 jmp xchain00800_n39_α
# IR_VAR
 xchain00800_n39_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 jmp xchain00800_n41_α
 xchain00800_n39_β:
 jmp xchain00800_n42_α
# IR_LIT_INTEGER
 xchain00800_n40_α:
 mov qword ptr [r12 + 5984], 6
 mov rax, qword ptr [rip + .Lx00815_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain00800_n43_α
 xchain00800_n40_β:
 jmp xchain00800_n39_α
.Lx00815_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00800_n41_α:
 mov qword ptr [r12 + 5872], 6
 mov rax, qword ptr [rip + .Lx00816_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain00800_n44_α
 xchain00800_n41_β:
 jmp xchain00800_n42_α
.Lx00816_0:
 .quad 10
# IR_PROC_VALUE first-class procedure value
 xchain00800_n42_α:
 mov rdi, qword ptr [rip + .Lx00817_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain00800_n45_α
 xchain00800_n42_β:
 jmp xchain00800_n48_α
.Lx00817_0:
 .quad .Lx00817_0_s
.Lx00817_0_s:
 .string "nothing"
# IR_VAR
 xchain00800_n43_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6056], rax
 jmp xchain00800_n46_α
 xchain00800_n43_β:
 jmp xchain00800_n39_α
 xchain00800_n44_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5824]
 mov rax, qword ptr [r12 + 5856]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5864]
 mov qword ptr [r12 + 5832], rax
# marshal arg1 = producer-box slot [zr+5872] -> [zr+5840]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5848], rax
  .section .rodata
  .Lrkfn2532: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2532]
 lea rsi, [r12 + 5824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain00800_n42_α
 jmp xchain00800_n47_α
 xchain00800_n44_β:
 jmp xchain00800_n42_α
 xchain00800_n45_α:
  .section .rodata
  .Lcall00818_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5744]
 mov rdx, qword ptr [r12 + 5752]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00818_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain00800_n48_α
 jmp xchain00800_n48_α
xchain00800_n45_β:
 jmp xchain00800_n48_α
# IR_UNOP
 xchain00800_n46_α:
 mov rdi, qword ptr [r12 + 6896]
 mov rsi, qword ptr [r12 + 6904]
 call rt_size_d@PLT
 mov qword ptr [r12 + 6032], rax
 mov qword ptr [r12 + 6040], rdx
 jmp xchain00800_n49_α
 xchain00800_n46_β:
 jmp xchain00800_n39_α
# IR_LIT_STRING
 xchain00800_n47_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain00800_n50_α
 xchain00800_n47_β:
 jmp xchain00800_n42_α
.Lx00819_0:
 .quad .Lx00819_0_s
.Lx00819_0_s:
 .string "  overhead"
# IR_PROC_VALUE first-class procedure value
 xchain00800_n48_α:
 mov rdi, qword ptr [rip + .Lx00820_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain00800_n51_α
 xchain00800_n48_β:
 jmp xchain00800_n53_α
.Lx00820_0:
 .quad .Lx00820_0_s
.Lx00820_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00800_n49_α:
 mov qword ptr [r12 + 6064], 6
 mov rax, qword ptr [rip + .Lx00821_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain00800_n52_α
 xchain00800_n49_β:
 jmp xchain00800_n39_α
.Lx00821_0:
 .quad 1
 xchain00800_n50_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5776]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5784], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5792]
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5800], rax
  .section .rodata
  .Lrkfn2540: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2540]
 lea rsi, [r12 + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 cmp eax, 99
 je xchain00800_n42_α
 jmp xchain00800_n42_α
 xchain00800_n50_β:
 jmp xchain00800_n42_α
 xchain00800_n51_α:
  .section .rodata
  .Lcall00822_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5696]
 mov rdx, qword ptr [r12 + 5704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00822_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 cmp eax, 99
 je xchain00800_n53_α
 jmp xchain00800_n53_α
xchain00800_n51_β:
 jmp xchain00800_n53_α
 xchain00800_n52_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 100
 je .Lx00823_0
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 100
 je .Lx00823_0
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 6
 jne .Lx00823_2
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 6
 jne .Lx00823_2
.Lx00823_1:
 mov rax, qword ptr [r12 + 6040]
 mov rcx, qword ptr [r12 + 6072]
 sub rax, rcx
 mov qword ptr [r12 + 6016], 6
 mov qword ptr [r12 + 6024], rax
 jmp xchain00800_n54_α
.Lx00823_0:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 lea r9, [r12 + 6016]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00823_3
.Lx00823_2:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00800_n39_α
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
.Lx00823_3:
 jmp xchain00800_n54_α
 xchain00800_n52_β:
 jmp xchain00800_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n53_α:
 mov rdi, qword ptr [rip + .Lx00824_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain00800_n55_α
 xchain00800_n53_β:
 jmp xchain00800_n57_α
.Lx00824_0:
 .quad .Lx00824_0_s
.Lx00824_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00800_n54_α:
 mov qword ptr [r12 + 6080], 6
 mov rax, qword ptr [rip + .Lx00825_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain00800_n56_α
 xchain00800_n54_β:
 jmp xchain00800_n39_α
.Lx00825_0:
 .quad 2
 xchain00800_n55_α:
  .section .rodata
  .Lcall00826_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5648]
 mov rdx, qword ptr [r12 + 5656]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00826_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 cmp eax, 99
 je xchain00800_n57_α
 jmp xchain00800_n57_α
xchain00800_n55_β:
 jmp xchain00800_n57_α
 xchain00800_n56_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 100
 je .Lx00827_0
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 100
 je .Lx00827_0
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 6
 jne .Lx00827_2
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 6
 jne .Lx00827_2
.Lx00827_1:
 mov rax, qword ptr [r12 + 6024]
 mov rcx, qword ptr [r12 + 6088]
 cqo
 idiv rcx
 mov qword ptr [r12 + 6000], 6
 mov qword ptr [r12 + 6008], rax
 jmp xchain00800_n58_α
.Lx00827_0:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 lea r9, [r12 + 6000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00827_3
.Lx00827_2:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00800_n39_α
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
.Lx00827_3:
 jmp xchain00800_n58_α
 xchain00800_n56_β:
 jmp xchain00800_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n57_α:
 mov rdi, qword ptr [rip + .Lx00828_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain00800_n59_α
 xchain00800_n57_β:
 jmp xchain00800_n61_α
.Lx00828_0:
 .quad .Lx00828_0_s
.Lx00828_0_s:
 .string "globasgn"
 xchain00800_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 100
 je .Lx00829_0
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 100
 je .Lx00829_0
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 6
 jne .Lx00829_2
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 6
 jne .Lx00829_2
.Lx00829_1:
 mov rax, qword ptr [r12 + 5992]
 mov rcx, qword ptr [r12 + 6008]
 add rax, rcx
 mov qword ptr [r12 + 5968], 6
 mov qword ptr [r12 + 5976], rax
 jmp xchain00800_n60_α
.Lx00829_0:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 lea r9, [r12 + 5968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00829_3
.Lx00829_2:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00800_n39_α
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
.Lx00829_3:
 jmp xchain00800_n60_α
 xchain00800_n58_β:
 jmp xchain00800_n39_α
 xchain00800_n59_α:
  .section .rodata
  .Lcall00830_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00830_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5568], rax
 mov qword ptr [r12 + 5576], rdx
 cmp eax, 99
 je xchain00800_n61_α
 jmp xchain00800_n61_α
xchain00800_n59_β:
 jmp xchain00800_n61_α
# IR_SUBSCRIPT x[i] variable
 xchain00800_n60_α:
 mov rdi, qword ptr [r12 + 5920]
 mov rsi, qword ptr [r12 + 5928]
 mov rdx, qword ptr [r12 + 5968]
 mov rcx, qword ptr [r12 + 5976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00800_n39_α
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain00800_n62_α
 xchain00800_n60_β:
 jmp xchain00800_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n61_α:
 mov rdi, qword ptr [rip + .Lx00831_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 jmp xchain00800_n63_α
 xchain00800_n61_β:
 jmp xchain00800_n65_α
.Lx00831_0:
 .quad .Lx00831_0_s
.Lx00831_0_s:
 .string "statasgn"
# IR_DEREF variable -> value
 xchain00800_n62_α:
 mov rdi, qword ptr [r12 + 6096]
 mov rsi, qword ptr [r12 + 6104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00800_n39_α
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain00800_n64_α
 xchain00800_n62_β:
 jmp xchain00800_n39_α
 xchain00800_n63_α:
  .section .rodata
  .Lcall00832_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5552]
 mov rdx, qword ptr [r12 + 5560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00832_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain00800_n65_α
 jmp xchain00800_n65_α
xchain00800_n63_β:
 jmp xchain00800_n65_α
# IR_ASSIGN gva
 xchain00800_n64_α:
 mov rax, qword ptr [r12 + 6112]
 mov rdx, qword ptr [r12 + 6120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 jmp xchain00800_n39_α
 xchain00800_n64_β:
 jmp xchain00800_n39_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n65_α:
 mov rdi, qword ptr [rip + .Lx00833_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain00800_n66_α
 xchain00800_n65_β:
 jmp xchain00800_n67_α
.Lx00833_0:
 .quad .Lx00833_0_s
.Lx00833_0_s:
 .string "loclasgn"
 xchain00800_n66_α:
  .section .rodata
  .Lcall00604_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00604_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain00800_n67_α
 jmp xchain00800_n67_α
xchain00800_n66_β:
 jmp xchain00800_n67_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n67_α:
 mov rdi, qword ptr [rip + .Lx00834_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain00800_n68_α
 xchain00800_n67_β:
 jmp xchain00800_n69_α
.Lx00834_0:
 .quad .Lx00834_0_s
.Lx00834_0_s:
 .string "if0"
 xchain00800_n68_α:
  .section .rodata
  .Lcall00835_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5456]
 mov rdx, qword ptr [r12 + 5464]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00835_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain00800_n69_α
 jmp xchain00800_n69_α
xchain00800_n68_β:
 jmp xchain00800_n69_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n69_α:
 mov rdi, qword ptr [rip + .Lx00836_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain00800_n70_α
 xchain00800_n69_β:
 jmp xchain00800_n71_α
.Lx00836_0:
 .quad .Lx00836_0_s
.Lx00836_0_s:
 .string "case3"
 xchain00800_n70_α:
  .section .rodata
  .Lcall00837_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00837_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 cmp eax, 99
 je xchain00800_n71_α
 jmp xchain00800_n71_α
xchain00800_n70_β:
 jmp xchain00800_n71_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n71_α:
 mov rdi, qword ptr [rip + .Lx00838_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain00800_n72_α
 xchain00800_n71_β:
 jmp xchain00800_n73_α
.Lx00838_0:
 .quad .Lx00838_0_s
.Lx00838_0_s:
 .string "nulltest"
 xchain00800_n72_α:
  .section .rodata
  .Lcall00839_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5360]
 mov rdx, qword ptr [r12 + 5368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00839_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 cmp eax, 99
 je xchain00800_n73_α
 jmp xchain00800_n73_α
xchain00800_n72_β:
 jmp xchain00800_n73_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n73_α:
 mov rdi, qword ptr [rip + .Lx00840_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain00800_n74_α
 xchain00800_n73_β:
 jmp xchain00800_n75_α
.Lx00840_0:
 .quad .Lx00840_0_s
.Lx00840_0_s:
 .string "typef"
 xchain00800_n74_α:
  .section .rodata
  .Lcall00841_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5312]
 mov rdx, qword ptr [r12 + 5320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00841_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain00800_n75_α
 jmp xchain00800_n75_α
xchain00800_n74_β:
 jmp xchain00800_n75_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n75_α:
 mov rdi, qword ptr [rip + .Lx00842_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain00800_n76_α
 xchain00800_n75_β:
 jmp xchain00800_n77_α
.Lx00842_0:
 .quad .Lx00842_0_s
.Lx00842_0_s:
 .string "imagef"
 xchain00800_n76_α:
  .section .rodata
  .Lcall00843_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00843_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 cmp eax, 99
 je xchain00800_n77_α
 jmp xchain00800_n77_α
xchain00800_n76_β:
 jmp xchain00800_n77_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n77_α:
 mov rdi, qword ptr [rip + .Lx00844_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain00800_n78_α
 xchain00800_n77_β:
 jmp xchain00800_n79_α
.Lx00844_0:
 .quad .Lx00844_0_s
.Lx00844_0_s:
 .string "everyto"
 xchain00800_n78_α:
  .section .rodata
  .Lcall00845_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5216]
 mov rdx, qword ptr [r12 + 5224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00845_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain00800_n79_α
 jmp xchain00800_n79_α
xchain00800_n78_β:
 jmp xchain00800_n79_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n79_α:
 mov rdi, qword ptr [rip + .Lx00846_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain00800_n80_α
 xchain00800_n79_β:
 jmp xchain00800_n81_α
.Lx00846_0:
 .quad .Lx00846_0_s
.Lx00846_0_s:
 .string "everyalt"
 xchain00800_n80_α:
  .section .rodata
  .Lcall00847_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5168]
 mov rdx, qword ptr [r12 + 5176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00847_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 cmp eax, 99
 je xchain00800_n81_α
 jmp xchain00800_n81_α
xchain00800_n80_β:
 jmp xchain00800_n81_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n81_α:
 mov rdi, qword ptr [rip + .Lx00848_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 jmp xchain00800_n82_α
 xchain00800_n81_β:
 jmp xchain00800_n83_α
.Lx00848_0:
 .quad .Lx00848_0_s
.Lx00848_0_s:
 .string "conj5"
 xchain00800_n82_α:
  .section .rodata
  .Lcall00608_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5120]
 mov rdx, qword ptr [r12 + 5128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00608_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain00800_n83_α
 jmp xchain00800_n83_α
xchain00800_n82_β:
 jmp xchain00800_n83_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n83_α:
 mov rdi, qword ptr [rip + .Lx00849_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain00800_n84_α
 xchain00800_n83_β:
 jmp xchain00800_n85_α
.Lx00849_0:
 .quad .Lx00849_0_s
.Lx00849_0_s:
 .string "nullfunc"
 xchain00800_n84_α:
  .section .rodata
  .Lcall00850_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00850_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain00800_n85_α
 jmp xchain00800_n85_α
xchain00800_n84_β:
 jmp xchain00800_n85_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n85_α:
 mov rdi, qword ptr [rip + .Lx00851_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain00800_n86_α
 xchain00800_n85_β:
 jmp xchain00800_n87_α
.Lx00851_0:
 .quad .Lx00851_0_s
.Lx00851_0_s:
 .string "listcall"
 xchain00800_n86_α:
  .section .rodata
  .Lcall00852_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5024]
 mov rdx, qword ptr [r12 + 5032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00852_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain00800_n87_α
 jmp xchain00800_n87_α
xchain00800_n86_β:
 jmp xchain00800_n87_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n87_α:
 mov rdi, qword ptr [rip + .Lx00853_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain00800_n88_α
 xchain00800_n87_β:
 jmp xchain00800_n89_α
.Lx00853_0:
 .quad .Lx00853_0_s
.Lx00853_0_s:
 .string "marshal"
 xchain00800_n88_α:
  .section .rodata
  .Lcall00854_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00854_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain00800_n89_α
 jmp xchain00800_n89_α
xchain00800_n88_β:
 jmp xchain00800_n89_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n89_α:
 mov rdi, qword ptr [rip + .Lx00855_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain00800_n90_α
 xchain00800_n89_β:
 jmp xchain00800_n91_α
.Lx00855_0:
 .quad .Lx00855_0_s
.Lx00855_0_s:
 .string "evsusp"
 xchain00800_n90_α:
  .section .rodata
  .Lcall00856_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4928]
 mov rdx, qword ptr [r12 + 4936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00856_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je xchain00800_n91_α
 jmp xchain00800_n91_α
xchain00800_n90_β:
 jmp xchain00800_n91_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n91_α:
 mov rdi, qword ptr [rip + .Lx00857_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 jmp xchain00800_n92_α
 xchain00800_n91_β:
 jmp xchain00800_n93_α
.Lx00857_0:
 .quad .Lx00857_0_s
.Lx00857_0_s:
 .string "tointeger"
 xchain00800_n92_α:
  .section .rodata
  .Lcall00858_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4880]
 mov rdx, qword ptr [r12 + 4888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00858_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 cmp eax, 99
 je xchain00800_n93_α
 jmp xchain00800_n93_α
xchain00800_n92_β:
 jmp xchain00800_n93_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n93_α:
 mov rdi, qword ptr [rip + .Lx00859_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain00800_n94_α
 xchain00800_n93_β:
 jmp xchain00800_n95_α
.Lx00859_0:
 .quad .Lx00859_0_s
.Lx00859_0_s:
 .string "intcoerce"
 xchain00800_n94_α:
  .section .rodata
  .Lcall00860_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4832]
 mov rdx, qword ptr [r12 + 4840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00860_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 cmp eax, 99
 je xchain00800_n95_α
 jmp xchain00800_n95_α
xchain00800_n94_β:
 jmp xchain00800_n95_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n95_α:
 mov rdi, qword ptr [rip + .Lx00861_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain00800_n96_α
 xchain00800_n95_β:
 jmp xchain00800_n97_α
.Lx00861_0:
 .quad .Lx00861_0_s
.Lx00861_0_s:
 .string "uplus"
 xchain00800_n96_α:
  .section .rodata
  .Lcall00610_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00610_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je xchain00800_n97_α
 jmp xchain00800_n97_α
xchain00800_n96_β:
 jmp xchain00800_n97_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n97_α:
 mov rdi, qword ptr [rip + .Lx00862_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain00800_n98_α
 xchain00800_n97_β:
 jmp xchain00800_n99_α
.Lx00862_0:
 .quad .Lx00862_0_s
.Lx00862_0_s:
 .string "tostring"
 xchain00800_n98_α:
  .section .rodata
  .Lcall00863_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4736]
 mov rdx, qword ptr [r12 + 4744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00863_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je xchain00800_n99_α
 jmp xchain00800_n99_α
xchain00800_n98_β:
 jmp xchain00800_n99_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n99_α:
 mov rdi, qword ptr [rip + .Lx00864_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain00800_n00865_α
 xchain00800_n99_β:
 jmp xchain00800_n00866_α
.Lx00864_0:
 .quad .Lx00864_0_s
.Lx00864_0_s:
 .string "strcoerce"
 xchain00800_n00865_α:
  .section .rodata
  .Lcall00611_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00611_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain00800_n00866_α
 jmp xchain00800_n00866_α
xchain00800_n00865_β:
 jmp xchain00800_n00866_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00866_α:
 mov rdi, qword ptr [rip + .Lx00867_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain00800_n00868_α
 xchain00800_n00866_β:
 jmp xchain00800_n00869_α
.Lx00867_0:
 .quad .Lx00867_0_s
.Lx00867_0_s:
 .string "absf"
 xchain00800_n00868_α:
  .section .rodata
  .Lcall00870_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4640]
 mov rdx, qword ptr [r12 + 4648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00870_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain00800_n00869_α
 jmp xchain00800_n00869_α
xchain00800_n00868_β:
 jmp xchain00800_n00869_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00869_α:
 mov rdi, qword ptr [rip + .Lx00871_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain00800_n00872_α
 xchain00800_n00869_β:
 jmp xchain00800_n00873_α
.Lx00871_0:
 .quad .Lx00871_0_s
.Lx00871_0_s:
 .string "intadd"
 xchain00800_n00872_α:
  .section .rodata
  .Lcall00874_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00874_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 cmp eax, 99
 je xchain00800_n00873_α
 jmp xchain00800_n00873_α
xchain00800_n00872_β:
 jmp xchain00800_n00873_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00873_α:
 mov rdi, qword ptr [rip + .Lx00875_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain00800_n00001_α
 xchain00800_n00873_β:
 jmp xchain00800_n00876_α
.Lx00875_0:
 .quad .Lx00875_0_s
.Lx00875_0_s:
 .string "addfunc"
 xchain00800_n00001_α:
  .section .rodata
  .Lcall00877_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4544]
 mov rdx, qword ptr [r12 + 4552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00877_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je xchain00800_n00876_α
 jmp xchain00800_n00876_α
xchain00800_n00001_β:
 jmp xchain00800_n00876_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00876_α:
 mov rdi, qword ptr [rip + .Lx00878_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain00800_n00879_α
 xchain00800_n00876_β:
 jmp xchain00800_n00880_α
.Lx00878_0:
 .quad .Lx00878_0_s
.Lx00878_0_s:
 .string "intpow"
 xchain00800_n00879_α:
  .section .rodata
  .Lcall00613_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00613_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 cmp eax, 99
 je xchain00800_n00880_α
 jmp xchain00800_n00880_α
xchain00800_n00879_β:
 jmp xchain00800_n00880_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00880_α:
 mov rdi, qword ptr [rip + .Lx00881_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain00800_n00882_α
 xchain00800_n00880_β:
 jmp xchain00800_n00883_α
.Lx00881_0:
 .quad .Lx00881_0_s
.Lx00881_0_s:
 .string "intcmp"
 xchain00800_n00882_α:
  .section .rodata
  .Lcall00884_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4448]
 mov rdx, qword ptr [r12 + 4456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00884_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je xchain00800_n00883_α
 jmp xchain00800_n00883_α
xchain00800_n00882_β:
 jmp xchain00800_n00883_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00883_α:
 mov rdi, qword ptr [rip + .Lx00885_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain00800_n00886_α
 xchain00800_n00883_β:
 jmp xchain00800_n00887_α
.Lx00885_0:
 .quad .Lx00885_0_s
.Lx00885_0_s:
 .string "rfact0"
 xchain00800_n00886_α:
  .section .rodata
  .Lcall00888_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00888_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain00800_n00887_α
 jmp xchain00800_n00887_α
xchain00800_n00886_β:
 jmp xchain00800_n00887_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00887_α:
 mov rdi, qword ptr [rip + .Lx00889_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain00800_n00890_α
 xchain00800_n00887_β:
 jmp xchain00800_n00002_α
.Lx00889_0:
 .quad .Lx00889_0_s
.Lx00889_0_s:
 .string "rfact10"
 xchain00800_n00890_α:
  .section .rodata
  .Lcall00614_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4352]
 mov rdx, qword ptr [r12 + 4360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00614_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain00800_n00002_α
 jmp xchain00800_n00002_α
xchain00800_n00890_β:
 jmp xchain00800_n00002_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00002_α:
 mov rdi, qword ptr [rip + .Lx00891_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 jmp xchain00800_n00892_α
 xchain00800_n00002_β:
 jmp xchain00800_n00893_α
.Lx00891_0:
 .quad .Lx00891_0_s
.Lx00891_0_s:
 .string "rfib5"
 xchain00800_n00892_α:
  .section .rodata
  .Lcall00894_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00894_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain00800_n00893_α
 jmp xchain00800_n00893_α
xchain00800_n00892_β:
 jmp xchain00800_n00893_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00893_α:
 mov rdi, qword ptr [rip + .Lx00895_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain00800_n00896_α
 xchain00800_n00893_β:
 jmp xchain00800_n00003_α
.Lx00895_0:
 .quad .Lx00895_0_s
.Lx00895_0_s:
 .string "prslow"
 xchain00800_n00896_α:
  .section .rodata
  .Lcall00897_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4256]
 mov rdx, qword ptr [r12 + 4264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00897_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain00800_n00003_α
 jmp xchain00800_n00003_α
xchain00800_n00896_β:
 jmp xchain00800_n00003_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00003_α:
 mov rdi, qword ptr [rip + .Lx00898_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain00800_n00004_α
 xchain00800_n00003_β:
 jmp xchain00800_n00899_α
.Lx00898_0:
 .quad .Lx00898_0_s
.Lx00898_0_s:
 .string "toreal"
 xchain00800_n00004_α:
  .section .rodata
  .Lcall00615_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00615_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 cmp eax, 99
 je xchain00800_n00899_α
 jmp xchain00800_n00899_α
xchain00800_n00004_β:
 jmp xchain00800_n00899_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00899_α:
 mov rdi, qword ptr [rip + .Lx00900_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain00800_n00901_α
 xchain00800_n00899_β:
 jmp xchain00800_n00005_α
.Lx00900_0:
 .quad .Lx00900_0_s
.Lx00900_0_s:
 .string "realcoerce"
 xchain00800_n00901_α:
  .section .rodata
  .Lcall00617_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4160]
 mov rdx, qword ptr [r12 + 4168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00617_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je xchain00800_n00005_α
 jmp xchain00800_n00005_α
xchain00800_n00901_β:
 jmp xchain00800_n00005_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00005_α:
 mov rdi, qword ptr [rip + .Lx00902_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain00800_n00903_α
 xchain00800_n00005_β:
 jmp xchain00800_n00904_α
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "uplusr"
 xchain00800_n00903_α:
  .section .rodata
  .Lcall00905_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00905_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 cmp eax, 99
 je xchain00800_n00904_α
 jmp xchain00800_n00904_α
xchain00800_n00903_β:
 jmp xchain00800_n00904_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00904_α:
 mov rdi, qword ptr [rip + .Lx00906_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain00800_n00907_α
 xchain00800_n00904_β:
 jmp xchain00800_n00908_α
.Lx00906_0:
 .quad .Lx00906_0_s
.Lx00906_0_s:
 .string "rtostring"
 xchain00800_n00907_α:
  .section .rodata
  .Lcall00909_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4064]
 mov rdx, qword ptr [r12 + 4072]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00909_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain00800_n00908_α
 jmp xchain00800_n00908_α
xchain00800_n00907_β:
 jmp xchain00800_n00908_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00908_α:
 mov rdi, qword ptr [rip + .Lx00910_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain00800_n00006_α
 xchain00800_n00908_β:
 jmp xchain00800_n00911_α
.Lx00910_0:
 .quad .Lx00910_0_s
.Lx00910_0_s:
 .string "strcoercer"
 xchain00800_n00006_α:
  .section .rodata
  .Lcall00912_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00912_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain00800_n00911_α
 jmp xchain00800_n00911_α
xchain00800_n00006_β:
 jmp xchain00800_n00911_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00911_α:
 mov rdi, qword ptr [rip + .Lx00913_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 jmp xchain00800_n00914_α
 xchain00800_n00911_β:
 jmp xchain00800_n00915_α
.Lx00913_0:
 .quad .Lx00913_0_s
.Lx00913_0_s:
 .string "realcmp"
 xchain00800_n00914_α:
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
 je xchain00800_n00915_α
 jmp xchain00800_n00915_α
xchain00800_n00914_β:
 jmp xchain00800_n00915_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00915_α:
 mov rdi, qword ptr [rip + .Lx00917_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 jmp xchain00800_n00007_α
 xchain00800_n00915_β:
 jmp xchain00800_n00008_α
.Lx00917_0:
 .quad .Lx00917_0_s
.Lx00917_0_s:
 .string "sqrtf"
 xchain00800_n00007_α:
  .section .rodata
  .Lcall00918_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3920]
 mov rdx, qword ptr [r12 + 3928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00918_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 cmp eax, 99
 je xchain00800_n00008_α
 jmp xchain00800_n00008_α
xchain00800_n00007_β:
 jmp xchain00800_n00008_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00008_α:
 mov rdi, qword ptr [rip + .Lx00919_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain00800_n00920_α
 xchain00800_n00008_β:
 jmp xchain00800_n00921_α
.Lx00919_0:
 .quad .Lx00919_0_s
.Lx00919_0_s:
 .string "cosf"
 xchain00800_n00920_α:
  .section .rodata
  .Lcall00922_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3872]
 mov rdx, qword ptr [r12 + 3880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00922_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain00800_n00921_α
 jmp xchain00800_n00921_α
xchain00800_n00920_β:
 jmp xchain00800_n00921_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00921_α:
 mov rdi, qword ptr [rip + .Lx00923_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain00800_n00924_α
 xchain00800_n00921_β:
 jmp xchain00800_n00925_α
.Lx00923_0:
 .quad .Lx00923_0_s
.Lx00923_0_s:
 .string "logf"
 xchain00800_n00924_α:
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
 je xchain00800_n00925_α
 jmp xchain00800_n00925_α
xchain00800_n00924_β:
 jmp xchain00800_n00925_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00925_α:
 mov rdi, qword ptr [rip + .Lx00927_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 jmp xchain00800_n00009_α
 xchain00800_n00925_β:
 jmp xchain00800_n00010_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "charf"
 xchain00800_n00009_α:
  .section .rodata
  .Lcall00928_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3776]
 mov rdx, qword ptr [r12 + 3784]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00928_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je xchain00800_n00010_α
 jmp xchain00800_n00010_α
xchain00800_n00009_β:
 jmp xchain00800_n00010_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00010_α:
 mov rdi, qword ptr [rip + .Lx00929_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain00800_n00011_α
 xchain00800_n00010_β:
 jmp xchain00800_n00930_α
.Lx00929_0:
 .quad .Lx00929_0_s
.Lx00929_0_s:
 .string "ordf"
 xchain00800_n00011_α:
  .section .rodata
  .Lcall00931_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3728]
 mov rdx, qword ptr [r12 + 3736]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00931_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 cmp eax, 99
 je xchain00800_n00930_α
 jmp xchain00800_n00930_α
xchain00800_n00011_β:
 jmp xchain00800_n00930_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00930_α:
 mov rdi, qword ptr [rip + .Lx00932_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain00800_n00933_α
 xchain00800_n00930_β:
 jmp xchain00800_n00934_α
.Lx00932_0:
 .quad .Lx00932_0_s
.Lx00932_0_s:
 .string "strsize"
 xchain00800_n00933_α:
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
 je xchain00800_n00934_α
 jmp xchain00800_n00934_α
xchain00800_n00933_β:
 jmp xchain00800_n00934_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00934_α:
 mov rdi, qword ptr [rip + .Lx00936_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain00800_n00012_α
 xchain00800_n00934_β:
 jmp xchain00800_n00013_α
.Lx00936_0:
 .quad .Lx00936_0_s
.Lx00936_0_s:
 .string "strpick"
 xchain00800_n00012_α:
  .section .rodata
  .Lcall00937_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3632]
 mov rdx, qword ptr [r12 + 3640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00937_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain00800_n00013_α
 jmp xchain00800_n00013_α
xchain00800_n00012_β:
 jmp xchain00800_n00013_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00013_α:
 mov rdi, qword ptr [rip + .Lx00938_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain00800_n00939_α
 xchain00800_n00013_β:
 jmp xchain00800_n00940_α
.Lx00938_0:
 .quad .Lx00938_0_s
.Lx00938_0_s:
 .string "strbang"
 xchain00800_n00939_α:
  .section .rodata
  .Lcall00941_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00941_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je xchain00800_n00940_α
 jmp xchain00800_n00940_α
xchain00800_n00939_β:
 jmp xchain00800_n00940_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00940_α:
 mov rdi, qword ptr [rip + .Lx00942_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain00800_n00943_α
 xchain00800_n00940_β:
 jmp xchain00800_n00944_α
.Lx00942_0:
 .quad .Lx00942_0_s
.Lx00942_0_s:
 .string "strsub"
 xchain00800_n00943_α:
  .section .rodata
  .Lcall00621_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3536]
 mov rdx, qword ptr [r12 + 3544]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00621_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain00800_n00944_α
 jmp xchain00800_n00944_α
xchain00800_n00943_β:
 jmp xchain00800_n00944_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00944_α:
 mov rdi, qword ptr [rip + .Lx00945_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain00800_n00014_α
 xchain00800_n00944_β:
 jmp xchain00800_n00015_α
.Lx00945_0:
 .quad .Lx00945_0_s
.Lx00945_0_s:
 .string "substr"
 xchain00800_n00014_α:
  .section .rodata
  .Lcall00946_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00946_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain00800_n00015_α
 jmp xchain00800_n00015_α
xchain00800_n00014_β:
 jmp xchain00800_n00015_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00015_α:
 mov rdi, qword ptr [rip + .Lx00947_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain00800_n00016_α
 xchain00800_n00015_β:
 jmp xchain00800_n00948_α
.Lx00947_0:
 .quad .Lx00947_0_s
.Lx00947_0_s:
 .string "subsasg"
 xchain00800_n00016_α:
  .section .rodata
  .Lcall00949_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00949_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain00800_n00948_α
 jmp xchain00800_n00948_α
xchain00800_n00016_β:
 jmp xchain00800_n00948_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00948_α:
 mov rdi, qword ptr [rip + .Lx00950_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain00800_n00951_α
 xchain00800_n00948_β:
 jmp xchain00800_n00952_α
.Lx00950_0:
 .quad .Lx00950_0_s
.Lx00950_0_s:
 .string "strcmp"
 xchain00800_n00951_α:
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
 je xchain00800_n00952_α
 jmp xchain00800_n00952_α
xchain00800_n00951_β:
 jmp xchain00800_n00952_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00952_α:
 mov rdi, qword ptr [rip + .Lx00954_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain00800_n00017_α
 xchain00800_n00952_β:
 jmp xchain00800_n00018_α
.Lx00954_0:
 .quad .Lx00954_0_s
.Lx00954_0_s:
 .string "strident"
 xchain00800_n00017_α:
  .section .rodata
  .Lcall00955_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3344]
 mov rdx, qword ptr [r12 + 3352]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00955_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xchain00800_n00018_α
 jmp xchain00800_n00018_α
xchain00800_n00017_β:
 jmp xchain00800_n00018_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00018_α:
 mov rdi, qword ptr [rip + .Lx00956_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain00800_n00957_α
 xchain00800_n00018_β:
 jmp xchain00800_n00958_α
.Lx00956_0:
 .quad .Lx00956_0_s
.Lx00956_0_s:
 .string "concat"
 xchain00800_n00957_α:
  .section .rodata
  .Lcall00959_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3296]
 mov rdx, qword ptr [r12 + 3304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00959_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain00800_n00958_α
 jmp xchain00800_n00958_α
xchain00800_n00957_β:
 jmp xchain00800_n00958_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00958_α:
 mov rdi, qword ptr [rip + .Lx00960_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain00800_n00961_α
 xchain00800_n00958_β:
 jmp xchain00800_n00962_α
.Lx00960_0:
 .quad .Lx00960_0_s
.Lx00960_0_s:
 .string "reversef"
 xchain00800_n00961_α:
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
 je xchain00800_n00962_α
 jmp xchain00800_n00962_α
xchain00800_n00961_β:
 jmp xchain00800_n00962_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00962_α:
 mov rdi, qword ptr [rip + .Lx00964_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain00800_n00019_α
 xchain00800_n00962_β:
 jmp xchain00800_n00020_α
.Lx00964_0:
 .quad .Lx00964_0_s
.Lx00964_0_s:
 .string "trimf"
 xchain00800_n00019_α:
  .section .rodata
  .Lcall00965_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00965_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain00800_n00020_α
 jmp xchain00800_n00020_α
xchain00800_n00019_β:
 jmp xchain00800_n00020_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00020_α:
 mov rdi, qword ptr [rip + .Lx00966_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain00800_n00021_α
 xchain00800_n00020_β:
 jmp xchain00800_n00967_α
.Lx00966_0:
 .quad .Lx00966_0_s
.Lx00966_0_s:
 .string "replf"
 xchain00800_n00021_α:
  .section .rodata
  .Lcall00968_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00968_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain00800_n00967_α
 jmp xchain00800_n00967_α
xchain00800_n00021_β:
 jmp xchain00800_n00967_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00967_α:
 mov rdi, qword ptr [rip + .Lx00969_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain00800_n00970_α
 xchain00800_n00967_β:
 jmp xchain00800_n00971_α
.Lx00969_0:
 .quad .Lx00969_0_s
.Lx00969_0_s:
 .string "leftf"
 xchain00800_n00970_α:
  .section .rodata
  .Lcall00972_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3104]
 mov rdx, qword ptr [r12 + 3112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00972_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain00800_n00971_α
 jmp xchain00800_n00971_α
xchain00800_n00970_β:
 jmp xchain00800_n00971_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00971_α:
 mov rdi, qword ptr [rip + .Lx00973_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain00800_n00022_α
 xchain00800_n00971_β:
 jmp xchain00800_n00023_α
.Lx00973_0:
 .quad .Lx00973_0_s
.Lx00973_0_s:
 .string "centerf"
 xchain00800_n00022_α:
  .section .rodata
  .Lcall00625_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00625_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain00800_n00023_α
 jmp xchain00800_n00023_α
xchain00800_n00022_β:
 jmp xchain00800_n00023_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00023_α:
 mov rdi, qword ptr [rip + .Lx00974_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain00800_n00975_α
 xchain00800_n00023_β:
 jmp xchain00800_n00976_α
.Lx00974_0:
 .quad .Lx00974_0_s
.Lx00974_0_s:
 .string "rightf"
 xchain00800_n00975_α:
  .section .rodata
  .Lcall00977_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00977_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain00800_n00976_α
 jmp xchain00800_n00976_α
xchain00800_n00975_β:
 jmp xchain00800_n00976_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00976_α:
 mov rdi, qword ptr [rip + .Lx00978_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain00800_n00979_α
 xchain00800_n00976_β:
 jmp xchain00800_n00980_α
.Lx00978_0:
 .quad .Lx00978_0_s
.Lx00978_0_s:
 .string "entabf"
 xchain00800_n00979_α:
  .section .rodata
  .Lcall00626_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00626_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je xchain00800_n00980_α
 jmp xchain00800_n00980_α
xchain00800_n00979_β:
 jmp xchain00800_n00980_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00980_α:
 mov rdi, qword ptr [rip + .Lx00981_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain00800_n00024_α
 xchain00800_n00980_β:
 jmp xchain00800_n00025_α
.Lx00981_0:
 .quad .Lx00981_0_s
.Lx00981_0_s:
 .string "detabf"
 xchain00800_n00024_α:
  .section .rodata
  .Lcall00982_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00982_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain00800_n00025_α
 jmp xchain00800_n00025_α
xchain00800_n00024_β:
 jmp xchain00800_n00025_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00025_α:
 mov rdi, qword ptr [rip + .Lx00983_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain00800_n00984_α
 xchain00800_n00025_β:
 jmp xchain00800_n00985_α
.Lx00983_0:
 .quad .Lx00983_0_s
.Lx00983_0_s:
 .string "mapf"
 xchain00800_n00984_α:
  .section .rodata
  .Lcall00986_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00986_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain00800_n00985_α
 jmp xchain00800_n00985_α
xchain00800_n00984_β:
 jmp xchain00800_n00985_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00985_α:
 mov rdi, qword ptr [rip + .Lx00987_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain00800_n00026_α
 xchain00800_n00985_β:
 jmp xchain00800_n00988_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "map1"
 xchain00800_n00026_α:
  .section .rodata
  .Lcall00628_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2816]
 mov rdx, qword ptr [r12 + 2824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00628_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je xchain00800_n00988_α
 jmp xchain00800_n00988_α
xchain00800_n00026_β:
 jmp xchain00800_n00988_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00988_α:
 mov rdi, qword ptr [rip + .Lx00989_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain00800_n00990_α
 xchain00800_n00988_β:
 jmp xchain00800_n00991_α
.Lx00989_0:
 .quad .Lx00989_0_s
.Lx00989_0_s:
 .string "map2"
 xchain00800_n00990_α:
  .section .rodata
  .Lcall00992_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00992_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain00800_n00991_α
 jmp xchain00800_n00991_α
xchain00800_n00990_β:
 jmp xchain00800_n00991_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00991_α:
 mov rdi, qword ptr [rip + .Lx00993_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain00800_n00027_α
 xchain00800_n00991_β:
 jmp xchain00800_n00028_α
.Lx00993_0:
 .quad .Lx00993_0_s
.Lx00993_0_s:
 .string "tablemap"
 xchain00800_n00027_α:
  .section .rodata
  .Lcall00630_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2720]
 mov rdx, qword ptr [r12 + 2728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00630_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je xchain00800_n00028_α
 jmp xchain00800_n00028_α
xchain00800_n00027_β:
 jmp xchain00800_n00028_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00028_α:
 mov rdi, qword ptr [rip + .Lx00994_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain00800_n00995_α
 xchain00800_n00028_β:
 jmp xchain00800_n00996_α
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "listmap"
 xchain00800_n00995_α:
  .section .rodata
  .Lcall00997_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2672]
 mov rdx, qword ptr [r12 + 2680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00997_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain00800_n00996_α
 jmp xchain00800_n00996_α
xchain00800_n00995_β:
 jmp xchain00800_n00996_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00996_α:
 mov rdi, qword ptr [rip + .Lx00998_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain00800_n00999_α
 xchain00800_n00996_β:
 jmp xchain00800_n01000_α
.Lx00998_0:
 .quad .Lx00998_0_s
.Lx00998_0_s:
 .string "nullscan"
 xchain00800_n00999_α:
  .section .rodata
  .Lcall00632_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00632_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain00800_n01000_α
 jmp xchain00800_n01000_α
xchain00800_n00999_β:
 jmp xchain00800_n01000_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01000_α:
 mov rdi, qword ptr [rip + .Lx01001_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain00800_n00029_α
 xchain00800_n01000_β:
 jmp xchain00800_n00030_α
.Lx01001_0:
 .quad .Lx01001_0_s
.Lx01001_0_s:
 .string "movef"
 xchain00800_n00029_α:
  .section .rodata
  .Lcall00633_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2576]
 mov rdx, qword ptr [r12 + 2584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00633_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain00800_n00030_α
 jmp xchain00800_n00030_α
xchain00800_n00029_β:
 jmp xchain00800_n00030_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00030_α:
 mov rdi, qword ptr [rip + .Lx01002_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain00800_n00031_α
 xchain00800_n00030_β:
 jmp xchain00800_n00032_α
.Lx01002_0:
 .quad .Lx01002_0_s
.Lx01002_0_s:
 .string "mov11"
 xchain00800_n00031_α:
  .section .rodata
  .Lcall00635_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00635_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain00800_n00032_α
 jmp xchain00800_n00032_α
xchain00800_n00031_β:
 jmp xchain00800_n00032_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00032_α:
 mov rdi, qword ptr [rip + .Lx01003_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain00800_n00033_α
 xchain00800_n00032_β:
 jmp xchain00800_n01004_α
.Lx01003_0:
 .quad .Lx01003_0_s
.Lx01003_0_s:
 .string "pos11"
 xchain00800_n00033_α:
  .section .rodata
  .Lcall01005_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01005_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain00800_n01004_α
 jmp xchain00800_n01004_α
xchain00800_n00033_β:
 jmp xchain00800_n01004_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01004_α:
 mov rdi, qword ptr [rip + .Lx01006_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain00800_n01007_α
 xchain00800_n01004_β:
 jmp xchain00800_n01008_α
.Lx01006_0:
 .quad .Lx01006_0_s
.Lx01006_0_s:
 .string "tabf"
 xchain00800_n01007_α:
  .section .rodata
  .Lcall01009_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01009_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain00800_n01008_α
 jmp xchain00800_n01008_α
xchain00800_n01007_β:
 jmp xchain00800_n01008_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01008_α:
 mov rdi, qword ptr [rip + .Lx01010_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain00800_n00034_α
 xchain00800_n01008_β:
 jmp xchain00800_n00035_α
.Lx01010_0:
 .quad .Lx01010_0_s
.Lx01010_0_s:
 .string "matchf"
 xchain00800_n00034_α:
  .section .rodata
  .Lcall00637_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00637_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain00800_n00035_α
 jmp xchain00800_n00035_α
xchain00800_n00034_β:
 jmp xchain00800_n00035_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00035_α:
 mov rdi, qword ptr [rip + .Lx01011_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain00800_n01012_α
 xchain00800_n00035_β:
 jmp xchain00800_n01013_α
.Lx01011_0:
 .quad .Lx01011_0_s
.Lx01011_0_s:
 .string "tabmat"
 xchain00800_n01012_α:
  .section .rodata
  .Lcall00639_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00639_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain00800_n01013_α
 jmp xchain00800_n01013_α
xchain00800_n01012_β:
 jmp xchain00800_n01013_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01013_α:
 mov rdi, qword ptr [rip + .Lx01014_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00800_n01015_α
 xchain00800_n01013_β:
 jmp xchain00800_n01016_α
.Lx01014_0:
 .quad .Lx01014_0_s
.Lx01014_0_s:
 .string "posf"
 xchain00800_n01015_α:
  .section .rodata
  .Lcall00641_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00641_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00800_n01016_α
 jmp xchain00800_n01016_α
xchain00800_n01015_β:
 jmp xchain00800_n01016_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01016_α:
 mov rdi, qword ptr [rip + .Lx01017_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00800_n00036_α
 xchain00800_n01016_β:
 jmp xchain00800_n00037_α
.Lx01017_0:
 .quad .Lx01017_0_s
.Lx01017_0_s:
 .string "anyf"
 xchain00800_n00036_α:
  .section .rodata
  .Lcall01018_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01018_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain00800_n00037_α
 jmp xchain00800_n00037_α
xchain00800_n00036_β:
 jmp xchain00800_n00037_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00037_α:
 mov rdi, qword ptr [rip + .Lx01019_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain00800_n00038_α
 xchain00800_n00037_β:
 jmp xchain00800_n00039_α
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "manyf"
 xchain00800_n00038_α:
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
 je xchain00800_n00039_α
 jmp xchain00800_n00039_α
xchain00800_n00038_β:
 jmp xchain00800_n00039_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00039_α:
 mov rdi, qword ptr [rip + .Lx01021_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain00800_n00040_α
 xchain00800_n00039_β:
 jmp xchain00800_n01022_α
.Lx01021_0:
 .quad .Lx01021_0_s
.Lx01021_0_s:
 .string "uptof"
 xchain00800_n00040_α:
  .section .rodata
  .Lcall01023_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01023_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain00800_n01022_α
 jmp xchain00800_n01022_α
xchain00800_n00040_β:
 jmp xchain00800_n01022_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01022_α:
 mov rdi, qword ptr [rip + .Lx01024_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain00800_n01025_α
 xchain00800_n01022_β:
 jmp xchain00800_n01026_α
.Lx01024_0:
 .quad .Lx01024_0_s
.Lx01024_0_s:
 .string "findf"
 xchain00800_n01025_α:
  .section .rodata
  .Lcall01027_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01027_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 cmp eax, 99
 je xchain00800_n01026_α
 jmp xchain00800_n01026_α
xchain00800_n01025_β:
 jmp xchain00800_n01026_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01026_α:
 mov rdi, qword ptr [rip + .Lx01028_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain00800_n00041_α
 xchain00800_n01026_β:
 jmp xchain00800_n00042_α
.Lx01028_0:
 .quad .Lx01028_0_s
.Lx01028_0_s:
 .string "balf"
 xchain00800_n00041_α:
  .section .rodata
  .Lcall01029_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01029_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain00800_n00042_α
 jmp xchain00800_n00042_α
xchain00800_n00041_β:
 jmp xchain00800_n00042_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00042_α:
 mov rdi, qword ptr [rip + .Lx01030_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain00800_n01031_α
 xchain00800_n00042_β:
 jmp xchain00800_n01032_α
.Lx01030_0:
 .quad .Lx01030_0_s
.Lx01030_0_s:
 .string "tocset"
 xchain00800_n01031_α:
  .section .rodata
  .Lcall01033_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01033_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain00800_n01032_α
 jmp xchain00800_n01032_α
xchain00800_n01031_β:
 jmp xchain00800_n01032_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01032_α:
 mov rdi, qword ptr [rip + .Lx01034_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain00800_n01035_α
 xchain00800_n01032_β:
 jmp xchain00800_n01036_α
.Lx01034_0:
 .quad .Lx01034_0_s
.Lx01034_0_s:
 .string "cssize"
 xchain00800_n01035_α:
  .section .rodata
  .Lcall01037_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01037_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain00800_n01036_α
 jmp xchain00800_n01036_α
xchain00800_n01035_β:
 jmp xchain00800_n01036_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01036_α:
 mov rdi, qword ptr [rip + .Lx01038_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00800_n00043_α
 xchain00800_n01036_β:
 jmp xchain00800_n00044_α
.Lx01038_0:
 .quad .Lx01038_0_s
.Lx01038_0_s:
 .string "cscompl"
 xchain00800_n00043_α:
  .section .rodata
  .Lcall01039_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01039_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain00800_n00044_α
 jmp xchain00800_n00044_α
xchain00800_n00043_β:
 jmp xchain00800_n00044_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00044_α:
 mov rdi, qword ptr [rip + .Lx01040_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain00800_n00045_α
 xchain00800_n00044_β:
 jmp xchain00800_n01041_α
.Lx01040_0:
 .quad .Lx01040_0_s
.Lx01040_0_s:
 .string "lcreate"
 xchain00800_n00045_α:
  .section .rodata
  .Lcall00645_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00645_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain00800_n01041_α
 jmp xchain00800_n01041_α
xchain00800_n00045_β:
 jmp xchain00800_n01041_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01041_α:
 mov rdi, qword ptr [rip + .Lx01042_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain00800_n00046_α
 xchain00800_n01041_β:
 jmp xchain00800_n01043_α
.Lx01042_0:
 .quad .Lx01042_0_s
.Lx01042_0_s:
 .string "lconst"
 xchain00800_n00046_α:
  .section .rodata
  .Lcall00647_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00647_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain00800_n01043_α
 jmp xchain00800_n01043_α
xchain00800_n00046_β:
 jmp xchain00800_n01043_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01043_α:
 mov rdi, qword ptr [rip + .Lx01044_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain00800_n01045_α
 xchain00800_n01043_β:
 jmp xchain00800_n01046_α
.Lx01044_0:
 .quad .Lx01044_0_s
.Lx01044_0_s:
 .string "lcopy"
 xchain00800_n01045_α:
  .section .rodata
  .Lcall01047_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01047_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00800_n01046_α
 jmp xchain00800_n01046_α
xchain00800_n01045_β:
 jmp xchain00800_n01046_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01046_α:
 mov rdi, qword ptr [rip + .Lx01048_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain00800_n00047_α
 xchain00800_n01046_β:
 jmp xchain00800_n00048_α
.Lx01048_0:
 .quad .Lx01048_0_s
.Lx01048_0_s:
 .string "lsort"
 xchain00800_n00047_α:
  .section .rodata
  .Lcall01049_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01049_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain00800_n00048_α
 jmp xchain00800_n00048_α
xchain00800_n00047_β:
 jmp xchain00800_n00048_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00048_α:
 mov rdi, qword ptr [rip + .Lx01050_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain00800_n01051_α
 xchain00800_n00048_β:
 jmp xchain00800_n01052_α
.Lx01050_0:
 .quad .Lx01050_0_s
.Lx01050_0_s:
 .string "lsize"
 xchain00800_n01051_α:
  .section .rodata
  .Lcall00649_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00649_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain00800_n01052_α
 jmp xchain00800_n01052_α
xchain00800_n01051_β:
 jmp xchain00800_n01052_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01052_α:
 mov rdi, qword ptr [rip + .Lx01053_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain00800_n01054_α
 xchain00800_n01052_β:
 jmp xchain00800_n01055_α
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "lpick"
 xchain00800_n01054_α:
  .section .rodata
  .Lcall01056_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01056_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain00800_n01055_α
 jmp xchain00800_n01055_α
xchain00800_n01054_β:
 jmp xchain00800_n01055_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01055_α:
 mov rdi, qword ptr [rip + .Lx01057_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain00800_n00049_α
 xchain00800_n01055_β:
 jmp xchain00800_n00050_α
.Lx01057_0:
 .quad .Lx01057_0_s
.Lx01057_0_s:
 .string "lbang"
 xchain00800_n00049_α:
  .section .rodata
  .Lcall00652_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00652_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain00800_n00050_α
 jmp xchain00800_n00050_α
xchain00800_n00049_β:
 jmp xchain00800_n00050_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00050_α:
 mov rdi, qword ptr [rip + .Lx01058_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain00800_n00051_α
 xchain00800_n00050_β:
 jmp xchain00800_n01059_α
.Lx01058_0:
 .quad .Lx01058_0_s
.Lx01058_0_s:
 .string "lsubscr"
 xchain00800_n00051_α:
  .section .rodata
  .Lcall01060_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01060_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain00800_n01059_α
 jmp xchain00800_n01059_α
xchain00800_n00051_β:
 jmp xchain00800_n01059_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01059_α:
 mov rdi, qword ptr [rip + .Lx01061_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain00800_n00052_α
 xchain00800_n01059_β:
 jmp xchain00800_n01062_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "put1get1"
 xchain00800_n00052_α:
  .section .rodata
  .Lcall00654_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00654_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain00800_n01062_α
 jmp xchain00800_n01062_α
xchain00800_n00052_β:
 jmp xchain00800_n01062_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01062_α:
 mov rdi, qword ptr [rip + .Lx01063_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain00800_n01064_α
 xchain00800_n01062_β:
 jmp xchain00800_n01065_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "put2get2"
 xchain00800_n01064_α:
  .section .rodata
  .Lcall01066_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01066_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain00800_n01065_α
 jmp xchain00800_n01065_α
xchain00800_n01064_β:
 jmp xchain00800_n01065_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01065_α:
 mov rdi, qword ptr [rip + .Lx01067_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00800_n00053_α
 xchain00800_n01065_β:
 jmp xchain00800_n00054_α
.Lx01067_0:
 .quad .Lx01067_0_s
.Lx01067_0_s:
 .string "put3get3"
 xchain00800_n00053_α:
  .section .rodata
  .Lcall00656_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00656_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain00800_n00054_α
 jmp xchain00800_n00054_α
xchain00800_n00053_β:
 jmp xchain00800_n00054_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00054_α:
 mov rdi, qword ptr [rip + .Lx01068_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain00800_n01069_α
 xchain00800_n00054_β:
 jmp xchain00800_n01070_α
.Lx01068_0:
 .quad .Lx01068_0_s
.Lx01068_0_s:
 .string "put4get4"
 xchain00800_n01069_α:
  .section .rodata
  .Lcall00658_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00658_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain00800_n01070_α
 jmp xchain00800_n01070_α
xchain00800_n01069_β:
 jmp xchain00800_n01070_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01070_α:
 mov rdi, qword ptr [rip + .Lx01071_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain00800_n01072_α
 xchain00800_n01070_β:
 jmp xchain00800_n01073_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "pushpop"
 xchain00800_n01072_α:
  .section .rodata
  .Lcall00660_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00660_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00800_n01073_α
 jmp xchain00800_n01073_α
xchain00800_n01072_β:
 jmp xchain00800_n01073_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01073_α:
 mov rdi, qword ptr [rip + .Lx01074_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain00800_n00055_α
 xchain00800_n01073_β:
 jmp xchain00800_n00056_α
.Lx01074_0:
 .quad .Lx01074_0_s
.Lx01074_0_s:
 .string "putget12"
 xchain00800_n00055_α:
  .section .rodata
  .Lcall01075_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01075_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain00800_n00056_α
 jmp xchain00800_n00056_α
xchain00800_n00055_β:
 jmp xchain00800_n00056_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00056_α:
 mov rdi, qword ptr [rip + .Lx01076_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain00800_n01077_α
 xchain00800_n00056_β:
 jmp xchain00800_n00096_α
.Lx01076_0:
 .quad .Lx01076_0_s
.Lx01076_0_s:
 .string "pushpop12"
 xchain00800_n01077_α:
  .section .rodata
  .Lcall01078_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01078_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00800_n00096_α
 jmp xchain00800_n00096_α
xchain00800_n01077_β:
 jmp xchain00800_n00096_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00096_α:
 mov rdi, qword ptr [rip + .Lx01079_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00800_n00057_α
 xchain00800_n00096_β:
 jmp xchain00800_n01080_α
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "setcreate"
 xchain00800_n00057_α:
  .section .rodata
  .Lcall01081_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01081_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain00800_n01080_α
 jmp xchain00800_n01080_α
xchain00800_n00057_β:
 jmp xchain00800_n01080_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01080_α:
 mov rdi, qword ptr [rip + .Lx01082_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain00800_n01083_α
 xchain00800_n01080_β:
 jmp xchain00800_n01084_α
.Lx01082_0:
 .quad .Lx01082_0_s
.Lx01082_0_s:
 .string "setcopy"
 xchain00800_n01083_α:
  .section .rodata
  .Lcall00661_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00661_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00800_n01084_α
 jmp xchain00800_n01084_α
xchain00800_n01083_β:
 jmp xchain00800_n01084_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01084_α:
 mov rdi, qword ptr [rip + .Lx01085_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00800_n00058_α
 xchain00800_n01084_β:
 jmp xchain00800_n00059_α
.Lx01085_0:
 .quad .Lx01085_0_s
.Lx01085_0_s:
 .string "setmember"
 xchain00800_n00058_α:
  .section .rodata
  .Lcall01086_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01086_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain00800_n00059_α
 jmp xchain00800_n00059_α
xchain00800_n00058_β:
 jmp xchain00800_n00059_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00059_α:
 mov rdi, qword ptr [rip + .Lx01087_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain00800_n01088_α
 xchain00800_n00059_β:
 jmp xchain00800_n01089_α
.Lx01087_0:
 .quad .Lx01087_0_s
.Lx01087_0_s:
 .string "setinsert"
 xchain00800_n01088_α:
  .section .rodata
  .Lcall00662_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00662_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00800_n01089_α
 jmp xchain00800_n01089_α
xchain00800_n01088_β:
 jmp xchain00800_n01089_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01089_α:
 mov rdi, qword ptr [rip + .Lx01090_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00800_n01091_α
 xchain00800_n01089_β:
 jmp xchain00800_n00103_α
.Lx01090_0:
 .quad .Lx01090_0_s
.Lx01090_0_s:
 .string "setinsdel"
 xchain00800_n01091_α:
  .section .rodata
  .Lcall01092_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01092_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain00800_n00103_α
 jmp xchain00800_n00103_α
xchain00800_n01091_β:
 jmp xchain00800_n00103_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00103_α:
 mov rdi, qword ptr [rip + .Lx01093_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00800_n00060_α
 xchain00800_n00103_β:
 jmp xchain00800_n00061_α
.Lx01093_0:
 .quad .Lx01093_0_s
.Lx01093_0_s:
 .string "setbang"
 xchain00800_n00060_α:
  .section .rodata
  .Lcall01094_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01094_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00800_n00061_α
 jmp xchain00800_n00061_α
xchain00800_n00060_β:
 jmp xchain00800_n00061_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00061_α:
 mov rdi, qword ptr [rip + .Lx01095_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00800_n01096_α
 xchain00800_n00061_β:
 jmp xchain00800_n01097_α
.Lx01095_0:
 .quad .Lx01095_0_s
.Lx01095_0_s:
 .string "setpick"
 xchain00800_n01096_α:
  .section .rodata
  .Lcall00664_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00664_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00800_n01097_α
 jmp xchain00800_n01097_α
xchain00800_n01096_β:
 jmp xchain00800_n01097_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01097_α:
 mov rdi, qword ptr [rip + .Lx01098_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00800_n00062_α
 xchain00800_n01097_β:
 jmp xchain00800_n01099_α
.Lx01098_0:
 .quad .Lx01098_0_s
.Lx01098_0_s:
 .string "tblcreate"
 xchain00800_n00062_α:
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
 je xchain00800_n01099_α
 jmp xchain00800_n01099_α
xchain00800_n00062_β:
 jmp xchain00800_n01099_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01099_α:
 mov rdi, qword ptr [rip + .Lx01101_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00800_n01102_α
 xchain00800_n01099_β:
 jmp xchain00800_n01103_α
.Lx01101_0:
 .quad .Lx01101_0_s
.Lx01101_0_s:
 .string "tblsub"
 xchain00800_n01102_α:
  .section .rodata
  .Lcall01104_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01104_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00800_n01103_α
 jmp xchain00800_n01103_α
xchain00800_n01102_β:
 jmp xchain00800_n01103_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01103_α:
 mov rdi, qword ptr [rip + .Lx01105_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00800_n00063_α
 xchain00800_n01103_β:
 jmp xchain00800_n00064_α
.Lx01105_0:
 .quad .Lx01105_0_s
.Lx01105_0_s:
 .string "tblasgn"
 xchain00800_n00063_α:
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
 je xchain00800_n00064_α
 jmp xchain00800_n00064_α
xchain00800_n00063_β:
 jmp xchain00800_n00064_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00064_α:
 mov rdi, qword ptr [rip + .Lx01107_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00800_n00110_α
 xchain00800_n00064_β:
 jmp xchain00800_n01108_α
.Lx01107_0:
 .quad .Lx01107_0_s
.Lx01107_0_s:
 .string "recconstr"
 xchain00800_n00110_α:
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
 je xchain00800_n01108_α
 jmp xchain00800_n01108_α
xchain00800_n00110_β:
 jmp xchain00800_n01108_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01108_α:
 mov rdi, qword ptr [rip + .Lx01110_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00800_n01111_α
 xchain00800_n01108_β:
 jmp xchain00800_n01112_α
.Lx01110_0:
 .quad .Lx01110_0_s
.Lx01110_0_s:
 .string "reccopy"
 xchain00800_n01111_α:
  .section .rodata
  .Lcall01113_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01113_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00800_n01112_α
 jmp xchain00800_n01112_α
xchain00800_n01111_β:
 jmp xchain00800_n01112_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01112_α:
 mov rdi, qword ptr [rip + .Lx01114_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00800_n00065_α
 xchain00800_n01112_β:
 jmp xchain00800_n00066_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "recfield"
 xchain00800_n00065_α:
  .section .rodata
  .Lcall00667_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00667_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00800_n00066_α
 jmp xchain00800_n00066_α
xchain00800_n00065_β:
 jmp xchain00800_n00066_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00066_α:
 mov rdi, qword ptr [rip + .Lx01115_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00800_n00067_α
 xchain00800_n00066_β:
 jmp xchain00800_n01116_α
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "bigfield"
 xchain00800_n00067_α:
  .section .rodata
  .Lcall01117_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01117_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain00800_n01116_α
 jmp xchain00800_n01116_α
xchain00800_n00067_β:
 jmp xchain00800_n01116_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01116_α:
 mov rdi, qword ptr [rip + .Lx01118_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00800_n01119_α
 xchain00800_n01116_β:
 jmp xchain00800_n00068_α
.Lx01118_0:
 .quad .Lx01118_0_s
.Lx01118_0_s:
 .string "readz"
 xchain00800_n01119_α:
  .section .rodata
  .Lcall01120_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01120_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00800_n00068_α
 jmp xchain00800_n00068_α
xchain00800_n01119_β:
 jmp xchain00800_n00068_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00068_α:
 mov rdi, qword ptr [rip + .Lx01121_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00800_n01122_α
 xchain00800_n00068_β:
 jmp xchain00800_n01123_α
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "writecon"
 xchain00800_n01122_α:
  .section .rodata
  .Lcall01124_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01124_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00800_n01123_α
 jmp xchain00800_n01123_α
xchain00800_n01122_β:
 jmp xchain00800_n01123_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01123_α:
 mov rdi, qword ptr [rip + .Lx01125_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00800_n01126_α
 xchain00800_n01123_β:
 jmp xchain00800_n00069_α
.Lx01125_0:
 .quad .Lx01125_0_s
.Lx01125_0_s:
 .string "writestr"
 xchain00800_n01126_α:
  .section .rodata
  .Lcall01127_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01127_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain00800_n00069_α
 jmp xchain00800_n00069_α
xchain00800_n01126_β:
 jmp xchain00800_n00069_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00069_α:
 mov rdi, qword ptr [rip + .Lx01128_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00800_n00070_α
 xchain00800_n00069_β:
 jmp xchain00800_n01129_α
.Lx01128_0:
 .quad .Lx01128_0_s
.Lx01128_0_s:
 .string "cxcreate"
 xchain00800_n00070_α:
  .section .rodata
  .Lcall00670_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00670_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00800_n01129_α
 jmp xchain00800_n01129_α
xchain00800_n00070_β:
 jmp xchain00800_n01129_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01129_α:
 mov rdi, qword ptr [rip + .Lx01130_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00800_n01131_α
 xchain00800_n01129_β:
 jmp xchain00800_n01132_α
.Lx01130_0:
 .quad .Lx01130_0_s
.Lx01130_0_s:
 .string "cxget"
 xchain00800_n01131_α:
  .section .rodata
  .Lcall01133_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01133_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain00800_n01132_α
 jmp xchain00800_n01132_α
xchain00800_n01131_β:
 jmp xchain00800_n01132_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01132_α:
 mov rdi, qword ptr [rip + .Lx01134_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00800_n01135_α
 xchain00800_n01132_β:
 jmp xchain00800_n00071_α
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "nothing"
 xchain00800_n01135_α:
  .section .rodata
  .Lcall01136_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01136_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00800_n00071_α
 jmp xchain00800_n00071_α
xchain00800_n01135_β:
 jmp xchain00800_n00071_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n00071_α:
 mov rdi, qword ptr [rip + .Lx01137_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00800_n01138_α
 xchain00800_n00071_β:
 jmp xchain00800_n01139_α
.Lx01137_0:
 .quad .Lx01137_0_s
.Lx01137_0_s:
 .string "nothing"
 xchain00800_n01138_α:
  .section .rodata
  .Lcall01140_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01140_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00800_n01139_α
 jmp xchain00800_n01139_α
xchain00800_n01138_β:
 jmp xchain00800_n01139_α
# IR_PROC_VALUE first-class procedure value
 xchain00800_n01139_α:
 mov rdi, qword ptr [rip + .Lx01141_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00800_n00072_α
 xchain00800_n01139_β:
 jmp xchain00800_n01142_α
.Lx01141_0:
 .quad .Lx01141_0_s
.Lx01141_0_s:
 .string "nothing"
 xchain00800_n00072_α:
  .section .rodata
  .Lcall01143_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01143_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00800_n01142_α
 jmp xchain00800_n01142_α
xchain00800_n00072_β:
 jmp xchain00800_n01142_α
# IR_KEYWORD_read
 xchain00800_n01142_α:
 mov rdi, qword ptr [rip + .Lx01144_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00800_n01145_α
 xchain00800_n01142_β:
 jmp main_ω
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "&errout"
 xchain00800_n01145_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2899: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2899]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain00800_n01145_β:
 jmp main_ω
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
mov rsp, rbp
pop rbp
pop r12
ret
