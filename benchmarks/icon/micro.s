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
proc_report_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
xchain0_n1_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb2_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 lea rdx, [r12 + 448]
 mov ecx, 0
 call rt_call_value@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_KEYWORD_read
bb4_α:
 mov rdi, qword ptr [rip + .Lx6_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "&errout"
xchain0_n4_α:
# IR_LIT_STRING
bb5_α:
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
bb6_α:
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
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n10_α
xchain0_n7_α:
# IR_VAR gva
bb8_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n10_α
xchain0_n8_α:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "measure"
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
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
# IR_VAR gva
bb10_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_RETURN
bb11_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_report_γ
xchain0_n11_α:
bb12_α:
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
 je xchain0_n10_α
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx16_3:
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n10_α
xchain0_n12_α:
# IR_LIT_INTEGER
bb13_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n10_α
.Lx17_0:
 .quad 10
xchain0_n13_α:
bb14_α:
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
 je xchain0_n10_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n10_α
xchain0_n14_α:
# IR_LIT_STRING
bb15_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n10_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "  "
xchain0_n15_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n10_α
xchain0_n16_α:
bb17_α:
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
 je xchain0_n10_α
 jmp xchain0_n10_α
 xchain0_n16_β:
 jmp xchain0_n10_α
proc_report_β:
jmp proc_report_ω
proc_report_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_measure_α_body:
xchain25_n0_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain25_n1_α
 xchain25_n0_β:
 jmp xchain25_n3_α
xchain25_n1_α:
# IR_LIT_INTEGER
bb19_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain25_n2_α
 xchain25_n1_β:
 jmp xchain25_n3_α
.Lx28_0:
 .quad 1
xchain25_n2_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb20_α:
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
 je xchain25_n3_α
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain25_n3_α
 xchain25_n2_β:
 jmp xchain25_n3_α
xchain25_n3_α:
# IR_LIT_INTEGER
bb21_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain25_n4_α
 xchain25_n3_β:
 jmp xchain25_n5_α
.Lx31_0:
 .quad 1
xchain25_n4_α:
bb22_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain25_n5_α
 xchain25_n4_β:
 jmp xchain25_n5_α
xchain25_n5_α:
# IR_KEYWORD_read
bb23_α:
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
bb24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain25_n8_α
 xchain25_n6_β:
 jmp xchain25_n8_α
xchain25_n7_α:
 jmp xchain25_n8_α
xchain25_n7_β:
 jmp xchain25_n8_α
xchain25_n8_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1256], rax
 jmp xchain25_n9_α
 xchain25_n8_β:
 jmp xchain25_n12_α
xchain25_n9_α:
# IR_LIT_INTEGER
bb27_α:
 mov qword ptr [r12 + 1264], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain25_n10_α
 xchain25_n9_β:
 jmp xchain25_n12_α
.Lx38_0:
 .quad 10
xchain25_n10_α:
bb28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 100
 je .Lx39_0
 mov eax, dword ptr [r12 + 1488]
 cmp eax, 6
 jne .Lx39_2
 mov eax, dword ptr [r12 + 1264]
 cmp eax, 6
 jne .Lx39_2
.Lx39_1:
 mov rax, qword ptr [r12 + 1496]
 mov rcx, qword ptr [r12 + 1272]
 imul rax, rcx
 mov qword ptr [r12 + 1232], 6
 mov qword ptr [r12 + 1240], rax
 jmp xchain25_n11_α
.Lx39_0:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 2
 lea r9, [r12 + 1232]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx39_3
.Lx39_2:
 mov rdi, qword ptr [r12 + 1488]
 mov rsi, qword ptr [r12 + 1496]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n12_α
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
.Lx39_3:
 jmp xchain25_n11_α
 xchain25_n10_β:
 jmp xchain25_n12_α
xchain25_n11_α:
bb29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain25_n12_α
 xchain25_n11_β:
 jmp xchain25_n12_α
xchain25_n12_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1208], rax
 jmp xchain25_n13_α
 xchain25_n12_β:
 jmp xchain25_n14_α
xchain25_n13_α:
bb31_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain25_n14_α
 xchain25_n13_β:
 jmp xchain25_n14_α
xchain25_n14_α:
# IR_VAR
bb32_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1112], rax
 jmp xchain25_n15_α
 xchain25_n14_β:
 jmp xchain25_n17_α
xchain25_n15_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1176], rax
 jmp xchain25_n16_α
 xchain25_n15_β:
 jmp xchain25_n17_α
xchain25_n16_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb34_α:
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
 je xchain25_n17_α
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain25_n17_α
 xchain25_n16_β:
 jmp xchain25_n17_α
xchain25_n17_α:
# IR_KEYWORD_read
bb35_α:
 mov rdi, qword ptr [rip + .Lx50_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain25_n18_α
 xchain25_n17_β:
 jmp xchain25_n19_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "&time"
xchain25_n18_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain25_n19_α
 xchain25_n18_β:
 jmp xchain25_n19_α
xchain25_n19_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1032], rax
 jmp xchain25_n20_α
 xchain25_n19_β:
 jmp xchain25_n23_α
xchain25_n20_α:
# IR_VAR
bb38_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1048], rax
 jmp xchain25_n21_α
 xchain25_n20_β:
 jmp xchain25_n23_α
xchain25_n21_α:
bb39_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 6
 jne .Lx56_2
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx56_2
.Lx56_1:
 mov rax, qword ptr [r12 + 1512]
 mov rcx, qword ptr [r12 + 1464]
 sub rax, rcx
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain25_n22_α
.Lx56_0:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 1
 lea r9, [r12 + 1008]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx56_3
.Lx56_2:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n23_α
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
.Lx56_3:
 jmp xchain25_n22_α
 xchain25_n21_β:
 jmp xchain25_n23_α
xchain25_n22_α:
bb40_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+992]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn58: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain25_n23_α
 jmp xchain25_n24_α
 xchain25_n22_β:
 jmp xchain25_n23_α
xchain25_n23_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 904], rax
 jmp xchain25_n25_α
 xchain25_n23_β:
 jmp xchain25_n8_α
xchain25_n24_α:
bb42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain25_n23_α
 xchain25_n24_β:
 jmp xchain25_n23_α
xchain25_n25_α:
# IR_VAR gva
bb43_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain25_n26_α
 xchain25_n25_β:
 jmp xchain25_n8_α
xchain25_n26_α:
# IR_LIT_INTEGER
bb44_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain25_n27_α
 xchain25_n26_β:
 jmp xchain25_n8_α
.Lx63_0:
 .quad 20
xchain25_n27_α:
bb45_α:
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
bb46_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx65_0
 mov eax, dword ptr [r12 + 912]
 cmp eax, 100
 je .Lx65_0
.Lx65_1:
 mov rax, qword ptr [r12 + 1480]
 mov rcx, qword ptr [r12 + 920]
 cmp rax, rcx
 jl xchain25_n8_α
 mov rcx, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rcx
 mov rcx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rcx
 jmp xchain25_n30_α
.Lx65_0:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
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
 xchain25_n28_β:
 jmp xchain25_n8_α
xchain25_n29_α:
 jmp xchain25_n30_α
xchain25_n29_β:
 jmp xchain25_n30_α
xchain25_n30_α:
# IR_LIT_REAL
bb48_α:
 mov qword ptr [r12 + 752], 7
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain25_n31_α
 xchain25_n30_β:
 jmp xchain25_n34_α
.Lx67_0:
 .quad 4607632778762754458
xchain25_n31_α:
# IR_VAR
bb49_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 776], rax
 jmp xchain25_n32_α
 xchain25_n31_β:
 jmp xchain25_n34_α
xchain25_n32_α:
bb50_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n34_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain25_n33_α
 xchain25_n32_β:
 jmp xchain25_n34_α
xchain25_n33_α:
# IR_VAR gva
bb51_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain25_n35_α
 xchain25_n33_β:
 jmp xchain25_n34_α
xchain25_n34_α:
bb52_α:
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
 je xchain25_n36_α
 jmp xchain25_n36_α
 xchain25_n34_β:
 jmp xchain25_n36_α
xchain25_n35_α:
bb53_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n34_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain25_n37_α
 xchain25_n35_β:
 jmp xchain25_n34_α
xchain25_n36_α:
# IR_KEYWORD_read
bb54_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain25_n38_α
 xchain25_n36_β:
 jmp xchain25_n40_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "&time"
xchain25_n37_α:
# IR_VAR
bb55_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 840], rax
 jmp xchain25_n39_α
 xchain25_n37_β:
 jmp xchain25_n34_α
xchain25_n38_α:
bb56_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain25_n40_α
 xchain25_n38_β:
 jmp xchain25_n40_α
xchain25_n39_α:
bb57_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+816]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn80: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain25_n34_α
 jmp xchain25_n41_α
 xchain25_n39_β:
 jmp xchain25_n34_α
xchain25_n40_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 552], rax
 jmp xchain25_n42_α
 xchain25_n40_β:
 jmp xchain25_n40_α
xchain25_n41_α:
bb59_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n34_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain25_n43_α
 xchain25_n41_β:
 jmp xchain25_n34_α
xchain25_n42_α:
# IR_KEYWORD_read
bb60_α:
 mov rdi, qword ptr [rip + .Lx84_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain25_n44_α
 xchain25_n42_β:
 jmp xchain25_n40_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "&time"
xchain25_n43_α:
bb61_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+688]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn86: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain25_n34_α
 jmp xchain25_n45_α
 xchain25_n43_β:
 jmp xchain25_n34_α
xchain25_n44_α:
bb62_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx87_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx87_0
.Lx87_1:
 mov rax, qword ptr [r12 + 1464]
 mov rcx, qword ptr [r12 + 568]
 cmp rax, rcx
 je xchain25_n40_α
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rcx
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rcx
 jmp xchain25_n46_α
.Lx87_0:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov r8d, 10
 lea r9, [r12 + 528]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx87_1
 cmp eax, 1
 je xchain25_n40_α
 jmp xchain25_n46_α
 xchain25_n44_β:
 jmp xchain25_n40_α
xchain25_n45_α:
bb63_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain25_n34_α
 xchain25_n45_β:
 jmp xchain25_n34_α
xchain25_n46_α:
bb64_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain25_n47_α
 xchain25_n46_β:
 jmp xchain25_n40_α
xchain25_n47_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain25_n48_α
 xchain25_n47_β:
 jmp xchain25_n50_α
xchain25_n48_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 504], rax
 jmp xchain25_n49_α
 xchain25_n48_β:
 jmp xchain25_n50_α
xchain25_n49_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb67_α:
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
 je xchain25_n50_α
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain25_n50_α
 xchain25_n49_β:
 jmp xchain25_n50_α
xchain25_n50_α:
# IR_KEYWORD_read
bb68_α:
 mov rdi, qword ptr [rip + .Lx96_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain25_n51_α
 xchain25_n50_β:
 jmp xchain25_n52_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "&time"
xchain25_n51_α:
bb69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain25_n52_α
 xchain25_n51_β:
 jmp xchain25_n52_α
xchain25_n52_α:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 360], rax
 jmp xchain25_n53_α
 xchain25_n52_β:
 jmp xchain25_n56_α
xchain25_n53_α:
# IR_VAR
bb71_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 376], rax
 jmp xchain25_n54_α
 xchain25_n53_β:
 jmp xchain25_n56_α
xchain25_n54_α:
bb72_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 6
 jne .Lx00001_2
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx00001_2
.Lx00001_1:
 mov rax, qword ptr [r12 + 1512]
 mov rcx, qword ptr [r12 + 1464]
 sub rax, rcx
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain25_n55_α
.Lx00001_0:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 1
 lea r9, [r12 + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00001_3
.Lx00001_2:
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1464]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n56_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
.Lx00001_3:
 jmp xchain25_n55_α
 xchain25_n54_β:
 jmp xchain25_n56_α
xchain25_n55_α:
bb73_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+320]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn104: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain25_n56_α
 jmp xchain25_n57_α
 xchain25_n55_β:
 jmp xchain25_n56_α
xchain25_n56_α:
# IR_VAR
bb74_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 232], rax
 jmp xchain25_n58_α
 xchain25_n56_β:
 jmp xchain25_n61_α
xchain25_n57_α:
bb75_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain25_n56_α
 xchain25_n57_β:
 jmp xchain25_n56_α
xchain25_n58_α:
# IR_VAR
bb76_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 280], rax
 jmp xchain25_n59_α
 xchain25_n58_β:
 jmp xchain25_n61_α
xchain25_n59_α:
bb77_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn111: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain25_n61_α
 jmp xchain25_n60_α
 xchain25_n59_β:
 jmp xchain25_n61_α
xchain25_n60_α:
bb78_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [r12 + 1472]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [r12 + 1480]
 mov rcx, qword ptr [r12 + 248]
 cqo
 idiv rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain25_n62_α
.Lx00002_0:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 3
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00002_3
.Lx00002_2:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n61_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
.Lx00002_3:
 jmp xchain25_n62_α
 xchain25_n60_β:
 jmp xchain25_n61_α
xchain25_n61_α:
# IR_VAR
bb79_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 152], rax
 jmp xchain25_n63_α
 xchain25_n61_β:
 jmp xchain25_n66_α
xchain25_n62_α:
bb80_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain25_n61_α
 xchain25_n62_β:
 jmp xchain25_n61_α
xchain25_n63_α:
# IR_LIT_INTEGER
bb81_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain25_n64_α
 xchain25_n63_β:
 jmp xchain25_n66_α
.Lx00003_0:
 .quad 1000000
xchain25_n64_α:
bb82_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 6
 jne .Lx00004_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00004_2
.Lx00004_1:
 mov rax, qword ptr [r12 + 1464]
 mov rcx, qword ptr [r12 + 168]
 imul rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain25_n65_α
.Lx00004_0:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 2
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00004_3
.Lx00004_2:
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n66_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
.Lx00004_3:
 jmp xchain25_n65_α
 xchain25_n64_β:
 jmp xchain25_n66_α
xchain25_n65_α:
# IR_LIT_REAL
bb83_α:
 mov qword ptr [r12 + 176], 7
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain25_n67_α
 xchain25_n65_β:
 jmp xchain25_n66_α
.Lx00005_0:
 .quad 4602678819172646912
xchain25_n66_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 56], rax
 jmp xchain25_n68_α
 xchain25_n66_β:
 jmp proc_measure_ω
xchain25_n67_α:
bb85_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain25_n66_α
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain25_n69_α
 xchain25_n67_β:
 jmp xchain25_n66_α
xchain25_n68_α:
# IR_RETURN
bb86_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_measure_γ
xchain25_n69_α:
bb87_α:
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
 je xchain25_n66_α
 jmp xchain25_n70_α
 xchain25_n69_β:
 jmp xchain25_n66_α
xchain25_n70_α:
bb88_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain25_n66_α
 xchain25_n70_β:
 jmp xchain25_n66_α
proc_measure_β:
jmp proc_measure_ω
proc_measure_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_nothing_α_body:
xchain00006_n0_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00006_n1_α
 xchain00006_n0_β:
 jmp xchain00006_n3_α
xchain00006_n1_α:
# IR_UNOP
bb90_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00006_n3_α
 cmp eax, 0
 jne xchain00006_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00006_n2_α
 xchain00006_n1_β:
 jmp xchain00006_n3_α
xchain00006_n2_α:
# IR_LIT_STRING
bb91_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00006_n4_α
 xchain00006_n2_β:
 jmp proc_nothing_ω
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "nothing"
xchain00006_n3_α:
# IR_LIT_INTEGER
bb92_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00006_n5_α
 xchain00006_n3_β:
 jmp proc_nothing_ω
.Lx00008_0:
 .quad 1
xchain00006_n4_α:
# IR_RETURN
bb93_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nothing_γ
xchain00006_n5_α:
# IR_VAR
bb94_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00006_n6_α
 xchain00006_n5_β:
 jmp proc_nothing_ω
xchain00006_n6_α:
# IR_TO
bb95_α:
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
xchain00006_n7_α:
# IR_LIT_INTEGER
bb96_α:
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
proc_uplus_α_body:
xchain00011_n0_α:
# IR_VAR
bb97_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00011_n1_α
 xchain00011_n0_β:
 jmp xchain00011_n3_α
xchain00011_n1_α:
# IR_UNOP
bb98_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00011_n3_α
 cmp eax, 0
 jne xchain00011_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00011_n2_α
 xchain00011_n1_β:
 jmp xchain00011_n3_α
xchain00011_n2_α:
# IR_LIT_STRING
bb99_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00011_n4_α
 xchain00011_n2_β:
 jmp proc_uplus_ω
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "+407"
xchain00011_n3_α:
# IR_LIT_INTEGER
bb00013_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00011_n5_α
 xchain00011_n3_β:
 jmp proc_uplus_ω
.Lx00014_0:
 .quad 1
xchain00011_n4_α:
# IR_RETURN
bb00015_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uplus_γ
xchain00011_n5_α:
# IR_VAR
bb00001_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00011_n6_α
 xchain00011_n5_β:
 jmp proc_uplus_ω
xchain00011_n6_α:
# IR_TO
bb00016_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00017_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00011_n7_α
 xchain00011_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00017_0
xchain00011_n7_α:
# IR_LIT_INTEGER
bb00018_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00011_n6_β
 xchain00011_n7_β:
 jmp xchain00011_n6_β
.Lx00019_0:
 .quad 407
proc_uplus_β:
jmp proc_uplus_ω
proc_uplus_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_uplusr_α_body:
xchain00020_n0_α:
# IR_VAR
bb00021_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00020_n1_α
 xchain00020_n0_β:
 jmp xchain00020_n3_α
xchain00020_n1_α:
# IR_UNOP
bb00022_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00020_n3_α
 cmp eax, 0
 jne xchain00020_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00020_n2_α
 xchain00020_n1_β:
 jmp xchain00020_n3_α
xchain00020_n2_α:
# IR_LIT_STRING
bb00023_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00020_n4_α
 xchain00020_n2_β:
 jmp proc_uplusr_ω
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "+7.25"
xchain00020_n3_α:
# IR_LIT_INTEGER
bb00025_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00020_n5_α
 xchain00020_n3_β:
 jmp proc_uplusr_ω
.Lx00026_0:
 .quad 1
xchain00020_n4_α:
# IR_RETURN
bb00027_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uplusr_γ
xchain00020_n5_α:
# IR_VAR
bb00028_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00020_n6_α
 xchain00020_n5_β:
 jmp proc_uplusr_ω
xchain00020_n6_α:
# IR_TO
bb00029_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00030_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00020_n7_α
 xchain00020_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00030_0
xchain00020_n7_α:
# IR_LIT_REAL
bb00002_α:
 mov qword ptr [r12 + 96], 7
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00020_n6_β
 xchain00020_n7_β:
 jmp xchain00020_n6_β
.Lx00031_0:
 .quad 4619848792751996928
proc_uplusr_β:
jmp proc_uplusr_ω
proc_uplusr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_absf_α_body:
xchain00032_n0_α:
# IR_VAR
bb00033_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00032_n1_α
 xchain00032_n0_β:
 jmp xchain00032_n3_α
xchain00032_n1_α:
# IR_UNOP
bb00034_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00032_n3_α
 cmp eax, 0
 jne xchain00032_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00032_n2_α
 xchain00032_n1_β:
 jmp xchain00032_n3_α
xchain00032_n2_α:
# IR_LIT_STRING
bb00035_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00032_n4_α
 xchain00032_n2_β:
 jmp proc_absf_ω
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "abs(-3)"
xchain00032_n3_α:
# IR_LIT_INTEGER
bb00003_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00032_n5_α
 xchain00032_n3_β:
 jmp proc_absf_ω
.Lx00037_0:
 .quad 1
xchain00032_n4_α:
# IR_RETURN
bb00004_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_absf_γ
xchain00032_n5_α:
# IR_VAR
bb00005_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00032_n6_α
 xchain00032_n5_β:
 jmp proc_absf_ω
xchain00032_n6_α:
# IR_TO
bb00038_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00039_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00032_n7_α
 xchain00032_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00039_0
xchain00032_n7_α:
# IR_LIT_INTEGER
bb00040_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00032_n8_α
 xchain00032_n7_β:
 jmp xchain00032_n6_β
.Lx00041_0:
 .quad 18446744073709551613
xchain00032_n8_α:
bb00042_α:
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
 je xchain00032_n6_β
 jmp xchain00032_n6_β
 xchain00032_n8_β:
 jmp xchain00032_n6_β
proc_absf_β:
jmp proc_absf_ω
proc_absf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_intadd_α_body:
xchain00043_n0_α:
# IR_VAR
bb00044_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00043_n1_α
 xchain00043_n0_β:
 jmp xchain00043_n3_α
xchain00043_n1_α:
# IR_UNOP
bb00045_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00043_n3_α
 cmp eax, 0
 jne xchain00043_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00043_n2_α
 xchain00043_n1_β:
 jmp xchain00043_n3_α
xchain00043_n2_α:
# IR_LIT_STRING
bb00046_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00043_n4_α
 xchain00043_n2_β:
 jmp proc_intadd_ω
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "4 + 7"
xchain00043_n3_α:
# IR_LIT_INTEGER
bb00048_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00043_n5_α
 xchain00043_n3_β:
 jmp proc_intadd_ω
.Lx00049_0:
 .quad 1
xchain00043_n4_α:
# IR_RETURN
bb00006_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intadd_γ
xchain00043_n5_α:
# IR_VAR
bb00050_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00043_n6_α
 xchain00043_n5_β:
 jmp proc_intadd_ω
xchain00043_n6_α:
# IR_TO
bb00051_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00052_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00043_n7_α
 xchain00043_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00052_0
xchain00043_n7_α:
# IR_LIT_INTEGER
bb00053_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00043_n8_α
 xchain00043_n7_β:
 jmp xchain00043_n6_β
.Lx00054_0:
 .quad 4
xchain00043_n8_α:
# IR_LIT_INTEGER
bb00007_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00043_n9_α
 xchain00043_n8_β:
 jmp xchain00043_n6_β
.Lx00055_0:
 .quad 7
xchain00043_n9_α:
bb00008_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00056_0
 mov eax, dword ptr [r12 + 128]
 cmp eax, 100
 je .Lx00056_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00056_2
 mov eax, dword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx00056_2
.Lx00056_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 add rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00043_n6_β
.Lx00056_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 0
 lea r9, [r12 + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00056_3
.Lx00056_2:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00043_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
.Lx00056_3:
 jmp xchain00043_n6_β
 xchain00043_n9_β:
 jmp xchain00043_n6_β
proc_intadd_β:
jmp proc_intadd_ω
proc_intadd_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_intcmp_α_body:
xchain00057_n0_α:
# IR_VAR
bb00058_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00057_n1_α
 xchain00057_n0_β:
 jmp xchain00057_n3_α
xchain00057_n1_α:
# IR_UNOP
bb00059_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00057_n3_α
 cmp eax, 0
 jne xchain00057_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00057_n2_α
 xchain00057_n1_β:
 jmp xchain00057_n3_α
xchain00057_n2_α:
# IR_LIT_STRING
bb00060_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00057_n4_α
 xchain00057_n2_β:
 jmp proc_intcmp_ω
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "4 < 7"
xchain00057_n3_α:
# IR_LIT_INTEGER
bb00062_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00057_n5_α
 xchain00057_n3_β:
 jmp proc_intcmp_ω
.Lx00063_0:
 .quad 1
xchain00057_n4_α:
# IR_RETURN
bb00009_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcmp_γ
xchain00057_n5_α:
# IR_VAR
bb00010_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00057_n6_α
 xchain00057_n5_β:
 jmp proc_intcmp_ω
xchain00057_n6_α:
# IR_TO
bb00011_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00064_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00057_n7_α
 xchain00057_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00064_0
xchain00057_n7_α:
# IR_LIT_INTEGER
bb00065_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00057_n8_α
 xchain00057_n7_β:
 jmp xchain00057_n6_β
.Lx00066_0:
 .quad 4
xchain00057_n8_α:
# IR_LIT_INTEGER
bb00067_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00057_n9_α
 xchain00057_n8_β:
 jmp xchain00057_n6_β
.Lx00068_0:
 .quad 7
xchain00057_n9_α:
bb00069_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00070_0
 mov eax, dword ptr [r12 + 128]
 cmp eax, 100
 je .Lx00070_0
.Lx00070_1:
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 cmp rax, rcx
 jge xchain00057_n6_β
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rcx
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rcx
 jmp xchain00057_n6_β
.Lx00070_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 5
 lea r9, [r12 + 96]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00070_1
 cmp eax, 1
 je xchain00057_n6_β
 jmp xchain00057_n6_β
 xchain00057_n9_β:
 jmp xchain00057_n6_β
proc_intcmp_β:
jmp proc_intcmp_ω
proc_intcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_intpow_α_body:
xchain00071_n0_α:
# IR_VAR
bb00012_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00071_n1_α
 xchain00071_n0_β:
 jmp xchain00071_n3_α
xchain00071_n1_α:
# IR_UNOP
bb00014_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00071_n3_α
 cmp eax, 0
 jne xchain00071_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00071_n2_α
 xchain00071_n1_β:
 jmp xchain00071_n3_α
xchain00071_n2_α:
# IR_LIT_STRING
bb00072_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00071_n4_α
 xchain00071_n2_β:
 jmp proc_intpow_ω
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "4 ^ 7"
xchain00071_n3_α:
# IR_LIT_INTEGER
bb00074_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00071_n5_α
 xchain00071_n3_β:
 jmp proc_intpow_ω
.Lx00075_0:
 .quad 1
xchain00071_n4_α:
# IR_RETURN
bb00076_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intpow_γ
xchain00071_n5_α:
# IR_VAR
bb00077_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00071_n6_α
 xchain00071_n5_β:
 jmp proc_intpow_ω
xchain00071_n6_α:
# IR_TO
bb00017_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00078_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00071_n7_α
 xchain00071_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00078_0
xchain00071_n7_α:
# IR_LIT_INTEGER
bb00019_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00071_n8_α
 xchain00071_n7_β:
 jmp xchain00071_n6_β
.Lx00079_0:
 .quad 4
xchain00071_n8_α:
# IR_LIT_INTEGER
bb00020_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00071_n9_α
 xchain00071_n8_β:
 jmp xchain00071_n6_β
.Lx00080_0:
 .quad 7
xchain00071_n9_α:
bb00081_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00071_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00071_n6_β
 xchain00071_n9_β:
 jmp xchain00071_n6_β
proc_intpow_β:
jmp proc_intpow_ω
proc_intpow_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_realcmp_α_body:
xchain00082_n0_α:
# IR_VAR
bb00083_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00082_n1_α
 xchain00082_n0_β:
 jmp xchain00082_n3_α
xchain00082_n1_α:
# IR_UNOP
bb00084_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00082_n3_α
 cmp eax, 0
 jne xchain00082_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00082_n2_α
 xchain00082_n1_β:
 jmp xchain00082_n3_α
xchain00082_n2_α:
# IR_LIT_STRING
bb00024_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00082_n4_α
 xchain00082_n2_β:
 jmp proc_realcmp_ω
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "1.6 < 2.7"
xchain00082_n3_α:
# IR_LIT_INTEGER
bb00026_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00082_n5_α
 xchain00082_n3_β:
 jmp proc_realcmp_ω
.Lx00086_0:
 .quad 1
xchain00082_n4_α:
# IR_RETURN
bb00087_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcmp_γ
xchain00082_n5_α:
# IR_VAR
bb00088_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00082_n6_α
 xchain00082_n5_β:
 jmp proc_realcmp_ω
xchain00082_n6_α:
# IR_TO
bb00089_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00090_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00082_n7_α
 xchain00082_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00090_0
xchain00082_n7_α:
# IR_LIT_REAL
bb00091_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00082_n8_α
 xchain00082_n7_β:
 jmp xchain00082_n6_β
.Lx00092_0:
 .quad 4609884578576439706
xchain00082_n8_α:
# IR_LIT_REAL
bb00030_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00082_n9_α
 xchain00082_n8_β:
 jmp xchain00082_n6_β
.Lx00093_0:
 .quad 4613262278296967578
xchain00082_n9_α:
bb00031_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00082_n6_β
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 jmp xchain00082_n6_β
 xchain00082_n9_β:
 jmp xchain00082_n6_β
proc_realcmp_β:
jmp proc_realcmp_ω
proc_realcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_cosf_α_body:
xchain00094_n0_α:
# IR_VAR
bb00032_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00094_n1_α
 xchain00094_n0_β:
 jmp xchain00094_n3_α
xchain00094_n1_α:
# IR_UNOP
bb00095_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00094_n3_α
 cmp eax, 0
 jne xchain00094_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00094_n2_α
 xchain00094_n1_β:
 jmp xchain00094_n3_α
xchain00094_n2_α:
# IR_LIT_STRING
bb00096_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00094_n4_α
 xchain00094_n2_β:
 jmp proc_cosf_ω
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "cos(0.2)"
xchain00094_n3_α:
# IR_LIT_INTEGER
bb00098_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00094_n5_α
 xchain00094_n3_β:
 jmp proc_cosf_ω
.Lx00099_0:
 .quad 1
xchain00094_n4_α:
# IR_RETURN
bb00036_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cosf_γ
xchain00094_n5_α:
# IR_VAR
bb00037_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00094_n6_α
 xchain00094_n5_β:
 jmp proc_cosf_ω
xchain00094_n6_α:
# IR_TO
bb00100_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00101_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00094_n7_α
 xchain00094_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00101_0
xchain00094_n7_α:
# IR_LIT_REAL
bb00102_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00094_n8_α
 xchain00094_n7_β:
 jmp xchain00094_n6_β
.Lx00103_0:
 .quad 4596373779694328218
xchain00094_n8_α:
bb00104_α:
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
 je xchain00094_n6_β
 jmp xchain00094_n6_β
 xchain00094_n8_β:
 jmp xchain00094_n6_β
proc_cosf_β:
jmp proc_cosf_ω
proc_cosf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_sqrtf_α_body:
xchain00105_n0_α:
# IR_VAR
bb00106_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00105_n1_α
 xchain00105_n0_β:
 jmp xchain00105_n3_α
xchain00105_n1_α:
# IR_UNOP
bb00039_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00105_n3_α
 cmp eax, 0
 jne xchain00105_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00105_n2_α
 xchain00105_n1_β:
 jmp xchain00105_n3_α
xchain00105_n2_α:
# IR_LIT_STRING
bb00041_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00105_n4_α
 xchain00105_n2_β:
 jmp proc_sqrtf_ω
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "sqrt(7.4)"
xchain00105_n3_α:
# IR_LIT_INTEGER
bb00108_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00105_n5_α
 xchain00105_n3_β:
 jmp proc_sqrtf_ω
.Lx00109_0:
 .quad 1
xchain00105_n4_α:
# IR_RETURN
bb00110_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_sqrtf_γ
xchain00105_n5_α:
# IR_VAR
bb00043_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00105_n6_α
 xchain00105_n5_β:
 jmp proc_sqrtf_ω
xchain00105_n6_α:
# IR_TO
bb00111_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00112_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00105_n7_α
 xchain00105_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00112_0
xchain00105_n7_α:
# IR_LIT_REAL
bb00113_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00105_n8_α
 xchain00105_n7_β:
 jmp xchain00105_n6_β
.Lx00114_0:
 .quad 4620017677738023322
xchain00105_n8_α:
bb00115_α:
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
 je xchain00105_n6_β
 jmp xchain00105_n6_β
 xchain00105_n8_β:
 jmp xchain00105_n6_β
proc_sqrtf_β:
jmp proc_sqrtf_ω
proc_sqrtf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_logf_α_body:
xchain00116_n0_α:
# IR_VAR
bb00047_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00116_n1_α
 xchain00116_n0_β:
 jmp xchain00116_n3_α
xchain00116_n1_α:
# IR_UNOP
bb00049_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00116_n3_α
 cmp eax, 0
 jne xchain00116_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00116_n2_α
 xchain00116_n1_β:
 jmp xchain00116_n3_α
xchain00116_n2_α:
# IR_LIT_STRING
bb00117_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00116_n4_α
 xchain00116_n2_β:
 jmp proc_logf_ω
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "log(25.,17.)"
xchain00116_n3_α:
# IR_LIT_INTEGER
bb00119_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00116_n5_α
 xchain00116_n3_β:
 jmp proc_logf_ω
.Lx00120_0:
 .quad 1
xchain00116_n4_α:
# IR_RETURN
bb00121_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_logf_γ
xchain00116_n5_α:
# IR_VAR
bb00122_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00116_n6_α
 xchain00116_n5_β:
 jmp proc_logf_ω
xchain00116_n6_α:
# IR_TO
bb00052_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00123_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00116_n7_α
 xchain00116_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00123_0
xchain00116_n7_α:
# IR_LIT_REAL
bb00054_α:
 mov qword ptr [r12 + 144], 7
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00116_n8_α
 xchain00116_n7_β:
 jmp xchain00116_n6_β
.Lx00124_0:
 .quad 4627730092099895296
xchain00116_n8_α:
# IR_LIT_REAL
bb00055_α:
 mov qword ptr [r12 + 160], 7
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00116_n9_α
 xchain00116_n8_β:
 jmp xchain00116_n6_β
.Lx00125_0:
 .quad 4625478292286210048
xchain00116_n9_α:
bb00056_α:
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
 je xchain00116_n6_β
 jmp xchain00116_n6_β
 xchain00116_n9_β:
 jmp xchain00116_n6_β
proc_logf_β:
jmp proc_logf_ω
proc_logf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_nullfunc_α_body:
xchain00126_n0_α:
# IR_VAR
bb00057_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain00126_n1_α
 xchain00126_n0_β:
 jmp xchain00126_n3_α
xchain00126_n1_α:
# IR_UNOP
bb00127_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00126_n3_α
 cmp eax, 0
 jne xchain00126_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain00126_n2_α
 xchain00126_n1_β:
 jmp xchain00126_n3_α
xchain00126_n2_α:
# IR_LIT_STRING
bb00128_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00126_n4_α
 xchain00126_n2_β:
 jmp proc_nullfunc_ω
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "p()"
xchain00126_n3_α:
# IR_LIT_INTEGER
bb00130_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00126_n5_α
 xchain00126_n3_β:
 jmp proc_nullfunc_ω
.Lx00131_0:
 .quad 1
xchain00126_n4_α:
# IR_RETURN
bb00061_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullfunc_γ
xchain00126_n5_α:
# IR_VAR
bb00063_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00126_n6_α
 xchain00126_n5_β:
 jmp proc_nullfunc_ω
xchain00126_n6_α:
# IR_TO
bb00132_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00133_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00126_n7_α
 xchain00126_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00133_0
xchain00126_n7_α:
bb00134_α:
  .section .rodata
  .Lcall00134_pname: .string "nullf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00134_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00126_n6_β
 jmp xchain00126_n6_β
xchain00126_n7_β:
 jmp xchain00126_n6_β
proc_nullfunc_β:
jmp proc_nullfunc_ω
proc_nullfunc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_nullf_α_body:
proc_nullf_β:
jmp proc_nullf_ω
proc_nullf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_listcall_α_body:
xchain00135_n0_α:
# IR_VAR_REF gva
bb00136_α:
 lea rdi, [rbx + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00135_n1_α
 xchain00135_n0_β:
 jmp xchain00135_n3_α
xchain00135_n1_α:
# IR_UNOP_TEST lv
bb00137_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain00135_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00135_n3_α
 cmp eax, 0
 jne xchain00135_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain00135_n2_α
 xchain00135_n1_β:
 jmp xchain00135_n3_α
xchain00135_n2_α:
# IR_LIT_INTEGER
bb00064_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00135_n4_α
 xchain00135_n2_β:
 jmp xchain00135_n3_α
.Lx00138_0:
 .quad 1
xchain00135_n3_α:
# IR_VAR
bb00066_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00135_n5_α
 xchain00135_n3_β:
 jmp xchain00135_n8_α
xchain00135_n4_α:
# IR_ASSIGN_VAR write through variable
bb00068_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00135_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00135_n6_α
 xchain00135_n4_β:
 jmp xchain00135_n3_α
xchain00135_n5_α:
# IR_UNOP
bb00070_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00135_n8_α
 cmp eax, 0
 jne xchain00135_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00135_n7_α
 xchain00135_n5_β:
 jmp xchain00135_n8_α
xchain00135_n6_α:
# IR_MAKE_LIST
bb00071_α:
 lea rdi, [r12 + 320]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00135_n9_α
 xchain00135_n6_β:
 jmp xchain00135_n3_α
xchain00135_n7_α:
# IR_LIT_STRING
bb00139_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00135_n10_α
 xchain00135_n7_β:
 jmp proc_listcall_ω
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "p ! L"
xchain00135_n8_α:
# IR_LIT_INTEGER
bb00141_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00135_n11_α
 xchain00135_n8_β:
 jmp proc_listcall_ω
.Lx00142_0:
 .quad 1
xchain00135_n9_α:
# IR_ASSIGN gva
bb00143_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00135_n12_α
 xchain00135_n9_β:
 jmp xchain00135_n3_α
xchain00135_n10_α:
# IR_RETURN
bb00073_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listcall_γ
xchain00135_n11_α:
# IR_VAR
bb00075_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00135_n13_α
 xchain00135_n11_β:
 jmp proc_listcall_ω
xchain00135_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00144_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain00135_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain00135_n3_α
 xchain00135_n12_β:
 jmp xchain00135_n3_α
xchain00135_n13_α:
# IR_TO
bb00145_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00146_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00135_n15_α
 xchain00135_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00146_0
xchain00135_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00147_α:
 jmp qword ptr [r12 + 272]
 xchain00135_n14_β:
 jmp xchain00135_n3_α
xchain00135_n15_α:
# IR_LIT_STRING
bb00148_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00135_n16_α
 xchain00135_n15_β:
 jmp xchain00135_n13_β
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "nullf"
xchain00135_n16_α:
# IR_VAR gva
bb00078_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00135_n17_α
 xchain00135_n16_β:
 jmp xchain00135_n13_β
xchain00135_n17_α:
bb00079_α:
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
 je xchain00135_n13_β
 jmp xchain00135_n13_β
 xchain00135_n17_β:
 jmp xchain00135_n13_β
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_addfunc_α_body:
xchain00150_n0_α:
# IR_VAR
bb00080_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00150_n1_α
 xchain00150_n0_β:
 jmp xchain00150_n3_α
xchain00150_n1_α:
# IR_UNOP
bb00151_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00150_n3_α
 cmp eax, 0
 jne xchain00150_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00150_n2_α
 xchain00150_n1_β:
 jmp xchain00150_n3_α
xchain00150_n2_α:
# IR_LIT_STRING
bb00082_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00150_n4_α
 xchain00150_n2_β:
 jmp proc_addfunc_ω
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "add(4, 7)"
xchain00150_n3_α:
# IR_LIT_INTEGER
bb00153_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00150_n5_α
 xchain00150_n3_β:
 jmp proc_addfunc_ω
.Lx00154_0:
 .quad 1
xchain00150_n4_α:
# IR_RETURN
bb00155_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_addfunc_γ
xchain00150_n5_α:
# IR_VAR
bb00156_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00150_n6_α
 xchain00150_n5_β:
 jmp proc_addfunc_ω
xchain00150_n6_α:
# IR_TO
bb00085_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00157_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00150_n7_α
 xchain00150_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00157_0
xchain00150_n7_α:
# IR_LIT_INTEGER
bb00086_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00150_n8_α
 xchain00150_n7_β:
 jmp xchain00150_n6_β
.Lx00158_0:
 .quad 4
xchain00150_n8_α:
# IR_LIT_INTEGER
bb00159_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00150_n9_α
 xchain00150_n8_β:
 jmp xchain00150_n6_β
.Lx00160_0:
 .quad 7
xchain00150_n9_α:
bb00161_α:
  .section .rodata
  .Lcall00161_pname: .string "add"
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
   lea rdi, [rip + .Lcall00161_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00150_n6_β
 jmp xchain00150_n6_β
xchain00150_n9_β:
 jmp xchain00150_n6_β
proc_addfunc_β:
jmp proc_addfunc_ω
proc_addfunc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_add_α_body:
xchain00162_n0_α:
# IR_VAR
bb00163_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
 jmp xchain00162_n1_α
 xchain00162_n0_β:
 jmp proc_add_ω
xchain00162_n1_α:
# IR_VAR
bb00164_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
 jmp xchain00162_n2_α
 xchain00162_n1_β:
 jmp proc_add_ω
xchain00162_n2_α:
bb00090_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00165_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00165_2
.Lx00165_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00162_n3_α
.Lx00165_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00165_3
.Lx00165_2:
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
.Lx00165_3:
 jmp xchain00162_n3_α
 xchain00162_n2_β:
 jmp proc_add_ω
xchain00162_n3_α:
# IR_RETURN
bb00092_α:
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
proc_rfact0_α_body:
xchain00166_n0_α:
# IR_VAR
bb00093_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00166_n1_α
 xchain00166_n0_β:
 jmp xchain00166_n3_α
xchain00166_n1_α:
# IR_UNOP
bb00167_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00166_n3_α
 cmp eax, 0
 jne xchain00166_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00166_n2_α
 xchain00166_n1_β:
 jmp xchain00166_n3_α
xchain00166_n2_α:
# IR_LIT_STRING
bb00094_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00166_n4_α
 xchain00166_n2_β:
 jmp proc_rfact0_ω
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "rfact(0)"
xchain00166_n3_α:
# IR_LIT_INTEGER
bb00169_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00166_n5_α
 xchain00166_n3_β:
 jmp proc_rfact0_ω
.Lx00170_0:
 .quad 1
xchain00166_n4_α:
# IR_RETURN
bb00171_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact0_γ
xchain00166_n5_α:
# IR_VAR
bb00172_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00166_n6_α
 xchain00166_n5_β:
 jmp proc_rfact0_ω
xchain00166_n6_α:
# IR_TO
bb00097_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00173_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00166_n7_α
 xchain00166_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00173_0
xchain00166_n7_α:
# IR_LIT_INTEGER
bb00099_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00166_n8_α
 xchain00166_n7_β:
 jmp xchain00166_n6_β
.Lx00174_0:
 .quad 0
xchain00166_n8_α:
bb00175_α:
  .section .rodata
  .Lcall00175_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00175_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00166_n6_β
 jmp xchain00166_n6_β
xchain00166_n8_β:
 jmp xchain00166_n6_β
proc_rfact0_β:
jmp proc_rfact0_ω
proc_rfact0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_rfact10_α_body:
xchain00176_n0_α:
# IR_VAR
bb00177_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00176_n1_α
 xchain00176_n0_β:
 jmp xchain00176_n3_α
xchain00176_n1_α:
# IR_UNOP
bb00178_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00176_n3_α
 cmp eax, 0
 jne xchain00176_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00176_n2_α
 xchain00176_n1_β:
 jmp xchain00176_n3_α
xchain00176_n2_α:
# IR_LIT_STRING
bb00179_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00176_n4_α
 xchain00176_n2_β:
 jmp proc_rfact10_ω
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string "rfact(10)"
xchain00176_n3_α:
# IR_LIT_INTEGER
bb00101_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00176_n5_α
 xchain00176_n3_β:
 jmp proc_rfact10_ω
.Lx00181_0:
 .quad 1
xchain00176_n4_α:
# IR_RETURN
bb00103_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact10_γ
xchain00176_n5_α:
# IR_VAR
bb00182_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00176_n6_α
 xchain00176_n5_β:
 jmp proc_rfact10_ω
xchain00176_n6_α:
# IR_TO
bb00183_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00184_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00176_n7_α
 xchain00176_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00184_0
xchain00176_n7_α:
# IR_LIT_INTEGER
bb00105_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00176_n8_α
 xchain00176_n7_β:
 jmp xchain00176_n6_β
.Lx00185_0:
 .quad 10
xchain00176_n8_α:
bb00186_α:
  .section .rodata
  .Lcall00186_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00186_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00176_n6_β
 jmp xchain00176_n6_β
xchain00176_n8_β:
 jmp xchain00176_n6_β
proc_rfact10_β:
jmp proc_rfact10_ω
proc_rfact10_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_rfact_α_body:
xchain00187_n0_α:
# IR_VAR
bb00188_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00187_n1_α
 xchain00187_n0_β:
 jmp xchain00187_n4_α
xchain00187_n1_α:
# IR_LIT_INTEGER
bb00189_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00187_n2_α
 xchain00187_n1_β:
 jmp xchain00187_n4_α
.Lx00190_0:
 .quad 1
xchain00187_n2_α:
bb00107_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00191_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00191_0
.Lx00191_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 cmp rax, rcx
 jge xchain00187_n4_α
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rcx
 jmp xchain00187_n3_α
.Lx00191_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 lea r9, [r12 + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00191_1
 cmp eax, 1
 je xchain00187_n4_α
 jmp xchain00187_n3_α
 xchain00187_n2_β:
 jmp xchain00187_n4_α
xchain00187_n3_α:
# IR_LIT_INTEGER
bb00109_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00187_n5_α
 xchain00187_n3_β:
 jmp proc_rfact_ω
.Lx00192_0:
 .quad 1
xchain00187_n4_α:
# IR_VAR
bb00193_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00187_n6_α
 xchain00187_n4_β:
 jmp proc_rfact_ω
xchain00187_n5_α:
# IR_RETURN
bb00194_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact_γ
xchain00187_n6_α:
# IR_VAR
bb00195_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00187_n7_α
 xchain00187_n6_β:
 jmp proc_rfact_ω
xchain00187_n7_α:
# IR_LIT_INTEGER
bb00196_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00187_n8_α
 xchain00187_n7_β:
 jmp proc_rfact_ω
.Lx00197_0:
 .quad 1
xchain00187_n8_α:
bb00112_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00198_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00198_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00198_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00198_2
.Lx00198_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 184]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00187_n9_α
.Lx00198_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00198_3
.Lx00198_2:
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
.Lx00198_3:
 jmp xchain00187_n9_α
 xchain00187_n8_β:
 jmp proc_rfact_ω
xchain00187_n9_α:
bb00114_α:
  .section .rodata
  .Lcall00114_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00114_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00187_n10_α
xchain00187_n9_β:
 jmp proc_rfact_ω
xchain00187_n10_α:
bb00199_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00200_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00200_2
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00200_2
.Lx00200_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 120]
 imul rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00187_n11_α
.Lx00200_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 2
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00200_3
.Lx00200_2:
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
.Lx00200_3:
 jmp xchain00187_n11_α
 xchain00187_n10_β:
 jmp proc_rfact_ω
xchain00187_n11_α:
# IR_RETURN
bb00201_α:
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
proc_rfib5_α_body:
xchain00202_n0_α:
# IR_VAR
bb00116_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00202_n1_α
 xchain00202_n0_β:
 jmp xchain00202_n3_α
xchain00202_n1_α:
# IR_UNOP
bb00203_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00202_n3_α
 cmp eax, 0
 jne xchain00202_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00202_n2_α
 xchain00202_n1_β:
 jmp xchain00202_n3_α
xchain00202_n2_α:
# IR_LIT_STRING
bb00204_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00202_n4_α
 xchain00202_n2_β:
 jmp proc_rfib5_ω
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "rfib(5)"
xchain00202_n3_α:
# IR_LIT_INTEGER
bb00206_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00202_n5_α
 xchain00202_n3_β:
 jmp proc_rfib5_ω
.Lx00207_0:
 .quad 1
xchain00202_n4_α:
# IR_RETURN
bb00118_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib5_γ
xchain00202_n5_α:
# IR_VAR
bb00120_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00202_n6_α
 xchain00202_n5_β:
 jmp proc_rfib5_ω
xchain00202_n6_α:
# IR_TO
bb00208_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00209_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00202_n7_α
 xchain00202_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00209_0
xchain00202_n7_α:
# IR_LIT_INTEGER
bb00210_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00202_n8_α
 xchain00202_n7_β:
 jmp xchain00202_n6_β
.Lx00211_0:
 .quad 5
xchain00202_n8_α:
bb00212_α:
  .section .rodata
  .Lcall00212_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00212_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00202_n6_β
 jmp xchain00202_n6_β
xchain00202_n8_β:
 jmp xchain00202_n6_β
proc_rfib5_β:
jmp proc_rfib5_ω
proc_rfib5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_rfib_α_body:
xchain00213_n0_α:
# IR_VAR
bb00214_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp xchain00213_n4_α
xchain00213_n1_α:
# IR_LIT_INTEGER
bb00123_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00213_n2_α
 xchain00213_n1_β:
 jmp xchain00213_n4_α
.Lx00215_0:
 .quad 3
xchain00213_n2_α:
bb00124_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00216_0
.Lx00216_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jge xchain00213_n4_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rcx
 jmp xchain00213_n3_α
.Lx00216_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 lea r9, [r12 + 256]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00216_1
 cmp eax, 1
 je xchain00213_n4_α
 jmp xchain00213_n3_α
 xchain00213_n2_β:
 jmp xchain00213_n4_α
xchain00213_n3_α:
# IR_LIT_INTEGER
bb00125_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00213_n5_α
 xchain00213_n3_β:
 jmp proc_rfib_ω
.Lx00217_0:
 .quad 1
xchain00213_n4_α:
# IR_VAR
bb00218_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00213_n6_α
 xchain00213_n4_β:
 jmp proc_rfib_ω
xchain00213_n5_α:
# IR_RETURN
bb00219_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib_γ
xchain00213_n6_α:
# IR_LIT_INTEGER
bb00126_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00213_n7_α
 xchain00213_n6_β:
 jmp proc_rfib_ω
.Lx00220_0:
 .quad 2
xchain00213_n7_α:
bb00221_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00222_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00222_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00222_2
.Lx00222_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00213_n8_α
.Lx00222_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00222_3
.Lx00222_2:
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
.Lx00222_3:
 jmp xchain00213_n8_α
 xchain00213_n7_β:
 jmp proc_rfib_ω
xchain00213_n8_α:
bb00223_α:
  .section .rodata
  .Lcall00223_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00223_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00213_n9_α
xchain00213_n8_β:
 jmp proc_rfib_ω
xchain00213_n9_α:
# IR_VAR
bb00224_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00213_n10_α
 xchain00213_n9_β:
 jmp proc_rfib_ω
xchain00213_n10_α:
# IR_LIT_INTEGER
bb00129_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00213_n11_α
 xchain00213_n10_β:
 jmp proc_rfib_ω
.Lx00225_0:
 .quad 1
xchain00213_n11_α:
bb00131_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00226_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00226_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00226_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00226_2
.Lx00226_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00213_n12_α
.Lx00226_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00226_3
.Lx00226_2:
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
.Lx00226_3:
 jmp xchain00213_n12_α
 xchain00213_n11_β:
 jmp proc_rfib_ω
xchain00213_n12_α:
bb00227_α:
  .section .rodata
  .Lcall00227_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00227_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00213_n13_α
xchain00213_n12_β:
 jmp proc_rfib_ω
xchain00213_n13_α:
bb00228_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00229_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00229_2
.Lx00229_1:
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00213_n14_α
.Lx00229_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00229_3
.Lx00229_2:
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
.Lx00229_3:
 jmp xchain00213_n14_α
 xchain00213_n13_β:
 jmp proc_rfib_ω
xchain00213_n14_α:
# IR_RETURN
bb00230_α:
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
proc_prslow_α_body:
xchain00231_n0_α:
# IR_VAR
bb00232_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00231_n1_α
 xchain00231_n0_β:
 jmp xchain00231_n3_α
xchain00231_n1_α:
# IR_UNOP
bb00133_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00231_n3_α
 cmp eax, 0
 jne xchain00231_n3_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00231_n2_α
 xchain00231_n1_β:
 jmp xchain00231_n3_α
xchain00231_n2_α:
# IR_LIT_STRING
bb00233_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00231_n4_α
 xchain00231_n2_β:
 jmp proc_prslow_ω
.Lx00234_0:
 .quad .Lx00234_0_s
.Lx00234_0_s:
 .string "prslow(7)"
xchain00231_n3_α:
# IR_LIT_INTEGER
bb00235_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00231_n5_α
 xchain00231_n3_β:
 jmp proc_prslow_ω
.Lx00236_0:
 .quad 1
xchain00231_n4_α:
# IR_RETURN
bb00135_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prslow_γ
xchain00231_n5_α:
# IR_VAR
bb00237_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00231_n6_α
 xchain00231_n5_β:
 jmp proc_prslow_ω
xchain00231_n6_α:
# IR_TO
bb00238_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00239_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00231_n7_α
 xchain00231_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00239_0
xchain00231_n7_α:
# IR_LIT_INTEGER
bb00240_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00231_n8_α
 xchain00231_n7_β:
 jmp xchain00231_n9_α
.Lx00241_0:
 .quad 0
xchain00231_n8_α:
bb00138_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00231_n9_α
 xchain00231_n8_β:
 jmp xchain00231_n9_α
xchain00231_n9_α:
# IR_LIT_INTEGER
bb00242_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00231_n10_α
 xchain00231_n9_β:
 jmp xchain00231_n6_β
.Lx00243_0:
 .quad 2
xchain00231_n10_α:
# IR_LIT_INTEGER
bb00244_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00231_n11_α
 xchain00231_n10_β:
 jmp xchain00231_n6_β
.Lx00245_0:
 .quad 7
xchain00231_n11_α:
# IR_TO
bb00246_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00247_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg xchain00231_n6_β
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00231_n12_α
 xchain00231_n11_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00247_0
xchain00231_n12_α:
bb00248_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00231_n13_α
 xchain00231_n12_β:
 jmp xchain00231_n6_β
xchain00231_n13_α:
# IR_VAR
bb00249_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 312], rax
 jmp xchain00231_n14_α
 xchain00231_n13_β:
 jmp xchain00231_n19_α
xchain00231_n14_α:
# IR_LIT_INTEGER
bb00250_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00231_n15_α
 xchain00231_n14_β:
 jmp xchain00231_n19_α
.Lx00251_0:
 .quad 2
xchain00231_n15_α:
# IR_VAR
bb00140_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 392], rax
 jmp xchain00231_n16_α
 xchain00231_n15_β:
 jmp xchain00231_n19_α
xchain00231_n16_α:
# IR_LIT_INTEGER
bb00142_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00231_n17_α
 xchain00231_n16_β:
 jmp xchain00231_n19_α
.Lx00252_0:
 .quad 1
xchain00231_n17_α:
bb00253_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00254_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00254_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00254_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00254_2
.Lx00254_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 408]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00231_n18_α
.Lx00254_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00254_3
.Lx00254_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00231_n19_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00254_3:
 jmp xchain00231_n18_α
 xchain00231_n17_β:
 jmp xchain00231_n19_α
xchain00231_n18_α:
# IR_TO
bb00255_α:
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
.Lx00256_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain00231_n19_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00231_n20_α
 xchain00231_n18_β:
 inc qword ptr [r12 + 336]
 jmp .Lx00256_0
xchain00231_n19_α:
# IR_VAR
bb00257_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 216], rax
 jmp xchain00231_n21_α
 xchain00231_n19_β:
 jmp xchain00231_n11_β
xchain00231_n20_α:
bb00258_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00259_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00259_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00259_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00259_2
.Lx00259_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00231_n22_α
.Lx00259_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00259_3
.Lx00259_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00231_n19_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00259_3:
 jmp xchain00231_n22_α
 xchain00231_n20_β:
 jmp xchain00231_n19_α
xchain00231_n21_α:
# IR_LIT_INTEGER
bb00260_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00231_n23_α
 xchain00231_n21_β:
 jmp xchain00231_n11_β
.Lx00261_0:
 .quad 1
xchain00231_n22_α:
# IR_LIT_INTEGER
bb00262_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00231_n24_α
 xchain00231_n22_β:
 jmp xchain00231_n18_β
.Lx00263_0:
 .quad 0
xchain00231_n23_α:
bb00264_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00265_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00265_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00265_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00265_2
.Lx00265_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00231_n25_α
.Lx00265_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00265_3
.Lx00265_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00231_n11_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00265_3:
 jmp xchain00231_n25_α
 xchain00231_n23_β:
 jmp xchain00231_n11_β
xchain00231_n24_α:
bb00146_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00266_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00266_0
.Lx00266_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 424]
 cmp rax, rcx
 jne xchain00231_n18_β
 mov rcx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rcx
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rcx
 jmp xchain00231_n11_α
.Lx00266_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 lea r9, [r12 + 272]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00266_1
 cmp eax, 1
 je xchain00231_n18_β
 jmp xchain00231_n11_α
 xchain00231_n24_β:
 jmp xchain00231_n18_β
xchain00231_n25_α:
bb00267_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00231_n27_α
 xchain00231_n25_β:
 jmp xchain00231_n11_β
xchain00231_n26_α:
 jmp xchain00231_n11_β
xchain00231_n26_β:
 jmp xchain00231_n11_β
xchain00231_n27_α:
 jmp xchain00231_n11_β
xchain00231_n27_β:
 jmp xchain00231_n11_β
proc_prslow_β:
jmp proc_prslow_ω
proc_prslow_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_if0_α_body:
xchain00268_n0_α:
# IR_VAR
bb00269_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00268_n1_α
 xchain00268_n0_β:
 jmp xchain00268_n3_α
xchain00268_n1_α:
# IR_UNOP
bb00270_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00268_n3_α
 cmp eax, 0
 jne xchain00268_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00268_n2_α
 xchain00268_n1_β:
 jmp xchain00268_n3_α
xchain00268_n2_α:
# IR_LIT_STRING
bb00271_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00268_n4_α
 xchain00268_n2_β:
 jmp proc_if0_ω
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "if 0 then 1"
xchain00268_n3_α:
# IR_LIT_INTEGER
bb00150_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00268_n5_α
 xchain00268_n3_β:
 jmp proc_if0_ω
.Lx00273_0:
 .quad 1
xchain00268_n4_α:
# IR_RETURN
bb00274_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_if0_γ
xchain00268_n5_α:
# IR_VAR
bb00275_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00268_n6_α
 xchain00268_n5_β:
 jmp proc_if0_ω
xchain00268_n6_α:
# IR_TO
bb00276_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00277_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00268_n7_α
 xchain00268_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00277_0
xchain00268_n7_α:
# IR_LIT_INTEGER
bb00152_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00268_n8_α
 xchain00268_n7_β:
 jmp xchain00268_n6_β
.Lx00278_0:
 .quad 0
xchain00268_n8_α:
# IR_LIT_INTEGER
bb00154_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00268_n9_α
 xchain00268_n8_β:
 jmp xchain00268_n6_β
.Lx00279_0:
 .quad 1
xchain00268_n9_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00280_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00268_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00268_n6_β
 xchain00268_n9_β:
 jmp xchain00268_n6_β
xchain00268_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00281_α:
 jmp qword ptr [r12 + 112]
 xchain00268_n10_β:
 jmp xchain00268_n6_β
proc_if0_β:
jmp proc_if0_ω
proc_if0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_case3_α_body:
xchain00282_n0_α:
# IR_VAR
bb00283_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00282_n1_α
 xchain00282_n0_β:
 jmp xchain00282_n3_α
xchain00282_n1_α:
# IR_UNOP
bb00284_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00282_n3_α
 cmp eax, 0
 jne xchain00282_n3_α
 mov qword ptr [r12 + 592], 0
 mov qword ptr [r12 + 600], 0
 jmp xchain00282_n2_α
 xchain00282_n1_β:
 jmp xchain00282_n3_α
xchain00282_n2_α:
# IR_LIT_STRING
bb00157_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00282_n4_α
 xchain00282_n2_β:
 jmp proc_case3_ω
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "case 3 of..."
xchain00282_n3_α:
# IR_LIT_INTEGER
bb00158_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00282_n5_α
 xchain00282_n3_β:
 jmp proc_case3_ω
.Lx00286_0:
 .quad 1
xchain00282_n4_α:
# IR_RETURN
bb00160_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_case3_γ
xchain00282_n5_α:
# IR_VAR
bb00287_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00282_n6_α
 xchain00282_n5_β:
 jmp proc_case3_ω
xchain00282_n6_α:
# IR_TO
bb00162_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00288_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00282_n7_α
 xchain00282_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00288_0
xchain00282_n7_α:
# IR_LIT_INTEGER
bb00289_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00282_n8_α
 xchain00282_n7_β:
 jmp xchain00282_n6_β
.Lx00290_0:
 .quad 3
xchain00282_n8_α:
# IR_LIT_INTEGER
bb00291_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00282_n9_α
 xchain00282_n8_β:
 jmp xchain00282_n6_β
.Lx00292_0:
 .quad 1
xchain00282_n9_α:
bb00293_α:
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
 je xchain00282_n11_α
 jmp xchain00282_n10_α
 xchain00282_n9_β:
 jmp xchain00282_n11_α
xchain00282_n10_α:
# IR_LIT_INTEGER
bb00294_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00282_n12_α
 xchain00282_n10_β:
 jmp xchain00282_n6_β
.Lx00295_0:
 .quad 1
xchain00282_n11_α:
# IR_LIT_INTEGER
bb00165_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00282_n13_α
 xchain00282_n11_β:
 jmp xchain00282_n6_β
.Lx00296_0:
 .quad 2
xchain00282_n12_α:
bb00297_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00282_n14_α
 xchain00282_n12_β:
 jmp xchain00282_n6_β
xchain00282_n13_α:
bb00166_α:
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
 je xchain00282_n16_α
 jmp xchain00282_n15_α
 xchain00282_n13_β:
 jmp xchain00282_n16_α
xchain00282_n14_α:
# IR_VAR
bb00298_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 104], rax
 jmp xchain00282_n6_β
 xchain00282_n14_β:
 jmp xchain00282_n6_β
xchain00282_n15_α:
# IR_LIT_INTEGER
bb00299_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00282_n17_α
 xchain00282_n15_β:
 jmp xchain00282_n6_β
.Lx00300_0:
 .quad 2
xchain00282_n16_α:
# IR_LIT_INTEGER
bb00301_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00282_n18_α
 xchain00282_n16_β:
 jmp xchain00282_n6_β
.Lx00302_0:
 .quad 3
xchain00282_n17_α:
bb00168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00282_n14_α
 xchain00282_n17_β:
 jmp xchain00282_n6_β
xchain00282_n18_α:
bb00170_α:
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
 je xchain00282_n20_α
 jmp xchain00282_n19_α
 xchain00282_n18_β:
 jmp xchain00282_n20_α
xchain00282_n19_α:
# IR_LIT_INTEGER
bb00303_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00282_n21_α
 xchain00282_n19_β:
 jmp xchain00282_n6_β
.Lx00304_0:
 .quad 3
xchain00282_n20_α:
# IR_LIT_INTEGER
bb00305_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00282_n22_α
 xchain00282_n20_β:
 jmp xchain00282_n6_β
.Lx00306_0:
 .quad 4
xchain00282_n21_α:
bb00307_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00282_n14_α
 xchain00282_n21_β:
 jmp xchain00282_n6_β
xchain00282_n22_α:
bb00308_α:
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
 je xchain00282_n24_α
 jmp xchain00282_n23_α
 xchain00282_n22_β:
 jmp xchain00282_n24_α
xchain00282_n23_α:
# IR_LIT_INTEGER
bb00173_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00282_n25_α
 xchain00282_n23_β:
 jmp xchain00282_n6_β
.Lx00309_0:
 .quad 4
xchain00282_n24_α:
# IR_LIT_INTEGER
bb00174_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00282_n26_α
 xchain00282_n24_β:
 jmp xchain00282_n6_β
.Lx00310_0:
 .quad 0
xchain00282_n25_α:
bb00311_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00282_n14_α
 xchain00282_n25_β:
 jmp xchain00282_n6_β
xchain00282_n26_α:
bb00176_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00282_n14_α
 xchain00282_n26_β:
 jmp xchain00282_n6_β
proc_case3_β:
jmp proc_case3_ω
proc_case3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_nulltest_α_body:
xchain00312_n0_α:
# IR_VAR
bb00313_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00312_n1_α
 xchain00312_n0_β:
 jmp xchain00312_n3_α
xchain00312_n1_α:
# IR_UNOP
bb00314_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00312_n3_α
 cmp eax, 0
 jne xchain00312_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00312_n2_α
 xchain00312_n1_β:
 jmp xchain00312_n3_α
xchain00312_n2_α:
# IR_LIT_STRING
bb00315_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00312_n4_α
 xchain00312_n2_β:
 jmp proc_nulltest_ω
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "\\8"
xchain00312_n3_α:
# IR_LIT_INTEGER
bb00180_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00312_n5_α
 xchain00312_n3_β:
 jmp proc_nulltest_ω
.Lx00317_0:
 .quad 1
xchain00312_n4_α:
# IR_RETURN
bb00181_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nulltest_γ
xchain00312_n5_α:
# IR_VAR
bb00318_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00312_n6_α
 xchain00312_n5_β:
 jmp proc_nulltest_ω
xchain00312_n6_α:
# IR_TO
bb00319_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00320_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00312_n7_α
 xchain00312_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00320_0
xchain00312_n7_α:
# IR_LIT_INTEGER
bb00321_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00312_n8_α
 xchain00312_n7_β:
 jmp xchain00312_n6_β
.Lx00322_0:
 .quad 8
xchain00312_n8_α:
# IR_UNOP
bb00323_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 99
 je xchain00312_n6_β
 cmp eax, 0
 je xchain00312_n6_β
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
 jmp xchain00312_n6_β
 xchain00312_n8_β:
 jmp xchain00312_n6_β
proc_nulltest_β:
jmp proc_nulltest_ω
proc_nulltest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_typef_α_body:
xchain00324_n0_α:
# IR_VAR
bb00184_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00324_n1_α
 xchain00324_n0_β:
 jmp xchain00324_n3_α
xchain00324_n1_α:
# IR_UNOP
bb00185_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00324_n3_α
 cmp eax, 0
 jne xchain00324_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00324_n2_α
 xchain00324_n1_β:
 jmp xchain00324_n3_α
xchain00324_n2_α:
# IR_LIT_STRING
bb00325_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00324_n4_α
 xchain00324_n2_β:
 jmp proc_typef_ω
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "type(s)"
xchain00324_n3_α:
# IR_LIT_INTEGER
bb00187_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00324_n5_α
 xchain00324_n3_β:
 jmp proc_typef_ω
.Lx00327_0:
 .quad 1
xchain00324_n4_α:
# IR_RETURN
bb00328_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_typef_γ
xchain00324_n5_α:
# IR_VAR
bb00329_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00324_n6_α
 xchain00324_n5_β:
 jmp proc_typef_ω
xchain00324_n6_α:
# IR_TO
bb00190_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00330_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00324_n7_α
 xchain00324_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00330_0
xchain00324_n7_α:
# IR_LIT_STRING
bb00191_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00324_n8_α
 xchain00324_n7_β:
 jmp xchain00324_n6_β
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "abcde"
xchain00324_n8_α:
bb00192_α:
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
 je xchain00324_n6_β
 jmp xchain00324_n6_β
 xchain00324_n8_β:
 jmp xchain00324_n6_β
proc_typef_β:
jmp proc_typef_ω
proc_typef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_imagef_α_body:
xchain00332_n0_α:
# IR_VAR
bb00333_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00332_n1_α
 xchain00332_n0_β:
 jmp xchain00332_n3_α
xchain00332_n1_α:
# IR_UNOP
bb00334_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00332_n3_α
 cmp eax, 0
 jne xchain00332_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00332_n2_α
 xchain00332_n1_β:
 jmp xchain00332_n3_α
xchain00332_n2_α:
# IR_LIT_STRING
bb00335_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00332_n4_α
 xchain00332_n2_β:
 jmp proc_imagef_ω
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "image(s)"
xchain00332_n3_α:
# IR_LIT_INTEGER
bb00337_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00338_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00332_n5_α
 xchain00332_n3_β:
 jmp proc_imagef_ω
.Lx00338_0:
 .quad 1
xchain00332_n4_α:
# IR_RETURN
bb00339_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_imagef_γ
xchain00332_n5_α:
# IR_VAR
bb00197_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00332_n6_α
 xchain00332_n5_β:
 jmp proc_imagef_ω
xchain00332_n6_α:
# IR_TO
bb00198_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00340_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00332_n7_α
 xchain00332_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00340_0
xchain00332_n7_α:
# IR_LIT_STRING
bb00341_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00332_n8_α
 xchain00332_n7_β:
 jmp xchain00332_n6_β
.Lx00342_0:
 .quad .Lx00342_0_s
.Lx00342_0_s:
 .string "ab\tcd"
xchain00332_n8_α:
bb00200_α:
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
 je xchain00332_n6_β
 jmp xchain00332_n6_β
 xchain00332_n8_β:
 jmp xchain00332_n6_β
proc_imagef_β:
jmp proc_imagef_ω
proc_imagef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_marshal_α_body:
xchain00343_n0_α:
# IR_VAR
bb00344_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00343_n1_α
 xchain00343_n0_β:
 jmp xchain00343_n3_α
xchain00343_n1_α:
# IR_UNOP
bb00202_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00343_n3_α
 cmp eax, 0
 jne xchain00343_n3_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00343_n2_α
 xchain00343_n1_β:
 jmp xchain00343_n3_α
xchain00343_n2_α:
# IR_LIT_STRING
bb00345_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00343_n4_α
 xchain00343_n2_β:
 jmp proc_marshal_ω
.Lx00346_0:
 .quad .Lx00346_0_s
.Lx00346_0_s:
 .string "2(3,1,4,1,6)"
xchain00343_n3_α:
# IR_LIT_INTEGER
bb00347_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00343_n5_α
 xchain00343_n3_β:
 jmp proc_marshal_ω
.Lx00348_0:
 .quad 1
xchain00343_n4_α:
# IR_RETURN
bb00349_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_marshal_γ
xchain00343_n5_α:
# IR_VAR
bb00205_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00343_n6_α
 xchain00343_n5_β:
 jmp proc_marshal_ω
xchain00343_n6_α:
# IR_TO
bb00207_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00350_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00343_n7_α
 xchain00343_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00350_0
xchain00343_n7_α:
# IR_LIT_INTEGER
bb00351_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00343_n8_α
 xchain00343_n7_β:
 jmp xchain00343_n6_β
.Lx00352_0:
 .quad 2
xchain00343_n8_α:
# IR_LIT_INTEGER
bb00353_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00343_n9_α
 xchain00343_n8_β:
 jmp xchain00343_n6_β
.Lx00354_0:
 .quad 3
xchain00343_n9_α:
# IR_LIT_INTEGER
bb00355_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00343_n10_α
 xchain00343_n9_β:
 jmp xchain00343_n6_β
.Lx00356_0:
 .quad 1
xchain00343_n10_α:
# IR_LIT_INTEGER
bb00357_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00358_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00343_n11_α
 xchain00343_n10_β:
 jmp xchain00343_n6_β
.Lx00358_0:
 .quad 4
xchain00343_n11_α:
# IR_LIT_INTEGER
bb00209_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00343_n12_α
 xchain00343_n11_β:
 jmp xchain00343_n6_β
.Lx00359_0:
 .quad 1
xchain00343_n12_α:
# IR_LIT_INTEGER
bb00211_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00343_n13_α
 xchain00343_n12_β:
 jmp xchain00343_n6_β
.Lx00360_0:
 .quad 6
xchain00343_n13_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb00361_α:
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
 je xchain00343_n6_β
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00343_n6_β
 xchain00343_n13_β:
 jmp xchain00343_n6_β
proc_marshal_β:
jmp proc_marshal_ω
proc_marshal_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_conj5_α_body:
xchain00362_n0_α:
# IR_VAR
bb00213_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00362_n1_α
 xchain00362_n0_β:
 jmp xchain00362_n3_α
xchain00362_n1_α:
# IR_UNOP
bb00363_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00362_n3_α
 cmp eax, 0
 jne xchain00362_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00362_n2_α
 xchain00362_n1_β:
 jmp xchain00362_n3_α
xchain00362_n2_α:
# IR_LIT_STRING
bb00364_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00362_n4_α
 xchain00362_n2_β:
 jmp proc_conj5_ω
.Lx00365_0:
 .quad .Lx00365_0_s
.Lx00365_0_s:
 .string "1&2&3&4&5"
xchain00362_n3_α:
# IR_LIT_INTEGER
bb00215_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00362_n5_α
 xchain00362_n3_β:
 jmp proc_conj5_ω
.Lx00366_0:
 .quad 1
xchain00362_n4_α:
# IR_RETURN
bb00216_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_conj5_γ
xchain00362_n5_α:
# IR_VAR
bb00217_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00362_n6_α
 xchain00362_n5_β:
 jmp proc_conj5_ω
xchain00362_n6_α:
# IR_TO
bb00367_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00368_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00362_n7_α
 xchain00362_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00368_0
xchain00362_n7_α:
# IR_LIT_INTEGER
bb00369_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00362_n8_α
 xchain00362_n7_β:
 jmp xchain00362_n6_β
.Lx00370_0:
 .quad 1
xchain00362_n8_α:
# IR_LIT_INTEGER
bb00371_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00362_n9_α
 xchain00362_n8_β:
 jmp xchain00362_n6_β
.Lx00372_0:
 .quad 2
xchain00362_n9_α:
# IR_LIT_INTEGER
bb00220_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00362_n10_α
 xchain00362_n9_β:
 jmp xchain00362_n6_β
.Lx00373_0:
 .quad 3
xchain00362_n10_α:
# IR_LIT_INTEGER
bb00222_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00362_n11_α
 xchain00362_n10_β:
 jmp xchain00362_n6_β
.Lx00374_0:
 .quad 4
xchain00362_n11_α:
# IR_LIT_INTEGER
bb00375_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00362_n12_α
 xchain00362_n11_β:
 jmp xchain00362_n6_β
.Lx00376_0:
 .quad 5
xchain00362_n12_α:
 jmp xchain00362_n6_β
xchain00362_n12_β:
 jmp xchain00362_n6_β
proc_conj5_β:
jmp proc_conj5_ω
proc_conj5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_everyalt_α_body:
xchain00377_n0_α:
# IR_VAR
bb00378_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00377_n1_α
 xchain00377_n0_β:
 jmp xchain00377_n3_α
xchain00377_n1_α:
# IR_UNOP
bb00225_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00377_n3_α
 cmp eax, 0
 jne xchain00377_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00377_n2_α
 xchain00377_n1_β:
 jmp xchain00377_n3_α
xchain00377_n2_α:
# IR_LIT_STRING
bb00226_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00377_n4_α
 xchain00377_n2_β:
 jmp proc_everyalt_ω
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "1|2|3|4|5"
xchain00377_n3_α:
# IR_LIT_INTEGER
bb00380_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00377_n5_α
 xchain00377_n3_β:
 jmp proc_everyalt_ω
.Lx00381_0:
 .quad 1
xchain00377_n4_α:
# IR_RETURN
bb00229_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyalt_γ
xchain00377_n5_α:
# IR_VAR
bb00382_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00377_n6_α
 xchain00377_n5_β:
 jmp proc_everyalt_ω
xchain00377_n6_α:
# IR_TO
bb00231_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00383_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00377_n7_α
 xchain00377_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00383_0
xchain00377_n7_α:
# IR_LIT_INTEGER
bb00384_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00377_n8_α
 xchain00377_n7_β:
 jmp xchain00377_n9_α
.Lx00385_0:
 .quad 1
xchain00377_n8_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00386_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00377_n9_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00377_n10_α
 xchain00377_n8_β:
 jmp xchain00377_n6_β
xchain00377_n9_α:
# IR_LIT_INTEGER
bb00387_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00377_n11_α
 xchain00377_n9_β:
 jmp xchain00377_n12_α
.Lx00388_0:
 .quad 2
xchain00377_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00234_α:
 jmp qword ptr [r12 + 112]
 xchain00377_n10_β:
 jmp xchain00377_n6_β
xchain00377_n11_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00236_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00377_n12_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00377_n10_α
 xchain00377_n11_β:
 jmp xchain00377_n6_β
xchain00377_n12_α:
# IR_LIT_INTEGER
bb00389_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00377_n13_α
 xchain00377_n12_β:
 jmp xchain00377_n14_α
.Lx00390_0:
 .quad 3
xchain00377_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00391_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00377_n14_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00377_n10_α
 xchain00377_n13_β:
 jmp xchain00377_n6_β
xchain00377_n14_α:
# IR_LIT_INTEGER
bb00392_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00377_n15_α
 xchain00377_n14_β:
 jmp xchain00377_n16_α
.Lx00393_0:
 .quad 4
xchain00377_n15_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00394_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00377_n16_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00377_n10_α
 xchain00377_n15_β:
 jmp xchain00377_n6_β
xchain00377_n16_α:
# IR_LIT_INTEGER
bb00239_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00377_n17_α
 xchain00377_n16_β:
 jmp xchain00377_n6_β
.Lx00395_0:
 .quad 5
xchain00377_n17_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00241_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00377_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00377_n10_α
 xchain00377_n17_β:
 jmp xchain00377_n6_β
proc_everyalt_β:
jmp proc_everyalt_ω
proc_everyalt_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_everyto_α_body:
xchain00396_n0_α:
# IR_VAR
bb00397_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00396_n1_α
 xchain00396_n0_β:
 jmp xchain00396_n3_α
xchain00396_n1_α:
# IR_UNOP
bb00243_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00396_n3_α
 cmp eax, 0
 jne xchain00396_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00396_n2_α
 xchain00396_n1_β:
 jmp xchain00396_n3_α
xchain00396_n2_α:
# IR_LIT_STRING
bb00245_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00396_n4_α
 xchain00396_n2_β:
 jmp proc_everyto_ω
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "1 to 5"
xchain00396_n3_α:
# IR_LIT_INTEGER
bb00399_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00396_n5_α
 xchain00396_n3_β:
 jmp proc_everyto_ω
.Lx00400_0:
 .quad 1
xchain00396_n4_α:
# IR_RETURN
bb00247_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyto_γ
xchain00396_n5_α:
# IR_VAR
bb00401_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00396_n6_α
 xchain00396_n5_β:
 jmp proc_everyto_ω
xchain00396_n6_α:
# IR_TO
bb00402_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00403_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00396_n7_α
 xchain00396_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00403_0
xchain00396_n7_α:
# IR_LIT_INTEGER
bb00404_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00396_n8_α
 xchain00396_n7_β:
 jmp xchain00396_n6_β
.Lx00405_0:
 .quad 1
xchain00396_n8_α:
# IR_LIT_INTEGER
bb00251_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00396_n9_α
 xchain00396_n8_β:
 jmp xchain00396_n6_β
.Lx00406_0:
 .quad 5
xchain00396_n9_α:
# IR_TO
bb00407_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00408_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00396_n6_β
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00396_n9_β
 xchain00396_n9_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00408_0
proc_everyto_β:
jmp proc_everyto_ω
proc_everyto_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_evsusp_α_body:
xchain00409_n0_α:
# IR_VAR
bb00410_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00409_n1_α
 xchain00409_n0_β:
 jmp xchain00409_n3_α
xchain00409_n1_α:
# IR_UNOP
bb00252_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00409_n3_α
 cmp eax, 0
 jne xchain00409_n3_α
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 jmp xchain00409_n2_α
 xchain00409_n1_β:
 jmp xchain00409_n3_α
xchain00409_n2_α:
# IR_LIT_STRING
bb00254_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00409_n4_α
 xchain00409_n2_β:
 jmp proc_evsusp_ω
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "suspend i"
xchain00409_n3_α:
# IR_VAR
bb00412_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
 jmp xchain00409_n5_α
 xchain00409_n3_β:
 jmp proc_evsusp_ω
xchain00409_n4_α:
# IR_RETURN
bb00256_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_evsusp_γ
xchain00409_n5_α:
bb00413_α:
  .section .rodata
  .Lcall00413_pname: .string "susproc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00413_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00409_n5_β
xchain00409_n5_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00409_n5_β
proc_evsusp_β:
jmp proc_evsusp_ω
proc_evsusp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_susproc_α_body:
lea rax, [rip + xchain00414_n3_β]
mov qword ptr [r12 + 96], rax
xchain00414_n0_α:
# IR_LIT_INTEGER
bb00415_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00416_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00414_n1_α
 xchain00414_n0_β:
 jmp proc_susproc_ω
.Lx00416_0:
 .quad 1
xchain00414_n1_α:
# IR_VAR
bb00259_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00414_n2_α
 xchain00414_n1_β:
 jmp proc_susproc_ω
xchain00414_n2_α:
# IR_TO
bb00261_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00417_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00414_n3_α
 xchain00414_n2_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00417_0
xchain00414_n3_α:
# IR_SUSPEND yield+resume
bb00263_α:
 lea rax, [rip + xchain00414_n3_β]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_susproc_γ
 xchain00414_n3_β:
 jmp proc_susproc_ω
proc_susproc_β:
jmp qword ptr [r12 + 96]
proc_susproc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_intcoerce_α_body:
xchain00418_n0_α:
# IR_VAR
bb00265_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00418_n1_α
 xchain00418_n0_β:
 jmp xchain00418_n3_α
xchain00418_n1_α:
# IR_UNOP
bb00266_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00418_n3_α
 cmp eax, 0
 jne xchain00418_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00418_n2_α
 xchain00418_n1_β:
 jmp xchain00418_n3_α
xchain00418_n2_α:
# IR_LIT_STRING
bb00419_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00418_n4_α
 xchain00418_n2_β:
 jmp proc_intcoerce_ω
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "+\"407\""
xchain00418_n3_α:
# IR_LIT_INTEGER
bb00421_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00418_n5_α
 xchain00418_n3_β:
 jmp proc_intcoerce_ω
.Lx00422_0:
 .quad 1
xchain00418_n4_α:
# IR_RETURN
bb00423_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcoerce_γ
xchain00418_n5_α:
# IR_VAR
bb00268_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00418_n6_α
 xchain00418_n5_β:
 jmp proc_intcoerce_ω
xchain00418_n6_α:
# IR_TO
bb00424_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00425_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00418_n7_α
 xchain00418_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00425_0
xchain00418_n7_α:
# IR_LIT_STRING
bb00426_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00418_n8_α
 xchain00418_n7_β:
 jmp xchain00418_n6_β
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "407"
xchain00418_n8_α:
# IR_UNOP
bb00428_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00418_n6_β
 xchain00418_n8_β:
 jmp xchain00418_n6_β
proc_intcoerce_β:
jmp proc_intcoerce_ω
proc_intcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_realcoerce_α_body:
xchain00429_n0_α:
# IR_VAR
bb00272_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00429_n1_α
 xchain00429_n0_β:
 jmp xchain00429_n3_α
xchain00429_n1_α:
# IR_UNOP
bb00273_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00429_n3_α
 cmp eax, 0
 jne xchain00429_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00429_n2_α
 xchain00429_n1_β:
 jmp xchain00429_n3_α
xchain00429_n2_α:
# IR_LIT_STRING
bb00430_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00429_n4_α
 xchain00429_n2_β:
 jmp proc_realcoerce_ω
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "+\"7.25\""
xchain00429_n3_α:
# IR_LIT_INTEGER
bb00432_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00429_n5_α
 xchain00429_n3_β:
 jmp proc_realcoerce_ω
.Lx00433_0:
 .quad 1
xchain00429_n4_α:
# IR_RETURN
bb00434_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcoerce_γ
xchain00429_n5_α:
# IR_VAR
bb00435_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00429_n6_α
 xchain00429_n5_β:
 jmp proc_realcoerce_ω
xchain00429_n6_α:
# IR_TO
bb00277_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00436_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00429_n7_α
 xchain00429_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00436_0
xchain00429_n7_α:
# IR_LIT_STRING
bb00278_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00429_n8_α
 xchain00429_n7_β:
 jmp xchain00429_n6_β
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "7.25"
xchain00429_n8_α:
# IR_UNOP
bb00279_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00429_n6_β
 xchain00429_n8_β:
 jmp xchain00429_n6_β
proc_realcoerce_β:
jmp proc_realcoerce_ω
proc_realcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strcoerce_α_body:
xchain00438_n0_α:
# IR_VAR
bb00439_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00438_n1_α
 xchain00438_n0_β:
 jmp xchain00438_n3_α
xchain00438_n1_α:
# IR_UNOP
bb00440_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00438_n3_α
 cmp eax, 0
 jne xchain00438_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00438_n2_α
 xchain00438_n1_β:
 jmp xchain00438_n3_α
xchain00438_n2_α:
# IR_LIT_STRING
bb00441_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00438_n4_α
 xchain00438_n2_β:
 jmp proc_strcoerce_ω
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "*407"
xchain00438_n3_α:
# IR_LIT_INTEGER
bb00443_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00438_n5_α
 xchain00438_n3_β:
 jmp proc_strcoerce_ω
.Lx00444_0:
 .quad 1
xchain00438_n4_α:
# IR_RETURN
bb00282_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoerce_γ
xchain00438_n5_α:
# IR_VAR
bb00445_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00438_n6_α
 xchain00438_n5_β:
 jmp proc_strcoerce_ω
xchain00438_n6_α:
# IR_TO
bb00446_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00447_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00438_n7_α
 xchain00438_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00447_0
xchain00438_n7_α:
# IR_LIT_INTEGER
bb00448_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00438_n8_α
 xchain00438_n7_β:
 jmp xchain00438_n6_β
.Lx00449_0:
 .quad 407
xchain00438_n8_α:
# IR_UNOP
bb00285_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00438_n6_β
 xchain00438_n8_β:
 jmp xchain00438_n6_β
proc_strcoerce_β:
jmp proc_strcoerce_ω
proc_strcoerce_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strcoercer_α_body:
xchain00450_n0_α:
# IR_VAR
bb00286_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00450_n1_α
 xchain00450_n0_β:
 jmp xchain00450_n3_α
xchain00450_n1_α:
# IR_UNOP
bb00451_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00450_n3_α
 cmp eax, 0
 jne xchain00450_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00450_n2_α
 xchain00450_n1_β:
 jmp xchain00450_n3_α
xchain00450_n2_α:
# IR_LIT_STRING
bb00452_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00450_n4_α
 xchain00450_n2_β:
 jmp proc_strcoercer_ω
.Lx00453_0:
 .quad .Lx00453_0_s
.Lx00453_0_s:
 .string "*7.25"
xchain00450_n3_α:
# IR_LIT_INTEGER
bb00454_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00450_n5_α
 xchain00450_n3_β:
 jmp proc_strcoercer_ω
.Lx00455_0:
 .quad 1
xchain00450_n4_α:
# IR_RETURN
bb00456_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoercer_γ
xchain00450_n5_α:
# IR_VAR
bb00288_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00450_n6_α
 xchain00450_n5_β:
 jmp proc_strcoercer_ω
xchain00450_n6_α:
# IR_TO
bb00290_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00457_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00450_n7_α
 xchain00450_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00457_0
xchain00450_n7_α:
# IR_LIT_REAL
bb00292_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00450_n8_α
 xchain00450_n7_β:
 jmp xchain00450_n6_β
.Lx00458_0:
 .quad 4619848792751996928
xchain00450_n8_α:
# IR_UNOP
bb00459_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00450_n6_β
 xchain00450_n8_β:
 jmp xchain00450_n6_β
proc_strcoercer_β:
jmp proc_strcoercer_ω
proc_strcoercer_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tointeger_α_body:
xchain00460_n0_α:
# IR_VAR
bb00461_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00460_n1_α
 xchain00460_n0_β:
 jmp xchain00460_n3_α
xchain00460_n1_α:
# IR_UNOP
bb00295_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00460_n3_α
 cmp eax, 0
 jne xchain00460_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00460_n2_α
 xchain00460_n1_β:
 jmp xchain00460_n3_α
xchain00460_n2_α:
# IR_LIT_STRING
bb00296_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00460_n4_α
 xchain00460_n2_β:
 jmp proc_tointeger_ω
.Lx00462_0:
 .quad .Lx00462_0_s
.Lx00462_0_s:
 .string "integer(\"407\")"
xchain00460_n3_α:
# IR_LIT_INTEGER
bb00463_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00460_n5_α
 xchain00460_n3_β:
 jmp proc_tointeger_ω
.Lx00464_0:
 .quad 1
xchain00460_n4_α:
# IR_RETURN
bb00465_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tointeger_γ
xchain00460_n5_α:
# IR_VAR
bb00466_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00460_n6_α
 xchain00460_n5_β:
 jmp proc_tointeger_ω
xchain00460_n6_α:
# IR_TO
bb00467_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00468_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00460_n7_α
 xchain00460_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00468_0
xchain00460_n7_α:
# IR_LIT_STRING
bb00469_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00470_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00460_n8_α
 xchain00460_n7_β:
 jmp xchain00460_n6_β
.Lx00470_0:
 .quad .Lx00470_0_s
.Lx00470_0_s:
 .string "407"
xchain00460_n8_α:
bb00300_α:
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
 je xchain00460_n6_β
 jmp xchain00460_n6_β
 xchain00460_n8_β:
 jmp xchain00460_n6_β
proc_tointeger_β:
jmp proc_tointeger_ω
proc_tointeger_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_toreal_α_body:
xchain00471_n0_α:
# IR_VAR
bb00302_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00471_n1_α
 xchain00471_n0_β:
 jmp xchain00471_n3_α
xchain00471_n1_α:
# IR_UNOP
bb00472_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00471_n3_α
 cmp eax, 0
 jne xchain00471_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00471_n2_α
 xchain00471_n1_β:
 jmp xchain00471_n3_α
xchain00471_n2_α:
# IR_LIT_STRING
bb00473_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00474_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00471_n4_α
 xchain00471_n2_β:
 jmp proc_toreal_ω
.Lx00474_0:
 .quad .Lx00474_0_s
.Lx00474_0_s:
 .string "real(\"7.25\")"
xchain00471_n3_α:
# IR_LIT_INTEGER
bb00475_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00476_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00471_n5_α
 xchain00471_n3_β:
 jmp proc_toreal_ω
.Lx00476_0:
 .quad 1
xchain00471_n4_α:
# IR_RETURN
bb00304_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_toreal_γ
xchain00471_n5_α:
# IR_VAR
bb00306_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00471_n6_α
 xchain00471_n5_β:
 jmp proc_toreal_ω
xchain00471_n6_α:
# IR_TO
bb00477_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00478_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00471_n7_α
 xchain00471_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00478_0
xchain00471_n7_α:
# IR_LIT_STRING
bb00479_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00480_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00471_n8_α
 xchain00471_n7_β:
 jmp xchain00471_n6_β
.Lx00480_0:
 .quad .Lx00480_0_s
.Lx00480_0_s:
 .string "407"
xchain00471_n8_α:
bb00481_α:
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
 je xchain00471_n6_β
 jmp xchain00471_n6_β
 xchain00471_n8_β:
 jmp xchain00471_n6_β
proc_toreal_β:
jmp proc_toreal_ω
proc_toreal_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tostring_α_body:
xchain00482_n0_α:
# IR_VAR
bb00309_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00482_n1_α
 xchain00482_n0_β:
 jmp xchain00482_n3_α
xchain00482_n1_α:
# IR_UNOP
bb00310_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00482_n3_α
 cmp eax, 0
 jne xchain00482_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00482_n2_α
 xchain00482_n1_β:
 jmp xchain00482_n3_α
xchain00482_n2_α:
# IR_LIT_STRING
bb00483_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00484_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00482_n4_α
 xchain00482_n2_β:
 jmp proc_tostring_ω
.Lx00484_0:
 .quad .Lx00484_0_s
.Lx00484_0_s:
 .string "string(407)"
xchain00482_n3_α:
# IR_LIT_INTEGER
bb00485_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00482_n5_α
 xchain00482_n3_β:
 jmp proc_tostring_ω
.Lx00486_0:
 .quad 1
xchain00482_n4_α:
# IR_RETURN
bb00312_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tostring_γ
xchain00482_n5_α:
# IR_VAR
bb00487_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00482_n6_α
 xchain00482_n5_β:
 jmp proc_tostring_ω
xchain00482_n6_α:
# IR_TO
bb00488_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00489_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00482_n7_α
 xchain00482_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00489_0
xchain00482_n7_α:
# IR_LIT_INTEGER
bb00490_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00482_n8_α
 xchain00482_n7_β:
 jmp xchain00482_n6_β
.Lx00491_0:
 .quad 407
xchain00482_n8_α:
bb00316_α:
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
 je xchain00482_n6_β
 jmp xchain00482_n6_β
 xchain00482_n8_β:
 jmp xchain00482_n6_β
proc_tostring_β:
jmp proc_tostring_ω
proc_tostring_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_rtostring_α_body:
xchain00492_n0_α:
# IR_VAR
bb00317_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00492_n1_α
 xchain00492_n0_β:
 jmp xchain00492_n3_α
xchain00492_n1_α:
# IR_UNOP
bb00493_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00492_n3_α
 cmp eax, 0
 jne xchain00492_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00492_n2_α
 xchain00492_n1_β:
 jmp xchain00492_n3_α
xchain00492_n2_α:
# IR_LIT_STRING
bb00494_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00495_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00492_n4_α
 xchain00492_n2_β:
 jmp proc_rtostring_ω
.Lx00495_0:
 .quad .Lx00495_0_s
.Lx00495_0_s:
 .string "string(7.25)"
xchain00492_n3_α:
# IR_LIT_INTEGER
bb00496_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00497_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00492_n5_α
 xchain00492_n3_β:
 jmp proc_rtostring_ω
.Lx00497_0:
 .quad 1
xchain00492_n4_α:
# IR_RETURN
bb00498_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rtostring_γ
xchain00492_n5_α:
# IR_VAR
bb00320_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00492_n6_α
 xchain00492_n5_β:
 jmp proc_rtostring_ω
xchain00492_n6_α:
# IR_TO
bb00322_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00499_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00492_n7_α
 xchain00492_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00499_0
xchain00492_n7_α:
# IR_LIT_REAL
bb00500_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00501_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00492_n8_α
 xchain00492_n7_β:
 jmp xchain00492_n6_β
.Lx00501_0:
 .quad 4619848792751996928
xchain00492_n8_α:
bb00324_α:
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
 je xchain00492_n6_β
 jmp xchain00492_n6_β
 xchain00492_n8_β:
 jmp xchain00492_n6_β
proc_rtostring_β:
jmp proc_rtostring_ω
proc_rtostring_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tocset_α_body:
xchain00502_n0_α:
# IR_VAR
bb00503_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00502_n1_α
 xchain00502_n0_β:
 jmp xchain00502_n3_α
xchain00502_n1_α:
# IR_UNOP
bb00504_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00502_n3_α
 cmp eax, 0
 jne xchain00502_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00502_n2_α
 xchain00502_n1_β:
 jmp xchain00502_n3_α
xchain00502_n2_α:
# IR_LIT_STRING
bb00505_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00506_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00502_n4_α
 xchain00502_n2_β:
 jmp proc_tocset_ω
.Lx00506_0:
 .quad .Lx00506_0_s
.Lx00506_0_s:
 .string "cset(\"407\")"
xchain00502_n3_α:
# IR_LIT_INTEGER
bb00326_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00502_n5_α
 xchain00502_n3_β:
 jmp proc_tocset_ω
.Lx00507_0:
 .quad 1
xchain00502_n4_α:
# IR_RETURN
bb00327_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tocset_γ
xchain00502_n5_α:
# IR_VAR
bb00508_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00502_n6_α
 xchain00502_n5_β:
 jmp proc_tocset_ω
xchain00502_n6_α:
# IR_TO
bb00509_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00510_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00502_n7_α
 xchain00502_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00510_0
xchain00502_n7_α:
# IR_LIT_STRING
bb00511_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00512_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00502_n8_α
 xchain00502_n7_β:
 jmp xchain00502_n6_β
.Lx00512_0:
 .quad .Lx00512_0_s
.Lx00512_0_s:
 .string "407"
xchain00502_n8_α:
bb00513_α:
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
 je xchain00502_n6_β
 jmp xchain00502_n6_β
 xchain00502_n8_β:
 jmp xchain00502_n6_β
proc_tocset_β:
jmp proc_tocset_ω
proc_tocset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_charf_α_body:
xchain00514_n0_α:
# IR_VAR
bb00330_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00514_n1_α
 xchain00514_n0_β:
 jmp xchain00514_n3_α
xchain00514_n1_α:
# IR_UNOP
bb00331_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00514_n3_α
 cmp eax, 0
 jne xchain00514_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00514_n2_α
 xchain00514_n1_β:
 jmp xchain00514_n3_α
xchain00514_n2_α:
# IR_LIT_STRING
bb00515_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00516_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00514_n4_α
 xchain00514_n2_β:
 jmp proc_charf_ω
.Lx00516_0:
 .quad .Lx00516_0_s
.Lx00516_0_s:
 .string "char(65)"
xchain00514_n3_α:
# IR_LIT_INTEGER
bb00517_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00518_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00514_n5_α
 xchain00514_n3_β:
 jmp proc_charf_ω
.Lx00518_0:
 .quad 1
xchain00514_n4_α:
# IR_RETURN
bb00332_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_charf_γ
xchain00514_n5_α:
# IR_VAR
bb00519_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00514_n6_α
 xchain00514_n5_β:
 jmp proc_charf_ω
xchain00514_n6_α:
# IR_TO
bb00520_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00521_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00514_n7_α
 xchain00514_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00521_0
xchain00514_n7_α:
# IR_LIT_INTEGER
bb00522_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00523_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00514_n8_α
 xchain00514_n7_β:
 jmp xchain00514_n6_β
.Lx00523_0:
 .quad 65
xchain00514_n8_α:
bb00336_α:
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
 je xchain00514_n6_β
 jmp xchain00514_n6_β
 xchain00514_n8_β:
 jmp xchain00514_n6_β
proc_charf_β:
jmp proc_charf_ω
proc_charf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_ordf_α_body:
xchain00524_n0_α:
# IR_VAR
bb00338_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00524_n1_α
 xchain00524_n0_β:
 jmp xchain00524_n3_α
xchain00524_n1_α:
# IR_UNOP
bb00525_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00524_n3_α
 cmp eax, 0
 jne xchain00524_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00524_n2_α
 xchain00524_n1_β:
 jmp xchain00524_n3_α
xchain00524_n2_α:
# IR_LIT_STRING
bb00526_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00527_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00524_n4_α
 xchain00524_n2_β:
 jmp proc_ordf_ω
.Lx00527_0:
 .quad .Lx00527_0_s
.Lx00527_0_s:
 .string "ord(\"A\")"
xchain00524_n3_α:
# IR_LIT_INTEGER
bb00528_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00524_n5_α
 xchain00524_n3_β:
 jmp proc_ordf_ω
.Lx00529_0:
 .quad 1
xchain00524_n4_α:
# IR_RETURN
bb00530_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_ordf_γ
xchain00524_n5_α:
# IR_VAR
bb00340_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00524_n6_α
 xchain00524_n5_β:
 jmp proc_ordf_ω
xchain00524_n6_α:
# IR_TO
bb00342_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00531_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00524_n7_α
 xchain00524_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00531_0
xchain00524_n7_α:
# IR_LIT_STRING
bb00532_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00533_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00524_n8_α
 xchain00524_n7_β:
 jmp xchain00524_n6_β
.Lx00533_0:
 .quad .Lx00533_0_s
.Lx00533_0_s:
 .string "A"
xchain00524_n8_α:
bb00534_α:
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
 je xchain00524_n6_β
 jmp xchain00524_n6_β
 xchain00524_n8_β:
 jmp xchain00524_n6_β
proc_ordf_β:
jmp proc_ordf_ω
proc_ordf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strsize_α_body:
xchain00535_n0_α:
# IR_VAR
bb00343_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00535_n1_α
 xchain00535_n0_β:
 jmp xchain00535_n3_α
xchain00535_n1_α:
# IR_UNOP
bb00536_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00535_n3_α
 cmp eax, 0
 jne xchain00535_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00535_n2_α
 xchain00535_n1_β:
 jmp xchain00535_n3_α
xchain00535_n2_α:
# IR_LIT_STRING
bb00537_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00535_n4_α
 xchain00535_n2_β:
 jmp proc_strsize_ω
.Lx00538_0:
 .quad .Lx00538_0_s
.Lx00538_0_s:
 .string "*\"abcde\""
xchain00535_n3_α:
# IR_LIT_INTEGER
bb00539_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00540_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00535_n5_α
 xchain00535_n3_β:
 jmp proc_strsize_ω
.Lx00540_0:
 .quad 1
xchain00535_n4_α:
# IR_RETURN
bb00346_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsize_γ
xchain00535_n5_α:
# IR_VAR
bb00348_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00535_n6_α
 xchain00535_n5_β:
 jmp proc_strsize_ω
xchain00535_n6_α:
# IR_TO
bb00541_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00542_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00535_n7_α
 xchain00535_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00542_0
xchain00535_n7_α:
# IR_LIT_STRING
bb00543_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00535_n8_α
 xchain00535_n7_β:
 jmp xchain00535_n6_β
.Lx00544_0:
 .quad .Lx00544_0_s
.Lx00544_0_s:
 .string "abcde"
xchain00535_n8_α:
# IR_UNOP
bb00545_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00535_n6_β
 xchain00535_n8_β:
 jmp xchain00535_n6_β
proc_strsize_β:
jmp proc_strsize_ω
proc_strsize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_concat_α_body:
xchain00546_n0_α:
# IR_VAR
bb00547_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00546_n1_α
 xchain00546_n0_β:
 jmp xchain00546_n3_α
xchain00546_n1_α:
# IR_UNOP
bb00350_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00546_n3_α
 cmp eax, 0
 jne xchain00546_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00546_n2_α
 xchain00546_n1_β:
 jmp xchain00546_n3_α
xchain00546_n2_α:
# IR_LIT_STRING
bb00352_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00546_n4_α
 xchain00546_n2_β:
 jmp proc_concat_ω
.Lx00548_0:
 .quad .Lx00548_0_s
.Lx00548_0_s:
 .string "\"a\" || \"b\""
xchain00546_n3_α:
# IR_LIT_INTEGER
bb00354_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00546_n5_α
 xchain00546_n3_β:
 jmp proc_concat_ω
.Lx00549_0:
 .quad 1
xchain00546_n4_α:
# IR_RETURN
bb00356_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_concat_γ
xchain00546_n5_α:
# IR_VAR
bb00358_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00546_n6_α
 xchain00546_n5_β:
 jmp proc_concat_ω
xchain00546_n6_α:
# IR_TO
bb00359_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00550_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00546_n7_α
 xchain00546_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00550_0
xchain00546_n7_α:
# IR_LIT_STRING
bb00360_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00546_n8_α
 xchain00546_n7_β:
 jmp xchain00546_n6_β
.Lx00551_0:
 .quad .Lx00551_0_s
.Lx00551_0_s:
 .string "a"
xchain00546_n8_α:
# IR_LIT_STRING
bb00552_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00546_n9_α
 xchain00546_n8_β:
 jmp xchain00546_n6_β
.Lx00553_0:
 .quad .Lx00553_0_s
.Lx00553_0_s:
 .string "b"
xchain00546_n9_α:
bb00554_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00546_n6_β
 xchain00546_n9_β:
 jmp xchain00546_n6_β
proc_concat_β:
jmp proc_concat_ω
proc_concat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strpick_α_body:
xchain00555_n0_α:
# IR_VAR
bb00362_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00555_n1_α
 xchain00555_n0_β:
 jmp xchain00555_n3_α
xchain00555_n1_α:
# IR_UNOP
bb00556_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00555_n3_α
 cmp eax, 0
 jne xchain00555_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00555_n2_α
 xchain00555_n1_β:
 jmp xchain00555_n3_α
xchain00555_n2_α:
# IR_LIT_STRING
bb00557_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00555_n4_α
 xchain00555_n2_β:
 jmp proc_strpick_ω
.Lx00558_0:
 .quad .Lx00558_0_s
.Lx00558_0_s:
 .string "?\"abcde\""
xchain00555_n3_α:
# IR_LIT_INTEGER
bb00559_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00560_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00555_n5_α
 xchain00555_n3_β:
 jmp proc_strpick_ω
.Lx00560_0:
 .quad 1
xchain00555_n4_α:
# IR_RETURN
bb00365_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strpick_γ
xchain00555_n5_α:
# IR_VAR
bb00366_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00555_n6_α
 xchain00555_n5_β:
 jmp proc_strpick_ω
xchain00555_n6_α:
# IR_TO
bb00561_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00562_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00555_n7_α
 xchain00555_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00562_0
xchain00555_n7_α:
# IR_LIT_STRING
bb00563_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00555_n8_α
 xchain00555_n7_β:
 jmp xchain00555_n6_β
.Lx00564_0:
 .quad .Lx00564_0_s
.Lx00564_0_s:
 .string "abcde"
xchain00555_n8_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb00565_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00555_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00555_n9_α
 xchain00555_n8_β:
 jmp xchain00555_n6_β
xchain00555_n9_α:
# IR_DEREF variable -> value
bb00566_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00555_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00555_n6_β
 xchain00555_n9_β:
 jmp xchain00555_n6_β
proc_strpick_β:
jmp proc_strpick_ω
proc_strpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strbang_α_body:
xchain00567_n0_α:
# IR_VAR
bb00368_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00567_n1_α
 xchain00567_n0_β:
 jmp xchain00567_n3_α
xchain00567_n1_α:
# IR_UNOP
bb00370_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00567_n3_α
 cmp eax, 0
 jne xchain00567_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00567_n2_α
 xchain00567_n1_β:
 jmp xchain00567_n3_α
xchain00567_n2_α:
# IR_LIT_STRING
bb00372_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00567_n4_α
 xchain00567_n2_β:
 jmp proc_strbang_ω
.Lx00568_0:
 .quad .Lx00568_0_s
.Lx00568_0_s:
 .string "!\"12345\""
xchain00567_n3_α:
# IR_LIT_INTEGER
bb00373_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00567_n5_α
 xchain00567_n3_β:
 jmp proc_strbang_ω
.Lx00569_0:
 .quad 1
xchain00567_n4_α:
# IR_RETURN
bb00374_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strbang_γ
xchain00567_n5_α:
# IR_VAR
bb00376_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00567_n6_α
 xchain00567_n5_β:
 jmp proc_strbang_ω
xchain00567_n6_α:
# IR_TO
bb00570_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00571_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00567_n7_α
 xchain00567_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00571_0
xchain00567_n7_α:
# IR_LIT_STRING
bb00377_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00567_n8_α
 xchain00567_n7_β:
 jmp xchain00567_n6_β
.Lx00572_0:
 .quad .Lx00572_0_s
.Lx00572_0_s:
 .string "12345"
xchain00567_n8_α:
# IR_LIST_BANG
bb00573_α:
 mov qword ptr [r12 + 112], 0
.Lx00574_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00567_n6_β
 jmp xchain00567_n8_β
 xchain00567_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00574_0
proc_strbang_β:
jmp proc_strbang_ω
proc_strbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strsub_α_body:
xchain00575_n0_α:
# IR_VAR
bb00576_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00575_n1_α
 xchain00575_n0_β:
 jmp xchain00575_n3_α
xchain00575_n1_α:
# IR_UNOP
bb00577_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00575_n3_α
 cmp eax, 0
 jne xchain00575_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00575_n2_α
 xchain00575_n1_β:
 jmp xchain00575_n3_α
xchain00575_n2_α:
# IR_LIT_STRING
bb00379_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00575_n4_α
 xchain00575_n2_β:
 jmp proc_strsub_ω
.Lx00578_0:
 .quad .Lx00578_0_s
.Lx00578_0_s:
 .string "\"abcde\"[3]"
xchain00575_n3_α:
# IR_LIT_INTEGER
bb00381_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00575_n5_α
 xchain00575_n3_β:
 jmp proc_strsub_ω
.Lx00579_0:
 .quad 1
xchain00575_n4_α:
# IR_RETURN
bb00580_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsub_γ
xchain00575_n5_α:
# IR_VAR
bb00581_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00575_n6_α
 xchain00575_n5_β:
 jmp proc_strsub_ω
xchain00575_n6_α:
# IR_TO
bb00582_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00583_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00575_n7_α
 xchain00575_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00583_0
xchain00575_n7_α:
# IR_LIT_STRING
bb00584_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00585_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00575_n8_α
 xchain00575_n7_β:
 jmp xchain00575_n6_β
.Lx00585_0:
 .quad .Lx00585_0_s
.Lx00585_0_s:
 .string "abcde"
xchain00575_n8_α:
# IR_LIT_INTEGER
bb00383_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00575_n9_α
 xchain00575_n8_β:
 jmp xchain00575_n6_β
.Lx00586_0:
 .quad 3
xchain00575_n9_α:
# IR_SUBSCRIPT x[i] variable
bb00385_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00575_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00575_n10_α
 xchain00575_n9_β:
 jmp xchain00575_n6_β
xchain00575_n10_α:
# IR_DEREF variable -> value
bb00587_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00575_n6_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00575_n6_β
 xchain00575_n10_β:
 jmp xchain00575_n6_β
proc_strsub_β:
jmp proc_strsub_ω
proc_strsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_substr_α_body:
xchain00588_n0_α:
# IR_VAR
bb00589_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00588_n1_α
 xchain00588_n0_β:
 jmp xchain00588_n3_α
xchain00588_n1_α:
# IR_UNOP
bb00388_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00588_n3_α
 cmp eax, 0
 jne xchain00588_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00588_n2_α
 xchain00588_n1_β:
 jmp xchain00588_n3_α
xchain00588_n2_α:
# IR_LIT_STRING
bb00590_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00588_n4_α
 xchain00588_n2_β:
 jmp proc_substr_ω
.Lx00591_0:
 .quad .Lx00591_0_s
.Lx00591_0_s:
 .string "\"abcde\"[2:5]"
xchain00588_n3_α:
# IR_LIT_INTEGER
bb00592_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00588_n5_α
 xchain00588_n3_β:
 jmp proc_substr_ω
.Lx00593_0:
 .quad 1
xchain00588_n4_α:
# IR_RETURN
bb00594_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_substr_γ
xchain00588_n5_α:
# IR_VAR
bb00595_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00588_n6_α
 xchain00588_n5_β:
 jmp proc_substr_ω
xchain00588_n6_α:
# IR_TO
bb00390_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00596_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00588_n7_α
 xchain00588_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00596_0
xchain00588_n7_α:
# IR_LIT_STRING
bb00597_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00598_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00588_n8_α
 xchain00588_n7_β:
 jmp xchain00588_n6_β
.Lx00598_0:
 .quad .Lx00598_0_s
.Lx00598_0_s:
 .string "abcde"
xchain00588_n8_α:
# IR_LIT_INTEGER
bb00599_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00588_n9_α
 xchain00588_n8_β:
 jmp xchain00588_n6_β
.Lx00600_0:
 .quad 2
xchain00588_n9_α:
# IR_LIT_INTEGER
bb00393_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00588_n10_α
 xchain00588_n9_β:
 jmp xchain00588_n6_β
.Lx00601_0:
 .quad 5
xchain00588_n10_α:
# IR_SUBSCRIPT section
bb00602_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00588_n6_β
 xchain00588_n10_β:
 jmp xchain00588_n6_β
proc_substr_β:
jmp proc_substr_ω
proc_substr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_subsasg_α_body:
xchain00603_n0_α:
# IR_VAR
bb00604_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00603_n1_α
 xchain00603_n0_β:
 jmp xchain00603_n3_α
xchain00603_n1_α:
# IR_UNOP
bb00395_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00603_n3_α
 cmp eax, 0
 jne xchain00603_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00603_n2_α
 xchain00603_n1_β:
 jmp xchain00603_n3_α
xchain00603_n2_α:
# IR_LIT_STRING
bb00605_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00603_n4_α
 xchain00603_n2_β:
 jmp proc_subsasg_ω
.Lx00606_0:
 .quad .Lx00606_0_s
.Lx00606_0_s:
 .string "s[2:5] := \"x\""
xchain00603_n3_α:
# IR_LIT_INTEGER
bb00607_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00603_n5_α
 xchain00603_n3_β:
 jmp proc_subsasg_ω
.Lx00608_0:
 .quad 1
xchain00603_n4_α:
# IR_RETURN
bb00396_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_subsasg_γ
xchain00603_n5_α:
# IR_VAR
bb00609_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00603_n6_α
 xchain00603_n5_β:
 jmp proc_subsasg_ω
xchain00603_n6_α:
# IR_TO
bb00610_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00611_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00603_n7_α
 xchain00603_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00611_0
xchain00603_n7_α:
# IR_LIT_STRING
bb00612_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00603_n8_α
 xchain00603_n7_β:
 jmp xchain00603_n6_β
.Lx00613_0:
 .quad .Lx00613_0_s
.Lx00613_0_s:
 .string "abcde"
xchain00603_n8_α:
bb00398_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00603_n9_α
 xchain00603_n8_β:
 jmp xchain00603_n6_β
xchain00603_n9_α:
# IR_LIT_INTEGER
bb00400_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00603_n10_α
 xchain00603_n9_β:
 jmp xchain00603_n6_β
.Lx00614_0:
 .quad 2
xchain00603_n10_α:
# IR_LIT_INTEGER
bb00615_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00603_n11_α
 xchain00603_n10_β:
 jmp xchain00603_n6_β
.Lx00616_0:
 .quad 5
xchain00603_n11_α:
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
bb00617_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00603_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00603_n12_α
 xchain00603_n11_β:
 jmp xchain00603_n6_β
xchain00603_n12_α:
# IR_LIT_STRING
bb00618_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00603_n13_α
 xchain00603_n12_β:
 jmp xchain00603_n6_β
.Lx00619_0:
 .quad .Lx00619_0_s
.Lx00619_0_s:
 .string "x"
xchain00603_n13_α:
# IR_ASSIGN_VAR write through variable
bb00620_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00603_n6_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00603_n6_β
 xchain00603_n13_β:
 jmp xchain00603_n6_β
proc_subsasg_β:
jmp proc_subsasg_ω
proc_subsasg_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strcmp_α_body:
xchain00621_n0_α:
# IR_VAR
bb00403_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00621_n1_α
 xchain00621_n0_β:
 jmp xchain00621_n3_α
xchain00621_n1_α:
# IR_UNOP
bb00405_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00621_n3_α
 cmp eax, 0
 jne xchain00621_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00621_n2_α
 xchain00621_n1_β:
 jmp xchain00621_n3_α
xchain00621_n2_α:
# IR_LIT_STRING
bb00406_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00622_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00621_n4_α
 xchain00621_n2_β:
 jmp proc_strcmp_ω
.Lx00622_0:
 .quad .Lx00622_0_s
.Lx00622_0_s:
 .string "\"abc\">>\"aaa\""
xchain00621_n3_α:
# IR_LIT_INTEGER
bb00623_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00621_n5_α
 xchain00621_n3_β:
 jmp proc_strcmp_ω
.Lx00624_0:
 .quad 1
xchain00621_n4_α:
# IR_RETURN
bb00408_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcmp_γ
xchain00621_n5_α:
# IR_VAR
bb00409_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00621_n6_α
 xchain00621_n5_β:
 jmp proc_strcmp_ω
xchain00621_n6_α:
# IR_TO
bb00625_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00626_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00621_n7_α
 xchain00621_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00626_0
xchain00621_n7_α:
# IR_LIT_STRING
bb00627_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00628_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00621_n8_α
 xchain00621_n7_β:
 jmp xchain00621_n6_β
.Lx00628_0:
 .quad .Lx00628_0_s
.Lx00628_0_s:
 .string "abc"
xchain00621_n8_α:
# IR_LIT_STRING
bb00629_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00621_n9_α
 xchain00621_n8_β:
 jmp xchain00621_n6_β
.Lx00630_0:
 .quad .Lx00630_0_s
.Lx00630_0_s:
 .string "aaa"
xchain00621_n9_α:
bb00411_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00621_n6_β
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 jmp xchain00621_n6_β
 xchain00621_n9_β:
 jmp xchain00621_n6_β
proc_strcmp_β:
jmp proc_strcmp_ω
proc_strcmp_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_strident_α_body:
xchain00631_n0_α:
# IR_VAR
bb00632_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00631_n1_α
 xchain00631_n0_β:
 jmp xchain00631_n3_α
xchain00631_n1_α:
# IR_UNOP
bb00633_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00631_n3_α
 cmp eax, 0
 jne xchain00631_n3_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00631_n2_α
 xchain00631_n1_β:
 jmp xchain00631_n3_α
xchain00631_n2_α:
# IR_LIT_STRING
bb00634_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00631_n4_α
 xchain00631_n2_β:
 jmp proc_strident_ω
.Lx00635_0:
 .quad .Lx00635_0_s
.Lx00635_0_s:
 .string "\"abc\"===\"aaa\""
xchain00631_n3_α:
# IR_LIT_INTEGER
bb00636_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00637_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00631_n5_α
 xchain00631_n3_β:
 jmp proc_strident_ω
.Lx00637_0:
 .quad 1
xchain00631_n4_α:
# IR_RETURN
bb00414_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strident_γ
xchain00631_n5_α:
# IR_VAR
bb00416_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00631_n6_α
 xchain00631_n5_β:
 jmp proc_strident_ω
xchain00631_n6_α:
# IR_TO
bb00638_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00639_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00631_n6_β
 xchain00631_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00639_0
proc_strident_β:
jmp proc_strident_ω
proc_strident_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_replf_α_body:
xchain00640_n0_α:
# IR_VAR
bb00641_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00640_n1_α
 xchain00640_n0_β:
 jmp xchain00640_n3_α
xchain00640_n1_α:
# IR_UNOP
bb00642_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00640_n3_α
 cmp eax, 0
 jne xchain00640_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00640_n2_α
 xchain00640_n1_β:
 jmp xchain00640_n3_α
xchain00640_n2_α:
# IR_LIT_STRING
bb00417_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00640_n4_α
 xchain00640_n2_β:
 jmp proc_replf_ω
.Lx00643_0:
 .quad .Lx00643_0_s
.Lx00643_0_s:
 .string "repl(\"-\",20)"
xchain00640_n3_α:
# IR_LIT_INTEGER
bb00644_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00640_n5_α
 xchain00640_n3_β:
 jmp proc_replf_ω
.Lx00645_0:
 .quad 1
xchain00640_n4_α:
# IR_RETURN
bb00646_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_replf_γ
xchain00640_n5_α:
# IR_VAR
bb00418_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00640_n6_α
 xchain00640_n5_β:
 jmp proc_replf_ω
xchain00640_n6_α:
# IR_TO
bb00647_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00648_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00640_n7_α
 xchain00640_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00648_0
xchain00640_n7_α:
# IR_LIT_STRING
bb00649_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00640_n8_α
 xchain00640_n7_β:
 jmp xchain00640_n6_β
.Lx00650_0:
 .quad .Lx00650_0_s
.Lx00650_0_s:
 .string "-"
xchain00640_n8_α:
# IR_LIT_INTEGER
bb00651_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00652_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00640_n9_α
 xchain00640_n8_β:
 jmp xchain00640_n6_β
.Lx00652_0:
 .quad 20
xchain00640_n9_α:
bb00420_α:
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
 je xchain00640_n6_β
 jmp xchain00640_n6_β
 xchain00640_n9_β:
 jmp xchain00640_n6_β
proc_replf_β:
jmp proc_replf_ω
proc_replf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_reversef_α_body:
xchain00653_n0_α:
# IR_VAR
bb00422_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00653_n1_α
 xchain00653_n0_β:
 jmp xchain00653_n3_α
xchain00653_n1_α:
# IR_UNOP
bb00654_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00653_n3_α
 cmp eax, 0
 jne xchain00653_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00653_n2_α
 xchain00653_n1_β:
 jmp xchain00653_n3_α
xchain00653_n2_α:
# IR_LIT_STRING
bb00655_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00653_n4_α
 xchain00653_n2_β:
 jmp proc_reversef_ω
.Lx00656_0:
 .quad .Lx00656_0_s
.Lx00656_0_s:
 .string "reverse(\"a...z\")"
xchain00653_n3_α:
# IR_LIT_INTEGER
bb00657_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00658_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00653_n5_α
 xchain00653_n3_β:
 jmp proc_reversef_ω
.Lx00658_0:
 .quad 1
xchain00653_n4_α:
# IR_RETURN
bb00659_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reversef_γ
xchain00653_n5_α:
# IR_VAR
bb00425_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00653_n6_α
 xchain00653_n5_β:
 jmp proc_reversef_ω
xchain00653_n6_α:
# IR_TO
bb00427_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00660_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00653_n7_α
 xchain00653_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00660_0
xchain00653_n7_α:
# IR_LIT_STRING
bb00661_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00653_n8_α
 xchain00653_n7_β:
 jmp xchain00653_n6_β
.Lx00662_0:
 .quad .Lx00662_0_s
.Lx00662_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00653_n8_α:
bb00429_α:
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
 je xchain00653_n6_β
 jmp xchain00653_n6_β
 xchain00653_n8_β:
 jmp xchain00653_n6_β
proc_reversef_β:
jmp proc_reversef_ω
proc_reversef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_leftf_α_body:
xchain00663_n0_α:
# IR_VAR
bb00664_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00663_n1_α
 xchain00663_n0_β:
 jmp xchain00663_n3_α
xchain00663_n1_α:
# IR_UNOP
bb00665_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00663_n3_α
 cmp eax, 0
 jne xchain00663_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00663_n2_α
 xchain00663_n1_β:
 jmp xchain00663_n3_α
xchain00663_n2_α:
# IR_LIT_STRING
bb00666_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00667_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00663_n4_α
 xchain00663_n2_β:
 jmp proc_leftf_ω
.Lx00667_0:
 .quad .Lx00667_0_s
.Lx00667_0_s:
 .string "left(\"a\",10)"
xchain00663_n3_α:
# IR_LIT_INTEGER
bb00431_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00668_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00663_n5_α
 xchain00663_n3_β:
 jmp proc_leftf_ω
.Lx00668_0:
 .quad 1
xchain00663_n4_α:
# IR_RETURN
bb00433_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_leftf_γ
xchain00663_n5_α:
# IR_VAR
bb00669_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00663_n6_α
 xchain00663_n5_β:
 jmp proc_leftf_ω
xchain00663_n6_α:
# IR_TO
bb00670_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00671_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00663_n7_α
 xchain00663_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00671_0
xchain00663_n7_α:
# IR_LIT_STRING
bb00672_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00673_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00663_n8_α
 xchain00663_n7_β:
 jmp xchain00663_n6_β
.Lx00673_0:
 .quad .Lx00673_0_s
.Lx00673_0_s:
 .string "a"
xchain00663_n8_α:
# IR_LIT_INTEGER
bb00674_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00663_n9_α
 xchain00663_n8_β:
 jmp xchain00663_n6_β
.Lx00675_0:
 .quad 10
xchain00663_n9_α:
bb00436_α:
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
 je xchain00663_n6_β
 jmp xchain00663_n6_β
 xchain00663_n9_β:
 jmp xchain00663_n6_β
proc_leftf_β:
jmp proc_leftf_ω
proc_leftf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_centerf_α_body:
xchain00676_n0_α:
# IR_VAR
bb00437_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00676_n1_α
 xchain00676_n0_β:
 jmp xchain00676_n3_α
xchain00676_n1_α:
# IR_UNOP
bb00677_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00676_n3_α
 cmp eax, 0
 jne xchain00676_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00676_n2_α
 xchain00676_n1_β:
 jmp xchain00676_n3_α
xchain00676_n2_α:
# IR_LIT_STRING
bb00438_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00676_n4_α
 xchain00676_n2_β:
 jmp proc_centerf_ω
.Lx00678_0:
 .quad .Lx00678_0_s
.Lx00678_0_s:
 .string "center(\"a\",10)"
xchain00676_n3_α:
# IR_LIT_INTEGER
bb00679_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00676_n5_α
 xchain00676_n3_β:
 jmp proc_centerf_ω
.Lx00680_0:
 .quad 1
xchain00676_n4_α:
# IR_RETURN
bb00681_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_centerf_γ
xchain00676_n5_α:
# IR_VAR
bb00682_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00676_n6_α
 xchain00676_n5_β:
 jmp proc_centerf_ω
xchain00676_n6_α:
# IR_TO
bb00442_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00683_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00676_n7_α
 xchain00676_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00683_0
xchain00676_n7_α:
# IR_LIT_STRING
bb00444_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00676_n8_α
 xchain00676_n7_β:
 jmp xchain00676_n6_β
.Lx00684_0:
 .quad .Lx00684_0_s
.Lx00684_0_s:
 .string "a"
xchain00676_n8_α:
# IR_LIT_INTEGER
bb00685_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00676_n9_α
 xchain00676_n8_β:
 jmp xchain00676_n6_β
.Lx00686_0:
 .quad 10
xchain00676_n9_α:
bb00687_α:
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
 je xchain00676_n6_β
 jmp xchain00676_n6_β
 xchain00676_n9_β:
 jmp xchain00676_n6_β
proc_centerf_β:
jmp proc_centerf_ω
proc_centerf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_rightf_α_body:
xchain00688_n0_α:
# IR_VAR
bb00689_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00688_n1_α
 xchain00688_n0_β:
 jmp xchain00688_n3_α
xchain00688_n1_α:
# IR_UNOP
bb00690_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00688_n3_α
 cmp eax, 0
 jne xchain00688_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00688_n2_α
 xchain00688_n1_β:
 jmp xchain00688_n3_α
xchain00688_n2_α:
# IR_LIT_STRING
bb00447_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00688_n4_α
 xchain00688_n2_β:
 jmp proc_rightf_ω
.Lx00691_0:
 .quad .Lx00691_0_s
.Lx00691_0_s:
 .string "right(\"a\",10)"
xchain00688_n3_α:
# IR_LIT_INTEGER
bb00449_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00692_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00688_n5_α
 xchain00688_n3_β:
 jmp proc_rightf_ω
.Lx00692_0:
 .quad 1
xchain00688_n4_α:
# IR_RETURN
bb00693_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rightf_γ
xchain00688_n5_α:
# IR_VAR
bb00450_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00688_n6_α
 xchain00688_n5_β:
 jmp proc_rightf_ω
xchain00688_n6_α:
# IR_TO
bb00694_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00695_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00688_n7_α
 xchain00688_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00695_0
xchain00688_n7_α:
# IR_LIT_STRING
bb00696_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00688_n8_α
 xchain00688_n7_β:
 jmp xchain00688_n6_β
.Lx00697_0:
 .quad .Lx00697_0_s
.Lx00697_0_s:
 .string "a"
xchain00688_n8_α:
# IR_LIT_INTEGER
bb00698_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00688_n9_α
 xchain00688_n8_β:
 jmp xchain00688_n6_β
.Lx00699_0:
 .quad 10
xchain00688_n9_α:
bb00453_α:
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
 je xchain00688_n6_β
 jmp xchain00688_n6_β
 xchain00688_n9_β:
 jmp xchain00688_n6_β
proc_rightf_β:
jmp proc_rightf_ω
proc_rightf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_trimf_α_body:
xchain00700_n0_α:
# IR_VAR
bb00455_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00700_n1_α
 xchain00700_n0_β:
 jmp xchain00700_n3_α
xchain00700_n1_α:
# IR_UNOP
bb00701_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00700_n3_α
 cmp eax, 0
 jne xchain00700_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00700_n2_α
 xchain00700_n1_β:
 jmp xchain00700_n3_α
xchain00700_n2_α:
# IR_LIT_STRING
bb00702_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00703_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00700_n4_α
 xchain00700_n2_β:
 jmp proc_trimf_ω
.Lx00703_0:
 .quad .Lx00703_0_s
.Lx00703_0_s:
 .string "trim(\"a  ...\")"
xchain00700_n3_α:
# IR_LIT_INTEGER
bb00704_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00705_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00700_n5_α
 xchain00700_n3_β:
 jmp proc_trimf_ω
.Lx00705_0:
 .quad 1
xchain00700_n4_α:
# IR_RETURN
bb00706_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_trimf_γ
xchain00700_n5_α:
# IR_VAR
bb00457_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00700_n6_α
 xchain00700_n5_β:
 jmp proc_trimf_ω
xchain00700_n6_α:
# IR_TO
bb00458_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00707_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00700_n7_α
 xchain00700_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00707_0
xchain00700_n7_α:
# IR_LIT_STRING
bb00708_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00709_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00700_n8_α
 xchain00700_n7_β:
 jmp xchain00700_n6_β
.Lx00709_0:
 .quad .Lx00709_0_s
.Lx00709_0_s:
 .string "a         "
xchain00700_n8_α:
bb00460_α:
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
 je xchain00700_n6_β
 jmp xchain00700_n6_β
 xchain00700_n8_β:
 jmp xchain00700_n6_β
proc_trimf_β:
jmp proc_trimf_ω
proc_trimf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_entabf_α_body:
xchain00710_n0_α:
# IR_VAR
bb00711_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00710_n1_α
 xchain00710_n0_β:
 jmp xchain00710_n3_α
xchain00710_n1_α:
# IR_UNOP
bb00712_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00710_n3_α
 cmp eax, 0
 jne xchain00710_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00710_n2_α
 xchain00710_n1_β:
 jmp xchain00710_n3_α
xchain00710_n2_α:
# IR_LIT_STRING
bb00713_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00714_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00710_n4_α
 xchain00710_n2_β:
 jmp proc_entabf_ω
.Lx00714_0:
 .quad .Lx00714_0_s
.Lx00714_0_s:
 .string "entab(\"a  ...\")"
xchain00710_n3_α:
# IR_LIT_INTEGER
bb00462_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00710_n5_α
 xchain00710_n3_β:
 jmp proc_entabf_ω
.Lx00715_0:
 .quad 1
xchain00710_n4_α:
# IR_RETURN
bb00464_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_entabf_γ
xchain00710_n5_α:
# IR_VAR
bb00716_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00710_n6_α
 xchain00710_n5_β:
 jmp proc_entabf_ω
xchain00710_n6_α:
# IR_TO
bb00717_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00718_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00710_n7_α
 xchain00710_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00718_0
xchain00710_n7_α:
# IR_LIT_STRING
bb00719_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00720_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00710_n8_α
 xchain00710_n7_β:
 jmp xchain00710_n6_β
.Lx00720_0:
 .quad .Lx00720_0_s
.Lx00720_0_s:
 .string "a         "
xchain00710_n8_α:
bb00721_α:
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
 je xchain00710_n6_β
 jmp xchain00710_n6_β
 xchain00710_n8_β:
 jmp xchain00710_n6_β
proc_entabf_β:
jmp proc_entabf_ω
proc_entabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_detabf_α_body:
xchain00722_n0_α:
# IR_VAR
bb00468_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00722_n1_α
 xchain00722_n0_β:
 jmp xchain00722_n3_α
xchain00722_n1_α:
# IR_UNOP
bb00470_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00722_n3_α
 cmp eax, 0
 jne xchain00722_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00722_n2_α
 xchain00722_n1_β:
 jmp xchain00722_n3_α
xchain00722_n2_α:
# IR_LIT_STRING
bb00723_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00722_n4_α
 xchain00722_n2_β:
 jmp proc_detabf_ω
.Lx00724_0:
 .quad .Lx00724_0_s
.Lx00724_0_s:
 .string "detab(\"a\\tb\\tc\")"
xchain00722_n3_α:
# IR_LIT_INTEGER
bb00725_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00722_n5_α
 xchain00722_n3_β:
 jmp proc_detabf_ω
.Lx00726_0:
 .quad 1
xchain00722_n4_α:
# IR_RETURN
bb00471_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_detabf_γ
xchain00722_n5_α:
# IR_VAR
bb00727_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00722_n6_α
 xchain00722_n5_β:
 jmp proc_detabf_ω
xchain00722_n6_α:
# IR_TO
bb00728_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00729_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00722_n7_α
 xchain00722_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00729_0
xchain00722_n7_α:
# IR_LIT_STRING
bb00730_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00731_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00722_n8_α
 xchain00722_n7_β:
 jmp xchain00722_n6_β
.Lx00731_0:
 .quad .Lx00731_0_s
.Lx00731_0_s:
 .string "a\tb\tc"
xchain00722_n8_α:
bb00474_α:
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
 je xchain00722_n6_β
 jmp xchain00722_n6_β
 xchain00722_n8_β:
 jmp xchain00722_n6_β
proc_detabf_β:
jmp proc_detabf_ω
proc_detabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_mapf_α_body:
xchain00732_n0_α:
# IR_VAR
bb00476_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00732_n1_α
 xchain00732_n0_β:
 jmp xchain00732_n3_α
xchain00732_n1_α:
# IR_UNOP
bb00733_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00732_n3_α
 cmp eax, 0
 jne xchain00732_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00732_n2_α
 xchain00732_n1_β:
 jmp xchain00732_n3_α
xchain00732_n2_α:
# IR_LIT_STRING
bb00734_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00732_n4_α
 xchain00732_n2_β:
 jmp proc_mapf_ω
.Lx00735_0:
 .quad .Lx00735_0_s
.Lx00735_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
xchain00732_n3_α:
# IR_LIT_INTEGER
bb00736_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00737_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00732_n5_α
 xchain00732_n3_β:
 jmp proc_mapf_ω
.Lx00737_0:
 .quad 1
xchain00732_n4_α:
# IR_RETURN
bb00738_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mapf_γ
xchain00732_n5_α:
# IR_VAR
bb00478_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00732_n6_α
 xchain00732_n5_β:
 jmp proc_mapf_ω
xchain00732_n6_α:
# IR_TO
bb00480_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00739_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00732_n7_α
 xchain00732_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00739_0
xchain00732_n7_α:
# IR_LIT_STRING
bb00740_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00741_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00732_n8_α
 xchain00732_n7_β:
 jmp xchain00732_n6_β
.Lx00741_0:
 .quad .Lx00741_0_s
.Lx00741_0_s:
 .string "quick brown fox"
xchain00732_n8_α:
# IR_LIT_STRING
bb00742_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00743_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00732_n9_α
 xchain00732_n8_β:
 jmp xchain00732_n6_β
.Lx00743_0:
 .quad .Lx00743_0_s
.Lx00743_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00732_n9_α:
# IR_LIT_STRING
bb00482_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00744_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00732_n10_α
 xchain00732_n9_β:
 jmp xchain00732_n6_β
.Lx00744_0:
 .quad .Lx00744_0_s
.Lx00744_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
xchain00732_n10_α:
bb00745_α:
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
 je xchain00732_n6_β
 jmp xchain00732_n6_β
 xchain00732_n10_β:
 jmp xchain00732_n6_β
proc_mapf_β:
jmp proc_mapf_ω
proc_mapf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_map1_α_body:
xchain00746_n0_α:
# IR_VAR
bb00747_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00746_n1_α
 xchain00746_n0_β:
 jmp xchain00746_n3_α
xchain00746_n1_α:
# IR_UNOP
bb00748_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00746_n3_α
 cmp eax, 0
 jne xchain00746_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00746_n2_α
 xchain00746_n1_β:
 jmp xchain00746_n3_α
xchain00746_n2_α:
# IR_LIT_STRING
bb00484_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00749_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00746_n4_α
 xchain00746_n2_β:
 jmp proc_map1_ω
.Lx00749_0:
 .quad .Lx00749_0_s
.Lx00749_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
xchain00746_n3_α:
# IR_LIT_INTEGER
bb00486_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00750_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00746_n5_α
 xchain00746_n3_β:
 jmp proc_map1_ω
.Lx00750_0:
 .quad 1
xchain00746_n4_α:
# IR_RETURN
bb00751_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map1_γ
xchain00746_n5_α:
# IR_VAR
bb00752_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00746_n6_α
 xchain00746_n5_β:
 jmp proc_map1_ω
xchain00746_n6_α:
# IR_TO
bb00753_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00754_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00746_n7_α
 xchain00746_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00754_0
xchain00746_n7_α:
# IR_LIT_STRING
bb00755_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00756_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00746_n8_α
 xchain00746_n7_β:
 jmp xchain00746_n6_β
.Lx00756_0:
 .quad .Lx00756_0_s
.Lx00756_0_s:
 .string "b"
xchain00746_n8_α:
# IR_LIT_STRING
bb00489_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00757_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00746_n9_α
 xchain00746_n8_β:
 jmp xchain00746_n6_β
.Lx00757_0:
 .quad .Lx00757_0_s
.Lx00757_0_s:
 .string "ab"
xchain00746_n9_α:
# IR_LIT_STRING
bb00491_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00758_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00746_n10_α
 xchain00746_n9_β:
 jmp xchain00746_n6_β
.Lx00758_0:
 .quad .Lx00758_0_s
.Lx00758_0_s:
 .string "ba"
xchain00746_n10_α:
bb00759_α:
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
 je xchain00746_n6_β
 jmp xchain00746_n6_β
 xchain00746_n10_β:
 jmp xchain00746_n6_β
proc_map1_β:
jmp proc_map1_ω
proc_map1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_map2_α_body:
xchain00760_n0_α:
# IR_VAR
bb00761_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 392], rax
 jmp xchain00760_n1_α
 xchain00760_n0_β:
 jmp xchain00760_n3_α
xchain00760_n1_α:
# IR_UNOP
bb00492_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00760_n3_α
 cmp eax, 0
 jne xchain00760_n3_α
 mov qword ptr [r12 + 368], 0
 mov qword ptr [r12 + 376], 0
 jmp xchain00760_n2_α
 xchain00760_n1_β:
 jmp xchain00760_n3_α
xchain00760_n2_α:
# IR_LIT_STRING
bb00762_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00760_n4_α
 xchain00760_n2_β:
 jmp proc_map2_ω
.Lx00763_0:
 .quad .Lx00763_0_s
.Lx00763_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
xchain00760_n3_α:
# IR_LIT_INTEGER
bb00764_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00760_n5_α
 xchain00760_n3_β:
 jmp proc_map2_ω
.Lx00765_0:
 .quad 1
xchain00760_n4_α:
# IR_RETURN
bb00766_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map2_γ
xchain00760_n5_α:
# IR_VAR
bb00495_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00760_n6_α
 xchain00760_n5_β:
 jmp proc_map2_ω
xchain00760_n6_α:
# IR_TO
bb00497_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00767_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00760_n7_α
 xchain00760_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00767_0
xchain00760_n7_α:
# IR_LIT_STRING
bb00768_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00760_n8_α
 xchain00760_n7_β:
 jmp xchain00760_n6_β
.Lx00769_0:
 .quad .Lx00769_0_s
.Lx00769_0_s:
 .string "b"
xchain00760_n8_α:
# IR_LIT_STRING
bb00770_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00760_n9_α
 xchain00760_n8_β:
 jmp xchain00760_n6_β
.Lx00771_0:
 .quad .Lx00771_0_s
.Lx00771_0_s:
 .string "ab"
xchain00760_n9_α:
# IR_LIT_STRING
bb00772_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00773_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00760_n10_α
 xchain00760_n9_β:
 jmp xchain00760_n6_β
.Lx00773_0:
 .quad .Lx00773_0_s
.Lx00773_0_s:
 .string "ba"
xchain00760_n10_α:
bb00774_α:
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
 je xchain00760_n6_β
 jmp xchain00760_n11_α
 xchain00760_n10_β:
 jmp xchain00760_n6_β
xchain00760_n11_α:
# IR_LIT_STRING
bb00499_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00760_n12_α
 xchain00760_n11_β:
 jmp xchain00760_n6_β
.Lx00775_0:
 .quad .Lx00775_0_s
.Lx00775_0_s:
 .string "c"
xchain00760_n12_α:
# IR_LIT_STRING
bb00501_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00760_n13_α
 xchain00760_n12_β:
 jmp xchain00760_n6_β
.Lx00776_0:
 .quad .Lx00776_0_s
.Lx00776_0_s:
 .string "dc"
xchain00760_n13_α:
# IR_LIT_STRING
bb00777_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00760_n14_α
 xchain00760_n13_β:
 jmp xchain00760_n6_β
.Lx00778_0:
 .quad .Lx00778_0_s
.Lx00778_0_s:
 .string "cd"
xchain00760_n14_α:
bb00779_α:
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
 je xchain00760_n6_β
 jmp xchain00760_n15_α
 xchain00760_n14_β:
 jmp xchain00760_n6_β
xchain00760_n15_α:
 jmp xchain00760_n6_β
xchain00760_n15_β:
 jmp xchain00760_n6_β
proc_map2_β:
jmp proc_map2_ω
proc_map2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tablemap_α_body:
xchain00780_n0_α:
# IR_VAR_REF gva
bb00781_α:
 lea rdi, [rbx + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00780_n1_α
 xchain00780_n0_β:
 jmp xchain00780_n3_α
xchain00780_n1_α:
# IR_UNOP_TEST lv
bb00782_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain00780_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00780_n3_α
 cmp eax, 0
 jne xchain00780_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain00780_n2_α
 xchain00780_n1_β:
 jmp xchain00780_n3_α
xchain00780_n2_α:
# IR_LIT_INTEGER
bb00783_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00780_n4_α
 xchain00780_n2_β:
 jmp xchain00780_n3_α
.Lx00784_0:
 .quad 1
xchain00780_n3_α:
# IR_VAR
bb00506_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00780_n5_α
 xchain00780_n3_β:
 jmp xchain00780_n8_α
xchain00780_n4_α:
# IR_ASSIGN_VAR write through variable
bb00507_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00780_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00780_n6_α
 xchain00780_n4_β:
 jmp xchain00780_n3_α
xchain00780_n5_α:
# IR_UNOP
bb00785_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00780_n8_α
 cmp eax, 0
 jne xchain00780_n8_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00780_n7_α
 xchain00780_n5_β:
 jmp xchain00780_n8_α
xchain00780_n6_α:
bb00786_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1095: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1095]
 lea rsi, [r12 + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain00780_n10_α
 jmp xchain00780_n9_α
 xchain00780_n6_β:
 jmp xchain00780_n10_α
xchain00780_n7_α:
# IR_LIT_STRING
bb00787_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00780_n11_α
 xchain00780_n7_β:
 jmp proc_tablemap_ω
.Lx00788_0:
 .quad .Lx00788_0_s
.Lx00788_0_s:
 .string "T[\"b\"]"
xchain00780_n8_α:
# IR_LIT_INTEGER
bb00789_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00780_n12_α
 xchain00780_n8_β:
 jmp proc_tablemap_ω
.Lx00790_0:
 .quad 1
xchain00780_n9_α:
# IR_ASSIGN gva
bb00510_α:
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00780_n10_α
 xchain00780_n9_β:
 jmp xchain00780_n10_α
xchain00780_n10_α:
# IR_VAR_REF gva
bb00512_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00780_n13_α
 xchain00780_n10_β:
 jmp xchain00780_n18_α
xchain00780_n11_α:
# IR_RETURN
bb00791_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tablemap_γ
xchain00780_n12_α:
# IR_VAR
bb00792_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00780_n14_α
 xchain00780_n12_β:
 jmp proc_tablemap_ω
xchain00780_n13_α:
# IR_LIT_STRING
bb00514_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00780_n15_α
 xchain00780_n13_β:
 jmp xchain00780_n18_α
.Lx00793_0:
 .quad .Lx00793_0_s
.Lx00793_0_s:
 .string "a"
xchain00780_n14_α:
# IR_TO
bb00794_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00795_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00780_n16_α
 xchain00780_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00795_0
xchain00780_n15_α:
# IR_SUBSCRIPT x[i] variable
bb00796_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00780_n18_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00780_n17_α
 xchain00780_n15_β:
 jmp xchain00780_n18_α
xchain00780_n16_α:
# IR_VAR_REF gva
bb00797_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00780_n19_α
 xchain00780_n16_β:
 jmp xchain00780_n14_β
xchain00780_n17_α:
# IR_LIT_STRING
bb00516_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00780_n20_α
 xchain00780_n17_β:
 jmp xchain00780_n18_α
.Lx00798_0:
 .quad .Lx00798_0_s
.Lx00798_0_s:
 .string "b"
xchain00780_n18_α:
# IR_VAR_REF gva
bb00518_α:
 lea rdi, [rbx + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00780_n21_α
 xchain00780_n18_β:
 jmp xchain00780_n3_α
xchain00780_n19_α:
# IR_LIT_STRING
bb00799_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00780_n22_α
 xchain00780_n19_β:
 jmp xchain00780_n14_β
.Lx00800_0:
 .quad .Lx00800_0_s
.Lx00800_0_s:
 .string "b"
xchain00780_n20_α:
# IR_ASSIGN_VAR write through variable
bb00801_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00780_n18_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00780_n18_α
 xchain00780_n20_β:
 jmp xchain00780_n18_α
xchain00780_n21_α:
# IR_LIT_STRING
bb00802_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00803_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00780_n23_α
 xchain00780_n21_β:
 jmp xchain00780_n3_α
.Lx00803_0:
 .quad .Lx00803_0_s
.Lx00803_0_s:
 .string "b"
xchain00780_n22_α:
# IR_SUBSCRIPT x[i] variable
bb00804_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00780_n14_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00780_n24_α
 xchain00780_n22_β:
 jmp xchain00780_n14_β
xchain00780_n23_α:
# IR_SUBSCRIPT x[i] variable
bb00521_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00780_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00780_n25_α
 xchain00780_n23_β:
 jmp xchain00780_n3_α
xchain00780_n24_α:
# IR_DEREF variable -> value
bb00523_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00780_n14_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00780_n14_β
 xchain00780_n24_β:
 jmp xchain00780_n14_β
xchain00780_n25_α:
# IR_LIT_STRING
bb00805_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00780_n26_α
 xchain00780_n25_β:
 jmp xchain00780_n3_α
.Lx00806_0:
 .quad .Lx00806_0_s
.Lx00806_0_s:
 .string "a"
xchain00780_n26_α:
# IR_ASSIGN_VAR write through variable
bb00807_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00780_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00780_n27_α
 xchain00780_n26_β:
 jmp xchain00780_n3_α
xchain00780_n27_α:
 jmp xchain00780_n28_α
xchain00780_n27_β:
 jmp xchain00780_n3_α
xchain00780_n28_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00808_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00780_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00780_n3_α
 xchain00780_n28_β:
 jmp xchain00780_n3_α
xchain00780_n29_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00809_α:
 jmp qword ptr [r12 + 256]
 xchain00780_n29_β:
 jmp xchain00780_n3_α
proc_tablemap_β:
jmp proc_tablemap_ω
proc_tablemap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_listmap_α_body:
xchain00810_n0_α:
# IR_VAR_REF gva
bb00811_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00810_n1_α
 xchain00810_n0_β:
 jmp xchain00810_n3_α
xchain00810_n1_α:
# IR_UNOP_TEST lv
bb00527_α:
 mov eax, dword ptr [r12 + 592]
 cmp eax, 99
 je xchain00810_n3_α
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00810_n3_α
 cmp eax, 0
 jne xchain00810_n3_α
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 616], rax
 jmp xchain00810_n2_α
 xchain00810_n1_β:
 jmp xchain00810_n3_α
xchain00810_n2_α:
# IR_LIT_INTEGER
bb00529_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00810_n4_α
 xchain00810_n2_β:
 jmp xchain00810_n3_α
.Lx00812_0:
 .quad 1
xchain00810_n3_α:
# IR_VAR
bb00813_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00810_n5_α
 xchain00810_n3_β:
 jmp xchain00810_n8_α
xchain00810_n4_α:
# IR_ASSIGN_VAR write through variable
bb00814_α:
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00810_n3_α
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain00810_n6_α
 xchain00810_n4_β:
 jmp xchain00810_n3_α
xchain00810_n5_α:
# IR_UNOP
bb00815_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00810_n8_α
 cmp eax, 0
 jne xchain00810_n8_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00810_n7_α
 xchain00810_n5_β:
 jmp xchain00810_n8_α
xchain00810_n6_α:
# IR_LIT_INTEGER
bb00816_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx00817_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00810_n9_α
 xchain00810_n6_β:
 jmp xchain00810_n13_α
.Lx00817_0:
 .quad 256
xchain00810_n7_α:
# IR_LIT_STRING
bb00531_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00818_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00810_n10_α
 xchain00810_n7_β:
 jmp proc_listmap_ω
.Lx00818_0:
 .quad .Lx00818_0_s
.Lx00818_0_s:
 .string "L[ord(\"b\")]"
xchain00810_n8_α:
# IR_LIT_INTEGER
bb00533_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00810_n11_α
 xchain00810_n8_β:
 jmp proc_listmap_ω
.Lx00819_0:
 .quad 1
xchain00810_n9_α:
bb00820_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+560]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn1139: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1139]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain00810_n13_α
 jmp xchain00810_n12_α
 xchain00810_n9_β:
 jmp xchain00810_n13_α
xchain00810_n10_α:
# IR_RETURN
bb00821_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listmap_γ
xchain00810_n11_α:
# IR_VAR
bb00535_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00810_n14_α
 xchain00810_n11_β:
 jmp proc_listmap_ω
xchain00810_n12_α:
# IR_ASSIGN gva
bb00822_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00810_n13_α
 xchain00810_n12_β:
 jmp xchain00810_n13_α
xchain00810_n13_α:
# IR_VAR_REF gva
bb00823_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00810_n15_α
 xchain00810_n13_β:
 jmp xchain00810_n20_α
xchain00810_n14_α:
# IR_TO
bb00824_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00825_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00810_n16_α
 xchain00810_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00825_0
xchain00810_n15_α:
# IR_LIT_STRING
bb00538_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00826_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00810_n17_α
 xchain00810_n15_β:
 jmp xchain00810_n20_α
.Lx00826_0:
 .quad .Lx00826_0_s
.Lx00826_0_s:
 .string "a"
xchain00810_n16_α:
# IR_VAR_REF gva
bb00540_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00810_n18_α
 xchain00810_n16_β:
 jmp xchain00810_n14_β
xchain00810_n17_α:
bb00827_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+448]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn1152: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1152]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00810_n20_α
 jmp xchain00810_n19_α
 xchain00810_n17_β:
 jmp xchain00810_n20_α
xchain00810_n18_α:
# IR_LIT_STRING
bb00828_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00829_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00810_n21_α
 xchain00810_n18_β:
 jmp xchain00810_n14_β
.Lx00829_0:
 .quad .Lx00829_0_s
.Lx00829_0_s:
 .string "b"
xchain00810_n19_α:
# IR_SUBSCRIPT x[i] variable
bb00830_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00810_n20_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00810_n22_α
 xchain00810_n19_β:
 jmp xchain00810_n20_α
xchain00810_n20_α:
# IR_VAR_REF gva
bb00831_α:
 lea rdi, [rbx + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00810_n23_α
 xchain00810_n20_β:
 jmp xchain00810_n3_α
xchain00810_n21_α:
bb00542_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1158: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1158]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00810_n14_β
 jmp xchain00810_n24_α
 xchain00810_n21_β:
 jmp xchain00810_n14_β
xchain00810_n22_α:
# IR_LIT_STRING
bb00544_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx00832_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00810_n25_α
 xchain00810_n22_β:
 jmp xchain00810_n20_α
.Lx00832_0:
 .quad .Lx00832_0_s
.Lx00832_0_s:
 .string "b"
xchain00810_n23_α:
# IR_LIT_STRING
bb00833_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00834_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00810_n26_α
 xchain00810_n23_β:
 jmp xchain00810_n3_α
.Lx00834_0:
 .quad .Lx00834_0_s
.Lx00834_0_s:
 .string "b"
xchain00810_n24_α:
# IR_SUBSCRIPT x[i] variable
bb00546_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00810_n14_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00810_n27_α
 xchain00810_n24_β:
 jmp xchain00810_n14_β
xchain00810_n25_α:
# IR_ASSIGN_VAR write through variable
bb00835_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00810_n20_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00810_n20_α
 xchain00810_n25_β:
 jmp xchain00810_n20_α
xchain00810_n26_α:
bb00836_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn1164: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1164]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain00810_n3_α
 jmp xchain00810_n28_α
 xchain00810_n26_β:
 jmp xchain00810_n3_α
xchain00810_n27_α:
# IR_DEREF variable -> value
bb00837_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00810_n14_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00810_n14_β
 xchain00810_n27_β:
 jmp xchain00810_n14_β
xchain00810_n28_α:
# IR_SUBSCRIPT x[i] variable
bb00548_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00810_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00810_n29_α
 xchain00810_n28_β:
 jmp xchain00810_n3_α
xchain00810_n29_α:
# IR_LIT_STRING
bb00549_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00838_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00810_n30_α
 xchain00810_n29_β:
 jmp xchain00810_n3_α
.Lx00838_0:
 .quad .Lx00838_0_s
.Lx00838_0_s:
 .string "a"
xchain00810_n30_α:
# IR_ASSIGN_VAR write through variable
bb00839_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00810_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00810_n31_α
 xchain00810_n30_β:
 jmp xchain00810_n3_α
xchain00810_n31_α:
 jmp xchain00810_n32_α
xchain00810_n31_β:
 jmp xchain00810_n3_α
xchain00810_n32_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00840_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 280], rax
 lea rax, [rip + xchain00810_n3_α]
 mov qword ptr [r12 + 288], rax
 jmp xchain00810_n3_α
 xchain00810_n32_β:
 jmp xchain00810_n3_α
xchain00810_n33_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00841_α:
 jmp qword ptr [r12 + 288]
 xchain00810_n33_β:
 jmp xchain00810_n3_α
proc_listmap_β:
jmp proc_listmap_ω
proc_listmap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_nullscan_α_body:
xchain00842_n0_α:
# IR_VAR
bb00550_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00842_n1_α
 xchain00842_n0_β:
 jmp xchain00842_n3_α
xchain00842_n1_α:
# IR_UNOP
bb00551_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00842_n3_α
 cmp eax, 0
 jne xchain00842_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00842_n2_α
 xchain00842_n1_β:
 jmp xchain00842_n3_α
xchain00842_n2_α:
# IR_LIT_STRING
bb00553_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00843_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00842_n4_α
 xchain00842_n2_β:
 jmp proc_nullscan_ω
.Lx00843_0:
 .quad .Lx00843_0_s
.Lx00843_0_s:
 .string "s ? 0"
xchain00842_n3_α:
# IR_LIT_INTEGER
bb00844_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00845_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00842_n5_α
 xchain00842_n3_β:
 jmp proc_nullscan_ω
.Lx00845_0:
 .quad 1
xchain00842_n4_α:
# IR_RETURN
bb00555_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullscan_γ
xchain00842_n5_α:
# IR_VAR
bb00846_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00842_n6_α
 xchain00842_n5_β:
 jmp proc_nullscan_ω
xchain00842_n6_α:
# IR_TO
bb00847_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00848_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00842_n7_α
 xchain00842_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00848_0
xchain00842_n7_α:
# IR_LIT_STRING
bb00849_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00850_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00842_n8_α
 xchain00842_n7_β:
 jmp xchain00842_n6_β
.Lx00850_0:
 .quad .Lx00850_0_s
.Lx00850_0_s:
 .string "abc"
xchain00842_n8_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00842_n9_α
 xchain00842_n8_β:
 jmp xchain00842_n6_β
xchain00842_n9_α:
# IR_LIT_INTEGER
bb00560_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00851_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00842_n10_α
 xchain00842_n9_β:
 jmp proc_nullscan_ω
.Lx00851_0:
 .quad 0
xchain00842_n10_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain00842_n6_β
 xchain00842_n10_β:
 jmp xchain00842_n6_β
proc_nullscan_β:
jmp proc_nullscan_ω
proc_nullscan_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_movef_α_body:
xchain00852_n0_α:
# IR_VAR
bb00853_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00852_n1_α
 xchain00852_n0_β:
 jmp xchain00852_n3_α
xchain00852_n1_α:
# IR_UNOP
bb00854_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00852_n3_α
 cmp eax, 0
 jne xchain00852_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00852_n2_α
 xchain00852_n1_β:
 jmp xchain00852_n3_α
xchain00852_n2_α:
# IR_LIT_STRING
bb00855_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00852_n4_α
 xchain00852_n2_β:
 jmp proc_movef_ω
.Lx00856_0:
 .quad .Lx00856_0_s
.Lx00856_0_s:
 .string "move(0)"
xchain00852_n3_α:
# IR_LIT_STRING
bb00562_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00857_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00852_n5_α
 xchain00852_n3_β:
 jmp proc_movef_ω
.Lx00857_0:
 .quad .Lx00857_0_s
.Lx00857_0_s:
 .string "abcde"
xchain00852_n4_α:
# IR_RETURN
bb00564_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_movef_γ
xchain00852_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00852_n6_α
 xchain00852_n5_β:
 jmp proc_movef_ω
xchain00852_n6_α:
# IR_LIT_INTEGER
bb00858_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00859_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00852_n7_α
 xchain00852_n6_β:
 jmp xchain00852_n11_α
.Lx00859_0:
 .quad 1
xchain00852_n7_α:
# IR_VAR
bb00567_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00852_n8_α
 xchain00852_n7_β:
 jmp xchain00852_n11_α
xchain00852_n8_α:
# IR_TO
bb00860_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00861_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00852_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00852_n9_α
 xchain00852_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00861_0
xchain00852_n9_α:
# IR_LIT_INTEGER
bb00862_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00863_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00852_n10_α
 xchain00852_n9_β:
 jmp xchain00852_n8_β
.Lx00863_0:
 .quad 0
xchain00852_n10_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00864_α:
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00852_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00852_n8_β
 mov qword ptr [r12 + 144], r14
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
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00852_n8_β
 xchain00852_n10_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00852_n8_β
xchain00852_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_movef_ω
 xchain00852_n11_β:
 jmp proc_movef_ω
proc_movef_β:
jmp proc_movef_ω
proc_movef_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_mov11_α_body:
xchain00865_n0_α:
# IR_VAR
bb00569_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00865_n1_α
 xchain00865_n0_β:
 jmp xchain00865_n3_α
xchain00865_n1_α:
# IR_UNOP
bb00866_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00865_n3_α
 cmp eax, 0
 jne xchain00865_n3_α
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 jmp xchain00865_n2_α
 xchain00865_n1_β:
 jmp xchain00865_n3_α
xchain00865_n2_α:
# IR_LIT_STRING
bb00867_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00868_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00865_n4_α
 xchain00865_n2_β:
 jmp proc_mov11_ω
.Lx00868_0:
 .quad .Lx00868_0_s
.Lx00868_0_s:
 .string "move(1) & move(-1)"
xchain00865_n3_α:
# IR_LIT_STRING
bb00869_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00870_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00865_n5_α
 xchain00865_n3_β:
 jmp proc_mov11_ω
.Lx00870_0:
 .quad .Lx00870_0_s
.Lx00870_0_s:
 .string "abcde"
xchain00865_n4_α:
# IR_RETURN
bb00871_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mov11_γ
xchain00865_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00865_n6_α
 xchain00865_n5_β:
 jmp proc_mov11_ω
xchain00865_n6_α:
# IR_LIT_INTEGER
bb00572_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00872_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00865_n7_α
 xchain00865_n6_β:
 jmp xchain00865_n14_α
.Lx00872_0:
 .quad 1
xchain00865_n7_α:
# IR_VAR
bb00873_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00865_n8_α
 xchain00865_n7_β:
 jmp xchain00865_n14_α
xchain00865_n8_α:
# IR_TO
bb00574_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00874_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00865_n14_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00865_n9_α
 xchain00865_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00874_0
xchain00865_n9_α:
# IR_LIT_INTEGER
bb00575_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00875_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00865_n10_α
 xchain00865_n9_β:
 jmp xchain00865_n8_β
.Lx00875_0:
 .quad 1
xchain00865_n10_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00876_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00865_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00865_n8_β
 mov qword ptr [r12 + 192], r14
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
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00865_n11_α
 xchain00865_n10_β:
 mov r14, qword ptr [r12 + 192]
 jmp xchain00865_n8_β
xchain00865_n11_α:
# IR_LIT_INTEGER
bb00877_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00878_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00865_n12_α
 xchain00865_n11_β:
 jmp xchain00865_n8_β
.Lx00878_0:
 .quad 18446744073709551615
xchain00865_n12_α:
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
bb00879_α:
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00865_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00865_n8_β
 mov qword ptr [r12 + 144], r14
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
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00865_n13_α
 xchain00865_n12_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00865_n8_β
xchain00865_n13_α:
 jmp xchain00865_n8_β
xchain00865_n13_β:
 jmp xchain00865_n8_β
xchain00865_n14_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_mov11_ω
 xchain00865_n14_β:
 jmp proc_mov11_ω
proc_mov11_β:
jmp proc_mov11_ω
proc_mov11_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_pos11_α_body:
xchain00880_n0_α:
# IR_VAR
bb00881_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00880_n1_α
 xchain00880_n0_β:
 jmp xchain00880_n3_α
xchain00880_n1_α:
# IR_UNOP
bb00882_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00880_n3_α
 cmp eax, 0
 jne xchain00880_n3_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00880_n2_α
 xchain00880_n1_β:
 jmp xchain00880_n3_α
xchain00880_n2_α:
# IR_LIT_STRING
bb00883_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00884_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00880_n4_α
 xchain00880_n2_β:
 jmp proc_pos11_ω
.Lx00884_0:
 .quad .Lx00884_0_s
.Lx00884_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
xchain00880_n3_α:
# IR_LIT_STRING
bb00885_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00886_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00880_n5_α
 xchain00880_n3_β:
 jmp proc_pos11_ω
.Lx00886_0:
 .quad .Lx00886_0_s
.Lx00886_0_s:
 .string "abcde"
xchain00880_n4_α:
# IR_RETURN
bb00583_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pos11_γ
xchain00880_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00880_n6_α
 xchain00880_n5_β:
 jmp proc_pos11_ω
xchain00880_n6_α:
# IR_LIT_INTEGER
bb00586_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00887_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00880_n7_α
 xchain00880_n6_β:
 jmp xchain00880_n18_α
.Lx00887_0:
 .quad 1
xchain00880_n7_α:
# IR_VAR
bb00888_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00880_n8_α
 xchain00880_n7_β:
 jmp xchain00880_n18_α
xchain00880_n8_α:
# IR_TO
bb00889_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00890_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00880_n18_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00880_n9_α
 xchain00880_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00890_0
xchain00880_n9_α:
# IR_KEYWORD_pos_reg
bb00588_α:
 mov qword ptr [r12 + 240], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [r12 + 248], rax
 jmp xchain00880_n10_α
 xchain00880_n9_β:
 jmp xchain00880_n8_β
xchain00880_n10_α:
# IR_LIT_INTEGER
bb00891_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00892_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00880_n11_α
 xchain00880_n10_β:
 jmp xchain00880_n8_β
.Lx00892_0:
 .quad 1
xchain00880_n11_α:
bb00893_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00894_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00894_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00894_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00894_2
.Lx00894_1:
 mov rax, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 280]
 add rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
 jmp xchain00880_n12_α
.Lx00894_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 lea r9, [r12 + 224]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00894_3
.Lx00894_2:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00880_n8_β
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
.Lx00894_3:
 jmp xchain00880_n12_α
 xchain00880_n11_β:
 jmp xchain00880_n8_β
xchain00880_n12_α:
# BOX ICN IR_KEYWORD_ASSIGN pos reg [oasgn.r kywdpos: cvpos(v,Delta) fail->omega; delta=pos-1; result {DT_I,pos}]
bb00895_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, r15
 call rt_cvpos_pos@PLT
 cmp rax, 0
 je xchain00880_n8_β
 mov r14, rax
 sub r14, 1
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00880_n13_α
 xchain00880_n12_β:
 jmp xchain00880_n8_β
xchain00880_n13_α:
# IR_KEYWORD_pos_reg
bb00591_α:
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00880_n14_α
 xchain00880_n13_β:
 jmp xchain00880_n8_β
xchain00880_n14_α:
# IR_LIT_INTEGER
bb00593_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00896_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00880_n15_α
 xchain00880_n14_β:
 jmp xchain00880_n8_β
.Lx00896_0:
 .quad 1
xchain00880_n15_α:
bb00897_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00898_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00898_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00898_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00898_2
.Lx00898_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 200]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00880_n16_α
.Lx00898_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00898_3
.Lx00898_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00880_n8_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx00898_3:
 jmp xchain00880_n16_α
 xchain00880_n15_β:
 jmp xchain00880_n8_β
xchain00880_n16_α:
# BOX ICN IR_KEYWORD_ASSIGN pos reg [oasgn.r kywdpos: cvpos(v,Delta) fail->omega; delta=pos-1; result {DT_I,pos}]
bb00899_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, r15
 call rt_cvpos_pos@PLT
 cmp rax, 0
 je xchain00880_n8_β
 mov r14, rax
 sub r14, 1
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00880_n17_α
 xchain00880_n16_β:
 jmp xchain00880_n8_β
xchain00880_n17_α:
 jmp xchain00880_n8_β
xchain00880_n17_β:
 jmp xchain00880_n8_β
xchain00880_n18_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_pos11_ω
 xchain00880_n18_β:
 jmp proc_pos11_ω
proc_pos11_β:
jmp proc_pos11_ω
proc_pos11_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tabf_α_body:
xchain00900_n0_α:
# IR_VAR
bb00596_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00900_n1_α
 xchain00900_n0_β:
 jmp xchain00900_n3_α
xchain00900_n1_α:
# IR_UNOP
bb00598_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00900_n3_α
 cmp eax, 0
 jne xchain00900_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00900_n2_α
 xchain00900_n1_β:
 jmp xchain00900_n3_α
xchain00900_n2_α:
# IR_LIT_STRING
bb00600_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00901_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00900_n4_α
 xchain00900_n2_β:
 jmp proc_tabf_ω
.Lx00901_0:
 .quad .Lx00901_0_s
.Lx00901_0_s:
 .string "tab(3)"
xchain00900_n3_α:
# IR_LIT_STRING
bb00601_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00902_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00900_n5_α
 xchain00900_n3_β:
 jmp proc_tabf_ω
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "abcde"
xchain00900_n4_α:
# IR_RETURN
bb00903_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabf_γ
xchain00900_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00900_n6_α
 xchain00900_n5_β:
 jmp proc_tabf_ω
xchain00900_n6_α:
# IR_LIT_INTEGER
bb00904_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00905_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00900_n7_α
 xchain00900_n6_β:
 jmp xchain00900_n11_α
.Lx00905_0:
 .quad 1
xchain00900_n7_α:
# IR_VAR
bb00906_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00900_n8_α
 xchain00900_n7_β:
 jmp xchain00900_n11_α
xchain00900_n8_α:
# IR_TO
bb00907_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00908_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00900_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00900_n9_α
 xchain00900_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00908_0
xchain00900_n9_α:
# IR_LIT_INTEGER
bb00606_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00909_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00900_n10_α
 xchain00900_n9_β:
 jmp xchain00900_n8_β
.Lx00909_0:
 .quad 3
xchain00900_n10_α:
# IR_SCAN_TAB
bb00608_α:
 mov rax, 3
 cmp rax, 1
 jge .Lx00910_0
 add rax, r15
 add rax, 1
.Lx00910_0:
 cmp rax, 1
 jl xchain00900_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00900_n8_β
 mov qword ptr [r12 + 144], r14
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
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00900_n8_β
 xchain00900_n10_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00900_n8_β
xchain00900_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabf_ω
 xchain00900_n11_β:
 jmp proc_tabf_ω
proc_tabf_β:
jmp proc_tabf_ω
proc_tabf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_matchf_α_body:
xchain00911_n0_α:
# IR_VAR
bb00912_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00911_n1_α
 xchain00911_n0_β:
 jmp xchain00911_n3_α
xchain00911_n1_α:
# IR_UNOP
bb00913_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00911_n3_α
 cmp eax, 0
 jne xchain00911_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00911_n2_α
 xchain00911_n1_β:
 jmp xchain00911_n3_α
xchain00911_n2_α:
# IR_LIT_STRING
bb00914_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00915_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00911_n4_α
 xchain00911_n2_β:
 jmp proc_matchf_ω
.Lx00915_0:
 .quad .Lx00915_0_s
.Lx00915_0_s:
 .string "match(\"abc\")"
xchain00911_n3_α:
# IR_LIT_STRING
bb00611_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00916_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00911_n5_α
 xchain00911_n3_β:
 jmp proc_matchf_ω
.Lx00916_0:
 .quad .Lx00916_0_s
.Lx00916_0_s:
 .string "abcde"
xchain00911_n4_α:
# IR_RETURN
bb00613_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_matchf_γ
xchain00911_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00911_n6_α
 xchain00911_n5_β:
 jmp proc_matchf_ω
xchain00911_n6_α:
# IR_LIT_INTEGER
bb00614_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00917_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00911_n7_α
 xchain00911_n6_β:
 jmp xchain00911_n11_α
.Lx00917_0:
 .quad 1
xchain00911_n7_α:
# IR_VAR
bb00616_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00911_n8_α
 xchain00911_n7_β:
 jmp xchain00911_n11_α
xchain00911_n8_α:
# IR_TO
bb00918_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00919_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00911_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00911_n9_α
 xchain00911_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00919_0
xchain00911_n9_α:
# IR_LIT_STRING
bb00619_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00920_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00911_n10_α
 xchain00911_n9_β:
 jmp xchain00911_n8_β
.Lx00920_0:
 .quad .Lx00920_0_s
.Lx00920_0_s:
 .string "abc"
xchain00911_n10_α:
# IR_SCAN_MATCH
bb00921_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00911_n8_β
 mov rdi, qword ptr [rip + .Lx00922_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00911_n8_β
 mov qword ptr [r12 + 128], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 136], rax
 jmp xchain00911_n8_β
 xchain00911_n10_β:
 jmp xchain00911_n8_β
.Lx00922_0:
 .quad .Lx00922_0_s
.Lx00922_0_s:
 .string "abc"
xchain00911_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_matchf_ω
 xchain00911_n11_β:
 jmp proc_matchf_ω
proc_matchf_β:
jmp proc_matchf_ω
proc_matchf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tabmat_α_body:
xchain00923_n0_α:
# IR_VAR
bb00924_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 296], rax
 jmp xchain00923_n1_α
 xchain00923_n0_β:
 jmp xchain00923_n3_α
xchain00923_n1_α:
# IR_UNOP
bb00925_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00923_n3_α
 cmp eax, 0
 jne xchain00923_n3_α
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00923_n2_α
 xchain00923_n1_β:
 jmp xchain00923_n3_α
xchain00923_n2_α:
# IR_LIT_STRING
bb00926_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00927_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00923_n4_α
 xchain00923_n2_β:
 jmp proc_tabmat_ω
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "s1 ? =s2"
xchain00923_n3_α:
# IR_LIT_STRING
bb00622_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00928_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00923_n5_α
 xchain00923_n3_β:
 jmp proc_tabmat_ω
.Lx00928_0:
 .quad .Lx00928_0_s
.Lx00928_0_s:
 .string "abcde"
xchain00923_n4_α:
# IR_RETURN
bb00624_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabmat_γ
xchain00923_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00923_n6_α
 xchain00923_n5_β:
 jmp proc_tabmat_ω
xchain00923_n6_α:
# IR_LIT_INTEGER
bb00929_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00930_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00923_n7_α
 xchain00923_n6_β:
 jmp xchain00923_n12_α
.Lx00930_0:
 .quad 1
xchain00923_n7_α:
# IR_VAR
bb00931_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00923_n8_α
 xchain00923_n7_β:
 jmp xchain00923_n12_α
xchain00923_n8_α:
# IR_TO
bb00932_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00933_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00923_n12_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00923_n9_α
 xchain00923_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00933_0
xchain00923_n9_α:
# IR_LIT_STRING
bb00626_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00934_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00923_n10_α
 xchain00923_n9_β:
 jmp xchain00923_n8_β
.Lx00934_0:
 .quad .Lx00934_0_s
.Lx00934_0_s:
 .string "abd"
xchain00923_n10_α:
# IR_SCAN_MATCH
bb00628_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00923_n8_β
 mov rdi, qword ptr [rip + .Lx00935_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00923_n8_β
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 168], rax
 jmp xchain00923_n11_α
 xchain00923_n10_β:
 jmp xchain00923_n8_β
.Lx00935_0:
 .quad .Lx00935_0_s
.Lx00935_0_s:
 .string "abd"
xchain00923_n11_α:
# IR_SCAN_TAB
bb00630_α:
 mov rax, qword ptr [r12 + 168]
 cmp rax, 1
 jge .Lx00936_0
 add rax, r15
 add rax, 1
.Lx00936_0:
 cmp rax, 1
 jl xchain00923_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00923_n8_β
 mov qword ptr [r12 + 144], r14
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
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00923_n8_β
 xchain00923_n11_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00923_n8_β
xchain00923_n12_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabmat_ω
 xchain00923_n12_β:
 jmp proc_tabmat_ω
proc_tabmat_β:
jmp proc_tabmat_ω
proc_tabmat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_posf_α_body:
xchain00937_n0_α:
# IR_VAR
bb00631_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00937_n1_α
 xchain00937_n0_β:
 jmp xchain00937_n3_α
xchain00937_n1_α:
# IR_UNOP
bb00938_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00937_n3_α
 cmp eax, 0
 jne xchain00937_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00937_n2_α
 xchain00937_n1_β:
 jmp xchain00937_n3_α
xchain00937_n2_α:
# IR_LIT_STRING
bb00939_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00940_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00937_n4_α
 xchain00937_n2_β:
 jmp proc_posf_ω
.Lx00940_0:
 .quad .Lx00940_0_s
.Lx00940_0_s:
 .string "pos(-1)"
xchain00937_n3_α:
# IR_LIT_STRING
bb00941_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00942_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00937_n5_α
 xchain00937_n3_β:
 jmp proc_posf_ω
.Lx00942_0:
 .quad .Lx00942_0_s
.Lx00942_0_s:
 .string "abcde"
xchain00937_n4_α:
# IR_RETURN
bb00635_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_posf_γ
xchain00937_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00937_n6_α
 xchain00937_n5_β:
 jmp proc_posf_ω
xchain00937_n6_α:
# IR_LIT_INTEGER
bb00943_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00944_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00937_n7_α
 xchain00937_n6_β:
 jmp xchain00937_n11_α
.Lx00944_0:
 .quad 1
xchain00937_n7_α:
# IR_VAR
bb00945_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00937_n8_α
 xchain00937_n7_β:
 jmp xchain00937_n11_α
xchain00937_n8_α:
# IR_TO
bb00946_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00947_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00937_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00937_n9_α
 xchain00937_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00947_0
xchain00937_n9_α:
# IR_LIT_INTEGER
bb00948_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00949_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00937_n10_α
 xchain00937_n9_β:
 jmp xchain00937_n8_β
.Lx00949_0:
 .quad 18446744073709551615
xchain00937_n10_α:
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
bb00639_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00950_0
 add rax, r15
 add rax, 1
.Lx00950_0:
 cmp rax, 1
 jl xchain00937_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00937_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00937_n8_β
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00937_n8_β
 xchain00937_n10_β:
 jmp xchain00937_n8_β
xchain00937_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_posf_ω
 xchain00937_n11_β:
 jmp proc_posf_ω
proc_posf_β:
jmp proc_posf_ω
proc_posf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_anyf_α_body:
xchain00951_n0_α:
# IR_VAR
bb00952_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00951_n1_α
 xchain00951_n0_β:
 jmp xchain00951_n3_α
xchain00951_n1_α:
# IR_UNOP
bb00953_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00951_n3_α
 cmp eax, 0
 jne xchain00951_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00951_n2_α
 xchain00951_n1_β:
 jmp xchain00951_n3_α
xchain00951_n2_α:
# IR_LIT_STRING
bb00954_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00955_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00951_n4_α
 xchain00951_n2_β:
 jmp proc_anyf_ω
.Lx00955_0:
 .quad .Lx00955_0_s
.Lx00955_0_s:
 .string "any('aeiou')"
xchain00951_n3_α:
# IR_LIT_STRING
bb00643_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00956_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00951_n5_α
 xchain00951_n3_β:
 jmp proc_anyf_ω
.Lx00956_0:
 .quad .Lx00956_0_s
.Lx00956_0_s:
 .string "abcde"
xchain00951_n4_α:
# IR_RETURN
bb00645_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_anyf_γ
xchain00951_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00951_n6_α
 xchain00951_n5_β:
 jmp proc_anyf_ω
xchain00951_n6_α:
# IR_LIT_INTEGER
bb00957_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00958_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00951_n7_α
 xchain00951_n6_β:
 jmp xchain00951_n11_α
.Lx00958_0:
 .quad 1
xchain00951_n7_α:
# IR_VAR
bb00959_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00951_n8_α
 xchain00951_n7_β:
 jmp xchain00951_n11_α
xchain00951_n8_α:
# IR_TO
bb00960_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00961_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00951_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00951_n9_α
 xchain00951_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00961_0
xchain00951_n9_α:
# IR_LIT_CHARSET
bb00648_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00962_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00951_n10_α
 xchain00951_n9_β:
 jmp xchain00951_n8_β
.Lx00962_0:
 .quad .Lx00962_0_s
.Lx00962_0_s:
 .string "aeiou"
xchain00951_n10_α:
# IR_SCAN_ANY
bb00650_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00951_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00963_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00951_n8_β
 mov qword ptr [r12 + 128], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 136], rax
 jmp xchain00951_n8_β
 xchain00951_n10_β:
 jmp xchain00951_n8_β
.Lx00963_0:
 .quad .Lx00963_0_s
.Lx00963_0_s:
 .string "aeiou"
xchain00951_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_anyf_ω
 xchain00951_n11_β:
 jmp proc_anyf_ω
proc_anyf_β:
jmp proc_anyf_ω
proc_anyf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_manyf_α_body:
xchain00964_n0_α:
# IR_VAR
bb00965_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00964_n1_α
 xchain00964_n0_β:
 jmp xchain00964_n3_α
xchain00964_n1_α:
# IR_UNOP
bb00966_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00964_n3_α
 cmp eax, 0
 jne xchain00964_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00964_n2_α
 xchain00964_n1_β:
 jmp xchain00964_n3_α
xchain00964_n2_α:
# IR_LIT_STRING
bb00653_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00967_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00964_n4_α
 xchain00964_n2_β:
 jmp proc_manyf_ω
.Lx00967_0:
 .quad .Lx00967_0_s
.Lx00967_0_s:
 .string "many(&lcase)"
xchain00964_n3_α:
# IR_LIT_STRING
bb00968_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00969_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00964_n5_α
 xchain00964_n3_β:
 jmp proc_manyf_ω
.Lx00969_0:
 .quad .Lx00969_0_s
.Lx00969_0_s:
 .string "abcde"
xchain00964_n4_α:
# IR_RETURN
bb00970_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_manyf_γ
xchain00964_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00964_n6_α
 xchain00964_n5_β:
 jmp proc_manyf_ω
xchain00964_n6_α:
# IR_LIT_INTEGER
bb00656_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00971_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00964_n7_α
 xchain00964_n6_β:
 jmp xchain00964_n11_α
.Lx00971_0:
 .quad 1
xchain00964_n7_α:
# IR_VAR
bb00658_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00964_n8_α
 xchain00964_n7_β:
 jmp xchain00964_n11_α
xchain00964_n8_α:
# IR_TO
bb00972_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00973_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00964_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00964_n9_α
 xchain00964_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00973_0
xchain00964_n9_α:
# IR_LIT_CHARSET
bb00974_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00975_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00964_n10_α
 xchain00964_n9_β:
 jmp xchain00964_n8_β
.Lx00975_0:
 .quad .Lx00975_0_s
.Lx00975_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00964_n10_α:
# IR_SCAN_MANY
bb00976_α:
 mov eax, r14d
.Lx00977_0:
 cmp eax, r15d
 jge .Lx00977_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00977_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00977_1
 add eax, 1
 jmp .Lx00977_0
.Lx00977_1:
 cmp eax, r14d
 je xchain00964_n8_β
 mov qword ptr [r12 + 128], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 136], rcx
 jmp xchain00964_n8_β
 xchain00964_n10_β:
 jmp xchain00964_n8_β
.Lx00977_2:
 .quad .Lx00977_2_s
.Lx00977_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00964_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_manyf_ω
 xchain00964_n11_β:
 jmp proc_manyf_ω
proc_manyf_β:
jmp proc_manyf_ω
proc_manyf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_uptof_α_body:
xchain00978_n0_α:
# IR_VAR
bb00660_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00978_n1_α
 xchain00978_n0_β:
 jmp xchain00978_n3_α
xchain00978_n1_α:
# IR_UNOP
bb00662_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00978_n3_α
 cmp eax, 0
 jne xchain00978_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00978_n2_α
 xchain00978_n1_β:
 jmp xchain00978_n3_α
xchain00978_n2_α:
# IR_LIT_STRING
bb00979_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00980_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00978_n4_α
 xchain00978_n2_β:
 jmp proc_uptof_ω
.Lx00980_0:
 .quad .Lx00980_0_s
.Lx00980_0_s:
 .string "upto('d')"
xchain00978_n3_α:
# IR_LIT_STRING
bb00981_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00982_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00978_n5_α
 xchain00978_n3_β:
 jmp proc_uptof_ω
.Lx00982_0:
 .quad .Lx00982_0_s
.Lx00982_0_s:
 .string "abcde"
xchain00978_n4_α:
# IR_RETURN
bb00663_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uptof_γ
xchain00978_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00978_n6_α
 xchain00978_n5_β:
 jmp proc_uptof_ω
xchain00978_n6_α:
# IR_LIT_INTEGER
bb00983_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00984_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00978_n7_α
 xchain00978_n6_β:
 jmp xchain00978_n11_α
.Lx00984_0:
 .quad 1
xchain00978_n7_α:
# IR_VAR
bb00985_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00978_n8_α
 xchain00978_n7_β:
 jmp xchain00978_n11_α
xchain00978_n8_α:
# IR_TO
bb00667_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00986_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00978_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00978_n9_α
 xchain00978_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00986_0
xchain00978_n9_α:
# IR_LIT_CHARSET
bb00668_α:
 mov qword ptr [r12 + 160], 1
 mov dword ptr [r12 + 164], -1
 mov rax, qword ptr [rip + .Lx00987_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00978_n10_α
 xchain00978_n9_β:
 jmp xchain00978_n8_β
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "d"
xchain00978_n10_α:
# IR_SCAN_UPTO
bb00988_α:
 mov qword ptr [r12 + 144], r14
.Lx00989_0:
 mov rax, qword ptr [r12 + 144]
 cmp rax, r15
 jge xchain00978_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00989_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00989_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain00978_n8_β
.Lx00989_1:
 inc qword ptr [r12 + 144]
 jmp .Lx00989_0
 xchain00978_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx00989_0
.Lx00989_2:
 .quad .Lx00989_2_s
.Lx00989_2_s:
 .string "d"
xchain00978_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_uptof_ω
 xchain00978_n11_β:
 jmp proc_uptof_ω
proc_uptof_β:
jmp proc_uptof_ω
proc_uptof_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_findf_α_body:
xchain00990_n0_α:
# IR_VAR
bb00991_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00990_n1_α
 xchain00990_n0_β:
 jmp xchain00990_n3_α
xchain00990_n1_α:
# IR_UNOP
bb00992_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00990_n3_α
 cmp eax, 0
 jne xchain00990_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00990_n2_α
 xchain00990_n1_β:
 jmp xchain00990_n3_α
xchain00990_n2_α:
# IR_LIT_STRING
bb00671_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00993_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00990_n4_α
 xchain00990_n2_β:
 jmp proc_findf_ω
.Lx00993_0:
 .quad .Lx00993_0_s
.Lx00993_0_s:
 .string "find(\"de\")"
xchain00990_n3_α:
# IR_LIT_STRING
bb00673_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00994_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00990_n5_α
 xchain00990_n3_β:
 jmp proc_findf_ω
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "abcde"
xchain00990_n4_α:
# IR_RETURN
bb00675_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_findf_γ
xchain00990_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00990_n6_α
 xchain00990_n5_β:
 jmp proc_findf_ω
xchain00990_n6_α:
# IR_LIT_INTEGER
bb00995_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00996_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00990_n7_α
 xchain00990_n6_β:
 jmp xchain00990_n11_α
.Lx00996_0:
 .quad 1
xchain00990_n7_α:
# IR_VAR
bb00676_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00990_n8_α
 xchain00990_n7_β:
 jmp xchain00990_n11_α
xchain00990_n8_α:
# IR_TO
bb00997_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00998_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00990_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00990_n9_α
 xchain00990_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00998_0
xchain00990_n9_α:
# IR_LIT_STRING
bb00999_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01000_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00990_n10_α
 xchain00990_n9_β:
 jmp xchain00990_n8_β
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "de"
xchain00990_n10_α:
# IR_SCAN_FIND
bb01001_α:
 mov qword ptr [r12 + 144], r14
.Lx01002_0:
 mov rax, qword ptr [r12 + 144]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00990_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx01002_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx01002_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain00990_n8_β
.Lx01002_1:
 inc qword ptr [r12 + 144]
 jmp .Lx01002_0
 xchain00990_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx01002_0
xchain00990_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_findf_ω
 xchain00990_n11_β:
 jmp proc_findf_ω
proc_findf_β:
jmp proc_findf_ω
proc_findf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_balf_α_body:
xchain01003_n0_α:
# IR_VAR
bb00680_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain01003_n1_α
 xchain01003_n0_β:
 jmp xchain01003_n3_α
xchain01003_n1_α:
# IR_UNOP
bb01004_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01003_n3_α
 cmp eax, 0
 jne xchain01003_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain01003_n2_α
 xchain01003_n1_β:
 jmp xchain01003_n3_α
xchain01003_n2_α:
# IR_LIT_STRING
bb01005_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx01006_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain01003_n4_α
 xchain01003_n2_β:
 jmp proc_balf_ω
.Lx01006_0:
 .quad .Lx01006_0_s
.Lx01006_0_s:
 .string "bal('+')"
xchain01003_n3_α:
# IR_LIT_STRING
bb01007_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01008_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01003_n5_α
 xchain01003_n3_β:
 jmp proc_balf_ω
.Lx01008_0:
 .quad .Lx01008_0_s
.Lx01008_0_s:
 .string "(a*b)+(c/d)"
xchain01003_n4_α:
# IR_RETURN
bb01009_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_balf_γ
xchain01003_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain01003_n6_α
 xchain01003_n5_β:
 jmp proc_balf_ω
xchain01003_n6_α:
# IR_LIT_INTEGER
bb00684_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx01010_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain01003_n7_α
 xchain01003_n6_β:
 jmp xchain01003_n11_α
.Lx01010_0:
 .quad 1
xchain01003_n7_α:
# IR_VAR
bb00686_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain01003_n8_α
 xchain01003_n7_β:
 jmp xchain01003_n11_α
xchain01003_n8_α:
# IR_TO
bb01011_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx01012_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain01003_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain01003_n9_α
 xchain01003_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx01012_0
xchain01003_n9_α:
# IR_LIT_CHARSET
bb01013_α:
 mov qword ptr [r12 + 160], 1
 mov dword ptr [r12 + 164], -1
 mov rax, qword ptr [rip + .Lx01014_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01003_n10_α
 xchain01003_n9_β:
 jmp xchain01003_n8_β
.Lx01014_0:
 .quad .Lx01014_0_s
.Lx01014_0_s:
 .string "+"
xchain01003_n10_α:
# IR_SCAN_UPTO
bb00688_α:
 mov qword ptr [r12 + 144], r14
.Lx01015_0:
 mov rax, qword ptr [r12 + 144]
 cmp rax, r15
 jge xchain01003_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx01015_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx01015_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain01003_n8_β
.Lx01015_1:
 inc qword ptr [r12 + 144]
 jmp .Lx01015_0
 xchain01003_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx01015_0
.Lx01015_2:
 .quad .Lx01015_2_s
.Lx01015_2_s:
 .string "+"
xchain01003_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_balf_ω
 xchain01003_n11_β:
 jmp proc_balf_ω
proc_balf_β:
jmp proc_balf_ω
proc_balf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_cssize_α_body:
xchain01016_n0_α:
# IR_VAR
bb01017_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01016_n1_α
 xchain01016_n0_β:
 jmp xchain01016_n3_α
xchain01016_n1_α:
# IR_UNOP
bb01018_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01016_n3_α
 cmp eax, 0
 jne xchain01016_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01016_n2_α
 xchain01016_n1_β:
 jmp xchain01016_n3_α
xchain01016_n2_α:
# IR_LIT_STRING
bb00691_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01019_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01016_n4_α
 xchain01016_n2_β:
 jmp proc_cssize_ω
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "*&digits"
xchain01016_n3_α:
# IR_LIT_INTEGER
bb00692_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01020_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01016_n5_α
 xchain01016_n3_β:
 jmp proc_cssize_ω
.Lx01020_0:
 .quad 1
xchain01016_n4_α:
# IR_RETURN
bb01021_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cssize_γ
xchain01016_n5_α:
# IR_VAR
bb01022_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01016_n6_α
 xchain01016_n5_β:
 jmp proc_cssize_ω
xchain01016_n6_α:
# IR_TO
bb01023_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01024_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01016_n7_α
 xchain01016_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01024_0
xchain01016_n7_α:
# IR_LIT_CHARSET
bb01025_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx01026_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01016_n8_α
 xchain01016_n7_β:
 jmp xchain01016_n6_β
.Lx01026_0:
 .quad .Lx01026_0_s
.Lx01026_0_s:
 .string "0123456789"
xchain01016_n8_α:
# IR_UNOP
bb00695_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01016_n6_β
 xchain01016_n8_β:
 jmp xchain01016_n6_β
proc_cssize_β:
jmp proc_cssize_ω
proc_cssize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_cscompl_α_body:
xchain01027_n0_α:
# IR_VAR
bb00697_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01027_n1_α
 xchain01027_n0_β:
 jmp xchain01027_n3_α
xchain01027_n1_α:
# IR_UNOP
bb00699_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01027_n3_α
 cmp eax, 0
 jne xchain01027_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01027_n2_α
 xchain01027_n1_β:
 jmp xchain01027_n3_α
xchain01027_n2_α:
# IR_LIT_STRING
bb01028_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01029_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01027_n4_α
 xchain01027_n2_β:
 jmp proc_cscompl_ω
.Lx01029_0:
 .quad .Lx01029_0_s
.Lx01029_0_s:
 .string "~&digits"
xchain01027_n3_α:
# IR_LIT_INTEGER
bb01030_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01031_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01027_n5_α
 xchain01027_n3_β:
 jmp proc_cscompl_ω
.Lx01031_0:
 .quad 1
xchain01027_n4_α:
# IR_RETURN
bb00700_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cscompl_γ
xchain01027_n5_α:
# IR_VAR
bb01032_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01027_n6_α
 xchain01027_n5_β:
 jmp proc_cscompl_ω
xchain01027_n6_α:
# IR_TO
bb01033_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01034_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01027_n7_α
 xchain01027_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01034_0
xchain01027_n7_α:
# IR_LIT_CHARSET
bb01035_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx01036_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01027_n8_α
 xchain01027_n7_β:
 jmp xchain01027_n6_β
.Lx01036_0:
 .quad .Lx01036_0_s
.Lx01036_0_s:
 .string "0123456789"
xchain01027_n8_α:
# IR_UNOP
bb00703_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01027_n6_β
 xchain01027_n8_β:
 jmp xchain01027_n6_β
proc_cscompl_β:
jmp proc_cscompl_ω
proc_cscompl_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lcreate_α_body:
xchain01037_n0_α:
# IR_VAR
bb00705_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01037_n1_α
 xchain01037_n0_β:
 jmp xchain01037_n3_α
xchain01037_n1_α:
# IR_UNOP
bb01038_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01037_n3_α
 cmp eax, 0
 jne xchain01037_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01037_n2_α
 xchain01037_n1_β:
 jmp xchain01037_n3_α
xchain01037_n2_α:
# IR_LIT_STRING
bb01039_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01040_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01037_n4_α
 xchain01037_n2_β:
 jmp proc_lcreate_ω
.Lx01040_0:
 .quad .Lx01040_0_s
.Lx01040_0_s:
 .string "list(5,0)"
xchain01037_n3_α:
# IR_LIT_INTEGER
bb01041_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01042_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01037_n5_α
 xchain01037_n3_β:
 jmp proc_lcreate_ω
.Lx01042_0:
 .quad 1
xchain01037_n4_α:
# IR_RETURN
bb01043_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcreate_γ
xchain01037_n5_α:
# IR_VAR
bb00707_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01037_n6_α
 xchain01037_n5_β:
 jmp proc_lcreate_ω
xchain01037_n6_α:
# IR_TO
bb00709_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01044_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01037_n7_α
 xchain01037_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01044_0
xchain01037_n7_α:
# IR_LIT_INTEGER
bb01045_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx01046_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01037_n8_α
 xchain01037_n7_β:
 jmp xchain01037_n6_β
.Lx01046_0:
 .quad 5
xchain01037_n8_α:
# IR_LIT_INTEGER
bb01047_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01048_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01037_n9_α
 xchain01037_n8_β:
 jmp xchain01037_n6_β
.Lx01048_0:
 .quad 0
xchain01037_n9_α:
bb00710_α:
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
 je xchain01037_n6_β
 jmp xchain01037_n6_β
 xchain01037_n9_β:
 jmp xchain01037_n6_β
proc_lcreate_β:
jmp proc_lcreate_ω
proc_lcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lconst_α_body:
xchain01049_n0_α:
# IR_VAR
bb01050_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain01049_n1_α
 xchain01049_n0_β:
 jmp xchain01049_n3_α
xchain01049_n1_α:
# IR_UNOP
bb01051_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01049_n3_α
 cmp eax, 0
 jne xchain01049_n3_α
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain01049_n2_α
 xchain01049_n1_β:
 jmp xchain01049_n3_α
xchain01049_n2_α:
# IR_LIT_STRING
bb01052_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx01053_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01049_n4_α
 xchain01049_n2_β:
 jmp proc_lconst_ω
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "[1,2,3,4,5]"
xchain01049_n3_α:
# IR_LIT_INTEGER
bb00714_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01054_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01049_n5_α
 xchain01049_n3_β:
 jmp proc_lconst_ω
.Lx01054_0:
 .quad 1
xchain01049_n4_α:
# IR_RETURN
bb00715_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lconst_γ
xchain01049_n5_α:
# IR_VAR
bb01055_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01049_n6_α
 xchain01049_n5_β:
 jmp proc_lconst_ω
xchain01049_n6_α:
# IR_TO
bb01056_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01057_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01049_n7_α
 xchain01049_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01057_0
xchain01049_n7_α:
# IR_LIT_INTEGER
bb01058_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx01059_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01049_n8_α
 xchain01049_n7_β:
 jmp xchain01049_n6_β
.Lx01059_0:
 .quad 1
xchain01049_n8_α:
# IR_LIT_INTEGER
bb01060_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx01061_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain01049_n9_α
 xchain01049_n8_β:
 jmp xchain01049_n6_β
.Lx01061_0:
 .quad 2
xchain01049_n9_α:
# IR_LIT_INTEGER
bb00718_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx01062_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01049_n10_α
 xchain01049_n9_β:
 jmp xchain01049_n6_β
.Lx01062_0:
 .quad 3
xchain01049_n10_α:
# IR_LIT_INTEGER
bb00720_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx01063_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain01049_n11_α
 xchain01049_n10_β:
 jmp xchain01049_n6_β
.Lx01063_0:
 .quad 4
xchain01049_n11_α:
# IR_LIT_INTEGER
bb01064_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx01065_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01049_n12_α
 xchain01049_n11_β:
 jmp xchain01049_n6_β
.Lx01065_0:
 .quad 5
xchain01049_n12_α:
# IR_MAKE_LIST
bb01066_α:
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
 jmp xchain01049_n13_α
 xchain01049_n12_β:
 jmp xchain01049_n6_β
xchain01049_n13_α:
bb00722_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01049_n6_β
 xchain01049_n13_β:
 jmp xchain01049_n6_β
proc_lconst_β:
jmp proc_lconst_ω
proc_lconst_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lcopy_α_body:
xchain01067_n0_α:
# IR_VAR_REF gva
bb01068_α:
 lea rdi, [rbx + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain01067_n1_α
 xchain01067_n0_β:
 jmp xchain01067_n3_α
xchain01067_n1_α:
# IR_UNOP_TEST lv
bb01069_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain01067_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01067_n3_α
 cmp eax, 0
 jne xchain01067_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain01067_n2_α
 xchain01067_n1_β:
 jmp xchain01067_n3_α
xchain01067_n2_α:
# IR_LIT_INTEGER
bb01070_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx01071_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01067_n4_α
 xchain01067_n2_β:
 jmp xchain01067_n3_α
.Lx01071_0:
 .quad 1
xchain01067_n3_α:
# IR_VAR
bb00724_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01067_n5_α
 xchain01067_n3_β:
 jmp xchain01067_n8_α
xchain01067_n4_α:
# IR_ASSIGN_VAR write through variable
bb00726_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01067_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01067_n6_α
 xchain01067_n4_β:
 jmp xchain01067_n3_α
xchain01067_n5_α:
# IR_UNOP
bb01072_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01067_n8_α
 cmp eax, 0
 jne xchain01067_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01067_n7_α
 xchain01067_n5_β:
 jmp xchain01067_n8_α
xchain01067_n6_α:
# IR_LIT_INTEGER
bb01073_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01074_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01067_n9_α
 xchain01067_n6_β:
 jmp xchain01067_n3_α
.Lx01074_0:
 .quad 1
xchain01067_n7_α:
# IR_LIT_STRING
bb01075_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01076_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01067_n10_α
 xchain01067_n7_β:
 jmp proc_lcopy_ω
.Lx01076_0:
 .quad .Lx01076_0_s
.Lx01076_0_s:
 .string "copy(L)"
xchain01067_n8_α:
# IR_LIT_INTEGER
bb01077_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01078_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01067_n11_α
 xchain01067_n8_β:
 jmp proc_lcopy_ω
.Lx01078_0:
 .quad 1
xchain01067_n9_α:
# IR_LIT_INTEGER
bb00729_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01079_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01067_n12_α
 xchain01067_n9_β:
 jmp xchain01067_n3_α
.Lx01079_0:
 .quad 2
xchain01067_n10_α:
# IR_RETURN
bb00731_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcopy_γ
xchain01067_n11_α:
# IR_VAR
bb01080_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01067_n13_α
 xchain01067_n11_β:
 jmp proc_lcopy_ω
xchain01067_n12_α:
# IR_LIT_INTEGER
bb01081_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01082_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01067_n14_α
 xchain01067_n12_β:
 jmp xchain01067_n3_α
.Lx01082_0:
 .quad 3
xchain01067_n13_α:
# IR_TO
bb00732_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01083_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01067_n15_α
 xchain01067_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01083_0
xchain01067_n14_α:
# IR_LIT_INTEGER
bb01084_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01085_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01067_n16_α
 xchain01067_n14_β:
 jmp xchain01067_n3_α
.Lx01085_0:
 .quad 4
xchain01067_n15_α:
# IR_VAR gva
bb01086_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01067_n17_α
 xchain01067_n15_β:
 jmp xchain01067_n13_β
xchain01067_n16_α:
# IR_LIT_INTEGER
bb01087_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01088_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01067_n18_α
 xchain01067_n16_β:
 jmp xchain01067_n3_α
.Lx01088_0:
 .quad 5
xchain01067_n17_α:
bb00735_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1514: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1514]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01067_n13_β
 jmp xchain01067_n13_β
 xchain01067_n17_β:
 jmp xchain01067_n13_β
xchain01067_n18_α:
# IR_MAKE_LIST
bb00737_α:
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
 jmp xchain01067_n19_α
 xchain01067_n18_β:
 jmp xchain01067_n3_α
xchain01067_n19_α:
# IR_ASSIGN gva
bb01089_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01067_n20_α
 xchain01067_n19_β:
 jmp xchain01067_n3_α
xchain01067_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01090_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01067_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01067_n3_α
 xchain01067_n20_β:
 jmp xchain01067_n3_α
xchain01067_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01091_α:
 jmp qword ptr [r12 + 240]
 xchain01067_n21_β:
 jmp xchain01067_n3_α
proc_lcopy_β:
jmp proc_lcopy_ω
proc_lcopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lsort_α_body:
xchain01092_n0_α:
# IR_VAR_REF gva
bb01093_α:
 lea rdi, [rbx + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain01092_n1_α
 xchain01092_n0_β:
 jmp xchain01092_n3_α
xchain01092_n1_α:
# IR_UNOP_TEST lv
bb00739_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain01092_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01092_n3_α
 cmp eax, 0
 jne xchain01092_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain01092_n2_α
 xchain01092_n1_β:
 jmp xchain01092_n3_α
xchain01092_n2_α:
# IR_LIT_INTEGER
bb00741_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx01094_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01092_n4_α
 xchain01092_n2_β:
 jmp xchain01092_n3_α
.Lx01094_0:
 .quad 1
xchain01092_n3_α:
# IR_VAR
bb00743_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01092_n5_α
 xchain01092_n3_β:
 jmp xchain01092_n8_α
xchain01092_n4_α:
# IR_ASSIGN_VAR write through variable
bb00744_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01092_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01092_n6_α
 xchain01092_n4_β:
 jmp xchain01092_n3_α
xchain01092_n5_α:
# IR_UNOP
bb01095_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01092_n8_α
 cmp eax, 0
 jne xchain01092_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01092_n7_α
 xchain01092_n5_β:
 jmp xchain01092_n8_α
xchain01092_n6_α:
# IR_LIT_INTEGER
bb01096_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01097_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01092_n9_α
 xchain01092_n6_β:
 jmp xchain01092_n3_α
.Lx01097_0:
 .quad 2
xchain01092_n7_α:
# IR_LIT_STRING
bb00746_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01098_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01092_n10_α
 xchain01092_n7_β:
 jmp proc_lsort_ω
.Lx01098_0:
 .quad .Lx01098_0_s
.Lx01098_0_s:
 .string "sort(L)"
xchain01092_n8_α:
# IR_LIT_INTEGER
bb01099_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01100_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01092_n11_α
 xchain01092_n8_β:
 jmp proc_lsort_ω
.Lx01100_0:
 .quad 1
xchain01092_n9_α:
# IR_LIT_INTEGER
bb01101_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01102_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01092_n12_α
 xchain01092_n9_β:
 jmp xchain01092_n3_α
.Lx01102_0:
 .quad 7
xchain01092_n10_α:
# IR_RETURN
bb01103_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsort_γ
xchain01092_n11_α:
# IR_VAR
bb00749_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01092_n13_α
 xchain01092_n11_β:
 jmp proc_lsort_ω
xchain01092_n12_α:
# IR_LIT_INTEGER
bb00750_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01104_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01092_n14_α
 xchain01092_n12_β:
 jmp xchain01092_n3_α
.Lx01104_0:
 .quad 1
xchain01092_n13_α:
# IR_TO
bb01105_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01106_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01092_n15_α
 xchain01092_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01106_0
xchain01092_n14_α:
# IR_LIT_INTEGER
bb01107_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01108_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01092_n16_α
 xchain01092_n14_β:
 jmp xchain01092_n3_α
.Lx01108_0:
 .quad 8
xchain01092_n15_α:
# IR_VAR gva
bb01109_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01092_n17_α
 xchain01092_n15_β:
 jmp xchain01092_n13_β
xchain01092_n16_α:
# IR_LIT_INTEGER
bb01110_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01111_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01092_n18_α
 xchain01092_n16_β:
 jmp xchain01092_n3_α
.Lx01111_0:
 .quad 3
xchain01092_n17_α:
bb00754_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1545: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1545]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01092_n13_β
 jmp xchain01092_n13_β
 xchain01092_n17_β:
 jmp xchain01092_n13_β
xchain01092_n18_α:
# IR_MAKE_LIST
bb00756_α:
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
 jmp xchain01092_n19_α
 xchain01092_n18_β:
 jmp xchain01092_n3_α
xchain01092_n19_α:
# IR_ASSIGN gva
bb00757_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01092_n20_α
 xchain01092_n19_β:
 jmp xchain01092_n3_α
xchain01092_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00758_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01092_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01092_n3_α
 xchain01092_n20_β:
 jmp xchain01092_n3_α
xchain01092_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01112_α:
 jmp qword ptr [r12 + 240]
 xchain01092_n21_β:
 jmp xchain01092_n3_α
proc_lsort_β:
jmp proc_lsort_ω
proc_lsort_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lsize_α_body:
xchain01113_n0_α:
# IR_VAR_REF gva
bb01114_α:
 lea rdi, [rbx + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain01113_n1_α
 xchain01113_n0_β:
 jmp xchain01113_n3_α
xchain01113_n1_α:
# IR_UNOP_TEST lv
bb00760_α:
 mov eax, dword ptr [r12 + 432]
 cmp eax, 99
 je xchain01113_n3_α
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01113_n3_α
 cmp eax, 0
 jne xchain01113_n3_α
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 456], rax
 jmp xchain01113_n2_α
 xchain01113_n1_β:
 jmp xchain01113_n3_α
xchain01113_n2_α:
# IR_LIT_INTEGER
bb01115_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx01116_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain01113_n4_α
 xchain01113_n2_β:
 jmp xchain01113_n3_α
.Lx01116_0:
 .quad 1
xchain01113_n3_α:
# IR_VAR
bb01117_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01113_n5_α
 xchain01113_n3_β:
 jmp xchain01113_n8_α
xchain01113_n4_α:
# IR_ASSIGN_VAR write through variable
bb01118_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01113_n3_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain01113_n6_α
 xchain01113_n4_β:
 jmp xchain01113_n3_α
xchain01113_n5_α:
# IR_UNOP
bb00763_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01113_n8_α
 cmp eax, 0
 jne xchain01113_n8_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01113_n7_α
 xchain01113_n5_β:
 jmp xchain01113_n8_α
xchain01113_n6_α:
# IR_LIT_INTEGER
bb00765_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01119_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01113_n9_α
 xchain01113_n6_β:
 jmp xchain01113_n3_α
.Lx01119_0:
 .quad 1
xchain01113_n7_α:
# IR_LIT_STRING
bb01120_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01121_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01113_n10_α
 xchain01113_n7_β:
 jmp proc_lsize_ω
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "*L"
xchain01113_n8_α:
# IR_LIT_INTEGER
bb01122_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01123_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01113_n11_α
 xchain01113_n8_β:
 jmp proc_lsize_ω
.Lx01123_0:
 .quad 1
xchain01113_n9_α:
# IR_LIT_INTEGER
bb01124_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01125_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01113_n12_α
 xchain01113_n9_β:
 jmp xchain01113_n3_α
.Lx01125_0:
 .quad 2
xchain01113_n10_α:
# IR_RETURN
bb01126_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsize_γ
xchain01113_n11_α:
# IR_VAR
bb00767_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01113_n13_α
 xchain01113_n11_β:
 jmp proc_lsize_ω
xchain01113_n12_α:
# IR_LIT_INTEGER
bb00769_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01127_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01113_n14_α
 xchain01113_n12_β:
 jmp xchain01113_n3_α
.Lx01127_0:
 .quad 3
xchain01113_n13_α:
# IR_TO
bb00771_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01128_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01113_n15_α
 xchain01113_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01128_0
xchain01113_n14_α:
# IR_LIT_INTEGER
bb00773_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01129_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01113_n16_α
 xchain01113_n14_β:
 jmp xchain01113_n3_α
.Lx01129_0:
 .quad 4
xchain01113_n15_α:
# IR_VAR gva
bb01130_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01113_n17_α
 xchain01113_n15_β:
 jmp xchain01113_n13_β
xchain01113_n16_α:
# IR_LIT_INTEGER
bb01131_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01132_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01113_n18_α
 xchain01113_n16_β:
 jmp xchain01113_n3_α
.Lx01132_0:
 .quad 5
xchain01113_n17_α:
# IR_UNOP
bb00775_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01113_n13_β
 xchain01113_n17_β:
 jmp xchain01113_n13_β
xchain01113_n18_α:
# IR_MAKE_LIST
bb00776_α:
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
 jmp xchain01113_n19_α
 xchain01113_n18_β:
 jmp xchain01113_n3_α
xchain01113_n19_α:
# IR_ASSIGN gva
bb00778_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01113_n20_α
 xchain01113_n19_β:
 jmp xchain01113_n3_α
xchain01113_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01133_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain01113_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain01113_n3_α
 xchain01113_n20_β:
 jmp xchain01113_n3_α
xchain01113_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01134_α:
 jmp qword ptr [r12 + 224]
 xchain01113_n21_β:
 jmp xchain01113_n3_α
proc_lsize_β:
jmp proc_lsize_ω
proc_lsize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lpick_α_body:
xchain01135_n0_α:
# IR_VAR_REF gva
bb01136_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain01135_n1_α
 xchain01135_n0_β:
 jmp xchain01135_n3_α
xchain01135_n1_α:
# IR_UNOP_TEST lv
bb00780_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain01135_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01135_n3_α
 cmp eax, 0
 jne xchain01135_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain01135_n2_α
 xchain01135_n1_β:
 jmp xchain01135_n3_α
xchain01135_n2_α:
# IR_LIT_INTEGER
bb01137_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx01138_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01135_n4_α
 xchain01135_n2_β:
 jmp xchain01135_n3_α
.Lx01138_0:
 .quad 1
xchain01135_n3_α:
# IR_VAR
bb01139_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01135_n5_α
 xchain01135_n3_β:
 jmp xchain01135_n8_α
xchain01135_n4_α:
# IR_ASSIGN_VAR write through variable
bb01140_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01135_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01135_n6_α
 xchain01135_n4_β:
 jmp xchain01135_n3_α
xchain01135_n5_α:
# IR_UNOP
bb00784_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01135_n8_α
 cmp eax, 0
 jne xchain01135_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01135_n7_α
 xchain01135_n5_β:
 jmp xchain01135_n8_α
xchain01135_n6_α:
# IR_LIT_INTEGER
bb01141_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01142_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01135_n9_α
 xchain01135_n6_β:
 jmp xchain01135_n3_α
.Lx01142_0:
 .quad 1
xchain01135_n7_α:
# IR_LIT_STRING
bb01143_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01144_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01135_n10_α
 xchain01135_n7_β:
 jmp proc_lpick_ω
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "?L"
xchain01135_n8_α:
# IR_LIT_INTEGER
bb01145_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01146_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01135_n11_α
 xchain01135_n8_β:
 jmp proc_lpick_ω
.Lx01146_0:
 .quad 1
xchain01135_n9_α:
# IR_LIT_INTEGER
bb01147_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01148_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01135_n12_α
 xchain01135_n9_β:
 jmp xchain01135_n3_α
.Lx01148_0:
 .quad 2
xchain01135_n10_α:
# IR_RETURN
bb01149_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lpick_γ
xchain01135_n11_α:
# IR_VAR
bb01150_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01135_n13_α
 xchain01135_n11_β:
 jmp proc_lpick_ω
xchain01135_n12_α:
# IR_LIT_INTEGER
bb00788_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01151_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01135_n14_α
 xchain01135_n12_β:
 jmp xchain01135_n3_α
.Lx01151_0:
 .quad 3
xchain01135_n13_α:
# IR_TO
bb00790_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01152_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01135_n15_α
 xchain01135_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01152_0
xchain01135_n14_α:
# IR_LIT_INTEGER
bb01153_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01154_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01135_n16_α
 xchain01135_n14_β:
 jmp xchain01135_n3_α
.Lx01154_0:
 .quad 4
xchain01135_n15_α:
# IR_VAR_REF gva
bb01155_α:
 lea rdi, [rbx + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01135_n17_α
 xchain01135_n15_β:
 jmp xchain01135_n13_β
xchain01135_n16_α:
# IR_LIT_INTEGER
bb01156_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01157_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01135_n18_α
 xchain01135_n16_β:
 jmp xchain01135_n3_α
.Lx01157_0:
 .quad 5
xchain01135_n17_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb01158_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain01135_n13_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01135_n19_α
 xchain01135_n17_β:
 jmp xchain01135_n13_β
xchain01135_n18_α:
# IR_MAKE_LIST
bb01159_α:
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
 jmp xchain01135_n20_α
 xchain01135_n18_β:
 jmp xchain01135_n3_α
xchain01135_n19_α:
# IR_DEREF variable -> value
bb01160_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01135_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01135_n13_β
 xchain01135_n19_β:
 jmp xchain01135_n13_β
xchain01135_n20_α:
# IR_ASSIGN gva
bb00793_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01135_n21_α
 xchain01135_n20_β:
 jmp xchain01135_n3_α
xchain01135_n21_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01161_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01135_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01135_n3_α
 xchain01135_n21_β:
 jmp xchain01135_n3_α
xchain01135_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00795_α:
 jmp qword ptr [r12 + 240]
 xchain01135_n22_β:
 jmp xchain01135_n3_α
proc_lpick_β:
jmp proc_lpick_ω
proc_lpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lsubscr_α_body:
xchain01162_n0_α:
# IR_VAR_REF gva
bb01163_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain01162_n1_α
 xchain01162_n0_β:
 jmp xchain01162_n3_α
xchain01162_n1_α:
# IR_UNOP_TEST lv
bb01164_α:
 mov eax, dword ptr [r12 + 464]
 cmp eax, 99
 je xchain01162_n3_α
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01162_n3_α
 cmp eax, 0
 jne xchain01162_n3_α
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 488], rax
 jmp xchain01162_n2_α
 xchain01162_n1_β:
 jmp xchain01162_n3_α
xchain01162_n2_α:
# IR_LIT_INTEGER
bb01165_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx01166_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain01162_n4_α
 xchain01162_n2_β:
 jmp xchain01162_n3_α
.Lx01166_0:
 .quad 1
xchain01162_n3_α:
# IR_VAR
bb00798_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain01162_n5_α
 xchain01162_n3_β:
 jmp xchain01162_n8_α
xchain01162_n4_α:
# IR_ASSIGN_VAR write through variable
bb01167_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01162_n3_α
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain01162_n6_α
 xchain01162_n4_β:
 jmp xchain01162_n3_α
xchain01162_n5_α:
# IR_UNOP
bb01168_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01162_n8_α
 cmp eax, 0
 jne xchain01162_n8_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain01162_n7_α
 xchain01162_n5_β:
 jmp xchain01162_n8_α
xchain01162_n6_α:
# IR_LIT_INTEGER
bb00800_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01169_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01162_n9_α
 xchain01162_n6_β:
 jmp xchain01162_n3_α
.Lx01169_0:
 .quad 1
xchain01162_n7_α:
# IR_LIT_STRING
bb01170_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01171_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01162_n10_α
 xchain01162_n7_β:
 jmp proc_lsubscr_ω
.Lx01171_0:
 .quad .Lx01171_0_s
.Lx01171_0_s:
 .string "L[3]"
xchain01162_n8_α:
# IR_LIT_INTEGER
bb00803_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01172_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01162_n11_α
 xchain01162_n8_β:
 jmp proc_lsubscr_ω
.Lx01172_0:
 .quad 1
xchain01162_n9_α:
# IR_LIT_INTEGER
bb01173_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01174_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01162_n12_α
 xchain01162_n9_β:
 jmp xchain01162_n3_α
.Lx01174_0:
 .quad 2
xchain01162_n10_α:
# IR_RETURN
bb01175_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsubscr_γ
xchain01162_n11_α:
# IR_VAR
bb01176_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01162_n13_α
 xchain01162_n11_β:
 jmp proc_lsubscr_ω
xchain01162_n12_α:
# IR_LIT_INTEGER
bb00806_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01177_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01162_n14_α
 xchain01162_n12_β:
 jmp xchain01162_n3_α
.Lx01177_0:
 .quad 3
xchain01162_n13_α:
# IR_TO
bb01178_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01179_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01162_n15_α
 xchain01162_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01179_0
xchain01162_n14_α:
# IR_LIT_INTEGER
bb01180_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01181_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01162_n16_α
 xchain01162_n14_β:
 jmp xchain01162_n3_α
.Lx01181_0:
 .quad 4
xchain01162_n15_α:
# IR_VAR_REF gva
bb01182_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01162_n17_α
 xchain01162_n15_β:
 jmp xchain01162_n13_β
xchain01162_n16_α:
# IR_LIT_INTEGER
bb01183_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx01184_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain01162_n18_α
 xchain01162_n16_β:
 jmp xchain01162_n3_α
.Lx01184_0:
 .quad 5
xchain01162_n17_α:
# IR_LIT_INTEGER
bb01185_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01186_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01162_n19_α
 xchain01162_n17_β:
 jmp xchain01162_n13_β
.Lx01186_0:
 .quad 3
xchain01162_n18_α:
# IR_MAKE_LIST
bb01187_α:
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
 jmp xchain01162_n20_α
 xchain01162_n18_β:
 jmp xchain01162_n3_α
xchain01162_n19_α:
# IR_SUBSCRIPT x[i] variable
bb00810_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01162_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01162_n21_α
 xchain01162_n19_β:
 jmp xchain01162_n13_β
xchain01162_n20_α:
# IR_ASSIGN gva
bb01188_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01162_n22_α
 xchain01162_n20_β:
 jmp xchain01162_n3_α
xchain01162_n21_α:
# IR_DEREF variable -> value
bb01189_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01162_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01162_n13_β
 xchain01162_n21_β:
 jmp xchain01162_n13_β
xchain01162_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01190_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain01162_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain01162_n3_α
 xchain01162_n22_β:
 jmp xchain01162_n3_α
xchain01162_n23_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00812_α:
 jmp qword ptr [r12 + 256]
 xchain01162_n23_β:
 jmp xchain01162_n3_α
proc_lsubscr_β:
jmp proc_lsubscr_ω
proc_lsubscr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_lbang_α_body:
xchain01191_n0_α:
# IR_VAR_REF gva
bb01192_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain01191_n1_α
 xchain01191_n0_β:
 jmp xchain01191_n3_α
xchain01191_n1_α:
# IR_UNOP_TEST lv
bb01193_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain01191_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01191_n3_α
 cmp eax, 0
 jne xchain01191_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain01191_n2_α
 xchain01191_n1_β:
 jmp xchain01191_n3_α
xchain01191_n2_α:
# IR_LIT_INTEGER
bb01194_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx01195_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01191_n4_α
 xchain01191_n2_β:
 jmp xchain01191_n3_α
.Lx01195_0:
 .quad 1
xchain01191_n3_α:
# IR_VAR
bb01196_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01191_n5_α
 xchain01191_n3_β:
 jmp xchain01191_n8_α
xchain01191_n4_α:
# IR_ASSIGN_VAR write through variable
bb00817_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01191_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01191_n6_α
 xchain01191_n4_β:
 jmp xchain01191_n3_α
xchain01191_n5_α:
# IR_UNOP
bb00818_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01191_n8_α
 cmp eax, 0
 jne xchain01191_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01191_n7_α
 xchain01191_n5_β:
 jmp xchain01191_n8_α
xchain01191_n6_α:
# IR_LIT_INTEGER
bb00819_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01197_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01191_n9_α
 xchain01191_n6_β:
 jmp xchain01191_n3_α
.Lx01197_0:
 .quad 1
xchain01191_n7_α:
# IR_LIT_STRING
bb01198_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01199_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01191_n10_α
 xchain01191_n7_β:
 jmp proc_lbang_ω
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "!L"
xchain01191_n8_α:
# IR_LIT_INTEGER
bb01200_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01201_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01191_n11_α
 xchain01191_n8_β:
 jmp proc_lbang_ω
.Lx01201_0:
 .quad 1
xchain01191_n9_α:
# IR_LIT_INTEGER
bb01202_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01203_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01191_n12_α
 xchain01191_n9_β:
 jmp xchain01191_n3_α
.Lx01203_0:
 .quad 2
xchain01191_n10_α:
# IR_RETURN
bb01204_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lbang_γ
xchain01191_n11_α:
# IR_VAR
bb01205_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01191_n13_α
 xchain01191_n11_β:
 jmp proc_lbang_ω
xchain01191_n12_α:
# IR_LIT_INTEGER
bb01206_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01207_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01191_n14_α
 xchain01191_n12_β:
 jmp xchain01191_n3_α
.Lx01207_0:
 .quad 3
xchain01191_n13_α:
# IR_TO
bb01208_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01209_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01191_n15_α
 xchain01191_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01209_0
xchain01191_n14_α:
# IR_LIT_INTEGER
bb01210_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01211_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01191_n16_α
 xchain01191_n14_β:
 jmp xchain01191_n3_α
.Lx01211_0:
 .quad 4
xchain01191_n15_α:
# IR_VAR gva
bb01212_α:
 mov rax, qword ptr [rbx + 320]
 mov rdx, qword ptr [rbx + 328]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01191_n17_α
 xchain01191_n15_β:
 jmp xchain01191_n13_β
xchain01191_n16_α:
# IR_LIT_INTEGER
bb00825_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01213_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01191_n18_α
 xchain01191_n16_β:
 jmp xchain01191_n3_α
.Lx01213_0:
 .quad 5
xchain01191_n17_α:
# IR_LIST_BANG
bb00826_α:
 mov qword ptr [r12 + 112], 0
.Lx01214_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain01191_n13_β
 jmp xchain01191_n17_β
 xchain01191_n17_β:
 inc qword ptr [r12 + 112]
 jmp .Lx01214_0
xchain01191_n18_α:
# IR_MAKE_LIST
bb01215_α:
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
 jmp xchain01191_n19_α
 xchain01191_n18_β:
 jmp xchain01191_n3_α
xchain01191_n19_α:
# IR_ASSIGN gva
bb01216_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 320], rax
 mov qword ptr [rbx + 328], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01191_n20_α
 xchain01191_n19_β:
 jmp xchain01191_n3_α
xchain01191_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01217_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01191_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01191_n3_α
 xchain01191_n20_β:
 jmp xchain01191_n3_α
xchain01191_n21_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01218_α:
 jmp qword ptr [r12 + 240]
 xchain01191_n21_β:
 jmp xchain01191_n3_α
proc_lbang_β:
jmp proc_lbang_ω
proc_lbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_put1get1_α_body:
xchain01219_n0_α:
# IR_VAR_REF gva
bb00829_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01219_n1_α
 xchain01219_n0_β:
 jmp xchain01219_n3_α
xchain01219_n1_α:
# IR_UNOP_TEST lv
bb01220_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain01219_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01219_n3_α
 cmp eax, 0
 jne xchain01219_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain01219_n2_α
 xchain01219_n1_β:
 jmp xchain01219_n3_α
xchain01219_n2_α:
# IR_LIT_INTEGER
bb01221_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01222_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01219_n4_α
 xchain01219_n2_β:
 jmp xchain01219_n3_α
.Lx01222_0:
 .quad 1
xchain01219_n3_α:
# IR_VAR
bb01223_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01219_n5_α
 xchain01219_n3_β:
 jmp xchain01219_n8_α
xchain01219_n4_α:
# IR_ASSIGN_VAR write through variable
bb01224_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01219_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01219_n6_α
 xchain01219_n4_β:
 jmp xchain01219_n3_α
xchain01219_n5_α:
# IR_UNOP
bb01225_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01219_n8_α
 cmp eax, 0
 jne xchain01219_n8_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01219_n7_α
 xchain01219_n5_β:
 jmp xchain01219_n8_α
xchain01219_n6_α:
# IR_MAKE_LIST
bb00832_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01219_n9_α
 xchain01219_n6_β:
 jmp xchain01219_n3_α
xchain01219_n7_α:
# IR_LIT_STRING
bb00834_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01226_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01219_n10_α
 xchain01219_n7_β:
 jmp proc_put1get1_ω
.Lx01226_0:
 .quad .Lx01226_0_s
.Lx01226_0_s:
 .string "get(put(L,0))"
xchain01219_n8_α:
# IR_LIT_INTEGER
bb01227_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01228_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01219_n11_α
 xchain01219_n8_β:
 jmp proc_put1get1_ω
.Lx01228_0:
 .quad 1
xchain01219_n9_α:
# IR_ASSIGN gva
bb01229_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 352], rax
 mov qword ptr [rbx + 360], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01219_n12_α
 xchain01219_n9_β:
 jmp xchain01219_n3_α
xchain01219_n10_α:
# IR_RETURN
bb01230_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put1get1_γ
xchain01219_n11_α:
# IR_VAR
bb01231_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01219_n13_α
 xchain01219_n11_β:
 jmp proc_put1get1_ω
xchain01219_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01232_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain01219_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain01219_n3_α
 xchain01219_n12_β:
 jmp xchain01219_n3_α
xchain01219_n13_α:
# IR_TO
bb01233_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01234_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01219_n15_α
 xchain01219_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01234_0
xchain01219_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00838_α:
 jmp qword ptr [r12 + 304]
 xchain01219_n14_β:
 jmp xchain01219_n3_α
xchain01219_n15_α:
# IR_VAR gva
bb01235_α:
 mov rax, qword ptr [rbx + 352]
 mov rdx, qword ptr [rbx + 360]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01219_n16_α
 xchain01219_n15_β:
 jmp xchain01219_n13_β
xchain01219_n16_α:
# IR_LIT_INTEGER
bb01236_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01237_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01219_n17_α
 xchain01219_n16_β:
 jmp xchain01219_n13_β
.Lx01237_0:
 .quad 0
xchain01219_n17_α:
bb01238_α:
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
 je xchain01219_n13_β
 jmp xchain01219_n18_α
 xchain01219_n17_β:
 jmp xchain01219_n13_β
xchain01219_n18_α:
bb01239_α:
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
 je xchain01219_n13_β
 jmp xchain01219_n13_β
 xchain01219_n18_β:
 jmp xchain01219_n13_β
proc_put1get1_β:
jmp proc_put1get1_ω
proc_put1get1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_put2get2_α_body:
xchain01240_n0_α:
# IR_VAR_REF gva
bb01241_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain01240_n1_α
 xchain01240_n0_β:
 jmp xchain01240_n3_α
xchain01240_n1_α:
# IR_UNOP_TEST lv
bb01242_α:
 mov eax, dword ptr [r12 + 448]
 cmp eax, 99
 je xchain01240_n3_α
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01240_n3_α
 cmp eax, 0
 jne xchain01240_n3_α
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 472], rax
 jmp xchain01240_n2_α
 xchain01240_n1_β:
 jmp xchain01240_n3_α
xchain01240_n2_α:
# IR_LIT_INTEGER
bb00842_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx01243_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01240_n4_α
 xchain01240_n2_β:
 jmp xchain01240_n3_α
.Lx01243_0:
 .quad 1
xchain01240_n3_α:
# IR_VAR
bb01244_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain01240_n5_α
 xchain01240_n3_β:
 jmp xchain01240_n8_α
xchain01240_n4_α:
# IR_ASSIGN_VAR write through variable
bb01245_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01240_n3_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01240_n6_α
 xchain01240_n4_β:
 jmp xchain01240_n3_α
xchain01240_n5_α:
# IR_UNOP
bb01246_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01240_n8_α
 cmp eax, 0
 jne xchain01240_n8_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain01240_n7_α
 xchain01240_n5_β:
 jmp xchain01240_n8_α
xchain01240_n6_α:
# IR_MAKE_LIST
bb00843_α:
 lea rdi, [r12 + 448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain01240_n9_α
 xchain01240_n6_β:
 jmp xchain01240_n3_α
xchain01240_n7_α:
# IR_LIT_STRING
bb00845_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx01247_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01240_n10_α
 xchain01240_n7_β:
 jmp proc_put2get2_ω
.Lx01247_0:
 .quad .Lx01247_0_s
.Lx01247_0_s:
 .string "put(L,1,2) & [2x] get(L)"
xchain01240_n8_α:
# IR_LIT_INTEGER
bb01248_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01249_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01240_n11_α
 xchain01240_n8_β:
 jmp proc_put2get2_ω
.Lx01249_0:
 .quad 1
xchain01240_n9_α:
# IR_ASSIGN gva
bb01250_α:
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [rbx + 384], rax
 mov qword ptr [rbx + 392], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01240_n12_α
 xchain01240_n9_β:
 jmp xchain01240_n3_α
xchain01240_n10_α:
# IR_RETURN
bb01251_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put2get2_γ
xchain01240_n11_α:
# IR_VAR
bb01252_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01240_n13_α
 xchain01240_n11_β:
 jmp proc_put2get2_ω
xchain01240_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00848_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
 lea rax, [rip + xchain01240_n3_α]
 mov qword ptr [r12 + 400], rax
 jmp xchain01240_n3_α
 xchain01240_n12_β:
 jmp xchain01240_n3_α
xchain01240_n13_α:
# IR_TO
bb00850_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01253_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01240_n15_α
 xchain01240_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01253_0
xchain01240_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01254_α:
 jmp qword ptr [r12 + 400]
 xchain01240_n14_β:
 jmp xchain01240_n3_α
xchain01240_n15_α:
# IR_VAR gva
bb01255_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01240_n16_α
 xchain01240_n15_β:
 jmp xchain01240_n13_β
xchain01240_n16_α:
# IR_LIT_INTEGER
bb00851_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx01256_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01240_n17_α
 xchain01240_n16_β:
 jmp xchain01240_n13_β
.Lx01256_0:
 .quad 1
xchain01240_n17_α:
# IR_LIT_INTEGER
bb01257_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx01258_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain01240_n18_α
 xchain01240_n17_β:
 jmp xchain01240_n13_β
.Lx01258_0:
 .quad 2
xchain01240_n18_α:
bb01259_α:
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
 je xchain01240_n13_β
 jmp xchain01240_n19_α
 xchain01240_n18_β:
 jmp xchain01240_n13_β
xchain01240_n19_α:
# IR_VAR gva
bb00852_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01240_n20_α
 xchain01240_n19_β:
 jmp xchain01240_n13_β
xchain01240_n20_α:
bb01260_α:
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
 je xchain01240_n13_β
 jmp xchain01240_n21_α
 xchain01240_n20_β:
 jmp xchain01240_n13_β
xchain01240_n21_α:
# IR_VAR gva
bb01261_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01240_n22_α
 xchain01240_n21_β:
 jmp xchain01240_n13_β
xchain01240_n22_α:
bb01262_α:
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
 je xchain01240_n13_β
 jmp xchain01240_n23_α
 xchain01240_n22_β:
 jmp xchain01240_n13_β
xchain01240_n23_α:
 jmp xchain01240_n13_β
xchain01240_n23_β:
 jmp xchain01240_n13_β
proc_put2get2_β:
jmp proc_put2get2_ω
proc_put2get2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_put3get3_α_body:
xchain01263_n0_α:
# IR_VAR_REF gva
bb00857_α:
 lea rdi, [rbx + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain01263_n1_α
 xchain01263_n0_β:
 jmp xchain01263_n3_α
xchain01263_n1_α:
# IR_UNOP_TEST lv
bb01264_α:
 mov eax, dword ptr [r12 + 528]
 cmp eax, 99
 je xchain01263_n3_α
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01263_n3_α
 cmp eax, 0
 jne xchain01263_n3_α
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 552], rax
 jmp xchain01263_n2_α
 xchain01263_n1_β:
 jmp xchain01263_n3_α
xchain01263_n2_α:
# IR_LIT_INTEGER
bb01265_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx01266_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain01263_n4_α
 xchain01263_n2_β:
 jmp xchain01263_n3_α
.Lx01266_0:
 .quad 1
xchain01263_n3_α:
# IR_VAR
bb01267_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain01263_n5_α
 xchain01263_n3_β:
 jmp xchain01263_n8_α
xchain01263_n4_α:
# IR_ASSIGN_VAR write through variable
bb00859_α:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01263_n3_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain01263_n6_α
 xchain01263_n4_β:
 jmp xchain01263_n3_α
xchain01263_n5_α:
# IR_UNOP
bb01268_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01263_n8_α
 cmp eax, 0
 jne xchain01263_n8_α
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain01263_n7_α
 xchain01263_n5_β:
 jmp xchain01263_n8_α
xchain01263_n6_α:
# IR_MAKE_LIST
bb01269_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain01263_n9_α
 xchain01263_n6_β:
 jmp xchain01263_n3_α
xchain01263_n7_α:
# IR_LIT_STRING
bb01270_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx01271_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01263_n10_α
 xchain01263_n7_β:
 jmp proc_put3get3_ω
.Lx01271_0:
 .quad .Lx01271_0_s
.Lx01271_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
xchain01263_n8_α:
# IR_LIT_INTEGER
bb00861_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01272_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01263_n11_α
 xchain01263_n8_β:
 jmp proc_put3get3_ω
.Lx01272_0:
 .quad 1
xchain01263_n9_α:
# IR_ASSIGN gva
bb00863_α:
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [rbx + 416], rax
 mov qword ptr [rbx + 424], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain01263_n12_α
 xchain01263_n9_β:
 jmp xchain01263_n3_α
xchain01263_n10_α:
# IR_RETURN
bb01273_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put3get3_γ
xchain01263_n11_α:
# IR_VAR
bb01274_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01263_n13_α
 xchain01263_n11_β:
 jmp proc_put3get3_ω
xchain01263_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01275_α:
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
 lea rax, [rip + xchain01263_n3_α]
 mov qword ptr [r12 + 480], rax
 jmp xchain01263_n3_α
 xchain01263_n12_β:
 jmp xchain01263_n3_α
xchain01263_n13_α:
# IR_TO
bb01276_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01277_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01263_n15_α
 xchain01263_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01277_0
xchain01263_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00865_α:
 jmp qword ptr [r12 + 480]
 xchain01263_n14_β:
 jmp xchain01263_n3_α
xchain01263_n15_α:
# IR_VAR gva
bb01278_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01263_n16_α
 xchain01263_n15_β:
 jmp xchain01263_n13_β
xchain01263_n16_α:
# IR_LIT_INTEGER
bb01279_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01280_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01263_n17_α
 xchain01263_n16_β:
 jmp xchain01263_n13_β
.Lx01280_0:
 .quad 1
xchain01263_n17_α:
# IR_LIT_INTEGER
bb01281_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01282_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01263_n18_α
 xchain01263_n17_β:
 jmp xchain01263_n13_β
.Lx01282_0:
 .quad 2
xchain01263_n18_α:
# IR_LIT_INTEGER
bb00868_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01283_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01263_n19_α
 xchain01263_n18_β:
 jmp xchain01263_n13_β
.Lx01283_0:
 .quad 3
xchain01263_n19_α:
bb00870_α:
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
 je xchain01263_n13_β
 jmp xchain01263_n20_α
 xchain01263_n19_β:
 jmp xchain01263_n13_β
xchain01263_n20_α:
# IR_VAR gva
bb01284_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01263_n21_α
 xchain01263_n20_β:
 jmp xchain01263_n13_β
xchain01263_n21_α:
bb01285_α:
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
 je xchain01263_n13_β
 jmp xchain01263_n22_α
 xchain01263_n21_β:
 jmp xchain01263_n13_β
xchain01263_n22_α:
# IR_VAR gva
bb01286_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01263_n23_α
 xchain01263_n22_β:
 jmp xchain01263_n13_β
xchain01263_n23_α:
bb00872_α:
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
 je xchain01263_n13_β
 jmp xchain01263_n24_α
 xchain01263_n23_β:
 jmp xchain01263_n13_β
xchain01263_n24_α:
# IR_VAR gva
bb01287_α:
 mov rax, qword ptr [rbx + 416]
 mov rdx, qword ptr [rbx + 424]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01263_n25_α
 xchain01263_n24_β:
 jmp xchain01263_n13_β
xchain01263_n25_α:
bb01288_α:
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
 je xchain01263_n13_β
 jmp xchain01263_n26_α
 xchain01263_n25_β:
 jmp xchain01263_n13_β
xchain01263_n26_α:
 jmp xchain01263_n13_β
xchain01263_n26_β:
 jmp xchain01263_n13_β
proc_put3get3_β:
jmp proc_put3get3_ω
proc_put3get3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_put4get4_α_body:
xchain01289_n0_α:
# IR_VAR_REF gva
bb00874_α:
 lea rdi, [rbx + 464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain01289_n1_α
 xchain01289_n0_β:
 jmp xchain01289_n3_α
xchain01289_n1_α:
# IR_UNOP_TEST lv
bb00875_α:
 mov eax, dword ptr [r12 + 608]
 cmp eax, 99
 je xchain01289_n3_α
 mov rdi, qword ptr [r12 + 608]
 mov rsi, qword ptr [r12 + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01289_n3_α
 cmp eax, 0
 jne xchain01289_n3_α
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 632], rax
 jmp xchain01289_n2_α
 xchain01289_n1_β:
 jmp xchain01289_n3_α
xchain01289_n2_α:
# IR_LIT_INTEGER
bb01290_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx01291_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain01289_n4_α
 xchain01289_n2_β:
 jmp xchain01289_n3_α
.Lx01291_0:
 .quad 1
xchain01289_n3_α:
# IR_VAR
bb01292_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain01289_n5_α
 xchain01289_n3_β:
 jmp xchain01289_n8_α
xchain01289_n4_α:
# IR_ASSIGN_VAR write through variable
bb00878_α:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 656]
 mov rcx, qword ptr [r12 + 664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01289_n3_α
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain01289_n6_α
 xchain01289_n4_β:
 jmp xchain01289_n3_α
xchain01289_n5_α:
# IR_UNOP
bb01293_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01289_n8_α
 cmp eax, 0
 jne xchain01289_n8_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain01289_n7_α
 xchain01289_n5_β:
 jmp xchain01289_n8_α
xchain01289_n6_α:
# IR_MAKE_LIST
bb01294_α:
 lea rdi, [r12 + 608]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain01289_n9_α
 xchain01289_n6_β:
 jmp xchain01289_n3_α
xchain01289_n7_α:
# IR_LIT_STRING
bb01295_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx01296_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01289_n10_α
 xchain01289_n7_β:
 jmp proc_put4get4_ω
.Lx01296_0:
 .quad .Lx01296_0_s
.Lx01296_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
xchain01289_n8_α:
# IR_LIT_INTEGER
bb01297_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01298_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01289_n11_α
 xchain01289_n8_β:
 jmp proc_put4get4_ω
.Lx01298_0:
 .quad 1
xchain01289_n9_α:
# IR_ASSIGN gva
bb01299_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [rbx + 448], rax
 mov qword ptr [rbx + 456], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain01289_n12_α
 xchain01289_n9_β:
 jmp xchain01289_n3_α
xchain01289_n10_α:
# IR_RETURN
bb00880_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put4get4_γ
xchain01289_n11_α:
# IR_VAR
bb01300_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01289_n13_α
 xchain01289_n11_β:
 jmp proc_put4get4_ω
xchain01289_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01301_α:
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
 lea rax, [rip + xchain01289_n3_α]
 mov qword ptr [r12 + 560], rax
 jmp xchain01289_n3_α
 xchain01289_n12_β:
 jmp xchain01289_n3_α
xchain01289_n13_α:
# IR_TO
bb01302_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01303_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01289_n15_α
 xchain01289_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01303_0
xchain01289_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00884_α:
 jmp qword ptr [r12 + 560]
 xchain01289_n14_β:
 jmp xchain01289_n3_α
xchain01289_n15_α:
# IR_VAR gva
bb00886_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01289_n16_α
 xchain01289_n15_β:
 jmp xchain01289_n13_β
xchain01289_n16_α:
# IR_LIT_INTEGER
bb01304_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01305_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01289_n17_α
 xchain01289_n16_β:
 jmp xchain01289_n13_β
.Lx01305_0:
 .quad 1
xchain01289_n17_α:
# IR_LIT_INTEGER
bb01306_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01307_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01289_n18_α
 xchain01289_n17_β:
 jmp xchain01289_n13_β
.Lx01307_0:
 .quad 2
xchain01289_n18_α:
# IR_LIT_INTEGER
bb01308_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01309_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01289_n19_α
 xchain01289_n18_β:
 jmp xchain01289_n13_β
.Lx01309_0:
 .quad 3
xchain01289_n19_α:
# IR_LIT_INTEGER
bb00887_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx01310_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain01289_n20_α
 xchain01289_n19_β:
 jmp xchain01289_n13_β
.Lx01310_0:
 .quad 4
xchain01289_n20_α:
bb01311_α:
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
 je xchain01289_n13_β
 jmp xchain01289_n21_α
 xchain01289_n20_β:
 jmp xchain01289_n13_β
xchain01289_n21_α:
# IR_VAR gva
bb01312_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01289_n22_α
 xchain01289_n21_β:
 jmp xchain01289_n13_β
xchain01289_n22_α:
bb01313_α:
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
 je xchain01289_n13_β
 jmp xchain01289_n23_α
 xchain01289_n22_β:
 jmp xchain01289_n13_β
xchain01289_n23_α:
# IR_VAR gva
bb00890_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01289_n24_α
 xchain01289_n23_β:
 jmp xchain01289_n13_β
xchain01289_n24_α:
bb01314_α:
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
 je xchain01289_n13_β
 jmp xchain01289_n25_α
 xchain01289_n24_β:
 jmp xchain01289_n13_β
xchain01289_n25_α:
# IR_VAR gva
bb00892_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01289_n26_α
 xchain01289_n25_β:
 jmp xchain01289_n13_β
xchain01289_n26_α:
bb00894_α:
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
 je xchain01289_n13_β
 jmp xchain01289_n27_α
 xchain01289_n26_β:
 jmp xchain01289_n13_β
xchain01289_n27_α:
# IR_VAR gva
bb01315_α:
 mov rax, qword ptr [rbx + 448]
 mov rdx, qword ptr [rbx + 456]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01289_n28_α
 xchain01289_n27_β:
 jmp xchain01289_n13_β
xchain01289_n28_α:
bb01316_α:
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
 je xchain01289_n13_β
 jmp xchain01289_n29_α
 xchain01289_n28_β:
 jmp xchain01289_n13_β
xchain01289_n29_α:
 jmp xchain01289_n13_β
xchain01289_n29_β:
 jmp xchain01289_n13_β
proc_put4get4_β:
jmp proc_put4get4_ω
proc_put4get4_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_pushpop_α_body:
xchain01317_n0_α:
# IR_VAR_REF gva
bb00898_α:
 lea rdi, [rbx + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01317_n1_α
 xchain01317_n0_β:
 jmp xchain01317_n3_α
xchain01317_n1_α:
# IR_UNOP_TEST lv
bb01318_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain01317_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01317_n3_α
 cmp eax, 0
 jne xchain01317_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain01317_n2_α
 xchain01317_n1_β:
 jmp xchain01317_n3_α
xchain01317_n2_α:
# IR_LIT_INTEGER
bb01319_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01320_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01317_n4_α
 xchain01317_n2_β:
 jmp xchain01317_n3_α
.Lx01320_0:
 .quad 1
xchain01317_n3_α:
# IR_VAR
bb01321_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01317_n5_α
 xchain01317_n3_β:
 jmp xchain01317_n8_α
xchain01317_n4_α:
# IR_ASSIGN_VAR write through variable
bb01322_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01317_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01317_n6_α
 xchain01317_n4_β:
 jmp xchain01317_n3_α
xchain01317_n5_α:
# IR_UNOP
bb00900_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01317_n8_α
 cmp eax, 0
 jne xchain01317_n8_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01317_n7_α
 xchain01317_n5_β:
 jmp xchain01317_n8_α
xchain01317_n6_α:
# IR_MAKE_LIST
bb01323_α:
 lea rdi, [r12 + 352]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01317_n9_α
 xchain01317_n6_β:
 jmp xchain01317_n3_α
xchain01317_n7_α:
# IR_LIT_STRING
bb01324_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01325_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01317_n10_α
 xchain01317_n7_β:
 jmp proc_pushpop_ω
.Lx01325_0:
 .quad .Lx01325_0_s
.Lx01325_0_s:
 .string "pop(push(L,0))"
xchain01317_n8_α:
# IR_LIT_INTEGER
bb01326_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01327_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01317_n11_α
 xchain01317_n8_β:
 jmp proc_pushpop_ω
.Lx01327_0:
 .quad 1
xchain01317_n9_α:
# IR_ASSIGN gva
bb00901_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 480], rax
 mov qword ptr [rbx + 488], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01317_n12_α
 xchain01317_n9_β:
 jmp xchain01317_n3_α
xchain01317_n10_α:
# IR_RETURN
bb00902_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop_γ
xchain01317_n11_α:
# IR_VAR
bb01328_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01317_n13_α
 xchain01317_n11_β:
 jmp proc_pushpop_ω
xchain01317_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01329_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain01317_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain01317_n3_α
 xchain01317_n12_β:
 jmp xchain01317_n3_α
xchain01317_n13_α:
# IR_TO
bb01330_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01331_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01317_n15_α
 xchain01317_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01331_0
xchain01317_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00905_α:
 jmp qword ptr [r12 + 304]
 xchain01317_n14_β:
 jmp xchain01317_n3_α
xchain01317_n15_α:
# IR_VAR gva
bb01332_α:
 mov rax, qword ptr [rbx + 480]
 mov rdx, qword ptr [rbx + 488]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01317_n16_α
 xchain01317_n15_β:
 jmp xchain01317_n13_β
xchain01317_n16_α:
# IR_LIT_INTEGER
bb01333_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01334_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01317_n17_α
 xchain01317_n16_β:
 jmp xchain01317_n13_β
.Lx01334_0:
 .quad 0
xchain01317_n17_α:
bb01335_α:
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
 je xchain01317_n13_β
 jmp xchain01317_n18_α
 xchain01317_n17_β:
 jmp xchain01317_n13_β
xchain01317_n18_α:
bb00908_α:
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
 je xchain01317_n13_β
 jmp xchain01317_n13_β
 xchain01317_n18_β:
 jmp xchain01317_n13_β
proc_pushpop_β:
jmp proc_pushpop_ω
proc_pushpop_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_putget12_α_body:
xchain01336_n0_α:
# IR_VAR_REF gva
bb00909_α:
 lea rdi, [rbx + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain01336_n1_α
 xchain01336_n0_β:
 jmp xchain01336_n3_α
xchain01336_n1_α:
# IR_UNOP_TEST lv
bb01337_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain01336_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01336_n3_α
 cmp eax, 0
 jne xchain01336_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain01336_n2_α
 xchain01336_n1_β:
 jmp xchain01336_n3_α
xchain01336_n2_α:
# IR_LIT_INTEGER
bb00910_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx01338_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain01336_n4_α
 xchain01336_n2_β:
 jmp xchain01336_n3_α
.Lx01338_0:
 .quad 1
xchain01336_n3_α:
# IR_VAR
bb01339_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01336_n5_α
 xchain01336_n3_β:
 jmp xchain01336_n8_α
xchain01336_n4_α:
# IR_ASSIGN_VAR write through variable
bb01340_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01336_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain01336_n6_α
 xchain01336_n4_β:
 jmp xchain01336_n3_α
xchain01336_n5_α:
# IR_UNOP
bb00911_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01336_n8_α
 cmp eax, 0
 jne xchain01336_n8_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01336_n7_α
 xchain01336_n5_β:
 jmp xchain01336_n8_α
xchain01336_n6_α:
# IR_LIT_INTEGER
bb01341_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx01342_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain01336_n9_α
 xchain01336_n6_β:
 jmp xchain01336_n3_α
.Lx01342_0:
 .quad 3
xchain01336_n7_α:
# IR_LIT_STRING
bb01343_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01344_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01336_n10_α
 xchain01336_n7_β:
 jmp proc_putget12_ω
.Lx01344_0:
 .quad .Lx01344_0_s
.Lx01344_0_s:
 .string "get(put(L12,0))"
xchain01336_n8_α:
# IR_LIT_INTEGER
bb01345_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01346_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01336_n11_α
 xchain01336_n8_β:
 jmp proc_putget12_ω
.Lx01346_0:
 .quad 1
xchain01336_n9_α:
# IR_LIT_INTEGER
bb00915_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx01347_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain01336_n12_α
 xchain01336_n9_β:
 jmp xchain01336_n3_α
.Lx01347_0:
 .quad 1
xchain01336_n10_α:
# IR_RETURN
bb00916_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putget12_γ
xchain01336_n11_α:
# IR_VAR
bb01348_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01336_n13_α
 xchain01336_n11_β:
 jmp proc_putget12_ω
xchain01336_n12_α:
# IR_LIT_INTEGER
bb01349_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx01350_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain01336_n14_α
 xchain01336_n12_β:
 jmp xchain01336_n3_α
.Lx01350_0:
 .quad 4
xchain01336_n13_α:
# IR_TO
bb01351_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01352_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01336_n15_α
 xchain01336_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01352_0
xchain01336_n14_α:
# IR_LIT_INTEGER
bb00917_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx01353_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain01336_n16_α
 xchain01336_n14_β:
 jmp xchain01336_n3_α
.Lx01353_0:
 .quad 1
xchain01336_n15_α:
# IR_VAR gva
bb01354_α:
 mov rax, qword ptr [rbx + 512]
 mov rdx, qword ptr [rbx + 520]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01336_n17_α
 xchain01336_n15_β:
 jmp xchain01336_n13_β
xchain01336_n16_α:
# IR_LIT_INTEGER
bb01355_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx01356_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain01336_n18_α
 xchain01336_n16_β:
 jmp xchain01336_n3_α
.Lx01356_0:
 .quad 5
xchain01336_n17_α:
# IR_LIT_INTEGER
bb01357_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01358_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01336_n19_α
 xchain01336_n17_β:
 jmp xchain01336_n13_β
.Lx01358_0:
 .quad 0
xchain01336_n18_α:
# IR_LIT_INTEGER
bb00919_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx01359_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain01336_n20_α
 xchain01336_n18_β:
 jmp xchain01336_n3_α
.Lx01359_0:
 .quad 9
xchain01336_n19_α:
bb00920_α:
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
  .Lrkfn1879: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1879]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01336_n13_β
 jmp xchain01336_n21_α
 xchain01336_n19_β:
 jmp xchain01336_n13_β
xchain01336_n20_α:
# IR_LIT_INTEGER
bb01360_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx01361_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain01336_n22_α
 xchain01336_n20_β:
 jmp xchain01336_n3_α
.Lx01361_0:
 .quad 2
xchain01336_n21_α:
bb00922_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1882: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1882]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01336_n13_β
 jmp xchain01336_n13_β
 xchain01336_n21_β:
 jmp xchain01336_n13_β
xchain01336_n22_α:
# IR_LIT_INTEGER
bb01362_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx01363_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain01336_n23_α
 xchain01336_n22_β:
 jmp xchain01336_n3_α
.Lx01363_0:
 .quad 6
xchain01336_n23_α:
# IR_LIT_INTEGER
bb01364_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx01365_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain01336_n24_α
 xchain01336_n23_β:
 jmp xchain01336_n3_α
.Lx01365_0:
 .quad 5
xchain01336_n24_α:
# IR_LIT_INTEGER
bb00923_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx01366_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain01336_n25_α
 xchain01336_n24_β:
 jmp xchain01336_n3_α
.Lx01366_0:
 .quad 3
xchain01336_n25_α:
# IR_LIT_INTEGER
bb01367_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx01368_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain01336_n26_α
 xchain01336_n25_β:
 jmp xchain01336_n3_α
.Lx01368_0:
 .quad 5
xchain01336_n26_α:
# IR_LIT_INTEGER
bb01369_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx01370_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain01336_n27_α
 xchain01336_n26_β:
 jmp xchain01336_n3_α
.Lx01370_0:
 .quad 8
xchain01336_n27_α:
# IR_MAKE_LIST
bb01371_α:
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
 jmp xchain01336_n28_α
 xchain01336_n27_β:
 jmp xchain01336_n3_α
xchain01336_n28_α:
# IR_ASSIGN gva
bb00927_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 512], rax
 mov qword ptr [rbx + 520], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01336_n29_α
 xchain01336_n28_β:
 jmp xchain01336_n3_α
xchain01336_n29_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00928_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain01336_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain01336_n3_α
 xchain01336_n29_β:
 jmp xchain01336_n3_α
xchain01336_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01372_α:
 jmp qword ptr [r12 + 304]
 xchain01336_n30_β:
 jmp xchain01336_n3_α
proc_putget12_β:
jmp proc_putget12_ω
proc_putget12_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_pushpop12_α_body:
xchain01373_n0_α:
# IR_VAR_REF gva
bb01374_α:
 lea rdi, [rbx + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain01373_n1_α
 xchain01373_n0_β:
 jmp xchain01373_n3_α
xchain01373_n1_α:
# IR_UNOP_TEST lv
bb01375_α:
 mov eax, dword ptr [r12 + 736]
 cmp eax, 99
 je xchain01373_n3_α
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01373_n3_α
 cmp eax, 0
 jne xchain01373_n3_α
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 760], rax
 jmp xchain01373_n2_α
 xchain01373_n1_β:
 jmp xchain01373_n3_α
xchain01373_n2_α:
# IR_LIT_INTEGER
bb00930_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx01376_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain01373_n4_α
 xchain01373_n2_β:
 jmp xchain01373_n3_α
.Lx01376_0:
 .quad 1
xchain01373_n3_α:
# IR_VAR
bb01377_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01373_n5_α
 xchain01373_n3_β:
 jmp xchain01373_n8_α
xchain01373_n4_α:
# IR_ASSIGN_VAR write through variable
bb01378_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01373_n3_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain01373_n6_α
 xchain01373_n4_β:
 jmp xchain01373_n3_α
xchain01373_n5_α:
# IR_UNOP
bb01379_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01373_n8_α
 cmp eax, 0
 jne xchain01373_n8_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01373_n7_α
 xchain01373_n5_β:
 jmp xchain01373_n8_α
xchain01373_n6_α:
# IR_LIT_INTEGER
bb00933_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx01380_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain01373_n9_α
 xchain01373_n6_β:
 jmp xchain01373_n3_α
.Lx01380_0:
 .quad 3
xchain01373_n7_α:
# IR_LIT_STRING
bb00934_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01381_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01373_n10_α
 xchain01373_n7_β:
 jmp proc_pushpop12_ω
.Lx01381_0:
 .quad .Lx01381_0_s
.Lx01381_0_s:
 .string "pop(push(L12,0))"
xchain01373_n8_α:
# IR_LIT_INTEGER
bb01382_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01383_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01373_n11_α
 xchain01373_n8_β:
 jmp proc_pushpop12_ω
.Lx01383_0:
 .quad 1
xchain01373_n9_α:
# IR_LIT_INTEGER
bb00935_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx01384_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain01373_n12_α
 xchain01373_n9_β:
 jmp xchain01373_n3_α
.Lx01384_0:
 .quad 1
xchain01373_n10_α:
# IR_RETURN
bb01385_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop12_γ
xchain01373_n11_α:
# IR_VAR
bb00936_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01373_n13_α
 xchain01373_n11_β:
 jmp proc_pushpop12_ω
xchain01373_n12_α:
# IR_LIT_INTEGER
bb01386_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx01387_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain01373_n14_α
 xchain01373_n12_β:
 jmp xchain01373_n3_α
.Lx01387_0:
 .quad 4
xchain01373_n13_α:
# IR_TO
bb01388_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01389_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01373_n15_α
 xchain01373_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01389_0
xchain01373_n14_α:
# IR_LIT_INTEGER
bb00937_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx01390_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain01373_n16_α
 xchain01373_n14_β:
 jmp xchain01373_n3_α
.Lx01390_0:
 .quad 1
xchain01373_n15_α:
# IR_VAR gva
bb01391_α:
 mov rax, qword ptr [rbx + 544]
 mov rdx, qword ptr [rbx + 552]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01373_n17_α
 xchain01373_n15_β:
 jmp xchain01373_n13_β
xchain01373_n16_α:
# IR_LIT_INTEGER
bb01392_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx01393_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain01373_n18_α
 xchain01373_n16_β:
 jmp xchain01373_n3_α
.Lx01393_0:
 .quad 5
xchain01373_n17_α:
# IR_LIT_INTEGER
bb01394_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01395_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01373_n19_α
 xchain01373_n17_β:
 jmp xchain01373_n13_β
.Lx01395_0:
 .quad 0
xchain01373_n18_α:
# IR_LIT_INTEGER
bb00940_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx01396_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain01373_n20_α
 xchain01373_n18_β:
 jmp xchain01373_n3_α
.Lx01396_0:
 .quad 9
xchain01373_n19_α:
bb00942_α:
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
  .Lrkfn1920: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1920]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01373_n13_β
 jmp xchain01373_n21_α
 xchain01373_n19_β:
 jmp xchain01373_n13_β
xchain01373_n20_α:
# IR_LIT_INTEGER
bb01397_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx01398_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain01373_n22_α
 xchain01373_n20_β:
 jmp xchain01373_n3_α
.Lx01398_0:
 .quad 2
xchain01373_n21_α:
bb01399_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1923: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1923]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01373_n13_β
 jmp xchain01373_n13_β
 xchain01373_n21_β:
 jmp xchain01373_n13_β
xchain01373_n22_α:
# IR_LIT_INTEGER
bb01400_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx01401_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain01373_n23_α
 xchain01373_n22_β:
 jmp xchain01373_n3_α
.Lx01401_0:
 .quad 6
xchain01373_n23_α:
# IR_LIT_INTEGER
bb00944_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx01402_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain01373_n24_α
 xchain01373_n23_β:
 jmp xchain01373_n3_α
.Lx01402_0:
 .quad 5
xchain01373_n24_α:
# IR_LIT_INTEGER
bb01403_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx01404_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain01373_n25_α
 xchain01373_n24_β:
 jmp xchain01373_n3_α
.Lx01404_0:
 .quad 3
xchain01373_n25_α:
# IR_LIT_INTEGER
bb01405_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx01406_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain01373_n26_α
 xchain01373_n25_β:
 jmp xchain01373_n3_α
.Lx01406_0:
 .quad 5
xchain01373_n26_α:
# IR_LIT_INTEGER
bb01407_α:
 mov qword ptr [r12 + 720], 6
 mov rax, qword ptr [rip + .Lx01408_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain01373_n27_α
 xchain01373_n26_β:
 jmp xchain01373_n3_α
.Lx01408_0:
 .quad 8
xchain01373_n27_α:
# IR_MAKE_LIST
bb00947_α:
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
 jmp xchain01373_n28_α
 xchain01373_n27_β:
 jmp xchain01373_n3_α
xchain01373_n28_α:
# IR_ASSIGN gva
bb00949_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 544], rax
 mov qword ptr [rbx + 552], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01373_n29_α
 xchain01373_n28_β:
 jmp xchain01373_n3_α
xchain01373_n29_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01409_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
 lea rax, [rip + xchain01373_n3_α]
 mov qword ptr [r12 + 304], rax
 jmp xchain01373_n3_α
 xchain01373_n29_β:
 jmp xchain01373_n3_α
xchain01373_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00950_α:
 jmp qword ptr [r12 + 304]
 xchain01373_n30_β:
 jmp xchain01373_n3_α
proc_pushpop12_β:
jmp proc_pushpop12_ω
proc_pushpop12_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setcreate_α_body:
xchain01410_n0_α:
# IR_VAR
bb01411_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain01410_n1_α
 xchain01410_n0_β:
 jmp xchain01410_n3_α
xchain01410_n1_α:
# IR_UNOP
bb01412_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01410_n3_α
 cmp eax, 0
 jne xchain01410_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain01410_n2_α
 xchain01410_n1_β:
 jmp xchain01410_n3_α
xchain01410_n2_α:
# IR_LIT_STRING
bb00951_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx01413_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01410_n4_α
 xchain01410_n2_β:
 jmp proc_setcreate_ω
.Lx01413_0:
 .quad .Lx01413_0_s
.Lx01413_0_s:
 .string "set()"
xchain01410_n3_α:
# IR_LIT_INTEGER
bb01414_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01415_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01410_n5_α
 xchain01410_n3_β:
 jmp proc_setcreate_ω
.Lx01415_0:
 .quad 1
xchain01410_n4_α:
# IR_RETURN
bb01416_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcreate_γ
xchain01410_n5_α:
# IR_VAR
bb01417_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01410_n6_α
 xchain01410_n5_β:
 jmp proc_setcreate_ω
xchain01410_n6_α:
# IR_TO
bb00955_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01418_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01410_n7_α
 xchain01410_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01418_0
xchain01410_n7_α:
bb00956_α:
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
 je xchain01410_n6_β
 jmp xchain01410_n6_β
 xchain01410_n7_β:
 jmp xchain01410_n6_β
proc_setcreate_β:
jmp proc_setcreate_ω
proc_setcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setcopy_α_body:
xchain01419_n0_α:
# IR_VAR_REF gva
bb01420_α:
 lea rdi, [rbx + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01419_n1_α
 xchain01419_n0_β:
 jmp xchain01419_n3_α
xchain01419_n1_α:
# IR_UNOP_TEST lv
bb01421_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain01419_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01419_n3_α
 cmp eax, 0
 jne xchain01419_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain01419_n2_α
 xchain01419_n1_β:
 jmp xchain01419_n3_α
xchain01419_n2_α:
# IR_LIT_INTEGER
bb01422_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01423_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01419_n4_α
 xchain01419_n2_β:
 jmp xchain01419_n3_α
.Lx01423_0:
 .quad 1
xchain01419_n3_α:
# IR_VAR
bb00958_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01419_n5_α
 xchain01419_n3_β:
 jmp xchain01419_n8_α
xchain01419_n4_α:
# IR_ASSIGN_VAR write through variable
bb01424_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01419_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01419_n6_α
 xchain01419_n4_β:
 jmp xchain01419_n3_α
xchain01419_n5_α:
# IR_UNOP
bb01425_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01419_n8_α
 cmp eax, 0
 jne xchain01419_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01419_n7_α
 xchain01419_n5_β:
 jmp xchain01419_n8_α
xchain01419_n6_α:
bb01426_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1959: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1959]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain01419_n3_α
 jmp xchain01419_n9_α
 xchain01419_n6_β:
 jmp xchain01419_n3_α
xchain01419_n7_α:
# IR_LIT_STRING
bb00961_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01427_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01419_n10_α
 xchain01419_n7_β:
 jmp proc_setcopy_ω
.Lx01427_0:
 .quad .Lx01427_0_s
.Lx01427_0_s:
 .string "copy(S)"
xchain01419_n8_α:
# IR_LIT_INTEGER
bb00962_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01428_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01419_n11_α
 xchain01419_n8_β:
 jmp proc_setcopy_ω
.Lx01428_0:
 .quad 1
xchain01419_n9_α:
# IR_ASSIGN gva
bb01429_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 576], rax
 mov qword ptr [rbx + 584], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01419_n12_α
 xchain01419_n9_β:
 jmp xchain01419_n3_α
xchain01419_n10_α:
# IR_RETURN
bb00963_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcopy_γ
xchain01419_n11_α:
# IR_VAR
bb01430_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01419_n13_α
 xchain01419_n11_β:
 jmp proc_setcopy_ω
xchain01419_n12_α:
# IR_LIT_INTEGER
bb01431_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01432_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01419_n14_α
 xchain01419_n12_β:
 jmp xchain01419_n3_α
.Lx01432_0:
 .quad 5
xchain01419_n13_α:
# IR_TO
bb00964_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01433_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01419_n15_α
 xchain01419_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01433_0
xchain01419_n14_α:
bb01434_α:
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
  .Lrkfn1970: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1970]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain01419_n3_α
 jmp xchain01419_n16_α
 xchain01419_n14_β:
 jmp xchain01419_n3_α
xchain01419_n15_α:
# IR_VAR gva
bb01435_α:
 mov rax, qword ptr [rbx + 576]
 mov rdx, qword ptr [rbx + 584]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01419_n17_α
 xchain01419_n15_β:
 jmp xchain01419_n13_β
xchain01419_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01436_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01419_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01419_n3_α
 xchain01419_n16_β:
 jmp xchain01419_n3_α
xchain01419_n17_α:
bb00967_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
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
 je xchain01419_n13_β
 jmp xchain01419_n13_β
 xchain01419_n17_β:
 jmp xchain01419_n13_β
xchain01419_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00969_α:
 jmp qword ptr [r12 + 240]
 xchain01419_n18_β:
 jmp xchain01419_n3_α
proc_setcopy_β:
jmp proc_setcopy_ω
proc_setcopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setinsert_α_body:
xchain01437_n0_α:
# IR_VAR_REF gva
bb01438_α:
 lea rdi, [rbx + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01437_n1_α
 xchain01437_n0_β:
 jmp xchain01437_n3_α
xchain01437_n1_α:
# IR_UNOP_TEST lv
bb01439_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain01437_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01437_n3_α
 cmp eax, 0
 jne xchain01437_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain01437_n2_α
 xchain01437_n1_β:
 jmp xchain01437_n3_α
xchain01437_n2_α:
# IR_LIT_INTEGER
bb01440_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01441_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01437_n4_α
 xchain01437_n2_β:
 jmp xchain01437_n3_α
.Lx01441_0:
 .quad 1
xchain01437_n3_α:
# IR_VAR
bb00971_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01437_n5_α
 xchain01437_n3_β:
 jmp xchain01437_n8_α
xchain01437_n4_α:
# IR_ASSIGN_VAR write through variable
bb01442_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01437_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01437_n6_α
 xchain01437_n4_β:
 jmp xchain01437_n3_α
xchain01437_n5_α:
# IR_UNOP
bb01443_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01437_n8_α
 cmp eax, 0
 jne xchain01437_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01437_n7_α
 xchain01437_n5_β:
 jmp xchain01437_n8_α
xchain01437_n6_α:
bb01444_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1988: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1988]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain01437_n3_α
 jmp xchain01437_n9_α
 xchain01437_n6_β:
 jmp xchain01437_n3_α
xchain01437_n7_α:
# IR_LIT_STRING
bb00973_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01445_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01437_n10_α
 xchain01437_n7_β:
 jmp proc_setinsert_ω
.Lx01445_0:
 .quad .Lx01445_0_s
.Lx01445_0_s:
 .string "insert(S,5)"
xchain01437_n8_α:
# IR_LIT_INTEGER
bb00975_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01446_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01437_n11_α
 xchain01437_n8_β:
 jmp proc_setinsert_ω
.Lx01446_0:
 .quad 1
xchain01437_n9_α:
# IR_ASSIGN gva
bb01447_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 608], rax
 mov qword ptr [rbx + 616], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01437_n12_α
 xchain01437_n9_β:
 jmp xchain01437_n3_α
xchain01437_n10_α:
# IR_RETURN
bb00977_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsert_γ
xchain01437_n11_α:
# IR_VAR
bb01448_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01437_n13_α
 xchain01437_n11_β:
 jmp proc_setinsert_ω
xchain01437_n12_α:
# IR_LIT_INTEGER
bb01449_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01450_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01437_n14_α
 xchain01437_n12_β:
 jmp xchain01437_n3_α
.Lx01450_0:
 .quad 5
xchain01437_n13_α:
# IR_TO
bb00978_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01451_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01437_n15_α
 xchain01437_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01451_0
xchain01437_n14_α:
bb01452_α:
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
  .Lrkfn1999: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1999]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01437_n3_α
 jmp xchain01437_n16_α
 xchain01437_n14_β:
 jmp xchain01437_n3_α
xchain01437_n15_α:
# IR_VAR gva
bb01453_α:
 mov rax, qword ptr [rbx + 608]
 mov rdx, qword ptr [rbx + 616]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01437_n17_α
 xchain01437_n15_β:
 jmp xchain01437_n13_β
xchain01437_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01454_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain01437_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain01437_n3_α
 xchain01437_n16_β:
 jmp xchain01437_n3_α
xchain01437_n17_α:
# IR_LIT_INTEGER
bb00980_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01455_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01437_n19_α
 xchain01437_n17_β:
 jmp xchain01437_n13_β
.Lx01455_0:
 .quad 5
xchain01437_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00982_α:
 jmp qword ptr [r12 + 272]
 xchain01437_n18_β:
 jmp xchain01437_n3_α
xchain01437_n19_α:
bb01456_α:
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
 je xchain01437_n13_β
 jmp xchain01437_n13_β
 xchain01437_n19_β:
 jmp xchain01437_n13_β
proc_setinsert_β:
jmp proc_setinsert_ω
proc_setinsert_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setmember_α_body:
xchain01457_n0_α:
# IR_VAR_REF gva
bb01458_α:
 lea rdi, [rbx + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01457_n1_α
 xchain01457_n0_β:
 jmp xchain01457_n3_α
xchain01457_n1_α:
# IR_UNOP_TEST lv
bb01459_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain01457_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01457_n3_α
 cmp eax, 0
 jne xchain01457_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain01457_n2_α
 xchain01457_n1_β:
 jmp xchain01457_n3_α
xchain01457_n2_α:
# IR_LIT_INTEGER
bb00984_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01460_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01457_n4_α
 xchain01457_n2_β:
 jmp xchain01457_n3_α
.Lx01460_0:
 .quad 1
xchain01457_n3_α:
# IR_VAR
bb01461_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01457_n5_α
 xchain01457_n3_β:
 jmp xchain01457_n8_α
xchain01457_n4_α:
# IR_ASSIGN_VAR write through variable
bb01462_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01457_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01457_n6_α
 xchain01457_n4_β:
 jmp xchain01457_n3_α
xchain01457_n5_α:
# IR_UNOP
bb01463_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01457_n8_α
 cmp eax, 0
 jne xchain01457_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01457_n7_α
 xchain01457_n5_β:
 jmp xchain01457_n8_α
xchain01457_n6_α:
bb00986_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2018: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2018]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain01457_n3_α
 jmp xchain01457_n9_α
 xchain01457_n6_β:
 jmp xchain01457_n3_α
xchain01457_n7_α:
# IR_LIT_STRING
bb00987_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01464_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01457_n10_α
 xchain01457_n7_β:
 jmp proc_setmember_ω
.Lx01464_0:
 .quad .Lx01464_0_s
.Lx01464_0_s:
 .string "member(S,5)"
xchain01457_n8_α:
# IR_LIT_INTEGER
bb01465_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01466_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01457_n11_α
 xchain01457_n8_β:
 jmp proc_setmember_ω
.Lx01466_0:
 .quad 1
xchain01457_n9_α:
# IR_ASSIGN gva
bb00989_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [rbx + 640], rax
 mov qword ptr [rbx + 648], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01457_n12_α
 xchain01457_n9_β:
 jmp xchain01457_n3_α
xchain01457_n10_α:
# IR_RETURN
bb01467_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setmember_γ
xchain01457_n11_α:
# IR_VAR
bb01468_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01457_n13_α
 xchain01457_n11_β:
 jmp proc_setmember_ω
xchain01457_n12_α:
# IR_LIT_INTEGER
bb00990_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01469_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01457_n14_α
 xchain01457_n12_β:
 jmp xchain01457_n3_α
.Lx01469_0:
 .quad 5
xchain01457_n13_α:
# IR_TO
bb01470_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01471_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01457_n15_α
 xchain01457_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01471_0
xchain01457_n14_α:
bb01472_α:
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
  .Lrkfn2029: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2029]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01457_n3_α
 jmp xchain01457_n16_α
 xchain01457_n14_β:
 jmp xchain01457_n3_α
xchain01457_n15_α:
# IR_VAR gva
bb01473_α:
 mov rax, qword ptr [rbx + 640]
 mov rdx, qword ptr [rbx + 648]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01457_n17_α
 xchain01457_n15_β:
 jmp xchain01457_n13_β
xchain01457_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00993_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain01457_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain01457_n3_α
 xchain01457_n16_β:
 jmp xchain01457_n3_α
xchain01457_n17_α:
# IR_LIT_INTEGER
bb00994_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01474_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01457_n19_α
 xchain01457_n17_β:
 jmp xchain01457_n13_β
.Lx01474_0:
 .quad 5
xchain01457_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01475_α:
 jmp qword ptr [r12 + 272]
 xchain01457_n18_β:
 jmp xchain01457_n3_α
xchain01457_n19_α:
bb01476_α:
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
 je xchain01457_n13_β
 jmp xchain01457_n13_β
 xchain01457_n19_β:
 jmp xchain01457_n13_β
proc_setmember_β:
jmp proc_setmember_ω
proc_setmember_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setinsdel_α_body:
xchain01477_n0_α:
# IR_VAR_REF gva
bb01478_α:
 lea rdi, [rbx + 688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01477_n1_α
 xchain01477_n0_β:
 jmp xchain01477_n3_α
xchain01477_n1_α:
# IR_UNOP_TEST lv
bb00996_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain01477_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01477_n3_α
 cmp eax, 0
 jne xchain01477_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain01477_n2_α
 xchain01477_n1_β:
 jmp xchain01477_n3_α
xchain01477_n2_α:
# IR_LIT_INTEGER
bb01479_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01480_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01477_n4_α
 xchain01477_n2_β:
 jmp xchain01477_n3_α
.Lx01480_0:
 .quad 1
xchain01477_n3_α:
# IR_VAR
bb01481_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain01477_n5_α
 xchain01477_n3_β:
 jmp xchain01477_n8_α
xchain01477_n4_α:
# IR_ASSIGN_VAR write through variable
bb01482_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01477_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01477_n6_α
 xchain01477_n4_β:
 jmp xchain01477_n3_α
xchain01477_n5_α:
# IR_UNOP
bb00998_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01477_n8_α
 cmp eax, 0
 jne xchain01477_n8_α
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 jmp xchain01477_n7_α
 xchain01477_n5_β:
 jmp xchain01477_n8_α
xchain01477_n6_α:
bb01000_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2048: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2048]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain01477_n3_α
 jmp xchain01477_n9_α
 xchain01477_n6_β:
 jmp xchain01477_n3_α
xchain01477_n7_α:
# IR_LIT_STRING
bb01483_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx01484_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01477_n10_α
 xchain01477_n7_β:
 jmp proc_setinsdel_ω
.Lx01484_0:
 .quad .Lx01484_0_s
.Lx01484_0_s:
 .string "insert+delete"
xchain01477_n8_α:
# IR_LIT_INTEGER
bb01002_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01485_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01477_n11_α
 xchain01477_n8_β:
 jmp proc_setinsdel_ω
.Lx01485_0:
 .quad 1
xchain01477_n9_α:
# IR_ASSIGN gva
bb01486_α:
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [rbx + 672], rax
 mov qword ptr [rbx + 680], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01477_n12_α
 xchain01477_n9_β:
 jmp xchain01477_n3_α
xchain01477_n10_α:
# IR_RETURN
bb01487_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsdel_γ
xchain01477_n11_α:
# IR_VAR
bb01003_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01477_n13_α
 xchain01477_n11_β:
 jmp proc_setinsdel_ω
xchain01477_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01488_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 lea rax, [rip + xchain01477_n3_α]
 mov qword ptr [r12 + 336], rax
 jmp xchain01477_n3_α
 xchain01477_n12_β:
 jmp xchain01477_n3_α
xchain01477_n13_α:
# IR_TO
bb01489_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01490_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01477_n15_α
 xchain01477_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01490_0
xchain01477_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01491_α:
 jmp qword ptr [r12 + 336]
 xchain01477_n14_β:
 jmp xchain01477_n3_α
xchain01477_n15_α:
# IR_VAR gva
bb01006_α:
 mov rax, qword ptr [rbx + 672]
 mov rdx, qword ptr [rbx + 680]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain01477_n16_α
 xchain01477_n15_β:
 jmp xchain01477_n13_β
xchain01477_n16_α:
# IR_LIT_INTEGER
bb01008_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx01492_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01477_n17_α
 xchain01477_n16_β:
 jmp xchain01477_n13_β
.Lx01492_0:
 .quad 5
xchain01477_n17_α:
bb01493_α:
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
 je xchain01477_n13_β
 jmp xchain01477_n18_α
 xchain01477_n17_β:
 jmp xchain01477_n13_β
xchain01477_n18_α:
# IR_LIT_INTEGER
bb01494_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx01495_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain01477_n19_α
 xchain01477_n18_β:
 jmp xchain01477_n13_β
.Lx01495_0:
 .quad 5
xchain01477_n19_α:
bb01496_α:
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
 je xchain01477_n13_β
 jmp xchain01477_n13_β
 xchain01477_n19_β:
 jmp xchain01477_n13_β
proc_setinsdel_β:
jmp proc_setinsdel_ω
proc_setinsdel_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setpick_α_body:
xchain01497_n0_α:
# IR_VAR_REF gva
bb01010_α:
 lea rdi, [rbx + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01497_n1_α
 xchain01497_n0_β:
 jmp xchain01497_n3_α
xchain01497_n1_α:
# IR_UNOP_TEST lv
bb01498_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain01497_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01497_n3_α
 cmp eax, 0
 jne xchain01497_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain01497_n2_α
 xchain01497_n1_β:
 jmp xchain01497_n3_α
xchain01497_n2_α:
# IR_LIT_INTEGER
bb01499_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01500_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01497_n4_α
 xchain01497_n2_β:
 jmp xchain01497_n3_α
.Lx01500_0:
 .quad 1
xchain01497_n3_α:
# IR_VAR
bb01501_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01497_n5_α
 xchain01497_n3_β:
 jmp xchain01497_n8_α
xchain01497_n4_α:
# IR_ASSIGN_VAR write through variable
bb01012_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01497_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01497_n6_α
 xchain01497_n4_β:
 jmp xchain01497_n3_α
xchain01497_n5_α:
# IR_UNOP
bb01014_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01497_n8_α
 cmp eax, 0
 jne xchain01497_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01497_n7_α
 xchain01497_n5_β:
 jmp xchain01497_n8_α
xchain01497_n6_α:
bb01502_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2078: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2078]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain01497_n3_α
 jmp xchain01497_n9_α
 xchain01497_n6_β:
 jmp xchain01497_n3_α
xchain01497_n7_α:
# IR_LIT_STRING
bb01015_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01503_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01497_n10_α
 xchain01497_n7_β:
 jmp proc_setpick_ω
.Lx01503_0:
 .quad .Lx01503_0_s
.Lx01503_0_s:
 .string "?S"
xchain01497_n8_α:
# IR_LIT_INTEGER
bb01504_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01505_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01497_n11_α
 xchain01497_n8_β:
 jmp proc_setpick_ω
.Lx01505_0:
 .quad 1
xchain01497_n9_α:
# IR_ASSIGN gva
bb01506_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 704], rax
 mov qword ptr [rbx + 712], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01497_n12_α
 xchain01497_n9_β:
 jmp xchain01497_n3_α
xchain01497_n10_α:
# IR_RETURN
bb01016_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setpick_γ
xchain01497_n11_α:
# IR_VAR
bb01507_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01497_n13_α
 xchain01497_n11_β:
 jmp proc_setpick_ω
xchain01497_n12_α:
# IR_LIT_INTEGER
bb01508_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01509_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01497_n14_α
 xchain01497_n12_β:
 jmp xchain01497_n3_α
.Lx01509_0:
 .quad 5
xchain01497_n13_α:
# IR_TO
bb01510_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01511_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01497_n15_α
 xchain01497_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01511_0
xchain01497_n14_α:
bb01019_α:
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
  .Lrkfn2089: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2089]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain01497_n3_α
 jmp xchain01497_n16_α
 xchain01497_n14_β:
 jmp xchain01497_n3_α
xchain01497_n15_α:
# IR_VAR_REF gva
bb01020_α:
 lea rdi, [rbx + 704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01497_n17_α
 xchain01497_n15_β:
 jmp xchain01497_n13_β
xchain01497_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01512_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01497_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01497_n3_α
 xchain01497_n16_β:
 jmp xchain01497_n3_α
xchain01497_n17_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb01513_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain01497_n13_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01497_n19_α
 xchain01497_n17_β:
 jmp xchain01497_n13_β
xchain01497_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01514_α:
 jmp qword ptr [r12 + 240]
 xchain01497_n18_β:
 jmp xchain01497_n3_α
xchain01497_n19_α:
# IR_DEREF variable -> value
bb01515_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01497_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01497_n13_β
 xchain01497_n19_β:
 jmp xchain01497_n13_β
proc_setpick_β:
jmp proc_setpick_ω
proc_setpick_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_setbang_α_body:
xchain01516_n0_α:
# IR_VAR_REF gva
bb01024_α:
 lea rdi, [rbx + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain01516_n1_α
 xchain01516_n0_β:
 jmp xchain01516_n3_α
xchain01516_n1_α:
# IR_UNOP_TEST lv
bb01026_α:
 mov eax, dword ptr [r12 + 400]
 cmp eax, 99
 je xchain01516_n3_α
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01516_n3_α
 cmp eax, 0
 jne xchain01516_n3_α
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 424], rax
 jmp xchain01516_n2_α
 xchain01516_n1_β:
 jmp xchain01516_n3_α
xchain01516_n2_α:
# IR_LIT_INTEGER
bb01517_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx01518_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain01516_n4_α
 xchain01516_n2_β:
 jmp xchain01516_n3_α
.Lx01518_0:
 .quad 1
xchain01516_n3_α:
# IR_VAR
bb01027_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01516_n5_α
 xchain01516_n3_β:
 jmp xchain01516_n8_α
xchain01516_n4_α:
# IR_ASSIGN_VAR write through variable
bb01519_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01516_n3_α
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain01516_n6_α
 xchain01516_n4_β:
 jmp xchain01516_n3_α
xchain01516_n5_α:
# IR_UNOP
bb01520_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01516_n8_α
 cmp eax, 0
 jne xchain01516_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01516_n7_α
 xchain01516_n5_β:
 jmp xchain01516_n8_α
xchain01516_n6_α:
bb01521_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2108: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2108]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain01516_n3_α
 jmp xchain01516_n9_α
 xchain01516_n6_β:
 jmp xchain01516_n3_α
xchain01516_n7_α:
# IR_LIT_STRING
bb01029_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01522_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01516_n10_α
 xchain01516_n7_β:
 jmp proc_setbang_ω
.Lx01522_0:
 .quad .Lx01522_0_s
.Lx01522_0_s:
 .string "!S"
xchain01516_n8_α:
# IR_LIT_INTEGER
bb01031_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01523_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01516_n11_α
 xchain01516_n8_β:
 jmp proc_setbang_ω
.Lx01523_0:
 .quad 1
xchain01516_n9_α:
# IR_ASSIGN gva
bb01524_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [rbx + 736], rax
 mov qword ptr [rbx + 744], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01516_n12_α
 xchain01516_n9_β:
 jmp xchain01516_n3_α
xchain01516_n10_α:
# IR_RETURN
bb01525_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setbang_γ
xchain01516_n11_α:
# IR_VAR
bb01526_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01516_n13_α
 xchain01516_n11_β:
 jmp proc_setbang_ω
xchain01516_n12_α:
# IR_LIT_INTEGER
bb01527_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01528_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01516_n14_α
 xchain01516_n12_β:
 jmp xchain01516_n3_α
.Lx01528_0:
 .quad 1
xchain01516_n13_α:
# IR_TO
bb01034_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01529_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01516_n15_α
 xchain01516_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01529_0
xchain01516_n14_α:
# IR_LIT_INTEGER
bb01036_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01530_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01516_n16_α
 xchain01516_n14_β:
 jmp xchain01516_n3_α
.Lx01530_0:
 .quad 5
xchain01516_n15_α:
# IR_VAR gva
bb01531_α:
 mov rax, qword ptr [rbx + 736]
 mov rdx, qword ptr [rbx + 744]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01516_n17_α
 xchain01516_n15_β:
 jmp xchain01516_n13_β
xchain01516_n16_α:
# IR_TO
bb01037_α:
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 352], rax
.Lx01532_0:
 mov rax, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jg xchain01516_n3_α
 mov qword ptr [r12 + 336], 6
 mov qword ptr [r12 + 344], rax
 jmp xchain01516_n18_α
 xchain01516_n16_β:
 inc qword ptr [r12 + 352]
 jmp .Lx01532_0
xchain01516_n17_α:
# IR_LIST_BANG
bb01533_α:
 mov qword ptr [r12 + 112], 0
.Lx01534_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain01516_n13_β
 jmp xchain01516_n17_β
 xchain01516_n17_β:
 inc qword ptr [r12 + 112]
 jmp .Lx01534_0
xchain01516_n18_α:
bb01535_α:
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
 je xchain01516_n3_α
 jmp xchain01516_n16_β
 xchain01516_n18_β:
 jmp xchain01516_n3_α
proc_setbang_β:
jmp proc_setbang_ω
proc_setbang_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tblcreate_α_body:
xchain01536_n0_α:
# IR_VAR
bb01537_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain01536_n1_α
 xchain01536_n0_β:
 jmp xchain01536_n3_α
xchain01536_n1_α:
# IR_UNOP
bb01040_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01536_n3_α
 cmp eax, 0
 jne xchain01536_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain01536_n2_α
 xchain01536_n1_β:
 jmp xchain01536_n3_α
xchain01536_n2_α:
# IR_LIT_STRING
bb01042_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx01538_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01536_n4_α
 xchain01536_n2_β:
 jmp proc_tblcreate_ω
.Lx01538_0:
 .quad .Lx01538_0_s
.Lx01538_0_s:
 .string "table()"
xchain01536_n3_α:
# IR_LIT_INTEGER
bb01539_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01540_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01536_n5_α
 xchain01536_n3_β:
 jmp proc_tblcreate_ω
.Lx01540_0:
 .quad 1
xchain01536_n4_α:
# IR_RETURN
bb01541_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblcreate_γ
xchain01536_n5_α:
# IR_VAR
bb01542_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01536_n6_α
 xchain01536_n5_β:
 jmp proc_tblcreate_ω
xchain01536_n6_α:
# IR_TO
bb01543_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01544_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01536_n7_α
 xchain01536_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01544_0
xchain01536_n7_α:
bb01044_α:
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
 je xchain01536_n6_β
 jmp xchain01536_n6_β
 xchain01536_n7_β:
 jmp xchain01536_n6_β
proc_tblcreate_β:
jmp proc_tblcreate_ω
proc_tblcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tblasgn_α_body:
xchain01545_n0_α:
# IR_VAR_REF gva
bb01046_α:
 lea rdi, [rbx + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01545_n1_α
 xchain01545_n0_β:
 jmp xchain01545_n3_α
xchain01545_n1_α:
# IR_UNOP_TEST lv
bb01048_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain01545_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01545_n3_α
 cmp eax, 0
 jne xchain01545_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain01545_n2_α
 xchain01545_n1_β:
 jmp xchain01545_n3_α
xchain01545_n2_α:
# IR_LIT_INTEGER
bb01546_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01547_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01545_n4_α
 xchain01545_n2_β:
 jmp xchain01545_n3_α
.Lx01547_0:
 .quad 1
xchain01545_n3_α:
# IR_VAR
bb01548_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01545_n5_α
 xchain01545_n3_β:
 jmp xchain01545_n8_α
xchain01545_n4_α:
# IR_ASSIGN_VAR write through variable
bb01049_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01545_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01545_n6_α
 xchain01545_n4_β:
 jmp xchain01545_n3_α
xchain01545_n5_α:
# IR_UNOP
bb01549_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01545_n8_α
 cmp eax, 0
 jne xchain01545_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01545_n7_α
 xchain01545_n5_β:
 jmp xchain01545_n8_α
xchain01545_n6_α:
bb01550_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2149: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2149]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain01545_n3_α
 jmp xchain01545_n9_α
 xchain01545_n6_β:
 jmp xchain01545_n3_α
xchain01545_n7_α:
# IR_LIT_STRING
bb01551_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01552_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01545_n10_α
 xchain01545_n7_β:
 jmp proc_tblasgn_ω
.Lx01552_0:
 .quad .Lx01552_0_s
.Lx01552_0_s:
 .string "T[5] := 1"
xchain01545_n8_α:
# IR_LIT_INTEGER
bb01053_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01553_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01545_n11_α
 xchain01545_n8_β:
 jmp proc_tblasgn_ω
.Lx01553_0:
 .quad 1
xchain01545_n9_α:
# IR_ASSIGN gva
bb01054_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 768], rax
 mov qword ptr [rbx + 776], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01545_n12_α
 xchain01545_n9_β:
 jmp xchain01545_n3_α
xchain01545_n10_α:
# IR_RETURN
bb01554_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblasgn_γ
xchain01545_n11_α:
# IR_VAR
bb01555_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01545_n13_α
 xchain01545_n11_β:
 jmp proc_tblasgn_ω
xchain01545_n12_α:
# IR_LIT_INTEGER
bb01556_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01557_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01545_n14_α
 xchain01545_n12_β:
 jmp xchain01545_n3_α
.Lx01557_0:
 .quad 5
xchain01545_n13_α:
# IR_TO
bb01558_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01559_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01545_n15_α
 xchain01545_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01559_0
xchain01545_n14_α:
# IR_SUBSCRIPT x[i] variable
bb01057_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01545_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01545_n16_α
 xchain01545_n14_β:
 jmp xchain01545_n3_α
xchain01545_n15_α:
# IR_VAR_REF gva
bb01059_α:
 lea rdi, [rbx + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01545_n17_α
 xchain01545_n15_β:
 jmp xchain01545_n13_β
xchain01545_n16_α:
# IR_LIT_INTEGER
bb01061_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01560_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01545_n18_α
 xchain01545_n16_β:
 jmp xchain01545_n3_α
.Lx01560_0:
 .quad 1
xchain01545_n17_α:
# IR_LIT_INTEGER
bb01062_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01561_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01545_n19_α
 xchain01545_n17_β:
 jmp xchain01545_n13_β
.Lx01561_0:
 .quad 5
xchain01545_n18_α:
# IR_ASSIGN_VAR write through variable
bb01063_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01545_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01545_n20_α
 xchain01545_n18_β:
 jmp xchain01545_n3_α
xchain01545_n19_α:
# IR_SUBSCRIPT x[i] variable
bb01065_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01545_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01545_n21_α
 xchain01545_n19_β:
 jmp xchain01545_n13_β
xchain01545_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01562_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain01545_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain01545_n3_α
 xchain01545_n20_β:
 jmp xchain01545_n3_α
xchain01545_n21_α:
# IR_LIT_INTEGER
bb01563_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01564_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01545_n23_α
 xchain01545_n21_β:
 jmp xchain01545_n13_β
.Lx01564_0:
 .quad 1
xchain01545_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01565_α:
 jmp qword ptr [r12 + 272]
 xchain01545_n22_β:
 jmp xchain01545_n3_α
xchain01545_n23_α:
# IR_ASSIGN_VAR write through variable
bb01067_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01545_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01545_n13_β
 xchain01545_n23_β:
 jmp xchain01545_n13_β
proc_tblasgn_β:
jmp proc_tblasgn_ω
proc_tblasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_tblsub_α_body:
xchain01566_n0_α:
# IR_VAR_REF gva
bb01567_α:
 lea rdi, [rbx + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain01566_n1_α
 xchain01566_n0_β:
 jmp xchain01566_n3_α
xchain01566_n1_α:
# IR_UNOP_TEST lv
bb01568_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain01566_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01566_n3_α
 cmp eax, 0
 jne xchain01566_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain01566_n2_α
 xchain01566_n1_β:
 jmp xchain01566_n3_α
xchain01566_n2_α:
# IR_LIT_INTEGER
bb01569_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01570_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01566_n4_α
 xchain01566_n2_β:
 jmp xchain01566_n3_α
.Lx01570_0:
 .quad 1
xchain01566_n3_α:
# IR_VAR
bb01071_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain01566_n5_α
 xchain01566_n3_β:
 jmp xchain01566_n8_α
xchain01566_n4_α:
# IR_ASSIGN_VAR write through variable
bb01571_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01566_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain01566_n6_α
 xchain01566_n4_β:
 jmp xchain01566_n3_α
xchain01566_n5_α:
# IR_UNOP
bb01572_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01566_n8_α
 cmp eax, 0
 jne xchain01566_n8_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain01566_n7_α
 xchain01566_n5_β:
 jmp xchain01566_n8_α
xchain01566_n6_α:
bb01573_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2182: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2182]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01566_n3_α
 jmp xchain01566_n9_α
 xchain01566_n6_β:
 jmp xchain01566_n3_α
xchain01566_n7_α:
# IR_LIT_STRING
bb01574_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01575_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01566_n10_α
 xchain01566_n7_β:
 jmp proc_tblsub_ω
.Lx01575_0:
 .quad .Lx01575_0_s
.Lx01575_0_s:
 .string "T[5]"
xchain01566_n8_α:
# IR_LIT_INTEGER
bb01074_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01576_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01566_n11_α
 xchain01566_n8_β:
 jmp proc_tblsub_ω
.Lx01576_0:
 .quad 1
xchain01566_n9_α:
# IR_ASSIGN gva
bb01076_α:
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [rbx + 800], rax
 mov qword ptr [rbx + 808], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01566_n12_α
 xchain01566_n9_β:
 jmp xchain01566_n3_α
xchain01566_n10_α:
# IR_RETURN
bb01078_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblsub_γ
xchain01566_n11_α:
# IR_VAR
bb01079_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01566_n13_α
 xchain01566_n11_β:
 jmp proc_tblsub_ω
xchain01566_n12_α:
# IR_LIT_INTEGER
bb01577_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx01578_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01566_n14_α
 xchain01566_n12_β:
 jmp xchain01566_n3_α
.Lx01578_0:
 .quad 5
xchain01566_n13_α:
# IR_TO
bb01579_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01580_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01566_n15_α
 xchain01566_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01580_0
xchain01566_n14_α:
# IR_SUBSCRIPT x[i] variable
bb01581_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01566_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01566_n16_α
 xchain01566_n14_β:
 jmp xchain01566_n3_α
xchain01566_n15_α:
# IR_VAR_REF gva
bb01082_α:
 lea rdi, [rbx + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01566_n17_α
 xchain01566_n15_β:
 jmp xchain01566_n13_β
xchain01566_n16_α:
# IR_LIT_INTEGER
bb01582_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01583_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01566_n18_α
 xchain01566_n16_β:
 jmp xchain01566_n3_α
.Lx01583_0:
 .quad 1
xchain01566_n17_α:
# IR_LIT_INTEGER
bb01083_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01584_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01566_n19_α
 xchain01566_n17_β:
 jmp xchain01566_n13_β
.Lx01584_0:
 .quad 5
xchain01566_n18_α:
# IR_ASSIGN_VAR write through variable
bb01085_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01566_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01566_n20_α
 xchain01566_n18_β:
 jmp xchain01566_n3_α
xchain01566_n19_α:
# IR_SUBSCRIPT x[i] variable
bb01585_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01566_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01566_n21_α
 xchain01566_n19_β:
 jmp xchain01566_n13_β
xchain01566_n20_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01088_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain01566_n3_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain01566_n3_α
 xchain01566_n20_β:
 jmp xchain01566_n3_α
xchain01566_n21_α:
# IR_DEREF variable -> value
bb01586_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01566_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01566_n13_β
 xchain01566_n21_β:
 jmp xchain01566_n13_β
xchain01566_n22_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01587_α:
 jmp qword ptr [r12 + 256]
 xchain01566_n22_β:
 jmp xchain01566_n3_α
proc_tblsub_β:
jmp proc_tblsub_ω
proc_tblsub_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_recconstr_α_body:
xchain01588_n0_α:
# IR_VAR
bb01589_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01588_n1_α
 xchain01588_n0_β:
 jmp xchain01588_n3_α
xchain01588_n1_α:
# IR_UNOP
bb01590_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01588_n3_α
 cmp eax, 0
 jne xchain01588_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01588_n2_α
 xchain01588_n1_β:
 jmp xchain01588_n3_α
xchain01588_n2_α:
# IR_LIT_STRING
bb01591_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01592_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01588_n4_α
 xchain01588_n2_β:
 jmp proc_recconstr_ω
.Lx01592_0:
 .quad .Lx01592_0_s
.Lx01592_0_s:
 .string "record(4,7)"
xchain01588_n3_α:
# IR_LIT_INTEGER
bb01593_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01594_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01588_n5_α
 xchain01588_n3_β:
 jmp proc_recconstr_ω
.Lx01594_0:
 .quad 1
xchain01588_n4_α:
# IR_RETURN
bb01595_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recconstr_γ
xchain01588_n5_α:
# IR_VAR
bb01596_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01588_n6_α
 xchain01588_n5_β:
 jmp proc_recconstr_ω
xchain01588_n6_α:
# IR_TO
bb01597_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01598_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01588_n7_α
 xchain01588_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01598_0
xchain01588_n7_α:
# IR_LIT_INTEGER
bb01092_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx01599_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01588_n8_α
 xchain01588_n7_β:
 jmp xchain01588_n6_β
.Lx01599_0:
 .quad 4
xchain01588_n8_α:
# IR_LIT_INTEGER
bb01600_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01601_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01588_n9_α
 xchain01588_n8_β:
 jmp xchain01588_n6_β
.Lx01601_0:
 .quad 7
xchain01588_n9_α:
bb01602_α:
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
 je xchain01588_n6_β
 jmp xchain01588_n6_β
 xchain01588_n9_β:
 jmp xchain01588_n6_β
proc_recconstr_β:
jmp proc_recconstr_ω
proc_recconstr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_reccopy_α_body:
xchain01603_n0_α:
# IR_VAR_REF gva
bb01604_α:
 lea rdi, [rbx + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01603_n1_α
 xchain01603_n0_β:
 jmp xchain01603_n3_α
xchain01603_n1_α:
# IR_UNOP_TEST lv
bb01094_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain01603_n3_α
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01603_n3_α
 cmp eax, 0
 jne xchain01603_n3_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 376], rax
 jmp xchain01603_n2_α
 xchain01603_n1_β:
 jmp xchain01603_n3_α
xchain01603_n2_α:
# IR_LIT_INTEGER
bb01605_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01606_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01603_n4_α
 xchain01603_n2_β:
 jmp xchain01603_n3_α
.Lx01606_0:
 .quad 1
xchain01603_n3_α:
# IR_VAR
bb01607_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01603_n5_α
 xchain01603_n3_β:
 jmp xchain01603_n8_α
xchain01603_n4_α:
# IR_ASSIGN_VAR write through variable
bb01608_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01603_n3_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01603_n6_α
 xchain01603_n4_β:
 jmp xchain01603_n3_α
xchain01603_n5_α:
# IR_UNOP
bb01609_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01603_n8_α
 cmp eax, 0
 jne xchain01603_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01603_n7_α
 xchain01603_n5_β:
 jmp xchain01603_n8_α
xchain01603_n6_α:
# IR_LIT_INTEGER
bb01097_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01610_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01603_n9_α
 xchain01603_n6_β:
 jmp xchain01603_n3_α
.Lx01610_0:
 .quad 4
xchain01603_n7_α:
# IR_LIT_STRING
bb01098_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01611_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01603_n10_α
 xchain01603_n7_β:
 jmp proc_reccopy_ω
.Lx01611_0:
 .quad .Lx01611_0_s
.Lx01611_0_s:
 .string "copy(R)"
xchain01603_n8_α:
# IR_LIT_INTEGER
bb01100_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01612_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01603_n11_α
 xchain01603_n8_β:
 jmp proc_reccopy_ω
.Lx01612_0:
 .quad 1
xchain01603_n9_α:
# IR_LIT_INTEGER
bb01102_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01613_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01603_n12_α
 xchain01603_n9_β:
 jmp xchain01603_n3_α
.Lx01613_0:
 .quad 7
xchain01603_n10_α:
# IR_RETURN
bb01614_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reccopy_γ
xchain01603_n11_α:
# IR_VAR
bb01615_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01603_n13_α
 xchain01603_n11_β:
 jmp proc_reccopy_ω
xchain01603_n12_α:
bb01616_α:
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
  .Lrkfn2236: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2236]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain01603_n3_α
 jmp xchain01603_n14_α
 xchain01603_n12_β:
 jmp xchain01603_n3_α
xchain01603_n13_α:
# IR_TO
bb01104_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01617_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01603_n15_α
 xchain01603_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01617_0
xchain01603_n14_α:
# IR_ASSIGN gva
bb01618_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [rbx + 832], rax
 mov qword ptr [rbx + 840], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01603_n16_α
 xchain01603_n14_β:
 jmp xchain01603_n3_α
xchain01603_n15_α:
# IR_VAR gva
bb01106_α:
 mov rax, qword ptr [rbx + 832]
 mov rdx, qword ptr [rbx + 840]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01603_n17_α
 xchain01603_n15_β:
 jmp xchain01603_n13_β
xchain01603_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01108_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
 lea rax, [rip + xchain01603_n3_α]
 mov qword ptr [r12 + 240], rax
 jmp xchain01603_n3_α
 xchain01603_n16_β:
 jmp xchain01603_n3_α
xchain01603_n17_α:
bb01619_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
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
 je xchain01603_n13_β
 jmp xchain01603_n13_β
 xchain01603_n17_β:
 jmp xchain01603_n13_β
xchain01603_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01111_α:
 jmp qword ptr [r12 + 240]
 xchain01603_n18_β:
 jmp xchain01603_n3_α
proc_reccopy_β:
jmp proc_reccopy_ω
proc_reccopy_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_recfield_α_body:
xchain01620_n0_α:
# IR_VAR_REF gva
bb01621_α:
 lea rdi, [rbx + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01620_n1_α
 xchain01620_n0_β:
 jmp xchain01620_n3_α
xchain01620_n1_α:
# IR_UNOP_TEST lv
bb01622_α:
 mov eax, dword ptr [r12 + 336]
 cmp eax, 99
 je xchain01620_n3_α
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01620_n3_α
 cmp eax, 0
 jne xchain01620_n3_α
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 360], rax
 jmp xchain01620_n2_α
 xchain01620_n1_β:
 jmp xchain01620_n3_α
xchain01620_n2_α:
# IR_LIT_INTEGER
bb01623_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01624_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01620_n4_α
 xchain01620_n2_β:
 jmp xchain01620_n3_α
.Lx01624_0:
 .quad 1
xchain01620_n3_α:
# IR_VAR
bb01625_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01620_n5_α
 xchain01620_n3_β:
 jmp xchain01620_n8_α
xchain01620_n4_α:
# IR_ASSIGN_VAR write through variable
bb01626_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01620_n3_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain01620_n6_α
 xchain01620_n4_β:
 jmp xchain01620_n3_α
xchain01620_n5_α:
# IR_UNOP
bb01627_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01620_n8_α
 cmp eax, 0
 jne xchain01620_n8_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01620_n7_α
 xchain01620_n5_β:
 jmp xchain01620_n8_α
xchain01620_n6_α:
# IR_LIT_INTEGER
bb01628_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx01629_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01620_n9_α
 xchain01620_n6_β:
 jmp xchain01620_n3_α
.Lx01629_0:
 .quad 4
xchain01620_n7_α:
# IR_LIT_STRING
bb01630_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01631_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01620_n10_α
 xchain01620_n7_β:
 jmp proc_recfield_ω
.Lx01631_0:
 .quad .Lx01631_0_s
.Lx01631_0_s:
 .string "R.f"
xchain01620_n8_α:
# IR_LIT_INTEGER
bb01632_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01633_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01620_n11_α
 xchain01620_n8_β:
 jmp proc_recfield_ω
.Lx01633_0:
 .quad 1
xchain01620_n9_α:
# IR_LIT_INTEGER
bb01113_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01634_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01620_n12_α
 xchain01620_n9_β:
 jmp xchain01620_n3_α
.Lx01634_0:
 .quad 7
xchain01620_n10_α:
# IR_RETURN
bb01635_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recfield_γ
xchain01620_n11_α:
# IR_VAR
bb01636_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01620_n13_α
 xchain01620_n11_β:
 jmp proc_recfield_ω
xchain01620_n12_α:
bb01637_α:
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
  .Lrkfn2264: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2264]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain01620_n3_α
 jmp xchain01620_n14_α
 xchain01620_n12_β:
 jmp xchain01620_n3_α
xchain01620_n13_α:
# IR_TO
bb01116_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01638_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01620_n15_α
 xchain01620_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01638_0
xchain01620_n14_α:
# IR_ASSIGN gva
bb01639_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 864], rax
 mov qword ptr [rbx + 872], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01620_n16_α
 xchain01620_n14_β:
 jmp xchain01620_n3_α
xchain01620_n15_α:
# IR_VAR gva
bb01640_α:
 mov rax, qword ptr [rbx + 864]
 mov rdx, qword ptr [rbx + 872]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01620_n17_α
 xchain01620_n15_β:
 jmp xchain01620_n13_β
xchain01620_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01641_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain01620_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain01620_n3_α
 xchain01620_n16_β:
 jmp xchain01620_n3_α
xchain01620_n17_α:
# IR_FIELD_GET
bb01642_α:
 mov rdi, qword ptr [rip + .Lx01643_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01620_n13_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01620_n13_β
 xchain01620_n17_β:
 jmp xchain01620_n13_β
.Lx01643_0:
 .quad .Lx01643_0_s
.Lx01643_0_s:
 .string "y"
xchain01620_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01119_α:
 jmp qword ptr [r12 + 224]
 xchain01620_n18_β:
 jmp xchain01620_n3_α
proc_recfield_β:
jmp proc_recfield_ω
proc_recfield_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_bigfield_α_body:
xchain01644_n0_α:
# IR_VAR_REF gva
bb01121_α:
 lea rdi, [rbx + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01644_n1_α
 xchain01644_n0_β:
 jmp xchain01644_n3_α
xchain01644_n1_α:
# IR_UNOP_TEST lv
bb01123_α:
 mov eax, dword ptr [r12 + 272]
 cmp eax, 99
 je xchain01644_n3_α
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01644_n3_α
 cmp eax, 0
 jne xchain01644_n3_α
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 296], rax
 jmp xchain01644_n2_α
 xchain01644_n1_β:
 jmp xchain01644_n3_α
xchain01644_n2_α:
# IR_LIT_INTEGER
bb01125_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01645_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01644_n4_α
 xchain01644_n2_β:
 jmp xchain01644_n3_α
.Lx01645_0:
 .quad 1
xchain01644_n3_α:
# IR_VAR
bb01646_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01644_n5_α
 xchain01644_n3_β:
 jmp xchain01644_n8_α
xchain01644_n4_α:
# IR_ASSIGN_VAR write through variable
bb01647_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01644_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01644_n6_α
 xchain01644_n4_β:
 jmp xchain01644_n3_α
xchain01644_n5_α:
# IR_UNOP
bb01648_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01644_n8_α
 cmp eax, 0
 jne xchain01644_n8_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01644_n7_α
 xchain01644_n5_β:
 jmp xchain01644_n8_α
xchain01644_n6_α:
bb01127_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2284: .string "bigrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2284]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain01644_n3_α
 jmp xchain01644_n9_α
 xchain01644_n6_β:
 jmp xchain01644_n3_α
xchain01644_n7_α:
# IR_LIT_STRING
bb01649_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01650_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01644_n10_α
 xchain01644_n7_β:
 jmp proc_bigfield_ω
.Lx01650_0:
 .quad .Lx01650_0_s
.Lx01650_0_s:
 .string "R2.f"
xchain01644_n8_α:
# IR_LIT_INTEGER
bb01128_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01651_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01644_n11_α
 xchain01644_n8_β:
 jmp proc_bigfield_ω
.Lx01651_0:
 .quad 1
xchain01644_n9_α:
# IR_ASSIGN gva
bb01129_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 896], rax
 mov qword ptr [rbx + 904], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01644_n12_α
 xchain01644_n9_β:
 jmp xchain01644_n3_α
xchain01644_n10_α:
# IR_RETURN
bb01652_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bigfield_γ
xchain01644_n11_α:
# IR_VAR
bb01132_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01644_n13_α
 xchain01644_n11_β:
 jmp proc_bigfield_ω
xchain01644_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01653_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain01644_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain01644_n3_α
 xchain01644_n12_β:
 jmp xchain01644_n3_α
xchain01644_n13_α:
# IR_TO
bb01654_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01655_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01644_n15_α
 xchain01644_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01655_0
xchain01644_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01656_α:
 jmp qword ptr [r12 + 224]
 xchain01644_n14_β:
 jmp xchain01644_n3_α
xchain01644_n15_α:
# IR_VAR gva
bb01657_α:
 mov rax, qword ptr [rbx + 896]
 mov rdx, qword ptr [rbx + 904]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01644_n16_α
 xchain01644_n15_β:
 jmp xchain01644_n13_β
xchain01644_n16_α:
# IR_FIELD_GET
bb01658_α:
 mov rdi, qword ptr [rip + .Lx01659_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01644_n13_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01644_n13_β
 xchain01644_n16_β:
 jmp xchain01644_n13_β
.Lx01659_0:
 .quad .Lx01659_0_s
.Lx01659_0_s:
 .string "horatio"
proc_bigfield_β:
jmp proc_bigfield_ω
proc_bigfield_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_globasgn_α_body:
xchain01660_n0_α:
# IR_VAR
bb01661_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01660_n1_α
 xchain01660_n0_β:
 jmp xchain01660_n3_α
xchain01660_n1_α:
# IR_UNOP
bb01662_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01660_n3_α
 cmp eax, 0
 jne xchain01660_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01660_n2_α
 xchain01660_n1_β:
 jmp xchain01660_n3_α
xchain01660_n2_α:
# IR_LIT_STRING
bb01663_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01664_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01660_n4_α
 xchain01660_n2_β:
 jmp proc_globasgn_ω
.Lx01664_0:
 .quad .Lx01664_0_s
.Lx01664_0_s:
 .string "global := 1"
xchain01660_n3_α:
# IR_LIT_INTEGER
bb01135_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01665_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01660_n5_α
 xchain01660_n3_β:
 jmp proc_globasgn_ω
.Lx01665_0:
 .quad 1
xchain01660_n4_α:
# IR_RETURN
bb01666_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_globasgn_γ
xchain01660_n5_α:
# IR_VAR
bb01667_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01660_n6_α
 xchain01660_n5_β:
 jmp proc_globasgn_ω
xchain01660_n6_α:
# IR_TO
bb01668_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01669_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01660_n7_α
 xchain01660_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01669_0
xchain01660_n7_α:
# IR_LIT_INTEGER
bb01138_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01670_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01660_n8_α
 xchain01660_n7_β:
 jmp xchain01660_n6_β
.Lx01670_0:
 .quad 1
xchain01660_n8_α:
# IR_ASSIGN gva
bb01671_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01660_n6_β
 xchain01660_n8_β:
 jmp xchain01660_n6_β
proc_globasgn_β:
jmp proc_globasgn_ω
proc_globasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_loclasgn_α_body:
xchain01672_n0_α:
# IR_VAR
bb01673_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01672_n1_α
 xchain01672_n0_β:
 jmp xchain01672_n3_α
xchain01672_n1_α:
# IR_UNOP
bb01674_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01672_n3_α
 cmp eax, 0
 jne xchain01672_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01672_n2_α
 xchain01672_n1_β:
 jmp xchain01672_n3_α
xchain01672_n2_α:
# IR_LIT_STRING
bb01675_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01676_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01672_n4_α
 xchain01672_n2_β:
 jmp proc_loclasgn_ω
.Lx01676_0:
 .quad .Lx01676_0_s
.Lx01676_0_s:
 .string "local := 1"
xchain01672_n3_α:
# IR_LIT_INTEGER
bb01142_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01677_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01672_n5_α
 xchain01672_n3_β:
 jmp proc_loclasgn_ω
.Lx01677_0:
 .quad 1
xchain01672_n4_α:
# IR_RETURN
bb01144_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_loclasgn_γ
xchain01672_n5_α:
# IR_VAR
bb01146_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01672_n6_α
 xchain01672_n5_β:
 jmp proc_loclasgn_ω
xchain01672_n6_α:
# IR_TO
bb01148_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01678_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01672_n7_α
 xchain01672_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01678_0
xchain01672_n7_α:
# IR_LIT_INTEGER
bb01679_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01680_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01672_n8_α
 xchain01672_n7_β:
 jmp xchain01672_n6_β
.Lx01680_0:
 .quad 1
xchain01672_n8_α:
bb01681_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01672_n6_β
 xchain01672_n8_β:
 jmp xchain01672_n6_β
proc_loclasgn_β:
jmp proc_loclasgn_ω
proc_loclasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_statasgn_α_body:
xchain01682_n0_α:
# IR_VAR
bb01683_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01682_n1_α
 xchain01682_n0_β:
 jmp xchain01682_n3_α
xchain01682_n1_α:
# IR_UNOP
bb01151_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01682_n3_α
 cmp eax, 0
 jne xchain01682_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01682_n2_α
 xchain01682_n1_β:
 jmp xchain01682_n3_α
xchain01682_n2_α:
# IR_LIT_STRING
bb01684_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01685_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01682_n4_α
 xchain01682_n2_β:
 jmp proc_statasgn_ω
.Lx01685_0:
 .quad .Lx01685_0_s
.Lx01685_0_s:
 .string "static := 1"
xchain01682_n3_α:
# IR_LIT_INTEGER
bb01152_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01686_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01682_n5_α
 xchain01682_n3_β:
 jmp proc_statasgn_ω
.Lx01686_0:
 .quad 1
xchain01682_n4_α:
# IR_RETURN
bb01154_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_statasgn_γ
xchain01682_n5_α:
# IR_VAR
bb01687_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01682_n6_α
 xchain01682_n5_β:
 jmp proc_statasgn_ω
xchain01682_n6_α:
# IR_TO
bb01688_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01689_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01682_n7_α
 xchain01682_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01689_0
xchain01682_n7_α:
# IR_LIT_INTEGER
bb01157_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01690_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01682_n8_α
 xchain01682_n7_β:
 jmp xchain01682_n6_β
.Lx01690_0:
 .quad 1
xchain01682_n8_α:
# IR_ASSIGN gva
bb01691_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 928], rax
 mov qword ptr [rbx + 936], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01682_n6_β
 xchain01682_n8_β:
 jmp xchain01682_n6_β
proc_statasgn_β:
jmp proc_statasgn_ω
proc_statasgn_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_readz_α_body:
xchain01692_n0_α:
# IR_VAR_REF gva
bb01693_α:
 lea rdi, [rbx + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain01692_n1_α
 xchain01692_n0_β:
 jmp xchain01692_n3_α
xchain01692_n1_α:
# IR_UNOP_TEST lv
bb01694_α:
 mov eax, dword ptr [r12 + 384]
 cmp eax, 99
 je xchain01692_n3_α
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01692_n3_α
 cmp eax, 0
 jne xchain01692_n3_α
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rax
 jmp xchain01692_n2_α
 xchain01692_n1_β:
 jmp xchain01692_n3_α
xchain01692_n2_α:
# IR_LIT_INTEGER
bb01695_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01696_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01692_n4_α
 xchain01692_n2_β:
 jmp xchain01692_n3_α
.Lx01696_0:
 .quad 1
xchain01692_n3_α:
# IR_VAR
bb01697_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01692_n5_α
 xchain01692_n3_β:
 jmp xchain01692_n8_α
xchain01692_n4_α:
# IR_ASSIGN_VAR write through variable
bb01698_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01692_n3_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01692_n6_α
 xchain01692_n4_β:
 jmp xchain01692_n3_α
xchain01692_n5_α:
# IR_UNOP
bb01699_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01692_n8_α
 cmp eax, 0
 jne xchain01692_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01692_n7_α
 xchain01692_n5_β:
 jmp xchain01692_n8_α
xchain01692_n6_α:
# IR_LIT_STRING
bb01700_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx01701_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01692_n9_α
 xchain01692_n6_β:
 jmp xchain01692_n3_α
.Lx01701_0:
 .quad .Lx01701_0_s
.Lx01701_0_s:
 .string "/dev/zero"
xchain01692_n7_α:
# IR_LIT_STRING
bb01702_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01703_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01692_n10_α
 xchain01692_n7_β:
 jmp proc_readz_ω
.Lx01703_0:
 .quad .Lx01703_0_s
.Lx01703_0_s:
 .string "reads(zero,8)"
xchain01692_n8_α:
# IR_LIT_INTEGER
bb01162_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01704_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01692_n11_α
 xchain01692_n8_β:
 jmp proc_readz_ω
.Lx01704_0:
 .quad 1
xchain01692_n9_α:
# IR_LIT_STRING
bb01705_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx01706_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01692_n12_α
 xchain01692_n9_β:
 jmp xchain01692_n3_α
.Lx01706_0:
 .quad .Lx01706_0_s
.Lx01706_0_s:
 .string "ru"
xchain01692_n10_α:
# IR_RETURN
bb01707_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_readz_γ
xchain01692_n11_α:
# IR_VAR
bb01708_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01692_n13_α
 xchain01692_n11_β:
 jmp proc_readz_ω
xchain01692_n12_α:
bb01166_α:
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
  .Lrkfn2355: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2355]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain01692_n3_α
 jmp xchain01692_n14_α
 xchain01692_n12_β:
 jmp xchain01692_n3_α
xchain01692_n13_α:
# IR_TO
bb01709_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01710_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01692_n15_α
 xchain01692_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01710_0
xchain01692_n14_α:
# IR_ASSIGN gva
bb01711_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 944], rax
 mov qword ptr [rbx + 952], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01692_n16_α
 xchain01692_n14_β:
 jmp xchain01692_n3_α
xchain01692_n15_α:
# IR_VAR gva
bb01712_α:
 mov rax, qword ptr [rbx + 944]
 mov rdx, qword ptr [rbx + 952]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01692_n17_α
 xchain01692_n15_β:
 jmp xchain01692_n13_β
xchain01692_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01713_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain01692_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain01692_n3_α
 xchain01692_n16_β:
 jmp xchain01692_n3_α
xchain01692_n17_α:
# IR_LIT_INTEGER
bb01169_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01714_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01692_n19_α
 xchain01692_n17_β:
 jmp xchain01692_n13_β
.Lx01714_0:
 .quad 8
xchain01692_n18_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01171_α:
 jmp qword ptr [r12 + 272]
 xchain01692_n18_β:
 jmp xchain01692_n3_α
xchain01692_n19_α:
bb01172_α:
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
 je xchain01692_n13_β
 jmp xchain01692_n13_β
 xchain01692_n19_β:
 jmp xchain01692_n13_β
proc_readz_β:
jmp proc_readz_ω
proc_readz_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_writecon_α_body:
xchain01715_n0_α:
# IR_VAR
bb01174_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01715_n1_α
 xchain01715_n0_β:
 jmp xchain01715_n3_α
xchain01715_n1_α:
# IR_UNOP
bb01716_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01715_n3_α
 cmp eax, 0
 jne xchain01715_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01715_n2_α
 xchain01715_n1_β:
 jmp xchain01715_n3_α
xchain01715_n2_α:
# IR_LIT_STRING
bb01717_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01718_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01715_n4_α
 xchain01715_n2_β:
 jmp proc_writecon_ω
.Lx01718_0:
 .quad .Lx01718_0_s
.Lx01718_0_s:
 .string "write(\"a...z\")"
xchain01715_n3_α:
# IR_LIT_INTEGER
bb01719_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01720_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01715_n5_α
 xchain01715_n3_β:
 jmp proc_writecon_ω
.Lx01720_0:
 .quad 1
xchain01715_n4_α:
# IR_RETURN
bb01177_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writecon_γ
xchain01715_n5_α:
# IR_VAR
bb01721_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01715_n6_α
 xchain01715_n5_β:
 jmp proc_writecon_ω
xchain01715_n6_α:
# IR_TO
bb01179_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01722_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01715_n7_α
 xchain01715_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01722_0
xchain01715_n7_α:
# IR_VAR gva
bb01181_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01715_n8_α
 xchain01715_n7_β:
 jmp xchain01715_n6_β
xchain01715_n8_α:
# IR_LIT_STRING
bb01723_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01724_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01715_n9_α
 xchain01715_n8_β:
 jmp xchain01715_n6_β
.Lx01724_0:
 .quad .Lx01724_0_s
.Lx01724_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain01715_n9_α:
bb01725_α:
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
 je xchain01715_n6_β
 jmp xchain01715_n6_β
 xchain01715_n9_β:
 jmp xchain01715_n6_β
proc_writecon_β:
jmp proc_writecon_ω
proc_writecon_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_writestr_α_body:
xchain01726_n0_α:
# IR_VAR_REF gva
bb01184_α:
 lea rdi, [rbx + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01726_n1_α
 xchain01726_n0_β:
 jmp xchain01726_n3_α
xchain01726_n1_α:
# IR_UNOP_TEST lv
bb01186_α:
 mov eax, dword ptr [r12 + 320]
 cmp eax, 99
 je xchain01726_n3_α
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01726_n3_α
 cmp eax, 0
 jne xchain01726_n3_α
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rax
 jmp xchain01726_n2_α
 xchain01726_n1_β:
 jmp xchain01726_n3_α
xchain01726_n2_α:
# IR_LIT_INTEGER
bb01727_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01728_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01726_n4_α
 xchain01726_n2_β:
 jmp xchain01726_n3_α
.Lx01728_0:
 .quad 1
xchain01726_n3_α:
# IR_VAR
bb01729_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01726_n5_α
 xchain01726_n3_β:
 jmp xchain01726_n8_α
xchain01726_n4_α:
# IR_ASSIGN_VAR write through variable
bb01730_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01726_n3_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain01726_n6_α
 xchain01726_n4_β:
 jmp xchain01726_n3_α
xchain01726_n5_α:
# IR_UNOP
bb01731_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01726_n8_α
 cmp eax, 0
 jne xchain01726_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01726_n7_α
 xchain01726_n5_β:
 jmp xchain01726_n8_α
xchain01726_n6_α:
# IR_LIT_STRING
bb01732_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx01733_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01726_n9_α
 xchain01726_n6_β:
 jmp xchain01726_n3_α
.Lx01733_0:
 .quad .Lx01733_0_s
.Lx01733_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain01726_n7_α:
# IR_LIT_STRING
bb01734_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01735_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01726_n10_α
 xchain01726_n7_β:
 jmp proc_writestr_ω
.Lx01735_0:
 .quad .Lx01735_0_s
.Lx01735_0_s:
 .string "write(s)"
xchain01726_n8_α:
# IR_LIT_INTEGER
bb01736_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01737_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01726_n11_α
 xchain01726_n8_β:
 jmp proc_writestr_ω
.Lx01737_0:
 .quad 1
xchain01726_n9_α:
# IR_ASSIGN gva
bb01738_α:
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 976], rax
 mov qword ptr [rbx + 984], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01726_n12_α
 xchain01726_n9_β:
 jmp xchain01726_n3_α
xchain01726_n10_α:
# IR_RETURN
bb01739_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writestr_γ
xchain01726_n11_α:
# IR_VAR
bb01191_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01726_n13_α
 xchain01726_n11_β:
 jmp proc_writestr_ω
xchain01726_n12_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01740_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
 lea rax, [rip + xchain01726_n3_α]
 mov qword ptr [r12 + 272], rax
 jmp xchain01726_n3_α
 xchain01726_n12_β:
 jmp xchain01726_n3_α
xchain01726_n13_α:
# IR_TO
bb01741_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01742_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01726_n15_α
 xchain01726_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01742_0
xchain01726_n14_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01743_α:
 jmp qword ptr [r12 + 272]
 xchain01726_n14_β:
 jmp xchain01726_n3_α
xchain01726_n15_α:
# IR_VAR gva
bb01195_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01726_n16_α
 xchain01726_n15_β:
 jmp xchain01726_n13_β
xchain01726_n16_α:
# IR_VAR gva
bb01744_α:
 mov rax, qword ptr [rbx + 976]
 mov rdx, qword ptr [rbx + 984]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain01726_n17_α
 xchain01726_n16_β:
 jmp xchain01726_n13_β
xchain01726_n17_α:
bb01745_α:
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
 je xchain01726_n13_β
 jmp xchain01726_n13_β
 xchain01726_n17_β:
 jmp xchain01726_n13_β
proc_writestr_β:
jmp proc_writestr_ω
proc_writestr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_cxcreate_α_body:
xchain01746_n0_α:
# IR_VAR
bb01747_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01746_n1_α
 xchain01746_n0_β:
 jmp xchain01746_n3_α
xchain01746_n1_α:
# IR_UNOP
bb01748_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01746_n3_α
 cmp eax, 0
 jne xchain01746_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01746_n2_α
 xchain01746_n1_β:
 jmp xchain01746_n3_α
xchain01746_n2_α:
# IR_LIT_STRING
bb01197_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01749_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01746_n4_α
 xchain01746_n2_β:
 jmp proc_cxcreate_ω
.Lx01749_0:
 .quad .Lx01749_0_s
.Lx01749_0_s:
 .string "create |\"a\""
xchain01746_n3_α:
# IR_LIT_INTEGER
bb01199_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01750_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01746_n5_α
 xchain01746_n3_β:
 jmp proc_cxcreate_ω
.Lx01750_0:
 .quad 1
xchain01746_n4_α:
# IR_RETURN
bb01201_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxcreate_γ
xchain01746_n5_α:
# IR_VAR
bb01203_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01746_n6_α
 xchain01746_n5_β:
 jmp proc_cxcreate_ω
xchain01746_n6_α:
# IR_TO
bb01751_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01752_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01746_n7_α
 xchain01746_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01752_0
xchain01746_n7_α:
# IR_CREATE
bb01753_α:
 mov qword ptr [r12 + 112], r12
 mov qword ptr [r12 + 120], r13
 mov qword ptr [r12 + 128], r14
 mov qword ptr [r12 + 136], r15
 mov qword ptr [r12 + 144], rbx
 mov qword ptr [r12 + 152], rbp
 lea rdi, [rip + xchain01746_n8_α]
 lea rsi, [r12 + 112]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 96], rax
 jmp xchain01746_n6_β
 xchain01746_n7_β:
 jmp xchain01746_n6_β
xchain01746_n8_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 176], 0
jmp xchain01746_n10_α
xchain01746_n8_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], 1
jmp xchain01746_n9_α
xchain01746_n8_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 176]
 cmp rax, 1
je xchain01746_n8_α
jmp xchain01746_n11_α
xchain01746_n8_β:
jmp xchain01746_n8_rt
xchain01746_n9_α:
# IR_CORET yield
bb01207_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01746_n8_β
xchain01746_n10_α:
# IR_LIT_STRING
bb01754_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01755_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01746_n8_ry
 xchain01746_n10_β:
 jmp xchain01746_n8_rt
.Lx01755_0:
 .quad .Lx01755_0_s
.Lx01755_0_s:
 .string "a"
xchain01746_n11_α:
# IR_COFAIL exhausted
bb01209_α:
 call scrip_cofail@PLT
 jmp proc_cxcreate_ω
proc_cxcreate_β:
jmp proc_cxcreate_ω
proc_cxcreate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
proc_cxget_α_body:
xchain01756_n0_α:
# IR_VAR_REF local
bb01211_α:
 lea rdi, [r12 + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain01756_n1_α
 xchain01756_n0_β:
 jmp xchain01756_n3_α
xchain01756_n1_α:
# IR_UNOP_TEST lv
bb01757_α:
 mov eax, dword ptr [r12 + 368]
 cmp eax, 99
 je xchain01756_n3_α
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01756_n3_α
 cmp eax, 0
 jne xchain01756_n3_α
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 392], rax
 jmp xchain01756_n2_α
 xchain01756_n1_β:
 jmp xchain01756_n3_α
xchain01756_n2_α:
# IR_LIT_INTEGER
bb01213_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01758_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01756_n4_α
 xchain01756_n2_β:
 jmp xchain01756_n3_α
.Lx01758_0:
 .quad 1
xchain01756_n3_α:
# IR_VAR
bb01759_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01756_n5_α
 xchain01756_n3_β:
 jmp xchain01756_n8_α
xchain01756_n4_α:
# IR_ASSIGN_VAR write through variable
bb01214_α:
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01756_n3_α
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain01756_n6_α
 xchain01756_n4_β:
 jmp xchain01756_n3_α
xchain01756_n5_α:
# IR_UNOP
bb01760_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01756_n8_α
 cmp eax, 0
 jne xchain01756_n8_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01756_n7_α
 xchain01756_n5_β:
 jmp xchain01756_n8_α
xchain01756_n6_α:
# IR_CREATE
bb01761_α:
 mov qword ptr [r12 + 272], r12
 mov qword ptr [r12 + 280], r13
 mov qword ptr [r12 + 288], r14
 mov qword ptr [r12 + 296], r15
 mov qword ptr [r12 + 304], rbx
 mov qword ptr [r12 + 312], rbp
 lea rdi, [rip + xchain01756_n10_α]
 lea rsi, [r12 + 272]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 256], rax
 jmp xchain01756_n9_α
 xchain01756_n6_β:
 jmp xchain01756_n3_α
xchain01756_n7_α:
# IR_LIT_STRING
bb01762_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01763_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01756_n11_α
 xchain01756_n7_β:
 jmp proc_cxget_ω
.Lx01763_0:
 .quad .Lx01763_0_s
.Lx01763_0_s:
 .string "@C"
xchain01756_n8_α:
# IR_LIT_INTEGER
bb01764_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01765_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01756_n12_α
 xchain01756_n8_β:
 jmp proc_cxget_ω
.Lx01765_0:
 .quad 1
xchain01756_n9_α:
# IR_ASSIGN gva
bb01766_α:
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [rbx + 1008], rax
 mov qword ptr [rbx + 1016], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01756_n13_α
 xchain01756_n9_β:
 jmp xchain01756_n3_α
xchain01756_n10_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 336], 0
jmp xchain01756_n15_α
xchain01756_n10_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], 1
jmp xchain01756_n14_α
xchain01756_n10_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 336]
 cmp rax, 1
je xchain01756_n10_α
jmp xchain01756_n20_α
xchain01756_n10_β:
jmp xchain01756_n10_rt
xchain01756_n11_α:
# IR_RETURN
bb01767_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxget_γ
xchain01756_n12_α:
# IR_VAR
bb01219_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01756_n16_α
 xchain01756_n12_β:
 jmp proc_cxget_ω
xchain01756_n13_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01768_α:
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
 lea rax, [rip + xchain01756_n3_α]
 mov qword ptr [r12 + 224], rax
 jmp xchain01756_n3_α
 xchain01756_n13_β:
 jmp xchain01756_n3_α
xchain01756_n14_α:
# IR_CORET yield
bb01769_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01756_n10_β
xchain01756_n15_α:
# IR_LIT_STRING
bb01770_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx01771_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01756_n10_ry
 xchain01756_n15_β:
 jmp xchain01756_n10_rt
.Lx01771_0:
 .quad .Lx01771_0_s
.Lx01771_0_s:
 .string "a"
xchain01756_n16_α:
# IR_TO
bb01222_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01772_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01756_n18_α
 xchain01756_n16_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01772_0
xchain01756_n17_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01773_α:
 jmp qword ptr [r12 + 224]
 xchain01756_n17_β:
 jmp xchain01756_n3_α
xchain01756_n18_α:
# IR_VAR gva
bb01774_α:
 mov rax, qword ptr [rbx + 1008]
 mov rdx, qword ptr [rbx + 1016]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01756_n19_α
 xchain01756_n18_β:
 jmp xchain01756_n16_β
xchain01756_n19_α:
# IR_ACTIVATE
bb01775_α:
 mov rdi, qword ptr [r12 + 112]
 xor esi, esi
 xor edx, edx
 lea rcx, [r12 + 96]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain01756_n16_β
 jmp xchain01756_n16_β
 xchain01756_n19_β:
 jmp xchain01756_n16_β
xchain01756_n20_α:
# IR_COFAIL exhausted
bb01776_α:
 call scrip_cofail@PLT
 jmp proc_cxget_ω
proc_cxget_β:
jmp proc_cxget_ω
proc_cxget_γ:
mov eax, 1
xor edx, edx
pop r12
ret
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
main_α_body:
xchain01777_n0_α:
# IR_LIT_INTEGER
bb01778_α:
 mov qword ptr [r12 + 6752], 6
 mov rax, qword ptr [rip + .Lx01779_0]
 mov qword ptr [r12 + 6760], rax
 jmp xchain01777_n1_α
 xchain01777_n0_β:
 jmp xchain01777_n10_α
.Lx01779_0:
 .quad 1000
xchain01777_n1_α:
# IR_VAR_REF local
bb01780_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6816], rax
 mov qword ptr [r12 + 6824], rdx
 jmp xchain01777_n2_α
 xchain01777_n1_β:
 jmp xchain01777_n5_α
xchain01777_n2_α:
# IR_LIT_INTEGER
bb01226_α:
 mov qword ptr [r12 + 6832], 6
 mov rax, qword ptr [rip + .Lx01781_0]
 mov qword ptr [r12 + 6840], rax
 jmp xchain01777_n3_α
 xchain01777_n2_β:
 jmp xchain01777_n5_α
.Lx01781_0:
 .quad 1
xchain01777_n3_α:
# IR_SUBSCRIPT x[i] variable
bb01228_α:
 mov rdi, qword ptr [r12 + 6816]
 mov rsi, qword ptr [r12 + 6824]
 mov rdx, qword ptr [r12 + 6832]
 mov rcx, qword ptr [r12 + 6840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01777_n5_α
 mov qword ptr [r12 + 6848], rax
 mov qword ptr [r12 + 6856], rdx
 jmp xchain01777_n4_α
 xchain01777_n3_β:
 jmp xchain01777_n5_α
xchain01777_n4_α:
# IR_DEREF variable -> value
bb01782_α:
 mov rdi, qword ptr [r12 + 6848]
 mov rsi, qword ptr [r12 + 6856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01777_n5_α
 mov qword ptr [r12 + 6864], rax
 mov qword ptr [r12 + 6872], rdx
 jmp xchain01777_n6_α
 xchain01777_n4_β:
 jmp xchain01777_n5_α
xchain01777_n5_α:
# IR_LIT_REAL
bb01783_α:
 mov qword ptr [r12 + 6800], 7
 mov rax, qword ptr [rip + .Lx01784_0]
 mov qword ptr [r12 + 6808], rax
 jmp xchain01777_n7_α
 xchain01777_n5_β:
 jmp xchain01777_n10_α
.Lx01784_0:
 .quad 4607182418800017408
xchain01777_n6_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01785_α:
 mov rax, qword ptr [r12 + 6864]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6872]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain01777_n5_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain01777_n8_α
 xchain01777_n6_β:
 jmp xchain01777_n10_α
xchain01777_n7_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01786_α:
 mov rax, qword ptr [r12 + 6800]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6808]
 mov qword ptr [r12 + 6776], rax
 lea rax, [rip + xchain01777_n10_α]
 mov qword ptr [r12 + 6784], rax
 jmp xchain01777_n8_α
 xchain01777_n7_β:
 jmp xchain01777_n10_α
xchain01777_n8_α:
bb01787_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 100
 je .Lx01788_0
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 100
 je .Lx01788_0
 mov eax, dword ptr [r12 + 6752]
 cmp eax, 6
 jne .Lx01788_2
 mov eax, dword ptr [r12 + 6768]
 cmp eax, 6
 jne .Lx01788_2
.Lx01788_1:
 mov rax, qword ptr [r12 + 6760]
 mov rcx, qword ptr [r12 + 6776]
 imul rax, rcx
 mov qword ptr [r12 + 6736], 6
 mov qword ptr [r12 + 6744], rax
 jmp xchain01777_n11_α
.Lx01788_0:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 lea r9, [r12 + 6736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01788_3
.Lx01788_2:
 mov rdi, qword ptr [r12 + 6752]
 mov rsi, qword ptr [r12 + 6760]
 mov rdx, qword ptr [r12 + 6768]
 mov rcx, qword ptr [r12 + 6776]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01777_n10_α
 mov qword ptr [r12 + 6736], rax
 mov qword ptr [r12 + 6744], rdx
.Lx01788_3:
 jmp xchain01777_n11_α
 xchain01777_n8_β:
 jmp xchain01777_n10_α
xchain01777_n9_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01789_α:
 jmp qword ptr [r12 + 6784]
 xchain01777_n9_β:
 jmp xchain01777_n10_α
xchain01777_n10_α:
# IR_LIT_STRING
bb01790_α:
 mov qword ptr [r12 + 6656], 1
 mov rax, qword ptr [rip + .Lx01791_0]
 mov qword ptr [r12 + 6664], rax
 jmp xchain01777_n12_α
 xchain01777_n10_β:
 jmp xchain01777_n16_α
.Lx01791_0:
 .quad .Lx01791_0_s
.Lx01791_0_s:
 .string "/dev/null"
xchain01777_n11_α:
bb01234_α:
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
 je xchain01777_n10_α
 jmp xchain01777_n13_α
 xchain01777_n11_β:
 jmp xchain01777_n10_α
xchain01777_n12_α:
# IR_LIT_STRING
bb01792_α:
 mov qword ptr [r12 + 6672], 1
 mov rax, qword ptr [rip + .Lx01793_0]
 mov qword ptr [r12 + 6680], rax
 jmp xchain01777_n14_α
 xchain01777_n12_β:
 jmp xchain01777_n16_α
.Lx01793_0:
 .quad .Lx01793_0_s
.Lx01793_0_s:
 .string "w"
xchain01777_n13_α:
# IR_ASSIGN gva
bb01794_α:
 mov rax, qword ptr [r12 + 6704]
 mov rdx, qword ptr [r12 + 6712]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 jmp xchain01777_n10_α
 xchain01777_n13_β:
 jmp xchain01777_n10_α
xchain01777_n14_α:
bb01795_α:
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
 je xchain01777_n16_α
 jmp xchain01777_n15_α
 xchain01777_n14_β:
 jmp xchain01777_n16_α
xchain01777_n15_α:
# IR_ASSIGN gva
bb01237_α:
 mov rax, qword ptr [r12 + 6608]
 mov rdx, qword ptr [r12 + 6616]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain01777_n16_α
 xchain01777_n15_β:
 jmp xchain01777_n16_α
xchain01777_n16_α:
# IR_VAR gva
bb01796_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 6576], rax
 mov qword ptr [r12 + 6584], rdx
 jmp xchain01777_n17_α
 xchain01777_n16_β:
 jmp xchain01777_n18_α
xchain01777_n17_α:
bb01797_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6576]
 mov rdx, qword ptr [r12 + 6584]
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 jmp xchain01777_n18_α
 xchain01777_n17_β:
 jmp xchain01777_n18_α
xchain01777_n18_α:
# IR_VAR
bb01798_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6504], rax
 jmp xchain01777_n19_α
 xchain01777_n18_β:
 jmp xchain01777_n22_α
xchain01777_n19_α:
# IR_LIT_REAL
bb01799_α:
 mov qword ptr [r12 + 6544], 7
 mov rax, qword ptr [rip + .Lx01800_0]
 mov qword ptr [r12 + 6552], rax
 jmp xchain01777_n20_α
 xchain01777_n19_β:
 jmp xchain01777_n22_α
.Lx01800_0:
 .quad 4652007308841189376
xchain01777_n20_α:
bb01240_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6544] -> [r12+6528]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6536], rax
  .section .rodata
  .Lrkfn2494: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2494]
 lea rsi, [r12 + 6528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6512], rax
 mov qword ptr [r12 + 6520], rdx
 cmp eax, 99
 je xchain01777_n22_α
 jmp xchain01777_n21_α
 xchain01777_n20_β:
 jmp xchain01777_n22_α
xchain01777_n21_α:
bb01801_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 6896]
 cmp eax, 100
 je .Lx01802_0
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 100
 je .Lx01802_0
.Lx01802_1:
 mov rax, qword ptr [r12 + 6904]
 mov rcx, qword ptr [r12 + 6520]
 cmp rax, rcx
 jge xchain01777_n22_α
 mov rcx, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rcx
 mov rcx, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rcx
 jmp xchain01777_n23_α
.Lx01802_0:
 mov rdi, qword ptr [r12 + 6896]
 mov rsi, qword ptr [r12 + 6904]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 lea r9, [r12 + 6480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx01802_1
 cmp eax, 1
 je xchain01777_n22_α
 jmp xchain01777_n23_α
 xchain01777_n21_β:
 jmp xchain01777_n22_α
xchain01777_n22_α:
bb01803_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2497: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2497]
 lea rsi, [r12 + 6464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 cmp eax, 99
 je xchain01777_n25_α
 jmp xchain01777_n24_α
 xchain01777_n22_β:
 jmp xchain01777_n25_α
xchain01777_n23_α:
bb01804_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6480]
 mov rdx, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain01777_n22_α
 xchain01777_n23_β:
 jmp xchain01777_n22_α
xchain01777_n24_α:
bb01243_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6448]
 mov rdx, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6880], rax
 mov qword ptr [r12 + 6888], rdx
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain01777_n25_α
 xchain01777_n24_β:
 jmp xchain01777_n25_α
xchain01777_n25_α:
# IR_LIT_INTEGER
bb01805_α:
 mov qword ptr [r12 + 6160], 6
 mov rax, qword ptr [rip + .Lx01806_0]
 mov qword ptr [r12 + 6168], rax
 jmp xchain01777_n26_α
 xchain01777_n25_β:
 jmp xchain01777_n37_α
.Lx01806_0:
 .quad 1
xchain01777_n26_α:
# IR_LIT_INTEGER
bb01807_α:
 mov qword ptr [r12 + 6176], 6
 mov rax, qword ptr [rip + .Lx01808_0]
 mov qword ptr [r12 + 6184], rax
 jmp xchain01777_n27_α
 xchain01777_n26_β:
 jmp xchain01777_n37_α
.Lx01808_0:
 .quad 5
xchain01777_n27_α:
# IR_TO
bb01809_α:
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6144], rax
.Lx01810_0:
 mov rax, qword ptr [r12 + 6144]
 mov rcx, qword ptr [r12 + 6184]
 cmp rax, rcx
 jg xchain01777_n37_α
 mov qword ptr [r12 + 6128], 6
 mov qword ptr [r12 + 6136], rax
 jmp xchain01777_n28_α
 xchain01777_n27_β:
 inc qword ptr [r12 + 6144]
 jmp .Lx01810_0
xchain01777_n28_α:
# IR_KEYWORD_read
bb01811_α:
 mov rdi, qword ptr [rip + .Lx01812_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain01777_n29_α
 xchain01777_n28_β:
 jmp xchain01777_n31_α
.Lx01812_0:
 .quad .Lx01812_0_s
.Lx01812_0_s:
 .string "&errout"
xchain01777_n29_α:
# IR_LIT_STRING
bb01813_α:
 mov qword ptr [r12 + 6416], 1
 mov rax, qword ptr [rip + .Lx01814_0]
 mov qword ptr [r12 + 6424], rax
 jmp xchain01777_n30_α
 xchain01777_n29_β:
 jmp xchain01777_n31_α
.Lx01814_0:
 .quad .Lx01814_0_s
.Lx01814_0_s:
 .string "."
xchain01777_n30_α:
bb01815_α:
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
 je xchain01777_n31_α
 jmp xchain01777_n31_α
 xchain01777_n30_β:
 jmp xchain01777_n31_α
xchain01777_n31_α:
# IR_VAR
bb01247_α:
 mov rax, qword ptr [r12 + 6880]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6888]
 mov qword ptr [r12 + 6248], rax
 jmp xchain01777_n32_α
 xchain01777_n31_β:
 jmp xchain01777_n27_β
xchain01777_n32_α:
# IR_PROC_VALUE first-class procedure value
bb01249_α:
 mov rdi, qword ptr [rip + .Lx01816_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 jmp xchain01777_n33_α
 xchain01777_n32_β:
 jmp xchain01777_n27_β
.Lx01816_0:
 .quad .Lx01816_0_s
.Lx01816_0_s:
 .string "nothing"
xchain01777_n33_α:
# IR_VAR
bb01817_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6328], rax
 jmp xchain01777_n34_α
 xchain01777_n33_β:
 jmp xchain01777_n27_β
xchain01777_n34_α:
bb01818_α:
  .section .rodata
  .Lcall01818_pname: .string "measure"
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
   lea rdi, [rip + .Lcall01818_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 cmp eax, 99
 je xchain01777_n27_β
 jmp xchain01777_n35_α
xchain01777_n34_β:
 jmp xchain01777_n27_β
xchain01777_n35_α:
bb01819_α:
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
 je xchain01777_n27_β
 jmp xchain01777_n36_α
 xchain01777_n35_β:
 jmp xchain01777_n27_β
xchain01777_n36_α:
 jmp xchain01777_n27_β
xchain01777_n36_β:
 jmp xchain01777_n27_β
xchain01777_n37_α:
# IR_VAR
bb01820_α:
 mov rax, qword ptr [r12 + 6880]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 6888]
 mov qword ptr [r12 + 5960], rax
 jmp xchain01777_n38_α
 xchain01777_n37_β:
 jmp xchain01777_n40_α
xchain01777_n38_α:
bb01821_α:
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
 je xchain01777_n40_α
 jmp xchain01777_n39_α
 xchain01777_n38_β:
 jmp xchain01777_n40_α
xchain01777_n39_α:
# IR_LIT_INTEGER
bb01822_α:
 mov qword ptr [r12 + 5984], 6
 mov rax, qword ptr [rip + .Lx01823_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain01777_n41_α
 xchain01777_n39_β:
 jmp xchain01777_n40_α
.Lx01823_0:
 .quad 1
xchain01777_n40_α:
# IR_VAR gva
bb01253_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 jmp xchain01777_n42_α
 xchain01777_n40_β:
 jmp xchain01777_n47_α
xchain01777_n41_α:
# IR_VAR
bb01824_α:
 mov rax, qword ptr [r12 + 6880]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6888]
 mov qword ptr [r12 + 6056], rax
 jmp xchain01777_n43_α
 xchain01777_n41_β:
 jmp xchain01777_n40_α
xchain01777_n42_α:
# IR_LIT_INTEGER
bb01825_α:
 mov qword ptr [r12 + 5872], 6
 mov rax, qword ptr [rip + .Lx01826_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain01777_n44_α
 xchain01777_n42_β:
 jmp xchain01777_n47_α
.Lx01826_0:
 .quad 10
xchain01777_n43_α:
# IR_UNOP
bb01827_α:
 mov rdi, qword ptr [r12 + 6880]
 mov rsi, qword ptr [r12 + 6888]
 call rt_size_d@PLT
 mov qword ptr [r12 + 6032], rax
 mov qword ptr [r12 + 6040], rdx
 jmp xchain01777_n45_α
 xchain01777_n43_β:
 jmp xchain01777_n40_α
xchain01777_n44_α:
bb01256_α:
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
  .Lrkfn2529: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2529]
 lea rsi, [r12 + 5824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain01777_n47_α
 jmp xchain01777_n46_α
 xchain01777_n44_β:
 jmp xchain01777_n47_α
xchain01777_n45_α:
# IR_LIT_INTEGER
bb01258_α:
 mov qword ptr [r12 + 6064], 6
 mov rax, qword ptr [rip + .Lx01828_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain01777_n48_α
 xchain01777_n45_β:
 jmp xchain01777_n40_α
.Lx01828_0:
 .quad 1
xchain01777_n46_α:
# IR_LIT_STRING
bb01829_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx01830_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain01777_n49_α
 xchain01777_n46_β:
 jmp xchain01777_n47_α
.Lx01830_0:
 .quad .Lx01830_0_s
.Lx01830_0_s:
 .string "  overhead"
xchain01777_n47_α:
# IR_PROC_VALUE first-class procedure value
bb01831_α:
 mov rdi, qword ptr [rip + .Lx01832_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain01777_n50_α
 xchain01777_n47_β:
 jmp xchain01777_n52_α
.Lx01832_0:
 .quad .Lx01832_0_s
.Lx01832_0_s:
 .string "nothing"
xchain01777_n48_α:
bb01833_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 100
 je .Lx01834_0
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 100
 je .Lx01834_0
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 6
 jne .Lx01834_2
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 6
 jne .Lx01834_2
.Lx01834_1:
 mov rax, qword ptr [r12 + 6040]
 mov rcx, qword ptr [r12 + 6072]
 sub rax, rcx
 mov qword ptr [r12 + 6016], 6
 mov qword ptr [r12 + 6024], rax
 jmp xchain01777_n51_α
.Lx01834_0:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 lea r9, [r12 + 6016]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01834_3
.Lx01834_2:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01777_n40_α
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
.Lx01834_3:
 jmp xchain01777_n51_α
 xchain01777_n48_β:
 jmp xchain01777_n40_α
xchain01777_n49_α:
bb01835_α:
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
  .Lrkfn2536: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2536]
 lea rsi, [r12 + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 cmp eax, 99
 je xchain01777_n47_α
 jmp xchain01777_n47_α
 xchain01777_n49_β:
 jmp xchain01777_n47_α
xchain01777_n50_α:
bb01836_α:
  .section .rodata
  .Lcall01836_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5744]
 mov rdx, qword ptr [r12 + 5752]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01836_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain01777_n52_α
 jmp xchain01777_n52_α
xchain01777_n50_β:
 jmp xchain01777_n52_α
xchain01777_n51_α:
# IR_LIT_INTEGER
bb01837_α:
 mov qword ptr [r12 + 6080], 6
 mov rax, qword ptr [rip + .Lx01838_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain01777_n53_α
 xchain01777_n51_β:
 jmp xchain01777_n40_α
.Lx01838_0:
 .quad 2
xchain01777_n52_α:
# IR_PROC_VALUE first-class procedure value
bb01839_α:
 mov rdi, qword ptr [rip + .Lx01840_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain01777_n54_α
 xchain01777_n52_β:
 jmp xchain01777_n56_α
.Lx01840_0:
 .quad .Lx01840_0_s
.Lx01840_0_s:
 .string "nothing"
xchain01777_n53_α:
bb01841_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 100
 je .Lx01842_0
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 100
 je .Lx01842_0
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 6
 jne .Lx01842_2
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 6
 jne .Lx01842_2
.Lx01842_1:
 mov rax, qword ptr [r12 + 6024]
 mov rcx, qword ptr [r12 + 6088]
 cqo
 idiv rcx
 mov qword ptr [r12 + 6000], 6
 mov qword ptr [r12 + 6008], rax
 jmp xchain01777_n55_α
.Lx01842_0:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 lea r9, [r12 + 6000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01842_3
.Lx01842_2:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01777_n40_α
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
.Lx01842_3:
 jmp xchain01777_n55_α
 xchain01777_n53_β:
 jmp xchain01777_n40_α
xchain01777_n54_α:
bb01843_α:
  .section .rodata
  .Lcall01843_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5696]
 mov rdx, qword ptr [r12 + 5704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01843_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 cmp eax, 99
 je xchain01777_n56_α
 jmp xchain01777_n56_α
xchain01777_n54_β:
 jmp xchain01777_n56_α
xchain01777_n55_α:
bb01263_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 100
 je .Lx01844_0
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 100
 je .Lx01844_0
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 6
 jne .Lx01844_2
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 6
 jne .Lx01844_2
.Lx01844_1:
 mov rax, qword ptr [r12 + 5992]
 mov rcx, qword ptr [r12 + 6008]
 add rax, rcx
 mov qword ptr [r12 + 5968], 6
 mov qword ptr [r12 + 5976], rax
 jmp xchain01777_n57_α
.Lx01844_0:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 lea r9, [r12 + 5968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01844_3
.Lx01844_2:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01777_n40_α
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
.Lx01844_3:
 jmp xchain01777_n57_α
 xchain01777_n55_β:
 jmp xchain01777_n40_α
xchain01777_n56_α:
# IR_PROC_VALUE first-class procedure value
bb01845_α:
 mov rdi, qword ptr [rip + .Lx01846_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain01777_n58_α
 xchain01777_n56_β:
 jmp xchain01777_n60_α
.Lx01846_0:
 .quad .Lx01846_0_s
.Lx01846_0_s:
 .string "nothing"
xchain01777_n57_α:
# IR_SUBSCRIPT x[i] variable
bb01847_α:
 mov rdi, qword ptr [r12 + 5920]
 mov rsi, qword ptr [r12 + 5928]
 mov rdx, qword ptr [r12 + 5968]
 mov rcx, qword ptr [r12 + 5976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01777_n40_α
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain01777_n59_α
 xchain01777_n57_β:
 jmp xchain01777_n40_α
xchain01777_n58_α:
bb01848_α:
  .section .rodata
  .Lcall01848_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5648]
 mov rdx, qword ptr [r12 + 5656]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01848_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 cmp eax, 99
 je xchain01777_n60_α
 jmp xchain01777_n60_α
xchain01777_n58_β:
 jmp xchain01777_n60_α
xchain01777_n59_α:
# IR_DEREF variable -> value
bb01266_α:
 mov rdi, qword ptr [r12 + 6096]
 mov rsi, qword ptr [r12 + 6104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01777_n40_α
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain01777_n61_α
 xchain01777_n59_β:
 jmp xchain01777_n40_α
xchain01777_n60_α:
# IR_PROC_VALUE first-class procedure value
bb01849_α:
 mov rdi, qword ptr [rip + .Lx01850_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain01777_n62_α
 xchain01777_n60_β:
 jmp xchain01777_n63_α
.Lx01850_0:
 .quad .Lx01850_0_s
.Lx01850_0_s:
 .string "globasgn"
xchain01777_n61_α:
# IR_ASSIGN gva
bb01851_α:
 mov rax, qword ptr [r12 + 6112]
 mov rdx, qword ptr [r12 + 6120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 jmp xchain01777_n40_α
 xchain01777_n61_β:
 jmp xchain01777_n40_α
xchain01777_n62_α:
bb01852_α:
  .section .rodata
  .Lcall01852_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01852_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5568], rax
 mov qword ptr [r12 + 5576], rdx
 cmp eax, 99
 je xchain01777_n63_α
 jmp xchain01777_n63_α
xchain01777_n62_β:
 jmp xchain01777_n63_α
xchain01777_n63_α:
# IR_PROC_VALUE first-class procedure value
bb01853_α:
 mov rdi, qword ptr [rip + .Lx01854_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 jmp xchain01777_n64_α
 xchain01777_n63_β:
 jmp xchain01777_n65_α
.Lx01854_0:
 .quad .Lx01854_0_s
.Lx01854_0_s:
 .string "statasgn"
xchain01777_n64_α:
bb01855_α:
  .section .rodata
  .Lcall01855_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5552]
 mov rdx, qword ptr [r12 + 5560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01855_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain01777_n65_α
 jmp xchain01777_n65_α
xchain01777_n64_β:
 jmp xchain01777_n65_α
xchain01777_n65_α:
# IR_PROC_VALUE first-class procedure value
bb01856_α:
 mov rdi, qword ptr [rip + .Lx01857_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain01777_n66_α
 xchain01777_n65_β:
 jmp xchain01777_n67_α
.Lx01857_0:
 .quad .Lx01857_0_s
.Lx01857_0_s:
 .string "loclasgn"
xchain01777_n66_α:
bb01271_α:
  .section .rodata
  .Lcall01271_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01271_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain01777_n67_α
 jmp xchain01777_n67_α
xchain01777_n66_β:
 jmp xchain01777_n67_α
xchain01777_n67_α:
# IR_PROC_VALUE first-class procedure value
bb01272_α:
 mov rdi, qword ptr [rip + .Lx01858_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain01777_n68_α
 xchain01777_n67_β:
 jmp xchain01777_n69_α
.Lx01858_0:
 .quad .Lx01858_0_s
.Lx01858_0_s:
 .string "if0"
xchain01777_n68_α:
bb01859_α:
  .section .rodata
  .Lcall01859_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5456]
 mov rdx, qword ptr [r12 + 5464]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01859_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain01777_n69_α
 jmp xchain01777_n69_α
xchain01777_n68_β:
 jmp xchain01777_n69_α
xchain01777_n69_α:
# IR_PROC_VALUE first-class procedure value
bb01860_α:
 mov rdi, qword ptr [rip + .Lx01861_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain01777_n70_α
 xchain01777_n69_β:
 jmp xchain01777_n71_α
.Lx01861_0:
 .quad .Lx01861_0_s
.Lx01861_0_s:
 .string "case3"
xchain01777_n70_α:
bb01862_α:
  .section .rodata
  .Lcall01862_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01862_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 cmp eax, 99
 je xchain01777_n71_α
 jmp xchain01777_n71_α
xchain01777_n70_β:
 jmp xchain01777_n71_α
xchain01777_n71_α:
# IR_PROC_VALUE first-class procedure value
bb01863_α:
 mov rdi, qword ptr [rip + .Lx01864_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain01777_n72_α
 xchain01777_n71_β:
 jmp xchain01777_n73_α
.Lx01864_0:
 .quad .Lx01864_0_s
.Lx01864_0_s:
 .string "nulltest"
xchain01777_n72_α:
bb01865_α:
  .section .rodata
  .Lcall01865_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5360]
 mov rdx, qword ptr [r12 + 5368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01865_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 cmp eax, 99
 je xchain01777_n73_α
 jmp xchain01777_n73_α
xchain01777_n72_β:
 jmp xchain01777_n73_α
xchain01777_n73_α:
# IR_PROC_VALUE first-class procedure value
bb01866_α:
 mov rdi, qword ptr [rip + .Lx01867_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain01777_n74_α
 xchain01777_n73_β:
 jmp xchain01777_n75_α
.Lx01867_0:
 .quad .Lx01867_0_s
.Lx01867_0_s:
 .string "typef"
xchain01777_n74_α:
bb01868_α:
  .section .rodata
  .Lcall01868_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5312]
 mov rdx, qword ptr [r12 + 5320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01868_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain01777_n75_α
 jmp xchain01777_n75_α
xchain01777_n74_β:
 jmp xchain01777_n75_α
xchain01777_n75_α:
# IR_PROC_VALUE first-class procedure value
bb01277_α:
 mov rdi, qword ptr [rip + .Lx01869_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain01777_n76_α
 xchain01777_n75_β:
 jmp xchain01777_n77_α
.Lx01869_0:
 .quad .Lx01869_0_s
.Lx01869_0_s:
 .string "imagef"
xchain01777_n76_α:
bb01870_α:
  .section .rodata
  .Lcall01870_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01870_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 cmp eax, 99
 je xchain01777_n77_α
 jmp xchain01777_n77_α
xchain01777_n76_β:
 jmp xchain01777_n77_α
xchain01777_n77_α:
# IR_PROC_VALUE first-class procedure value
bb01871_α:
 mov rdi, qword ptr [rip + .Lx01872_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain01777_n78_α
 xchain01777_n77_β:
 jmp xchain01777_n79_α
.Lx01872_0:
 .quad .Lx01872_0_s
.Lx01872_0_s:
 .string "everyto"
xchain01777_n78_α:
bb01873_α:
  .section .rodata
  .Lcall01873_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5216]
 mov rdx, qword ptr [r12 + 5224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01873_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain01777_n79_α
 jmp xchain01777_n79_α
xchain01777_n78_β:
 jmp xchain01777_n79_α
xchain01777_n79_α:
# IR_PROC_VALUE first-class procedure value
bb01280_α:
 mov rdi, qword ptr [rip + .Lx01874_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain01777_n80_α
 xchain01777_n79_β:
 jmp xchain01777_n81_α
.Lx01874_0:
 .quad .Lx01874_0_s
.Lx01874_0_s:
 .string "everyalt"
xchain01777_n80_α:
bb01282_α:
  .section .rodata
  .Lcall01282_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5168]
 mov rdx, qword ptr [r12 + 5176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01282_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 cmp eax, 99
 je xchain01777_n81_α
 jmp xchain01777_n81_α
xchain01777_n80_β:
 jmp xchain01777_n81_α
xchain01777_n81_α:
# IR_PROC_VALUE first-class procedure value
bb01283_α:
 mov rdi, qword ptr [rip + .Lx01875_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 jmp xchain01777_n82_α
 xchain01777_n81_β:
 jmp xchain01777_n83_α
.Lx01875_0:
 .quad .Lx01875_0_s
.Lx01875_0_s:
 .string "conj5"
xchain01777_n82_α:
bb01876_α:
  .section .rodata
  .Lcall01876_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5120]
 mov rdx, qword ptr [r12 + 5128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01876_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain01777_n83_α
 jmp xchain01777_n83_α
xchain01777_n82_β:
 jmp xchain01777_n83_α
xchain01777_n83_α:
# IR_PROC_VALUE first-class procedure value
bb01877_α:
 mov rdi, qword ptr [rip + .Lx01878_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain01777_n84_α
 xchain01777_n83_β:
 jmp xchain01777_n85_α
.Lx01878_0:
 .quad .Lx01878_0_s
.Lx01878_0_s:
 .string "nullfunc"
xchain01777_n84_α:
bb01879_α:
  .section .rodata
  .Lcall01879_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01879_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain01777_n85_α
 jmp xchain01777_n85_α
xchain01777_n84_β:
 jmp xchain01777_n85_α
xchain01777_n85_α:
# IR_PROC_VALUE first-class procedure value
bb01880_α:
 mov rdi, qword ptr [rip + .Lx01881_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain01777_n86_α
 xchain01777_n85_β:
 jmp xchain01777_n87_α
.Lx01881_0:
 .quad .Lx01881_0_s
.Lx01881_0_s:
 .string "listcall"
xchain01777_n86_α:
bb01882_α:
  .section .rodata
  .Lcall01882_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5024]
 mov rdx, qword ptr [r12 + 5032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01882_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain01777_n87_α
 jmp xchain01777_n87_α
xchain01777_n86_β:
 jmp xchain01777_n87_α
xchain01777_n87_α:
# IR_PROC_VALUE first-class procedure value
bb01883_α:
 mov rdi, qword ptr [rip + .Lx01884_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain01777_n88_α
 xchain01777_n87_β:
 jmp xchain01777_n89_α
.Lx01884_0:
 .quad .Lx01884_0_s
.Lx01884_0_s:
 .string "marshal"
xchain01777_n88_α:
bb01885_α:
  .section .rodata
  .Lcall01885_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01885_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain01777_n89_α
 jmp xchain01777_n89_α
xchain01777_n88_β:
 jmp xchain01777_n89_α
xchain01777_n89_α:
# IR_PROC_VALUE first-class procedure value
bb01886_α:
 mov rdi, qword ptr [rip + .Lx01887_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain01777_n90_α
 xchain01777_n89_β:
 jmp xchain01777_n91_α
.Lx01887_0:
 .quad .Lx01887_0_s
.Lx01887_0_s:
 .string "evsusp"
xchain01777_n90_α:
bb01888_α:
  .section .rodata
  .Lcall01888_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4928]
 mov rdx, qword ptr [r12 + 4936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01888_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je xchain01777_n91_α
 jmp xchain01777_n91_α
xchain01777_n90_β:
 jmp xchain01777_n91_α
xchain01777_n91_α:
# IR_PROC_VALUE first-class procedure value
bb01889_α:
 mov rdi, qword ptr [rip + .Lx01890_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 jmp xchain01777_n92_α
 xchain01777_n91_β:
 jmp xchain01777_n93_α
.Lx01890_0:
 .quad .Lx01890_0_s
.Lx01890_0_s:
 .string "tointeger"
xchain01777_n92_α:
bb01891_α:
  .section .rodata
  .Lcall01891_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4880]
 mov rdx, qword ptr [r12 + 4888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01891_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 cmp eax, 99
 je xchain01777_n93_α
 jmp xchain01777_n93_α
xchain01777_n92_β:
 jmp xchain01777_n93_α
xchain01777_n93_α:
# IR_PROC_VALUE first-class procedure value
bb01892_α:
 mov rdi, qword ptr [rip + .Lx01893_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain01777_n94_α
 xchain01777_n93_β:
 jmp xchain01777_n95_α
.Lx01893_0:
 .quad .Lx01893_0_s
.Lx01893_0_s:
 .string "intcoerce"
xchain01777_n94_α:
bb01289_α:
  .section .rodata
  .Lcall01289_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4832]
 mov rdx, qword ptr [r12 + 4840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01289_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 cmp eax, 99
 je xchain01777_n95_α
 jmp xchain01777_n95_α
xchain01777_n94_β:
 jmp xchain01777_n95_α
xchain01777_n95_α:
# IR_PROC_VALUE first-class procedure value
bb01894_α:
 mov rdi, qword ptr [rip + .Lx01895_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain01777_n96_α
 xchain01777_n95_β:
 jmp xchain01777_n97_α
.Lx01895_0:
 .quad .Lx01895_0_s
.Lx01895_0_s:
 .string "uplus"
xchain01777_n96_α:
bb01896_α:
  .section .rodata
  .Lcall01896_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01896_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je xchain01777_n97_α
 jmp xchain01777_n97_α
xchain01777_n96_β:
 jmp xchain01777_n97_α
xchain01777_n97_α:
# IR_PROC_VALUE first-class procedure value
bb01897_α:
 mov rdi, qword ptr [rip + .Lx01898_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain01777_n98_α
 xchain01777_n97_β:
 jmp xchain01777_n99_α
.Lx01898_0:
 .quad .Lx01898_0_s
.Lx01898_0_s:
 .string "tostring"
xchain01777_n98_α:
bb01291_α:
  .section .rodata
  .Lcall01291_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4736]
 mov rdx, qword ptr [r12 + 4744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01291_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je xchain01777_n99_α
 jmp xchain01777_n99_α
xchain01777_n98_β:
 jmp xchain01777_n99_α
xchain01777_n99_α:
# IR_PROC_VALUE first-class procedure value
bb01899_α:
 mov rdi, qword ptr [rip + .Lx01900_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain01777_n00013_α
 xchain01777_n99_β:
 jmp xchain01777_n00015_α
.Lx01900_0:
 .quad .Lx01900_0_s
.Lx01900_0_s:
 .string "strcoerce"
xchain01777_n00013_α:
bb01901_α:
  .section .rodata
  .Lcall01901_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01901_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain01777_n00015_α
 jmp xchain01777_n00015_α
xchain01777_n00013_β:
 jmp xchain01777_n00015_α
xchain01777_n00015_α:
# IR_PROC_VALUE first-class procedure value
bb01902_α:
 mov rdi, qword ptr [rip + .Lx01903_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain01777_n00001_α
 xchain01777_n00015_β:
 jmp xchain01777_n00016_α
.Lx01903_0:
 .quad .Lx01903_0_s
.Lx01903_0_s:
 .string "absf"
xchain01777_n00001_α:
bb01904_α:
  .section .rodata
  .Lcall01904_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4640]
 mov rdx, qword ptr [r12 + 4648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01904_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain01777_n00016_α
 jmp xchain01777_n00016_α
xchain01777_n00001_β:
 jmp xchain01777_n00016_α
xchain01777_n00016_α:
# IR_PROC_VALUE first-class procedure value
bb01905_α:
 mov rdi, qword ptr [rip + .Lx01906_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain01777_n00018_α
 xchain01777_n00016_β:
 jmp xchain01777_n00021_α
.Lx01906_0:
 .quad .Lx01906_0_s
.Lx01906_0_s:
 .string "intadd"
xchain01777_n00018_α:
bb01907_α:
  .section .rodata
  .Lcall01907_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01907_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 cmp eax, 99
 je xchain01777_n00021_α
 jmp xchain01777_n00021_α
xchain01777_n00018_β:
 jmp xchain01777_n00021_α
xchain01777_n00021_α:
# IR_PROC_VALUE first-class procedure value
bb01296_α:
 mov rdi, qword ptr [rip + .Lx01908_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain01777_n00022_α
 xchain01777_n00021_β:
 jmp xchain01777_n00023_α
.Lx01908_0:
 .quad .Lx01908_0_s
.Lx01908_0_s:
 .string "addfunc"
xchain01777_n00022_α:
bb01298_α:
  .section .rodata
  .Lcall01298_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4544]
 mov rdx, qword ptr [r12 + 4552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01298_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je xchain01777_n00023_α
 jmp xchain01777_n00023_α
xchain01777_n00022_β:
 jmp xchain01777_n00023_α
xchain01777_n00023_α:
# IR_PROC_VALUE first-class procedure value
bb01909_α:
 mov rdi, qword ptr [rip + .Lx01910_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain01777_n00025_α
 xchain01777_n00023_β:
 jmp xchain01777_n00027_α
.Lx01910_0:
 .quad .Lx01910_0_s
.Lx01910_0_s:
 .string "intpow"
xchain01777_n00025_α:
bb01911_α:
  .section .rodata
  .Lcall01911_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01911_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 cmp eax, 99
 je xchain01777_n00027_α
 jmp xchain01777_n00027_α
xchain01777_n00025_β:
 jmp xchain01777_n00027_α
xchain01777_n00027_α:
# IR_PROC_VALUE first-class procedure value
bb01912_α:
 mov rdi, qword ptr [rip + .Lx01913_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain01777_n00028_α
 xchain01777_n00027_β:
 jmp xchain01777_n00029_α
.Lx01913_0:
 .quad .Lx01913_0_s
.Lx01913_0_s:
 .string "intcmp"
xchain01777_n00028_α:
bb01914_α:
  .section .rodata
  .Lcall01914_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4448]
 mov rdx, qword ptr [r12 + 4456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01914_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je xchain01777_n00029_α
 jmp xchain01777_n00029_α
xchain01777_n00028_β:
 jmp xchain01777_n00029_α
xchain01777_n00029_α:
# IR_PROC_VALUE first-class procedure value
bb01915_α:
 mov rdi, qword ptr [rip + .Lx01916_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain01777_n00002_α
 xchain01777_n00029_β:
 jmp xchain01777_n00033_α
.Lx01916_0:
 .quad .Lx01916_0_s
.Lx01916_0_s:
 .string "rfact0"
xchain01777_n00002_α:
bb01917_α:
  .section .rodata
  .Lcall01917_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01917_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain01777_n00033_α
 jmp xchain01777_n00033_α
xchain01777_n00002_β:
 jmp xchain01777_n00033_α
xchain01777_n00033_α:
# IR_PROC_VALUE first-class procedure value
bb01918_α:
 mov rdi, qword ptr [rip + .Lx01919_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain01777_n00034_α
 xchain01777_n00033_β:
 jmp xchain01777_n00035_α
.Lx01919_0:
 .quad .Lx01919_0_s
.Lx01919_0_s:
 .string "rfact10"
xchain01777_n00034_α:
bb01303_α:
  .section .rodata
  .Lcall01303_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4352]
 mov rdx, qword ptr [r12 + 4360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01303_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain01777_n00035_α
 jmp xchain01777_n00035_α
xchain01777_n00034_β:
 jmp xchain01777_n00035_α
xchain01777_n00035_α:
# IR_PROC_VALUE first-class procedure value
bb01920_α:
 mov rdi, qword ptr [rip + .Lx01921_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 jmp xchain01777_n00003_α
 xchain01777_n00035_β:
 jmp xchain01777_n00004_α
.Lx01921_0:
 .quad .Lx01921_0_s
.Lx01921_0_s:
 .string "rfib5"
xchain01777_n00003_α:
bb01922_α:
  .section .rodata
  .Lcall01922_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01922_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain01777_n00004_α
 jmp xchain01777_n00004_α
xchain01777_n00003_β:
 jmp xchain01777_n00004_α
xchain01777_n00004_α:
# IR_PROC_VALUE first-class procedure value
bb01923_α:
 mov rdi, qword ptr [rip + .Lx01924_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain01777_n00005_α
 xchain01777_n00004_β:
 jmp xchain01777_n00038_α
.Lx01924_0:
 .quad .Lx01924_0_s
.Lx01924_0_s:
 .string "prslow"
xchain01777_n00005_α:
bb01305_α:
  .section .rodata
  .Lcall01305_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4256]
 mov rdx, qword ptr [r12 + 4264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01305_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain01777_n00038_α
 jmp xchain01777_n00038_α
xchain01777_n00005_β:
 jmp xchain01777_n00038_α
xchain01777_n00038_α:
# IR_PROC_VALUE first-class procedure value
bb01307_α:
 mov rdi, qword ptr [rip + .Lx01925_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain01777_n00040_α
 xchain01777_n00038_β:
 jmp xchain01777_n00042_α
.Lx01925_0:
 .quad .Lx01925_0_s
.Lx01925_0_s:
 .string "toreal"
xchain01777_n00040_α:
bb01309_α:
  .section .rodata
  .Lcall01309_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01309_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 cmp eax, 99
 je xchain01777_n00042_α
 jmp xchain01777_n00042_α
xchain01777_n00040_β:
 jmp xchain01777_n00042_α
xchain01777_n00042_α:
# IR_PROC_VALUE first-class procedure value
bb01310_α:
 mov rdi, qword ptr [rip + .Lx01926_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain01777_n00044_α
 xchain01777_n00042_β:
 jmp xchain01777_n00045_α
.Lx01926_0:
 .quad .Lx01926_0_s
.Lx01926_0_s:
 .string "realcoerce"
xchain01777_n00044_α:
bb01927_α:
  .section .rodata
  .Lcall01927_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4160]
 mov rdx, qword ptr [r12 + 4168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01927_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je xchain01777_n00045_α
 jmp xchain01777_n00045_α
xchain01777_n00044_β:
 jmp xchain01777_n00045_α
xchain01777_n00045_α:
# IR_PROC_VALUE first-class procedure value
bb01928_α:
 mov rdi, qword ptr [rip + .Lx01929_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain01777_n00046_α
 xchain01777_n00045_β:
 jmp xchain01777_n00048_α
.Lx01929_0:
 .quad .Lx01929_0_s
.Lx01929_0_s:
 .string "uplusr"
xchain01777_n00046_α:
bb01930_α:
  .section .rodata
  .Lcall01930_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01930_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 cmp eax, 99
 je xchain01777_n00048_α
 jmp xchain01777_n00048_α
xchain01777_n00046_β:
 jmp xchain01777_n00048_α
xchain01777_n00048_α:
# IR_PROC_VALUE first-class procedure value
bb01931_α:
 mov rdi, qword ptr [rip + .Lx01932_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain01777_n00006_α
 xchain01777_n00048_β:
 jmp xchain01777_n00050_α
.Lx01932_0:
 .quad .Lx01932_0_s
.Lx01932_0_s:
 .string "rtostring"
xchain01777_n00006_α:
bb01933_α:
  .section .rodata
  .Lcall01933_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4064]
 mov rdx, qword ptr [r12 + 4072]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01933_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain01777_n00050_α
 jmp xchain01777_n00050_α
xchain01777_n00006_β:
 jmp xchain01777_n00050_α
xchain01777_n00050_α:
# IR_PROC_VALUE first-class procedure value
bb01934_α:
 mov rdi, qword ptr [rip + .Lx01935_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain01777_n00051_α
 xchain01777_n00050_β:
 jmp xchain01777_n00053_α
.Lx01935_0:
 .quad .Lx01935_0_s
.Lx01935_0_s:
 .string "strcoercer"
xchain01777_n00051_α:
bb01936_α:
  .section .rodata
  .Lcall01936_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01936_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain01777_n00053_α
 jmp xchain01777_n00053_α
xchain01777_n00051_β:
 jmp xchain01777_n00053_α
xchain01777_n00053_α:
# IR_PROC_VALUE first-class procedure value
bb01937_α:
 mov rdi, qword ptr [rip + .Lx01938_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 jmp xchain01777_n00007_α
 xchain01777_n00053_β:
 jmp xchain01777_n00008_α
.Lx01938_0:
 .quad .Lx01938_0_s
.Lx01938_0_s:
 .string "realcmp"
xchain01777_n00007_α:
bb01939_α:
  .section .rodata
  .Lcall01939_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01939_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je xchain01777_n00008_α
 jmp xchain01777_n00008_α
xchain01777_n00007_β:
 jmp xchain01777_n00008_α
xchain01777_n00008_α:
# IR_PROC_VALUE first-class procedure value
bb01940_α:
 mov rdi, qword ptr [rip + .Lx01941_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 jmp xchain01777_n00058_α
 xchain01777_n00008_β:
 jmp xchain01777_n00059_α
.Lx01941_0:
 .quad .Lx01941_0_s
.Lx01941_0_s:
 .string "sqrtf"
xchain01777_n00058_α:
bb01942_α:
  .section .rodata
  .Lcall01942_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3920]
 mov rdx, qword ptr [r12 + 3928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01942_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 cmp eax, 99
 je xchain01777_n00059_α
 jmp xchain01777_n00059_α
xchain01777_n00058_β:
 jmp xchain01777_n00059_α
xchain01777_n00059_α:
# IR_PROC_VALUE first-class procedure value
bb01943_α:
 mov rdi, qword ptr [rip + .Lx01944_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain01777_n00060_α
 xchain01777_n00059_β:
 jmp xchain01777_n00062_α
.Lx01944_0:
 .quad .Lx01944_0_s
.Lx01944_0_s:
 .string "cosf"
xchain01777_n00060_α:
bb01945_α:
  .section .rodata
  .Lcall01945_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3872]
 mov rdx, qword ptr [r12 + 3880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01945_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain01777_n00062_α
 jmp xchain01777_n00062_α
xchain01777_n00060_β:
 jmp xchain01777_n00062_α
xchain01777_n00062_α:
# IR_PROC_VALUE first-class procedure value
bb01946_α:
 mov rdi, qword ptr [rip + .Lx01947_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain01777_n00009_α
 xchain01777_n00062_β:
 jmp xchain01777_n00010_α
.Lx01947_0:
 .quad .Lx01947_0_s
.Lx01947_0_s:
 .string "logf"
xchain01777_n00009_α:
bb01948_α:
  .section .rodata
  .Lcall01948_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3824]
 mov rdx, qword ptr [r12 + 3832]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01948_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je xchain01777_n00010_α
 jmp xchain01777_n00010_α
xchain01777_n00009_β:
 jmp xchain01777_n00010_α
xchain01777_n00010_α:
# IR_PROC_VALUE first-class procedure value
bb01317_α:
 mov rdi, qword ptr [rip + .Lx01949_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 jmp xchain01777_n00011_α
 xchain01777_n00010_β:
 jmp xchain01777_n00065_α
.Lx01949_0:
 .quad .Lx01949_0_s
.Lx01949_0_s:
 .string "charf"
xchain01777_n00011_α:
bb01950_α:
  .section .rodata
  .Lcall01950_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3776]
 mov rdx, qword ptr [r12 + 3784]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01950_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je xchain01777_n00065_α
 jmp xchain01777_n00065_α
xchain01777_n00011_β:
 jmp xchain01777_n00065_α
xchain01777_n00065_α:
# IR_PROC_VALUE first-class procedure value
bb01951_α:
 mov rdi, qword ptr [rip + .Lx01952_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain01777_n00067_α
 xchain01777_n00065_β:
 jmp xchain01777_n00069_α
.Lx01952_0:
 .quad .Lx01952_0_s
.Lx01952_0_s:
 .string "ordf"
xchain01777_n00067_α:
bb01953_α:
  .section .rodata
  .Lcall01953_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3728]
 mov rdx, qword ptr [r12 + 3736]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01953_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 cmp eax, 99
 je xchain01777_n00069_α
 jmp xchain01777_n00069_α
xchain01777_n00067_β:
 jmp xchain01777_n00069_α
xchain01777_n00069_α:
# IR_PROC_VALUE first-class procedure value
bb01320_α:
 mov rdi, qword ptr [rip + .Lx01954_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain01777_n00012_α
 xchain01777_n00069_β:
 jmp xchain01777_n00014_α
.Lx01954_0:
 .quad .Lx01954_0_s
.Lx01954_0_s:
 .string "strsize"
xchain01777_n00012_α:
bb01955_α:
  .section .rodata
  .Lcall01955_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3680]
 mov rdx, qword ptr [r12 + 3688]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01955_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je xchain01777_n00014_α
 jmp xchain01777_n00014_α
xchain01777_n00012_β:
 jmp xchain01777_n00014_α
xchain01777_n00014_α:
# IR_PROC_VALUE first-class procedure value
bb01956_α:
 mov rdi, qword ptr [rip + .Lx01957_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain01777_n00072_α
 xchain01777_n00014_β:
 jmp xchain01777_n00074_α
.Lx01957_0:
 .quad .Lx01957_0_s
.Lx01957_0_s:
 .string "strpick"
xchain01777_n00072_α:
bb01958_α:
  .section .rodata
  .Lcall01958_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3632]
 mov rdx, qword ptr [r12 + 3640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01958_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain01777_n00074_α
 jmp xchain01777_n00074_α
xchain01777_n00072_β:
 jmp xchain01777_n00074_α
xchain01777_n00074_α:
# IR_PROC_VALUE first-class procedure value
bb01959_α:
 mov rdi, qword ptr [rip + .Lx01960_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain01777_n00076_α
 xchain01777_n00074_β:
 jmp xchain01777_n00077_α
.Lx01960_0:
 .quad .Lx01960_0_s
.Lx01960_0_s:
 .string "strbang"
xchain01777_n00076_α:
bb01961_α:
  .section .rodata
  .Lcall01961_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01961_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je xchain01777_n00077_α
 jmp xchain01777_n00077_α
xchain01777_n00076_β:
 jmp xchain01777_n00077_α
xchain01777_n00077_α:
# IR_PROC_VALUE first-class procedure value
bb01962_α:
 mov rdi, qword ptr [rip + .Lx01963_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain01777_n00017_α
 xchain01777_n00077_β:
 jmp xchain01777_n00019_α
.Lx01963_0:
 .quad .Lx01963_0_s
.Lx01963_0_s:
 .string "strsub"
xchain01777_n00017_α:
bb01325_α:
  .section .rodata
  .Lcall01325_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3536]
 mov rdx, qword ptr [r12 + 3544]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01325_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain01777_n00019_α
 jmp xchain01777_n00019_α
xchain01777_n00017_β:
 jmp xchain01777_n00019_α
xchain01777_n00019_α:
# IR_PROC_VALUE first-class procedure value
bb01327_α:
 mov rdi, qword ptr [rip + .Lx01964_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain01777_n00020_α
 xchain01777_n00019_β:
 jmp xchain01777_n00081_α
.Lx01964_0:
 .quad .Lx01964_0_s
.Lx01964_0_s:
 .string "substr"
xchain01777_n00020_α:
bb01965_α:
  .section .rodata
  .Lcall01965_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01965_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain01777_n00081_α
 jmp xchain01777_n00081_α
xchain01777_n00020_β:
 jmp xchain01777_n00081_α
xchain01777_n00081_α:
# IR_PROC_VALUE first-class procedure value
bb01966_α:
 mov rdi, qword ptr [rip + .Lx01967_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain01777_n00083_α
 xchain01777_n00081_β:
 jmp xchain01777_n00084_α
.Lx01967_0:
 .quad .Lx01967_0_s
.Lx01967_0_s:
 .string "subsasg"
xchain01777_n00083_α:
bb01968_α:
  .section .rodata
  .Lcall01968_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01968_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain01777_n00084_α
 jmp xchain01777_n00084_α
xchain01777_n00083_β:
 jmp xchain01777_n00084_α
xchain01777_n00084_α:
# IR_PROC_VALUE first-class procedure value
bb01969_α:
 mov rdi, qword ptr [rip + .Lx01970_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain01777_n00024_α
 xchain01777_n00084_β:
 jmp xchain01777_n00026_α
.Lx01970_0:
 .quad .Lx01970_0_s
.Lx01970_0_s:
 .string "strcmp"
xchain01777_n00024_α:
bb01971_α:
  .section .rodata
  .Lcall01971_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01971_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je xchain01777_n00026_α
 jmp xchain01777_n00026_α
xchain01777_n00024_β:
 jmp xchain01777_n00026_α
xchain01777_n00026_α:
# IR_PROC_VALUE first-class procedure value
bb01972_α:
 mov rdi, qword ptr [rip + .Lx01973_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain01777_n00087_α
 xchain01777_n00026_β:
 jmp xchain01777_n00088_α
.Lx01973_0:
 .quad .Lx01973_0_s
.Lx01973_0_s:
 .string "strident"
xchain01777_n00087_α:
bb01974_α:
  .section .rodata
  .Lcall01974_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3344]
 mov rdx, qword ptr [r12 + 3352]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01974_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xchain01777_n00088_α
 jmp xchain01777_n00088_α
xchain01777_n00087_β:
 jmp xchain01777_n00088_α
xchain01777_n00088_α:
# IR_PROC_VALUE first-class procedure value
bb01331_α:
 mov rdi, qword ptr [rip + .Lx01975_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain01777_n00089_α
 xchain01777_n00088_β:
 jmp xchain01777_n00091_α
.Lx01975_0:
 .quad .Lx01975_0_s
.Lx01975_0_s:
 .string "concat"
xchain01777_n00089_α:
bb01976_α:
  .section .rodata
  .Lcall01976_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3296]
 mov rdx, qword ptr [r12 + 3304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01976_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain01777_n00091_α
 jmp xchain01777_n00091_α
xchain01777_n00089_β:
 jmp xchain01777_n00091_α
xchain01777_n00091_α:
# IR_PROC_VALUE first-class procedure value
bb01977_α:
 mov rdi, qword ptr [rip + .Lx01978_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain01777_n00030_α
 xchain01777_n00091_β:
 jmp xchain01777_n00031_α
.Lx01978_0:
 .quad .Lx01978_0_s
.Lx01978_0_s:
 .string "reversef"
xchain01777_n00030_α:
bb01979_α:
  .section .rodata
  .Lcall01979_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3248]
 mov rdx, qword ptr [r12 + 3256]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01979_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je xchain01777_n00031_α
 jmp xchain01777_n00031_α
xchain01777_n00030_β:
 jmp xchain01777_n00031_α
xchain01777_n00031_α:
# IR_PROC_VALUE first-class procedure value
bb01334_α:
 mov rdi, qword ptr [rip + .Lx01980_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain01777_n00032_α
 xchain01777_n00031_β:
 jmp xchain01777_n00095_α
.Lx01980_0:
 .quad .Lx01980_0_s
.Lx01980_0_s:
 .string "trimf"
xchain01777_n00032_α:
bb01981_α:
  .section .rodata
  .Lcall01981_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01981_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain01777_n00095_α
 jmp xchain01777_n00095_α
xchain01777_n00032_β:
 jmp xchain01777_n00095_α
xchain01777_n00095_α:
# IR_PROC_VALUE first-class procedure value
bb01982_α:
 mov rdi, qword ptr [rip + .Lx01983_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain01777_n00096_α
 xchain01777_n00095_β:
 jmp xchain01777_n00098_α
.Lx01983_0:
 .quad .Lx01983_0_s
.Lx01983_0_s:
 .string "replf"
xchain01777_n00096_α:
bb01984_α:
  .section .rodata
  .Lcall01984_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01984_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain01777_n00098_α
 jmp xchain01777_n00098_α
xchain01777_n00096_β:
 jmp xchain01777_n00098_α
xchain01777_n00098_α:
# IR_PROC_VALUE first-class procedure value
bb01985_α:
 mov rdi, qword ptr [rip + .Lx01986_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain01777_n00036_α
 xchain01777_n00098_β:
 jmp xchain01777_n00037_α
.Lx01986_0:
 .quad .Lx01986_0_s
.Lx01986_0_s:
 .string "leftf"
xchain01777_n00036_α:
bb01336_α:
  .section .rodata
  .Lcall01336_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3104]
 mov rdx, qword ptr [r12 + 3112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01336_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain01777_n00037_α
 jmp xchain01777_n00037_α
xchain01777_n00036_β:
 jmp xchain01777_n00037_α
xchain01777_n00037_α:
# IR_PROC_VALUE first-class procedure value
bb01987_α:
 mov rdi, qword ptr [rip + .Lx01988_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain01777_n00100_α
 xchain01777_n00037_β:
 jmp xchain01777_n00102_α
.Lx01988_0:
 .quad .Lx01988_0_s
.Lx01988_0_s:
 .string "centerf"
xchain01777_n00100_α:
bb01989_α:
  .section .rodata
  .Lcall01989_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01989_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain01777_n00102_α
 jmp xchain01777_n00102_α
xchain01777_n00100_β:
 jmp xchain01777_n00102_α
xchain01777_n00102_α:
# IR_PROC_VALUE first-class procedure value
bb01990_α:
 mov rdi, qword ptr [rip + .Lx01991_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain01777_n00104_α
 xchain01777_n00102_β:
 jmp xchain01777_n00106_α
.Lx01991_0:
 .quad .Lx01991_0_s
.Lx01991_0_s:
 .string "rightf"
xchain01777_n00104_α:
bb01338_α:
  .section .rodata
  .Lcall01338_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01338_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain01777_n00106_α
 jmp xchain01777_n00106_α
xchain01777_n00104_β:
 jmp xchain01777_n00106_α
xchain01777_n00106_α:
# IR_PROC_VALUE first-class procedure value
bb01992_α:
 mov rdi, qword ptr [rip + .Lx01993_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain01777_n00039_α
 xchain01777_n00106_β:
 jmp xchain01777_n00041_α
.Lx01993_0:
 .quad .Lx01993_0_s
.Lx01993_0_s:
 .string "entabf"
xchain01777_n00039_α:
bb01994_α:
  .section .rodata
  .Lcall01994_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01994_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je xchain01777_n00041_α
 jmp xchain01777_n00041_α
xchain01777_n00039_β:
 jmp xchain01777_n00041_α
xchain01777_n00041_α:
# IR_PROC_VALUE first-class procedure value
bb01995_α:
 mov rdi, qword ptr [rip + .Lx01996_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain01777_n00108_α
 xchain01777_n00041_β:
 jmp xchain01777_n00110_α
.Lx01996_0:
 .quad .Lx01996_0_s
.Lx01996_0_s:
 .string "detabf"
xchain01777_n00108_α:
bb01997_α:
  .section .rodata
  .Lcall01997_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01997_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain01777_n00110_α
 jmp xchain01777_n00110_α
xchain01777_n00108_β:
 jmp xchain01777_n00110_α
xchain01777_n00110_α:
# IR_PROC_VALUE first-class procedure value
bb01342_α:
 mov rdi, qword ptr [rip + .Lx01998_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain01777_n00043_α
 xchain01777_n00110_β:
 jmp xchain01777_n00111_α
.Lx01998_0:
 .quad .Lx01998_0_s
.Lx01998_0_s:
 .string "mapf"
xchain01777_n00043_α:
bb01344_α:
  .section .rodata
  .Lcall01344_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01344_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain01777_n00111_α
 jmp xchain01777_n00111_α
xchain01777_n00043_β:
 jmp xchain01777_n00111_α
xchain01777_n00111_α:
# IR_PROC_VALUE first-class procedure value
bb01346_α:
 mov rdi, qword ptr [rip + .Lx01999_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain01777_n00113_α
 xchain01777_n00111_β:
 jmp xchain01777_n00115_α
.Lx01999_0:
 .quad .Lx01999_0_s
.Lx01999_0_s:
 .string "map1"
xchain01777_n00113_α:
bb01347_α:
  .section .rodata
  .Lcall01347_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2816]
 mov rdx, qword ptr [r12 + 2824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01347_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je xchain01777_n00115_α
 jmp xchain01777_n00115_α
xchain01777_n00113_β:
 jmp xchain01777_n00115_α
xchain01777_n00115_α:
# IR_PROC_VALUE first-class procedure value
bb02000_α:
 mov rdi, qword ptr [rip + .Lx02001_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain01777_n00047_α
 xchain01777_n00115_β:
 jmp xchain01777_n00049_α
.Lx02001_0:
 .quad .Lx02001_0_s
.Lx02001_0_s:
 .string "map2"
xchain01777_n00047_α:
bb02002_α:
  .section .rodata
  .Lcall02002_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02002_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain01777_n00049_α
 jmp xchain01777_n00049_α
xchain01777_n00047_β:
 jmp xchain01777_n00049_α
xchain01777_n00049_α:
# IR_PROC_VALUE first-class procedure value
bb02003_α:
 mov rdi, qword ptr [rip + .Lx02004_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain01777_n00117_α
 xchain01777_n00049_β:
 jmp xchain01777_n00119_α
.Lx02004_0:
 .quad .Lx02004_0_s
.Lx02004_0_s:
 .string "tablemap"
xchain01777_n00117_α:
bb01350_α:
  .section .rodata
  .Lcall01350_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2720]
 mov rdx, qword ptr [r12 + 2728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01350_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je xchain01777_n00119_α
 jmp xchain01777_n00119_α
xchain01777_n00117_β:
 jmp xchain01777_n00119_α
xchain01777_n00119_α:
# IR_PROC_VALUE first-class procedure value
bb02005_α:
 mov rdi, qword ptr [rip + .Lx02006_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain01777_n00121_α
 xchain01777_n00119_β:
 jmp xchain01777_n00122_α
.Lx02006_0:
 .quad .Lx02006_0_s
.Lx02006_0_s:
 .string "listmap"
xchain01777_n00121_α:
bb01352_α:
  .section .rodata
  .Lcall01352_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2672]
 mov rdx, qword ptr [r12 + 2680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01352_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain01777_n00122_α
 jmp xchain01777_n00122_α
xchain01777_n00121_β:
 jmp xchain01777_n00122_α
xchain01777_n00122_α:
# IR_PROC_VALUE first-class procedure value
bb01353_α:
 mov rdi, qword ptr [rip + .Lx02007_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain01777_n00052_α
 xchain01777_n00122_β:
 jmp xchain01777_n00054_α
.Lx02007_0:
 .quad .Lx02007_0_s
.Lx02007_0_s:
 .string "nullscan"
xchain01777_n00052_α:
bb02008_α:
  .section .rodata
  .Lcall02008_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02008_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain01777_n00054_α
 jmp xchain01777_n00054_α
xchain01777_n00052_β:
 jmp xchain01777_n00054_α
xchain01777_n00054_α:
# IR_PROC_VALUE first-class procedure value
bb01356_α:
 mov rdi, qword ptr [rip + .Lx02009_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain01777_n00055_α
 xchain01777_n00054_β:
 jmp xchain01777_n00056_α
.Lx02009_0:
 .quad .Lx02009_0_s
.Lx02009_0_s:
 .string "movef"
xchain01777_n00055_α:
bb01358_α:
  .section .rodata
  .Lcall01358_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2576]
 mov rdx, qword ptr [r12 + 2584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01358_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain01777_n00056_α
 jmp xchain01777_n00056_α
xchain01777_n00055_β:
 jmp xchain01777_n00056_α
xchain01777_n00056_α:
# IR_PROC_VALUE first-class procedure value
bb01359_α:
 mov rdi, qword ptr [rip + .Lx02010_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain01777_n00057_α
 xchain01777_n00056_β:
 jmp xchain01777_n00127_α
.Lx02010_0:
 .quad .Lx02010_0_s
.Lx02010_0_s:
 .string "mov11"
xchain01777_n00057_α:
bb02011_α:
  .section .rodata
  .Lcall02011_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02011_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain01777_n00127_α
 jmp xchain01777_n00127_α
xchain01777_n00057_β:
 jmp xchain01777_n00127_α
xchain01777_n00127_α:
# IR_PROC_VALUE first-class procedure value
bb02012_α:
 mov rdi, qword ptr [rip + .Lx02013_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain01777_n00128_α
 xchain01777_n00127_β:
 jmp xchain01777_n00130_α
.Lx02013_0:
 .quad .Lx02013_0_s
.Lx02013_0_s:
 .string "pos11"
xchain01777_n00128_α:
bb01361_α:
  .section .rodata
  .Lcall01361_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01361_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain01777_n00130_α
 jmp xchain01777_n00130_α
xchain01777_n00128_β:
 jmp xchain01777_n00130_α
xchain01777_n00130_α:
# IR_PROC_VALUE first-class procedure value
bb02014_α:
 mov rdi, qword ptr [rip + .Lx02015_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain01777_n00061_α
 xchain01777_n00130_β:
 jmp xchain01777_n00063_α
.Lx02015_0:
 .quad .Lx02015_0_s
.Lx02015_0_s:
 .string "tabf"
xchain01777_n00061_α:
bb02016_α:
  .section .rodata
  .Lcall02016_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02016_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain01777_n00063_α
 jmp xchain01777_n00063_α
xchain01777_n00061_β:
 jmp xchain01777_n00063_α
xchain01777_n00063_α:
# IR_PROC_VALUE first-class procedure value
bb01363_α:
 mov rdi, qword ptr [rip + .Lx02017_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain01777_n00132_α
 xchain01777_n00063_β:
 jmp xchain01777_n00134_α
.Lx02017_0:
 .quad .Lx02017_0_s
.Lx02017_0_s:
 .string "matchf"
xchain01777_n00132_α:
bb01365_α:
  .section .rodata
  .Lcall01365_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01365_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain01777_n00134_α
 jmp xchain01777_n00134_α
xchain01777_n00132_β:
 jmp xchain01777_n00134_α
xchain01777_n00134_α:
# IR_PROC_VALUE first-class procedure value
bb01366_α:
 mov rdi, qword ptr [rip + .Lx02018_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain01777_n00136_α
 xchain01777_n00134_β:
 jmp xchain01777_n00137_α
.Lx02018_0:
 .quad .Lx02018_0_s
.Lx02018_0_s:
 .string "tabmat"
xchain01777_n00136_α:
bb01368_α:
  .section .rodata
  .Lcall01368_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01368_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain01777_n00137_α
 jmp xchain01777_n00137_α
xchain01777_n00136_β:
 jmp xchain01777_n00137_α
xchain01777_n00137_α:
# IR_PROC_VALUE first-class procedure value
bb01370_α:
 mov rdi, qword ptr [rip + .Lx02019_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain01777_n00064_α
 xchain01777_n00137_β:
 jmp xchain01777_n00066_α
.Lx02019_0:
 .quad .Lx02019_0_s
.Lx02019_0_s:
 .string "posf"
xchain01777_n00064_α:
bb02020_α:
  .section .rodata
  .Lcall02020_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02020_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain01777_n00066_α
 jmp xchain01777_n00066_α
xchain01777_n00064_β:
 jmp xchain01777_n00066_α
xchain01777_n00066_α:
# IR_PROC_VALUE first-class procedure value
bb02021_α:
 mov rdi, qword ptr [rip + .Lx02022_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain01777_n00068_α
 xchain01777_n00066_β:
 jmp xchain01777_n00070_α
.Lx02022_0:
 .quad .Lx02022_0_s
.Lx02022_0_s:
 .string "anyf"
xchain01777_n00068_α:
bb02023_α:
  .section .rodata
  .Lcall02023_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02023_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain01777_n00070_α
 jmp xchain01777_n00070_α
xchain01777_n00068_β:
 jmp xchain01777_n00070_α
xchain01777_n00070_α:
# IR_PROC_VALUE first-class procedure value
bb02024_α:
 mov rdi, qword ptr [rip + .Lx02025_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain01777_n00071_α
 xchain01777_n00070_β:
 jmp xchain01777_n00139_α
.Lx02025_0:
 .quad .Lx02025_0_s
.Lx02025_0_s:
 .string "manyf"
xchain01777_n00071_α:
bb02026_α:
  .section .rodata
  .Lcall02026_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02026_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain01777_n00139_α
 jmp xchain01777_n00139_α
xchain01777_n00071_β:
 jmp xchain01777_n00139_α
xchain01777_n00139_α:
# IR_PROC_VALUE first-class procedure value
bb02027_α:
 mov rdi, qword ptr [rip + .Lx02028_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain01777_n00141_α
 xchain01777_n00139_β:
 jmp xchain01777_n00143_α
.Lx02028_0:
 .quad .Lx02028_0_s
.Lx02028_0_s:
 .string "uptof"
xchain01777_n00141_α:
bb02029_α:
  .section .rodata
  .Lcall02029_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02029_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain01777_n00143_α
 jmp xchain01777_n00143_α
xchain01777_n00141_β:
 jmp xchain01777_n00143_α
xchain01777_n00143_α:
# IR_PROC_VALUE first-class procedure value
bb01373_α:
 mov rdi, qword ptr [rip + .Lx02030_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain01777_n00073_α
 xchain01777_n00143_β:
 jmp xchain01777_n00075_α
.Lx02030_0:
 .quad .Lx02030_0_s
.Lx02030_0_s:
 .string "findf"
xchain01777_n00073_α:
bb02031_α:
  .section .rodata
  .Lcall02031_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02031_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 cmp eax, 99
 je xchain01777_n00075_α
 jmp xchain01777_n00075_α
xchain01777_n00073_β:
 jmp xchain01777_n00075_α
xchain01777_n00075_α:
# IR_PROC_VALUE first-class procedure value
bb02032_α:
 mov rdi, qword ptr [rip + .Lx02033_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain01777_n00144_α
 xchain01777_n00075_β:
 jmp xchain01777_n00145_α
.Lx02033_0:
 .quad .Lx02033_0_s
.Lx02033_0_s:
 .string "balf"
xchain01777_n00144_α:
bb02034_α:
  .section .rodata
  .Lcall02034_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02034_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain01777_n00145_α
 jmp xchain01777_n00145_α
xchain01777_n00144_β:
 jmp xchain01777_n00145_α
xchain01777_n00145_α:
# IR_PROC_VALUE first-class procedure value
bb01376_α:
 mov rdi, qword ptr [rip + .Lx02035_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain01777_n00147_α
 xchain01777_n00145_β:
 jmp xchain01777_n00148_α
.Lx02035_0:
 .quad .Lx02035_0_s
.Lx02035_0_s:
 .string "tocset"
xchain01777_n00147_α:
bb02036_α:
  .section .rodata
  .Lcall02036_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02036_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain01777_n00148_α
 jmp xchain01777_n00148_α
xchain01777_n00147_β:
 jmp xchain01777_n00148_α
xchain01777_n00148_α:
# IR_PROC_VALUE first-class procedure value
bb02037_α:
 mov rdi, qword ptr [rip + .Lx02038_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain01777_n00078_α
 xchain01777_n00148_β:
 jmp xchain01777_n00079_α
.Lx02038_0:
 .quad .Lx02038_0_s
.Lx02038_0_s:
 .string "cssize"
xchain01777_n00078_α:
bb02039_α:
  .section .rodata
  .Lcall02039_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02039_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain01777_n00079_α
 jmp xchain01777_n00079_α
xchain01777_n00078_β:
 jmp xchain01777_n00079_α
xchain01777_n00079_α:
# IR_PROC_VALUE first-class procedure value
bb02040_α:
 mov rdi, qword ptr [rip + .Lx02041_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain01777_n00080_α
 xchain01777_n00079_β:
 jmp xchain01777_n00151_α
.Lx02041_0:
 .quad .Lx02041_0_s
.Lx02041_0_s:
 .string "cscompl"
xchain01777_n00080_α:
bb01380_α:
  .section .rodata
  .Lcall01380_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01380_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain01777_n00151_α
 jmp xchain01777_n00151_α
xchain01777_n00080_β:
 jmp xchain01777_n00151_α
xchain01777_n00151_α:
# IR_PROC_VALUE first-class procedure value
bb01381_α:
 mov rdi, qword ptr [rip + .Lx02042_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain01777_n00082_α
 xchain01777_n00151_β:
 jmp xchain01777_n00153_α
.Lx02042_0:
 .quad .Lx02042_0_s
.Lx02042_0_s:
 .string "lcreate"
xchain01777_n00082_α:
bb01383_α:
  .section .rodata
  .Lcall01383_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01383_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain01777_n00153_α
 jmp xchain01777_n00153_α
xchain01777_n00082_β:
 jmp xchain01777_n00153_α
xchain01777_n00153_α:
# IR_PROC_VALUE first-class procedure value
bb01384_α:
 mov rdi, qword ptr [rip + .Lx02043_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain01777_n00155_α
 xchain01777_n00153_β:
 jmp xchain01777_n00156_α
.Lx02043_0:
 .quad .Lx02043_0_s
.Lx02043_0_s:
 .string "lconst"
xchain01777_n00155_α:
bb02044_α:
  .section .rodata
  .Lcall02044_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02044_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain01777_n00156_α
 jmp xchain01777_n00156_α
xchain01777_n00155_β:
 jmp xchain01777_n00156_α
xchain01777_n00156_α:
# IR_PROC_VALUE first-class procedure value
bb02045_α:
 mov rdi, qword ptr [rip + .Lx02046_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain01777_n00085_α
 xchain01777_n00156_β:
 jmp xchain01777_n00086_α
.Lx02046_0:
 .quad .Lx02046_0_s
.Lx02046_0_s:
 .string "lcopy"
xchain01777_n00085_α:
bb02047_α:
  .section .rodata
  .Lcall02047_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02047_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain01777_n00086_α
 jmp xchain01777_n00086_α
xchain01777_n00085_β:
 jmp xchain01777_n00086_α
xchain01777_n00086_α:
# IR_PROC_VALUE first-class procedure value
bb01387_α:
 mov rdi, qword ptr [rip + .Lx02048_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain01777_n00159_α
 xchain01777_n00086_β:
 jmp xchain01777_n00161_α
.Lx02048_0:
 .quad .Lx02048_0_s
.Lx02048_0_s:
 .string "lsort"
xchain01777_n00159_α:
bb02049_α:
  .section .rodata
  .Lcall02049_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02049_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain01777_n00161_α
 jmp xchain01777_n00161_α
xchain01777_n00159_β:
 jmp xchain01777_n00161_α
xchain01777_n00161_α:
# IR_PROC_VALUE first-class procedure value
bb01389_α:
 mov rdi, qword ptr [rip + .Lx02050_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain01777_n00163_α
 xchain01777_n00161_β:
 jmp xchain01777_n00164_α
.Lx02050_0:
 .quad .Lx02050_0_s
.Lx02050_0_s:
 .string "lsize"
xchain01777_n00163_α:
bb01390_α:
  .section .rodata
  .Lcall01390_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01390_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain01777_n00164_α
 jmp xchain01777_n00164_α
xchain01777_n00163_β:
 jmp xchain01777_n00164_α
xchain01777_n00164_α:
# IR_PROC_VALUE first-class procedure value
bb02051_α:
 mov rdi, qword ptr [rip + .Lx02052_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain01777_n00090_α
 xchain01777_n00164_β:
 jmp xchain01777_n00092_α
.Lx02052_0:
 .quad .Lx02052_0_s
.Lx02052_0_s:
 .string "lpick"
xchain01777_n00090_α:
bb01393_α:
  .section .rodata
  .Lcall01393_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01393_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain01777_n00092_α
 jmp xchain01777_n00092_α
xchain01777_n00090_β:
 jmp xchain01777_n00092_α
xchain01777_n00092_α:
# IR_PROC_VALUE first-class procedure value
bb01395_α:
 mov rdi, qword ptr [rip + .Lx02053_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain01777_n00093_α
 xchain01777_n00092_β:
 jmp xchain01777_n00167_α
.Lx02053_0:
 .quad .Lx02053_0_s
.Lx02053_0_s:
 .string "lbang"
xchain01777_n00093_α:
bb01396_α:
  .section .rodata
  .Lcall01396_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01396_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain01777_n00167_α
 jmp xchain01777_n00167_α
xchain01777_n00093_β:
 jmp xchain01777_n00167_α
xchain01777_n00167_α:
# IR_PROC_VALUE first-class procedure value
bb02054_α:
 mov rdi, qword ptr [rip + .Lx02055_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain01777_n00094_α
 xchain01777_n00167_β:
 jmp xchain01777_n00169_α
.Lx02055_0:
 .quad .Lx02055_0_s
.Lx02055_0_s:
 .string "lsubscr"
xchain01777_n00094_α:
bb02056_α:
  .section .rodata
  .Lcall02056_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02056_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain01777_n00169_α
 jmp xchain01777_n00169_α
xchain01777_n00094_β:
 jmp xchain01777_n00169_α
xchain01777_n00169_α:
# IR_PROC_VALUE first-class procedure value
bb01398_α:
 mov rdi, qword ptr [rip + .Lx02057_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain01777_n00171_α
 xchain01777_n00169_β:
 jmp xchain01777_n00172_α
.Lx02057_0:
 .quad .Lx02057_0_s
.Lx02057_0_s:
 .string "put1get1"
xchain01777_n00171_α:
bb02058_α:
  .section .rodata
  .Lcall02058_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02058_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain01777_n00172_α
 jmp xchain01777_n00172_α
xchain01777_n00171_β:
 jmp xchain01777_n00172_α
xchain01777_n00172_α:
# IR_PROC_VALUE first-class procedure value
bb02059_α:
 mov rdi, qword ptr [rip + .Lx02060_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain01777_n00097_α
 xchain01777_n00172_β:
 jmp xchain01777_n00099_α
.Lx02060_0:
 .quad .Lx02060_0_s
.Lx02060_0_s:
 .string "put2get2"
xchain01777_n00097_α:
bb01401_α:
  .section .rodata
  .Lcall01401_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01401_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain01777_n00099_α
 jmp xchain01777_n00099_α
xchain01777_n00097_β:
 jmp xchain01777_n00099_α
xchain01777_n00099_α:
# IR_PROC_VALUE first-class procedure value
bb01402_α:
 mov rdi, qword ptr [rip + .Lx02061_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain01777_n00175_α
 xchain01777_n00099_β:
 jmp xchain01777_n00177_α
.Lx02061_0:
 .quad .Lx02061_0_s
.Lx02061_0_s:
 .string "put3get3"
xchain01777_n00175_α:
bb01404_α:
  .section .rodata
  .Lcall01404_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01404_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain01777_n00177_α
 jmp xchain01777_n00177_α
xchain01777_n00175_β:
 jmp xchain01777_n00177_α
xchain01777_n00177_α:
# IR_PROC_VALUE first-class procedure value
bb01406_α:
 mov rdi, qword ptr [rip + .Lx02062_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain01777_n00178_α
 xchain01777_n00177_β:
 jmp xchain01777_n00179_α
.Lx02062_0:
 .quad .Lx02062_0_s
.Lx02062_0_s:
 .string "put4get4"
xchain01777_n00178_α:
bb01408_α:
  .section .rodata
  .Lcall01408_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01408_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain01777_n00179_α
 jmp xchain01777_n00179_α
xchain01777_n00178_β:
 jmp xchain01777_n00179_α
xchain01777_n00179_α:
# IR_PROC_VALUE first-class procedure value
bb02063_α:
 mov rdi, qword ptr [rip + .Lx02064_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain01777_n00101_α
 xchain01777_n00179_β:
 jmp xchain01777_n00103_α
.Lx02064_0:
 .quad .Lx02064_0_s
.Lx02064_0_s:
 .string "pushpop"
xchain01777_n00101_α:
bb02065_α:
  .section .rodata
  .Lcall02065_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02065_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain01777_n00103_α
 jmp xchain01777_n00103_α
xchain01777_n00101_β:
 jmp xchain01777_n00103_α
xchain01777_n00103_α:
# IR_PROC_VALUE first-class procedure value
bb02066_α:
 mov rdi, qword ptr [rip + .Lx02067_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain01777_n00182_α
 xchain01777_n00103_β:
 jmp xchain01777_n00183_α
.Lx02067_0:
 .quad .Lx02067_0_s
.Lx02067_0_s:
 .string "putget12"
xchain01777_n00182_α:
bb02068_α:
  .section .rodata
  .Lcall02068_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02068_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain01777_n00183_α
 jmp xchain01777_n00183_α
xchain01777_n00182_β:
 jmp xchain01777_n00183_α
xchain01777_n00183_α:
# IR_PROC_VALUE first-class procedure value
bb02069_α:
 mov rdi, qword ptr [rip + .Lx02070_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain01777_n00105_α
 xchain01777_n00183_β:
 jmp xchain01777_n00186_α
.Lx02070_0:
 .quad .Lx02070_0_s
.Lx02070_0_s:
 .string "pushpop12"
xchain01777_n00105_α:
bb02071_α:
  .section .rodata
  .Lcall02071_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02071_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain01777_n00186_α
 jmp xchain01777_n00186_α
xchain01777_n00105_β:
 jmp xchain01777_n00186_α
xchain01777_n00186_α:
# IR_PROC_VALUE first-class procedure value
bb02072_α:
 mov rdi, qword ptr [rip + .Lx02073_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain01777_n00188_α
 xchain01777_n00186_β:
 jmp xchain01777_n00189_α
.Lx02073_0:
 .quad .Lx02073_0_s
.Lx02073_0_s:
 .string "setcreate"
xchain01777_n00188_α:
bb01410_α:
  .section .rodata
  .Lcall01410_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01410_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain01777_n00189_α
 jmp xchain01777_n00189_α
xchain01777_n00188_β:
 jmp xchain01777_n00189_α
xchain01777_n00189_α:
# IR_PROC_VALUE first-class procedure value
bb02074_α:
 mov rdi, qword ptr [rip + .Lx02075_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain01777_n00107_α
 xchain01777_n00189_β:
 jmp xchain01777_n00109_α
.Lx02075_0:
 .quad .Lx02075_0_s
.Lx02075_0_s:
 .string "setcopy"
xchain01777_n00107_α:
bb02076_α:
  .section .rodata
  .Lcall02076_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02076_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain01777_n00109_α
 jmp xchain01777_n00109_α
xchain01777_n00107_β:
 jmp xchain01777_n00109_α
xchain01777_n00109_α:
# IR_PROC_VALUE first-class procedure value
bb02077_α:
 mov rdi, qword ptr [rip + .Lx02078_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain01777_n00193_α
 xchain01777_n00109_β:
 jmp xchain01777_n00194_α
.Lx02078_0:
 .quad .Lx02078_0_s
.Lx02078_0_s:
 .string "setmember"
xchain01777_n00193_α:
bb01413_α:
  .section .rodata
  .Lcall01413_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01413_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain01777_n00194_α
 jmp xchain01777_n00194_α
xchain01777_n00193_β:
 jmp xchain01777_n00194_α
xchain01777_n00194_α:
# IR_PROC_VALUE first-class procedure value
bb01415_α:
 mov rdi, qword ptr [rip + .Lx02079_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain01777_n00195_α
 xchain01777_n00194_β:
 jmp xchain01777_n00196_α
.Lx02079_0:
 .quad .Lx02079_0_s
.Lx02079_0_s:
 .string "setinsert"
xchain01777_n00195_α:
bb02080_α:
  .section .rodata
  .Lcall02080_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02080_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain01777_n00196_α
 jmp xchain01777_n00196_α
xchain01777_n00195_β:
 jmp xchain01777_n00196_α
xchain01777_n00196_α:
# IR_PROC_VALUE first-class procedure value
bb02081_α:
 mov rdi, qword ptr [rip + .Lx02082_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain01777_n00112_α
 xchain01777_n00196_β:
 jmp xchain01777_n00114_α
.Lx02082_0:
 .quad .Lx02082_0_s
.Lx02082_0_s:
 .string "setinsdel"
xchain01777_n00112_α:
bb02083_α:
  .section .rodata
  .Lcall02083_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02083_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain01777_n00114_α
 jmp xchain01777_n00114_α
xchain01777_n00112_β:
 jmp xchain01777_n00114_α
xchain01777_n00114_α:
# IR_PROC_VALUE first-class procedure value
bb02084_α:
 mov rdi, qword ptr [rip + .Lx02085_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain01777_n00199_α
 xchain01777_n00114_β:
 jmp xchain01777_n00201_α
.Lx02085_0:
 .quad .Lx02085_0_s
.Lx02085_0_s:
 .string "setbang"
xchain01777_n00199_α:
bb01418_α:
  .section .rodata
  .Lcall01418_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01418_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain01777_n00201_α
 jmp xchain01777_n00201_α
xchain01777_n00199_β:
 jmp xchain01777_n00201_α
xchain01777_n00201_α:
# IR_PROC_VALUE first-class procedure value
bb02086_α:
 mov rdi, qword ptr [rip + .Lx02087_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain01777_n00116_α
 xchain01777_n00201_β:
 jmp xchain01777_n00203_α
.Lx02087_0:
 .quad .Lx02087_0_s
.Lx02087_0_s:
 .string "setpick"
xchain01777_n00116_α:
bb02088_α:
  .section .rodata
  .Lcall02088_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02088_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain01777_n00203_α
 jmp xchain01777_n00203_α
xchain01777_n00116_β:
 jmp xchain01777_n00203_α
xchain01777_n00203_α:
# IR_PROC_VALUE first-class procedure value
bb01419_α:
 mov rdi, qword ptr [rip + .Lx02089_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain01777_n00204_α
 xchain01777_n00203_β:
 jmp xchain01777_n00206_α
.Lx02089_0:
 .quad .Lx02089_0_s
.Lx02089_0_s:
 .string "tblcreate"
xchain01777_n00204_α:
bb02090_α:
  .section .rodata
  .Lcall02090_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02090_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain01777_n00206_α
 jmp xchain01777_n00206_α
xchain01777_n00204_β:
 jmp xchain01777_n00206_α
xchain01777_n00206_α:
# IR_PROC_VALUE first-class procedure value
bb02091_α:
 mov rdi, qword ptr [rip + .Lx02092_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain01777_n00118_α
 xchain01777_n00206_β:
 jmp xchain01777_n00120_α
.Lx02092_0:
 .quad .Lx02092_0_s
.Lx02092_0_s:
 .string "tblsub"
xchain01777_n00118_α:
bb02093_α:
  .section .rodata
  .Lcall02093_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02093_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain01777_n00120_α
 jmp xchain01777_n00120_α
xchain01777_n00118_β:
 jmp xchain01777_n00120_α
xchain01777_n00120_α:
# IR_PROC_VALUE first-class procedure value
bb01423_α:
 mov rdi, qword ptr [rip + .Lx02094_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain01777_n00208_α
 xchain01777_n00120_β:
 jmp xchain01777_n00210_α
.Lx02094_0:
 .quad .Lx02094_0_s
.Lx02094_0_s:
 .string "tblasgn"
xchain01777_n00208_α:
bb02095_α:
  .section .rodata
  .Lcall02095_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02095_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain01777_n00210_α
 jmp xchain01777_n00210_α
xchain01777_n00208_β:
 jmp xchain01777_n00210_α
xchain01777_n00210_α:
# IR_PROC_VALUE first-class procedure value
bb02096_α:
 mov rdi, qword ptr [rip + .Lx02097_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain01777_n00212_α
 xchain01777_n00210_β:
 jmp xchain01777_n00214_α
.Lx02097_0:
 .quad .Lx02097_0_s
.Lx02097_0_s:
 .string "recconstr"
xchain01777_n00212_α:
bb02098_α:
  .section .rodata
  .Lcall02098_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02098_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain01777_n00214_α
 jmp xchain01777_n00214_α
xchain01777_n00212_β:
 jmp xchain01777_n00214_α
xchain01777_n00214_α:
# IR_PROC_VALUE first-class procedure value
bb02099_α:
 mov rdi, qword ptr [rip + .Lx02100_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain01777_n00123_α
 xchain01777_n00214_β:
 jmp xchain01777_n00124_α
.Lx02100_0:
 .quad .Lx02100_0_s
.Lx02100_0_s:
 .string "reccopy"
xchain01777_n00123_α:
bb02101_α:
  .section .rodata
  .Lcall02101_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02101_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain01777_n00124_α
 jmp xchain01777_n00124_α
xchain01777_n00123_β:
 jmp xchain01777_n00124_α
xchain01777_n00124_α:
# IR_PROC_VALUE first-class procedure value
bb02102_α:
 mov rdi, qword ptr [rip + .Lx02103_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain01777_n00125_α
 xchain01777_n00124_β:
 jmp xchain01777_n00218_α
.Lx02103_0:
 .quad .Lx02103_0_s
.Lx02103_0_s:
 .string "recfield"
xchain01777_n00125_α:
bb01427_α:
  .section .rodata
  .Lcall01427_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01427_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain01777_n00218_α
 jmp xchain01777_n00218_α
xchain01777_n00125_β:
 jmp xchain01777_n00218_α
xchain01777_n00218_α:
# IR_PROC_VALUE first-class procedure value
bb01428_α:
 mov rdi, qword ptr [rip + .Lx02104_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain01777_n00219_α
 xchain01777_n00218_β:
 jmp xchain01777_n00126_α
.Lx02104_0:
 .quad .Lx02104_0_s
.Lx02104_0_s:
 .string "bigfield"
xchain01777_n00219_α:
bb02105_α:
  .section .rodata
  .Lcall02105_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02105_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain01777_n00126_α
 jmp xchain01777_n00126_α
xchain01777_n00219_β:
 jmp xchain01777_n00126_α
xchain01777_n00126_α:
# IR_PROC_VALUE first-class procedure value
bb02106_α:
 mov rdi, qword ptr [rip + .Lx02107_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain01777_n00221_α
 xchain01777_n00126_β:
 jmp xchain01777_n00223_α
.Lx02107_0:
 .quad .Lx02107_0_s
.Lx02107_0_s:
 .string "readz"
xchain01777_n00221_α:
bb02108_α:
  .section .rodata
  .Lcall02108_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02108_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain01777_n00223_α
 jmp xchain01777_n00223_α
xchain01777_n00221_β:
 jmp xchain01777_n00223_α
xchain01777_n00223_α:
# IR_PROC_VALUE first-class procedure value
bb02109_α:
 mov rdi, qword ptr [rip + .Lx02110_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01777_n00224_α
 xchain01777_n00223_β:
 jmp xchain01777_n00129_α
.Lx02110_0:
 .quad .Lx02110_0_s
.Lx02110_0_s:
 .string "writecon"
xchain01777_n00224_α:
bb01432_α:
  .section .rodata
  .Lcall01432_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01432_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain01777_n00129_α
 jmp xchain01777_n00129_α
xchain01777_n00224_β:
 jmp xchain01777_n00129_α
xchain01777_n00129_α:
# IR_PROC_VALUE first-class procedure value
bb02111_α:
 mov rdi, qword ptr [rip + .Lx02112_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain01777_n00131_α
 xchain01777_n00129_β:
 jmp xchain01777_n00227_α
.Lx02112_0:
 .quad .Lx02112_0_s
.Lx02112_0_s:
 .string "writestr"
xchain01777_n00131_α:
bb01433_α:
  .section .rodata
  .Lcall01433_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01433_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain01777_n00227_α
 jmp xchain01777_n00227_α
xchain01777_n00131_β:
 jmp xchain01777_n00227_α
xchain01777_n00227_α:
# IR_PROC_VALUE first-class procedure value
bb02113_α:
 mov rdi, qword ptr [rip + .Lx02114_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01777_n00228_α
 xchain01777_n00227_β:
 jmp xchain01777_n00230_α
.Lx02114_0:
 .quad .Lx02114_0_s
.Lx02114_0_s:
 .string "cxcreate"
xchain01777_n00228_α:
bb02115_α:
  .section .rodata
  .Lcall02115_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02115_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01777_n00230_α
 jmp xchain01777_n00230_α
xchain01777_n00228_β:
 jmp xchain01777_n00230_α
xchain01777_n00230_α:
# IR_PROC_VALUE first-class procedure value
bb02116_α:
 mov rdi, qword ptr [rip + .Lx02117_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01777_n00232_α
 xchain01777_n00230_β:
 jmp xchain01777_n00133_α
.Lx02117_0:
 .quad .Lx02117_0_s
.Lx02117_0_s:
 .string "cxget"
xchain01777_n00232_α:
bb02118_α:
  .section .rodata
  .Lcall02118_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02118_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01777_n00133_α
 jmp xchain01777_n00133_α
xchain01777_n00232_β:
 jmp xchain01777_n00133_α
xchain01777_n00133_α:
# IR_PROC_VALUE first-class procedure value
bb02119_α:
 mov rdi, qword ptr [rip + .Lx02120_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01777_n00233_α
 xchain01777_n00133_β:
 jmp xchain01777_n00235_α
.Lx02120_0:
 .quad .Lx02120_0_s
.Lx02120_0_s:
 .string "nothing"
xchain01777_n00233_α:
bb02121_α:
  .section .rodata
  .Lcall02121_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02121_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain01777_n00235_α
 jmp xchain01777_n00235_α
xchain01777_n00233_β:
 jmp xchain01777_n00235_α
xchain01777_n00235_α:
# IR_PROC_VALUE first-class procedure value
bb02122_α:
 mov rdi, qword ptr [rip + .Lx02123_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01777_n00135_α
 xchain01777_n00235_β:
 jmp xchain01777_n00237_α
.Lx02123_0:
 .quad .Lx02123_0_s
.Lx02123_0_s:
 .string "nothing"
xchain01777_n00135_α:
bb02124_α:
  .section .rodata
  .Lcall02124_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall02124_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01777_n00237_α
 jmp xchain01777_n00237_α
xchain01777_n00135_β:
 jmp xchain01777_n00237_α
xchain01777_n00237_α:
# IR_PROC_VALUE first-class procedure value
bb02125_α:
 mov rdi, qword ptr [rip + .Lx02126_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01777_n00238_α
 xchain01777_n00237_β:
 jmp xchain01777_n00240_α
.Lx02126_0:
 .quad .Lx02126_0_s
.Lx02126_0_s:
 .string "nothing"
xchain01777_n00238_α:
bb01437_α:
  .section .rodata
  .Lcall01437_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01437_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01777_n00240_α
 jmp xchain01777_n00240_α
xchain01777_n00238_β:
 jmp xchain01777_n00240_α
xchain01777_n00240_α:
# IR_KEYWORD_read
bb02127_α:
 mov rdi, qword ptr [rip + .Lx02128_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain01777_n00138_α
 xchain01777_n00240_β:
 jmp main_ω
.Lx02128_0:
 .quad .Lx02128_0_s
.Lx02128_0_s:
 .string "&errout"
xchain01777_n00138_α:
bb02129_α:
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
 xchain01777_n00138_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
