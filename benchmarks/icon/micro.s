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
 jmp xchain0_n3_β
xchain0_n1_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb2_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 lea rdx, [r12 + 448]
 mov ecx, 0
 call rt_call_value@PLT
 cmp eax, 99
 je xchain0_n3_β
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_β
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
 jmp xchain0_n3_β
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
 jmp xchain25_n5_β
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
 jmp xchain25_n5_β
xchain25_n5_α:
# IR_KEYWORD_read
bb23_α:
 mov rdi, qword ptr [rip + .Lx33_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain25_n6_α
 xchain25_n5_β:
 jmp xchain25_n7_α
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
 jmp xchain25_n7_α
 xchain25_n6_β:
 jmp xchain25_n7_α
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
 jmp xchain25_n17_β
xchain25_n15_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1176], rax
 jmp xchain25_n16_α
 xchain25_n15_β:
 jmp xchain25_n17_β
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
 je xchain25_n17_β
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain25_n17_α
 xchain25_n16_β:
 jmp xchain25_n17_β
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
 jmp xchain25_n7_α
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
 jmp xchain25_n7_α
xchain25_n26_α:
# IR_LIT_INTEGER
bb44_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain25_n27_α
 xchain25_n26_β:
 jmp xchain25_n7_α
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
 je xchain25_n7_α
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
.Lx64_3:
 jmp xchain25_n28_α
 xchain25_n27_β:
 jmp xchain25_n7_α
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
 jl xchain25_n7_α
 mov rcx, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rcx
 mov rcx, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rcx
 jmp xchain25_n29_α
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
 je xchain25_n7_α
 jmp xchain25_n29_α
 xchain25_n28_β:
 jmp xchain25_n7_α
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
 je xchain25_n36_β
 jmp xchain25_n36_α
 xchain25_n34_β:
 jmp xchain25_n36_β
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
 jmp xchain25_n42_β
 xchain25_n40_β:
 jmp proc_measure_ω
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
 jmp proc_measure_ω
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
 je proc_measure_ω
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
 je proc_measure_ω
 jmp xchain25_n46_α
 xchain25_n44_β:
 jmp proc_measure_ω
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
 jmp xchain25_n50_β
xchain25_n48_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 504], rax
 jmp xchain25_n49_α
 xchain25_n48_β:
 jmp xchain25_n50_β
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
 je xchain25_n50_β
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain25_n50_α
 xchain25_n49_β:
 jmp xchain25_n50_β
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
# IR_INITIAL
 mov rax, qword ptr [r12 + 184]
 cmp rax, 0
 jne xchain00135_n3_α
 mov qword ptr [r12 + 184], 1
 jmp xchain00135_n1_α
 xchain00135_n0_β:
 jmp xchain00135_n3_α
xchain00135_n1_α:
# IR_MAKE_LIST
bb00136_α:
 lea rdi, [r12 + 224]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00135_n2_α
 xchain00135_n1_β:
 jmp xchain00135_n3_α
xchain00135_n2_α:
bb00064_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00135_n3_α
 xchain00135_n2_β:
 jmp xchain00135_n3_α
xchain00135_n3_α:
# IR_VAR
bb00066_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00135_n4_α
 xchain00135_n3_β:
 jmp xchain00135_n6_α
xchain00135_n4_α:
# IR_UNOP
bb00068_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00135_n6_α
 cmp eax, 0
 jne xchain00135_n6_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00135_n5_α
 xchain00135_n4_β:
 jmp xchain00135_n6_α
xchain00135_n5_α:
# IR_LIT_STRING
bb00070_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00135_n7_α
 xchain00135_n5_β:
 jmp proc_listcall_ω
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "p ! L"
xchain00135_n6_α:
# IR_LIT_INTEGER
bb00071_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00135_n8_α
 xchain00135_n6_β:
 jmp proc_listcall_ω
.Lx00138_0:
 .quad 1
xchain00135_n7_α:
# IR_RETURN
bb00139_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listcall_γ
xchain00135_n8_α:
# IR_VAR
bb00140_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00135_n9_α
 xchain00135_n8_β:
 jmp proc_listcall_ω
xchain00135_n9_α:
# IR_TO
bb00141_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00142_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00135_n9_β
 xchain00135_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00142_0
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
xchain00143_n0_α:
# IR_VAR
bb00073_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00143_n1_α
 xchain00143_n0_β:
 jmp xchain00143_n3_α
xchain00143_n1_α:
# IR_UNOP
bb00075_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00143_n3_α
 cmp eax, 0
 jne xchain00143_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00143_n2_α
 xchain00143_n1_β:
 jmp xchain00143_n3_α
xchain00143_n2_α:
# IR_LIT_STRING
bb00144_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00143_n4_α
 xchain00143_n2_β:
 jmp proc_addfunc_ω
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "add(4, 7)"
xchain00143_n3_α:
# IR_LIT_INTEGER
bb00146_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00143_n5_α
 xchain00143_n3_β:
 jmp proc_addfunc_ω
.Lx00147_0:
 .quad 1
xchain00143_n4_α:
# IR_RETURN
bb00148_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_addfunc_γ
xchain00143_n5_α:
# IR_VAR
bb00149_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00143_n6_α
 xchain00143_n5_β:
 jmp proc_addfunc_ω
xchain00143_n6_α:
# IR_TO
bb00078_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00150_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00143_n7_α
 xchain00143_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00150_0
xchain00143_n7_α:
# IR_LIT_INTEGER
bb00079_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00143_n8_α
 xchain00143_n7_β:
 jmp xchain00143_n6_β
.Lx00151_0:
 .quad 4
xchain00143_n8_α:
# IR_LIT_INTEGER
bb00080_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00143_n9_α
 xchain00143_n8_β:
 jmp xchain00143_n6_β
.Lx00152_0:
 .quad 7
xchain00143_n9_α:
bb00153_α:
  .section .rodata
  .Lcall00153_pname: .string "add"
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
   lea rdi, [rip + .Lcall00153_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00143_n6_β
 jmp xchain00143_n6_β
xchain00143_n9_β:
 jmp xchain00143_n6_β
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
xchain00154_n0_α:
# IR_VAR
bb00082_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
 jmp xchain00154_n1_α
 xchain00154_n0_β:
 jmp proc_add_ω
xchain00154_n1_α:
# IR_VAR
bb00155_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
 jmp xchain00154_n2_α
 xchain00154_n1_β:
 jmp proc_add_ω
xchain00154_n2_α:
bb00156_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00157_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00157_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00157_2
.Lx00157_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00154_n3_α
.Lx00157_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 0
 lea r9, [r12 + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00157_3
.Lx00157_2:
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
.Lx00157_3:
 jmp xchain00154_n3_α
 xchain00154_n2_β:
 jmp proc_add_ω
xchain00154_n3_α:
# IR_RETURN
bb00158_α:
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
xchain00159_n0_α:
# IR_VAR
bb00085_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00159_n1_α
 xchain00159_n0_β:
 jmp xchain00159_n3_α
xchain00159_n1_α:
# IR_UNOP
bb00086_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00159_n3_α
 cmp eax, 0
 jne xchain00159_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00159_n2_α
 xchain00159_n1_β:
 jmp xchain00159_n3_α
xchain00159_n2_α:
# IR_LIT_STRING
bb00160_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00159_n4_α
 xchain00159_n2_β:
 jmp proc_rfact0_ω
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "rfact(0)"
xchain00159_n3_α:
# IR_LIT_INTEGER
bb00162_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00159_n5_α
 xchain00159_n3_β:
 jmp proc_rfact0_ω
.Lx00163_0:
 .quad 1
xchain00159_n4_α:
# IR_RETURN
bb00164_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact0_γ
xchain00159_n5_α:
# IR_VAR
bb00165_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00159_n6_α
 xchain00159_n5_β:
 jmp proc_rfact0_ω
xchain00159_n6_α:
# IR_TO
bb00090_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00166_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00159_n7_α
 xchain00159_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00166_0
xchain00159_n7_α:
# IR_LIT_INTEGER
bb00092_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00159_n8_α
 xchain00159_n7_β:
 jmp xchain00159_n6_β
.Lx00167_0:
 .quad 0
xchain00159_n8_α:
bb00093_α:
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
 je xchain00159_n6_β
 jmp xchain00159_n6_β
xchain00159_n8_β:
 jmp xchain00159_n6_β
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
xchain00168_n0_α:
# IR_VAR
bb00169_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00168_n1_α
 xchain00168_n0_β:
 jmp xchain00168_n3_α
xchain00168_n1_α:
# IR_UNOP
bb00094_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00168_n3_α
 cmp eax, 0
 jne xchain00168_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00168_n2_α
 xchain00168_n1_β:
 jmp xchain00168_n3_α
xchain00168_n2_α:
# IR_LIT_STRING
bb00170_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00168_n4_α
 xchain00168_n2_β:
 jmp proc_rfact10_ω
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "rfact(10)"
xchain00168_n3_α:
# IR_LIT_INTEGER
bb00172_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00168_n5_α
 xchain00168_n3_β:
 jmp proc_rfact10_ω
.Lx00173_0:
 .quad 1
xchain00168_n4_α:
# IR_RETURN
bb00174_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact10_γ
xchain00168_n5_α:
# IR_VAR
bb00097_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00168_n6_α
 xchain00168_n5_β:
 jmp proc_rfact10_ω
xchain00168_n6_α:
# IR_TO
bb00099_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00175_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00168_n7_α
 xchain00168_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00175_0
xchain00168_n7_α:
# IR_LIT_INTEGER
bb00176_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00168_n8_α
 xchain00168_n7_β:
 jmp xchain00168_n6_β
.Lx00177_0:
 .quad 10
xchain00168_n8_α:
bb00178_α:
  .section .rodata
  .Lcall00178_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00178_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00168_n6_β
 jmp xchain00168_n6_β
xchain00168_n8_β:
 jmp xchain00168_n6_β
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
xchain00179_n0_α:
# IR_VAR
bb00180_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00179_n1_α
 xchain00179_n0_β:
 jmp xchain00179_n4_α
xchain00179_n1_α:
# IR_LIT_INTEGER
bb00181_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00179_n2_α
 xchain00179_n1_β:
 jmp xchain00179_n4_α
.Lx00182_0:
 .quad 1
xchain00179_n2_α:
bb00101_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00183_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00183_0
.Lx00183_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 cmp rax, rcx
 jge xchain00179_n4_α
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rcx
 jmp xchain00179_n3_α
.Lx00183_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 5
 lea r9, [r12 + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00183_1
 cmp eax, 1
 je xchain00179_n4_α
 jmp xchain00179_n3_α
 xchain00179_n2_β:
 jmp xchain00179_n4_α
xchain00179_n3_α:
# IR_LIT_INTEGER
bb00103_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00179_n5_α
 xchain00179_n3_β:
 jmp proc_rfact_ω
.Lx00184_0:
 .quad 1
xchain00179_n4_α:
# IR_VAR
bb00185_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain00179_n6_α
 xchain00179_n4_β:
 jmp proc_rfact_ω
xchain00179_n5_α:
# IR_RETURN
bb00186_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfact_γ
xchain00179_n6_α:
# IR_VAR
bb00105_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00179_n7_α
 xchain00179_n6_β:
 jmp proc_rfact_ω
xchain00179_n7_α:
# IR_LIT_INTEGER
bb00187_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00179_n8_α
 xchain00179_n7_β:
 jmp proc_rfact_ω
.Lx00188_0:
 .quad 1
xchain00179_n8_α:
bb00189_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00190_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00190_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00190_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00190_2
.Lx00190_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 184]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00179_n9_α
.Lx00190_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00190_3
.Lx00190_2:
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
.Lx00190_3:
 jmp xchain00179_n9_α
 xchain00179_n8_β:
 jmp proc_rfact_ω
xchain00179_n9_α:
bb00191_α:
  .section .rodata
  .Lcall00191_pname: .string "rfact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00191_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00179_n10_α
xchain00179_n9_β:
 jmp proc_rfact_ω
xchain00179_n10_α:
bb00107_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 112]
 cmp eax, 100
 je .Lx00192_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00192_2
 mov eax, dword ptr [r12 + 112]
 cmp eax, 6
 jne .Lx00192_2
.Lx00192_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 120]
 imul rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00179_n11_α
.Lx00192_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 2
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00192_3
.Lx00192_2:
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
.Lx00192_3:
 jmp xchain00179_n11_α
 xchain00179_n10_β:
 jmp proc_rfact_ω
xchain00179_n11_α:
# IR_RETURN
bb00109_α:
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
xchain00193_n0_α:
# IR_VAR
bb00194_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00193_n1_α
 xchain00193_n0_β:
 jmp xchain00193_n3_α
xchain00193_n1_α:
# IR_UNOP
bb00195_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00193_n3_α
 cmp eax, 0
 jne xchain00193_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00193_n2_α
 xchain00193_n1_β:
 jmp xchain00193_n3_α
xchain00193_n2_α:
# IR_LIT_STRING
bb00196_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00193_n4_α
 xchain00193_n2_β:
 jmp proc_rfib5_ω
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "rfib(5)"
xchain00193_n3_α:
# IR_LIT_INTEGER
bb00198_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00193_n5_α
 xchain00193_n3_β:
 jmp proc_rfib5_ω
.Lx00199_0:
 .quad 1
xchain00193_n4_α:
# IR_RETURN
bb00112_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib5_γ
xchain00193_n5_α:
# IR_VAR
bb00114_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00193_n6_α
 xchain00193_n5_β:
 jmp proc_rfib5_ω
xchain00193_n6_α:
# IR_TO
bb00200_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00201_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00193_n7_α
 xchain00193_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00201_0
xchain00193_n7_α:
# IR_LIT_INTEGER
bb00202_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00193_n8_α
 xchain00193_n7_β:
 jmp xchain00193_n6_β
.Lx00203_0:
 .quad 5
xchain00193_n8_α:
bb00116_α:
  .section .rodata
  .Lcall00116_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00116_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00193_n6_β
 jmp xchain00193_n6_β
xchain00193_n8_β:
 jmp xchain00193_n6_β
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
xchain00204_n0_α:
# IR_VAR
bb00205_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00204_n1_α
 xchain00204_n0_β:
 jmp xchain00204_n4_α
xchain00204_n1_α:
# IR_LIT_INTEGER
bb00206_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00204_n2_α
 xchain00204_n1_β:
 jmp xchain00204_n4_α
.Lx00207_0:
 .quad 3
xchain00204_n2_α:
bb00208_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00209_0
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00209_0
.Lx00209_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jge xchain00204_n4_α
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rcx
 mov rcx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rcx
 jmp xchain00204_n3_α
.Lx00209_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 5
 lea r9, [r12 + 256]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00209_1
 cmp eax, 1
 je xchain00204_n4_α
 jmp xchain00204_n3_α
 xchain00204_n2_β:
 jmp xchain00204_n4_α
xchain00204_n3_α:
# IR_LIT_INTEGER
bb00118_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00204_n5_α
 xchain00204_n3_β:
 jmp proc_rfib_ω
.Lx00210_0:
 .quad 1
xchain00204_n4_α:
# IR_VAR
bb00120_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
 jmp xchain00204_n6_α
 xchain00204_n4_β:
 jmp proc_rfib_ω
xchain00204_n5_α:
# IR_RETURN
bb00211_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rfib_γ
xchain00204_n6_α:
# IR_LIT_INTEGER
bb00212_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00204_n7_α
 xchain00204_n6_β:
 jmp proc_rfib_ω
.Lx00213_0:
 .quad 2
xchain00204_n7_α:
bb00214_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00215_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00215_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00215_2
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00215_2
.Lx00215_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00204_n8_α
.Lx00215_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8d, 1
 lea r9, [r12 + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00215_3
.Lx00215_2:
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
.Lx00215_3:
 jmp xchain00204_n8_α
 xchain00204_n7_β:
 jmp proc_rfib_ω
xchain00204_n8_α:
bb00216_α:
  .section .rodata
  .Lcall00216_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00216_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00204_n9_α
xchain00204_n8_β:
 jmp proc_rfib_ω
xchain00204_n9_α:
# IR_VAR
bb00123_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00204_n10_α
 xchain00204_n9_β:
 jmp proc_rfib_ω
xchain00204_n10_α:
# IR_LIT_INTEGER
bb00124_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00204_n11_α
 xchain00204_n10_β:
 jmp proc_rfib_ω
.Lx00217_0:
 .quad 1
xchain00204_n11_α:
bb00125_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 16]
 cmp eax, 100
 je .Lx00218_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00218_0
 mov eax, dword ptr [r12 + 16]
 cmp eax, 6
 jne .Lx00218_2
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00218_2
.Lx00218_1:
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00204_n12_α
.Lx00218_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 1
 lea r9, [r12 + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00218_3
.Lx00218_2:
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
.Lx00218_3:
 jmp xchain00204_n12_α
 xchain00204_n11_β:
 jmp proc_rfib_ω
xchain00204_n12_α:
bb00219_α:
  .section .rodata
  .Lcall00219_pname: .string "rfib"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00219_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00204_n13_α
xchain00204_n12_β:
 jmp proc_rfib_ω
xchain00204_n13_α:
bb00220_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 96]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 176]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [r12 + 176]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 184]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain00204_n14_α
.Lx00221_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 mov r8d, 0
 lea r9, [r12 + 80]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00221_3
.Lx00221_2:
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
.Lx00221_3:
 jmp xchain00204_n14_α
 xchain00204_n13_β:
 jmp proc_rfib_ω
xchain00204_n14_α:
# IR_RETURN
bb00126_α:
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
xchain00222_n0_α:
# IR_VAR
bb00223_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00222_n1_α
 xchain00222_n0_β:
 jmp xchain00222_n3_α
xchain00222_n1_α:
# IR_UNOP
bb00224_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00222_n3_α
 cmp eax, 0
 jne xchain00222_n3_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain00222_n2_α
 xchain00222_n1_β:
 jmp xchain00222_n3_α
xchain00222_n2_α:
# IR_LIT_STRING
bb00225_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00222_n4_α
 xchain00222_n2_β:
 jmp proc_prslow_ω
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "prslow(7)"
xchain00222_n3_α:
# IR_LIT_INTEGER
bb00129_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00222_n5_α
 xchain00222_n3_β:
 jmp proc_prslow_ω
.Lx00227_0:
 .quad 1
xchain00222_n4_α:
# IR_RETURN
bb00131_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prslow_γ
xchain00222_n5_α:
# IR_VAR
bb00228_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00222_n6_α
 xchain00222_n5_β:
 jmp proc_prslow_ω
xchain00222_n6_α:
# IR_TO
bb00229_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00230_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00222_n7_α
 xchain00222_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00230_0
xchain00222_n7_α:
# IR_LIT_INTEGER
bb00231_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00222_n8_α
 xchain00222_n7_β:
 jmp xchain00222_n9_α
.Lx00232_0:
 .quad 0
xchain00222_n8_α:
bb00233_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00222_n9_α
 xchain00222_n8_β:
 jmp xchain00222_n9_α
xchain00222_n9_α:
# IR_LIT_INTEGER
bb00133_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00222_n10_α
 xchain00222_n9_β:
 jmp xchain00222_n6_β
.Lx00234_0:
 .quad 2
xchain00222_n10_α:
# IR_LIT_INTEGER
bb00235_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00222_n11_α
 xchain00222_n10_β:
 jmp xchain00222_n6_β
.Lx00236_0:
 .quad 7
xchain00222_n11_α:
# IR_TO
bb00237_α:
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
.Lx00238_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 168]
 cmp rax, rcx
 jg xchain00222_n6_β
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain00222_n12_α
 xchain00222_n11_β:
 inc qword ptr [r12 + 128]
 jmp .Lx00238_0
xchain00222_n12_α:
bb00135_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00222_n13_α
 xchain00222_n12_β:
 jmp xchain00222_n6_β
xchain00222_n13_α:
# IR_VAR
bb00239_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 312], rax
 jmp xchain00222_n14_α
 xchain00222_n13_β:
 jmp xchain00222_n19_α
xchain00222_n14_α:
# IR_LIT_INTEGER
bb00240_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00222_n15_α
 xchain00222_n14_β:
 jmp xchain00222_n19_α
.Lx00241_0:
 .quad 2
xchain00222_n15_α:
# IR_VAR
bb00242_α:
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 392], rax
 jmp xchain00222_n16_α
 xchain00222_n15_β:
 jmp xchain00222_n19_α
xchain00222_n16_α:
# IR_LIT_INTEGER
bb00243_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00222_n17_α
 xchain00222_n16_β:
 jmp xchain00222_n19_α
.Lx00244_0:
 .quad 1
xchain00222_n17_α:
bb00245_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00246_0
 mov eax, dword ptr [r12 + 400]
 cmp eax, 100
 je .Lx00246_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00246_2
 mov eax, dword ptr [r12 + 400]
 cmp eax, 6
 jne .Lx00246_2
.Lx00246_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 408]
 sub rax, rcx
 mov qword ptr [r12 + 368], 6
 mov qword ptr [r12 + 376], rax
 jmp xchain00222_n18_α
.Lx00246_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 lea r9, [r12 + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00246_3
.Lx00246_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00222_n19_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
.Lx00246_3:
 jmp xchain00222_n18_α
 xchain00222_n17_β:
 jmp xchain00222_n19_α
xchain00222_n18_α:
# IR_TO
bb00247_α:
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
.Lx00248_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain00222_n19_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain00222_n20_α
 xchain00222_n18_β:
 inc qword ptr [r12 + 336]
 jmp .Lx00248_0
xchain00222_n19_α:
# IR_VAR
bb00249_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 216], rax
 jmp xchain00222_n21_α
 xchain00222_n19_β:
 jmp xchain00222_n11_β
xchain00222_n20_α:
bb00250_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 544]
 cmp eax, 100
 je .Lx00251_0
 mov eax, dword ptr [r12 + 320]
 cmp eax, 100
 je .Lx00251_0
 mov eax, dword ptr [r12 + 544]
 cmp eax, 6
 jne .Lx00251_2
 mov eax, dword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx00251_2
.Lx00251_1:
 mov rax, qword ptr [r12 + 552]
 mov rcx, qword ptr [r12 + 328]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain00222_n22_α
.Lx00251_0:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 lea r9, [r12 + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00251_3
.Lx00251_2:
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00222_n19_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
.Lx00251_3:
 jmp xchain00222_n22_α
 xchain00222_n20_β:
 jmp xchain00222_n19_α
xchain00222_n21_α:
# IR_LIT_INTEGER
bb00137_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00222_n23_α
 xchain00222_n21_β:
 jmp xchain00222_n11_β
.Lx00252_0:
 .quad 1
xchain00222_n22_α:
# IR_LIT_INTEGER
bb00138_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain00222_n24_α
 xchain00222_n22_β:
 jmp xchain00222_n18_β
.Lx00253_0:
 .quad 0
xchain00222_n23_α:
bb00254_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 560]
 cmp eax, 100
 je .Lx00255_0
 mov eax, dword ptr [r12 + 224]
 cmp eax, 100
 je .Lx00255_0
 mov eax, dword ptr [r12 + 560]
 cmp eax, 6
 jne .Lx00255_2
 mov eax, dword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx00255_2
.Lx00255_1:
 mov rax, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 232]
 add rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain00222_n25_α
.Lx00255_0:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 lea r9, [r12 + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00255_3
.Lx00255_2:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00222_n11_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
.Lx00255_3:
 jmp xchain00222_n25_α
 xchain00222_n23_β:
 jmp xchain00222_n11_β
xchain00222_n24_α:
bb00256_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 288]
 cmp eax, 100
 je .Lx00257_0
 mov eax, dword ptr [r12 + 416]
 cmp eax, 100
 je .Lx00257_0
.Lx00257_1:
 mov rax, qword ptr [r12 + 296]
 mov rcx, qword ptr [r12 + 424]
 cmp rax, rcx
 jne xchain00222_n18_β
 mov rcx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 272], rcx
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 280], rcx
 jmp xchain00222_n26_α
.Lx00257_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 9
 lea r9, [r12 + 272]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00257_1
 cmp eax, 1
 je xchain00222_n18_β
 jmp xchain00222_n26_α
 xchain00222_n24_β:
 jmp xchain00222_n18_β
xchain00222_n25_α:
bb00258_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00222_n27_α
 xchain00222_n25_β:
 jmp xchain00222_n11_β
xchain00222_n26_α:
 jmp xchain00222_n11_β
xchain00222_n26_β:
 jmp xchain00222_n11_β
xchain00222_n27_α:
 jmp xchain00222_n11_β
xchain00222_n27_β:
 jmp xchain00222_n11_β
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
xchain00259_n0_α:
# IR_VAR
bb00143_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00259_n1_α
 xchain00259_n0_β:
 jmp xchain00259_n3_α
xchain00259_n1_α:
# IR_UNOP
bb00260_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00259_n3_α
 cmp eax, 0
 jne xchain00259_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00259_n2_α
 xchain00259_n1_β:
 jmp xchain00259_n3_α
xchain00259_n2_α:
# IR_LIT_STRING
bb00261_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00259_n4_α
 xchain00259_n2_β:
 jmp proc_if0_ω
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "if 0 then 1"
xchain00259_n3_α:
# IR_LIT_INTEGER
bb00263_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00259_n5_α
 xchain00259_n3_β:
 jmp proc_if0_ω
.Lx00264_0:
 .quad 1
xchain00259_n4_α:
# IR_RETURN
bb00145_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_if0_γ
xchain00259_n5_α:
# IR_VAR
bb00147_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00259_n6_α
 xchain00259_n5_β:
 jmp proc_if0_ω
xchain00259_n6_α:
# IR_TO
bb00265_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00266_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00259_n7_α
 xchain00259_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00266_0
xchain00259_n7_α:
# IR_LIT_INTEGER
bb00267_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00259_n8_α
 xchain00259_n7_β:
 jmp xchain00259_n6_β
.Lx00268_0:
 .quad 0
xchain00259_n8_α:
# IR_LIT_INTEGER
bb00269_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00259_n9_α
 xchain00259_n8_β:
 jmp xchain00259_n6_β
.Lx00270_0:
 .quad 1
xchain00259_n9_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00271_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00259_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00259_n6_β
 xchain00259_n9_β:
 jmp xchain00259_n6_β
xchain00259_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00150_α:
 jmp qword ptr [r12 + 112]
 xchain00259_n10_β:
 jmp xchain00259_n6_β
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
xchain00272_n0_α:
# IR_VAR
bb00151_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 616], rax
 jmp xchain00272_n1_α
 xchain00272_n0_β:
 jmp xchain00272_n3_α
xchain00272_n1_α:
# IR_UNOP
bb00152_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00272_n3_α
 cmp eax, 0
 jne xchain00272_n3_α
 mov qword ptr [r12 + 592], 0
 mov qword ptr [r12 + 600], 0
 jmp xchain00272_n2_α
 xchain00272_n1_β:
 jmp xchain00272_n3_α
xchain00272_n2_α:
# IR_LIT_STRING
bb00273_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain00272_n4_α
 xchain00272_n2_β:
 jmp proc_case3_ω
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "case 3 of..."
xchain00272_n3_α:
# IR_LIT_INTEGER
bb00154_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00272_n5_α
 xchain00272_n3_β:
 jmp proc_case3_ω
.Lx00275_0:
 .quad 1
xchain00272_n4_α:
# IR_RETURN
bb00276_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_case3_γ
xchain00272_n5_α:
# IR_VAR
bb00277_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00272_n6_α
 xchain00272_n5_β:
 jmp proc_case3_ω
xchain00272_n6_α:
# IR_TO
bb00278_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00279_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00272_n7_α
 xchain00272_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00279_0
xchain00272_n7_α:
# IR_LIT_INTEGER
bb00280_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00272_n8_α
 xchain00272_n7_β:
 jmp xchain00272_n6_β
.Lx00281_0:
 .quad 3
xchain00272_n8_α:
# IR_LIT_INTEGER
bb00157_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00272_n9_α
 xchain00272_n8_β:
 jmp xchain00272_n6_β
.Lx00282_0:
 .quad 1
xchain00272_n9_α:
bb00283_α:
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
  .Lrkfn467: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain00272_n11_α
 jmp xchain00272_n10_α
 xchain00272_n9_β:
 jmp xchain00272_n11_α
xchain00272_n10_α:
# IR_LIT_INTEGER
bb00159_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00272_n12_α
 xchain00272_n10_β:
 jmp xchain00272_n6_β
.Lx00284_0:
 .quad 1
xchain00272_n11_α:
# IR_LIT_INTEGER
bb00285_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00272_n13_α
 xchain00272_n11_β:
 jmp xchain00272_n6_β
.Lx00286_0:
 .quad 2
xchain00272_n12_α:
bb00287_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00272_n14_α
 xchain00272_n12_β:
 jmp xchain00272_n6_β
xchain00272_n13_α:
bb00288_α:
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
  .Lrkfn472: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00272_n16_α
 jmp xchain00272_n15_α
 xchain00272_n13_β:
 jmp xchain00272_n16_α
xchain00272_n14_α:
# IR_VAR
bb00161_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 104], rax
 jmp xchain00272_n6_β
 xchain00272_n14_β:
 jmp xchain00272_n6_β
xchain00272_n15_α:
# IR_LIT_INTEGER
bb00163_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain00272_n17_α
 xchain00272_n15_β:
 jmp xchain00272_n6_β
.Lx00289_0:
 .quad 2
xchain00272_n16_α:
# IR_LIT_INTEGER
bb00290_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00272_n18_α
 xchain00272_n16_β:
 jmp xchain00272_n6_β
.Lx00291_0:
 .quad 3
xchain00272_n17_α:
bb00292_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00272_n14_α
 xchain00272_n17_β:
 jmp xchain00272_n6_β
xchain00272_n18_α:
bb00293_α:
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
  .Lrkfn479: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00272_n20_α
 jmp xchain00272_n19_α
 xchain00272_n18_β:
 jmp xchain00272_n20_α
xchain00272_n19_α:
# IR_LIT_INTEGER
bb00294_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00272_n21_α
 xchain00272_n19_β:
 jmp xchain00272_n6_β
.Lx00295_0:
 .quad 3
xchain00272_n20_α:
# IR_LIT_INTEGER
bb00166_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00272_n22_α
 xchain00272_n20_β:
 jmp xchain00272_n6_β
.Lx00296_0:
 .quad 4
xchain00272_n21_α:
bb00167_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00272_n14_α
 xchain00272_n21_β:
 jmp xchain00272_n6_β
xchain00272_n22_α:
bb00297_α:
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
  .Lrkfn484: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn484]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00272_n24_α
 jmp xchain00272_n23_α
 xchain00272_n22_β:
 jmp xchain00272_n24_α
xchain00272_n23_α:
# IR_LIT_INTEGER
bb00168_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00272_n25_α
 xchain00272_n23_β:
 jmp xchain00272_n6_β
.Lx00298_0:
 .quad 4
xchain00272_n24_α:
# IR_LIT_INTEGER
bb00299_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00272_n26_α
 xchain00272_n24_β:
 jmp xchain00272_n6_β
.Lx00300_0:
 .quad 0
xchain00272_n25_α:
bb00301_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00272_n14_α
 xchain00272_n25_β:
 jmp xchain00272_n6_β
xchain00272_n26_α:
bb00302_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00272_n14_α
 xchain00272_n26_β:
 jmp xchain00272_n6_β
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
xchain00303_n0_α:
# IR_VAR
bb00171_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00303_n1_α
 xchain00303_n0_β:
 jmp xchain00303_n3_α
xchain00303_n1_α:
# IR_UNOP
bb00173_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00303_n3_α
 cmp eax, 0
 jne xchain00303_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00303_n2_α
 xchain00303_n1_β:
 jmp xchain00303_n3_α
xchain00303_n2_α:
# IR_LIT_STRING
bb00304_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00303_n4_α
 xchain00303_n2_β:
 jmp proc_nulltest_ω
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "\\8"
xchain00303_n3_α:
# IR_LIT_INTEGER
bb00306_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00303_n5_α
 xchain00303_n3_β:
 jmp proc_nulltest_ω
.Lx00307_0:
 .quad 1
xchain00303_n4_α:
# IR_RETURN
bb00308_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nulltest_γ
xchain00303_n5_α:
# IR_VAR
bb00309_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00303_n6_α
 xchain00303_n5_β:
 jmp proc_nulltest_ω
xchain00303_n6_α:
# IR_TO
bb00175_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00310_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00303_n7_α
 xchain00303_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00310_0
xchain00303_n7_α:
# IR_LIT_INTEGER
bb00177_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00303_n8_α
 xchain00303_n7_β:
 jmp xchain00303_n6_β
.Lx00311_0:
 .quad 8
xchain00303_n8_α:
# IR_UNOP
bb00312_α:
 mov eax, dword ptr [r12 + 112]
 cmp eax, 99
 je xchain00303_n6_β
 cmp eax, 0
 je xchain00303_n6_β
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
 jmp xchain00303_n6_β
 xchain00303_n8_β:
 jmp xchain00303_n6_β
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
xchain00313_n0_α:
# IR_VAR
bb00179_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00313_n1_α
 xchain00313_n0_β:
 jmp xchain00313_n3_α
xchain00313_n1_α:
# IR_UNOP
bb00314_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00313_n3_α
 cmp eax, 0
 jne xchain00313_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00313_n2_α
 xchain00313_n1_β:
 jmp xchain00313_n3_α
xchain00313_n2_α:
# IR_LIT_STRING
bb00315_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00313_n4_α
 xchain00313_n2_β:
 jmp proc_typef_ω
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "type(s)"
xchain00313_n3_α:
# IR_LIT_INTEGER
bb00182_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00313_n5_α
 xchain00313_n3_β:
 jmp proc_typef_ω
.Lx00317_0:
 .quad 1
xchain00313_n4_α:
# IR_RETURN
bb00183_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_typef_γ
xchain00313_n5_α:
# IR_VAR
bb00184_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00313_n6_α
 xchain00313_n5_β:
 jmp proc_typef_ω
xchain00313_n6_α:
# IR_TO
bb00318_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00319_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00313_n7_α
 xchain00313_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00319_0
xchain00313_n7_α:
# IR_LIT_STRING
bb00320_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00313_n8_α
 xchain00313_n7_β:
 jmp xchain00313_n6_β
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "abcde"
xchain00313_n8_α:
bb00322_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn515: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn515]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00313_n6_β
 jmp xchain00313_n6_β
 xchain00313_n8_β:
 jmp xchain00313_n6_β
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
xchain00323_n0_α:
# IR_VAR
bb00324_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00323_n1_α
 xchain00323_n0_β:
 jmp xchain00323_n3_α
xchain00323_n1_α:
# IR_UNOP
bb00325_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00323_n3_α
 cmp eax, 0
 jne xchain00323_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00323_n2_α
 xchain00323_n1_β:
 jmp xchain00323_n3_α
xchain00323_n2_α:
# IR_LIT_STRING
bb00188_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00323_n4_α
 xchain00323_n2_β:
 jmp proc_imagef_ω
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "image(s)"
xchain00323_n3_α:
# IR_LIT_INTEGER
bb00190_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00323_n5_α
 xchain00323_n3_β:
 jmp proc_imagef_ω
.Lx00327_0:
 .quad 1
xchain00323_n4_α:
# IR_RETURN
bb00328_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_imagef_γ
xchain00323_n5_α:
# IR_VAR
bb00192_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00323_n6_α
 xchain00323_n5_β:
 jmp proc_imagef_ω
xchain00323_n6_α:
# IR_TO
bb00329_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00330_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00323_n7_α
 xchain00323_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00330_0
xchain00323_n7_α:
# IR_LIT_STRING
bb00193_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00323_n8_α
 xchain00323_n7_β:
 jmp xchain00323_n6_β
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "ab\tcd"
xchain00323_n8_α:
bb00332_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn529: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn529]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00323_n6_β
 jmp xchain00323_n6_β
 xchain00323_n8_β:
 jmp xchain00323_n6_β
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
xchain00333_n0_α:
# IR_VAR
bb00334_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00333_n1_α
 xchain00333_n0_β:
 jmp xchain00333_n3_α
xchain00333_n1_α:
# IR_UNOP
bb00335_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00333_n3_α
 cmp eax, 0
 jne xchain00333_n3_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00333_n2_α
 xchain00333_n1_β:
 jmp xchain00333_n3_α
xchain00333_n2_α:
# IR_LIT_STRING
bb00197_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00333_n4_α
 xchain00333_n2_β:
 jmp proc_marshal_ω
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "2(3,1,4,1,6)"
xchain00333_n3_α:
# IR_LIT_INTEGER
bb00199_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00333_n5_α
 xchain00333_n3_β:
 jmp proc_marshal_ω
.Lx00337_0:
 .quad 1
xchain00333_n4_α:
# IR_RETURN
bb00338_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_marshal_γ
xchain00333_n5_α:
# IR_VAR
bb00339_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00333_n6_α
 xchain00333_n5_β:
 jmp proc_marshal_ω
xchain00333_n6_α:
# IR_TO
bb00340_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00341_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00333_n7_α
 xchain00333_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00341_0
xchain00333_n7_α:
# IR_LIT_INTEGER
bb00342_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00333_n8_α
 xchain00333_n7_β:
 jmp xchain00333_n6_β
.Lx00343_0:
 .quad 2
xchain00333_n8_α:
# IR_LIT_INTEGER
bb00201_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00333_n9_α
 xchain00333_n8_β:
 jmp xchain00333_n6_β
.Lx00344_0:
 .quad 3
xchain00333_n9_α:
# IR_LIT_INTEGER
bb00203_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00333_n10_α
 xchain00333_n9_β:
 jmp xchain00333_n6_β
.Lx00345_0:
 .quad 1
xchain00333_n10_α:
# IR_LIT_INTEGER
bb00346_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00333_n11_α
 xchain00333_n10_β:
 jmp xchain00333_n6_β
.Lx00347_0:
 .quad 4
xchain00333_n11_α:
# IR_LIT_INTEGER
bb00204_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00333_n12_α
 xchain00333_n11_β:
 jmp xchain00333_n6_β
.Lx00348_0:
 .quad 1
xchain00333_n12_α:
# IR_LIT_INTEGER
bb00349_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx00350_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00333_n13_α
 xchain00333_n12_β:
 jmp xchain00333_n6_β
.Lx00350_0:
 .quad 6
xchain00333_n13_α:
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int)
bb00351_α:
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
 je xchain00333_n6_β
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00333_n6_β
 xchain00333_n13_β:
 jmp xchain00333_n6_β
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
xchain00352_n0_α:
# IR_VAR
bb00207_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00352_n1_α
 xchain00352_n0_β:
 jmp xchain00352_n3_α
xchain00352_n1_α:
# IR_UNOP
bb00209_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00352_n3_α
 cmp eax, 0
 jne xchain00352_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00352_n2_α
 xchain00352_n1_β:
 jmp xchain00352_n3_α
xchain00352_n2_α:
# IR_LIT_STRING
bb00210_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00352_n4_α
 xchain00352_n2_β:
 jmp proc_conj5_ω
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "1&2&3&4&5"
xchain00352_n3_α:
# IR_LIT_INTEGER
bb00354_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00352_n5_α
 xchain00352_n3_β:
 jmp proc_conj5_ω
.Lx00355_0:
 .quad 1
xchain00352_n4_α:
# IR_RETURN
bb00356_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_conj5_γ
xchain00352_n5_α:
# IR_VAR
bb00357_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00352_n6_α
 xchain00352_n5_β:
 jmp proc_conj5_ω
xchain00352_n6_α:
# IR_TO
bb00213_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00358_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00352_n7_α
 xchain00352_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00358_0
xchain00352_n7_α:
# IR_LIT_INTEGER
bb00215_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00352_n8_α
 xchain00352_n7_β:
 jmp xchain00352_n6_β
.Lx00359_0:
 .quad 1
xchain00352_n8_α:
# IR_LIT_INTEGER
bb00360_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00352_n9_α
 xchain00352_n8_β:
 jmp xchain00352_n6_β
.Lx00361_0:
 .quad 2
xchain00352_n9_α:
# IR_LIT_INTEGER
bb00362_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00352_n10_α
 xchain00352_n9_β:
 jmp xchain00352_n6_β
.Lx00363_0:
 .quad 3
xchain00352_n10_α:
# IR_LIT_INTEGER
bb00364_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00352_n11_α
 xchain00352_n10_β:
 jmp xchain00352_n6_β
.Lx00365_0:
 .quad 4
xchain00352_n11_α:
# IR_LIT_INTEGER
bb00217_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00352_n12_α
 xchain00352_n11_β:
 jmp xchain00352_n6_β
.Lx00366_0:
 .quad 5
xchain00352_n12_α:
 jmp xchain00352_n6_β
xchain00352_n12_β:
 jmp xchain00352_n6_β
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
xchain00367_n0_α:
# IR_VAR
bb00368_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00367_n1_α
 xchain00367_n0_β:
 jmp xchain00367_n3_α
xchain00367_n1_α:
# IR_UNOP
bb00221_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00367_n3_α
 cmp eax, 0
 jne xchain00367_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00367_n2_α
 xchain00367_n1_β:
 jmp xchain00367_n3_α
xchain00367_n2_α:
# IR_LIT_STRING
bb00369_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00367_n4_α
 xchain00367_n2_β:
 jmp proc_everyalt_ω
.Lx00370_0:
 .quad .Lx00370_0_s
.Lx00370_0_s:
 .string "1|2|3|4|5"
xchain00367_n3_α:
# IR_LIT_INTEGER
bb00222_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00371_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00367_n5_α
 xchain00367_n3_β:
 jmp proc_everyalt_ω
.Lx00371_0:
 .quad 1
xchain00367_n4_α:
# IR_RETURN
bb00372_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyalt_γ
xchain00367_n5_α:
# IR_VAR
bb00373_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00367_n6_α
 xchain00367_n5_β:
 jmp proc_everyalt_ω
xchain00367_n6_α:
# IR_TO
bb00374_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00375_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00367_n7_α
 xchain00367_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00375_0
xchain00367_n7_α:
# IR_LIT_INTEGER
bb00226_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00367_n8_α
 xchain00367_n7_β:
 jmp xchain00367_n9_α
.Lx00376_0:
 .quad 1
xchain00367_n8_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00227_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00367_n9_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00367_n12_α
 xchain00367_n8_β:
 jmp xchain00367_n6_β
xchain00367_n9_α:
# IR_LIT_INTEGER
bb00377_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00367_n11_α
 xchain00367_n9_β:
 jmp xchain00367_n13_α
.Lx00378_0:
 .quad 2
xchain00367_n10_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00379_α:
 jmp qword ptr [r12 + 112]
 xchain00367_n10_β:
 jmp xchain00367_n6_β
xchain00367_n11_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00380_α:
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00367_n13_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00367_n12_α
 xchain00367_n11_β:
 jmp xchain00367_n6_β
xchain00367_n12_α:
 jmp xchain00367_n10_α
xchain00367_n12_β:
 jmp xchain00367_n10_α
xchain00367_n13_α:
# IR_LIT_INTEGER
bb00230_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00367_n14_α
 xchain00367_n13_β:
 jmp xchain00367_n15_α
.Lx00381_0:
 .quad 3
xchain00367_n14_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00232_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00367_n15_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00367_n12_α
 xchain00367_n14_β:
 jmp xchain00367_n6_β
xchain00367_n15_α:
# IR_LIT_INTEGER
bb00382_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00367_n16_α
 xchain00367_n15_β:
 jmp xchain00367_n17_α
.Lx00383_0:
 .quad 4
xchain00367_n16_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00234_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00367_n17_α]
 mov qword ptr [r12 + 112], rax
 jmp xchain00367_n12_α
 xchain00367_n16_β:
 jmp xchain00367_n6_β
xchain00367_n17_α:
# IR_LIT_INTEGER
bb00236_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00367_n18_α
 xchain00367_n17_β:
 jmp xchain00367_n6_β
.Lx00384_0:
 .quad 5
xchain00367_n18_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00385_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 lea rax, [rip + xchain00367_n6_β]
 mov qword ptr [r12 + 112], rax
 jmp xchain00367_n12_α
 xchain00367_n18_β:
 jmp xchain00367_n6_β
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
xchain00386_n0_α:
# IR_VAR
bb00238_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00386_n1_α
 xchain00386_n0_β:
 jmp xchain00386_n3_α
xchain00386_n1_α:
# IR_UNOP
bb00387_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00386_n3_α
 cmp eax, 0
 jne xchain00386_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00386_n2_α
 xchain00386_n1_β:
 jmp xchain00386_n3_α
xchain00386_n2_α:
# IR_LIT_STRING
bb00388_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00386_n4_α
 xchain00386_n2_β:
 jmp proc_everyto_ω
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "1 to 5"
xchain00386_n3_α:
# IR_LIT_INTEGER
bb00390_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00386_n5_α
 xchain00386_n3_β:
 jmp proc_everyto_ω
.Lx00391_0:
 .quad 1
xchain00386_n4_α:
# IR_RETURN
bb00241_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_everyto_γ
xchain00386_n5_α:
# IR_VAR
bb00392_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00386_n6_α
 xchain00386_n5_β:
 jmp proc_everyto_ω
xchain00386_n6_α:
# IR_TO
bb00393_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00394_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00386_n7_α
 xchain00386_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00394_0
xchain00386_n7_α:
# IR_LIT_INTEGER
bb00244_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00386_n8_α
 xchain00386_n7_β:
 jmp xchain00386_n6_β
.Lx00395_0:
 .quad 1
xchain00386_n8_α:
# IR_LIT_INTEGER
bb00246_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00386_n9_α
 xchain00386_n8_β:
 jmp xchain00386_n6_β
.Lx00396_0:
 .quad 5
xchain00386_n9_α:
# IR_TO
bb00397_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
.Lx00398_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain00386_n6_β
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain00386_n9_β
 xchain00386_n9_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00398_0
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
xchain00399_n0_α:
# IR_VAR
bb00248_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 136], rax
 jmp xchain00399_n1_α
 xchain00399_n0_β:
 jmp xchain00399_n3_α
xchain00399_n1_α:
# IR_UNOP
bb00400_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00399_n3_α
 cmp eax, 0
 jne xchain00399_n3_α
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 jmp xchain00399_n2_α
 xchain00399_n1_β:
 jmp xchain00399_n3_α
xchain00399_n2_α:
# IR_LIT_STRING
bb00401_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00399_n4_α
 xchain00399_n2_β:
 jmp proc_evsusp_ω
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "suspend i"
xchain00399_n3_α:
# IR_VAR
bb00251_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
 jmp xchain00399_n5_α
 xchain00399_n3_β:
 jmp proc_evsusp_ω
xchain00399_n4_α:
# IR_RETURN
bb00252_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_evsusp_γ
xchain00399_n5_α:
bb00253_α:
  .section .rodata
  .Lcall00253_pname: .string "susproc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00253_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00399_n5_β
xchain00399_n5_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00399_n5_β
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
lea rax, [rip + xchain00403_n3_β]
mov qword ptr [r12 + 96], rax
xchain00403_n0_α:
# IR_LIT_INTEGER
bb00255_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00403_n1_α
 xchain00403_n0_β:
 jmp proc_susproc_ω
.Lx00404_0:
 .quad 1
xchain00403_n1_α:
# IR_VAR
bb00257_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00403_n2_α
 xchain00403_n1_β:
 jmp proc_susproc_ω
xchain00403_n2_α:
# IR_TO
bb00405_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00406_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00403_n3_α
 xchain00403_n2_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00406_0
xchain00403_n3_α:
# IR_SUSPEND yield+resume
bb00407_α:
 lea rax, [rip + xchain00403_n3_β]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_susproc_γ
 xchain00403_n3_β:
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
xchain00408_n0_α:
# IR_VAR
bb00409_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00408_n1_α
 xchain00408_n0_β:
 jmp xchain00408_n3_α
xchain00408_n1_α:
# IR_UNOP
bb00259_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00408_n3_α
 cmp eax, 0
 jne xchain00408_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00408_n2_α
 xchain00408_n1_β:
 jmp xchain00408_n3_α
xchain00408_n2_α:
# IR_LIT_STRING
bb00410_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00408_n4_α
 xchain00408_n2_β:
 jmp proc_intcoerce_ω
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "+\"407\""
xchain00408_n3_α:
# IR_LIT_INTEGER
bb00412_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00408_n5_α
 xchain00408_n3_β:
 jmp proc_intcoerce_ω
.Lx00413_0:
 .quad 1
xchain00408_n4_α:
# IR_RETURN
bb00414_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_intcoerce_γ
xchain00408_n5_α:
# IR_VAR
bb00262_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00408_n6_α
 xchain00408_n5_β:
 jmp proc_intcoerce_ω
xchain00408_n6_α:
# IR_TO
bb00264_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00415_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00408_n7_α
 xchain00408_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00415_0
xchain00408_n7_α:
# IR_LIT_STRING
bb00416_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00408_n8_α
 xchain00408_n7_β:
 jmp xchain00408_n6_β
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "407"
xchain00408_n8_α:
# IR_UNOP
bb00418_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00408_n6_β
 xchain00408_n8_β:
 jmp xchain00408_n6_β
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
xchain00419_n0_α:
# IR_VAR
bb00420_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00419_n1_α
 xchain00419_n0_β:
 jmp xchain00419_n3_α
xchain00419_n1_α:
# IR_UNOP
bb00421_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00419_n3_α
 cmp eax, 0
 jne xchain00419_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00419_n2_α
 xchain00419_n1_β:
 jmp xchain00419_n3_α
xchain00419_n2_α:
# IR_LIT_STRING
bb00266_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00419_n4_α
 xchain00419_n2_β:
 jmp proc_realcoerce_ω
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "+\"7.25\""
xchain00419_n3_α:
# IR_LIT_INTEGER
bb00268_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00419_n5_α
 xchain00419_n3_β:
 jmp proc_realcoerce_ω
.Lx00423_0:
 .quad 1
xchain00419_n4_α:
# IR_RETURN
bb00270_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_realcoerce_γ
xchain00419_n5_α:
# IR_VAR
bb00424_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00419_n6_α
 xchain00419_n5_β:
 jmp proc_realcoerce_ω
xchain00419_n6_α:
# IR_TO
bb00425_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00426_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00419_n7_α
 xchain00419_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00426_0
xchain00419_n7_α:
# IR_LIT_STRING
bb00427_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00419_n8_α
 xchain00419_n7_β:
 jmp xchain00419_n6_β
.Lx00428_0:
 .quad .Lx00428_0_s
.Lx00428_0_s:
 .string "7.25"
xchain00419_n8_α:
# IR_UNOP
bb00429_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00419_n6_β
 xchain00419_n8_β:
 jmp xchain00419_n6_β
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
xchain00430_n0_α:
# IR_VAR
bb00272_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00430_n1_α
 xchain00430_n0_β:
 jmp xchain00430_n3_α
xchain00430_n1_α:
# IR_UNOP
bb00431_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00430_n3_α
 cmp eax, 0
 jne xchain00430_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00430_n2_α
 xchain00430_n1_β:
 jmp xchain00430_n3_α
xchain00430_n2_α:
# IR_LIT_STRING
bb00432_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00430_n4_α
 xchain00430_n2_β:
 jmp proc_strcoerce_ω
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "*407"
xchain00430_n3_α:
# IR_LIT_INTEGER
bb00434_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00430_n5_α
 xchain00430_n3_β:
 jmp proc_strcoerce_ω
.Lx00435_0:
 .quad 1
xchain00430_n4_α:
# IR_RETURN
bb00274_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoerce_γ
xchain00430_n5_α:
# IR_VAR
bb00275_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00430_n6_α
 xchain00430_n5_β:
 jmp proc_strcoerce_ω
xchain00430_n6_α:
# IR_TO
bb00436_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00437_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00430_n7_α
 xchain00430_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00437_0
xchain00430_n7_α:
# IR_LIT_INTEGER
bb00438_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00430_n8_α
 xchain00430_n7_β:
 jmp xchain00430_n6_β
.Lx00439_0:
 .quad 407
xchain00430_n8_α:
# IR_UNOP
bb00440_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00430_n6_β
 xchain00430_n8_β:
 jmp xchain00430_n6_β
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
xchain00441_n0_α:
# IR_VAR
bb00442_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00441_n1_α
 xchain00441_n0_β:
 jmp xchain00441_n3_α
xchain00441_n1_α:
# IR_UNOP
bb00279_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00441_n3_α
 cmp eax, 0
 jne xchain00441_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00441_n2_α
 xchain00441_n1_β:
 jmp xchain00441_n3_α
xchain00441_n2_α:
# IR_LIT_STRING
bb00281_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00441_n4_α
 xchain00441_n2_β:
 jmp proc_strcoercer_ω
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "*7.25"
xchain00441_n3_α:
# IR_LIT_INTEGER
bb00282_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00441_n5_α
 xchain00441_n3_β:
 jmp proc_strcoercer_ω
.Lx00444_0:
 .quad 1
xchain00441_n4_α:
# IR_RETURN
bb00445_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcoercer_γ
xchain00441_n5_α:
# IR_VAR
bb00446_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00441_n6_α
 xchain00441_n5_β:
 jmp proc_strcoercer_ω
xchain00441_n6_α:
# IR_TO
bb00284_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00447_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00441_n7_α
 xchain00441_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00447_0
xchain00441_n7_α:
# IR_LIT_REAL
bb00286_α:
 mov qword ptr [r12 + 112], 7
 mov rax, qword ptr [rip + .Lx00448_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00441_n8_α
 xchain00441_n7_β:
 jmp xchain00441_n6_β
.Lx00448_0:
 .quad 4619848792751996928
xchain00441_n8_α:
# IR_UNOP
bb00449_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00441_n6_β
 xchain00441_n8_β:
 jmp xchain00441_n6_β
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
xchain00450_n0_α:
# IR_VAR
bb00451_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00450_n1_α
 xchain00450_n0_β:
 jmp xchain00450_n3_α
xchain00450_n1_α:
# IR_UNOP
bb00452_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00450_n3_α
 cmp eax, 0
 jne xchain00450_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00450_n2_α
 xchain00450_n1_β:
 jmp xchain00450_n3_α
xchain00450_n2_α:
# IR_LIT_STRING
bb00453_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00454_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00450_n4_α
 xchain00450_n2_β:
 jmp proc_tointeger_ω
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "integer(\"407\")"
xchain00450_n3_α:
# IR_LIT_INTEGER
bb00455_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00456_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00450_n5_α
 xchain00450_n3_β:
 jmp proc_tointeger_ω
.Lx00456_0:
 .quad 1
xchain00450_n4_α:
# IR_RETURN
bb00289_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tointeger_γ
xchain00450_n5_α:
# IR_VAR
bb00291_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00450_n6_α
 xchain00450_n5_β:
 jmp proc_tointeger_ω
xchain00450_n6_α:
# IR_TO
bb00457_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00458_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00450_n7_α
 xchain00450_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00458_0
xchain00450_n7_α:
# IR_LIT_STRING
bb00459_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00450_n8_α
 xchain00450_n7_β:
 jmp xchain00450_n6_β
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "407"
xchain00450_n8_α:
bb00461_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn692: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn692]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00450_n6_β
 jmp xchain00450_n6_β
 xchain00450_n8_β:
 jmp xchain00450_n6_β
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
xchain00462_n0_α:
# IR_VAR
bb00295_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00462_n1_α
 xchain00462_n0_β:
 jmp xchain00462_n3_α
xchain00462_n1_α:
# IR_UNOP
bb00296_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00462_n3_α
 cmp eax, 0
 jne xchain00462_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00462_n2_α
 xchain00462_n1_β:
 jmp xchain00462_n3_α
xchain00462_n2_α:
# IR_LIT_STRING
bb00463_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00462_n4_α
 xchain00462_n2_β:
 jmp proc_toreal_ω
.Lx00464_0:
 .quad .Lx00464_0_s
.Lx00464_0_s:
 .string "real(\"7.25\")"
xchain00462_n3_α:
# IR_LIT_INTEGER
bb00465_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00466_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00462_n5_α
 xchain00462_n3_β:
 jmp proc_toreal_ω
.Lx00466_0:
 .quad 1
xchain00462_n4_α:
# IR_RETURN
bb00467_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_toreal_γ
xchain00462_n5_α:
# IR_VAR
bb00298_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00462_n6_α
 xchain00462_n5_β:
 jmp proc_toreal_ω
xchain00462_n6_α:
# IR_TO
bb00300_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00468_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00462_n7_α
 xchain00462_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00468_0
xchain00462_n7_α:
# IR_LIT_STRING
bb00469_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00470_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00462_n8_α
 xchain00462_n7_β:
 jmp xchain00462_n6_β
.Lx00470_0:
 .quad .Lx00470_0_s
.Lx00470_0_s:
 .string "407"
xchain00462_n8_α:
bb00471_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn706: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn706]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00462_n6_β
 jmp xchain00462_n6_β
 xchain00462_n8_β:
 jmp xchain00462_n6_β
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
xchain00472_n0_α:
# IR_VAR
bb00303_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00472_n1_α
 xchain00472_n0_β:
 jmp xchain00472_n3_α
xchain00472_n1_α:
# IR_UNOP
bb00473_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00472_n3_α
 cmp eax, 0
 jne xchain00472_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00472_n2_α
 xchain00472_n1_β:
 jmp xchain00472_n3_α
xchain00472_n2_α:
# IR_LIT_STRING
bb00474_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00472_n4_α
 xchain00472_n2_β:
 jmp proc_tostring_ω
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "string(407)"
xchain00472_n3_α:
# IR_LIT_INTEGER
bb00476_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00472_n5_α
 xchain00472_n3_β:
 jmp proc_tostring_ω
.Lx00477_0:
 .quad 1
xchain00472_n4_α:
# IR_RETURN
bb00305_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tostring_γ
xchain00472_n5_α:
# IR_VAR
bb00307_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00472_n6_α
 xchain00472_n5_β:
 jmp proc_tostring_ω
xchain00472_n6_α:
# IR_TO
bb00478_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00479_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00472_n7_α
 xchain00472_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00479_0
xchain00472_n7_α:
# IR_LIT_INTEGER
bb00480_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00481_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00472_n8_α
 xchain00472_n7_β:
 jmp xchain00472_n6_β
.Lx00481_0:
 .quad 407
xchain00472_n8_α:
bb00482_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn720: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn720]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00472_n6_β
 jmp xchain00472_n6_β
 xchain00472_n8_β:
 jmp xchain00472_n6_β
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
xchain00483_n0_α:
# IR_VAR
bb00484_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00483_n1_α
 xchain00483_n0_β:
 jmp xchain00483_n3_α
xchain00483_n1_α:
# IR_UNOP
bb00310_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00483_n3_α
 cmp eax, 0
 jne xchain00483_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00483_n2_α
 xchain00483_n1_β:
 jmp xchain00483_n3_α
xchain00483_n2_α:
# IR_LIT_STRING
bb00311_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00485_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00483_n4_α
 xchain00483_n2_β:
 jmp proc_rtostring_ω
.Lx00485_0:
 .quad .Lx00485_0_s
.Lx00485_0_s:
 .string "string(7.25)"
xchain00483_n3_α:
# IR_LIT_INTEGER
bb00486_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00487_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00483_n5_α
 xchain00483_n3_β:
 jmp proc_rtostring_ω
.Lx00487_0:
 .quad 1
xchain00483_n4_α:
# IR_RETURN
bb00313_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rtostring_γ
xchain00483_n5_α:
# IR_VAR
bb00488_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00483_n6_α
 xchain00483_n5_β:
 jmp proc_rtostring_ω
xchain00483_n6_α:
# IR_TO
bb00489_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00490_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00483_n7_α
 xchain00483_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00490_0
xchain00483_n7_α:
# IR_LIT_REAL
bb00491_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00483_n8_α
 xchain00483_n7_β:
 jmp xchain00483_n6_β
.Lx00492_0:
 .quad 4619848792751996928
xchain00483_n8_α:
bb00316_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn734: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn734]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00483_n6_β
 jmp xchain00483_n6_β
 xchain00483_n8_β:
 jmp xchain00483_n6_β
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
xchain00493_n0_α:
# IR_VAR
bb00317_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00493_n1_α
 xchain00493_n0_β:
 jmp xchain00493_n3_α
xchain00493_n1_α:
# IR_UNOP
bb00494_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00493_n3_α
 cmp eax, 0
 jne xchain00493_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00493_n2_α
 xchain00493_n1_β:
 jmp xchain00493_n3_α
xchain00493_n2_α:
# IR_LIT_STRING
bb00495_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00493_n4_α
 xchain00493_n2_β:
 jmp proc_tocset_ω
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "cset(\"407\")"
xchain00493_n3_α:
# IR_LIT_INTEGER
bb00497_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00498_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00493_n5_α
 xchain00493_n3_β:
 jmp proc_tocset_ω
.Lx00498_0:
 .quad 1
xchain00493_n4_α:
# IR_RETURN
bb00499_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tocset_γ
xchain00493_n5_α:
# IR_VAR
bb00319_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00493_n6_α
 xchain00493_n5_β:
 jmp proc_tocset_ω
xchain00493_n6_α:
# IR_TO
bb00321_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00500_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00493_n7_α
 xchain00493_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00500_0
xchain00493_n7_α:
# IR_LIT_STRING
bb00501_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00502_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00493_n8_α
 xchain00493_n7_β:
 jmp xchain00493_n6_β
.Lx00502_0:
 .quad .Lx00502_0_s
.Lx00502_0_s:
 .string "407"
xchain00493_n8_α:
bb00503_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn748: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn748]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00493_n6_β
 jmp xchain00493_n6_β
 xchain00493_n8_β:
 jmp xchain00493_n6_β
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
xchain00504_n0_α:
# IR_VAR
bb00323_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00504_n1_α
 xchain00504_n0_β:
 jmp xchain00504_n3_α
xchain00504_n1_α:
# IR_UNOP
bb00505_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00504_n3_α
 cmp eax, 0
 jne xchain00504_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00504_n2_α
 xchain00504_n1_β:
 jmp xchain00504_n3_α
xchain00504_n2_α:
# IR_LIT_STRING
bb00506_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00504_n4_α
 xchain00504_n2_β:
 jmp proc_charf_ω
.Lx00507_0:
 .quad .Lx00507_0_s
.Lx00507_0_s:
 .string "char(65)"
xchain00504_n3_α:
# IR_LIT_INTEGER
bb00508_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00504_n5_α
 xchain00504_n3_β:
 jmp proc_charf_ω
.Lx00509_0:
 .quad 1
xchain00504_n4_α:
# IR_RETURN
bb00326_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_charf_γ
xchain00504_n5_α:
# IR_VAR
bb00327_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00504_n6_α
 xchain00504_n5_β:
 jmp proc_charf_ω
xchain00504_n6_α:
# IR_TO
bb00510_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00511_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00504_n7_α
 xchain00504_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00511_0
xchain00504_n7_α:
# IR_LIT_INTEGER
bb00512_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00513_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00504_n8_α
 xchain00504_n7_β:
 jmp xchain00504_n6_β
.Lx00513_0:
 .quad 65
xchain00504_n8_α:
bb00514_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn762: .string "char"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn762]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00504_n6_β
 jmp xchain00504_n6_β
 xchain00504_n8_β:
 jmp xchain00504_n6_β
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
xchain00515_n0_α:
# IR_VAR
bb00516_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00515_n1_α
 xchain00515_n0_β:
 jmp xchain00515_n3_α
xchain00515_n1_α:
# IR_UNOP
bb00330_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00515_n3_α
 cmp eax, 0
 jne xchain00515_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00515_n2_α
 xchain00515_n1_β:
 jmp xchain00515_n3_α
xchain00515_n2_α:
# IR_LIT_STRING
bb00331_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00515_n4_α
 xchain00515_n2_β:
 jmp proc_ordf_ω
.Lx00517_0:
 .quad .Lx00517_0_s
.Lx00517_0_s:
 .string "ord(\"A\")"
xchain00515_n3_α:
# IR_LIT_INTEGER
bb00518_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00519_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00515_n5_α
 xchain00515_n3_β:
 jmp proc_ordf_ω
.Lx00519_0:
 .quad 1
xchain00515_n4_α:
# IR_RETURN
bb00520_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_ordf_γ
xchain00515_n5_α:
# IR_VAR
bb00333_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00515_n6_α
 xchain00515_n5_β:
 jmp proc_ordf_ω
xchain00515_n6_α:
# IR_TO
bb00521_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00522_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00515_n7_α
 xchain00515_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00522_0
xchain00515_n7_α:
# IR_LIT_STRING
bb00523_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00524_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00515_n8_α
 xchain00515_n7_β:
 jmp xchain00515_n6_β
.Lx00524_0:
 .quad .Lx00524_0_s
.Lx00524_0_s:
 .string "A"
xchain00515_n8_α:
bb00525_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn776: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00515_n6_β
 jmp xchain00515_n6_β
 xchain00515_n8_β:
 jmp xchain00515_n6_β
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
xchain00526_n0_α:
# IR_VAR
bb00336_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00526_n1_α
 xchain00526_n0_β:
 jmp xchain00526_n3_α
xchain00526_n1_α:
# IR_UNOP
bb00337_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00526_n3_α
 cmp eax, 0
 jne xchain00526_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00526_n2_α
 xchain00526_n1_β:
 jmp xchain00526_n3_α
xchain00526_n2_α:
# IR_LIT_STRING
bb00527_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00526_n4_α
 xchain00526_n2_β:
 jmp proc_strsize_ω
.Lx00528_0:
 .quad .Lx00528_0_s
.Lx00528_0_s:
 .string "*\"abcde\""
xchain00526_n3_α:
# IR_LIT_INTEGER
bb00529_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00530_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00526_n5_α
 xchain00526_n3_β:
 jmp proc_strsize_ω
.Lx00530_0:
 .quad 1
xchain00526_n4_α:
# IR_RETURN
bb00531_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsize_γ
xchain00526_n5_α:
# IR_VAR
bb00532_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00526_n6_α
 xchain00526_n5_β:
 jmp proc_strsize_ω
xchain00526_n6_α:
# IR_TO
bb00341_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00533_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00526_n7_α
 xchain00526_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00533_0
xchain00526_n7_α:
# IR_LIT_STRING
bb00343_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00534_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00526_n8_α
 xchain00526_n7_β:
 jmp xchain00526_n6_β
.Lx00534_0:
 .quad .Lx00534_0_s
.Lx00534_0_s:
 .string "abcde"
xchain00526_n8_α:
# IR_UNOP
bb00344_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00526_n6_β
 xchain00526_n8_β:
 jmp xchain00526_n6_β
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
xchain00535_n0_α:
# IR_VAR
bb00345_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00535_n1_α
 xchain00535_n0_β:
 jmp xchain00535_n3_α
xchain00535_n1_α:
# IR_UNOP
bb00347_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00535_n3_α
 cmp eax, 0
 jne xchain00535_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00535_n2_α
 xchain00535_n1_β:
 jmp xchain00535_n3_α
xchain00535_n2_α:
# IR_LIT_STRING
bb00348_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00536_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00535_n4_α
 xchain00535_n2_β:
 jmp proc_concat_ω
.Lx00536_0:
 .quad .Lx00536_0_s
.Lx00536_0_s:
 .string "\"a\" || \"b\""
xchain00535_n3_α:
# IR_LIT_INTEGER
bb00350_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00537_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00535_n5_α
 xchain00535_n3_β:
 jmp proc_concat_ω
.Lx00537_0:
 .quad 1
xchain00535_n4_α:
# IR_RETURN
bb00538_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_concat_γ
xchain00535_n5_α:
# IR_VAR
bb00539_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00535_n6_α
 xchain00535_n5_β:
 jmp proc_concat_ω
xchain00535_n6_α:
# IR_TO
bb00352_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00540_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00535_n7_α
 xchain00535_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00540_0
xchain00535_n7_α:
# IR_LIT_STRING
bb00541_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00535_n8_α
 xchain00535_n7_β:
 jmp xchain00535_n6_β
.Lx00542_0:
 .quad .Lx00542_0_s
.Lx00542_0_s:
 .string "a"
xchain00535_n8_α:
# IR_LIT_STRING
bb00543_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00535_n9_α
 xchain00535_n8_β:
 jmp xchain00535_n6_β
.Lx00544_0:
 .quad .Lx00544_0_s
.Lx00544_0_s:
 .string "b"
xchain00535_n9_α:
bb00545_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 call str_concat_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00535_n6_β
 xchain00535_n9_β:
 jmp xchain00535_n6_β
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
xchain00546_n0_α:
# IR_VAR
bb00353_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00546_n1_α
 xchain00546_n0_β:
 jmp xchain00546_n3_α
xchain00546_n1_α:
# IR_UNOP
bb00355_α:
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
bb00547_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00546_n4_α
 xchain00546_n2_β:
 jmp proc_strpick_ω
.Lx00548_0:
 .quad .Lx00548_0_s
.Lx00548_0_s:
 .string "?\"abcde\""
xchain00546_n3_α:
# IR_LIT_INTEGER
bb00549_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00550_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00546_n5_α
 xchain00546_n3_β:
 jmp proc_strpick_ω
.Lx00550_0:
 .quad 1
xchain00546_n4_α:
# IR_RETURN
bb00551_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strpick_γ
xchain00546_n5_α:
# IR_VAR
bb00552_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00546_n6_α
 xchain00546_n5_β:
 jmp proc_strpick_ω
xchain00546_n6_α:
# IR_TO
bb00358_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00553_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00546_n7_α
 xchain00546_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00553_0
xchain00546_n7_α:
# IR_LIT_STRING
bb00359_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00546_n8_α
 xchain00546_n7_β:
 jmp xchain00546_n6_β
.Lx00554_0:
 .quad .Lx00554_0_s
.Lx00554_0_s:
 .string "abcde"
xchain00546_n8_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb00361_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00546_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00546_n9_α
 xchain00546_n8_β:
 jmp xchain00546_n6_β
xchain00546_n9_α:
# IR_DEREF variable -> value
bb00363_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00546_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00546_n6_β
 xchain00546_n9_β:
 jmp xchain00546_n6_β
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
xchain00555_n0_α:
# IR_VAR
bb00365_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00555_n1_α
 xchain00555_n0_β:
 jmp xchain00555_n3_α
xchain00555_n1_α:
# IR_UNOP
bb00366_α:
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
bb00556_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00557_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00555_n4_α
 xchain00555_n2_β:
 jmp proc_strbang_ω
.Lx00557_0:
 .quad .Lx00557_0_s
.Lx00557_0_s:
 .string "!\"12345\""
xchain00555_n3_α:
# IR_LIT_INTEGER
bb00367_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00555_n5_α
 xchain00555_n3_β:
 jmp proc_strbang_ω
.Lx00558_0:
 .quad 1
xchain00555_n4_α:
# IR_RETURN
bb00559_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strbang_γ
xchain00555_n5_α:
# IR_VAR
bb00560_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00555_n6_α
 xchain00555_n5_β:
 jmp proc_strbang_ω
xchain00555_n6_α:
# IR_TO
bb00561_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00562_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00555_n7_α
 xchain00555_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00562_0
xchain00555_n7_α:
# IR_LIT_STRING
bb00370_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00563_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00555_n8_α
 xchain00555_n7_β:
 jmp xchain00555_n6_β
.Lx00563_0:
 .quad .Lx00563_0_s
.Lx00563_0_s:
 .string "12345"
xchain00555_n8_α:
# IR_LIST_BANG
bb00371_α:
 mov qword ptr [r12 + 112], 0
.Lx00564_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain00555_n6_β
 jmp xchain00555_n8_β
 xchain00555_n8_β:
 inc qword ptr [r12 + 112]
 jmp .Lx00564_0
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
xchain00565_n0_α:
# IR_VAR
bb00566_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00565_n1_α
 xchain00565_n0_β:
 jmp xchain00565_n3_α
xchain00565_n1_α:
# IR_UNOP
bb00567_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00565_n3_α
 cmp eax, 0
 jne xchain00565_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00565_n2_α
 xchain00565_n1_β:
 jmp xchain00565_n3_α
xchain00565_n2_α:
# IR_LIT_STRING
bb00568_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00565_n4_α
 xchain00565_n2_β:
 jmp proc_strsub_ω
.Lx00569_0:
 .quad .Lx00569_0_s
.Lx00569_0_s:
 .string "\"abcde\"[3]"
xchain00565_n3_α:
# IR_LIT_INTEGER
bb00570_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00565_n5_α
 xchain00565_n3_β:
 jmp proc_strsub_ω
.Lx00571_0:
 .quad 1
xchain00565_n4_α:
# IR_RETURN
bb00375_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strsub_γ
xchain00565_n5_α:
# IR_VAR
bb00376_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00565_n6_α
 xchain00565_n5_β:
 jmp proc_strsub_ω
xchain00565_n6_α:
# IR_TO
bb00572_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00573_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00565_n7_α
 xchain00565_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00573_0
xchain00565_n7_α:
# IR_LIT_STRING
bb00574_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx00575_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00565_n8_α
 xchain00565_n7_β:
 jmp xchain00565_n6_β
.Lx00575_0:
 .quad .Lx00575_0_s
.Lx00575_0_s:
 .string "abcde"
xchain00565_n8_α:
# IR_LIT_INTEGER
bb00378_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx00576_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00565_n9_α
 xchain00565_n8_β:
 jmp xchain00565_n6_β
.Lx00576_0:
 .quad 3
xchain00565_n9_α:
# IR_SUBSCRIPT x[i] variable
bb00577_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00565_n6_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00565_n10_α
 xchain00565_n9_β:
 jmp xchain00565_n6_β
xchain00565_n10_α:
# IR_DEREF variable -> value
bb00578_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00565_n6_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00565_n6_β
 xchain00565_n10_β:
 jmp xchain00565_n6_β
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
xchain00579_n0_α:
# IR_VAR
bb00580_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00579_n1_α
 xchain00579_n0_β:
 jmp xchain00579_n3_α
xchain00579_n1_α:
# IR_UNOP
bb00581_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00579_n3_α
 cmp eax, 0
 jne xchain00579_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00579_n2_α
 xchain00579_n1_β:
 jmp xchain00579_n3_α
xchain00579_n2_α:
# IR_LIT_STRING
bb00582_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00579_n4_α
 xchain00579_n2_β:
 jmp proc_substr_ω
.Lx00583_0:
 .quad .Lx00583_0_s
.Lx00583_0_s:
 .string "\"abcde\"[2:5]"
xchain00579_n3_α:
# IR_LIT_INTEGER
bb00381_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00579_n5_α
 xchain00579_n3_β:
 jmp proc_substr_ω
.Lx00584_0:
 .quad 1
xchain00579_n4_α:
# IR_RETURN
bb00585_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_substr_γ
xchain00579_n5_α:
# IR_VAR
bb00586_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00579_n6_α
 xchain00579_n5_β:
 jmp proc_substr_ω
xchain00579_n6_α:
# IR_TO
bb00383_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00587_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00579_n7_α
 xchain00579_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00587_0
xchain00579_n7_α:
# IR_LIT_STRING
bb00588_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00589_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00579_n8_α
 xchain00579_n7_β:
 jmp xchain00579_n6_β
.Lx00589_0:
 .quad .Lx00589_0_s
.Lx00589_0_s:
 .string "abcde"
xchain00579_n8_α:
# IR_LIT_INTEGER
bb00590_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00579_n9_α
 xchain00579_n8_β:
 jmp xchain00579_n6_β
.Lx00591_0:
 .quad 2
xchain00579_n9_α:
# IR_LIT_INTEGER
bb00384_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00579_n10_α
 xchain00579_n9_β:
 jmp xchain00579_n6_β
.Lx00592_0:
 .quad 5
xchain00579_n10_α:
# IR_SUBSCRIPT section
bb00593_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_get2@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00579_n6_β
 xchain00579_n10_β:
 jmp xchain00579_n6_β
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
xchain00594_n0_α:
# IR_VAR
bb00595_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00594_n1_α
 xchain00594_n0_β:
 jmp xchain00594_n3_α
xchain00594_n1_α:
# IR_UNOP
bb00386_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00594_n3_α
 cmp eax, 0
 jne xchain00594_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00594_n2_α
 xchain00594_n1_β:
 jmp xchain00594_n3_α
xchain00594_n2_α:
# IR_LIT_STRING
bb00596_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00594_n4_α
 xchain00594_n2_β:
 jmp proc_subsasg_ω
.Lx00597_0:
 .quad .Lx00597_0_s
.Lx00597_0_s:
 .string "s[2:5] := \"x\""
xchain00594_n3_α:
# IR_LIT_INTEGER
bb00598_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00594_n5_α
 xchain00594_n3_β:
 jmp proc_subsasg_ω
.Lx00599_0:
 .quad 1
xchain00594_n4_α:
# IR_RETURN
bb00600_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_subsasg_γ
xchain00594_n5_α:
# IR_VAR
bb00389_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00594_n6_α
 xchain00594_n5_β:
 jmp proc_subsasg_ω
xchain00594_n6_α:
# IR_TO
bb00391_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00601_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00594_n7_α
 xchain00594_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00601_0
xchain00594_n7_α:
# IR_LIT_STRING
bb00602_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00594_n8_α
 xchain00594_n7_β:
 jmp xchain00594_n6_β
.Lx00603_0:
 .quad .Lx00603_0_s
.Lx00603_0_s:
 .string "abcde"
xchain00594_n8_α:
bb00604_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00594_n9_α
 xchain00594_n8_β:
 jmp xchain00594_n6_β
xchain00594_n9_α:
# IR_LIT_INTEGER
bb00605_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00594_n10_α
 xchain00594_n9_β:
 jmp xchain00594_n6_β
.Lx00606_0:
 .quad 2
xchain00594_n10_α:
# IR_LIT_INTEGER
bb00607_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00594_n11_α
 xchain00594_n10_β:
 jmp xchain00594_n6_β
.Lx00608_0:
 .quad 5
xchain00594_n11_α:
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
bb00394_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00594_n6_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00594_n12_α
 xchain00594_n11_β:
 jmp xchain00594_n6_β
xchain00594_n12_α:
# IR_LIT_STRING
bb00395_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00594_n13_α
 xchain00594_n12_β:
 jmp xchain00594_n6_β
.Lx00609_0:
 .quad .Lx00609_0_s
.Lx00609_0_s:
 .string "x"
xchain00594_n13_α:
# IR_ASSIGN_VAR write through variable
bb00396_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00594_n6_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00594_n6_β
 xchain00594_n13_β:
 jmp xchain00594_n6_β
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
xchain00610_n0_α:
# IR_VAR
bb00611_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00610_n1_α
 xchain00610_n0_β:
 jmp xchain00610_n3_α
xchain00610_n1_α:
# IR_UNOP
bb00398_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00610_n3_α
 cmp eax, 0
 jne xchain00610_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00610_n2_α
 xchain00610_n1_β:
 jmp xchain00610_n3_α
xchain00610_n2_α:
# IR_LIT_STRING
bb00399_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00610_n4_α
 xchain00610_n2_β:
 jmp proc_strcmp_ω
.Lx00612_0:
 .quad .Lx00612_0_s
.Lx00612_0_s:
 .string "\"abc\">>\"aaa\""
xchain00610_n3_α:
# IR_LIT_INTEGER
bb00613_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00610_n5_α
 xchain00610_n3_β:
 jmp proc_strcmp_ω
.Lx00614_0:
 .quad 1
xchain00610_n4_α:
# IR_RETURN
bb00615_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strcmp_γ
xchain00610_n5_α:
# IR_VAR
bb00616_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00610_n6_α
 xchain00610_n5_β:
 jmp proc_strcmp_ω
xchain00610_n6_α:
# IR_TO
bb00402_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00617_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00610_n7_α
 xchain00610_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00617_0
xchain00610_n7_α:
# IR_LIT_STRING
bb00618_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00610_n8_α
 xchain00610_n7_β:
 jmp xchain00610_n6_β
.Lx00619_0:
 .quad .Lx00619_0_s
.Lx00619_0_s:
 .string "abc"
xchain00610_n8_α:
# IR_LIT_STRING
bb00620_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00610_n9_α
 xchain00610_n8_β:
 jmp xchain00610_n6_β
.Lx00621_0:
 .quad .Lx00621_0_s
.Lx00621_0_s:
 .string "aaa"
xchain00610_n9_α:
bb00622_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00610_n6_β
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
 jmp xchain00610_n6_β
 xchain00610_n9_β:
 jmp xchain00610_n6_β
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
xchain00623_n0_α:
# IR_VAR
bb00624_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
 jmp xchain00623_n1_α
 xchain00623_n0_β:
 jmp xchain00623_n3_α
xchain00623_n1_α:
# IR_UNOP
bb00403_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00623_n3_α
 cmp eax, 0
 jne xchain00623_n3_α
 mov qword ptr [r12 + 144], 0
 mov qword ptr [r12 + 152], 0
 jmp xchain00623_n2_α
 xchain00623_n1_β:
 jmp xchain00623_n3_α
xchain00623_n2_α:
# IR_LIT_STRING
bb00404_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00623_n4_α
 xchain00623_n2_β:
 jmp proc_strident_ω
.Lx00625_0:
 .quad .Lx00625_0_s
.Lx00625_0_s:
 .string "\"abc\"===\"aaa\""
xchain00623_n3_α:
# IR_LIT_INTEGER
bb00626_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00627_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00623_n5_α
 xchain00623_n3_β:
 jmp proc_strident_ω
.Lx00627_0:
 .quad 1
xchain00623_n4_α:
# IR_RETURN
bb00628_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_strident_γ
xchain00623_n5_α:
# IR_VAR
bb00629_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00623_n6_α
 xchain00623_n5_β:
 jmp proc_strident_ω
xchain00623_n6_α:
# IR_TO
bb00406_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00630_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00623_n6_β
 xchain00623_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00630_0
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
xchain00631_n0_α:
# IR_VAR
bb00632_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
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
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00631_n2_α
 xchain00631_n1_β:
 jmp xchain00631_n3_α
xchain00631_n2_α:
# IR_LIT_STRING
bb00408_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00634_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00631_n4_α
 xchain00631_n2_β:
 jmp proc_replf_ω
.Lx00634_0:
 .quad .Lx00634_0_s
.Lx00634_0_s:
 .string "repl(\"-\",20)"
xchain00631_n3_α:
# IR_LIT_INTEGER
bb00635_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00631_n5_α
 xchain00631_n3_β:
 jmp proc_replf_ω
.Lx00636_0:
 .quad 1
xchain00631_n4_α:
# IR_RETURN
bb00637_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_replf_γ
xchain00631_n5_α:
# IR_VAR
bb00638_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00631_n6_α
 xchain00631_n5_β:
 jmp proc_replf_ω
xchain00631_n6_α:
# IR_TO
bb00411_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00639_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00631_n7_α
 xchain00631_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00639_0
xchain00631_n7_α:
# IR_LIT_STRING
bb00413_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00631_n8_α
 xchain00631_n7_β:
 jmp xchain00631_n6_β
.Lx00640_0:
 .quad .Lx00640_0_s
.Lx00640_0_s:
 .string "-"
xchain00631_n8_α:
# IR_LIT_INTEGER
bb00641_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00631_n9_α
 xchain00631_n8_β:
 jmp xchain00631_n6_β
.Lx00642_0:
 .quad 20
xchain00631_n9_α:
bb00643_α:
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
  .Lrkfn919: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn919]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00631_n6_β
 jmp xchain00631_n6_β
 xchain00631_n9_β:
 jmp xchain00631_n6_β
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
xchain00644_n0_α:
# IR_VAR
bb00645_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00644_n1_α
 xchain00644_n0_β:
 jmp xchain00644_n3_α
xchain00644_n1_α:
# IR_UNOP
bb00646_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00644_n3_α
 cmp eax, 0
 jne xchain00644_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00644_n2_α
 xchain00644_n1_β:
 jmp xchain00644_n3_α
xchain00644_n2_α:
# IR_LIT_STRING
bb00415_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00644_n4_α
 xchain00644_n2_β:
 jmp proc_reversef_ω
.Lx00647_0:
 .quad .Lx00647_0_s
.Lx00647_0_s:
 .string "reverse(\"a...z\")"
xchain00644_n3_α:
# IR_LIT_INTEGER
bb00417_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00648_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00644_n5_α
 xchain00644_n3_β:
 jmp proc_reversef_ω
.Lx00648_0:
 .quad 1
xchain00644_n4_α:
# IR_RETURN
bb00649_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reversef_γ
xchain00644_n5_α:
# IR_VAR
bb00419_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00644_n6_α
 xchain00644_n5_β:
 jmp proc_reversef_ω
xchain00644_n6_α:
# IR_TO
bb00650_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00651_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00644_n7_α
 xchain00644_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00651_0
xchain00644_n7_α:
# IR_LIT_STRING
bb00652_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00644_n8_α
 xchain00644_n7_β:
 jmp xchain00644_n6_β
.Lx00653_0:
 .quad .Lx00653_0_s
.Lx00653_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00644_n8_α:
bb00654_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn933: .string "reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn933]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00644_n6_β
 jmp xchain00644_n6_β
 xchain00644_n8_β:
 jmp xchain00644_n6_β
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
xchain00655_n0_α:
# IR_VAR
bb00422_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00655_n1_α
 xchain00655_n0_β:
 jmp xchain00655_n3_α
xchain00655_n1_α:
# IR_UNOP
bb00423_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00655_n3_α
 cmp eax, 0
 jne xchain00655_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00655_n2_α
 xchain00655_n1_β:
 jmp xchain00655_n3_α
xchain00655_n2_α:
# IR_LIT_STRING
bb00656_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00655_n4_α
 xchain00655_n2_β:
 jmp proc_leftf_ω
.Lx00657_0:
 .quad .Lx00657_0_s
.Lx00657_0_s:
 .string "left(\"a\",10)"
xchain00655_n3_α:
# IR_LIT_INTEGER
bb00658_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00655_n5_α
 xchain00655_n3_β:
 jmp proc_leftf_ω
.Lx00659_0:
 .quad 1
xchain00655_n4_α:
# IR_RETURN
bb00660_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_leftf_γ
xchain00655_n5_α:
# IR_VAR
bb00661_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00655_n6_α
 xchain00655_n5_β:
 jmp proc_leftf_ω
xchain00655_n6_α:
# IR_TO
bb00426_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00662_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00655_n7_α
 xchain00655_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00662_0
xchain00655_n7_α:
# IR_LIT_STRING
bb00428_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00655_n8_α
 xchain00655_n7_β:
 jmp xchain00655_n6_β
.Lx00663_0:
 .quad .Lx00663_0_s
.Lx00663_0_s:
 .string "a"
xchain00655_n8_α:
# IR_LIT_INTEGER
bb00664_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00655_n9_α
 xchain00655_n8_β:
 jmp xchain00655_n6_β
.Lx00665_0:
 .quad 10
xchain00655_n9_α:
bb00430_α:
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
  .Lrkfn948: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn948]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00655_n6_β
 jmp xchain00655_n6_β
 xchain00655_n9_β:
 jmp xchain00655_n6_β
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
xchain00666_n0_α:
# IR_VAR
bb00667_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00666_n1_α
 xchain00666_n0_β:
 jmp xchain00666_n3_α
xchain00666_n1_α:
# IR_UNOP
bb00668_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00666_n3_α
 cmp eax, 0
 jne xchain00666_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00666_n2_α
 xchain00666_n1_β:
 jmp xchain00666_n3_α
xchain00666_n2_α:
# IR_LIT_STRING
bb00669_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00666_n4_α
 xchain00666_n2_β:
 jmp proc_centerf_ω
.Lx00670_0:
 .quad .Lx00670_0_s
.Lx00670_0_s:
 .string "center(\"a\",10)"
xchain00666_n3_α:
# IR_LIT_INTEGER
bb00433_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00666_n5_α
 xchain00666_n3_β:
 jmp proc_centerf_ω
.Lx00671_0:
 .quad 1
xchain00666_n4_α:
# IR_RETURN
bb00435_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_centerf_γ
xchain00666_n5_α:
# IR_VAR
bb00672_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00666_n6_α
 xchain00666_n5_β:
 jmp proc_centerf_ω
xchain00666_n6_α:
# IR_TO
bb00673_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00674_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00666_n7_α
 xchain00666_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00674_0
xchain00666_n7_α:
# IR_LIT_STRING
bb00675_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00666_n8_α
 xchain00666_n7_β:
 jmp xchain00666_n6_β
.Lx00676_0:
 .quad .Lx00676_0_s
.Lx00676_0_s:
 .string "a"
xchain00666_n8_α:
# IR_LIT_INTEGER
bb00677_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00666_n9_α
 xchain00666_n8_β:
 jmp xchain00666_n6_β
.Lx00678_0:
 .quad 10
xchain00666_n9_α:
bb00437_α:
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
  .Lrkfn963: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn963]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00666_n6_β
 jmp xchain00666_n6_β
 xchain00666_n9_β:
 jmp xchain00666_n6_β
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
xchain00679_n0_α:
# IR_VAR
bb00439_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00679_n1_α
 xchain00679_n0_β:
 jmp xchain00679_n3_α
xchain00679_n1_α:
# IR_UNOP
bb00680_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00679_n3_α
 cmp eax, 0
 jne xchain00679_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00679_n2_α
 xchain00679_n1_β:
 jmp xchain00679_n3_α
xchain00679_n2_α:
# IR_LIT_STRING
bb00441_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00681_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00679_n4_α
 xchain00679_n2_β:
 jmp proc_rightf_ω
.Lx00681_0:
 .quad .Lx00681_0_s
.Lx00681_0_s:
 .string "right(\"a\",10)"
xchain00679_n3_α:
# IR_LIT_INTEGER
bb00682_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00679_n5_α
 xchain00679_n3_β:
 jmp proc_rightf_ω
.Lx00683_0:
 .quad 1
xchain00679_n4_α:
# IR_RETURN
bb00684_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rightf_γ
xchain00679_n5_α:
# IR_VAR
bb00685_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00679_n6_α
 xchain00679_n5_β:
 jmp proc_rightf_ω
xchain00679_n6_α:
# IR_TO
bb00443_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00686_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00679_n7_α
 xchain00679_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00686_0
xchain00679_n7_α:
# IR_LIT_STRING
bb00444_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00679_n8_α
 xchain00679_n7_β:
 jmp xchain00679_n6_β
.Lx00687_0:
 .quad .Lx00687_0_s
.Lx00687_0_s:
 .string "a"
xchain00679_n8_α:
# IR_LIT_INTEGER
bb00688_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00679_n9_α
 xchain00679_n8_β:
 jmp xchain00679_n6_β
.Lx00689_0:
 .quad 10
xchain00679_n9_α:
bb00690_α:
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
  .Lrkfn978: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn978]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00679_n6_β
 jmp xchain00679_n6_β
 xchain00679_n9_β:
 jmp xchain00679_n6_β
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
xchain00691_n0_α:
# IR_VAR
bb00692_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00691_n1_α
 xchain00691_n0_β:
 jmp xchain00691_n3_α
xchain00691_n1_α:
# IR_UNOP
bb00693_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00691_n3_α
 cmp eax, 0
 jne xchain00691_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00691_n2_α
 xchain00691_n1_β:
 jmp xchain00691_n3_α
xchain00691_n2_α:
# IR_LIT_STRING
bb00447_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00691_n4_α
 xchain00691_n2_β:
 jmp proc_trimf_ω
.Lx00694_0:
 .quad .Lx00694_0_s
.Lx00694_0_s:
 .string "trim(\"a  ...\")"
xchain00691_n3_α:
# IR_LIT_INTEGER
bb00448_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00691_n5_α
 xchain00691_n3_β:
 jmp proc_trimf_ω
.Lx00695_0:
 .quad 1
xchain00691_n4_α:
# IR_RETURN
bb00696_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_trimf_γ
xchain00691_n5_α:
# IR_VAR
bb00450_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00691_n6_α
 xchain00691_n5_β:
 jmp proc_trimf_ω
xchain00691_n6_α:
# IR_TO
bb00697_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00698_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00691_n7_α
 xchain00691_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00698_0
xchain00691_n7_α:
# IR_LIT_STRING
bb00699_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00691_n8_α
 xchain00691_n7_β:
 jmp xchain00691_n6_β
.Lx00700_0:
 .quad .Lx00700_0_s
.Lx00700_0_s:
 .string "a         "
xchain00691_n8_α:
bb00701_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn992: .string "trim"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn992]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00691_n6_β
 jmp xchain00691_n6_β
 xchain00691_n8_β:
 jmp xchain00691_n6_β
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
xchain00702_n0_α:
# IR_VAR
bb00454_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00702_n1_α
 xchain00702_n0_β:
 jmp xchain00702_n3_α
xchain00702_n1_α:
# IR_UNOP
bb00456_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00702_n3_α
 cmp eax, 0
 jne xchain00702_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00702_n2_α
 xchain00702_n1_β:
 jmp xchain00702_n3_α
xchain00702_n2_α:
# IR_LIT_STRING
bb00703_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00702_n4_α
 xchain00702_n2_β:
 jmp proc_entabf_ω
.Lx00704_0:
 .quad .Lx00704_0_s
.Lx00704_0_s:
 .string "entab(\"a  ...\")"
xchain00702_n3_α:
# IR_LIT_INTEGER
bb00705_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00706_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00702_n5_α
 xchain00702_n3_β:
 jmp proc_entabf_ω
.Lx00706_0:
 .quad 1
xchain00702_n4_α:
# IR_RETURN
bb00707_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_entabf_γ
xchain00702_n5_α:
# IR_VAR
bb00708_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00702_n6_α
 xchain00702_n5_β:
 jmp proc_entabf_ω
xchain00702_n6_α:
# IR_TO
bb00458_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00709_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00702_n7_α
 xchain00702_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00709_0
xchain00702_n7_α:
# IR_LIT_STRING
bb00460_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00710_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00702_n8_α
 xchain00702_n7_β:
 jmp xchain00702_n6_β
.Lx00710_0:
 .quad .Lx00710_0_s
.Lx00710_0_s:
 .string "a         "
xchain00702_n8_α:
bb00711_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1006: .string "entab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1006]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00702_n6_β
 jmp xchain00702_n6_β
 xchain00702_n8_β:
 jmp xchain00702_n6_β
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
xchain00712_n0_α:
# IR_VAR
bb00713_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain00712_n1_α
 xchain00712_n0_β:
 jmp xchain00712_n3_α
xchain00712_n1_α:
# IR_UNOP
bb00462_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00712_n3_α
 cmp eax, 0
 jne xchain00712_n3_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain00712_n2_α
 xchain00712_n1_β:
 jmp xchain00712_n3_α
xchain00712_n2_α:
# IR_LIT_STRING
bb00714_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00712_n4_α
 xchain00712_n2_β:
 jmp proc_detabf_ω
.Lx00715_0:
 .quad .Lx00715_0_s
.Lx00715_0_s:
 .string "detab(\"a\\tb\\tc\")"
xchain00712_n3_α:
# IR_LIT_INTEGER
bb00716_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00717_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00712_n5_α
 xchain00712_n3_β:
 jmp proc_detabf_ω
.Lx00717_0:
 .quad 1
xchain00712_n4_α:
# IR_RETURN
bb00718_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_detabf_γ
xchain00712_n5_α:
# IR_VAR
bb00464_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00712_n6_α
 xchain00712_n5_β:
 jmp proc_detabf_ω
xchain00712_n6_α:
# IR_TO
bb00466_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00719_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00712_n7_α
 xchain00712_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00719_0
xchain00712_n7_α:
# IR_LIT_STRING
bb00720_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00712_n8_α
 xchain00712_n7_β:
 jmp xchain00712_n6_β
.Lx00721_0:
 .quad .Lx00721_0_s
.Lx00721_0_s:
 .string "a\tb\tc"
xchain00712_n8_α:
bb00722_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1020: .string "detab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1020]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00712_n6_β
 jmp xchain00712_n6_β
 xchain00712_n8_β:
 jmp xchain00712_n6_β
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
xchain00723_n0_α:
# IR_VAR
bb00724_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00723_n1_α
 xchain00723_n0_β:
 jmp xchain00723_n3_α
xchain00723_n1_α:
# IR_UNOP
bb00725_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00723_n3_α
 cmp eax, 0
 jne xchain00723_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00723_n2_α
 xchain00723_n1_β:
 jmp xchain00723_n3_α
xchain00723_n2_α:
# IR_LIT_STRING
bb00468_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00723_n4_α
 xchain00723_n2_β:
 jmp proc_mapf_ω
.Lx00726_0:
 .quad .Lx00726_0_s
.Lx00726_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
xchain00723_n3_α:
# IR_LIT_INTEGER
bb00470_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00727_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00723_n5_α
 xchain00723_n3_β:
 jmp proc_mapf_ω
.Lx00727_0:
 .quad 1
xchain00723_n4_α:
# IR_RETURN
bb00728_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mapf_γ
xchain00723_n5_α:
# IR_VAR
bb00729_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00723_n6_α
 xchain00723_n5_β:
 jmp proc_mapf_ω
xchain00723_n6_α:
# IR_TO
bb00472_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00730_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00723_n7_α
 xchain00723_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00730_0
xchain00723_n7_α:
# IR_LIT_STRING
bb00731_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00723_n8_α
 xchain00723_n7_β:
 jmp xchain00723_n6_β
.Lx00732_0:
 .quad .Lx00732_0_s
.Lx00732_0_s:
 .string "quick brown fox"
xchain00723_n8_α:
# IR_LIT_STRING
bb00733_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00734_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00723_n9_α
 xchain00723_n8_β:
 jmp xchain00723_n6_β
.Lx00734_0:
 .quad .Lx00734_0_s
.Lx00734_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00723_n9_α:
# IR_LIT_STRING
bb00735_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00723_n10_α
 xchain00723_n9_β:
 jmp xchain00723_n6_β
.Lx00736_0:
 .quad .Lx00736_0_s
.Lx00736_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
xchain00723_n10_α:
bb00475_α:
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
  .Lrkfn1036: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1036]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00723_n6_β
 jmp xchain00723_n6_β
 xchain00723_n10_β:
 jmp xchain00723_n6_β
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
xchain00737_n0_α:
# IR_VAR
bb00477_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00737_n1_α
 xchain00737_n0_β:
 jmp xchain00737_n3_α
xchain00737_n1_α:
# IR_UNOP
bb00738_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00737_n3_α
 cmp eax, 0
 jne xchain00737_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00737_n2_α
 xchain00737_n1_β:
 jmp xchain00737_n3_α
xchain00737_n2_α:
# IR_LIT_STRING
bb00739_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00740_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00737_n4_α
 xchain00737_n2_β:
 jmp proc_map1_ω
.Lx00740_0:
 .quad .Lx00740_0_s
.Lx00740_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
xchain00737_n3_α:
# IR_LIT_INTEGER
bb00741_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00737_n5_α
 xchain00737_n3_β:
 jmp proc_map1_ω
.Lx00742_0:
 .quad 1
xchain00737_n4_α:
# IR_RETURN
bb00743_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map1_γ
xchain00737_n5_α:
# IR_VAR
bb00479_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00737_n6_α
 xchain00737_n5_β:
 jmp proc_map1_ω
xchain00737_n6_α:
# IR_TO
bb00481_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00744_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00737_n7_α
 xchain00737_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00744_0
xchain00737_n7_α:
# IR_LIT_STRING
bb00745_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00746_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00737_n8_α
 xchain00737_n7_β:
 jmp xchain00737_n6_β
.Lx00746_0:
 .quad .Lx00746_0_s
.Lx00746_0_s:
 .string "b"
xchain00737_n8_α:
# IR_LIT_STRING
bb00747_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00748_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00737_n9_α
 xchain00737_n8_β:
 jmp xchain00737_n6_β
.Lx00748_0:
 .quad .Lx00748_0_s
.Lx00748_0_s:
 .string "ab"
xchain00737_n9_α:
# IR_LIT_STRING
bb00483_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00749_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00737_n10_α
 xchain00737_n9_β:
 jmp xchain00737_n6_β
.Lx00749_0:
 .quad .Lx00749_0_s
.Lx00749_0_s:
 .string "ba"
xchain00737_n10_α:
bb00750_α:
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
  .Lrkfn1052: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1052]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00737_n6_β
 jmp xchain00737_n6_β
 xchain00737_n10_β:
 jmp xchain00737_n6_β
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
xchain00751_n0_α:
# IR_VAR
bb00752_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 392], rax
 jmp xchain00751_n1_α
 xchain00751_n0_β:
 jmp xchain00751_n3_α
xchain00751_n1_α:
# IR_UNOP
bb00753_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00751_n3_α
 cmp eax, 0
 jne xchain00751_n3_α
 mov qword ptr [r12 + 368], 0
 mov qword ptr [r12 + 376], 0
 jmp xchain00751_n2_α
 xchain00751_n1_β:
 jmp xchain00751_n3_α
xchain00751_n2_α:
# IR_LIT_STRING
bb00485_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00754_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00751_n4_α
 xchain00751_n2_β:
 jmp proc_map2_ω
.Lx00754_0:
 .quad .Lx00754_0_s
.Lx00754_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
xchain00751_n3_α:
# IR_LIT_INTEGER
bb00487_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00751_n5_α
 xchain00751_n3_β:
 jmp proc_map2_ω
.Lx00755_0:
 .quad 1
xchain00751_n4_α:
# IR_RETURN
bb00756_α:
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_map2_γ
xchain00751_n5_α:
# IR_VAR
bb00757_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00751_n6_α
 xchain00751_n5_β:
 jmp proc_map2_ω
xchain00751_n6_α:
# IR_TO
bb00758_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00759_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00751_n7_α
 xchain00751_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00759_0
xchain00751_n7_α:
# IR_LIT_STRING
bb00760_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00751_n8_α
 xchain00751_n7_β:
 jmp xchain00751_n6_β
.Lx00761_0:
 .quad .Lx00761_0_s
.Lx00761_0_s:
 .string "b"
xchain00751_n8_α:
# IR_LIT_STRING
bb00490_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00751_n9_α
 xchain00751_n8_β:
 jmp xchain00751_n6_β
.Lx00762_0:
 .quad .Lx00762_0_s
.Lx00762_0_s:
 .string "ab"
xchain00751_n9_α:
# IR_LIT_STRING
bb00492_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain00751_n10_α
 xchain00751_n9_β:
 jmp xchain00751_n6_β
.Lx00763_0:
 .quad .Lx00763_0_s
.Lx00763_0_s:
 .string "ba"
xchain00751_n10_α:
bb00764_α:
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
  .Lrkfn1068: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1068]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain00751_n6_β
 jmp xchain00751_n11_α
 xchain00751_n10_β:
 jmp xchain00751_n6_β
xchain00751_n11_α:
# IR_LIT_STRING
bb00765_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00766_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00751_n12_α
 xchain00751_n11_β:
 jmp xchain00751_n6_β
.Lx00766_0:
 .quad .Lx00766_0_s
.Lx00766_0_s:
 .string "c"
xchain00751_n12_α:
# IR_LIT_STRING
bb00493_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00751_n13_α
 xchain00751_n12_β:
 jmp xchain00751_n6_β
.Lx00767_0:
 .quad .Lx00767_0_s
.Lx00767_0_s:
 .string "dc"
xchain00751_n13_α:
# IR_LIT_STRING
bb00768_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00751_n14_α
 xchain00751_n13_β:
 jmp xchain00751_n6_β
.Lx00769_0:
 .quad .Lx00769_0_s
.Lx00769_0_s:
 .string "cd"
xchain00751_n14_α:
bb00770_α:
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
  .Lrkfn1073: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1073]
 lea rsi, [r12 + 112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain00751_n6_β
 jmp xchain00751_n15_α
 xchain00751_n14_β:
 jmp xchain00751_n6_β
xchain00751_n15_α:
 jmp xchain00751_n6_β
xchain00751_n15_β:
 jmp xchain00751_n6_β
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
xchain00771_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 248]
 cmp rax, 0
 jne xchain00771_n12_α
 mov qword ptr [r12 + 248], 1
 jmp xchain00771_n1_α
 xchain00771_n0_β:
 jmp xchain00771_n12_α
xchain00771_n1_α:
bb00498_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1079: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1079]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain00771_n3_α
 jmp xchain00771_n2_α
 xchain00771_n1_β:
 jmp xchain00771_n3_α
xchain00771_n2_α:
bb00772_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain00771_n3_α
 xchain00771_n2_β:
 jmp xchain00771_n3_α
xchain00771_n3_α:
# IR_VAR_REF local
bb00773_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00771_n4_α
 xchain00771_n3_β:
 jmp xchain00771_n7_α
xchain00771_n4_α:
# IR_LIT_STRING
bb00774_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00771_n5_α
 xchain00771_n4_β:
 jmp xchain00771_n7_α
.Lx00775_0:
 .quad .Lx00775_0_s
.Lx00775_0_s:
 .string "a"
xchain00771_n5_α:
# IR_SUBSCRIPT x[i] variable
bb00776_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00771_n7_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00771_n6_α
 xchain00771_n5_β:
 jmp xchain00771_n7_α
xchain00771_n6_α:
# IR_LIT_STRING
bb00500_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain00771_n8_α
 xchain00771_n6_β:
 jmp xchain00771_n7_α
.Lx00777_0:
 .quad .Lx00777_0_s
.Lx00777_0_s:
 .string "b"
xchain00771_n7_α:
# IR_VAR_REF local
bb00502_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00771_n9_α
 xchain00771_n7_β:
 jmp xchain00771_n12_α
xchain00771_n8_α:
# IR_ASSIGN_VAR write through variable
bb00778_α:
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00771_n7_α
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain00771_n7_α
 xchain00771_n8_β:
 jmp xchain00771_n7_α
xchain00771_n9_α:
# IR_LIT_STRING
bb00779_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00771_n10_α
 xchain00771_n9_β:
 jmp xchain00771_n12_α
.Lx00780_0:
 .quad .Lx00780_0_s
.Lx00780_0_s:
 .string "b"
xchain00771_n10_α:
# IR_SUBSCRIPT x[i] variable
bb00504_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00771_n12_α
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00771_n11_α
 xchain00771_n10_β:
 jmp xchain00771_n12_α
xchain00771_n11_α:
# IR_LIT_STRING
bb00781_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00771_n13_α
 xchain00771_n11_β:
 jmp xchain00771_n12_α
.Lx00782_0:
 .quad .Lx00782_0_s
.Lx00782_0_s:
 .string "a"
xchain00771_n12_α:
# IR_VAR
bb00783_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00771_n14_α
 xchain00771_n12_β:
 jmp xchain00771_n17_α
xchain00771_n13_α:
# IR_ASSIGN_VAR write through variable
bb00784_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00771_n12_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00771_n15_α
 xchain00771_n13_β:
 jmp xchain00771_n12_α
xchain00771_n14_α:
# IR_UNOP
bb00507_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00771_n17_α
 cmp eax, 0
 jne xchain00771_n17_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00771_n16_α
 xchain00771_n14_β:
 jmp xchain00771_n17_α
xchain00771_n15_α:
 jmp xchain00771_n12_α
xchain00771_n15_β:
 jmp xchain00771_n12_α
xchain00771_n16_α:
# IR_LIT_STRING
bb00785_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00786_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00771_n18_α
 xchain00771_n16_β:
 jmp proc_tablemap_ω
.Lx00786_0:
 .quad .Lx00786_0_s
.Lx00786_0_s:
 .string "T[\"b\"]"
xchain00771_n17_α:
# IR_LIT_INTEGER
bb00787_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00771_n19_α
 xchain00771_n17_β:
 jmp proc_tablemap_ω
.Lx00788_0:
 .quad 1
xchain00771_n18_α:
# IR_RETURN
bb00789_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tablemap_γ
xchain00771_n19_α:
# IR_VAR
bb00790_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00771_n20_α
 xchain00771_n19_β:
 jmp proc_tablemap_ω
xchain00771_n20_α:
# IR_TO
bb00511_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00791_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00771_n21_α
 xchain00771_n20_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00791_0
xchain00771_n21_α:
# IR_VAR_REF local
bb00513_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00771_n22_α
 xchain00771_n21_β:
 jmp xchain00771_n20_β
xchain00771_n22_α:
# IR_LIT_STRING
bb00792_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00771_n23_α
 xchain00771_n22_β:
 jmp xchain00771_n20_β
.Lx00793_0:
 .quad .Lx00793_0_s
.Lx00793_0_s:
 .string "b"
xchain00771_n23_α:
# IR_SUBSCRIPT x[i] variable
bb00794_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00771_n20_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00771_n24_α
 xchain00771_n23_β:
 jmp xchain00771_n20_β
xchain00771_n24_α:
# IR_DEREF variable -> value
bb00515_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00771_n20_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00771_n20_β
 xchain00771_n24_β:
 jmp xchain00771_n20_β
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
xchain00795_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 280]
 cmp rax, 0
 jne xchain00795_n14_α
 mov qword ptr [r12 + 280], 1
 jmp xchain00795_n1_α
 xchain00795_n0_β:
 jmp xchain00795_n14_α
xchain00795_n1_α:
# IR_LIT_INTEGER
bb00796_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx00797_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00795_n2_α
 xchain00795_n1_β:
 jmp xchain00795_n4_α
.Lx00797_0:
 .quad 256
xchain00795_n2_α:
bb00798_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+544]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn1114: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1114]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain00795_n4_α
 jmp xchain00795_n3_α
 xchain00795_n2_β:
 jmp xchain00795_n4_α
xchain00795_n3_α:
bb00517_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00795_n4_α
 xchain00795_n3_β:
 jmp xchain00795_n4_α
xchain00795_n4_α:
# IR_VAR_REF local
bb00519_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain00795_n5_α
 xchain00795_n4_β:
 jmp xchain00795_n8_α
xchain00795_n5_α:
# IR_LIT_STRING
bb00799_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00795_n6_α
 xchain00795_n5_β:
 jmp xchain00795_n8_α
.Lx00800_0:
 .quad .Lx00800_0_s
.Lx00800_0_s:
 .string "a"
xchain00795_n6_α:
bb00801_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+432]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn1120: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1120]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain00795_n8_α
 jmp xchain00795_n7_α
 xchain00795_n6_β:
 jmp xchain00795_n8_α
xchain00795_n7_α:
# IR_SUBSCRIPT x[i] variable
bb00802_α:
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00795_n8_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00795_n9_α
 xchain00795_n7_β:
 jmp xchain00795_n8_α
xchain00795_n8_α:
# IR_VAR_REF local
bb00803_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain00795_n10_α
 xchain00795_n8_β:
 jmp xchain00795_n14_α
xchain00795_n9_α:
# IR_LIT_STRING
bb00522_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx00804_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00795_n11_α
 xchain00795_n9_β:
 jmp xchain00795_n8_α
.Lx00804_0:
 .quad .Lx00804_0_s
.Lx00804_0_s:
 .string "b"
xchain00795_n10_α:
# IR_LIT_STRING
bb00524_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00795_n12_α
 xchain00795_n10_β:
 jmp xchain00795_n14_α
.Lx00805_0:
 .quad .Lx00805_0_s
.Lx00805_0_s:
 .string "b"
xchain00795_n11_α:
# IR_ASSIGN_VAR write through variable
bb00806_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00795_n8_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00795_n8_α
 xchain00795_n11_β:
 jmp xchain00795_n8_α
xchain00795_n12_α:
bb00807_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+320]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn1128: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1128]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00795_n14_α
 jmp xchain00795_n13_α
 xchain00795_n12_β:
 jmp xchain00795_n14_α
xchain00795_n13_α:
# IR_SUBSCRIPT x[i] variable
bb00526_α:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00795_n14_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00795_n15_α
 xchain00795_n13_β:
 jmp xchain00795_n14_α
xchain00795_n14_α:
# IR_VAR
bb00808_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00795_n16_α
 xchain00795_n14_β:
 jmp xchain00795_n19_α
xchain00795_n15_α:
# IR_LIT_STRING
bb00809_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00810_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00795_n17_α
 xchain00795_n15_β:
 jmp xchain00795_n14_α
.Lx00810_0:
 .quad .Lx00810_0_s
.Lx00810_0_s:
 .string "a"
xchain00795_n16_α:
# IR_UNOP
bb00811_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00795_n19_α
 cmp eax, 0
 jne xchain00795_n19_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00795_n18_α
 xchain00795_n16_β:
 jmp xchain00795_n19_α
xchain00795_n17_α:
# IR_ASSIGN_VAR write through variable
bb00528_α:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00795_n14_α
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00795_n20_α
 xchain00795_n17_β:
 jmp xchain00795_n14_α
xchain00795_n18_α:
# IR_LIT_STRING
bb00530_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00795_n21_α
 xchain00795_n18_β:
 jmp proc_listmap_ω
.Lx00812_0:
 .quad .Lx00812_0_s
.Lx00812_0_s:
 .string "L[ord(\"b\")]"
xchain00795_n19_α:
# IR_LIT_INTEGER
bb00813_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00814_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00795_n22_α
 xchain00795_n19_β:
 jmp proc_listmap_ω
.Lx00814_0:
 .quad 1
xchain00795_n20_α:
 jmp xchain00795_n14_α
xchain00795_n20_β:
 jmp xchain00795_n14_α
xchain00795_n21_α:
# IR_RETURN
bb00815_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_listmap_γ
xchain00795_n22_α:
# IR_VAR
bb00816_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00795_n23_α
 xchain00795_n22_β:
 jmp proc_listmap_ω
xchain00795_n23_α:
# IR_TO
bb00533_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00817_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00795_n24_α
 xchain00795_n23_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00817_0
xchain00795_n24_α:
# IR_VAR_REF local
bb00534_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00795_n25_α
 xchain00795_n24_β:
 jmp xchain00795_n23_β
xchain00795_n25_α:
# IR_LIT_STRING
bb00818_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00795_n26_α
 xchain00795_n25_β:
 jmp xchain00795_n23_β
.Lx00819_0:
 .quad .Lx00819_0_s
.Lx00819_0_s:
 .string "b"
xchain00795_n26_α:
bb00535_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+144] -> [r12+128]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn1147: .string "ord"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1147]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00795_n23_β
 jmp xchain00795_n27_α
 xchain00795_n26_β:
 jmp xchain00795_n23_β
xchain00795_n27_α:
# IR_SUBSCRIPT x[i] variable
bb00820_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00795_n23_β
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00795_n28_α
 xchain00795_n27_β:
 jmp xchain00795_n23_β
xchain00795_n28_α:
# IR_DEREF variable -> value
bb00821_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00795_n23_β
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00795_n23_β
 xchain00795_n28_β:
 jmp xchain00795_n23_β
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
xchain00822_n0_α:
# IR_VAR
bb00823_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00822_n1_α
 xchain00822_n0_β:
 jmp xchain00822_n3_α
xchain00822_n1_α:
# IR_UNOP
bb00536_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00822_n3_α
 cmp eax, 0
 jne xchain00822_n3_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain00822_n2_α
 xchain00822_n1_β:
 jmp xchain00822_n3_α
xchain00822_n2_α:
# IR_LIT_STRING
bb00537_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00822_n4_α
 xchain00822_n2_β:
 jmp proc_nullscan_ω
.Lx00824_0:
 .quad .Lx00824_0_s
.Lx00824_0_s:
 .string "s ? 0"
xchain00822_n3_α:
# IR_LIT_INTEGER
bb00825_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00826_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00822_n5_α
 xchain00822_n3_β:
 jmp proc_nullscan_ω
.Lx00826_0:
 .quad 1
xchain00822_n4_α:
# IR_RETURN
bb00827_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_nullscan_γ
xchain00822_n5_α:
# IR_VAR
bb00828_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00822_n6_α
 xchain00822_n5_β:
 jmp proc_nullscan_ω
xchain00822_n6_α:
# IR_TO
bb00829_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00830_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00822_n7_α
 xchain00822_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00830_0
xchain00822_n7_α:
# IR_LIT_STRING
bb00540_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00831_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00822_n8_α
 xchain00822_n7_β:
 jmp xchain00822_n6_β
.Lx00831_0:
 .quad .Lx00831_0_s
.Lx00831_0_s:
 .string "abc"
xchain00822_n8_α:
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
 jmp xchain00822_n9_α
 xchain00822_n8_β:
 jmp xchain00822_n6_β
xchain00822_n9_α:
# IR_LIT_INTEGER
bb00544_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx00832_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00822_n10_α
 xchain00822_n9_β:
 jmp proc_nullscan_ω
.Lx00832_0:
 .quad 0
xchain00822_n10_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain00822_n6_β
 xchain00822_n10_β:
 jmp xchain00822_n6_β
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
xchain00833_n0_α:
# IR_VAR
bb00546_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00833_n1_α
 xchain00833_n0_β:
 jmp xchain00833_n3_α
xchain00833_n1_α:
# IR_UNOP
bb00834_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00833_n3_α
 cmp eax, 0
 jne xchain00833_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00833_n2_α
 xchain00833_n1_β:
 jmp xchain00833_n3_α
xchain00833_n2_α:
# IR_LIT_STRING
bb00835_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00836_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00833_n4_α
 xchain00833_n2_β:
 jmp proc_movef_ω
.Lx00836_0:
 .quad .Lx00836_0_s
.Lx00836_0_s:
 .string "move(0)"
xchain00833_n3_α:
# IR_LIT_STRING
bb00837_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00838_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00833_n5_α
 xchain00833_n3_β:
 jmp proc_movef_ω
.Lx00838_0:
 .quad .Lx00838_0_s
.Lx00838_0_s:
 .string "abcde"
xchain00833_n4_α:
# IR_RETURN
bb00548_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_movef_γ
xchain00833_n5_α:
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
 jmp xchain00833_n6_α
 xchain00833_n5_β:
 jmp proc_movef_ω
xchain00833_n6_α:
# IR_LIT_INTEGER
bb00839_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00840_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00833_n7_α
 xchain00833_n6_β:
 jmp xchain00833_n11_α
.Lx00840_0:
 .quad 1
xchain00833_n7_α:
# IR_VAR
bb00841_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00833_n8_α
 xchain00833_n7_β:
 jmp xchain00833_n11_α
xchain00833_n8_α:
# IR_TO
bb00842_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00843_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00833_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00833_n9_α
 xchain00833_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00843_0
xchain00833_n9_α:
# IR_LIT_INTEGER
bb00844_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00845_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00833_n10_α
 xchain00833_n9_β:
 jmp xchain00833_n8_β
.Lx00845_0:
 .quad 0
xchain00833_n10_α:
# IR_SCAN_MOVE
bb00553_α:
 mov rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00833_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00833_n8_β
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
 jmp xchain00833_n8_β
 xchain00833_n10_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00833_n8_β
xchain00833_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_movef_ω
 xchain00833_n11_β:
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
xchain00846_n0_α:
# IR_VAR
bb00847_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain00846_n1_α
 xchain00846_n0_β:
 jmp xchain00846_n3_α
xchain00846_n1_α:
# IR_UNOP
bb00848_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00846_n3_α
 cmp eax, 0
 jne xchain00846_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain00846_n2_α
 xchain00846_n1_β:
 jmp xchain00846_n3_α
xchain00846_n2_α:
# IR_LIT_STRING
bb00555_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00849_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00846_n4_α
 xchain00846_n2_β:
 jmp proc_mov11_ω
.Lx00849_0:
 .quad .Lx00849_0_s
.Lx00849_0_s:
 .string "move(1) & move(-1)"
xchain00846_n3_α:
# IR_LIT_STRING
bb00850_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx00851_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00846_n5_α
 xchain00846_n3_β:
 jmp proc_mov11_ω
.Lx00851_0:
 .quad .Lx00851_0_s
.Lx00851_0_s:
 .string "abcde"
xchain00846_n4_α:
# IR_RETURN
bb00852_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_mov11_γ
xchain00846_n5_α:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00846_n6_α
 xchain00846_n5_β:
 jmp proc_mov11_ω
xchain00846_n6_α:
# IR_LIT_INTEGER
bb00557_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00853_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00846_n7_α
 xchain00846_n6_β:
 jmp xchain00846_n14_α
.Lx00853_0:
 .quad 1
xchain00846_n7_α:
# IR_VAR
bb00558_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00846_n8_α
 xchain00846_n7_β:
 jmp xchain00846_n14_α
xchain00846_n8_α:
# IR_TO
bb00854_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00855_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00846_n14_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00846_n9_α
 xchain00846_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00855_0
xchain00846_n9_α:
# IR_LIT_INTEGER
bb00856_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00857_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00846_n10_α
 xchain00846_n9_β:
 jmp xchain00846_n8_β
.Lx00857_0:
 .quad 1
xchain00846_n10_α:
# IR_SCAN_MOVE
bb00858_α:
 mov rax, r14
 add rax, 2
 cmp rax, 1
 jl xchain00846_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00846_n8_β
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
 jmp xchain00846_n11_α
 xchain00846_n10_β:
 mov r14, qword ptr [r12 + 176]
 jmp xchain00846_n8_β
xchain00846_n11_α:
# IR_LIT_INTEGER
bb00859_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00860_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00846_n12_α
 xchain00846_n11_β:
 jmp xchain00846_n8_β
.Lx00860_0:
 .quad 18446744073709551615
xchain00846_n12_α:
# IR_SCAN_MOVE
bb00562_α:
 mov rax, r14
 add rax, 0
 cmp rax, 1
 jl xchain00846_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00846_n8_β
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
 jmp xchain00846_n13_α
 xchain00846_n12_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00846_n8_β
xchain00846_n13_α:
 jmp xchain00846_n8_β
xchain00846_n13_β:
 jmp xchain00846_n8_β
xchain00846_n14_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_mov11_ω
 xchain00846_n14_β:
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
xchain00861_n0_α:
# IR_VAR
bb00564_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain00861_n1_α
 xchain00861_n0_β:
 jmp xchain00861_n3_α
xchain00861_n1_α:
# IR_UNOP
bb00565_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00861_n3_α
 cmp eax, 0
 jne xchain00861_n3_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain00861_n2_α
 xchain00861_n1_β:
 jmp xchain00861_n3_α
xchain00861_n2_α:
# IR_LIT_STRING
bb00862_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx00863_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00861_n4_α
 xchain00861_n2_β:
 jmp proc_pos11_ω
.Lx00863_0:
 .quad .Lx00863_0_s
.Lx00863_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
xchain00861_n3_α:
# IR_LIT_STRING
bb00864_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx00865_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain00861_n5_α
 xchain00861_n3_β:
 jmp proc_pos11_ω
.Lx00865_0:
 .quad .Lx00865_0_s
.Lx00865_0_s:
 .string "abcde"
xchain00861_n4_α:
# IR_RETURN
bb00866_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pos11_γ
xchain00861_n5_α:
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
 jmp xchain00861_n6_α
 xchain00861_n5_β:
 jmp proc_pos11_ω
xchain00861_n6_α:
# IR_LIT_INTEGER
bb00571_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00867_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00861_n7_α
 xchain00861_n6_β:
 jmp xchain00861_n18_α
.Lx00867_0:
 .quad 1
xchain00861_n7_α:
# IR_VAR
bb00868_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00861_n8_α
 xchain00861_n7_β:
 jmp xchain00861_n18_α
xchain00861_n8_α:
# IR_TO
bb00869_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00870_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00861_n18_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00861_n9_β
 xchain00861_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00870_0
xchain00861_n9_α:
# IR_KEYWORD_pos_reg
bb00871_α:
 mov qword ptr [r12 + 240], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [r12 + 248], rax
 jmp xchain00861_n10_α
 xchain00861_n9_β:
 jmp xchain00861_n8_β
xchain00861_n10_α:
# IR_LIT_INTEGER
bb00872_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00873_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00861_n11_α
 xchain00861_n10_β:
 jmp xchain00861_n8_β
.Lx00873_0:
 .quad 1
xchain00861_n11_α:
bb00573_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 240]
 cmp eax, 100
 je .Lx00874_0
 mov eax, dword ptr [r12 + 272]
 cmp eax, 100
 je .Lx00874_0
 mov eax, dword ptr [r12 + 240]
 cmp eax, 6
 jne .Lx00874_2
 mov eax, dword ptr [r12 + 272]
 cmp eax, 6
 jne .Lx00874_2
.Lx00874_1:
 mov rax, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 280]
 add rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
 jmp xchain00861_n12_α
.Lx00874_0:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 lea r9, [r12 + 224]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00874_3
.Lx00874_2:
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 280]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00861_n8_β
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
.Lx00874_3:
 jmp xchain00861_n12_α
 xchain00861_n11_β:
 jmp xchain00861_n8_β
xchain00861_n12_α:
# BOX ICN IR_KEYWORD_ASSIGN pos reg [oasgn.r kywdpos: cvpos(v,Delta) fail->omega; delta=pos-1; result {DT_I,pos}]
bb00575_α:
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 mov rdx, r15
 call rt_cvpos_pos@PLT
 cmp rax, 0
 je xchain00861_n8_β
 mov r14, rax
 sub r14, 1
 mov qword ptr [r12 + 208], 6
 mov qword ptr [r12 + 216], rax
 jmp xchain00861_n13_α
 xchain00861_n12_β:
 jmp xchain00861_n8_β
xchain00861_n13_α:
# IR_KEYWORD_pos_reg
bb00576_α:
 mov qword ptr [r12 + 160], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [r12 + 168], rax
 jmp xchain00861_n14_α
 xchain00861_n13_β:
 jmp xchain00861_n8_β
xchain00861_n14_α:
# IR_LIT_INTEGER
bb00875_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx00876_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain00861_n15_α
 xchain00861_n14_β:
 jmp xchain00861_n8_β
.Lx00876_0:
 .quad 1
xchain00861_n15_α:
bb00877_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 160]
 cmp eax, 100
 je .Lx00878_0
 mov eax, dword ptr [r12 + 192]
 cmp eax, 100
 je .Lx00878_0
 mov eax, dword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx00878_2
 mov eax, dword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx00878_2
.Lx00878_1:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 200]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain00861_n16_α
.Lx00878_0:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 lea r9, [r12 + 144]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00878_3
.Lx00878_2:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00861_n8_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
.Lx00878_3:
 jmp xchain00861_n16_α
 xchain00861_n15_β:
 jmp xchain00861_n8_β
xchain00861_n16_α:
# BOX ICN IR_KEYWORD_ASSIGN pos reg [oasgn.r kywdpos: cvpos(v,Delta) fail->omega; delta=pos-1; result {DT_I,pos}]
bb00579_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 mov rdx, r15
 call rt_cvpos_pos@PLT
 cmp rax, 0
 je xchain00861_n8_β
 mov r14, rax
 sub r14, 1
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain00861_n17_α
 xchain00861_n16_β:
 jmp xchain00861_n8_β
xchain00861_n17_α:
 jmp xchain00861_n8_β
xchain00861_n17_β:
 jmp xchain00861_n8_β
xchain00861_n18_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_pos11_ω
 xchain00861_n18_β:
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
xchain00879_n0_α:
# IR_VAR
bb00880_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00879_n1_α
 xchain00879_n0_β:
 jmp xchain00879_n3_α
xchain00879_n1_α:
# IR_UNOP
bb00583_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00879_n3_α
 cmp eax, 0
 jne xchain00879_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00879_n2_α
 xchain00879_n1_β:
 jmp xchain00879_n3_α
xchain00879_n2_α:
# IR_LIT_STRING
bb00584_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00881_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00879_n4_α
 xchain00879_n2_β:
 jmp proc_tabf_ω
.Lx00881_0:
 .quad .Lx00881_0_s
.Lx00881_0_s:
 .string "tab(3)"
xchain00879_n3_α:
# IR_LIT_STRING
bb00882_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00883_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00879_n5_α
 xchain00879_n3_β:
 jmp proc_tabf_ω
.Lx00883_0:
 .quad .Lx00883_0_s
.Lx00883_0_s:
 .string "abcde"
xchain00879_n4_α:
# IR_RETURN
bb00884_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabf_γ
xchain00879_n5_α:
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
 jmp xchain00879_n6_α
 xchain00879_n5_β:
 jmp proc_tabf_ω
xchain00879_n6_α:
# IR_LIT_INTEGER
bb00885_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00886_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00879_n7_α
 xchain00879_n6_β:
 jmp xchain00879_n11_α
.Lx00886_0:
 .quad 1
xchain00879_n7_α:
# IR_VAR
bb00587_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00879_n8_α
 xchain00879_n7_β:
 jmp xchain00879_n11_α
xchain00879_n8_α:
# IR_TO
bb00589_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00887_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00879_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00879_n9_α
 xchain00879_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00887_0
xchain00879_n9_α:
# IR_LIT_INTEGER
bb00591_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00888_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00879_n10_α
 xchain00879_n9_β:
 jmp xchain00879_n8_β
.Lx00888_0:
 .quad 3
xchain00879_n10_α:
# IR_SCAN_TAB
bb00592_α:
 mov rax, 3
 cmp rax, 1
 jge .Lx00889_0
 add rax, r15
 add rax, 1
.Lx00889_0:
 cmp rax, 1
 jl xchain00879_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00879_n8_β
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
 jmp xchain00879_n8_β
 xchain00879_n10_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00879_n8_β
xchain00879_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabf_ω
 xchain00879_n11_β:
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
xchain00890_n0_α:
# IR_VAR
bb00594_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00890_n1_α
 xchain00890_n0_β:
 jmp xchain00890_n3_α
xchain00890_n1_α:
# IR_UNOP
bb00891_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00890_n3_α
 cmp eax, 0
 jne xchain00890_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00890_n2_α
 xchain00890_n1_β:
 jmp xchain00890_n3_α
xchain00890_n2_α:
# IR_LIT_STRING
bb00892_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00893_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00890_n4_α
 xchain00890_n2_β:
 jmp proc_matchf_ω
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "match(\"abc\")"
xchain00890_n3_α:
# IR_LIT_STRING
bb00894_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00895_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00890_n5_α
 xchain00890_n3_β:
 jmp proc_matchf_ω
.Lx00895_0:
 .quad .Lx00895_0_s
.Lx00895_0_s:
 .string "abcde"
xchain00890_n4_α:
# IR_RETURN
bb00597_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_matchf_γ
xchain00890_n5_α:
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
 jmp xchain00890_n6_α
 xchain00890_n5_β:
 jmp proc_matchf_ω
xchain00890_n6_α:
# IR_LIT_INTEGER
bb00896_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00897_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00890_n7_α
 xchain00890_n6_β:
 jmp xchain00890_n11_α
.Lx00897_0:
 .quad 1
xchain00890_n7_α:
# IR_VAR
bb00898_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00890_n8_α
 xchain00890_n7_β:
 jmp xchain00890_n11_α
xchain00890_n8_α:
# IR_TO
bb00899_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00900_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00890_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00890_n9_α
 xchain00890_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00900_0
xchain00890_n9_α:
# IR_LIT_STRING
bb00901_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00902_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00890_n10_α
 xchain00890_n9_β:
 jmp xchain00890_n8_β
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "abc"
xchain00890_n10_α:
# IR_SCAN_MATCH
bb00601_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00890_n8_β
 mov rdi, qword ptr [rip + .Lx00903_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00890_n8_β
 mov qword ptr [r12 + 128], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 136], rax
 jmp xchain00890_n8_β
 xchain00890_n10_β:
 jmp xchain00890_n8_β
.Lx00903_0:
 .quad .Lx00903_0_s
.Lx00903_0_s:
 .string "abc"
xchain00890_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_matchf_ω
 xchain00890_n11_β:
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
xchain00904_n0_α:
# IR_VAR
bb00905_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain00904_n1_α
 xchain00904_n0_β:
 jmp xchain00904_n3_α
xchain00904_n1_α:
# IR_UNOP
bb00606_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00904_n3_α
 cmp eax, 0
 jne xchain00904_n3_α
 mov qword ptr [r12 + 240], 0
 mov qword ptr [r12 + 248], 0
 jmp xchain00904_n2_α
 xchain00904_n1_β:
 jmp xchain00904_n3_α
xchain00904_n2_α:
# IR_LIT_STRING
bb00608_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx00906_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain00904_n4_α
 xchain00904_n2_β:
 jmp proc_tabmat_ω
.Lx00906_0:
 .quad .Lx00906_0_s
.Lx00906_0_s:
 .string "s1 ? =s2"
xchain00904_n3_α:
# IR_LIT_STRING
bb00907_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00908_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00904_n5_α
 xchain00904_n3_β:
 jmp proc_tabmat_ω
.Lx00908_0:
 .quad .Lx00908_0_s
.Lx00908_0_s:
 .string "abcde"
xchain00904_n4_α:
# IR_RETURN
bb00609_α:
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tabmat_γ
xchain00904_n5_α:
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
 jmp xchain00904_n6_α
 xchain00904_n5_β:
 jmp proc_tabmat_ω
xchain00904_n6_α:
# IR_LIT_INTEGER
bb00610_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00909_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00904_n7_α
 xchain00904_n6_β:
 jmp xchain00904_n12_α
.Lx00909_0:
 .quad 1
xchain00904_n7_α:
# IR_VAR
bb00910_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00904_n8_α
 xchain00904_n7_β:
 jmp xchain00904_n12_α
xchain00904_n8_α:
# IR_TO
bb00911_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00912_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00904_n12_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00904_n9_α
 xchain00904_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00912_0
xchain00904_n9_α:
# IR_LIT_STRING
bb00913_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00914_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00904_n10_α
 xchain00904_n9_β:
 jmp xchain00904_n8_β
.Lx00914_0:
 .quad .Lx00914_0_s
.Lx00914_0_s:
 .string "abd"
xchain00904_n10_α:
# IR_SCAN_MATCH
bb00612_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xchain00904_n8_β
 mov rdi, qword ptr [rip + .Lx00915_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00904_n8_β
 mov qword ptr [r12 + 144], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 152], rax
 jmp xchain00904_n11_α
 xchain00904_n10_β:
 jmp xchain00904_n8_β
.Lx00915_0:
 .quad .Lx00915_0_s
.Lx00915_0_s:
 .string "abd"
xchain00904_n11_α:
# IR_SCAN_TAB
bb00614_α:
 mov rax, qword ptr [r12 + 152]
 cmp rax, 1
 jge .Lx00916_0
 add rax, r15
 add rax, 1
.Lx00916_0:
 cmp rax, 1
 jl xchain00904_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00904_n8_β
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
 jmp xchain00904_n8_β
 xchain00904_n11_β:
 mov r14, qword ptr [r12 + 144]
 jmp xchain00904_n8_β
xchain00904_n12_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_tabmat_ω
 xchain00904_n12_β:
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
xchain00917_n0_α:
# IR_VAR
bb00918_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00917_n1_α
 xchain00917_n0_β:
 jmp xchain00917_n3_α
xchain00917_n1_α:
# IR_UNOP
bb00919_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00917_n3_α
 cmp eax, 0
 jne xchain00917_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00917_n2_α
 xchain00917_n1_β:
 jmp xchain00917_n3_α
xchain00917_n2_α:
# IR_LIT_STRING
bb00920_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00921_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00917_n4_α
 xchain00917_n2_β:
 jmp proc_posf_ω
.Lx00921_0:
 .quad .Lx00921_0_s
.Lx00921_0_s:
 .string "pos(-1)"
xchain00917_n3_α:
# IR_LIT_STRING
bb00617_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00922_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00917_n5_α
 xchain00917_n3_β:
 jmp proc_posf_ω
.Lx00922_0:
 .quad .Lx00922_0_s
.Lx00922_0_s:
 .string "abcde"
xchain00917_n4_α:
# IR_RETURN
bb00619_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_posf_γ
xchain00917_n5_α:
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
 jmp xchain00917_n6_α
 xchain00917_n5_β:
 jmp proc_posf_ω
xchain00917_n6_α:
# IR_LIT_INTEGER
bb00923_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00924_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00917_n7_α
 xchain00917_n6_β:
 jmp xchain00917_n11_α
.Lx00924_0:
 .quad 1
xchain00917_n7_α:
# IR_VAR
bb00623_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00917_n8_α
 xchain00917_n7_β:
 jmp xchain00917_n11_α
xchain00917_n8_α:
# IR_TO
bb00925_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00926_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00917_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00917_n9_α
 xchain00917_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00926_0
xchain00917_n9_α:
# IR_LIT_INTEGER
bb00927_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx00928_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00917_n10_α
 xchain00917_n9_β:
 jmp xchain00917_n8_β
.Lx00928_0:
 .quad 18446744073709551615
xchain00917_n10_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain00917_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_posf_ω
 xchain00917_n11_β:
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
xchain00929_n0_α:
# IR_VAR
bb00627_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00929_n1_α
 xchain00929_n0_β:
 jmp xchain00929_n3_α
xchain00929_n1_α:
# IR_UNOP
bb00930_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00929_n3_α
 cmp eax, 0
 jne xchain00929_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00929_n2_α
 xchain00929_n1_β:
 jmp xchain00929_n3_α
xchain00929_n2_α:
# IR_LIT_STRING
bb00931_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00932_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00929_n4_α
 xchain00929_n2_β:
 jmp proc_anyf_ω
.Lx00932_0:
 .quad .Lx00932_0_s
.Lx00932_0_s:
 .string "any('aeiou')"
xchain00929_n3_α:
# IR_LIT_STRING
bb00933_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00934_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00929_n5_α
 xchain00929_n3_β:
 jmp proc_anyf_ω
.Lx00934_0:
 .quad .Lx00934_0_s
.Lx00934_0_s:
 .string "abcde"
xchain00929_n4_α:
# IR_RETURN
bb00935_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_anyf_γ
xchain00929_n5_α:
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
 jmp xchain00929_n6_α
 xchain00929_n5_β:
 jmp proc_anyf_ω
xchain00929_n6_α:
# IR_LIT_INTEGER
bb00631_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00936_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00929_n7_α
 xchain00929_n6_β:
 jmp xchain00929_n11_α
.Lx00936_0:
 .quad 1
xchain00929_n7_α:
# IR_VAR
bb00937_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00929_n8_α
 xchain00929_n7_β:
 jmp xchain00929_n11_α
xchain00929_n8_α:
# IR_TO
bb00938_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00939_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00929_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00929_n9_α
 xchain00929_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00939_0
xchain00929_n9_α:
# IR_LIT_CHARSET
bb00940_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00941_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00929_n10_α
 xchain00929_n9_β:
 jmp xchain00929_n8_β
.Lx00941_0:
 .quad .Lx00941_0_s
.Lx00941_0_s:
 .string "aeiou"
xchain00929_n10_α:
# IR_SCAN_ANY
bb00634_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00929_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00942_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00929_n8_β
 mov qword ptr [r12 + 128], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 136], rax
 jmp xchain00929_n8_β
 xchain00929_n10_β:
 jmp xchain00929_n8_β
.Lx00942_0:
 .quad .Lx00942_0_s
.Lx00942_0_s:
 .string "aeiou"
xchain00929_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_anyf_ω
 xchain00929_n11_β:
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
xchain00943_n0_α:
# IR_VAR
bb00944_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00943_n1_α
 xchain00943_n0_β:
 jmp xchain00943_n3_α
xchain00943_n1_α:
# IR_UNOP
bb00945_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00943_n3_α
 cmp eax, 0
 jne xchain00943_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00943_n2_α
 xchain00943_n1_β:
 jmp xchain00943_n3_α
xchain00943_n2_α:
# IR_LIT_STRING
bb00946_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00947_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00943_n4_α
 xchain00943_n2_β:
 jmp proc_manyf_ω
.Lx00947_0:
 .quad .Lx00947_0_s
.Lx00947_0_s:
 .string "many(&lcase)"
xchain00943_n3_α:
# IR_LIT_STRING
bb00948_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00949_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00943_n5_α
 xchain00943_n3_β:
 jmp proc_manyf_ω
.Lx00949_0:
 .quad .Lx00949_0_s
.Lx00949_0_s:
 .string "abcde"
xchain00943_n4_α:
# IR_RETURN
bb00639_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_manyf_γ
xchain00943_n5_α:
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
 jmp xchain00943_n6_α
 xchain00943_n5_β:
 jmp proc_manyf_ω
xchain00943_n6_α:
# IR_LIT_INTEGER
bb00642_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00950_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00943_n7_α
 xchain00943_n6_β:
 jmp xchain00943_n11_α
.Lx00950_0:
 .quad 1
xchain00943_n7_α:
# IR_VAR
bb00951_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00943_n8_α
 xchain00943_n7_β:
 jmp xchain00943_n11_α
xchain00943_n8_α:
# IR_TO
bb00952_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00953_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00943_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00943_n9_α
 xchain00943_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00953_0
xchain00943_n9_α:
# IR_LIT_CHARSET
bb00644_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00954_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00943_n10_α
 xchain00943_n9_β:
 jmp xchain00943_n8_β
.Lx00954_0:
 .quad .Lx00954_0_s
.Lx00954_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00943_n10_α:
# IR_SCAN_MANY
bb00955_α:
 mov eax, r14d
.Lx00956_0:
 cmp eax, r15d
 jge .Lx00956_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00956_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00956_1
 add eax, 1
 jmp .Lx00956_0
.Lx00956_1:
 cmp eax, r14d
 je xchain00943_n8_β
 mov qword ptr [r12 + 128], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [r12 + 136], rcx
 jmp xchain00943_n8_β
 xchain00943_n10_β:
 jmp xchain00943_n8_β
.Lx00956_2:
 .quad .Lx00956_2_s
.Lx00956_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00943_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_manyf_ω
 xchain00943_n11_β:
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
xchain00957_n0_α:
# IR_VAR
bb00958_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00957_n1_α
 xchain00957_n0_β:
 jmp xchain00957_n3_α
xchain00957_n1_α:
# IR_UNOP
bb00647_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00957_n3_α
 cmp eax, 0
 jne xchain00957_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00957_n2_α
 xchain00957_n1_β:
 jmp xchain00957_n3_α
xchain00957_n2_α:
# IR_LIT_STRING
bb00648_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00959_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00957_n4_α
 xchain00957_n2_β:
 jmp proc_uptof_ω
.Lx00959_0:
 .quad .Lx00959_0_s
.Lx00959_0_s:
 .string "upto('d')"
xchain00957_n3_α:
# IR_LIT_STRING
bb00960_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00961_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00957_n5_α
 xchain00957_n3_β:
 jmp proc_uptof_ω
.Lx00961_0:
 .quad .Lx00961_0_s
.Lx00961_0_s:
 .string "abcde"
xchain00957_n4_α:
# IR_RETURN
bb00962_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_uptof_γ
xchain00957_n5_α:
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
 jmp xchain00957_n6_α
 xchain00957_n5_β:
 jmp proc_uptof_ω
xchain00957_n6_α:
# IR_LIT_INTEGER
bb00963_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00964_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00957_n7_α
 xchain00957_n6_β:
 jmp xchain00957_n11_α
.Lx00964_0:
 .quad 1
xchain00957_n7_α:
# IR_VAR
bb00651_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00957_n8_α
 xchain00957_n7_β:
 jmp xchain00957_n11_α
xchain00957_n8_α:
# IR_TO
bb00653_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00965_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00957_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00957_n9_α
 xchain00957_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00965_0
xchain00957_n9_α:
# IR_LIT_CHARSET
bb00966_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00967_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00957_n10_α
 xchain00957_n9_β:
 jmp xchain00957_n8_β
.Lx00967_0:
 .quad .Lx00967_0_s
.Lx00967_0_s:
 .string "d"
xchain00957_n10_α:
# IR_SCAN_UPTO
bb00968_α:
 mov qword ptr [r12 + 144], r14
.Lx00969_0:
 mov rax, qword ptr [r12 + 144]
 cmp rax, r15
 jge xchain00957_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00969_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00969_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain00957_n8_β
.Lx00969_1:
 inc qword ptr [r12 + 144]
 jmp .Lx00969_0
 xchain00957_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx00969_0
.Lx00969_2:
 .quad .Lx00969_2_s
.Lx00969_2_s:
 .string "d"
xchain00957_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_uptof_ω
 xchain00957_n11_β:
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
xchain00970_n0_α:
# IR_VAR
bb00971_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00970_n1_α
 xchain00970_n0_β:
 jmp xchain00970_n3_α
xchain00970_n1_α:
# IR_UNOP
bb00972_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00970_n3_α
 cmp eax, 0
 jne xchain00970_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00970_n2_α
 xchain00970_n1_β:
 jmp xchain00970_n3_α
xchain00970_n2_α:
# IR_LIT_STRING
bb00973_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00974_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00970_n4_α
 xchain00970_n2_β:
 jmp proc_findf_ω
.Lx00974_0:
 .quad .Lx00974_0_s
.Lx00974_0_s:
 .string "find(\"de\")"
xchain00970_n3_α:
# IR_LIT_STRING
bb00657_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00975_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00970_n5_α
 xchain00970_n3_β:
 jmp proc_findf_ω
.Lx00975_0:
 .quad .Lx00975_0_s
.Lx00975_0_s:
 .string "abcde"
xchain00970_n4_α:
# IR_RETURN
bb00659_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_findf_γ
xchain00970_n5_α:
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
 jmp xchain00970_n6_α
 xchain00970_n5_β:
 jmp proc_findf_ω
xchain00970_n6_α:
# IR_LIT_INTEGER
bb00976_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00977_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00970_n7_α
 xchain00970_n6_β:
 jmp xchain00970_n11_α
.Lx00977_0:
 .quad 1
xchain00970_n7_α:
# IR_VAR
bb00978_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00970_n8_α
 xchain00970_n7_β:
 jmp xchain00970_n11_α
xchain00970_n8_α:
# IR_TO
bb00979_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00980_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00970_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00970_n9_α
 xchain00970_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00980_0
xchain00970_n9_α:
# IR_LIT_STRING
bb00662_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00981_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00970_n10_α
 xchain00970_n9_β:
 jmp xchain00970_n8_β
.Lx00981_0:
 .quad .Lx00981_0_s
.Lx00981_0_s:
 .string "de"
xchain00970_n10_α:
# IR_SCAN_FIND
bb00663_α:
 mov qword ptr [r12 + 144], r14
.Lx00982_0:
 mov rax, qword ptr [r12 + 144]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00970_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00982_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00982_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain00970_n8_β
.Lx00982_1:
 inc qword ptr [r12 + 144]
 jmp .Lx00982_0
 xchain00970_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx00982_0
xchain00970_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_findf_ω
 xchain00970_n11_β:
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
xchain00983_n0_α:
# IR_VAR
bb00984_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain00983_n1_α
 xchain00983_n0_β:
 jmp xchain00983_n3_α
xchain00983_n1_α:
# IR_UNOP
bb00985_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00983_n3_α
 cmp eax, 0
 jne xchain00983_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain00983_n2_α
 xchain00983_n1_β:
 jmp xchain00983_n3_α
xchain00983_n2_α:
# IR_LIT_STRING
bb00666_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00986_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00983_n4_α
 xchain00983_n2_β:
 jmp proc_balf_ω
.Lx00986_0:
 .quad .Lx00986_0_s
.Lx00986_0_s:
 .string "bal('+')"
xchain00983_n3_α:
# IR_LIT_STRING
bb00987_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00988_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00983_n5_α
 xchain00983_n3_β:
 jmp proc_balf_ω
.Lx00988_0:
 .quad .Lx00988_0_s
.Lx00988_0_s:
 .string "(a*b)+(c/d)"
xchain00983_n4_α:
# IR_RETURN
bb00989_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_balf_γ
xchain00983_n5_α:
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
 jmp xchain00983_n6_α
 xchain00983_n5_β:
 jmp proc_balf_ω
xchain00983_n6_α:
# IR_LIT_INTEGER
bb00670_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx00990_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain00983_n7_α
 xchain00983_n6_β:
 jmp xchain00983_n11_α
.Lx00990_0:
 .quad 1
xchain00983_n7_α:
# IR_VAR
bb00671_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00983_n8_α
 xchain00983_n7_β:
 jmp xchain00983_n11_α
xchain00983_n8_α:
# IR_TO
bb00991_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 80], rax
.Lx00992_0:
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xchain00983_n11_α
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain00983_n9_α
 xchain00983_n8_β:
 inc qword ptr [r12 + 80]
 jmp .Lx00992_0
xchain00983_n9_α:
# IR_LIT_CHARSET
bb00993_α:
 mov qword ptr [r12 + 144], 1
 mov dword ptr [r12 + 148], -1
 mov rax, qword ptr [rip + .Lx00994_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00983_n10_α
 xchain00983_n9_β:
 jmp xchain00983_n8_β
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "+"
xchain00983_n10_α:
# IR_SCAN_UPTO
bb00995_α:
 mov qword ptr [r12 + 144], r14
.Lx00996_0:
 mov rax, qword ptr [r12 + 144]
 cmp rax, r15
 jge xchain00983_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00996_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00996_1
 mov qword ptr [r12 + 128], 6
 add rax, 1
 mov qword ptr [r12 + 136], rax
 jmp xchain00983_n8_β
.Lx00996_1:
 inc qword ptr [r12 + 144]
 jmp .Lx00996_0
 xchain00983_n10_β:
 inc qword ptr [r12 + 144]
 jmp .Lx00996_0
.Lx00996_2:
 .quad .Lx00996_2_s
.Lx00996_2_s:
 .string "+"
xchain00983_n11_α:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp proc_balf_ω
 xchain00983_n11_β:
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
xchain00997_n0_α:
# IR_VAR
bb00674_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00997_n1_α
 xchain00997_n0_β:
 jmp xchain00997_n3_α
xchain00997_n1_α:
# IR_UNOP
bb00676_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain00997_n3_α
 cmp eax, 0
 jne xchain00997_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain00997_n2_α
 xchain00997_n1_β:
 jmp xchain00997_n3_α
xchain00997_n2_α:
# IR_LIT_STRING
bb00678_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx00998_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain00997_n4_α
 xchain00997_n2_β:
 jmp proc_cssize_ω
.Lx00998_0:
 .quad .Lx00998_0_s
.Lx00998_0_s:
 .string "*&digits"
xchain00997_n3_α:
# IR_LIT_INTEGER
bb00999_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01000_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00997_n5_α
 xchain00997_n3_β:
 jmp proc_cssize_ω
.Lx01000_0:
 .quad 1
xchain00997_n4_α:
# IR_RETURN
bb01001_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cssize_γ
xchain00997_n5_α:
# IR_VAR
bb00679_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain00997_n6_α
 xchain00997_n5_β:
 jmp proc_cssize_ω
xchain00997_n6_α:
# IR_TO
bb01002_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01003_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00997_n7_α
 xchain00997_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01003_0
xchain00997_n7_α:
# IR_LIT_CHARSET
bb01004_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx01005_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain00997_n8_α
 xchain00997_n7_β:
 jmp xchain00997_n6_β
.Lx01005_0:
 .quad .Lx01005_0_s
.Lx01005_0_s:
 .string "0123456789"
xchain00997_n8_α:
# IR_UNOP
bb01006_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00997_n6_β
 xchain00997_n8_β:
 jmp xchain00997_n6_β
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
xchain01007_n0_α:
# IR_VAR
bb00681_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01007_n1_α
 xchain01007_n0_β:
 jmp xchain01007_n3_α
xchain01007_n1_α:
# IR_UNOP
bb00683_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01007_n3_α
 cmp eax, 0
 jne xchain01007_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01007_n2_α
 xchain01007_n1_β:
 jmp xchain01007_n3_α
xchain01007_n2_α:
# IR_LIT_STRING
bb01008_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01009_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01007_n4_α
 xchain01007_n2_β:
 jmp proc_cscompl_ω
.Lx01009_0:
 .quad .Lx01009_0_s
.Lx01009_0_s:
 .string "~&digits"
xchain01007_n3_α:
# IR_LIT_INTEGER
bb01010_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01011_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01007_n5_α
 xchain01007_n3_β:
 jmp proc_cscompl_ω
.Lx01011_0:
 .quad 1
xchain01007_n4_α:
# IR_RETURN
bb01012_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cscompl_γ
xchain01007_n5_α:
# IR_VAR
bb01013_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01007_n6_α
 xchain01007_n5_β:
 jmp proc_cscompl_ω
xchain01007_n6_α:
# IR_TO
bb00686_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01014_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01007_n7_α
 xchain01007_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01014_0
xchain01007_n7_α:
# IR_LIT_CHARSET
bb00687_α:
 mov qword ptr [r12 + 112], 1
 mov dword ptr [r12 + 116], -1
 mov rax, qword ptr [rip + .Lx01015_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01007_n8_α
 xchain01007_n7_β:
 jmp xchain01007_n6_β
.Lx01015_0:
 .quad .Lx01015_0_s
.Lx01015_0_s:
 .string "0123456789"
xchain01007_n8_α:
# IR_UNOP
bb00689_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_cset_compl@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01007_n6_β
 xchain01007_n8_β:
 jmp xchain01007_n6_β
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
xchain01016_n0_α:
# IR_VAR
bb01017_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
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
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01016_n2_α
 xchain01016_n1_β:
 jmp xchain01016_n3_α
xchain01016_n2_α:
# IR_LIT_STRING
bb00691_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01019_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01016_n4_α
 xchain01016_n2_β:
 jmp proc_lcreate_ω
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "list(5,0)"
xchain01016_n3_α:
# IR_LIT_INTEGER
bb01020_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01021_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01016_n5_α
 xchain01016_n3_β:
 jmp proc_lcreate_ω
.Lx01021_0:
 .quad 1
xchain01016_n4_α:
# IR_RETURN
bb01022_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcreate_γ
xchain01016_n5_α:
# IR_VAR
bb01023_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01016_n6_α
 xchain01016_n5_β:
 jmp proc_lcreate_ω
xchain01016_n6_α:
# IR_TO
bb00694_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01024_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01016_n7_α
 xchain01016_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01024_0
xchain01016_n7_α:
# IR_LIT_INTEGER
bb00695_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx01025_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01016_n8_α
 xchain01016_n7_β:
 jmp xchain01016_n6_β
.Lx01025_0:
 .quad 5
xchain01016_n8_α:
# IR_LIT_INTEGER
bb01026_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01027_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01016_n9_α
 xchain01016_n8_β:
 jmp xchain01016_n6_β
.Lx01027_0:
 .quad 0
xchain01016_n9_α:
bb01028_α:
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
  .Lrkfn1447: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1447]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01016_n6_β
 jmp xchain01016_n6_β
 xchain01016_n9_β:
 jmp xchain01016_n6_β
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
xchain01029_n0_α:
# IR_VAR
bb01030_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain01029_n1_α
 xchain01029_n0_β:
 jmp xchain01029_n3_α
xchain01029_n1_α:
# IR_UNOP
bb01031_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01029_n3_α
 cmp eax, 0
 jne xchain01029_n3_α
 mov qword ptr [r12 + 336], 0
 mov qword ptr [r12 + 344], 0
 jmp xchain01029_n2_α
 xchain01029_n1_β:
 jmp xchain01029_n3_α
xchain01029_n2_α:
# IR_LIT_STRING
bb00698_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx01032_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01029_n4_α
 xchain01029_n2_β:
 jmp proc_lconst_ω
.Lx01032_0:
 .quad .Lx01032_0_s
.Lx01032_0_s:
 .string "[1,2,3,4,5]"
xchain01029_n3_α:
# IR_LIT_INTEGER
bb00700_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01033_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01029_n5_α
 xchain01029_n3_β:
 jmp proc_lconst_ω
.Lx01033_0:
 .quad 1
xchain01029_n4_α:
# IR_RETURN
bb01034_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lconst_γ
xchain01029_n5_α:
# IR_VAR
bb01035_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01029_n6_α
 xchain01029_n5_β:
 jmp proc_lconst_ω
xchain01029_n6_α:
# IR_TO
bb00702_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01036_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01029_n7_α
 xchain01029_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01036_0
xchain01029_n7_α:
# IR_LIT_INTEGER
bb01037_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx01038_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01029_n8_α
 xchain01029_n7_β:
 jmp xchain01029_n6_β
.Lx01038_0:
 .quad 1
xchain01029_n8_α:
# IR_LIT_INTEGER
bb01039_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx01040_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain01029_n9_α
 xchain01029_n8_β:
 jmp xchain01029_n6_β
.Lx01040_0:
 .quad 2
xchain01029_n9_α:
# IR_LIT_INTEGER
bb01041_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx01042_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01029_n10_α
 xchain01029_n9_β:
 jmp xchain01029_n6_β
.Lx01042_0:
 .quad 3
xchain01029_n10_α:
# IR_LIT_INTEGER
bb00704_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx01043_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain01029_n11_α
 xchain01029_n10_β:
 jmp xchain01029_n6_β
.Lx01043_0:
 .quad 4
xchain01029_n11_α:
# IR_LIT_INTEGER
bb00706_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx01044_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01029_n12_α
 xchain01029_n11_β:
 jmp xchain01029_n6_β
.Lx01044_0:
 .quad 5
xchain01029_n12_α:
# IR_MAKE_LIST
bb01045_α:
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
 jmp xchain01029_n13_α
 xchain01029_n12_β:
 jmp xchain01029_n6_β
xchain01029_n13_α:
bb01046_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01029_n6_β
 xchain01029_n13_β:
 jmp xchain01029_n6_β
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
xchain01047_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01047_n8_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01047_n1_α
 xchain01047_n0_β:
 jmp xchain01047_n8_α
xchain01047_n1_α:
# IR_LIT_INTEGER
bb01048_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01049_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01047_n2_α
 xchain01047_n1_β:
 jmp xchain01047_n8_α
.Lx01049_0:
 .quad 1
xchain01047_n2_α:
# IR_LIT_INTEGER
bb00709_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01050_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01047_n3_α
 xchain01047_n2_β:
 jmp xchain01047_n8_α
.Lx01050_0:
 .quad 2
xchain01047_n3_α:
# IR_LIT_INTEGER
bb00710_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01051_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01047_n4_α
 xchain01047_n3_β:
 jmp xchain01047_n8_α
.Lx01051_0:
 .quad 3
xchain01047_n4_α:
# IR_LIT_INTEGER
bb01052_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01053_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01047_n5_α
 xchain01047_n4_β:
 jmp xchain01047_n8_α
.Lx01053_0:
 .quad 4
xchain01047_n5_α:
# IR_LIT_INTEGER
bb01054_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01055_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01047_n6_α
 xchain01047_n5_β:
 jmp xchain01047_n8_α
.Lx01055_0:
 .quad 5
xchain01047_n6_α:
# IR_MAKE_LIST
bb00712_α:
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
 jmp xchain01047_n7_α
 xchain01047_n6_β:
 jmp xchain01047_n8_α
xchain01047_n7_α:
bb01056_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01047_n8_α
 xchain01047_n7_β:
 jmp xchain01047_n8_α
xchain01047_n8_α:
# IR_VAR
bb01057_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01047_n9_α
 xchain01047_n8_β:
 jmp xchain01047_n11_α
xchain01047_n9_α:
# IR_UNOP
bb01058_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01047_n11_α
 cmp eax, 0
 jne xchain01047_n11_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01047_n10_α
 xchain01047_n9_β:
 jmp xchain01047_n11_α
xchain01047_n10_α:
# IR_LIT_STRING
bb00715_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01059_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01047_n12_α
 xchain01047_n10_β:
 jmp proc_lcopy_ω
.Lx01059_0:
 .quad .Lx01059_0_s
.Lx01059_0_s:
 .string "copy(L)"
xchain01047_n11_α:
# IR_LIT_INTEGER
bb00717_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01060_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01047_n13_α
 xchain01047_n11_β:
 jmp proc_lcopy_ω
.Lx01060_0:
 .quad 1
xchain01047_n12_α:
# IR_RETURN
bb01061_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lcopy_γ
xchain01047_n13_α:
# IR_VAR
bb01062_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01047_n14_α
 xchain01047_n13_β:
 jmp proc_lcopy_ω
xchain01047_n14_α:
# IR_TO
bb01063_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01064_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01047_n15_α
 xchain01047_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01064_0
xchain01047_n15_α:
# IR_VAR
bb01065_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 136], rax
 jmp xchain01047_n16_α
 xchain01047_n15_β:
 jmp xchain01047_n14_β
xchain01047_n16_α:
bb00719_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1491: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1491]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01047_n14_β
 jmp xchain01047_n14_β
 xchain01047_n16_β:
 jmp xchain01047_n14_β
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
xchain01066_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01066_n8_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01066_n1_α
 xchain01066_n0_β:
 jmp xchain01066_n8_α
xchain01066_n1_α:
# IR_LIT_INTEGER
bb01067_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01068_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01066_n2_α
 xchain01066_n1_β:
 jmp xchain01066_n8_α
.Lx01068_0:
 .quad 2
xchain01066_n2_α:
# IR_LIT_INTEGER
bb01069_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01070_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01066_n3_α
 xchain01066_n2_β:
 jmp xchain01066_n8_α
.Lx01070_0:
 .quad 7
xchain01066_n3_α:
# IR_LIT_INTEGER
bb00723_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01071_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01066_n4_α
 xchain01066_n3_β:
 jmp xchain01066_n8_α
.Lx01071_0:
 .quad 1
xchain01066_n4_α:
# IR_LIT_INTEGER
bb01072_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01073_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01066_n5_α
 xchain01066_n4_β:
 jmp xchain01066_n8_α
.Lx01073_0:
 .quad 8
xchain01066_n5_α:
# IR_LIT_INTEGER
bb01074_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01075_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01066_n6_α
 xchain01066_n5_β:
 jmp xchain01066_n8_α
.Lx01075_0:
 .quad 3
xchain01066_n6_α:
# IR_MAKE_LIST
bb01076_α:
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
 jmp xchain01066_n7_α
 xchain01066_n6_β:
 jmp xchain01066_n8_α
xchain01066_n7_α:
bb00726_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01066_n8_α
 xchain01066_n7_β:
 jmp xchain01066_n8_α
xchain01066_n8_α:
# IR_VAR
bb00727_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01066_n9_α
 xchain01066_n8_β:
 jmp xchain01066_n11_α
xchain01066_n9_α:
# IR_UNOP
bb01077_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01066_n11_α
 cmp eax, 0
 jne xchain01066_n11_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01066_n10_α
 xchain01066_n9_β:
 jmp xchain01066_n11_α
xchain01066_n10_α:
# IR_LIT_STRING
bb01078_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01079_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01066_n12_α
 xchain01066_n10_β:
 jmp proc_lsort_ω
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "sort(L)"
xchain01066_n11_α:
# IR_LIT_INTEGER
bb01080_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01081_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01066_n13_α
 xchain01066_n11_β:
 jmp proc_lsort_ω
.Lx01081_0:
 .quad 1
xchain01066_n12_α:
# IR_RETURN
bb01082_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsort_γ
xchain01066_n13_α:
# IR_VAR
bb00730_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01066_n14_α
 xchain01066_n13_β:
 jmp proc_lsort_ω
xchain01066_n14_α:
# IR_TO
bb00732_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01083_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01066_n15_α
 xchain01066_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01083_0
xchain01066_n15_α:
# IR_VAR
bb00734_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 136], rax
 jmp xchain01066_n16_α
 xchain01066_n15_β:
 jmp xchain01066_n14_β
xchain01066_n16_α:
bb00736_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1516: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1516]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01066_n14_β
 jmp xchain01066_n14_β
 xchain01066_n16_β:
 jmp xchain01066_n14_β
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
xchain01084_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 216]
 cmp rax, 0
 jne xchain01084_n8_α
 mov qword ptr [r12 + 216], 1
 jmp xchain01084_n1_α
 xchain01084_n0_β:
 jmp xchain01084_n8_α
xchain01084_n1_α:
# IR_LIT_INTEGER
bb01085_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01086_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01084_n2_α
 xchain01084_n1_β:
 jmp xchain01084_n8_α
.Lx01086_0:
 .quad 1
xchain01084_n2_α:
# IR_LIT_INTEGER
bb00737_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01087_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01084_n3_α
 xchain01084_n2_β:
 jmp xchain01084_n8_α
.Lx01087_0:
 .quad 2
xchain01084_n3_α:
# IR_LIT_INTEGER
bb01088_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01089_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01084_n4_α
 xchain01084_n3_β:
 jmp xchain01084_n8_α
.Lx01089_0:
 .quad 3
xchain01084_n4_α:
# IR_LIT_INTEGER
bb01090_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01091_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01084_n5_α
 xchain01084_n4_β:
 jmp xchain01084_n8_α
.Lx01091_0:
 .quad 4
xchain01084_n5_α:
# IR_LIT_INTEGER
bb01092_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01093_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01084_n6_α
 xchain01084_n5_β:
 jmp xchain01084_n8_α
.Lx01093_0:
 .quad 5
xchain01084_n6_α:
# IR_MAKE_LIST
bb00740_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
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
 lea rdi, [r12 + 256]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01084_n7_α
 xchain01084_n6_β:
 jmp xchain01084_n8_α
xchain01084_n7_α:
bb00742_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01084_n8_α
 xchain01084_n7_β:
 jmp xchain01084_n8_α
xchain01084_n8_α:
# IR_VAR
bb01094_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01084_n9_α
 xchain01084_n8_β:
 jmp xchain01084_n11_α
xchain01084_n9_α:
# IR_UNOP
bb01095_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01084_n11_α
 cmp eax, 0
 jne xchain01084_n11_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01084_n10_α
 xchain01084_n9_β:
 jmp xchain01084_n11_α
xchain01084_n10_α:
# IR_LIT_STRING
bb01096_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01097_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01084_n12_α
 xchain01084_n10_β:
 jmp proc_lsize_ω
.Lx01097_0:
 .quad .Lx01097_0_s
.Lx01097_0_s:
 .string "*L"
xchain01084_n11_α:
# IR_LIT_INTEGER
bb01098_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01099_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01084_n13_α
 xchain01084_n11_β:
 jmp proc_lsize_ω
.Lx01099_0:
 .quad 1
xchain01084_n12_α:
# IR_RETURN
bb00744_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsize_γ
xchain01084_n13_α:
# IR_VAR
bb00746_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01084_n14_α
 xchain01084_n13_β:
 jmp proc_lsize_ω
xchain01084_n14_α:
# IR_TO
bb00748_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01100_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01084_n15_α
 xchain01084_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01100_0
xchain01084_n15_α:
# IR_VAR
bb00749_α:
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 120], rax
 jmp xchain01084_n16_α
 xchain01084_n15_β:
 jmp xchain01084_n14_β
xchain01084_n16_α:
# IR_UNOP
bb01101_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 call rt_size_d@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01084_n14_β
 xchain01084_n16_β:
 jmp xchain01084_n14_β
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
xchain01102_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01102_n8_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01102_n1_α
 xchain01102_n0_β:
 jmp xchain01102_n8_α
xchain01102_n1_α:
# IR_LIT_INTEGER
bb00751_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01103_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01102_n2_α
 xchain01102_n1_β:
 jmp xchain01102_n8_α
.Lx01103_0:
 .quad 1
xchain01102_n2_α:
# IR_LIT_INTEGER
bb01104_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01105_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01102_n3_α
 xchain01102_n2_β:
 jmp xchain01102_n8_α
.Lx01105_0:
 .quad 2
xchain01102_n3_α:
# IR_LIT_INTEGER
bb01106_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01107_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01102_n4_α
 xchain01102_n3_β:
 jmp xchain01102_n8_α
.Lx01107_0:
 .quad 3
xchain01102_n4_α:
# IR_LIT_INTEGER
bb01108_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01109_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01102_n5_α
 xchain01102_n4_β:
 jmp xchain01102_n8_α
.Lx01109_0:
 .quad 4
xchain01102_n5_α:
# IR_LIT_INTEGER
bb00754_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01110_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01102_n6_α
 xchain01102_n5_β:
 jmp xchain01102_n8_α
.Lx01110_0:
 .quad 5
xchain01102_n6_α:
# IR_MAKE_LIST
bb00755_α:
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
 jmp xchain01102_n7_α
 xchain01102_n6_β:
 jmp xchain01102_n8_α
xchain01102_n7_α:
bb01111_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01102_n8_α
 xchain01102_n7_β:
 jmp xchain01102_n8_α
xchain01102_n8_α:
# IR_VAR
bb01112_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01102_n9_α
 xchain01102_n8_β:
 jmp xchain01102_n11_α
xchain01102_n9_α:
# IR_UNOP
bb01113_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01102_n11_α
 cmp eax, 0
 jne xchain01102_n11_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01102_n10_α
 xchain01102_n9_β:
 jmp xchain01102_n11_α
xchain01102_n10_α:
# IR_LIT_STRING
bb01114_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01115_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01102_n12_α
 xchain01102_n10_β:
 jmp proc_lpick_ω
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "?L"
xchain01102_n11_α:
# IR_LIT_INTEGER
bb00759_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01116_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01102_n13_α
 xchain01102_n11_β:
 jmp proc_lpick_ω
.Lx01116_0:
 .quad 1
xchain01102_n12_α:
# IR_RETURN
bb00761_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lpick_γ
xchain01102_n13_α:
# IR_VAR
bb00762_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01102_n14_α
 xchain01102_n13_β:
 jmp proc_lpick_ω
xchain01102_n14_α:
# IR_TO
bb00763_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01117_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01102_n15_α
 xchain01102_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01117_0
xchain01102_n15_α:
# IR_VAR_REF local
bb01118_α:
 lea rdi, [r12 + 432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01102_n16_α
 xchain01102_n15_β:
 jmp xchain01102_n14_β
xchain01102_n16_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb01119_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain01102_n14_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01102_n17_α
 xchain01102_n16_β:
 jmp xchain01102_n14_β
xchain01102_n17_α:
# IR_DEREF variable -> value
bb00766_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01102_n14_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01102_n14_β
 xchain01102_n17_β:
 jmp xchain01102_n14_β
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
xchain01120_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 248]
 cmp rax, 0
 jne xchain01120_n8_α
 mov qword ptr [r12 + 248], 1
 jmp xchain01120_n1_α
 xchain01120_n0_β:
 jmp xchain01120_n8_α
xchain01120_n1_α:
# IR_LIT_INTEGER
bb00769_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01121_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01120_n2_α
 xchain01120_n1_β:
 jmp xchain01120_n8_α
.Lx01121_0:
 .quad 1
xchain01120_n2_α:
# IR_LIT_INTEGER
bb01122_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01123_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01120_n3_α
 xchain01120_n2_β:
 jmp xchain01120_n8_α
.Lx01123_0:
 .quad 2
xchain01120_n3_α:
# IR_LIT_INTEGER
bb01124_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01125_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01120_n4_α
 xchain01120_n3_β:
 jmp xchain01120_n8_α
.Lx01125_0:
 .quad 3
xchain01120_n4_α:
# IR_LIT_INTEGER
bb01126_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01127_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01120_n5_α
 xchain01120_n4_β:
 jmp xchain01120_n8_α
.Lx01127_0:
 .quad 4
xchain01120_n5_α:
# IR_LIT_INTEGER
bb00771_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01128_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01120_n6_α
 xchain01120_n5_β:
 jmp xchain01120_n8_α
.Lx01128_0:
 .quad 5
xchain01120_n6_α:
# IR_MAKE_LIST
bb01129_α:
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
 jmp xchain01120_n7_α
 xchain01120_n6_β:
 jmp xchain01120_n8_α
xchain01120_n7_α:
bb01130_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01120_n8_α
 xchain01120_n7_β:
 jmp xchain01120_n8_α
xchain01120_n8_α:
# IR_VAR
bb01131_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain01120_n9_α
 xchain01120_n8_β:
 jmp xchain01120_n11_α
xchain01120_n9_α:
# IR_UNOP
bb01132_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01120_n11_α
 cmp eax, 0
 jne xchain01120_n11_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain01120_n10_α
 xchain01120_n9_β:
 jmp xchain01120_n11_α
xchain01120_n10_α:
# IR_LIT_STRING
bb01133_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01134_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01120_n12_α
 xchain01120_n10_β:
 jmp proc_lsubscr_ω
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "L[3]"
xchain01120_n11_α:
# IR_LIT_INTEGER
bb01135_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01136_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01120_n13_α
 xchain01120_n11_β:
 jmp proc_lsubscr_ω
.Lx01136_0:
 .quad 1
xchain01120_n12_α:
# IR_RETURN
bb01137_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lsubscr_γ
xchain01120_n13_α:
# IR_VAR
bb00775_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01120_n14_α
 xchain01120_n13_β:
 jmp proc_lsubscr_ω
xchain01120_n14_α:
# IR_TO
bb01138_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01139_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01120_n15_α
 xchain01120_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01139_0
xchain01120_n15_α:
# IR_VAR_REF local
bb00777_α:
 lea rdi, [r12 + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01120_n16_α
 xchain01120_n15_β:
 jmp xchain01120_n14_β
xchain01120_n16_α:
# IR_LIT_INTEGER
bb01140_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01141_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01120_n17_α
 xchain01120_n16_β:
 jmp xchain01120_n14_β
.Lx01141_0:
 .quad 3
xchain01120_n17_α:
# IR_SUBSCRIPT x[i] variable
bb01142_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01120_n14_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01120_n18_α
 xchain01120_n17_β:
 jmp xchain01120_n14_β
xchain01120_n18_α:
# IR_DEREF variable -> value
bb01143_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01120_n14_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01120_n14_β
 xchain01120_n18_β:
 jmp xchain01120_n14_β
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
xchain01144_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01144_n8_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01144_n1_α
 xchain01144_n0_β:
 jmp xchain01144_n8_α
xchain01144_n1_α:
# IR_LIT_INTEGER
bb01145_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01146_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01144_n2_α
 xchain01144_n1_β:
 jmp xchain01144_n8_α
.Lx01146_0:
 .quad 1
xchain01144_n2_α:
# IR_LIT_INTEGER
bb00782_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01147_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01144_n3_α
 xchain01144_n2_β:
 jmp xchain01144_n8_α
.Lx01147_0:
 .quad 2
xchain01144_n3_α:
# IR_LIT_INTEGER
bb01148_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx01149_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain01144_n4_α
 xchain01144_n3_β:
 jmp xchain01144_n8_α
.Lx01149_0:
 .quad 3
xchain01144_n4_α:
# IR_LIT_INTEGER
bb01150_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01151_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01144_n5_α
 xchain01144_n4_β:
 jmp xchain01144_n8_α
.Lx01151_0:
 .quad 4
xchain01144_n5_α:
# IR_LIT_INTEGER
bb01152_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01153_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01144_n6_α
 xchain01144_n5_β:
 jmp xchain01144_n8_α
.Lx01153_0:
 .quad 5
xchain01144_n6_α:
# IR_MAKE_LIST
bb01154_α:
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
 jmp xchain01144_n7_α
 xchain01144_n6_β:
 jmp xchain01144_n8_α
xchain01144_n7_α:
bb01155_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01144_n8_α
 xchain01144_n7_β:
 jmp xchain01144_n8_α
xchain01144_n8_α:
# IR_VAR
bb00786_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01144_n9_α
 xchain01144_n8_β:
 jmp xchain01144_n11_α
xchain01144_n9_α:
# IR_UNOP
bb00788_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01144_n11_α
 cmp eax, 0
 jne xchain01144_n11_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01144_n10_α
 xchain01144_n9_β:
 jmp xchain01144_n11_α
xchain01144_n10_α:
# IR_LIT_STRING
bb01156_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01157_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01144_n12_α
 xchain01144_n10_β:
 jmp proc_lbang_ω
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "!L"
xchain01144_n11_α:
# IR_LIT_INTEGER
bb01158_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01159_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01144_n13_α
 xchain01144_n11_β:
 jmp proc_lbang_ω
.Lx01159_0:
 .quad 1
xchain01144_n12_α:
# IR_RETURN
bb01160_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_lbang_γ
xchain01144_n13_α:
# IR_VAR
bb01161_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01144_n14_α
 xchain01144_n13_β:
 jmp proc_lbang_ω
xchain01144_n14_α:
# IR_TO
bb00791_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01162_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01144_n15_α
 xchain01144_n14_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01162_0
xchain01144_n15_α:
# IR_VAR
bb01163_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 136], rax
 jmp xchain01144_n16_α
 xchain01144_n15_β:
 jmp xchain01144_n14_β
xchain01144_n16_α:
# IR_LIST_BANG
bb01164_α:
 mov qword ptr [r12 + 112], 0
.Lx01165_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain01144_n14_β
 jmp xchain01144_n16_β
 xchain01144_n16_β:
 inc qword ptr [r12 + 112]
 jmp .Lx01165_0
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
xchain01166_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 296]
 cmp rax, 0
 jne xchain01166_n3_α
 mov qword ptr [r12 + 296], 1
 jmp xchain01166_n1_α
 xchain01166_n0_β:
 jmp xchain01166_n3_α
xchain01166_n1_α:
# IR_MAKE_LIST
bb01167_α:
 lea rdi, [r12 + 336]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01166_n2_α
 xchain01166_n1_β:
 jmp xchain01166_n3_α
xchain01166_n2_α:
bb01168_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01166_n3_α
 xchain01166_n2_β:
 jmp xchain01166_n3_α
xchain01166_n3_α:
# IR_VAR
bb00795_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01166_n4_α
 xchain01166_n3_β:
 jmp xchain01166_n6_α
xchain01166_n4_α:
# IR_UNOP
bb01169_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01166_n6_α
 cmp eax, 0
 jne xchain01166_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01166_n5_α
 xchain01166_n4_β:
 jmp xchain01166_n6_α
xchain01166_n5_α:
# IR_LIT_STRING
bb01170_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01171_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01166_n7_α
 xchain01166_n5_β:
 jmp proc_put1get1_ω
.Lx01171_0:
 .quad .Lx01171_0_s
.Lx01171_0_s:
 .string "get(put(L,0))"
xchain01166_n6_α:
# IR_LIT_INTEGER
bb00797_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01172_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01166_n8_α
 xchain01166_n6_β:
 jmp proc_put1get1_ω
.Lx01172_0:
 .quad 1
xchain01166_n7_α:
# IR_RETURN
bb01173_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put1get1_γ
xchain01166_n8_α:
# IR_VAR
bb01174_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01166_n9_α
 xchain01166_n8_β:
 jmp proc_put1get1_ω
xchain01166_n9_α:
# IR_TO
bb01175_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01176_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01166_n10_α
 xchain01166_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01176_0
xchain01166_n10_α:
# IR_VAR
bb01177_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 184], rax
 jmp xchain01166_n11_α
 xchain01166_n10_β:
 jmp xchain01166_n9_β
xchain01166_n11_α:
# IR_LIT_INTEGER
bb01178_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01179_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01166_n12_α
 xchain01166_n11_β:
 jmp xchain01166_n9_β
.Lx01179_0:
 .quad 0
xchain01166_n12_α:
bb00800_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1637: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1637]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01166_n9_β
 jmp xchain01166_n13_α
xchain01166_n12_β:
 jmp xchain01166_n9_β
xchain01166_n13_α:
bb01180_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1639: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1639]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01166_n9_β
 jmp xchain01166_n9_β
 xchain01166_n13_β:
 jmp xchain01166_n9_β
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
xchain01181_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 392]
 cmp rax, 0
 jne xchain01181_n3_α
 mov qword ptr [r12 + 392], 1
 jmp xchain01181_n1_α
 xchain01181_n0_β:
 jmp xchain01181_n3_α
xchain01181_n1_α:
# IR_MAKE_LIST
bb01182_α:
 lea rdi, [r12 + 432]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01181_n2_α
 xchain01181_n1_β:
 jmp xchain01181_n3_α
xchain01181_n2_α:
bb01183_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain01181_n3_α
 xchain01181_n2_β:
 jmp xchain01181_n3_α
xchain01181_n3_α:
# IR_VAR
bb01184_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 376], rax
 jmp xchain01181_n4_α
 xchain01181_n3_β:
 jmp xchain01181_n6_α
xchain01181_n4_α:
# IR_UNOP
bb00804_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01181_n6_α
 cmp eax, 0
 jne xchain01181_n6_α
 mov qword ptr [r12 + 352], 0
 mov qword ptr [r12 + 360], 0
 jmp xchain01181_n5_α
 xchain01181_n4_β:
 jmp xchain01181_n6_α
xchain01181_n5_α:
# IR_LIT_STRING
bb00805_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx01185_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01181_n7_α
 xchain01181_n5_β:
 jmp proc_put2get2_ω
.Lx01185_0:
 .quad .Lx01185_0_s
.Lx01185_0_s:
 .string "put(L,1,2) & [2x] get(L)"
xchain01181_n6_α:
# IR_LIT_INTEGER
bb01186_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01187_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01181_n8_α
 xchain01181_n6_β:
 jmp proc_put2get2_ω
.Lx01187_0:
 .quad 1
xchain01181_n7_α:
# IR_RETURN
bb01188_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put2get2_γ
xchain01181_n8_α:
# IR_VAR
bb01189_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01181_n9_α
 xchain01181_n8_β:
 jmp proc_put2get2_ω
xchain01181_n9_α:
# IR_TO
bb01190_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01191_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01181_n10_α
 xchain01181_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01191_0
xchain01181_n10_α:
# IR_VAR
bb01192_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 264], rax
 jmp xchain01181_n11_α
 xchain01181_n10_β:
 jmp xchain01181_n9_β
xchain01181_n11_α:
# IR_LIT_INTEGER
bb01193_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx01194_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01181_n12_α
 xchain01181_n11_β:
 jmp xchain01181_n9_β
.Lx01194_0:
 .quad 1
xchain01181_n12_α:
# IR_LIT_INTEGER
bb00810_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx01195_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain01181_n13_α
 xchain01181_n12_β:
 jmp xchain01181_n9_β
.Lx01195_0:
 .quad 2
xchain01181_n13_α:
bb01196_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1661: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1661]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain01181_n9_β
 jmp xchain01181_n14_α
xchain01181_n13_β:
 jmp xchain01181_n9_β
xchain01181_n14_α:
# IR_VAR
bb01197_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 184], rax
 jmp xchain01181_n15_α
 xchain01181_n14_β:
 jmp xchain01181_n9_β
xchain01181_n15_α:
bb00812_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1665: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1665]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01181_n9_β
 jmp xchain01181_n16_α
 xchain01181_n15_β:
 jmp xchain01181_n9_β
xchain01181_n16_α:
# IR_VAR
bb00814_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 136], rax
 jmp xchain01181_n17_α
 xchain01181_n16_β:
 jmp xchain01181_n9_β
xchain01181_n17_α:
bb01198_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1669: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1669]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01181_n9_β
 jmp xchain01181_n18_α
 xchain01181_n17_β:
 jmp xchain01181_n9_β
xchain01181_n18_α:
 jmp xchain01181_n9_β
xchain01181_n18_β:
 jmp xchain01181_n9_β
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
xchain01199_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 472]
 cmp rax, 0
 jne xchain01199_n3_α
 mov qword ptr [r12 + 472], 1
 jmp xchain01199_n1_α
 xchain01199_n0_β:
 jmp xchain01199_n3_α
xchain01199_n1_α:
# IR_MAKE_LIST
bb01200_α:
 lea rdi, [r12 + 512]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain01199_n2_α
 xchain01199_n1_β:
 jmp xchain01199_n3_α
xchain01199_n2_α:
bb01201_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain01199_n3_α
 xchain01199_n2_β:
 jmp xchain01199_n3_α
xchain01199_n3_α:
# IR_VAR
bb00817_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 456], rax
 jmp xchain01199_n4_α
 xchain01199_n3_β:
 jmp xchain01199_n6_α
xchain01199_n4_α:
# IR_UNOP
bb01202_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01199_n6_α
 cmp eax, 0
 jne xchain01199_n6_α
 mov qword ptr [r12 + 432], 0
 mov qword ptr [r12 + 440], 0
 jmp xchain01199_n5_α
 xchain01199_n4_β:
 jmp xchain01199_n6_α
xchain01199_n5_α:
# IR_LIT_STRING
bb01203_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx01204_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01199_n7_α
 xchain01199_n5_β:
 jmp proc_put3get3_ω
.Lx01204_0:
 .quad .Lx01204_0_s
.Lx01204_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
xchain01199_n6_α:
# IR_LIT_INTEGER
bb00819_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01205_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01199_n8_α
 xchain01199_n6_β:
 jmp proc_put3get3_ω
.Lx01205_0:
 .quad 1
xchain01199_n7_α:
# IR_RETURN
bb01206_α:
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put3get3_γ
xchain01199_n8_α:
# IR_VAR
bb01207_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01199_n9_α
 xchain01199_n8_β:
 jmp proc_put3get3_ω
xchain01199_n9_α:
# IR_TO
bb01208_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01209_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01199_n10_α
 xchain01199_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01209_0
xchain01199_n10_α:
# IR_VAR
bb01210_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 328], rax
 jmp xchain01199_n11_α
 xchain01199_n10_β:
 jmp xchain01199_n9_β
xchain01199_n11_α:
# IR_LIT_INTEGER
bb00822_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01211_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01199_n12_α
 xchain01199_n11_β:
 jmp xchain01199_n9_β
.Lx01211_0:
 .quad 1
xchain01199_n12_α:
# IR_LIT_INTEGER
bb01212_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01213_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01199_n13_α
 xchain01199_n12_β:
 jmp xchain01199_n9_β
.Lx01213_0:
 .quad 2
xchain01199_n13_α:
# IR_LIT_INTEGER
bb01214_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01215_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01199_n14_α
 xchain01199_n13_β:
 jmp xchain01199_n9_β
.Lx01215_0:
 .quad 3
xchain01199_n14_α:
bb01216_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1693: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1693]
 lea rsi, [r12 + 256]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01199_n9_β
 jmp xchain01199_n15_α
xchain01199_n14_β:
 jmp xchain01199_n9_β
xchain01199_n15_α:
# IR_VAR
bb00824_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 232], rax
 jmp xchain01199_n16_α
 xchain01199_n15_β:
 jmp xchain01199_n9_β
xchain01199_n16_α:
bb00826_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1697: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1697]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain01199_n9_β
 jmp xchain01199_n17_α
 xchain01199_n16_β:
 jmp xchain01199_n9_β
xchain01199_n17_α:
# IR_VAR
bb01217_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 184], rax
 jmp xchain01199_n18_α
 xchain01199_n17_β:
 jmp xchain01199_n9_β
xchain01199_n18_α:
bb01218_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1701: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1701]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01199_n9_β
 jmp xchain01199_n19_α
 xchain01199_n18_β:
 jmp xchain01199_n9_β
xchain01199_n19_α:
# IR_VAR
bb01219_α:
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 136], rax
 jmp xchain01199_n20_α
 xchain01199_n19_β:
 jmp xchain01199_n9_β
xchain01199_n20_α:
bb01220_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1705: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1705]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01199_n9_β
 jmp xchain01199_n21_α
 xchain01199_n20_β:
 jmp xchain01199_n9_β
xchain01199_n21_α:
 jmp xchain01199_n9_β
xchain01199_n21_β:
 jmp xchain01199_n9_β
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
xchain01221_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 552]
 cmp rax, 0
 jne xchain01221_n3_α
 mov qword ptr [r12 + 552], 1
 jmp xchain01221_n1_α
 xchain01221_n0_β:
 jmp xchain01221_n3_α
xchain01221_n1_α:
# IR_MAKE_LIST
bb01222_α:
 lea rdi, [r12 + 592]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain01221_n2_α
 xchain01221_n1_β:
 jmp xchain01221_n3_α
xchain01221_n2_α:
bb01223_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain01221_n3_α
 xchain01221_n2_β:
 jmp xchain01221_n3_α
xchain01221_n3_α:
# IR_VAR
bb00832_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain01221_n4_α
 xchain01221_n3_β:
 jmp xchain01221_n6_α
xchain01221_n4_α:
# IR_UNOP
bb01224_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01221_n6_α
 cmp eax, 0
 jne xchain01221_n6_α
 mov qword ptr [r12 + 512], 0
 mov qword ptr [r12 + 520], 0
 jmp xchain01221_n5_α
 xchain01221_n4_β:
 jmp xchain01221_n6_α
xchain01221_n5_α:
# IR_LIT_STRING
bb01225_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx01226_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain01221_n7_α
 xchain01221_n5_β:
 jmp proc_put4get4_ω
.Lx01226_0:
 .quad .Lx01226_0_s
.Lx01226_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
xchain01221_n6_α:
# IR_LIT_INTEGER
bb00833_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01227_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01221_n8_α
 xchain01221_n6_β:
 jmp proc_put4get4_ω
.Lx01227_0:
 .quad 1
xchain01221_n7_α:
# IR_RETURN
bb01228_α:
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_put4get4_γ
xchain01221_n8_α:
# IR_VAR
bb01229_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01221_n9_α
 xchain01221_n8_β:
 jmp proc_put4get4_ω
xchain01221_n9_α:
# IR_TO
bb01230_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01231_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01221_n10_α
 xchain01221_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01231_0
xchain01221_n10_α:
# IR_VAR
bb00836_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 392], rax
 jmp xchain01221_n11_α
 xchain01221_n10_β:
 jmp xchain01221_n9_β
xchain01221_n11_α:
# IR_LIT_INTEGER
bb00838_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx01232_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain01221_n12_α
 xchain01221_n11_β:
 jmp xchain01221_n9_β
.Lx01232_0:
 .quad 1
xchain01221_n12_α:
# IR_LIT_INTEGER
bb01233_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx01234_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain01221_n13_α
 xchain01221_n12_β:
 jmp xchain01221_n9_β
.Lx01234_0:
 .quad 2
xchain01221_n13_α:
# IR_LIT_INTEGER
bb01235_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx01236_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain01221_n14_α
 xchain01221_n13_β:
 jmp xchain01221_n9_β
.Lx01236_0:
 .quad 3
xchain01221_n14_α:
# IR_LIT_INTEGER
bb01237_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx01238_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain01221_n15_α
 xchain01221_n14_β:
 jmp xchain01221_n9_β
.Lx01238_0:
 .quad 4
xchain01221_n15_α:
bb00840_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1730: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1730]
 lea rsi, [r12 + 304]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01221_n9_β
 jmp xchain01221_n16_α
xchain01221_n15_β:
 jmp xchain01221_n9_β
xchain01221_n16_α:
# IR_VAR
bb01239_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 280], rax
 jmp xchain01221_n17_α
 xchain01221_n16_β:
 jmp xchain01221_n9_β
xchain01221_n17_α:
bb01240_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+256]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn1734: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1734]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01221_n9_β
 jmp xchain01221_n18_α
 xchain01221_n17_β:
 jmp xchain01221_n9_β
xchain01221_n18_α:
# IR_VAR
bb01241_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 232], rax
 jmp xchain01221_n19_α
 xchain01221_n18_β:
 jmp xchain01221_n9_β
xchain01221_n19_α:
bb00843_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1738: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1738]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain01221_n9_β
 jmp xchain01221_n20_α
 xchain01221_n19_β:
 jmp xchain01221_n9_β
xchain01221_n20_α:
# IR_VAR
bb00845_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 184], rax
 jmp xchain01221_n21_α
 xchain01221_n20_β:
 jmp xchain01221_n9_β
xchain01221_n21_α:
bb01242_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn1742: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1742]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01221_n9_β
 jmp xchain01221_n22_α
 xchain01221_n21_β:
 jmp xchain01221_n9_β
xchain01221_n22_α:
# IR_VAR
bb01243_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 136], rax
 jmp xchain01221_n23_α
 xchain01221_n22_β:
 jmp xchain01221_n9_β
xchain01221_n23_α:
bb01244_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1746: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1746]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01221_n9_β
 jmp xchain01221_n24_α
 xchain01221_n23_β:
 jmp xchain01221_n9_β
xchain01221_n24_α:
 jmp xchain01221_n9_β
xchain01221_n24_β:
 jmp xchain01221_n9_β
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
xchain01245_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 296]
 cmp rax, 0
 jne xchain01245_n3_α
 mov qword ptr [r12 + 296], 1
 jmp xchain01245_n1_α
 xchain01245_n0_β:
 jmp xchain01245_n3_α
xchain01245_n1_α:
# IR_MAKE_LIST
bb01246_α:
 lea rdi, [r12 + 336]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01245_n2_α
 xchain01245_n1_β:
 jmp xchain01245_n3_α
xchain01245_n2_α:
bb01247_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01245_n3_α
 xchain01245_n2_β:
 jmp xchain01245_n3_α
xchain01245_n3_α:
# IR_VAR
bb01248_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01245_n4_α
 xchain01245_n3_β:
 jmp xchain01245_n6_α
xchain01245_n4_α:
# IR_UNOP
bb00849_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01245_n6_α
 cmp eax, 0
 jne xchain01245_n6_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01245_n5_α
 xchain01245_n4_β:
 jmp xchain01245_n6_α
xchain01245_n5_α:
# IR_LIT_STRING
bb00851_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01249_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01245_n7_α
 xchain01245_n5_β:
 jmp proc_pushpop_ω
.Lx01249_0:
 .quad .Lx01249_0_s
.Lx01249_0_s:
 .string "pop(push(L,0))"
xchain01245_n6_α:
# IR_LIT_INTEGER
bb01250_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01251_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01245_n8_α
 xchain01245_n6_β:
 jmp proc_pushpop_ω
.Lx01251_0:
 .quad 1
xchain01245_n7_α:
# IR_RETURN
bb01252_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop_γ
xchain01245_n8_α:
# IR_VAR
bb01253_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01245_n9_α
 xchain01245_n8_β:
 jmp proc_pushpop_ω
xchain01245_n9_α:
# IR_TO
bb00853_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01254_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01245_n10_α
 xchain01245_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01254_0
xchain01245_n10_α:
# IR_VAR
bb01255_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 184], rax
 jmp xchain01245_n11_α
 xchain01245_n10_β:
 jmp xchain01245_n9_β
xchain01245_n11_α:
# IR_LIT_INTEGER
bb01256_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01257_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01245_n12_α
 xchain01245_n11_β:
 jmp xchain01245_n9_β
.Lx01257_0:
 .quad 0
xchain01245_n12_α:
bb01258_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1768: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1768]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01245_n9_β
 jmp xchain01245_n13_α
xchain01245_n12_β:
 jmp xchain01245_n9_β
xchain01245_n13_α:
bb00855_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1770: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1770]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01245_n9_β
 jmp xchain01245_n9_β
 xchain01245_n13_β:
 jmp xchain01245_n9_β
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
xchain01259_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 296]
 cmp rax, 0
 jne xchain01259_n15_α
 mov qword ptr [r12 + 296], 1
 jmp xchain01259_n1_α
 xchain01259_n0_β:
 jmp xchain01259_n15_α
xchain01259_n1_α:
# IR_LIT_INTEGER
bb01260_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx01261_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain01259_n2_α
 xchain01259_n1_β:
 jmp xchain01259_n15_α
.Lx01261_0:
 .quad 3
xchain01259_n2_α:
# IR_LIT_INTEGER
bb01262_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx01263_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain01259_n3_α
 xchain01259_n2_β:
 jmp xchain01259_n15_α
.Lx01263_0:
 .quad 1
xchain01259_n3_α:
# IR_LIT_INTEGER
bb00860_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx01264_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain01259_n4_α
 xchain01259_n3_β:
 jmp xchain01259_n15_α
.Lx01264_0:
 .quad 4
xchain01259_n4_α:
# IR_LIT_INTEGER
bb01265_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx01266_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain01259_n5_α
 xchain01259_n4_β:
 jmp xchain01259_n15_α
.Lx01266_0:
 .quad 1
xchain01259_n5_α:
# IR_LIT_INTEGER
bb01267_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx01268_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain01259_n6_α
 xchain01259_n5_β:
 jmp xchain01259_n15_α
.Lx01268_0:
 .quad 5
xchain01259_n6_α:
# IR_LIT_INTEGER
bb01269_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx01270_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain01259_n7_α
 xchain01259_n6_β:
 jmp xchain01259_n15_α
.Lx01270_0:
 .quad 9
xchain01259_n7_α:
# IR_LIT_INTEGER
bb01271_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx01272_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain01259_n8_α
 xchain01259_n7_β:
 jmp xchain01259_n15_α
.Lx01272_0:
 .quad 2
xchain01259_n8_α:
# IR_LIT_INTEGER
bb01273_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx01274_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain01259_n9_α
 xchain01259_n8_β:
 jmp xchain01259_n15_α
.Lx01274_0:
 .quad 6
xchain01259_n9_α:
# IR_LIT_INTEGER
bb00861_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx01275_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain01259_n10_α
 xchain01259_n9_β:
 jmp xchain01259_n15_α
.Lx01275_0:
 .quad 5
xchain01259_n10_α:
# IR_LIT_INTEGER
bb01276_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx01277_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain01259_n11_α
 xchain01259_n10_β:
 jmp xchain01259_n15_α
.Lx01277_0:
 .quad 3
xchain01259_n11_α:
# IR_LIT_INTEGER
bb01278_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx01279_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain01259_n12_α
 xchain01259_n11_β:
 jmp xchain01259_n15_α
.Lx01279_0:
 .quad 5
xchain01259_n12_α:
# IR_LIT_INTEGER
bb01280_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx01281_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain01259_n13_α
 xchain01259_n12_β:
 jmp xchain01259_n15_α
.Lx01281_0:
 .quad 8
xchain01259_n13_α:
# IR_MAKE_LIST
bb00863_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 344], rax
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
 lea rdi, [r12 + 336]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01259_n14_α
 xchain01259_n13_β:
 jmp xchain01259_n15_α
xchain01259_n14_α:
bb00865_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01259_n15_α
 xchain01259_n14_β:
 jmp xchain01259_n15_α
xchain01259_n15_α:
# IR_VAR
bb01282_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01259_n16_α
 xchain01259_n15_β:
 jmp xchain01259_n18_α
xchain01259_n16_α:
# IR_UNOP
bb01283_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01259_n18_α
 cmp eax, 0
 jne xchain01259_n18_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01259_n17_α
 xchain01259_n16_β:
 jmp xchain01259_n18_α
xchain01259_n17_α:
# IR_LIT_STRING
bb01284_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01285_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01259_n19_α
 xchain01259_n17_β:
 jmp proc_putget12_ω
.Lx01285_0:
 .quad .Lx01285_0_s
.Lx01285_0_s:
 .string "get(put(L12,0))"
xchain01259_n18_α:
# IR_LIT_INTEGER
bb00867_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01286_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01259_n20_α
 xchain01259_n18_β:
 jmp proc_putget12_ω
.Lx01286_0:
 .quad 1
xchain01259_n19_α:
# IR_RETURN
bb01287_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_putget12_γ
xchain01259_n20_α:
# IR_VAR
bb01288_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01259_n21_α
 xchain01259_n20_β:
 jmp proc_putget12_ω
xchain01259_n21_α:
# IR_TO
bb01289_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01290_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01259_n22_α
 xchain01259_n21_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01290_0
xchain01259_n22_α:
# IR_VAR
bb00870_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 184], rax
 jmp xchain01259_n23_α
 xchain01259_n22_β:
 jmp xchain01259_n21_β
xchain01259_n23_α:
# IR_LIT_INTEGER
bb01291_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01292_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01259_n24_α
 xchain01259_n23_β:
 jmp xchain01259_n21_β
.Lx01292_0:
 .quad 0
xchain01259_n24_α:
bb00873_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1803: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1803]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01259_n21_β
 jmp xchain01259_n25_α
xchain01259_n24_β:
 jmp xchain01259_n21_β
xchain01259_n25_α:
bb00874_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1805: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1805]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01259_n21_β
 jmp xchain01259_n21_β
 xchain01259_n25_β:
 jmp xchain01259_n21_β
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
xchain01293_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 296]
 cmp rax, 0
 jne xchain01293_n15_α
 mov qword ptr [r12 + 296], 1
 jmp xchain01293_n1_α
 xchain01293_n0_β:
 jmp xchain01293_n15_α
xchain01293_n1_α:
# IR_LIT_INTEGER
bb01294_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx01295_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain01293_n2_α
 xchain01293_n1_β:
 jmp xchain01293_n15_α
.Lx01295_0:
 .quad 3
xchain01293_n2_α:
# IR_LIT_INTEGER
bb00876_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx01296_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain01293_n3_α
 xchain01293_n2_β:
 jmp xchain01293_n15_α
.Lx01296_0:
 .quad 1
xchain01293_n3_α:
# IR_LIT_INTEGER
bb00878_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx01297_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain01293_n4_α
 xchain01293_n3_β:
 jmp xchain01293_n15_α
.Lx01297_0:
 .quad 4
xchain01293_n4_α:
# IR_LIT_INTEGER
bb01298_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx01299_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain01293_n5_α
 xchain01293_n4_β:
 jmp xchain01293_n15_α
.Lx01299_0:
 .quad 1
xchain01293_n5_α:
# IR_LIT_INTEGER
bb01300_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx01301_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain01293_n6_α
 xchain01293_n5_β:
 jmp xchain01293_n15_α
.Lx01301_0:
 .quad 5
xchain01293_n6_α:
# IR_LIT_INTEGER
bb01302_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx01303_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain01293_n7_α
 xchain01293_n6_β:
 jmp xchain01293_n15_α
.Lx01303_0:
 .quad 9
xchain01293_n7_α:
# IR_LIT_INTEGER
bb01304_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx01305_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain01293_n8_α
 xchain01293_n7_β:
 jmp xchain01293_n15_α
.Lx01305_0:
 .quad 2
xchain01293_n8_α:
# IR_LIT_INTEGER
bb00879_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx01306_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain01293_n9_α
 xchain01293_n8_β:
 jmp xchain01293_n15_α
.Lx01306_0:
 .quad 6
xchain01293_n9_α:
# IR_LIT_INTEGER
bb01307_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx01308_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain01293_n10_α
 xchain01293_n9_β:
 jmp xchain01293_n15_α
.Lx01308_0:
 .quad 5
xchain01293_n10_α:
# IR_LIT_INTEGER
bb01309_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx01310_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain01293_n11_α
 xchain01293_n10_β:
 jmp xchain01293_n15_α
.Lx01310_0:
 .quad 3
xchain01293_n11_α:
# IR_LIT_INTEGER
bb01311_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx01312_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain01293_n12_α
 xchain01293_n11_β:
 jmp xchain01293_n15_α
.Lx01312_0:
 .quad 5
xchain01293_n12_α:
# IR_LIT_INTEGER
bb00881_α:
 mov qword ptr [r12 + 704], 6
 mov rax, qword ptr [rip + .Lx01313_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain01293_n13_α
 xchain01293_n12_β:
 jmp xchain01293_n15_α
.Lx01313_0:
 .quad 8
xchain01293_n13_α:
# IR_MAKE_LIST
bb00883_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 344], rax
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
 lea rdi, [r12 + 336]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01293_n14_α
 xchain01293_n13_β:
 jmp xchain01293_n15_α
xchain01293_n14_α:
bb01314_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01293_n15_α
 xchain01293_n14_β:
 jmp xchain01293_n15_α
xchain01293_n15_α:
# IR_VAR
bb01315_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01293_n16_α
 xchain01293_n15_β:
 jmp xchain01293_n18_α
xchain01293_n16_α:
# IR_UNOP
bb01316_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01293_n18_α
 cmp eax, 0
 jne xchain01293_n18_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01293_n17_α
 xchain01293_n16_β:
 jmp xchain01293_n18_α
xchain01293_n17_α:
# IR_LIT_STRING
bb00886_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01317_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01293_n19_α
 xchain01293_n17_β:
 jmp proc_pushpop12_ω
.Lx01317_0:
 .quad .Lx01317_0_s
.Lx01317_0_s:
 .string "pop(push(L12,0))"
xchain01293_n18_α:
# IR_LIT_INTEGER
bb01318_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01319_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01293_n20_α
 xchain01293_n18_β:
 jmp proc_pushpop12_ω
.Lx01319_0:
 .quad 1
xchain01293_n19_α:
# IR_RETURN
bb01320_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_pushpop12_γ
xchain01293_n20_α:
# IR_VAR
bb01321_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01293_n21_α
 xchain01293_n20_β:
 jmp proc_pushpop12_ω
xchain01293_n21_α:
# IR_TO
bb00887_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01322_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01293_n22_α
 xchain01293_n21_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01322_0
xchain01293_n22_α:
# IR_VAR
bb00888_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 184], rax
 jmp xchain01293_n23_α
 xchain01293_n22_β:
 jmp xchain01293_n21_β
xchain01293_n23_α:
# IR_LIT_INTEGER
bb01323_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx01324_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01293_n24_α
 xchain01293_n23_β:
 jmp xchain01293_n21_β
.Lx01324_0:
 .quad 0
xchain01293_n24_α:
bb00889_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn1838: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn1838]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain01293_n21_β
 jmp xchain01293_n25_α
xchain01293_n24_β:
 jmp xchain01293_n21_β
xchain01293_n25_α:
bb01325_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1840: .string "pop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1840]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01293_n21_β
 jmp xchain01293_n21_β
 xchain01293_n25_β:
 jmp xchain01293_n21_β
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
xchain01326_n0_α:
# IR_VAR
bb01327_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain01326_n1_α
 xchain01326_n0_β:
 jmp xchain01326_n3_α
xchain01326_n1_α:
# IR_UNOP
bb00890_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01326_n3_α
 cmp eax, 0
 jne xchain01326_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain01326_n2_α
 xchain01326_n1_β:
 jmp xchain01326_n3_α
xchain01326_n2_α:
# IR_LIT_STRING
bb01328_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx01329_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01326_n4_α
 xchain01326_n2_β:
 jmp proc_setcreate_ω
.Lx01329_0:
 .quad .Lx01329_0_s
.Lx01329_0_s:
 .string "set()"
xchain01326_n3_α:
# IR_LIT_INTEGER
bb01330_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01331_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01326_n5_α
 xchain01326_n3_β:
 jmp proc_setcreate_ω
.Lx01331_0:
 .quad 1
xchain01326_n4_α:
# IR_RETURN
bb01332_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcreate_γ
xchain01326_n5_α:
# IR_VAR
bb00893_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01326_n6_α
 xchain01326_n5_β:
 jmp proc_setcreate_ω
xchain01326_n6_α:
# IR_TO
bb00895_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01333_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01326_n7_α
 xchain01326_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01333_0
xchain01326_n7_α:
bb01334_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1853: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1853]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01326_n6_β
 jmp xchain01326_n6_β
 xchain01326_n7_β:
 jmp xchain01326_n6_β
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
xchain01335_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01335_n3_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01335_n1_α
 xchain01335_n0_β:
 jmp xchain01335_n3_α
xchain01335_n1_α:
bb01336_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1858: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1858]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain01335_n3_α
 jmp xchain01335_n2_α
 xchain01335_n1_β:
 jmp xchain01335_n3_α
xchain01335_n2_α:
bb00897_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01335_n4_α
 xchain01335_n2_β:
 jmp xchain01335_n3_α
xchain01335_n3_α:
# IR_VAR
bb01337_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01335_n5_α
 xchain01335_n3_β:
 jmp xchain01335_n8_α
xchain01335_n4_α:
# IR_LIT_INTEGER
bb01338_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01339_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01335_n6_α
 xchain01335_n4_β:
 jmp xchain01335_n3_α
.Lx01339_0:
 .quad 5
xchain01335_n5_α:
# IR_UNOP
bb01340_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01335_n8_α
 cmp eax, 0
 jne xchain01335_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01335_n7_α
 xchain01335_n5_β:
 jmp xchain01335_n8_α
xchain01335_n6_α:
bb00900_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+272]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1865: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1865]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01335_n3_α
 jmp xchain01335_n3_α
 xchain01335_n6_β:
 jmp xchain01335_n3_α
xchain01335_n7_α:
# IR_LIT_STRING
bb00902_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01341_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01335_n9_α
 xchain01335_n7_β:
 jmp proc_setcopy_ω
.Lx01341_0:
 .quad .Lx01341_0_s
.Lx01341_0_s:
 .string "copy(S)"
xchain01335_n8_α:
# IR_LIT_INTEGER
bb01342_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01343_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01335_n10_α
 xchain01335_n8_β:
 jmp proc_setcopy_ω
.Lx01343_0:
 .quad 1
xchain01335_n9_α:
# IR_RETURN
bb00903_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setcopy_γ
xchain01335_n10_α:
# IR_VAR
bb01344_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01335_n11_α
 xchain01335_n10_β:
 jmp proc_setcopy_ω
xchain01335_n11_α:
# IR_TO
bb01345_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01346_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01335_n12_α
 xchain01335_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01346_0
xchain01335_n12_α:
# IR_VAR
bb00904_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 136], rax
 jmp xchain01335_n13_α
 xchain01335_n12_β:
 jmp xchain01335_n11_β
xchain01335_n13_α:
bb01347_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn1876: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1876]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01335_n11_β
 jmp xchain01335_n11_β
 xchain01335_n13_β:
 jmp xchain01335_n11_β
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
xchain01348_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 264]
 cmp rax, 0
 jne xchain01348_n3_α
 mov qword ptr [r12 + 264], 1
 jmp xchain01348_n1_α
 xchain01348_n0_β:
 jmp xchain01348_n3_α
xchain01348_n1_α:
bb01349_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1881: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1881]
 lea rsi, [r12 + 352]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain01348_n3_α
 jmp xchain01348_n2_α
 xchain01348_n1_β:
 jmp xchain01348_n3_α
xchain01348_n2_α:
bb00906_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01348_n4_α
 xchain01348_n2_β:
 jmp xchain01348_n3_α
xchain01348_n3_α:
# IR_VAR
bb00908_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01348_n5_α
 xchain01348_n3_β:
 jmp xchain01348_n8_α
xchain01348_n4_α:
# IR_LIT_INTEGER
bb01350_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01351_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01348_n6_α
 xchain01348_n4_β:
 jmp xchain01348_n3_α
.Lx01351_0:
 .quad 5
xchain01348_n5_α:
# IR_UNOP
bb01352_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01348_n8_α
 cmp eax, 0
 jne xchain01348_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01348_n7_α
 xchain01348_n5_β:
 jmp xchain01348_n8_α
xchain01348_n6_α:
bb01353_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn1888: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1888]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain01348_n3_α
 jmp xchain01348_n3_α
 xchain01348_n6_β:
 jmp xchain01348_n3_α
xchain01348_n7_α:
# IR_LIT_STRING
bb00909_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01354_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01348_n9_α
 xchain01348_n7_β:
 jmp proc_setinsert_ω
.Lx01354_0:
 .quad .Lx01354_0_s
.Lx01354_0_s:
 .string "insert(S,5)"
xchain01348_n8_α:
# IR_LIT_INTEGER
bb01355_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01356_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01348_n10_α
 xchain01348_n8_β:
 jmp proc_setinsert_ω
.Lx01356_0:
 .quad 1
xchain01348_n9_α:
# IR_RETURN
bb01357_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsert_γ
xchain01348_n10_α:
# IR_VAR
bb01358_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01348_n11_α
 xchain01348_n10_β:
 jmp proc_setinsert_ω
xchain01348_n11_α:
# IR_TO
bb00912_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01359_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01348_n12_α
 xchain01348_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01359_0
xchain01348_n12_α:
# IR_VAR
bb00914_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 152], rax
 jmp xchain01348_n13_α
 xchain01348_n12_β:
 jmp xchain01348_n11_β
xchain01348_n13_α:
# IR_LIT_INTEGER
bb01360_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01361_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01348_n14_α
 xchain01348_n13_β:
 jmp xchain01348_n11_β
.Lx01361_0:
 .quad 5
xchain01348_n14_α:
bb00915_α:
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
  .Lrkfn1900: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1900]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01348_n11_β
 jmp xchain01348_n11_β
 xchain01348_n14_β:
 jmp xchain01348_n11_β
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
xchain01362_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 264]
 cmp rax, 0
 jne xchain01362_n3_α
 mov qword ptr [r12 + 264], 1
 jmp xchain01362_n1_α
 xchain01362_n0_β:
 jmp xchain01362_n3_α
xchain01362_n1_α:
bb00916_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1905: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1905]
 lea rsi, [r12 + 352]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain01362_n3_α
 jmp xchain01362_n2_α
 xchain01362_n1_β:
 jmp xchain01362_n3_α
xchain01362_n2_α:
bb01363_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01362_n4_α
 xchain01362_n2_β:
 jmp xchain01362_n3_α
xchain01362_n3_α:
# IR_VAR
bb01364_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01362_n5_α
 xchain01362_n3_β:
 jmp xchain01362_n8_α
xchain01362_n4_α:
# IR_LIT_INTEGER
bb00917_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01365_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01362_n6_α
 xchain01362_n4_β:
 jmp xchain01362_n3_α
.Lx01365_0:
 .quad 5
xchain01362_n5_α:
# IR_UNOP
bb01366_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01362_n8_α
 cmp eax, 0
 jne xchain01362_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01362_n7_α
 xchain01362_n5_β:
 jmp xchain01362_n8_α
xchain01362_n6_α:
bb01367_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn1912: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1912]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain01362_n3_α
 jmp xchain01362_n3_α
 xchain01362_n6_β:
 jmp xchain01362_n3_α
xchain01362_n7_α:
# IR_LIT_STRING
bb01368_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01369_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01362_n9_α
 xchain01362_n7_β:
 jmp proc_setmember_ω
.Lx01369_0:
 .quad .Lx01369_0_s
.Lx01369_0_s:
 .string "member(S,5)"
xchain01362_n8_α:
# IR_LIT_INTEGER
bb00921_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01370_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01362_n10_α
 xchain01362_n8_β:
 jmp proc_setmember_ω
.Lx01370_0:
 .quad 1
xchain01362_n9_α:
# IR_RETURN
bb00922_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setmember_γ
xchain01362_n10_α:
# IR_VAR
bb01371_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01362_n11_α
 xchain01362_n10_β:
 jmp proc_setmember_ω
xchain01362_n11_α:
# IR_TO
bb01372_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01373_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01362_n12_α
 xchain01362_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01373_0
xchain01362_n12_α:
# IR_VAR
bb01374_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 152], rax
 jmp xchain01362_n13_α
 xchain01362_n12_β:
 jmp xchain01362_n11_β
xchain01362_n13_α:
# IR_LIT_INTEGER
bb00924_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01375_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01362_n14_α
 xchain01362_n13_β:
 jmp xchain01362_n11_β
.Lx01375_0:
 .quad 5
xchain01362_n14_α:
bb01376_α:
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
  .Lrkfn1924: .string "member"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1924]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01362_n11_β
 jmp xchain01362_n11_β
 xchain01362_n14_β:
 jmp xchain01362_n11_β
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
xchain01377_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 328]
 cmp rax, 0
 jne xchain01377_n3_α
 mov qword ptr [r12 + 328], 1
 jmp xchain01377_n1_α
 xchain01377_n0_β:
 jmp xchain01377_n3_α
xchain01377_n1_α:
bb01378_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1929: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1929]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain01377_n3_α
 jmp xchain01377_n2_α
 xchain01377_n1_β:
 jmp xchain01377_n3_α
xchain01377_n2_α:
bb00926_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01377_n3_α
 xchain01377_n2_β:
 jmp xchain01377_n3_α
xchain01377_n3_α:
# IR_VAR
bb00928_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain01377_n4_α
 xchain01377_n3_β:
 jmp xchain01377_n6_α
xchain01377_n4_α:
# IR_UNOP
bb01379_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01377_n6_α
 cmp eax, 0
 jne xchain01377_n6_α
 mov qword ptr [r12 + 288], 0
 mov qword ptr [r12 + 296], 0
 jmp xchain01377_n5_α
 xchain01377_n4_β:
 jmp xchain01377_n6_α
xchain01377_n5_α:
# IR_LIT_STRING
bb01380_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx01381_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain01377_n7_α
 xchain01377_n5_β:
 jmp proc_setinsdel_ω
.Lx01381_0:
 .quad .Lx01381_0_s
.Lx01381_0_s:
 .string "insert+delete"
xchain01377_n6_α:
# IR_LIT_INTEGER
bb01382_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01383_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01377_n8_α
 xchain01377_n6_β:
 jmp proc_setinsdel_ω
.Lx01383_0:
 .quad 1
xchain01377_n7_α:
# IR_RETURN
bb01384_α:
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setinsdel_γ
xchain01377_n8_α:
# IR_VAR
bb00929_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01377_n9_α
 xchain01377_n8_β:
 jmp proc_setinsdel_ω
xchain01377_n9_α:
# IR_TO
bb01385_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01386_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01377_n10_α
 xchain01377_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01386_0
xchain01377_n10_α:
# IR_VAR
bb01387_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 200], rax
 jmp xchain01377_n11_α
 xchain01377_n10_β:
 jmp xchain01377_n9_β
xchain01377_n11_α:
# IR_LIT_INTEGER
bb01388_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx01389_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01377_n12_α
 xchain01377_n11_β:
 jmp xchain01377_n9_β
.Lx01389_0:
 .quad 5
xchain01377_n12_α:
bb00932_α:
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
  .Lrkfn1945: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1945]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01377_n9_β
 jmp xchain01377_n13_α
 xchain01377_n12_β:
 jmp xchain01377_n9_β
xchain01377_n13_α:
# IR_LIT_INTEGER
bb00934_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx01390_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain01377_n14_α
 xchain01377_n13_β:
 jmp xchain01377_n9_β
.Lx01390_0:
 .quad 5
xchain01377_n14_α:
bb01391_α:
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
  .Lrkfn1948: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1948]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01377_n9_β
 jmp xchain01377_n9_β
 xchain01377_n14_β:
 jmp xchain01377_n9_β
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
xchain01392_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01392_n3_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01392_n1_α
 xchain01392_n0_β:
 jmp xchain01392_n3_α
xchain01392_n1_α:
bb01393_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1953: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1953]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain01392_n3_α
 jmp xchain01392_n2_α
 xchain01392_n1_β:
 jmp xchain01392_n3_α
xchain01392_n2_α:
bb00936_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01392_n4_α
 xchain01392_n2_β:
 jmp xchain01392_n3_α
xchain01392_n3_α:
# IR_VAR
bb01394_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01392_n5_α
 xchain01392_n3_β:
 jmp xchain01392_n8_α
xchain01392_n4_α:
# IR_LIT_INTEGER
bb01395_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01396_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01392_n6_α
 xchain01392_n4_β:
 jmp xchain01392_n3_α
.Lx01396_0:
 .quad 5
xchain01392_n5_α:
# IR_UNOP
bb01397_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01392_n8_α
 cmp eax, 0
 jne xchain01392_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01392_n7_α
 xchain01392_n5_β:
 jmp xchain01392_n8_α
xchain01392_n6_α:
bb00939_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+272]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1960: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1960]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01392_n3_α
 jmp xchain01392_n3_α
 xchain01392_n6_β:
 jmp xchain01392_n3_α
xchain01392_n7_α:
# IR_LIT_STRING
bb00941_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01398_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01392_n9_α
 xchain01392_n7_β:
 jmp proc_setpick_ω
.Lx01398_0:
 .quad .Lx01398_0_s
.Lx01398_0_s:
 .string "?S"
xchain01392_n8_α:
# IR_LIT_INTEGER
bb01399_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01400_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01392_n10_α
 xchain01392_n8_β:
 jmp proc_setpick_ω
.Lx01400_0:
 .quad 1
xchain01392_n9_α:
# IR_RETURN
bb00942_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setpick_γ
xchain01392_n10_α:
# IR_VAR
bb01401_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01392_n11_α
 xchain01392_n10_β:
 jmp proc_setpick_ω
xchain01392_n11_α:
# IR_TO
bb01402_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01403_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01392_n12_α
 xchain01392_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01403_0
xchain01392_n12_α:
# IR_VAR_REF local
bb00943_α:
 lea rdi, [r12 + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain01392_n13_α
 xchain01392_n12_β:
 jmp xchain01392_n11_β
xchain01392_n13_α:
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
bb01404_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain01392_n11_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01392_n14_α
 xchain01392_n13_β:
 jmp xchain01392_n11_β
xchain01392_n14_α:
# IR_DEREF variable -> value
bb01405_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01392_n11_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01392_n11_β
 xchain01392_n14_β:
 jmp xchain01392_n11_β
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
xchain01406_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01406_n3_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01406_n1_α
 xchain01406_n0_β:
 jmp xchain01406_n3_α
xchain01406_n1_α:
bb00947_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1976: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1976]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain01406_n3_α
 jmp xchain01406_n2_α
 xchain01406_n1_β:
 jmp xchain01406_n3_α
xchain01406_n2_α:
bb00949_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain01406_n4_α
 xchain01406_n2_β:
 jmp xchain01406_n3_α
xchain01406_n3_α:
# IR_VAR
bb01407_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01406_n5_α
 xchain01406_n3_β:
 jmp xchain01406_n8_α
xchain01406_n4_α:
# IR_LIT_INTEGER
bb01408_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01409_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01406_n6_α
 xchain01406_n4_β:
 jmp xchain01406_n3_α
.Lx01409_0:
 .quad 1
xchain01406_n5_α:
# IR_UNOP
bb01410_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01406_n8_α
 cmp eax, 0
 jne xchain01406_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01406_n7_α
 xchain01406_n5_β:
 jmp xchain01406_n8_α
xchain01406_n6_α:
# IR_LIT_INTEGER
bb00950_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx01411_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain01406_n9_α
 xchain01406_n6_β:
 jmp xchain01406_n3_α
.Lx01411_0:
 .quad 5
xchain01406_n7_α:
# IR_LIT_STRING
bb01412_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01413_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01406_n10_α
 xchain01406_n7_β:
 jmp proc_setbang_ω
.Lx01413_0:
 .quad .Lx01413_0_s
.Lx01413_0_s:
 .string "!S"
xchain01406_n8_α:
# IR_LIT_INTEGER
bb01414_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01415_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01406_n11_α
 xchain01406_n8_β:
 jmp proc_setbang_ω
.Lx01415_0:
 .quad 1
xchain01406_n9_α:
# IR_TO
bb01416_α:
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
.Lx01417_0:
 mov rax, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain01406_n3_α
 mov qword ptr [r12 + 320], 6
 mov qword ptr [r12 + 328], rax
 jmp xchain01406_n12_α
 xchain01406_n9_β:
 inc qword ptr [r12 + 336]
 jmp .Lx01417_0
xchain01406_n10_α:
# IR_RETURN
bb00953_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_setbang_γ
xchain01406_n11_α:
# IR_VAR
bb00954_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01406_n13_α
 xchain01406_n11_β:
 jmp proc_setbang_ω
xchain01406_n12_α:
bb01418_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+272]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1991: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1991]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01406_n3_α
 jmp xchain01406_n9_β
 xchain01406_n12_β:
 jmp xchain01406_n3_α
xchain01406_n13_α:
# IR_TO
bb00956_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01419_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01406_n14_α
 xchain01406_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01419_0
xchain01406_n14_α:
# IR_VAR
bb01420_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 136], rax
 jmp xchain01406_n15_α
 xchain01406_n14_β:
 jmp xchain01406_n13_β
xchain01406_n15_α:
# IR_LIST_BANG
bb01421_α:
 mov qword ptr [r12 + 112], 0
.Lx01422_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp rax, 99
 je xchain01406_n13_β
 jmp xchain01406_n15_β
 xchain01406_n15_β:
 inc qword ptr [r12 + 112]
 jmp .Lx01422_0
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
xchain01423_n0_α:
# IR_VAR
bb00957_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
 jmp xchain01423_n1_α
 xchain01423_n0_β:
 jmp xchain01423_n3_α
xchain01423_n1_α:
# IR_UNOP
bb01424_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01423_n3_α
 cmp eax, 0
 jne xchain01423_n3_α
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 jmp xchain01423_n2_α
 xchain01423_n1_β:
 jmp xchain01423_n3_α
xchain01423_n2_α:
# IR_LIT_STRING
bb01425_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx01426_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01423_n4_α
 xchain01423_n2_β:
 jmp proc_tblcreate_ω
.Lx01426_0:
 .quad .Lx01426_0_s
.Lx01426_0_s:
 .string "table()"
xchain01423_n3_α:
# IR_LIT_INTEGER
bb01427_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01428_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01423_n5_α
 xchain01423_n3_β:
 jmp proc_tblcreate_ω
.Lx01428_0:
 .quad 1
xchain01423_n4_α:
# IR_RETURN
bb00959_α:
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblcreate_γ
xchain01423_n5_α:
# IR_VAR
bb00961_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01423_n6_α
 xchain01423_n5_β:
 jmp proc_tblcreate_ω
xchain01423_n6_α:
# IR_TO
bb01429_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01430_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01423_n7_α
 xchain01423_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01430_0
xchain01423_n7_α:
bb01431_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2010: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2010]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01423_n6_β
 jmp xchain01423_n6_β
 xchain01423_n7_β:
 jmp xchain01423_n6_β
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
xchain01432_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 264]
 cmp rax, 0
 jne xchain01432_n3_α
 mov qword ptr [r12 + 264], 1
 jmp xchain01432_n1_α
 xchain01432_n0_β:
 jmp xchain01432_n3_α
xchain01432_n1_α:
bb00964_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2015: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2015]
 lea rsi, [r12 + 304]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01432_n3_α
 jmp xchain01432_n2_α
 xchain01432_n1_β:
 jmp xchain01432_n3_α
xchain01432_n2_α:
bb01433_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01432_n4_α
 xchain01432_n2_β:
 jmp xchain01432_n3_α
xchain01432_n3_α:
# IR_VAR
bb01434_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01432_n5_α
 xchain01432_n3_β:
 jmp xchain01432_n8_α
xchain01432_n4_α:
# IR_LIT_INTEGER
bb01435_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx01436_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01432_n6_α
 xchain01432_n4_β:
 jmp xchain01432_n3_α
.Lx01436_0:
 .quad 5
xchain01432_n5_α:
# IR_UNOP
bb00965_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01432_n8_α
 cmp eax, 0
 jne xchain01432_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01432_n7_α
 xchain01432_n5_β:
 jmp xchain01432_n8_α
xchain01432_n6_α:
# IR_SUBSCRIPT x[i] variable
bb00967_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01432_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01432_n9_α
 xchain01432_n6_β:
 jmp xchain01432_n3_α
xchain01432_n7_α:
# IR_LIT_STRING
bb01437_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01438_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01432_n10_α
 xchain01432_n7_β:
 jmp proc_tblasgn_ω
.Lx01438_0:
 .quad .Lx01438_0_s
.Lx01438_0_s:
 .string "T[5] := 1"
xchain01432_n8_α:
# IR_LIT_INTEGER
bb00969_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01439_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01432_n11_α
 xchain01432_n8_β:
 jmp proc_tblasgn_ω
.Lx01439_0:
 .quad 1
xchain01432_n9_α:
# IR_LIT_INTEGER
bb01440_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx01441_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01432_n12_α
 xchain01432_n9_β:
 jmp xchain01432_n3_α
.Lx01441_0:
 .quad 1
xchain01432_n10_α:
# IR_RETURN
bb01442_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblasgn_γ
xchain01432_n11_α:
# IR_VAR
bb00970_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01432_n13_α
 xchain01432_n11_β:
 jmp proc_tblasgn_ω
xchain01432_n12_α:
# IR_ASSIGN_VAR write through variable
bb01443_α:
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01432_n3_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain01432_n3_α
 xchain01432_n12_β:
 jmp xchain01432_n3_α
xchain01432_n13_α:
# IR_TO
bb01444_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01445_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01432_n14_α
 xchain01432_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01445_0
xchain01432_n14_α:
# IR_VAR_REF local
bb01446_α:
 lea rdi, [r12 + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01432_n15_α
 xchain01432_n14_β:
 jmp xchain01432_n13_β
xchain01432_n15_α:
# IR_LIT_INTEGER
bb00974_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01447_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01432_n16_α
 xchain01432_n15_β:
 jmp xchain01432_n13_β
.Lx01447_0:
 .quad 5
xchain01432_n16_α:
# IR_SUBSCRIPT x[i] variable
bb00975_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01432_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01432_n17_α
 xchain01432_n16_β:
 jmp xchain01432_n13_β
xchain01432_n17_α:
# IR_LIT_INTEGER
bb01448_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01449_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01432_n18_α
 xchain01432_n17_β:
 jmp xchain01432_n13_β
.Lx01449_0:
 .quad 1
xchain01432_n18_α:
# IR_ASSIGN_VAR write through variable
bb01450_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01432_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01432_n13_β
 xchain01432_n18_β:
 jmp xchain01432_n13_β
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
xchain01451_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 248]
 cmp rax, 0
 jne xchain01451_n3_α
 mov qword ptr [r12 + 248], 1
 jmp xchain01451_n1_α
 xchain01451_n0_β:
 jmp xchain01451_n3_α
xchain01451_n1_α:
bb00977_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2041: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2041]
 lea rsi, [r12 + 288]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain01451_n3_α
 jmp xchain01451_n2_α
 xchain01451_n1_β:
 jmp xchain01451_n3_α
xchain01451_n2_α:
bb01452_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain01451_n4_α
 xchain01451_n2_β:
 jmp xchain01451_n3_α
xchain01451_n3_α:
# IR_VAR
bb01453_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain01451_n5_α
 xchain01451_n3_β:
 jmp xchain01451_n8_α
xchain01451_n4_α:
# IR_LIT_INTEGER
bb01454_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx01455_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain01451_n6_α
 xchain01451_n4_β:
 jmp xchain01451_n3_α
.Lx01455_0:
 .quad 5
xchain01451_n5_α:
# IR_UNOP
bb00980_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01451_n8_α
 cmp eax, 0
 jne xchain01451_n8_α
 mov qword ptr [r12 + 208], 0
 mov qword ptr [r12 + 216], 0
 jmp xchain01451_n7_α
 xchain01451_n5_β:
 jmp xchain01451_n8_α
xchain01451_n6_α:
# IR_SUBSCRIPT x[i] variable
bb00981_α:
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01451_n3_α
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain01451_n9_α
 xchain01451_n6_β:
 jmp xchain01451_n3_α
xchain01451_n7_α:
# IR_LIT_STRING
bb01456_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01457_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01451_n10_α
 xchain01451_n7_β:
 jmp proc_tblsub_ω
.Lx01457_0:
 .quad .Lx01457_0_s
.Lx01457_0_s:
 .string "T[5]"
xchain01451_n8_α:
# IR_LIT_INTEGER
bb00982_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01458_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01451_n11_α
 xchain01451_n8_β:
 jmp proc_tblsub_ω
.Lx01458_0:
 .quad 1
xchain01451_n9_α:
# IR_LIT_INTEGER
bb01459_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx01460_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01451_n12_α
 xchain01451_n9_β:
 jmp xchain01451_n3_α
.Lx01460_0:
 .quad 1
xchain01451_n10_α:
# IR_RETURN
bb01461_α:
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_tblsub_γ
xchain01451_n11_α:
# IR_VAR
bb00983_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01451_n13_α
 xchain01451_n11_β:
 jmp proc_tblsub_ω
xchain01451_n12_α:
# IR_ASSIGN_VAR write through variable
bb01462_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01451_n3_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01451_n3_α
 xchain01451_n12_β:
 jmp xchain01451_n3_α
xchain01451_n13_α:
# IR_TO
bb01463_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01464_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01451_n14_α
 xchain01451_n13_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01464_0
xchain01451_n14_α:
# IR_VAR_REF local
bb01465_α:
 lea rdi, [r12 + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01451_n15_α
 xchain01451_n14_β:
 jmp xchain01451_n13_β
xchain01451_n15_α:
# IR_LIT_INTEGER
bb00986_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01466_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01451_n16_α
 xchain01451_n15_β:
 jmp xchain01451_n13_β
.Lx01466_0:
 .quad 5
xchain01451_n16_α:
# IR_SUBSCRIPT x[i] variable
bb00988_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01451_n13_β
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01451_n17_α
 xchain01451_n16_β:
 jmp xchain01451_n13_β
xchain01451_n17_α:
# IR_DEREF variable -> value
bb01467_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01451_n13_β
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01451_n13_β
 xchain01451_n17_β:
 jmp xchain01451_n13_β
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
xchain01468_n0_α:
# IR_VAR
bb01469_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01468_n1_α
 xchain01468_n0_β:
 jmp xchain01468_n3_α
xchain01468_n1_α:
# IR_UNOP
bb01470_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01468_n3_α
 cmp eax, 0
 jne xchain01468_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01468_n2_α
 xchain01468_n1_β:
 jmp xchain01468_n3_α
xchain01468_n2_α:
# IR_LIT_STRING
bb00990_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01471_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01468_n4_α
 xchain01468_n2_β:
 jmp proc_recconstr_ω
.Lx01471_0:
 .quad .Lx01471_0_s
.Lx01471_0_s:
 .string "record(4,7)"
xchain01468_n3_α:
# IR_LIT_INTEGER
bb01472_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01473_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01468_n5_α
 xchain01468_n3_β:
 jmp proc_recconstr_ω
.Lx01473_0:
 .quad 1
xchain01468_n4_α:
# IR_RETURN
bb01474_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recconstr_γ
xchain01468_n5_α:
# IR_VAR
bb01475_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01468_n6_α
 xchain01468_n5_β:
 jmp proc_recconstr_ω
xchain01468_n6_α:
# IR_TO
bb00992_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01476_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01468_n7_α
 xchain01468_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01476_0
xchain01468_n7_α:
# IR_LIT_INTEGER
bb00994_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx01477_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain01468_n8_α
 xchain01468_n7_β:
 jmp xchain01468_n6_β
.Lx01477_0:
 .quad 4
xchain01468_n8_α:
# IR_LIT_INTEGER
bb01478_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01479_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01468_n9_α
 xchain01468_n8_β:
 jmp xchain01468_n6_β
.Lx01479_0:
 .quad 7
xchain01468_n9_α:
bb00996_α:
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
  .Lrkfn2076: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2076]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01468_n6_β
 jmp xchain01468_n6_β
 xchain01468_n9_β:
 jmp xchain01468_n6_β
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
xchain01480_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 232]
 cmp rax, 0
 jne xchain01480_n5_α
 mov qword ptr [r12 + 232], 1
 jmp xchain01480_n1_α
 xchain01480_n0_β:
 jmp xchain01480_n5_α
xchain01480_n1_α:
# IR_LIT_INTEGER
bb01481_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx01482_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01480_n2_α
 xchain01480_n1_β:
 jmp xchain01480_n5_α
.Lx01482_0:
 .quad 4
xchain01480_n2_α:
# IR_LIT_INTEGER
bb00997_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx01483_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain01480_n3_α
 xchain01480_n2_β:
 jmp xchain01480_n5_α
.Lx01483_0:
 .quad 7
xchain01480_n3_α:
bb01484_α:
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
  .Lrkfn2083: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2083]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain01480_n5_α
 jmp xchain01480_n4_α
 xchain01480_n3_β:
 jmp xchain01480_n5_α
xchain01480_n4_α:
bb01485_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain01480_n5_α
 xchain01480_n4_β:
 jmp xchain01480_n5_α
xchain01480_n5_α:
# IR_VAR
bb01486_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 216], rax
 jmp xchain01480_n6_α
 xchain01480_n5_β:
 jmp xchain01480_n8_α
xchain01480_n6_α:
# IR_UNOP
bb00998_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01480_n8_α
 cmp eax, 0
 jne xchain01480_n8_α
 mov qword ptr [r12 + 192], 0
 mov qword ptr [r12 + 200], 0
 jmp xchain01480_n7_α
 xchain01480_n6_β:
 jmp xchain01480_n8_α
xchain01480_n7_α:
# IR_LIT_STRING
bb01000_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx01487_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain01480_n9_α
 xchain01480_n7_β:
 jmp proc_reccopy_ω
.Lx01487_0:
 .quad .Lx01487_0_s
.Lx01487_0_s:
 .string "copy(R)"
xchain01480_n8_α:
# IR_LIT_INTEGER
bb01488_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01489_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01480_n10_α
 xchain01480_n8_β:
 jmp proc_reccopy_ω
.Lx01489_0:
 .quad 1
xchain01480_n9_α:
# IR_RETURN
bb01490_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_reccopy_γ
xchain01480_n10_α:
# IR_VAR
bb01491_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01480_n11_α
 xchain01480_n10_β:
 jmp proc_reccopy_ω
xchain01480_n11_α:
# IR_TO
bb01492_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01493_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01480_n12_α
 xchain01480_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01493_0
xchain01480_n12_α:
# IR_VAR
bb01003_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 136], rax
 jmp xchain01480_n13_α
 xchain01480_n12_β:
 jmp xchain01480_n11_β
xchain01480_n13_α:
bb01005_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn2098: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2098]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01480_n11_β
 jmp xchain01480_n11_β
 xchain01480_n13_β:
 jmp xchain01480_n11_β
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
xchain01494_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 216]
 cmp rax, 0
 jne xchain01494_n5_α
 mov qword ptr [r12 + 216], 1
 jmp xchain01494_n1_α
 xchain01494_n0_β:
 jmp xchain01494_n5_α
xchain01494_n1_α:
# IR_LIT_INTEGER
bb01007_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx01495_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain01494_n2_α
 xchain01494_n1_β:
 jmp xchain01494_n5_α
.Lx01495_0:
 .quad 4
xchain01494_n2_α:
# IR_LIT_INTEGER
bb01496_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx01497_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain01494_n3_α
 xchain01494_n2_β:
 jmp xchain01494_n5_α
.Lx01497_0:
 .quad 7
xchain01494_n3_α:
bb01498_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn2105: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2105]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01494_n5_α
 jmp xchain01494_n4_α
 xchain01494_n3_β:
 jmp xchain01494_n5_α
xchain01494_n4_α:
bb01499_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01494_n5_α
 xchain01494_n4_β:
 jmp xchain01494_n5_α
xchain01494_n5_α:
# IR_VAR
bb01009_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01494_n6_α
 xchain01494_n5_β:
 jmp xchain01494_n8_α
xchain01494_n6_α:
# IR_UNOP
bb01011_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01494_n8_α
 cmp eax, 0
 jne xchain01494_n8_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01494_n7_α
 xchain01494_n6_β:
 jmp xchain01494_n8_α
xchain01494_n7_α:
# IR_LIT_STRING
bb01500_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01501_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01494_n9_α
 xchain01494_n7_β:
 jmp proc_recfield_ω
.Lx01501_0:
 .quad .Lx01501_0_s
.Lx01501_0_s:
 .string "R.f"
xchain01494_n8_α:
# IR_LIT_INTEGER
bb01502_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01503_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01494_n10_α
 xchain01494_n8_β:
 jmp proc_recfield_ω
.Lx01503_0:
 .quad 1
xchain01494_n9_α:
# IR_RETURN
bb01504_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_recfield_γ
xchain01494_n10_α:
# IR_VAR
bb01505_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01494_n11_α
 xchain01494_n10_β:
 jmp proc_recfield_ω
xchain01494_n11_α:
# IR_TO
bb01014_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01506_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01494_n12_α
 xchain01494_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01506_0
xchain01494_n12_α:
# IR_VAR
bb01015_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 120], rax
 jmp xchain01494_n13_α
 xchain01494_n12_β:
 jmp xchain01494_n11_β
xchain01494_n13_α:
# IR_FIELD_GET
bb01507_α:
 mov rdi, qword ptr [rip + .Lx01508_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01494_n11_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01494_n11_β
 xchain01494_n13_β:
 jmp xchain01494_n11_β
.Lx01508_0:
 .quad .Lx01508_0_s
.Lx01508_0_s:
 .string "y"
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
xchain01509_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 216]
 cmp rax, 0
 jne xchain01509_n3_α
 mov qword ptr [r12 + 216], 1
 jmp xchain01509_n1_α
 xchain01509_n0_β:
 jmp xchain01509_n3_α
xchain01509_n1_α:
bb01510_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2124: .string "bigrec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2124]
 lea rsi, [r12 + 256]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01509_n3_α
 jmp xchain01509_n2_α
 xchain01509_n1_β:
 jmp xchain01509_n3_α
xchain01509_n2_α:
bb01511_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01509_n3_α
 xchain01509_n2_β:
 jmp xchain01509_n3_α
xchain01509_n3_α:
# IR_VAR
bb01512_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01509_n4_α
 xchain01509_n3_β:
 jmp xchain01509_n6_α
xchain01509_n4_α:
# IR_UNOP
bb01019_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01509_n6_α
 cmp eax, 0
 jne xchain01509_n6_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01509_n5_α
 xchain01509_n4_β:
 jmp xchain01509_n6_α
xchain01509_n5_α:
# IR_LIT_STRING
bb01021_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01513_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01509_n7_α
 xchain01509_n5_β:
 jmp proc_bigfield_ω
.Lx01513_0:
 .quad .Lx01513_0_s
.Lx01513_0_s:
 .string "R2.f"
xchain01509_n6_α:
# IR_LIT_INTEGER
bb01514_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01515_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01509_n8_α
 xchain01509_n6_β:
 jmp proc_bigfield_ω
.Lx01515_0:
 .quad 1
xchain01509_n7_α:
# IR_RETURN
bb01516_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bigfield_γ
xchain01509_n8_α:
# IR_VAR
bb01517_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01509_n9_α
 xchain01509_n8_β:
 jmp proc_bigfield_ω
xchain01509_n9_α:
# IR_TO
bb01518_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01519_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01509_n10_α
 xchain01509_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01519_0
xchain01509_n10_α:
# IR_VAR
bb01024_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 120], rax
 jmp xchain01509_n11_α
 xchain01509_n10_β:
 jmp xchain01509_n9_β
xchain01509_n11_α:
# IR_FIELD_GET
bb01025_α:
 mov rdi, qword ptr [rip + .Lx01520_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01509_n9_β
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01509_n9_β
 xchain01509_n11_β:
 jmp xchain01509_n9_β
.Lx01520_0:
 .quad .Lx01520_0_s
.Lx01520_0_s:
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
xchain01521_n0_α:
# IR_VAR
bb01027_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01521_n1_α
 xchain01521_n0_β:
 jmp xchain01521_n3_α
xchain01521_n1_α:
# IR_UNOP
bb01522_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01521_n3_α
 cmp eax, 0
 jne xchain01521_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01521_n2_α
 xchain01521_n1_β:
 jmp xchain01521_n3_α
xchain01521_n2_α:
# IR_LIT_STRING
bb01523_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01524_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01521_n4_α
 xchain01521_n2_β:
 jmp proc_globasgn_ω
.Lx01524_0:
 .quad .Lx01524_0_s
.Lx01524_0_s:
 .string "global := 1"
xchain01521_n3_α:
# IR_LIT_INTEGER
bb01029_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01525_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01521_n5_α
 xchain01521_n3_β:
 jmp proc_globasgn_ω
.Lx01525_0:
 .quad 1
xchain01521_n4_α:
# IR_RETURN
bb01526_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_globasgn_γ
xchain01521_n5_α:
# IR_VAR
bb01527_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01521_n6_α
 xchain01521_n5_β:
 jmp proc_globasgn_ω
xchain01521_n6_α:
# IR_TO
bb01528_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01529_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01521_n7_α
 xchain01521_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01529_0
xchain01521_n7_α:
# IR_LIT_INTEGER
bb01032_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01530_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01521_n8_α
 xchain01521_n7_β:
 jmp xchain01521_n6_β
.Lx01530_0:
 .quad 1
xchain01521_n8_α:
# IR_ASSIGN gva
bb01033_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01521_n6_β
 xchain01521_n8_β:
 jmp xchain01521_n6_β
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
xchain01531_n0_α:
# IR_VAR
bb01532_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01531_n1_α
 xchain01531_n0_β:
 jmp xchain01531_n3_α
xchain01531_n1_α:
# IR_UNOP
bb01533_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01531_n3_α
 cmp eax, 0
 jne xchain01531_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01531_n2_α
 xchain01531_n1_β:
 jmp xchain01531_n3_α
xchain01531_n2_α:
# IR_LIT_STRING
bb01534_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01535_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01531_n4_α
 xchain01531_n2_β:
 jmp proc_loclasgn_ω
.Lx01535_0:
 .quad .Lx01535_0_s
.Lx01535_0_s:
 .string "local := 1"
xchain01531_n3_α:
# IR_LIT_INTEGER
bb01536_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01537_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01531_n5_α
 xchain01531_n3_β:
 jmp proc_loclasgn_ω
.Lx01537_0:
 .quad 1
xchain01531_n4_α:
# IR_RETURN
bb01036_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_loclasgn_γ
xchain01531_n5_α:
# IR_VAR
bb01038_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01531_n6_α
 xchain01531_n5_β:
 jmp proc_loclasgn_ω
xchain01531_n6_α:
# IR_TO
bb01040_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01538_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01531_n7_α
 xchain01531_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01538_0
xchain01531_n7_α:
# IR_LIT_INTEGER
bb01042_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01539_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01531_n8_α
 xchain01531_n7_β:
 jmp xchain01531_n6_β
.Lx01539_0:
 .quad 1
xchain01531_n8_α:
bb01043_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01531_n6_β
 xchain01531_n8_β:
 jmp xchain01531_n6_β
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
xchain01540_n0_α:
# IR_VAR
bb01044_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01540_n1_α
 xchain01540_n0_β:
 jmp xchain01540_n3_α
xchain01540_n1_α:
# IR_UNOP
bb01541_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01540_n3_α
 cmp eax, 0
 jne xchain01540_n3_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01540_n2_α
 xchain01540_n1_β:
 jmp xchain01540_n3_α
xchain01540_n2_α:
# IR_LIT_STRING
bb01542_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01543_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01540_n4_α
 xchain01540_n2_β:
 jmp proc_statasgn_ω
.Lx01543_0:
 .quad .Lx01543_0_s
.Lx01543_0_s:
 .string "static := 1"
xchain01540_n3_α:
# IR_LIT_INTEGER
bb01544_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01545_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01540_n5_α
 xchain01540_n3_β:
 jmp proc_statasgn_ω
.Lx01545_0:
 .quad 1
xchain01540_n4_α:
# IR_RETURN
bb01047_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_statasgn_γ
xchain01540_n5_α:
# IR_VAR
bb01546_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01540_n6_α
 xchain01540_n5_β:
 jmp proc_statasgn_ω
xchain01540_n6_α:
# IR_TO
bb01547_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01548_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01540_n7_α
 xchain01540_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01548_0
xchain01540_n7_α:
# IR_LIT_INTEGER
bb01049_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx01549_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain01540_n8_α
 xchain01540_n7_β:
 jmp xchain01540_n6_β
.Lx01549_0:
 .quad 1
xchain01540_n8_α:
bb01050_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain01540_n6_β
 xchain01540_n8_β:
 jmp xchain01540_n6_β
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
xchain01550_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 264]
 cmp rax, 0
 jne xchain01550_n5_α
 mov qword ptr [r12 + 264], 1
 jmp xchain01550_n1_α
 xchain01550_n0_β:
 jmp xchain01550_n5_α
xchain01550_n1_α:
# IR_LIT_STRING
bb01053_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx01551_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01550_n2_α
 xchain01550_n1_β:
 jmp xchain01550_n5_α
.Lx01551_0:
 .quad .Lx01551_0_s
.Lx01551_0_s:
 .string "/dev/zero"
xchain01550_n2_α:
# IR_LIT_STRING
bb01055_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx01552_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain01550_n3_α
 xchain01550_n2_β:
 jmp xchain01550_n5_α
.Lx01552_0:
 .quad .Lx01552_0_s
.Lx01552_0_s:
 .string "ru"
xchain01550_n3_α:
bb01553_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn2184: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2184]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01550_n5_α
 jmp xchain01550_n4_α
 xchain01550_n3_β:
 jmp xchain01550_n5_α
xchain01550_n4_α:
bb01554_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01550_n5_α
 xchain01550_n4_β:
 jmp xchain01550_n5_α
xchain01550_n5_α:
# IR_VAR
bb01555_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01550_n6_α
 xchain01550_n5_β:
 jmp xchain01550_n8_α
xchain01550_n6_α:
# IR_UNOP
bb01556_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01550_n8_α
 cmp eax, 0
 jne xchain01550_n8_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01550_n7_α
 xchain01550_n6_β:
 jmp xchain01550_n8_α
xchain01550_n7_α:
# IR_LIT_STRING
bb01557_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01558_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01550_n9_α
 xchain01550_n7_β:
 jmp proc_readz_ω
.Lx01558_0:
 .quad .Lx01558_0_s
.Lx01558_0_s:
 .string "reads(zero,8)"
xchain01550_n8_α:
# IR_LIT_INTEGER
bb01559_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01560_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01550_n10_α
 xchain01550_n8_β:
 jmp proc_readz_ω
.Lx01560_0:
 .quad 1
xchain01550_n9_α:
# IR_RETURN
bb01059_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_readz_γ
xchain01550_n10_α:
# IR_VAR
bb01060_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01550_n11_α
 xchain01550_n10_β:
 jmp proc_readz_ω
xchain01550_n11_α:
# IR_TO
bb01561_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01562_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01550_n12_α
 xchain01550_n11_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01562_0
xchain01550_n12_α:
# IR_VAR
bb01563_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 152], rax
 jmp xchain01550_n13_α
 xchain01550_n12_β:
 jmp xchain01550_n11_β
xchain01550_n13_α:
# IR_LIT_INTEGER
bb01564_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx01565_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01550_n14_α
 xchain01550_n13_β:
 jmp xchain01550_n11_β
.Lx01565_0:
 .quad 8
xchain01550_n14_α:
bb01566_α:
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
  .Lrkfn2200: .string "reads"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2200]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01550_n11_β
 jmp xchain01550_n11_β
 xchain01550_n14_β:
 jmp xchain01550_n11_β
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
xchain01567_n0_α:
# IR_VAR
bb01064_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01567_n1_α
 xchain01567_n0_β:
 jmp xchain01567_n3_α
xchain01567_n1_α:
# IR_UNOP
bb01568_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01567_n3_α
 cmp eax, 0
 jne xchain01567_n3_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01567_n2_α
 xchain01567_n1_β:
 jmp xchain01567_n3_α
xchain01567_n2_α:
# IR_LIT_STRING
bb01569_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01570_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01567_n4_α
 xchain01567_n2_β:
 jmp proc_writecon_ω
.Lx01570_0:
 .quad .Lx01570_0_s
.Lx01570_0_s:
 .string "write(\"a...z\")"
xchain01567_n3_α:
# IR_LIT_INTEGER
bb01571_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01572_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01567_n5_α
 xchain01567_n3_β:
 jmp proc_writecon_ω
.Lx01572_0:
 .quad 1
xchain01567_n4_α:
# IR_RETURN
bb01573_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writecon_γ
xchain01567_n5_α:
# IR_VAR
bb01066_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01567_n6_α
 xchain01567_n5_β:
 jmp proc_writecon_ω
xchain01567_n6_α:
# IR_TO
bb01574_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01575_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01567_n7_α
 xchain01567_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01575_0
xchain01567_n7_α:
# IR_VAR gva
bb01576_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01567_n8_α
 xchain01567_n7_β:
 jmp xchain01567_n6_β
xchain01567_n8_α:
# IR_LIT_STRING
bb01068_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01577_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01567_n9_α
 xchain01567_n8_β:
 jmp xchain01567_n6_β
.Lx01577_0:
 .quad .Lx01577_0_s
.Lx01577_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain01567_n9_α:
bb01070_α:
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
  .Lrkfn2215: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2215]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01567_n6_β
 jmp xchain01567_n6_β
 xchain01567_n9_β:
 jmp xchain01567_n6_β
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
xchain01578_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 264]
 cmp rax, 0
 jne xchain01578_n3_α
 mov qword ptr [r12 + 264], 1
 jmp xchain01578_n1_α
 xchain01578_n0_β:
 jmp xchain01578_n3_α
xchain01578_n1_α:
# IR_LIT_STRING
bb01073_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx01579_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain01578_n2_α
 xchain01578_n1_β:
 jmp xchain01578_n3_α
.Lx01579_0:
 .quad .Lx01579_0_s
.Lx01579_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain01578_n2_α:
bb01075_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01578_n3_α
 xchain01578_n2_β:
 jmp xchain01578_n3_α
xchain01578_n3_α:
# IR_VAR
bb01580_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
 jmp xchain01578_n4_α
 xchain01578_n3_β:
 jmp xchain01578_n6_α
xchain01578_n4_α:
# IR_UNOP
bb01581_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01578_n6_α
 cmp eax, 0
 jne xchain01578_n6_α
 mov qword ptr [r12 + 224], 0
 mov qword ptr [r12 + 232], 0
 jmp xchain01578_n5_α
 xchain01578_n4_β:
 jmp xchain01578_n6_α
xchain01578_n5_α:
# IR_LIT_STRING
bb01582_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx01583_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain01578_n7_α
 xchain01578_n5_β:
 jmp proc_writestr_ω
.Lx01583_0:
 .quad .Lx01583_0_s
.Lx01583_0_s:
 .string "write(s)"
xchain01578_n6_α:
# IR_LIT_INTEGER
bb01584_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01585_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01578_n8_α
 xchain01578_n6_β:
 jmp proc_writestr_ω
.Lx01585_0:
 .quad 1
xchain01578_n7_α:
# IR_RETURN
bb01586_α:
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writestr_γ
xchain01578_n8_α:
# IR_VAR
bb01587_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01578_n9_α
 xchain01578_n8_β:
 jmp proc_writestr_ω
xchain01578_n9_α:
# IR_TO
bb01079_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01588_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01578_n10_α
 xchain01578_n9_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01588_0
xchain01578_n10_α:
# IR_VAR gva
bb01081_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain01578_n11_α
 xchain01578_n10_β:
 jmp xchain01578_n9_β
xchain01578_n11_α:
# IR_VAR
bb01589_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 168], rax
 jmp xchain01578_n12_α
 xchain01578_n11_β:
 jmp xchain01578_n9_β
xchain01578_n12_α:
bb01590_α:
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
  .Lrkfn2235: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2235]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01578_n9_β
 jmp xchain01578_n9_β
 xchain01578_n12_β:
 jmp xchain01578_n9_β
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
xchain01591_n0_α:
# IR_VAR
bb01592_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
 jmp xchain01591_n1_α
 xchain01591_n0_β:
 jmp xchain01591_n3_α
xchain01591_n1_α:
# IR_UNOP
bb01593_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01591_n3_α
 cmp eax, 0
 jne xchain01591_n3_α
 mov qword ptr [r12 + 256], 0
 mov qword ptr [r12 + 264], 0
 jmp xchain01591_n2_α
 xchain01591_n1_β:
 jmp xchain01591_n3_α
xchain01591_n2_α:
# IR_LIT_STRING
bb01083_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx01594_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain01591_n4_α
 xchain01591_n2_β:
 jmp proc_cxcreate_ω
.Lx01594_0:
 .quad .Lx01594_0_s
.Lx01594_0_s:
 .string "create |\"a\""
xchain01591_n3_α:
# IR_LIT_INTEGER
bb01595_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01596_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01591_n5_α
 xchain01591_n3_β:
 jmp proc_cxcreate_ω
.Lx01596_0:
 .quad 1
xchain01591_n4_α:
# IR_RETURN
bb01597_α:
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxcreate_γ
xchain01591_n5_α:
# IR_VAR
bb01598_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01591_n6_α
 xchain01591_n5_β:
 jmp proc_cxcreate_ω
xchain01591_n6_α:
# IR_TO
bb01599_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01600_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01591_n7_α
 xchain01591_n6_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01600_0
xchain01591_n7_α:
# IR_CREATE
bb01084_α:
 mov qword ptr [r12 + 112], r12
 mov qword ptr [r12 + 120], r13
 mov qword ptr [r12 + 128], r14
 mov qword ptr [r12 + 136], r15
 mov qword ptr [r12 + 144], rbx
 mov qword ptr [r12 + 152], rbp
 lea rdi, [rip + xchain01591_n8_α]
 lea rsi, [r12 + 112]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 96], rax
 jmp xchain01591_n6_β
 xchain01591_n7_β:
 jmp xchain01591_n6_β
xchain01591_n8_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 176], 0
jmp xchain01591_n10_α
xchain01591_n8_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], 1
jmp xchain01591_n9_α
xchain01591_n8_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 176]
 cmp rax, 1
je xchain01591_n8_α
jmp xchain01591_n11_α
xchain01591_n8_β:
jmp xchain01591_n8_rt
xchain01591_n9_α:
# IR_CORET yield
bb01601_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01591_n8_β
xchain01591_n10_α:
# IR_LIT_STRING
bb01086_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx01602_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain01591_n8_ry
 xchain01591_n10_β:
 jmp xchain01591_n8_rt
.Lx01602_0:
 .quad .Lx01602_0_s
.Lx01602_0_s:
 .string "a"
xchain01591_n11_α:
# IR_COFAIL exhausted
bb01087_α:
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
xchain01603_n0_α:
# IR_INITIAL
 mov rax, qword ptr [r12 + 216]
 cmp rax, 0
 jne xchain01603_n4_α
 mov qword ptr [r12 + 216], 1
 jmp xchain01603_n1_α
 xchain01603_n0_β:
 jmp xchain01603_n4_α
xchain01603_n1_α:
# IR_CREATE
bb01091_α:
 mov qword ptr [r12 + 256], r12
 mov qword ptr [r12 + 264], r13
 mov qword ptr [r12 + 272], r14
 mov qword ptr [r12 + 280], r15
 mov qword ptr [r12 + 288], rbx
 mov qword ptr [r12 + 296], rbp
 lea rdi, [rip + xchain01603_n3_α]
 lea rsi, [r12 + 256]
 call scrip_coexpr_create@PLT
 mov qword ptr [r12 + 240], rax
 jmp xchain01603_n2_α
 xchain01603_n1_β:
 jmp xchain01603_n4_α
xchain01603_n2_α:
bb01093_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01603_n4_α
 xchain01603_n2_β:
 jmp xchain01603_n4_α
xchain01603_n3_α:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 320], 0
jmp xchain01603_n6_α
xchain01603_n3_ry:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain01603_n5_α
xchain01603_n3_rt:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 320]
 cmp rax, 1
je xchain01603_n3_α
jmp xchain01603_n15_α
xchain01603_n3_β:
jmp xchain01603_n3_rt
xchain01603_n4_α:
# IR_VAR
bb01604_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain01603_n7_α
 xchain01603_n4_β:
 jmp xchain01603_n9_α
xchain01603_n5_α:
# IR_CORET yield
bb01605_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01603_n3_β
xchain01603_n6_α:
# IR_LIT_STRING
bb01606_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx01607_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain01603_n3_ry
 xchain01603_n6_β:
 jmp xchain01603_n3_rt
.Lx01607_0:
 .quad .Lx01607_0_s
.Lx01607_0_s:
 .string "a"
xchain01603_n7_α:
# IR_UNOP
bb01608_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je xchain01603_n9_α
 cmp eax, 0
 jne xchain01603_n9_α
 mov qword ptr [r12 + 176], 0
 mov qword ptr [r12 + 184], 0
 jmp xchain01603_n8_α
 xchain01603_n7_β:
 jmp xchain01603_n9_α
xchain01603_n8_α:
# IR_LIT_STRING
bb01609_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx01610_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain01603_n10_α
 xchain01603_n8_β:
 jmp proc_cxget_ω
.Lx01610_0:
 .quad .Lx01610_0_s
.Lx01610_0_s:
 .string "@C"
xchain01603_n9_α:
# IR_LIT_INTEGER
bb01097_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx01611_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain01603_n11_α
 xchain01603_n9_β:
 jmp proc_cxget_ω
.Lx01611_0:
 .quad 1
xchain01603_n10_α:
# IR_RETURN
bb01099_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_cxget_γ
xchain01603_n11_α:
# IR_VAR
bb01612_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
 jmp xchain01603_n12_α
 xchain01603_n11_β:
 jmp proc_cxget_ω
xchain01603_n12_α:
# IR_TO
bb01613_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx01614_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain01603_n13_α
 xchain01603_n12_β:
 inc qword ptr [r12 + 48]
 jmp .Lx01614_0
xchain01603_n13_α:
# IR_VAR
bb01615_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 120], rax
 jmp xchain01603_n14_α
 xchain01603_n13_β:
 jmp xchain01603_n12_β
xchain01603_n14_α:
# IR_ACTIVATE
bb01616_α:
 mov rdi, qword ptr [r12 + 112]
 xor esi, esi
 xor edx, edx
 lea rcx, [r12 + 96]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain01603_n12_β
 jmp xchain01603_n12_β
 xchain01603_n14_β:
 jmp xchain01603_n12_β
xchain01603_n15_α:
# IR_COFAIL exhausted
bb01100_α:
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
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .bss
  .align 16
__gva: .space 64, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 4
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  xor edi, edi
  xor esi, esi
  call rt_make_list@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
  xor esi, esi
  call main_α
  xor eax, eax
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
xchain01617_n0_α:
# IR_LIT_INTEGER
bb01618_α:
 mov qword ptr [r12 + 6784], 6
 mov rax, qword ptr [rip + .Lx01619_0]
 mov qword ptr [r12 + 6792], rax
 jmp xchain01617_n1_α
 xchain01617_n0_β:
 jmp xchain01617_n10_α
.Lx01619_0:
 .quad 1000
xchain01617_n1_α:
# IR_VAR_REF local
bb01620_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6848], rax
 mov qword ptr [r12 + 6856], rdx
 jmp xchain01617_n2_α
 xchain01617_n1_β:
 jmp xchain01617_n5_α
xchain01617_n2_α:
# IR_LIT_INTEGER
bb01621_α:
 mov qword ptr [r12 + 6864], 6
 mov rax, qword ptr [rip + .Lx01622_0]
 mov qword ptr [r12 + 6872], rax
 jmp xchain01617_n3_α
 xchain01617_n2_β:
 jmp xchain01617_n5_α
.Lx01622_0:
 .quad 1
xchain01617_n3_α:
# IR_SUBSCRIPT x[i] variable
bb01102_α:
 mov rdi, qword ptr [r12 + 6848]
 mov rsi, qword ptr [r12 + 6856]
 mov rdx, qword ptr [r12 + 6864]
 mov rcx, qword ptr [r12 + 6872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01617_n5_α
 mov qword ptr [r12 + 6880], rax
 mov qword ptr [r12 + 6888], rdx
 jmp xchain01617_n4_α
 xchain01617_n3_β:
 jmp xchain01617_n5_α
xchain01617_n4_α:
# IR_DEREF variable -> value
bb01623_α:
 mov rdi, qword ptr [r12 + 6880]
 mov rsi, qword ptr [r12 + 6888]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01617_n5_α
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 jmp xchain01617_n6_α
 xchain01617_n4_β:
 jmp xchain01617_n5_α
xchain01617_n5_α:
# IR_VAR
bb01624_α:
 mov rax, qword ptr [r12 + 6976]
 mov qword ptr [r12 + 6832], rax
 mov rax, qword ptr [r12 + 6984]
 mov qword ptr [r12 + 6840], rax
 jmp xchain01617_n7_α
 xchain01617_n5_β:
 jmp xchain01617_n10_α
xchain01617_n6_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01103_α:
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6800], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6808], rax
 lea rax, [rip + xchain01617_n5_α]
 mov qword ptr [r12 + 6816], rax
 jmp xchain01617_n8_α
 xchain01617_n6_β:
 jmp xchain01617_n10_α
xchain01617_n7_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb01105_α:
 mov rax, qword ptr [r12 + 6832]
 mov qword ptr [r12 + 6800], rax
 mov rax, qword ptr [r12 + 6840]
 mov qword ptr [r12 + 6808], rax
 lea rax, [rip + xchain01617_n10_α]
 mov qword ptr [r12 + 6816], rax
 jmp xchain01617_n8_α
 xchain01617_n7_β:
 jmp xchain01617_n10_α
xchain01617_n8_α:
bb01107_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6784]
 cmp eax, 100
 je .Lx01625_0
 mov eax, dword ptr [r12 + 6800]
 cmp eax, 100
 je .Lx01625_0
 mov eax, dword ptr [r12 + 6784]
 cmp eax, 6
 jne .Lx01625_2
 mov eax, dword ptr [r12 + 6800]
 cmp eax, 6
 jne .Lx01625_2
.Lx01625_1:
 mov rax, qword ptr [r12 + 6792]
 mov rcx, qword ptr [r12 + 6808]
 imul rax, rcx
 mov qword ptr [r12 + 6768], 6
 mov qword ptr [r12 + 6776], rax
 jmp xchain01617_n11_α
.Lx01625_0:
 mov rdi, qword ptr [r12 + 6784]
 mov rsi, qword ptr [r12 + 6792]
 mov rdx, qword ptr [r12 + 6800]
 mov rcx, qword ptr [r12 + 6808]
 mov r8d, 2
 lea r9, [r12 + 6768]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01625_3
.Lx01625_2:
 mov rdi, qword ptr [r12 + 6784]
 mov rsi, qword ptr [r12 + 6792]
 mov rdx, qword ptr [r12 + 6800]
 mov rcx, qword ptr [r12 + 6808]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01617_n10_α
 mov qword ptr [r12 + 6768], rax
 mov qword ptr [r12 + 6776], rdx
.Lx01625_3:
 jmp xchain01617_n11_α
 xchain01617_n8_β:
 jmp xchain01617_n10_α
xchain01617_n9_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb01109_α:
 jmp qword ptr [r12 + 6816]
 xchain01617_n9_β:
 jmp xchain01617_n10_α
xchain01617_n10_α:
# IR_LIT_STRING
bb01110_α:
 mov qword ptr [r12 + 6688], 1
 mov rax, qword ptr [rip + .Lx01626_0]
 mov qword ptr [r12 + 6696], rax
 jmp xchain01617_n12_α
 xchain01617_n10_β:
 jmp xchain01617_n16_α
.Lx01626_0:
 .quad .Lx01626_0_s
.Lx01626_0_s:
 .string "/dev/null"
xchain01617_n11_α:
bb01627_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6768] -> [r12+6752]
 mov rax, qword ptr [r12 + 6768]
 mov qword ptr [r12 + 6752], rax
 mov rax, qword ptr [r12 + 6776]
 mov qword ptr [r12 + 6760], rax
  .section .rodata
  .Lrkfn2305: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2305]
 lea rsi, [r12 + 6752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6736], rax
 mov qword ptr [r12 + 6744], rdx
 cmp eax, 99
 je xchain01617_n10_α
 jmp xchain01617_n13_α
 xchain01617_n11_β:
 jmp xchain01617_n10_α
xchain01617_n12_α:
# IR_LIT_STRING
bb01628_α:
 mov qword ptr [r12 + 6704], 1
 mov rax, qword ptr [rip + .Lx01629_0]
 mov qword ptr [r12 + 6712], rax
 jmp xchain01617_n14_α
 xchain01617_n12_β:
 jmp xchain01617_n16_α
.Lx01629_0:
 .quad .Lx01629_0_s
.Lx01629_0_s:
 .string "w"
xchain01617_n13_α:
# IR_ASSIGN gva
bb01630_α:
 mov rax, qword ptr [r12 + 6736]
 mov rdx, qword ptr [r12 + 6744]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 6720], rax
 mov qword ptr [r12 + 6728], rdx
 jmp xchain01617_n10_α
 xchain01617_n13_β:
 jmp xchain01617_n10_α
xchain01617_n14_α:
bb01631_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6688] -> [r12+6656]
 mov rax, qword ptr [r12 + 6688]
 mov qword ptr [r12 + 6656], rax
 mov rax, qword ptr [r12 + 6696]
 mov qword ptr [r12 + 6664], rax
# marshal arg1 = producer-box slot [r12+6704] -> [r12+6672]
 mov rax, qword ptr [r12 + 6704]
 mov qword ptr [r12 + 6672], rax
 mov rax, qword ptr [r12 + 6712]
 mov qword ptr [r12 + 6680], rax
  .section .rodata
  .Lrkfn2309: .string "open"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2309]
 lea rsi, [r12 + 6656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6640], rax
 mov qword ptr [r12 + 6648], rdx
 cmp eax, 99
 je xchain01617_n16_α
 jmp xchain01617_n15_α
 xchain01617_n14_β:
 jmp xchain01617_n16_α
xchain01617_n15_α:
# IR_ASSIGN gva
bb01632_α:
 mov rax, qword ptr [r12 + 6640]
 mov rdx, qword ptr [r12 + 6648]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 6624], rax
 mov qword ptr [r12 + 6632], rdx
 jmp xchain01617_n16_α
 xchain01617_n15_β:
 jmp xchain01617_n16_α
xchain01617_n16_α:
# IR_VAR gva
bb01633_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 jmp xchain01617_n17_α
 xchain01617_n16_β:
 jmp xchain01617_n18_α
xchain01617_n17_α:
bb01115_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6608]
 mov rdx, qword ptr [r12 + 6616]
 mov qword ptr [r12 + 6944], rax
 mov qword ptr [r12 + 6952], rdx
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain01617_n18_α
 xchain01617_n17_β:
 jmp xchain01617_n18_α
xchain01617_n18_α:
# IR_VAR
bb01116_α:
 mov rax, qword ptr [r12 + 6944]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6952]
 mov qword ptr [r12 + 6504], rax
 jmp xchain01617_n19_α
 xchain01617_n18_β:
 jmp xchain01617_n23_α
xchain01617_n19_α:
# IR_LIT_INTEGER
bb01634_α:
 mov qword ptr [r12 + 6560], 6
 mov rax, qword ptr [rip + .Lx01635_0]
 mov qword ptr [r12 + 6568], rax
 jmp xchain01617_n20_α
 xchain01617_n19_β:
 jmp xchain01617_n23_α
.Lx01635_0:
 .quad 1000
xchain01617_n20_α:
# IR_VAR
bb01636_α:
 mov rax, qword ptr [r12 + 6960]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6968]
 mov qword ptr [r12 + 6584], rax
 jmp xchain01617_n21_α
 xchain01617_n20_β:
 jmp xchain01617_n23_α
xchain01617_n21_α:
bb01637_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6560]
 cmp eax, 100
 je .Lx01638_0
 mov eax, dword ptr [r12 + 6960]
 cmp eax, 100
 je .Lx01638_0
 mov eax, dword ptr [r12 + 6560]
 cmp eax, 6
 jne .Lx01638_2
 mov eax, dword ptr [r12 + 6960]
 cmp eax, 6
 jne .Lx01638_2
.Lx01638_1:
 mov rax, qword ptr [r12 + 6568]
 mov rcx, qword ptr [r12 + 6968]
 imul rax, rcx
 mov qword ptr [r12 + 6544], 6
 mov qword ptr [r12 + 6552], rax
 jmp xchain01617_n22_α
.Lx01638_0:
 mov rdi, qword ptr [r12 + 6560]
 mov rsi, qword ptr [r12 + 6568]
 mov rdx, qword ptr [r12 + 6960]
 mov rcx, qword ptr [r12 + 6968]
 mov r8d, 2
 lea r9, [r12 + 6544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01638_3
.Lx01638_2:
 mov rdi, qword ptr [r12 + 6560]
 mov rsi, qword ptr [r12 + 6568]
 mov rdx, qword ptr [r12 + 6960]
 mov rcx, qword ptr [r12 + 6968]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01617_n23_α
 mov qword ptr [r12 + 6544], rax
 mov qword ptr [r12 + 6552], rdx
.Lx01638_3:
 jmp xchain01617_n22_α
 xchain01617_n21_β:
 jmp xchain01617_n23_α
xchain01617_n22_α:
bb01639_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6544] -> [r12+6528]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6536], rax
  .section .rodata
  .Lrkfn2320: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2320]
 lea rsi, [r12 + 6528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6512], rax
 mov qword ptr [r12 + 6520], rdx
 cmp eax, 99
 je xchain01617_n23_α
 jmp xchain01617_n24_α
 xchain01617_n22_β:
 jmp xchain01617_n23_α
xchain01617_n23_α:
bb01117_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2322: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2322]
 lea rsi, [r12 + 6464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 cmp eax, 99
 je xchain01617_n26_α
 jmp xchain01617_n25_α
 xchain01617_n23_β:
 jmp xchain01617_n26_α
xchain01617_n24_α:
bb01640_α:
# IR_BINOP_TEST
 mov eax, dword ptr [r12 + 6944]
 cmp eax, 100
 je .Lx01641_0
 mov eax, dword ptr [r12 + 6512]
 cmp eax, 100
 je .Lx01641_0
.Lx01641_1:
 mov rax, qword ptr [r12 + 6952]
 mov rcx, qword ptr [r12 + 6520]
 cmp rax, rcx
 jge xchain01617_n23_α
 mov rcx, qword ptr [r12 + 6512]
 mov qword ptr [r12 + 6480], rcx
 mov rcx, qword ptr [r12 + 6520]
 mov qword ptr [r12 + 6488], rcx
 jmp xchain01617_n27_α
.Lx01641_0:
 mov rdi, qword ptr [r12 + 6944]
 mov rsi, qword ptr [r12 + 6952]
 mov rdx, qword ptr [r12 + 6512]
 mov rcx, qword ptr [r12 + 6520]
 mov r8d, 5
 lea r9, [r12 + 6480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx01641_1
 cmp eax, 1
 je xchain01617_n23_α
 jmp xchain01617_n27_α
 xchain01617_n24_β:
 jmp xchain01617_n23_α
xchain01617_n25_α:
bb01642_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6448]
 mov rdx, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6912], rax
 mov qword ptr [r12 + 6920], rdx
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain01617_n26_α
 xchain01617_n25_β:
 jmp xchain01617_n26_α
xchain01617_n26_α:
# IR_LIT_INTEGER
bb01643_α:
 mov qword ptr [r12 + 6160], 6
 mov rax, qword ptr [rip + .Lx01644_0]
 mov qword ptr [r12 + 6168], rax
 jmp xchain01617_n28_α
 xchain01617_n26_β:
 jmp xchain01617_n39_α
.Lx01644_0:
 .quad 1
xchain01617_n27_α:
bb01645_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 6480]
 mov rdx, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6944], rax
 mov qword ptr [r12 + 6952], rdx
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain01617_n23_α
 xchain01617_n27_β:
 jmp xchain01617_n23_α
xchain01617_n28_α:
# IR_VAR
bb01120_α:
 mov rax, qword ptr [r12 + 6928]
 mov qword ptr [r12 + 6176], rax
 mov rax, qword ptr [r12 + 6936]
 mov qword ptr [r12 + 6184], rax
 jmp xchain01617_n29_α
 xchain01617_n28_β:
 jmp xchain01617_n39_α
xchain01617_n29_α:
# IR_TO
bb01646_α:
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6144], rax
.Lx01647_0:
 mov rax, qword ptr [r12 + 6144]
 mov rcx, qword ptr [r12 + 6184]
 cmp rax, rcx
 jg xchain01617_n39_α
 mov qword ptr [r12 + 6128], 6
 mov qword ptr [r12 + 6136], rax
 jmp xchain01617_n30_β
 xchain01617_n29_β:
 inc qword ptr [r12 + 6144]
 jmp .Lx01647_0
xchain01617_n30_α:
# IR_KEYWORD_read
bb01648_α:
 mov rdi, qword ptr [rip + .Lx01649_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain01617_n31_α
 xchain01617_n30_β:
 jmp xchain01617_n33_α
.Lx01649_0:
 .quad .Lx01649_0_s
.Lx01649_0_s:
 .string "&errout"
xchain01617_n31_α:
# IR_LIT_STRING
bb01121_α:
 mov qword ptr [r12 + 6416], 1
 mov rax, qword ptr [rip + .Lx01650_0]
 mov qword ptr [r12 + 6424], rax
 jmp xchain01617_n32_α
 xchain01617_n31_β:
 jmp xchain01617_n33_α
.Lx01650_0:
 .quad .Lx01650_0_s
.Lx01650_0_s:
 .string "."
xchain01617_n32_α:
bb01123_α:
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
  .Lrkfn2334: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2334]
 lea rsi, [r12 + 6352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 cmp eax, 99
 je xchain01617_n33_α
 jmp xchain01617_n33_α
 xchain01617_n32_β:
 jmp xchain01617_n33_α
xchain01617_n33_α:
# IR_VAR
bb01125_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6248], rax
 jmp xchain01617_n34_α
 xchain01617_n33_β:
 jmp xchain01617_n29_β
xchain01617_n34_α:
# IR_PROC_VALUE first-class procedure value
bb01127_α:
 mov rdi, qword ptr [rip + .Lx01651_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 jmp xchain01617_n35_α
 xchain01617_n34_β:
 jmp xchain01617_n29_β
.Lx01651_0:
 .quad .Lx01651_0_s
.Lx01651_0_s:
 .string "nothing"
xchain01617_n35_α:
# IR_VAR
bb01128_α:
 mov rax, qword ptr [r12 + 6944]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6952]
 mov qword ptr [r12 + 6328], rax
 jmp xchain01617_n36_α
 xchain01617_n35_β:
 jmp xchain01617_n29_β
xchain01617_n36_α:
bb01652_α:
  .section .rodata
  .Lcall01652_pname: .string "measure"
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
   lea rdi, [rip + .Lcall01652_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 cmp eax, 99
 je xchain01617_n29_β
 jmp xchain01617_n37_α
xchain01617_n36_β:
 jmp xchain01617_n29_β
xchain01617_n37_α:
bb01653_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn2343: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn2343]
 lea rsi, [r12 + 6208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 cmp eax, 99
 je xchain01617_n29_β
 jmp xchain01617_n38_α
xchain01617_n37_β:
 jmp xchain01617_n29_β
xchain01617_n38_α:
 jmp xchain01617_n29_β
xchain01617_n38_β:
 jmp xchain01617_n29_β
xchain01617_n39_α:
# IR_VAR
bb01654_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 5952], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 5960], rax
 jmp xchain01617_n40_α
 xchain01617_n39_β:
 jmp xchain01617_n42_α
xchain01617_n40_α:
bb01655_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5952] -> [r12+5936]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5944], rax
  .section .rodata
  .Lrkfn2348: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2348]
 lea rsi, [r12 + 5936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5920], rax
 mov qword ptr [r12 + 5928], rdx
 cmp eax, 99
 je xchain01617_n42_α
 jmp xchain01617_n41_α
 xchain01617_n40_β:
 jmp xchain01617_n42_α
xchain01617_n41_α:
# IR_LIT_INTEGER
bb01656_α:
 mov qword ptr [r12 + 5984], 6
 mov rax, qword ptr [rip + .Lx01657_0]
 mov qword ptr [r12 + 5992], rax
 jmp xchain01617_n43_α
 xchain01617_n41_β:
 jmp xchain01617_n42_α
.Lx01657_0:
 .quad 1
xchain01617_n42_α:
# IR_VAR gva
bb01134_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 jmp xchain01617_n44_α
 xchain01617_n42_β:
 jmp xchain01617_n49_α
xchain01617_n43_α:
# IR_VAR
bb01136_α:
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 6056], rax
 jmp xchain01617_n45_α
 xchain01617_n43_β:
 jmp xchain01617_n42_α
xchain01617_n44_α:
# IR_LIT_INTEGER
bb01658_α:
 mov qword ptr [r12 + 5872], 6
 mov rax, qword ptr [rip + .Lx01659_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain01617_n46_α
 xchain01617_n44_β:
 jmp xchain01617_n49_α
.Lx01659_0:
 .quad 10
xchain01617_n45_α:
# IR_UNOP
bb01660_α:
 mov rdi, qword ptr [r12 + 6912]
 mov rsi, qword ptr [r12 + 6920]
 call rt_size_d@PLT
 mov qword ptr [r12 + 6032], rax
 mov qword ptr [r12 + 6040], rdx
 jmp xchain01617_n47_α
 xchain01617_n45_β:
 jmp xchain01617_n42_α
xchain01617_n46_α:
bb01661_α:
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
  .Lrkfn2356: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2356]
 lea rsi, [r12 + 5824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain01617_n49_α
 jmp xchain01617_n48_α
 xchain01617_n46_β:
 jmp xchain01617_n49_α
xchain01617_n47_α:
# IR_LIT_INTEGER
bb01662_α:
 mov qword ptr [r12 + 6064], 6
 mov rax, qword ptr [rip + .Lx01663_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain01617_n50_α
 xchain01617_n47_β:
 jmp xchain01617_n42_α
.Lx01663_0:
 .quad 1
xchain01617_n48_α:
# IR_LIT_STRING
bb01139_α:
 mov qword ptr [r12 + 5888], 1
 mov rax, qword ptr [rip + .Lx01664_0]
 mov qword ptr [r12 + 5896], rax
 jmp xchain01617_n51_α
 xchain01617_n48_β:
 jmp xchain01617_n49_α
.Lx01664_0:
 .quad .Lx01664_0_s
.Lx01664_0_s:
 .string "  overhead"
xchain01617_n49_α:
# IR_PROC_VALUE first-class procedure value
bb01665_α:
 mov rdi, qword ptr [rip + .Lx01666_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain01617_n52_α
 xchain01617_n49_β:
 jmp xchain01617_n54_α
.Lx01666_0:
 .quad .Lx01666_0_s
.Lx01666_0_s:
 .string "nothing"
xchain01617_n50_α:
bb01667_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 100
 je .Lx01668_0
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 100
 je .Lx01668_0
 mov eax, dword ptr [r12 + 6032]
 cmp eax, 6
 jne .Lx01668_2
 mov eax, dword ptr [r12 + 6064]
 cmp eax, 6
 jne .Lx01668_2
.Lx01668_1:
 mov rax, qword ptr [r12 + 6040]
 mov rcx, qword ptr [r12 + 6072]
 sub rax, rcx
 mov qword ptr [r12 + 6016], 6
 mov qword ptr [r12 + 6024], rax
 jmp xchain01617_n53_α
.Lx01668_0:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 lea r9, [r12 + 6016]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01668_3
.Lx01668_2:
 mov rdi, qword ptr [r12 + 6032]
 mov rsi, qword ptr [r12 + 6040]
 mov rdx, qword ptr [r12 + 6064]
 mov rcx, qword ptr [r12 + 6072]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01617_n42_α
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
.Lx01668_3:
 jmp xchain01617_n53_α
 xchain01617_n50_β:
 jmp xchain01617_n42_α
xchain01617_n51_α:
bb01141_α:
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
  .Lrkfn2363: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2363]
 lea rsi, [r12 + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 cmp eax, 99
 je xchain01617_n49_α
 jmp xchain01617_n49_α
 xchain01617_n51_β:
 jmp xchain01617_n49_α
xchain01617_n52_α:
bb01669_α:
  .section .rodata
  .Lcall01669_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5744]
 mov rdx, qword ptr [r12 + 5752]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01669_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain01617_n54_α
 jmp xchain01617_n54_α
xchain01617_n52_β:
 jmp xchain01617_n54_α
xchain01617_n53_α:
# IR_LIT_INTEGER
bb01670_α:
 mov qword ptr [r12 + 6080], 6
 mov rax, qword ptr [rip + .Lx01671_0]
 mov qword ptr [r12 + 6088], rax
 jmp xchain01617_n55_α
 xchain01617_n53_β:
 jmp xchain01617_n42_α
.Lx01671_0:
 .quad 2
xchain01617_n54_α:
# IR_PROC_VALUE first-class procedure value
bb01144_α:
 mov rdi, qword ptr [rip + .Lx01672_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain01617_n56_α
 xchain01617_n54_β:
 jmp xchain01617_n58_α
.Lx01672_0:
 .quad .Lx01672_0_s
.Lx01672_0_s:
 .string "nothing"
xchain01617_n55_α:
bb01673_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 100
 je .Lx01674_0
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 100
 je .Lx01674_0
 mov eax, dword ptr [r12 + 6016]
 cmp eax, 6
 jne .Lx01674_2
 mov eax, dword ptr [r12 + 6080]
 cmp eax, 6
 jne .Lx01674_2
.Lx01674_1:
 mov rax, qword ptr [r12 + 6024]
 mov rcx, qword ptr [r12 + 6088]
 cqo
 idiv rcx
 mov qword ptr [r12 + 6000], 6
 mov qword ptr [r12 + 6008], rax
 jmp xchain01617_n57_α
.Lx01674_0:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 lea r9, [r12 + 6000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01674_3
.Lx01674_2:
 mov rdi, qword ptr [r12 + 6016]
 mov rsi, qword ptr [r12 + 6024]
 mov rdx, qword ptr [r12 + 6080]
 mov rcx, qword ptr [r12 + 6088]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01617_n42_α
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
.Lx01674_3:
 jmp xchain01617_n57_α
 xchain01617_n55_β:
 jmp xchain01617_n42_α
xchain01617_n56_α:
bb01675_α:
  .section .rodata
  .Lcall01675_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5696]
 mov rdx, qword ptr [r12 + 5704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01675_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 cmp eax, 99
 je xchain01617_n58_α
 jmp xchain01617_n58_α
xchain01617_n56_β:
 jmp xchain01617_n58_α
xchain01617_n57_α:
bb01146_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 100
 je .Lx01676_0
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 100
 je .Lx01676_0
 mov eax, dword ptr [r12 + 5984]
 cmp eax, 6
 jne .Lx01676_2
 mov eax, dword ptr [r12 + 6000]
 cmp eax, 6
 jne .Lx01676_2
.Lx01676_1:
 mov rax, qword ptr [r12 + 5992]
 mov rcx, qword ptr [r12 + 6008]
 add rax, rcx
 mov qword ptr [r12 + 5968], 6
 mov qword ptr [r12 + 5976], rax
 jmp xchain01617_n59_α
.Lx01676_0:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 lea r9, [r12 + 5968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx01676_3
.Lx01676_2:
 mov rdi, qword ptr [r12 + 5984]
 mov rsi, qword ptr [r12 + 5992]
 mov rdx, qword ptr [r12 + 6000]
 mov rcx, qword ptr [r12 + 6008]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01617_n42_α
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
.Lx01676_3:
 jmp xchain01617_n59_α
 xchain01617_n57_β:
 jmp xchain01617_n42_α
xchain01617_n58_α:
# IR_PROC_VALUE first-class procedure value
bb01147_α:
 mov rdi, qword ptr [rip + .Lx01677_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain01617_n60_α
 xchain01617_n58_β:
 jmp xchain01617_n62_α
.Lx01677_0:
 .quad .Lx01677_0_s
.Lx01677_0_s:
 .string "nothing"
xchain01617_n59_α:
# IR_SUBSCRIPT x[i] variable
bb01149_α:
 mov rdi, qword ptr [r12 + 5920]
 mov rsi, qword ptr [r12 + 5928]
 mov rdx, qword ptr [r12 + 5968]
 mov rcx, qword ptr [r12 + 5976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01617_n42_α
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain01617_n61_α
 xchain01617_n59_β:
 jmp xchain01617_n42_α
xchain01617_n60_α:
bb01151_α:
  .section .rodata
  .Lcall01151_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5648]
 mov rdx, qword ptr [r12 + 5656]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01151_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 cmp eax, 99
 je xchain01617_n62_α
 jmp xchain01617_n62_α
xchain01617_n60_β:
 jmp xchain01617_n62_α
xchain01617_n61_α:
# IR_DEREF variable -> value
bb01153_α:
 mov rdi, qword ptr [r12 + 6096]
 mov rsi, qword ptr [r12 + 6104]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01617_n42_α
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain01617_n63_α
 xchain01617_n61_β:
 jmp xchain01617_n42_α
xchain01617_n62_α:
# IR_PROC_VALUE first-class procedure value
bb01678_α:
 mov rdi, qword ptr [rip + .Lx01679_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain01617_n64_α
 xchain01617_n62_β:
 jmp xchain01617_n65_α
.Lx01679_0:
 .quad .Lx01679_0_s
.Lx01679_0_s:
 .string "globasgn"
xchain01617_n63_α:
# IR_ASSIGN gva
bb01680_α:
 mov rax, qword ptr [r12 + 6112]
 mov rdx, qword ptr [r12 + 6120]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 jmp xchain01617_n42_α
 xchain01617_n63_β:
 jmp xchain01617_n42_α
xchain01617_n64_α:
bb01681_α:
  .section .rodata
  .Lcall01681_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01681_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5568], rax
 mov qword ptr [r12 + 5576], rdx
 cmp eax, 99
 je xchain01617_n65_α
 jmp xchain01617_n65_α
xchain01617_n64_β:
 jmp xchain01617_n65_α
xchain01617_n65_α:
# IR_PROC_VALUE first-class procedure value
bb01682_α:
 mov rdi, qword ptr [rip + .Lx01683_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 jmp xchain01617_n66_α
 xchain01617_n65_β:
 jmp xchain01617_n67_α
.Lx01683_0:
 .quad .Lx01683_0_s
.Lx01683_0_s:
 .string "statasgn"
xchain01617_n66_α:
bb01684_α:
  .section .rodata
  .Lcall01684_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5552]
 mov rdx, qword ptr [r12 + 5560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01684_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain01617_n67_α
 jmp xchain01617_n67_α
xchain01617_n66_β:
 jmp xchain01617_n67_α
xchain01617_n67_α:
# IR_PROC_VALUE first-class procedure value
bb01685_α:
 mov rdi, qword ptr [rip + .Lx01686_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain01617_n68_α
 xchain01617_n67_β:
 jmp xchain01617_n69_α
.Lx01686_0:
 .quad .Lx01686_0_s
.Lx01686_0_s:
 .string "loclasgn"
xchain01617_n68_α:
bb01157_α:
  .section .rodata
  .Lcall01157_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01157_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain01617_n69_α
 jmp xchain01617_n69_α
xchain01617_n68_β:
 jmp xchain01617_n69_α
xchain01617_n69_α:
# IR_PROC_VALUE first-class procedure value
bb01159_α:
 mov rdi, qword ptr [rip + .Lx01687_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain01617_n70_α
 xchain01617_n69_β:
 jmp xchain01617_n71_α
.Lx01687_0:
 .quad .Lx01687_0_s
.Lx01687_0_s:
 .string "if0"
xchain01617_n70_α:
bb01688_α:
  .section .rodata
  .Lcall01688_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5456]
 mov rdx, qword ptr [r12 + 5464]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01688_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain01617_n71_α
 jmp xchain01617_n71_α
xchain01617_n70_β:
 jmp xchain01617_n71_α
xchain01617_n71_α:
# IR_PROC_VALUE first-class procedure value
bb01689_α:
 mov rdi, qword ptr [rip + .Lx01690_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain01617_n72_α
 xchain01617_n71_β:
 jmp xchain01617_n73_α
.Lx01690_0:
 .quad .Lx01690_0_s
.Lx01690_0_s:
 .string "case3"
xchain01617_n72_α:
bb01691_α:
  .section .rodata
  .Lcall01691_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01691_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 cmp eax, 99
 je xchain01617_n73_α
 jmp xchain01617_n73_α
xchain01617_n72_β:
 jmp xchain01617_n73_α
xchain01617_n73_α:
# IR_PROC_VALUE first-class procedure value
bb01692_α:
 mov rdi, qword ptr [rip + .Lx01693_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain01617_n74_α
 xchain01617_n73_β:
 jmp xchain01617_n75_α
.Lx01693_0:
 .quad .Lx01693_0_s
.Lx01693_0_s:
 .string "nulltest"
xchain01617_n74_α:
bb01162_α:
  .section .rodata
  .Lcall01162_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5360]
 mov rdx, qword ptr [r12 + 5368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01162_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 cmp eax, 99
 je xchain01617_n75_α
 jmp xchain01617_n75_α
xchain01617_n74_β:
 jmp xchain01617_n75_α
xchain01617_n75_α:
# IR_PROC_VALUE first-class procedure value
bb01694_α:
 mov rdi, qword ptr [rip + .Lx01695_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain01617_n76_α
 xchain01617_n75_β:
 jmp xchain01617_n77_α
.Lx01695_0:
 .quad .Lx01695_0_s
.Lx01695_0_s:
 .string "typef"
xchain01617_n76_α:
bb01696_α:
  .section .rodata
  .Lcall01696_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5312]
 mov rdx, qword ptr [r12 + 5320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01696_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain01617_n77_α
 jmp xchain01617_n77_α
xchain01617_n76_β:
 jmp xchain01617_n77_α
xchain01617_n77_α:
# IR_PROC_VALUE first-class procedure value
bb01697_α:
 mov rdi, qword ptr [rip + .Lx01698_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain01617_n78_α
 xchain01617_n77_β:
 jmp xchain01617_n79_α
.Lx01698_0:
 .quad .Lx01698_0_s
.Lx01698_0_s:
 .string "imagef"
xchain01617_n78_α:
bb01165_α:
  .section .rodata
  .Lcall01165_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01165_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 cmp eax, 99
 je xchain01617_n79_α
 jmp xchain01617_n79_α
xchain01617_n78_β:
 jmp xchain01617_n79_α
xchain01617_n79_α:
# IR_PROC_VALUE first-class procedure value
bb01166_α:
 mov rdi, qword ptr [rip + .Lx01699_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain01617_n80_α
 xchain01617_n79_β:
 jmp xchain01617_n81_α
.Lx01699_0:
 .quad .Lx01699_0_s
.Lx01699_0_s:
 .string "everyto"
xchain01617_n80_α:
bb01700_α:
  .section .rodata
  .Lcall01700_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5216]
 mov rdx, qword ptr [r12 + 5224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01700_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain01617_n81_α
 jmp xchain01617_n81_α
xchain01617_n80_β:
 jmp xchain01617_n81_α
xchain01617_n81_α:
# IR_PROC_VALUE first-class procedure value
bb01701_α:
 mov rdi, qword ptr [rip + .Lx01702_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain01617_n82_α
 xchain01617_n81_β:
 jmp xchain01617_n83_α
.Lx01702_0:
 .quad .Lx01702_0_s
.Lx01702_0_s:
 .string "everyalt"
xchain01617_n82_α:
bb01703_α:
  .section .rodata
  .Lcall01703_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5168]
 mov rdx, qword ptr [r12 + 5176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01703_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 cmp eax, 99
 je xchain01617_n83_α
 jmp xchain01617_n83_α
xchain01617_n82_β:
 jmp xchain01617_n83_α
xchain01617_n83_α:
# IR_PROC_VALUE first-class procedure value
bb01704_α:
 mov rdi, qword ptr [rip + .Lx01705_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 jmp xchain01617_n84_α
 xchain01617_n83_β:
 jmp xchain01617_n85_α
.Lx01705_0:
 .quad .Lx01705_0_s
.Lx01705_0_s:
 .string "conj5"
xchain01617_n84_α:
bb01706_α:
  .section .rodata
  .Lcall01706_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5120]
 mov rdx, qword ptr [r12 + 5128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01706_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain01617_n85_α
 jmp xchain01617_n85_α
xchain01617_n84_β:
 jmp xchain01617_n85_α
xchain01617_n85_α:
# IR_PROC_VALUE first-class procedure value
bb01707_α:
 mov rdi, qword ptr [rip + .Lx01708_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain01617_n86_α
 xchain01617_n85_β:
 jmp xchain01617_n87_α
.Lx01708_0:
 .quad .Lx01708_0_s
.Lx01708_0_s:
 .string "nullfunc"
xchain01617_n86_α:
bb01709_α:
  .section .rodata
  .Lcall01709_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5072]
 mov rdx, qword ptr [r12 + 5080]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01709_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 cmp eax, 99
 je xchain01617_n87_α
 jmp xchain01617_n87_α
xchain01617_n86_β:
 jmp xchain01617_n87_α
xchain01617_n87_α:
# IR_PROC_VALUE first-class procedure value
bb01710_α:
 mov rdi, qword ptr [rip + .Lx01711_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 jmp xchain01617_n88_α
 xchain01617_n87_β:
 jmp xchain01617_n89_α
.Lx01711_0:
 .quad .Lx01711_0_s
.Lx01711_0_s:
 .string "listcall"
xchain01617_n88_α:
bb01171_α:
  .section .rodata
  .Lcall01171_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5024]
 mov rdx, qword ptr [r12 + 5032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01171_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain01617_n89_α
 jmp xchain01617_n89_α
xchain01617_n88_β:
 jmp xchain01617_n89_α
xchain01617_n89_α:
# IR_PROC_VALUE first-class procedure value
bb01172_α:
 mov rdi, qword ptr [rip + .Lx01712_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain01617_n90_α
 xchain01617_n89_β:
 jmp xchain01617_n91_α
.Lx01712_0:
 .quad .Lx01712_0_s
.Lx01712_0_s:
 .string "marshal"
xchain01617_n90_α:
bb01713_α:
  .section .rodata
  .Lcall01713_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4976]
 mov rdx, qword ptr [r12 + 4984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01713_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain01617_n91_α
 jmp xchain01617_n91_α
xchain01617_n90_β:
 jmp xchain01617_n91_α
xchain01617_n91_α:
# IR_PROC_VALUE first-class procedure value
bb01714_α:
 mov rdi, qword ptr [rip + .Lx01715_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain01617_n92_α
 xchain01617_n91_β:
 jmp xchain01617_n93_α
.Lx01715_0:
 .quad .Lx01715_0_s
.Lx01715_0_s:
 .string "evsusp"
xchain01617_n92_α:
bb01716_α:
  .section .rodata
  .Lcall01716_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4928]
 mov rdx, qword ptr [r12 + 4936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01716_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je xchain01617_n93_α
 jmp xchain01617_n93_α
xchain01617_n92_β:
 jmp xchain01617_n93_α
xchain01617_n93_α:
# IR_PROC_VALUE first-class procedure value
bb01717_α:
 mov rdi, qword ptr [rip + .Lx01718_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 jmp xchain01617_n94_α
 xchain01617_n93_β:
 jmp xchain01617_n95_α
.Lx01718_0:
 .quad .Lx01718_0_s
.Lx01718_0_s:
 .string "tointeger"
xchain01617_n94_α:
bb01176_α:
  .section .rodata
  .Lcall01176_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4880]
 mov rdx, qword ptr [r12 + 4888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01176_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 cmp eax, 99
 je xchain01617_n95_α
 jmp xchain01617_n95_α
xchain01617_n94_β:
 jmp xchain01617_n95_α
xchain01617_n95_α:
# IR_PROC_VALUE first-class procedure value
bb01719_α:
 mov rdi, qword ptr [rip + .Lx01720_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain01617_n96_α
 xchain01617_n95_β:
 jmp xchain01617_n97_α
.Lx01720_0:
 .quad .Lx01720_0_s
.Lx01720_0_s:
 .string "intcoerce"
xchain01617_n96_α:
bb01721_α:
  .section .rodata
  .Lcall01721_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4832]
 mov rdx, qword ptr [r12 + 4840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01721_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 cmp eax, 99
 je xchain01617_n97_α
 jmp xchain01617_n97_α
xchain01617_n96_β:
 jmp xchain01617_n97_α
xchain01617_n97_α:
# IR_PROC_VALUE first-class procedure value
bb01179_α:
 mov rdi, qword ptr [rip + .Lx01722_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain01617_n98_α
 xchain01617_n97_β:
 jmp xchain01617_n99_α
.Lx01722_0:
 .quad .Lx01722_0_s
.Lx01722_0_s:
 .string "uplus"
xchain01617_n98_α:
bb01723_α:
  .section .rodata
  .Lcall01723_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4784]
 mov rdx, qword ptr [r12 + 4792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01723_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je xchain01617_n99_α
 jmp xchain01617_n99_α
xchain01617_n98_β:
 jmp xchain01617_n99_α
xchain01617_n99_α:
# IR_PROC_VALUE first-class procedure value
bb01724_α:
 mov rdi, qword ptr [rip + .Lx01725_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain01617_n00013_α
 xchain01617_n99_β:
 jmp xchain01617_n00015_α
.Lx01725_0:
 .quad .Lx01725_0_s
.Lx01725_0_s:
 .string "tostring"
xchain01617_n00013_α:
bb01726_α:
  .section .rodata
  .Lcall01726_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4736]
 mov rdx, qword ptr [r12 + 4744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01726_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je xchain01617_n00015_α
 jmp xchain01617_n00015_α
xchain01617_n00013_β:
 jmp xchain01617_n00015_α
xchain01617_n00015_α:
# IR_PROC_VALUE first-class procedure value
bb01727_α:
 mov rdi, qword ptr [rip + .Lx01728_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain01617_n00001_α
 xchain01617_n00015_β:
 jmp xchain01617_n00016_α
.Lx01728_0:
 .quad .Lx01728_0_s
.Lx01728_0_s:
 .string "strcoerce"
xchain01617_n00001_α:
bb01181_α:
  .section .rodata
  .Lcall01181_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01181_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain01617_n00016_α
 jmp xchain01617_n00016_α
xchain01617_n00001_β:
 jmp xchain01617_n00016_α
xchain01617_n00016_α:
# IR_PROC_VALUE first-class procedure value
bb01729_α:
 mov rdi, qword ptr [rip + .Lx01730_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain01617_n00018_α
 xchain01617_n00016_β:
 jmp xchain01617_n00021_α
.Lx01730_0:
 .quad .Lx01730_0_s
.Lx01730_0_s:
 .string "absf"
xchain01617_n00018_α:
bb01731_α:
  .section .rodata
  .Lcall01731_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4640]
 mov rdx, qword ptr [r12 + 4648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01731_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain01617_n00021_α
 jmp xchain01617_n00021_α
xchain01617_n00018_β:
 jmp xchain01617_n00021_α
xchain01617_n00021_α:
# IR_PROC_VALUE first-class procedure value
bb01732_α:
 mov rdi, qword ptr [rip + .Lx01733_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain01617_n00022_α
 xchain01617_n00021_β:
 jmp xchain01617_n00023_α
.Lx01733_0:
 .quad .Lx01733_0_s
.Lx01733_0_s:
 .string "intadd"
xchain01617_n00022_α:
bb01734_α:
  .section .rodata
  .Lcall01734_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01734_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 cmp eax, 99
 je xchain01617_n00023_α
 jmp xchain01617_n00023_α
xchain01617_n00022_β:
 jmp xchain01617_n00023_α
xchain01617_n00023_α:
# IR_PROC_VALUE first-class procedure value
bb01735_α:
 mov rdi, qword ptr [rip + .Lx01736_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain01617_n00025_α
 xchain01617_n00023_β:
 jmp xchain01617_n00027_α
.Lx01736_0:
 .quad .Lx01736_0_s
.Lx01736_0_s:
 .string "addfunc"
xchain01617_n00025_α:
bb01737_α:
  .section .rodata
  .Lcall01737_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4544]
 mov rdx, qword ptr [r12 + 4552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01737_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je xchain01617_n00027_α
 jmp xchain01617_n00027_α
xchain01617_n00025_β:
 jmp xchain01617_n00027_α
xchain01617_n00027_α:
# IR_PROC_VALUE first-class procedure value
bb01738_α:
 mov rdi, qword ptr [rip + .Lx01739_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain01617_n00028_α
 xchain01617_n00027_β:
 jmp xchain01617_n00029_α
.Lx01739_0:
 .quad .Lx01739_0_s
.Lx01739_0_s:
 .string "intpow"
xchain01617_n00028_α:
bb01740_α:
  .section .rodata
  .Lcall01740_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01740_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4464], rax
 mov qword ptr [r12 + 4472], rdx
 cmp eax, 99
 je xchain01617_n00029_α
 jmp xchain01617_n00029_α
xchain01617_n00028_β:
 jmp xchain01617_n00029_α
xchain01617_n00029_α:
# IR_PROC_VALUE first-class procedure value
bb01185_α:
 mov rdi, qword ptr [rip + .Lx01741_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain01617_n00002_α
 xchain01617_n00029_β:
 jmp xchain01617_n00033_α
.Lx01741_0:
 .quad .Lx01741_0_s
.Lx01741_0_s:
 .string "intcmp"
xchain01617_n00002_α:
bb01187_α:
  .section .rodata
  .Lcall01187_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4448]
 mov rdx, qword ptr [r12 + 4456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01187_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je xchain01617_n00033_α
 jmp xchain01617_n00033_α
xchain01617_n00002_β:
 jmp xchain01617_n00033_α
xchain01617_n00033_α:
# IR_PROC_VALUE first-class procedure value
bb01742_α:
 mov rdi, qword ptr [rip + .Lx01743_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain01617_n00034_α
 xchain01617_n00033_β:
 jmp xchain01617_n00035_α
.Lx01743_0:
 .quad .Lx01743_0_s
.Lx01743_0_s:
 .string "rfact0"
xchain01617_n00034_α:
bb01744_α:
  .section .rodata
  .Lcall01744_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01744_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain01617_n00035_α
 jmp xchain01617_n00035_α
xchain01617_n00034_β:
 jmp xchain01617_n00035_α
xchain01617_n00035_α:
# IR_PROC_VALUE first-class procedure value
bb01745_α:
 mov rdi, qword ptr [rip + .Lx01746_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain01617_n00003_α
 xchain01617_n00035_β:
 jmp xchain01617_n00004_α
.Lx01746_0:
 .quad .Lx01746_0_s
.Lx01746_0_s:
 .string "rfact10"
xchain01617_n00003_α:
bb01747_α:
  .section .rodata
  .Lcall01747_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4352]
 mov rdx, qword ptr [r12 + 4360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01747_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain01617_n00004_α
 jmp xchain01617_n00004_α
xchain01617_n00003_β:
 jmp xchain01617_n00004_α
xchain01617_n00004_α:
# IR_PROC_VALUE first-class procedure value
bb01191_α:
 mov rdi, qword ptr [rip + .Lx01748_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4304], rax
 mov qword ptr [r12 + 4312], rdx
 jmp xchain01617_n00005_α
 xchain01617_n00004_β:
 jmp xchain01617_n00038_α
.Lx01748_0:
 .quad .Lx01748_0_s
.Lx01748_0_s:
 .string "rfib5"
xchain01617_n00005_α:
bb01749_α:
  .section .rodata
  .Lcall01749_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4304]
 mov rdx, qword ptr [r12 + 4312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01749_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain01617_n00038_α
 jmp xchain01617_n00038_α
xchain01617_n00005_β:
 jmp xchain01617_n00038_α
xchain01617_n00038_α:
# IR_PROC_VALUE first-class procedure value
bb01750_α:
 mov rdi, qword ptr [rip + .Lx01751_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain01617_n00040_α
 xchain01617_n00038_β:
 jmp xchain01617_n00042_α
.Lx01751_0:
 .quad .Lx01751_0_s
.Lx01751_0_s:
 .string "prslow"
xchain01617_n00040_α:
bb01194_α:
  .section .rodata
  .Lcall01194_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4256]
 mov rdx, qword ptr [r12 + 4264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01194_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain01617_n00042_α
 jmp xchain01617_n00042_α
xchain01617_n00040_β:
 jmp xchain01617_n00042_α
xchain01617_n00042_α:
# IR_PROC_VALUE first-class procedure value
bb01195_α:
 mov rdi, qword ptr [rip + .Lx01752_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain01617_n00044_α
 xchain01617_n00042_β:
 jmp xchain01617_n00045_α
.Lx01752_0:
 .quad .Lx01752_0_s
.Lx01752_0_s:
 .string "toreal"
xchain01617_n00044_α:
bb01753_α:
  .section .rodata
  .Lcall01753_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01753_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 cmp eax, 99
 je xchain01617_n00045_α
 jmp xchain01617_n00045_α
xchain01617_n00044_β:
 jmp xchain01617_n00045_α
xchain01617_n00045_α:
# IR_PROC_VALUE first-class procedure value
bb01754_α:
 mov rdi, qword ptr [rip + .Lx01755_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain01617_n00046_α
 xchain01617_n00045_β:
 jmp xchain01617_n00048_α
.Lx01755_0:
 .quad .Lx01755_0_s
.Lx01755_0_s:
 .string "realcoerce"
xchain01617_n00046_α:
bb01756_α:
  .section .rodata
  .Lcall01756_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4160]
 mov rdx, qword ptr [r12 + 4168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01756_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je xchain01617_n00048_α
 jmp xchain01617_n00048_α
xchain01617_n00046_β:
 jmp xchain01617_n00048_α
xchain01617_n00048_α:
# IR_PROC_VALUE first-class procedure value
bb01757_α:
 mov rdi, qword ptr [rip + .Lx01758_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain01617_n00006_α
 xchain01617_n00048_β:
 jmp xchain01617_n00050_α
.Lx01758_0:
 .quad .Lx01758_0_s
.Lx01758_0_s:
 .string "uplusr"
xchain01617_n00006_α:
bb01759_α:
  .section .rodata
  .Lcall01759_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4112]
 mov rdx, qword ptr [r12 + 4120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01759_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 cmp eax, 99
 je xchain01617_n00050_α
 jmp xchain01617_n00050_α
xchain01617_n00006_β:
 jmp xchain01617_n00050_α
xchain01617_n00050_α:
# IR_PROC_VALUE first-class procedure value
bb01760_α:
 mov rdi, qword ptr [rip + .Lx01761_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain01617_n00051_α
 xchain01617_n00050_β:
 jmp xchain01617_n00053_α
.Lx01761_0:
 .quad .Lx01761_0_s
.Lx01761_0_s:
 .string "rtostring"
xchain01617_n00051_α:
bb01762_α:
  .section .rodata
  .Lcall01762_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4064]
 mov rdx, qword ptr [r12 + 4072]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01762_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain01617_n00053_α
 jmp xchain01617_n00053_α
xchain01617_n00051_β:
 jmp xchain01617_n00053_α
xchain01617_n00053_α:
# IR_PROC_VALUE first-class procedure value
bb01763_α:
 mov rdi, qword ptr [rip + .Lx01764_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain01617_n00007_α
 xchain01617_n00053_β:
 jmp xchain01617_n00008_α
.Lx01764_0:
 .quad .Lx01764_0_s
.Lx01764_0_s:
 .string "strcoercer"
xchain01617_n00007_α:
bb01765_α:
  .section .rodata
  .Lcall01765_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01765_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain01617_n00008_α
 jmp xchain01617_n00008_α
xchain01617_n00007_β:
 jmp xchain01617_n00008_α
xchain01617_n00008_α:
# IR_PROC_VALUE first-class procedure value
bb01766_α:
 mov rdi, qword ptr [rip + .Lx01767_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 jmp xchain01617_n00058_α
 xchain01617_n00008_β:
 jmp xchain01617_n00059_α
.Lx01767_0:
 .quad .Lx01767_0_s
.Lx01767_0_s:
 .string "realcmp"
xchain01617_n00058_α:
bb01768_α:
  .section .rodata
  .Lcall01768_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3968]
 mov rdx, qword ptr [r12 + 3976]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01768_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je xchain01617_n00059_α
 jmp xchain01617_n00059_α
xchain01617_n00058_β:
 jmp xchain01617_n00059_α
xchain01617_n00059_α:
# IR_PROC_VALUE first-class procedure value
bb01199_α:
 mov rdi, qword ptr [rip + .Lx01769_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 jmp xchain01617_n00060_α
 xchain01617_n00059_β:
 jmp xchain01617_n00062_α
.Lx01769_0:
 .quad .Lx01769_0_s
.Lx01769_0_s:
 .string "sqrtf"
xchain01617_n00060_α:
bb01770_α:
  .section .rodata
  .Lcall01770_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3920]
 mov rdx, qword ptr [r12 + 3928]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01770_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 cmp eax, 99
 je xchain01617_n00062_α
 jmp xchain01617_n00062_α
xchain01617_n00060_β:
 jmp xchain01617_n00062_α
xchain01617_n00062_α:
# IR_PROC_VALUE first-class procedure value
bb01771_α:
 mov rdi, qword ptr [rip + .Lx01772_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain01617_n00009_α
 xchain01617_n00062_β:
 jmp xchain01617_n00010_α
.Lx01772_0:
 .quad .Lx01772_0_s
.Lx01772_0_s:
 .string "cosf"
xchain01617_n00009_α:
bb01773_α:
  .section .rodata
  .Lcall01773_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3872]
 mov rdx, qword ptr [r12 + 3880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01773_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain01617_n00010_α
 jmp xchain01617_n00010_α
xchain01617_n00009_β:
 jmp xchain01617_n00010_α
xchain01617_n00010_α:
# IR_PROC_VALUE first-class procedure value
bb01774_α:
 mov rdi, qword ptr [rip + .Lx01775_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain01617_n00011_α
 xchain01617_n00010_β:
 jmp xchain01617_n00065_α
.Lx01775_0:
 .quad .Lx01775_0_s
.Lx01775_0_s:
 .string "logf"
xchain01617_n00011_α:
bb01776_α:
  .section .rodata
  .Lcall01776_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3824]
 mov rdx, qword ptr [r12 + 3832]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01776_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je xchain01617_n00065_α
 jmp xchain01617_n00065_α
xchain01617_n00011_β:
 jmp xchain01617_n00065_α
xchain01617_n00065_α:
# IR_PROC_VALUE first-class procedure value
bb01777_α:
 mov rdi, qword ptr [rip + .Lx01778_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 jmp xchain01617_n00067_α
 xchain01617_n00065_β:
 jmp xchain01617_n00069_α
.Lx01778_0:
 .quad .Lx01778_0_s
.Lx01778_0_s:
 .string "charf"
xchain01617_n00067_α:
bb01779_α:
  .section .rodata
  .Lcall01779_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3776]
 mov rdx, qword ptr [r12 + 3784]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01779_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je xchain01617_n00069_α
 jmp xchain01617_n00069_α
xchain01617_n00067_β:
 jmp xchain01617_n00069_α
xchain01617_n00069_α:
# IR_PROC_VALUE first-class procedure value
bb01780_α:
 mov rdi, qword ptr [rip + .Lx01781_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain01617_n00012_α
 xchain01617_n00069_β:
 jmp xchain01617_n00014_α
.Lx01781_0:
 .quad .Lx01781_0_s
.Lx01781_0_s:
 .string "ordf"
xchain01617_n00012_α:
bb01204_α:
  .section .rodata
  .Lcall01204_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3728]
 mov rdx, qword ptr [r12 + 3736]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01204_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 cmp eax, 99
 je xchain01617_n00014_α
 jmp xchain01617_n00014_α
xchain01617_n00012_β:
 jmp xchain01617_n00014_α
xchain01617_n00014_α:
# IR_PROC_VALUE first-class procedure value
bb01205_α:
 mov rdi, qword ptr [rip + .Lx01782_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain01617_n00072_α
 xchain01617_n00014_β:
 jmp xchain01617_n00074_α
.Lx01782_0:
 .quad .Lx01782_0_s
.Lx01782_0_s:
 .string "strsize"
xchain01617_n00072_α:
bb01783_α:
  .section .rodata
  .Lcall01783_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3680]
 mov rdx, qword ptr [r12 + 3688]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01783_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je xchain01617_n00074_α
 jmp xchain01617_n00074_α
xchain01617_n00072_β:
 jmp xchain01617_n00074_α
xchain01617_n00074_α:
# IR_PROC_VALUE first-class procedure value
bb01784_α:
 mov rdi, qword ptr [rip + .Lx01785_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 jmp xchain01617_n00076_α
 xchain01617_n00074_β:
 jmp xchain01617_n00077_α
.Lx01785_0:
 .quad .Lx01785_0_s
.Lx01785_0_s:
 .string "strpick"
xchain01617_n00076_α:
bb01786_α:
  .section .rodata
  .Lcall01786_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3632]
 mov rdx, qword ptr [r12 + 3640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01786_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain01617_n00077_α
 jmp xchain01617_n00077_α
xchain01617_n00076_β:
 jmp xchain01617_n00077_α
xchain01617_n00077_α:
# IR_PROC_VALUE first-class procedure value
bb01787_α:
 mov rdi, qword ptr [rip + .Lx01788_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain01617_n00017_α
 xchain01617_n00077_β:
 jmp xchain01617_n00019_α
.Lx01788_0:
 .quad .Lx01788_0_s
.Lx01788_0_s:
 .string "strbang"
xchain01617_n00017_α:
bb01209_α:
  .section .rodata
  .Lcall01209_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01209_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je xchain01617_n00019_α
 jmp xchain01617_n00019_α
xchain01617_n00017_β:
 jmp xchain01617_n00019_α
xchain01617_n00019_α:
# IR_PROC_VALUE first-class procedure value
bb01789_α:
 mov rdi, qword ptr [rip + .Lx01790_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain01617_n00020_α
 xchain01617_n00019_β:
 jmp xchain01617_n00081_α
.Lx01790_0:
 .quad .Lx01790_0_s
.Lx01790_0_s:
 .string "strsub"
xchain01617_n00020_α:
bb01791_α:
  .section .rodata
  .Lcall01791_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3536]
 mov rdx, qword ptr [r12 + 3544]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01791_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain01617_n00081_α
 jmp xchain01617_n00081_α
xchain01617_n00020_β:
 jmp xchain01617_n00081_α
xchain01617_n00081_α:
# IR_PROC_VALUE first-class procedure value
bb01211_α:
 mov rdi, qword ptr [rip + .Lx01792_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain01617_n00083_α
 xchain01617_n00081_β:
 jmp xchain01617_n00084_α
.Lx01792_0:
 .quad .Lx01792_0_s
.Lx01792_0_s:
 .string "substr"
xchain01617_n00083_α:
bb01213_α:
  .section .rodata
  .Lcall01213_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01213_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain01617_n00084_α
 jmp xchain01617_n00084_α
xchain01617_n00083_β:
 jmp xchain01617_n00084_α
xchain01617_n00084_α:
# IR_PROC_VALUE first-class procedure value
bb01215_α:
 mov rdi, qword ptr [rip + .Lx01793_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain01617_n00024_α
 xchain01617_n00084_β:
 jmp xchain01617_n00026_α
.Lx01793_0:
 .quad .Lx01793_0_s
.Lx01793_0_s:
 .string "subsasg"
xchain01617_n00024_α:
bb01794_α:
  .section .rodata
  .Lcall01794_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01794_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain01617_n00026_α
 jmp xchain01617_n00026_α
xchain01617_n00024_β:
 jmp xchain01617_n00026_α
xchain01617_n00026_α:
# IR_PROC_VALUE first-class procedure value
bb01795_α:
 mov rdi, qword ptr [rip + .Lx01796_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain01617_n00087_α
 xchain01617_n00026_β:
 jmp xchain01617_n00088_α
.Lx01796_0:
 .quad .Lx01796_0_s
.Lx01796_0_s:
 .string "strcmp"
xchain01617_n00087_α:
bb01797_α:
  .section .rodata
  .Lcall01797_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3392]
 mov rdx, qword ptr [r12 + 3400]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01797_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je xchain01617_n00088_α
 jmp xchain01617_n00088_α
xchain01617_n00087_β:
 jmp xchain01617_n00088_α
xchain01617_n00088_α:
# IR_PROC_VALUE first-class procedure value
bb01798_α:
 mov rdi, qword ptr [rip + .Lx01799_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain01617_n00089_α
 xchain01617_n00088_β:
 jmp xchain01617_n00091_α
.Lx01799_0:
 .quad .Lx01799_0_s
.Lx01799_0_s:
 .string "strident"
xchain01617_n00089_α:
bb01800_α:
  .section .rodata
  .Lcall01800_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3344]
 mov rdx, qword ptr [r12 + 3352]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01800_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xchain01617_n00091_α
 jmp xchain01617_n00091_α
xchain01617_n00089_β:
 jmp xchain01617_n00091_α
xchain01617_n00091_α:
# IR_PROC_VALUE first-class procedure value
bb01801_α:
 mov rdi, qword ptr [rip + .Lx01802_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain01617_n00030_α
 xchain01617_n00091_β:
 jmp xchain01617_n00031_α
.Lx01802_0:
 .quad .Lx01802_0_s
.Lx01802_0_s:
 .string "concat"
xchain01617_n00030_α:
bb01803_α:
  .section .rodata
  .Lcall01803_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3296]
 mov rdx, qword ptr [r12 + 3304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01803_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain01617_n00031_α
 jmp xchain01617_n00031_α
xchain01617_n00030_β:
 jmp xchain01617_n00031_α
xchain01617_n00031_α:
# IR_PROC_VALUE first-class procedure value
bb01804_α:
 mov rdi, qword ptr [rip + .Lx01805_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain01617_n00032_α
 xchain01617_n00031_β:
 jmp xchain01617_n00095_α
.Lx01805_0:
 .quad .Lx01805_0_s
.Lx01805_0_s:
 .string "reversef"
xchain01617_n00032_α:
bb01806_α:
  .section .rodata
  .Lcall01806_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3248]
 mov rdx, qword ptr [r12 + 3256]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01806_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je xchain01617_n00095_α
 jmp xchain01617_n00095_α
xchain01617_n00032_β:
 jmp xchain01617_n00095_α
xchain01617_n00095_α:
# IR_PROC_VALUE first-class procedure value
bb01807_α:
 mov rdi, qword ptr [rip + .Lx01808_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 jmp xchain01617_n00096_α
 xchain01617_n00095_β:
 jmp xchain01617_n00098_α
.Lx01808_0:
 .quad .Lx01808_0_s
.Lx01808_0_s:
 .string "trimf"
xchain01617_n00096_α:
bb01809_α:
  .section .rodata
  .Lcall01809_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3200]
 mov rdx, qword ptr [r12 + 3208]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01809_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain01617_n00098_α
 jmp xchain01617_n00098_α
xchain01617_n00096_β:
 jmp xchain01617_n00098_α
xchain01617_n00098_α:
# IR_PROC_VALUE first-class procedure value
bb01810_α:
 mov rdi, qword ptr [rip + .Lx01811_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain01617_n00036_α
 xchain01617_n00098_β:
 jmp xchain01617_n00037_α
.Lx01811_0:
 .quad .Lx01811_0_s
.Lx01811_0_s:
 .string "replf"
xchain01617_n00036_α:
bb01812_α:
  .section .rodata
  .Lcall01812_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01812_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain01617_n00037_α
 jmp xchain01617_n00037_α
xchain01617_n00036_β:
 jmp xchain01617_n00037_α
xchain01617_n00037_α:
# IR_PROC_VALUE first-class procedure value
bb01813_α:
 mov rdi, qword ptr [rip + .Lx01814_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain01617_n00100_α
 xchain01617_n00037_β:
 jmp xchain01617_n00102_α
.Lx01814_0:
 .quad .Lx01814_0_s
.Lx01814_0_s:
 .string "leftf"
xchain01617_n00100_α:
bb01815_α:
  .section .rodata
  .Lcall01815_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3104]
 mov rdx, qword ptr [r12 + 3112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01815_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain01617_n00102_α
 jmp xchain01617_n00102_α
xchain01617_n00100_β:
 jmp xchain01617_n00102_α
xchain01617_n00102_α:
# IR_PROC_VALUE first-class procedure value
bb01221_α:
 mov rdi, qword ptr [rip + .Lx01816_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain01617_n00104_α
 xchain01617_n00102_β:
 jmp xchain01617_n00106_α
.Lx01816_0:
 .quad .Lx01816_0_s
.Lx01816_0_s:
 .string "centerf"
xchain01617_n00104_α:
bb01817_α:
  .section .rodata
  .Lcall01817_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01817_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain01617_n00106_α
 jmp xchain01617_n00106_α
xchain01617_n00104_β:
 jmp xchain01617_n00106_α
xchain01617_n00106_α:
# IR_PROC_VALUE first-class procedure value
bb01818_α:
 mov rdi, qword ptr [rip + .Lx01819_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain01617_n00039_α
 xchain01617_n00106_β:
 jmp xchain01617_n00041_α
.Lx01819_0:
 .quad .Lx01819_0_s
.Lx01819_0_s:
 .string "rightf"
xchain01617_n00039_α:
bb01820_α:
  .section .rodata
  .Lcall01820_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3008]
 mov rdx, qword ptr [r12 + 3016]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01820_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain01617_n00041_α
 jmp xchain01617_n00041_α
xchain01617_n00039_β:
 jmp xchain01617_n00041_α
xchain01617_n00041_α:
# IR_PROC_VALUE first-class procedure value
bb01821_α:
 mov rdi, qword ptr [rip + .Lx01822_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain01617_n00108_α
 xchain01617_n00041_β:
 jmp xchain01617_n00110_α
.Lx01822_0:
 .quad .Lx01822_0_s
.Lx01822_0_s:
 .string "entabf"
xchain01617_n00108_α:
bb01823_α:
  .section .rodata
  .Lcall01823_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01823_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je xchain01617_n00110_α
 jmp xchain01617_n00110_α
xchain01617_n00108_β:
 jmp xchain01617_n00110_α
xchain01617_n00110_α:
# IR_PROC_VALUE first-class procedure value
bb01824_α:
 mov rdi, qword ptr [rip + .Lx01825_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain01617_n00043_α
 xchain01617_n00110_β:
 jmp xchain01617_n00111_α
.Lx01825_0:
 .quad .Lx01825_0_s
.Lx01825_0_s:
 .string "detabf"
xchain01617_n00043_α:
bb01826_α:
  .section .rodata
  .Lcall01826_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2912]
 mov rdx, qword ptr [r12 + 2920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01826_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain01617_n00111_α
 jmp xchain01617_n00111_α
xchain01617_n00043_β:
 jmp xchain01617_n00111_α
xchain01617_n00111_α:
# IR_PROC_VALUE first-class procedure value
bb01827_α:
 mov rdi, qword ptr [rip + .Lx01828_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain01617_n00113_α
 xchain01617_n00111_β:
 jmp xchain01617_n00115_α
.Lx01828_0:
 .quad .Lx01828_0_s
.Lx01828_0_s:
 .string "mapf"
xchain01617_n00113_α:
bb01226_α:
  .section .rodata
  .Lcall01226_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2864]
 mov rdx, qword ptr [r12 + 2872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01226_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain01617_n00115_α
 jmp xchain01617_n00115_α
xchain01617_n00113_β:
 jmp xchain01617_n00115_α
xchain01617_n00115_α:
# IR_PROC_VALUE first-class procedure value
bb01227_α:
 mov rdi, qword ptr [rip + .Lx01829_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain01617_n00047_α
 xchain01617_n00115_β:
 jmp xchain01617_n00049_α
.Lx01829_0:
 .quad .Lx01829_0_s
.Lx01829_0_s:
 .string "map1"
xchain01617_n00047_α:
bb01830_α:
  .section .rodata
  .Lcall01830_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2816]
 mov rdx, qword ptr [r12 + 2824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01830_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je xchain01617_n00049_α
 jmp xchain01617_n00049_α
xchain01617_n00047_β:
 jmp xchain01617_n00049_α
xchain01617_n00049_α:
# IR_PROC_VALUE first-class procedure value
bb01831_α:
 mov rdi, qword ptr [rip + .Lx01832_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain01617_n00117_α
 xchain01617_n00049_β:
 jmp xchain01617_n00119_α
.Lx01832_0:
 .quad .Lx01832_0_s
.Lx01832_0_s:
 .string "map2"
xchain01617_n00117_α:
bb01833_α:
  .section .rodata
  .Lcall01833_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2768]
 mov rdx, qword ptr [r12 + 2776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01833_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je xchain01617_n00119_α
 jmp xchain01617_n00119_α
xchain01617_n00117_β:
 jmp xchain01617_n00119_α
xchain01617_n00119_α:
# IR_PROC_VALUE first-class procedure value
bb01834_α:
 mov rdi, qword ptr [rip + .Lx01835_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain01617_n00121_α
 xchain01617_n00119_β:
 jmp xchain01617_n00122_α
.Lx01835_0:
 .quad .Lx01835_0_s
.Lx01835_0_s:
 .string "tablemap"
xchain01617_n00121_α:
bb01231_α:
  .section .rodata
  .Lcall01231_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2720]
 mov rdx, qword ptr [r12 + 2728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01231_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je xchain01617_n00122_α
 jmp xchain01617_n00122_α
xchain01617_n00121_β:
 jmp xchain01617_n00122_α
xchain01617_n00122_α:
# IR_PROC_VALUE first-class procedure value
bb01836_α:
 mov rdi, qword ptr [rip + .Lx01837_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain01617_n00052_α
 xchain01617_n00122_β:
 jmp xchain01617_n00054_α
.Lx01837_0:
 .quad .Lx01837_0_s
.Lx01837_0_s:
 .string "listmap"
xchain01617_n00052_α:
bb01838_α:
  .section .rodata
  .Lcall01838_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2672]
 mov rdx, qword ptr [r12 + 2680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01838_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain01617_n00054_α
 jmp xchain01617_n00054_α
xchain01617_n00052_β:
 jmp xchain01617_n00054_α
xchain01617_n00054_α:
# IR_PROC_VALUE first-class procedure value
bb01232_α:
 mov rdi, qword ptr [rip + .Lx01839_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain01617_n00055_α
 xchain01617_n00054_β:
 jmp xchain01617_n00056_α
.Lx01839_0:
 .quad .Lx01839_0_s
.Lx01839_0_s:
 .string "nullscan"
xchain01617_n00055_α:
bb01234_α:
  .section .rodata
  .Lcall01234_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2624]
 mov rdx, qword ptr [r12 + 2632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01234_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain01617_n00056_α
 jmp xchain01617_n00056_α
xchain01617_n00055_β:
 jmp xchain01617_n00056_α
xchain01617_n00056_α:
# IR_PROC_VALUE first-class procedure value
bb01236_α:
 mov rdi, qword ptr [rip + .Lx01840_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain01617_n00057_α
 xchain01617_n00056_β:
 jmp xchain01617_n00127_α
.Lx01840_0:
 .quad .Lx01840_0_s
.Lx01840_0_s:
 .string "movef"
xchain01617_n00057_α:
bb01238_α:
  .section .rodata
  .Lcall01238_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2576]
 mov rdx, qword ptr [r12 + 2584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01238_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2544], rax
 mov qword ptr [r12 + 2552], rdx
 cmp eax, 99
 je xchain01617_n00127_α
 jmp xchain01617_n00127_α
xchain01617_n00057_β:
 jmp xchain01617_n00127_α
xchain01617_n00127_α:
# IR_PROC_VALUE first-class procedure value
bb01841_α:
 mov rdi, qword ptr [rip + .Lx01842_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 jmp xchain01617_n00128_α
 xchain01617_n00127_β:
 jmp xchain01617_n00130_α
.Lx01842_0:
 .quad .Lx01842_0_s
.Lx01842_0_s:
 .string "mov11"
xchain01617_n00128_α:
bb01843_α:
  .section .rodata
  .Lcall01843_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2528]
 mov rdx, qword ptr [r12 + 2536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01843_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain01617_n00130_α
 jmp xchain01617_n00130_α
xchain01617_n00128_β:
 jmp xchain01617_n00130_α
xchain01617_n00130_α:
# IR_PROC_VALUE first-class procedure value
bb01844_α:
 mov rdi, qword ptr [rip + .Lx01845_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain01617_n00061_α
 xchain01617_n00130_β:
 jmp xchain01617_n00063_α
.Lx01845_0:
 .quad .Lx01845_0_s
.Lx01845_0_s:
 .string "pos11"
xchain01617_n00061_α:
bb01846_α:
  .section .rodata
  .Lcall01846_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01846_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain01617_n00063_α
 jmp xchain01617_n00063_α
xchain01617_n00061_β:
 jmp xchain01617_n00063_α
xchain01617_n00063_α:
# IR_PROC_VALUE first-class procedure value
bb01847_α:
 mov rdi, qword ptr [rip + .Lx01848_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 jmp xchain01617_n00132_α
 xchain01617_n00063_β:
 jmp xchain01617_n00134_α
.Lx01848_0:
 .quad .Lx01848_0_s
.Lx01848_0_s:
 .string "tabf"
xchain01617_n00132_α:
bb01849_α:
  .section .rodata
  .Lcall01849_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2432]
 mov rdx, qword ptr [r12 + 2440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01849_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain01617_n00134_α
 jmp xchain01617_n00134_α
xchain01617_n00132_β:
 jmp xchain01617_n00134_α
xchain01617_n00134_α:
# IR_PROC_VALUE first-class procedure value
bb01850_α:
 mov rdi, qword ptr [rip + .Lx01851_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain01617_n01852_α
 xchain01617_n00134_β:
 jmp xchain01617_n00136_α
.Lx01851_0:
 .quad .Lx01851_0_s
.Lx01851_0_s:
 .string "matchf"
xchain01617_n01852_α:
bb01853_α:
  .section .rodata
  .Lcall01853_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01853_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xchain01617_n00136_α
 jmp xchain01617_n00136_α
xchain01617_n01852_β:
 jmp xchain01617_n00136_α
xchain01617_n00136_α:
# IR_PROC_VALUE first-class procedure value
bb01854_α:
 mov rdi, qword ptr [rip + .Lx01855_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 jmp xchain01617_n00064_α
 xchain01617_n00136_β:
 jmp xchain01617_n00066_α
.Lx01855_0:
 .quad .Lx01855_0_s
.Lx01855_0_s:
 .string "tabmat"
xchain01617_n00064_α:
bb01856_α:
  .section .rodata
  .Lcall01856_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2336]
 mov rdx, qword ptr [r12 + 2344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01856_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain01617_n00066_α
 jmp xchain01617_n00066_α
xchain01617_n00064_β:
 jmp xchain01617_n00066_α
xchain01617_n00066_α:
# IR_PROC_VALUE first-class procedure value
bb01857_α:
 mov rdi, qword ptr [rip + .Lx01858_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain01617_n00068_α
 xchain01617_n00066_β:
 jmp xchain01617_n00070_α
.Lx01858_0:
 .quad .Lx01858_0_s
.Lx01858_0_s:
 .string "posf"
xchain01617_n00068_α:
bb01859_α:
  .section .rodata
  .Lcall01859_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2288]
 mov rdx, qword ptr [r12 + 2296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01859_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain01617_n00070_α
 jmp xchain01617_n00070_α
xchain01617_n00068_β:
 jmp xchain01617_n00070_α
xchain01617_n00070_α:
# IR_PROC_VALUE first-class procedure value
bb01860_α:
 mov rdi, qword ptr [rip + .Lx01861_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain01617_n00071_α
 xchain01617_n00070_β:
 jmp xchain01617_n00139_α
.Lx01861_0:
 .quad .Lx01861_0_s
.Lx01861_0_s:
 .string "anyf"
xchain01617_n00071_α:
bb01862_α:
  .section .rodata
  .Lcall01862_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01862_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain01617_n00139_α
 jmp xchain01617_n00139_α
xchain01617_n00071_β:
 jmp xchain01617_n00139_α
xchain01617_n00139_α:
# IR_PROC_VALUE first-class procedure value
bb01863_α:
 mov rdi, qword ptr [rip + .Lx01864_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain01617_n00140_α
 xchain01617_n00139_β:
 jmp xchain01617_n00141_α
.Lx01864_0:
 .quad .Lx01864_0_s
.Lx01864_0_s:
 .string "manyf"
xchain01617_n00140_α:
bb01865_α:
  .section .rodata
  .Lcall01865_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01865_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp eax, 99
 je xchain01617_n00141_α
 jmp xchain01617_n00141_α
xchain01617_n00140_β:
 jmp xchain01617_n00141_α
xchain01617_n00141_α:
# IR_PROC_VALUE first-class procedure value
bb01866_α:
 mov rdi, qword ptr [rip + .Lx01867_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain01617_n00073_α
 xchain01617_n00141_β:
 jmp xchain01617_n00075_α
.Lx01867_0:
 .quad .Lx01867_0_s
.Lx01867_0_s:
 .string "uptof"
xchain01617_n00073_α:
bb01868_α:
  .section .rodata
  .Lcall01868_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01868_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je xchain01617_n00075_α
 jmp xchain01617_n00075_α
xchain01617_n00073_β:
 jmp xchain01617_n00075_α
xchain01617_n00075_α:
# IR_PROC_VALUE first-class procedure value
bb01869_α:
 mov rdi, qword ptr [rip + .Lx01870_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain01617_n00144_α
 xchain01617_n00075_β:
 jmp xchain01617_n00146_α
.Lx01870_0:
 .quad .Lx01870_0_s
.Lx01870_0_s:
 .string "findf"
xchain01617_n00144_α:
bb01245_α:
  .section .rodata
  .Lcall01245_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01245_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 cmp eax, 99
 je xchain01617_n00146_α
 jmp xchain01617_n00146_α
xchain01617_n00144_β:
 jmp xchain01617_n00146_α
xchain01617_n00146_α:
# IR_PROC_VALUE first-class procedure value
bb01871_α:
 mov rdi, qword ptr [rip + .Lx01872_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain01617_n00148_α
 xchain01617_n00146_β:
 jmp xchain01617_n00149_α
.Lx01872_0:
 .quad .Lx01872_0_s
.Lx01872_0_s:
 .string "balf"
xchain01617_n00148_α:
bb01873_α:
  .section .rodata
  .Lcall01873_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01873_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain01617_n00149_α
 jmp xchain01617_n00149_α
xchain01617_n00148_β:
 jmp xchain01617_n00149_α
xchain01617_n00149_α:
# IR_PROC_VALUE first-class procedure value
bb01874_α:
 mov rdi, qword ptr [rip + .Lx01875_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain01617_n00078_α
 xchain01617_n00149_β:
 jmp xchain01617_n00079_α
.Lx01875_0:
 .quad .Lx01875_0_s
.Lx01875_0_s:
 .string "tocset"
xchain01617_n00078_α:
bb01876_α:
  .section .rodata
  .Lcall01876_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01876_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain01617_n00079_α
 jmp xchain01617_n00079_α
xchain01617_n00078_β:
 jmp xchain01617_n00079_α
xchain01617_n00079_α:
# IR_PROC_VALUE first-class procedure value
bb01877_α:
 mov rdi, qword ptr [rip + .Lx01878_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain01617_n00080_α
 xchain01617_n00079_β:
 jmp xchain01617_n00153_α
.Lx01878_0:
 .quad .Lx01878_0_s
.Lx01878_0_s:
 .string "cssize"
xchain01617_n00080_α:
bb01879_α:
  .section .rodata
  .Lcall01879_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01879_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain01617_n00153_α
 jmp xchain01617_n00153_α
xchain01617_n00080_β:
 jmp xchain01617_n00153_α
xchain01617_n00153_α:
# IR_PROC_VALUE first-class procedure value
bb01880_α:
 mov rdi, qword ptr [rip + .Lx01881_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain01617_n00082_α
 xchain01617_n00153_β:
 jmp xchain01617_n00155_α
.Lx01881_0:
 .quad .Lx01881_0_s
.Lx01881_0_s:
 .string "cscompl"
xchain01617_n00082_α:
bb01882_α:
  .section .rodata
  .Lcall01882_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1904]
 mov rdx, qword ptr [r12 + 1912]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01882_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain01617_n00155_α
 jmp xchain01617_n00155_α
xchain01617_n00082_β:
 jmp xchain01617_n00155_α
xchain01617_n00155_α:
# IR_PROC_VALUE first-class procedure value
bb01249_α:
 mov rdi, qword ptr [rip + .Lx01883_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain01617_n00156_α
 xchain01617_n00155_β:
 jmp xchain01617_n00158_α
.Lx01883_0:
 .quad .Lx01883_0_s
.Lx01883_0_s:
 .string "lcreate"
xchain01617_n00156_α:
bb01251_α:
  .section .rodata
  .Lcall01251_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1856]
 mov rdx, qword ptr [r12 + 1864]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01251_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain01617_n00158_α
 jmp xchain01617_n00158_α
xchain01617_n00156_β:
 jmp xchain01617_n00158_α
xchain01617_n00158_α:
# IR_PROC_VALUE first-class procedure value
bb01884_α:
 mov rdi, qword ptr [rip + .Lx01885_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain01617_n00085_α
 xchain01617_n00158_β:
 jmp xchain01617_n00086_α
.Lx01885_0:
 .quad .Lx01885_0_s
.Lx01885_0_s:
 .string "lconst"
xchain01617_n00085_α:
bb01886_α:
  .section .rodata
  .Lcall01886_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1808]
 mov rdx, qword ptr [r12 + 1816]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01886_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain01617_n00086_α
 jmp xchain01617_n00086_α
xchain01617_n00085_β:
 jmp xchain01617_n00086_α
xchain01617_n00086_α:
# IR_PROC_VALUE first-class procedure value
bb01887_α:
 mov rdi, qword ptr [rip + .Lx01888_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain01617_n00160_α
 xchain01617_n00086_β:
 jmp xchain01617_n00162_α
.Lx01888_0:
 .quad .Lx01888_0_s
.Lx01888_0_s:
 .string "lcopy"
xchain01617_n00160_α:
bb01889_α:
  .section .rodata
  .Lcall01889_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01889_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain01617_n00162_α
 jmp xchain01617_n00162_α
xchain01617_n00160_β:
 jmp xchain01617_n00162_α
xchain01617_n00162_α:
# IR_PROC_VALUE first-class procedure value
bb01254_α:
 mov rdi, qword ptr [rip + .Lx01890_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain01617_n00164_α
 xchain01617_n00162_β:
 jmp xchain01617_n00165_α
.Lx01890_0:
 .quad .Lx01890_0_s
.Lx01890_0_s:
 .string "lsort"
xchain01617_n00164_α:
bb01891_α:
  .section .rodata
  .Lcall01891_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01891_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain01617_n00165_α
 jmp xchain01617_n00165_α
xchain01617_n00164_β:
 jmp xchain01617_n00165_α
xchain01617_n00165_α:
# IR_PROC_VALUE first-class procedure value
bb01892_α:
 mov rdi, qword ptr [rip + .Lx01893_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain01617_n00090_α
 xchain01617_n00165_β:
 jmp xchain01617_n00092_α
.Lx01893_0:
 .quad .Lx01893_0_s
.Lx01893_0_s:
 .string "lsize"
xchain01617_n00090_α:
bb01257_α:
  .section .rodata
  .Lcall01257_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1664]
 mov rdx, qword ptr [r12 + 1672]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01257_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain01617_n00092_α
 jmp xchain01617_n00092_α
xchain01617_n00090_β:
 jmp xchain01617_n00092_α
xchain01617_n00092_α:
# IR_PROC_VALUE first-class procedure value
bb01894_α:
 mov rdi, qword ptr [rip + .Lx01895_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain01617_n00093_α
 xchain01617_n00092_β:
 jmp xchain01617_n00169_α
.Lx01895_0:
 .quad .Lx01895_0_s
.Lx01895_0_s:
 .string "lpick"
xchain01617_n00093_α:
bb01896_α:
  .section .rodata
  .Lcall01896_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1616]
 mov rdx, qword ptr [r12 + 1624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01896_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain01617_n00169_α
 jmp xchain01617_n00169_α
xchain01617_n00093_β:
 jmp xchain01617_n00169_α
xchain01617_n00169_α:
# IR_PROC_VALUE first-class procedure value
bb01897_α:
 mov rdi, qword ptr [rip + .Lx01898_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain01617_n00094_α
 xchain01617_n00169_β:
 jmp xchain01617_n00170_α
.Lx01898_0:
 .quad .Lx01898_0_s
.Lx01898_0_s:
 .string "lbang"
xchain01617_n00094_α:
bb01899_α:
  .section .rodata
  .Lcall01899_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01899_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain01617_n00170_α
 jmp xchain01617_n00170_α
xchain01617_n00094_β:
 jmp xchain01617_n00170_α
xchain01617_n00170_α:
# IR_PROC_VALUE first-class procedure value
bb01259_α:
 mov rdi, qword ptr [rip + .Lx01900_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain01617_n00172_α
 xchain01617_n00170_β:
 jmp xchain01617_n00174_α
.Lx01900_0:
 .quad .Lx01900_0_s
.Lx01900_0_s:
 .string "lsubscr"
xchain01617_n00172_α:
bb01901_α:
  .section .rodata
  .Lcall01901_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1520]
 mov rdx, qword ptr [r12 + 1528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01901_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain01617_n00174_α
 jmp xchain01617_n00174_α
xchain01617_n00172_β:
 jmp xchain01617_n00174_α
xchain01617_n00174_α:
# IR_PROC_VALUE first-class procedure value
bb01902_α:
 mov rdi, qword ptr [rip + .Lx01903_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain01617_n00097_α
 xchain01617_n00174_β:
 jmp xchain01617_n00099_α
.Lx01903_0:
 .quad .Lx01903_0_s
.Lx01903_0_s:
 .string "put1get1"
xchain01617_n00097_α:
bb01261_α:
  .section .rodata
  .Lcall01261_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01261_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain01617_n00099_α
 jmp xchain01617_n00099_α
xchain01617_n00097_β:
 jmp xchain01617_n00099_α
xchain01617_n00099_α:
# IR_PROC_VALUE first-class procedure value
bb01263_α:
 mov rdi, qword ptr [rip + .Lx01904_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain01617_n00176_α
 xchain01617_n00099_β:
 jmp xchain01617_n00178_α
.Lx01904_0:
 .quad .Lx01904_0_s
.Lx01904_0_s:
 .string "put2get2"
xchain01617_n00176_α:
bb01264_α:
  .section .rodata
  .Lcall01264_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1424]
 mov rdx, qword ptr [r12 + 1432]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01264_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain01617_n00178_α
 jmp xchain01617_n00178_α
xchain01617_n00176_β:
 jmp xchain01617_n00178_α
xchain01617_n00178_α:
# IR_PROC_VALUE first-class procedure value
bb01266_α:
 mov rdi, qword ptr [rip + .Lx01905_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain01617_n00180_α
 xchain01617_n00178_β:
 jmp xchain01617_n00181_α
.Lx01905_0:
 .quad .Lx01905_0_s
.Lx01905_0_s:
 .string "put3get3"
xchain01617_n00180_α:
bb01268_α:
  .section .rodata
  .Lcall01268_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01268_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain01617_n00181_α
 jmp xchain01617_n00181_α
xchain01617_n00180_β:
 jmp xchain01617_n00181_α
xchain01617_n00181_α:
# IR_PROC_VALUE first-class procedure value
bb01270_α:
 mov rdi, qword ptr [rip + .Lx01906_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain01617_n00101_α
 xchain01617_n00181_β:
 jmp xchain01617_n00103_α
.Lx01906_0:
 .quad .Lx01906_0_s
.Lx01906_0_s:
 .string "put4get4"
xchain01617_n00101_α:
bb01272_α:
  .section .rodata
  .Lcall01272_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01272_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain01617_n00103_α
 jmp xchain01617_n00103_α
xchain01617_n00101_β:
 jmp xchain01617_n00103_α
xchain01617_n00103_α:
# IR_PROC_VALUE first-class procedure value
bb01274_α:
 mov rdi, qword ptr [rip + .Lx01907_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain01617_n00185_α
 xchain01617_n00103_β:
 jmp xchain01617_n00186_α
.Lx01907_0:
 .quad .Lx01907_0_s
.Lx01907_0_s:
 .string "pushpop"
xchain01617_n00185_α:
bb01275_α:
  .section .rodata
  .Lcall01275_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01275_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain01617_n00186_α
 jmp xchain01617_n00186_α
xchain01617_n00185_β:
 jmp xchain01617_n00186_α
xchain01617_n00186_α:
# IR_PROC_VALUE first-class procedure value
bb01277_α:
 mov rdi, qword ptr [rip + .Lx01908_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain01617_n00105_α
 xchain01617_n00186_β:
 jmp xchain01617_n00187_α
.Lx01908_0:
 .quad .Lx01908_0_s
.Lx01908_0_s:
 .string "putget12"
xchain01617_n00105_α:
bb01279_α:
  .section .rodata
  .Lcall01279_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01279_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain01617_n00187_α
 jmp xchain01617_n00187_α
xchain01617_n00105_β:
 jmp xchain01617_n00187_α
xchain01617_n00187_α:
# IR_PROC_VALUE first-class procedure value
bb01281_α:
 mov rdi, qword ptr [rip + .Lx01909_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain01617_n00189_α
 xchain01617_n00187_β:
 jmp xchain01617_n00191_α
.Lx01909_0:
 .quad .Lx01909_0_s
.Lx01909_0_s:
 .string "pushpop12"
xchain01617_n00189_α:
bb01910_α:
  .section .rodata
  .Lcall01910_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01910_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain01617_n00191_α
 jmp xchain01617_n00191_α
xchain01617_n00189_β:
 jmp xchain01617_n00191_α
xchain01617_n00191_α:
# IR_PROC_VALUE first-class procedure value
bb01911_α:
 mov rdi, qword ptr [rip + .Lx01912_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain01617_n00107_α
 xchain01617_n00191_β:
 jmp xchain01617_n00109_α
.Lx01912_0:
 .quad .Lx01912_0_s
.Lx01912_0_s:
 .string "setcreate"
xchain01617_n00107_α:
bb01913_α:
  .section .rodata
  .Lcall01913_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01913_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain01617_n00109_α
 jmp xchain01617_n00109_α
xchain01617_n00107_β:
 jmp xchain01617_n00109_α
xchain01617_n00109_α:
# IR_PROC_VALUE first-class procedure value
bb01914_α:
 mov rdi, qword ptr [rip + .Lx01915_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain01617_n00194_α
 xchain01617_n00109_β:
 jmp xchain01617_n00195_α
.Lx01915_0:
 .quad .Lx01915_0_s
.Lx01915_0_s:
 .string "setcopy"
xchain01617_n00194_α:
bb01916_α:
  .section .rodata
  .Lcall01916_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01916_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain01617_n00195_α
 jmp xchain01617_n00195_α
xchain01617_n00194_β:
 jmp xchain01617_n00195_α
xchain01617_n00195_α:
# IR_PROC_VALUE first-class procedure value
bb01917_α:
 mov rdi, qword ptr [rip + .Lx01918_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain01617_n00196_α
 xchain01617_n00195_β:
 jmp xchain01617_n00198_α
.Lx01918_0:
 .quad .Lx01918_0_s
.Lx01918_0_s:
 .string "setmember"
xchain01617_n00196_α:
bb01285_α:
  .section .rodata
  .Lcall01285_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01285_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain01617_n00198_α
 jmp xchain01617_n00198_α
xchain01617_n00196_β:
 jmp xchain01617_n00198_α
xchain01617_n00198_α:
# IR_PROC_VALUE first-class procedure value
bb01286_α:
 mov rdi, qword ptr [rip + .Lx01919_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain01617_n00112_α
 xchain01617_n00198_β:
 jmp xchain01617_n00114_α
.Lx01919_0:
 .quad .Lx01919_0_s
.Lx01919_0_s:
 .string "setinsert"
xchain01617_n00112_α:
bb01920_α:
  .section .rodata
  .Lcall01920_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01920_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain01617_n00114_α
 jmp xchain01617_n00114_α
xchain01617_n00112_β:
 jmp xchain01617_n00114_α
xchain01617_n00114_α:
# IR_PROC_VALUE first-class procedure value
bb01921_α:
 mov rdi, qword ptr [rip + .Lx01922_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain01617_n00200_α
 xchain01617_n00114_β:
 jmp xchain01617_n00202_α
.Lx01922_0:
 .quad .Lx01922_0_s
.Lx01922_0_s:
 .string "setinsdel"
xchain01617_n00200_α:
bb01923_α:
  .section .rodata
  .Lcall01923_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01923_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain01617_n00202_α
 jmp xchain01617_n00202_α
xchain01617_n00200_β:
 jmp xchain01617_n00202_α
xchain01617_n00202_α:
# IR_PROC_VALUE first-class procedure value
bb01924_α:
 mov rdi, qword ptr [rip + .Lx01925_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain01617_n00116_α
 xchain01617_n00202_β:
 jmp xchain01617_n00205_α
.Lx01925_0:
 .quad .Lx01925_0_s
.Lx01925_0_s:
 .string "setbang"
xchain01617_n00116_α:
bb01290_α:
  .section .rodata
  .Lcall01290_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01290_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain01617_n00205_α
 jmp xchain01617_n00205_α
xchain01617_n00116_β:
 jmp xchain01617_n00205_α
xchain01617_n00205_α:
# IR_PROC_VALUE first-class procedure value
bb01926_α:
 mov rdi, qword ptr [rip + .Lx01927_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain01617_n00206_α
 xchain01617_n00205_β:
 jmp xchain01617_n00208_α
.Lx01927_0:
 .quad .Lx01927_0_s
.Lx01927_0_s:
 .string "setpick"
xchain01617_n00206_α:
bb01928_α:
  .section .rodata
  .Lcall01928_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01928_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain01617_n00208_α
 jmp xchain01617_n00208_α
xchain01617_n00206_β:
 jmp xchain01617_n00208_α
xchain01617_n00208_α:
# IR_PROC_VALUE first-class procedure value
bb01292_α:
 mov rdi, qword ptr [rip + .Lx01929_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain01617_n00118_α
 xchain01617_n00208_β:
 jmp xchain01617_n00120_α
.Lx01929_0:
 .quad .Lx01929_0_s
.Lx01929_0_s:
 .string "tblcreate"
xchain01617_n00118_α:
bb01930_α:
  .section .rodata
  .Lcall01930_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01930_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain01617_n00120_α
 jmp xchain01617_n00120_α
xchain01617_n00118_β:
 jmp xchain01617_n00120_α
xchain01617_n00120_α:
# IR_PROC_VALUE first-class procedure value
bb01931_α:
 mov rdi, qword ptr [rip + .Lx01932_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain01617_n00211_α
 xchain01617_n00120_β:
 jmp xchain01617_n00212_α
.Lx01932_0:
 .quad .Lx01932_0_s
.Lx01932_0_s:
 .string "tblsub"
xchain01617_n00211_α:
bb01933_α:
  .section .rodata
  .Lcall01933_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01933_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain01617_n00212_α
 jmp xchain01617_n00212_α
xchain01617_n00211_β:
 jmp xchain01617_n00212_α
xchain01617_n00212_α:
# IR_PROC_VALUE first-class procedure value
bb01934_α:
 mov rdi, qword ptr [rip + .Lx01935_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain01617_n00214_α
 xchain01617_n00212_β:
 jmp xchain01617_n00216_α
.Lx01935_0:
 .quad .Lx01935_0_s
.Lx01935_0_s:
 .string "tblasgn"
xchain01617_n00214_α:
bb01293_α:
  .section .rodata
  .Lcall01293_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01293_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain01617_n00216_α
 jmp xchain01617_n00216_α
xchain01617_n00214_β:
 jmp xchain01617_n00216_α
xchain01617_n00216_α:
# IR_PROC_VALUE first-class procedure value
bb01936_α:
 mov rdi, qword ptr [rip + .Lx01937_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain01617_n00123_α
 xchain01617_n00216_β:
 jmp xchain01617_n00124_α
.Lx01937_0:
 .quad .Lx01937_0_s
.Lx01937_0_s:
 .string "recconstr"
xchain01617_n00123_α:
bb01938_α:
  .section .rodata
  .Lcall01938_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01938_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain01617_n00124_α
 jmp xchain01617_n00124_α
xchain01617_n00123_β:
 jmp xchain01617_n00124_α
xchain01617_n00124_α:
# IR_PROC_VALUE first-class procedure value
bb01295_α:
 mov rdi, qword ptr [rip + .Lx01939_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain01617_n00125_α
 xchain01617_n00124_β:
 jmp xchain01617_n00219_α
.Lx01939_0:
 .quad .Lx01939_0_s
.Lx01939_0_s:
 .string "reccopy"
xchain01617_n00125_α:
bb01296_α:
  .section .rodata
  .Lcall01296_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01296_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain01617_n00219_α
 jmp xchain01617_n00219_α
xchain01617_n00125_β:
 jmp xchain01617_n00219_α
xchain01617_n00219_α:
# IR_PROC_VALUE first-class procedure value
bb01297_α:
 mov rdi, qword ptr [rip + .Lx01940_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain01617_n00220_α
 xchain01617_n00219_β:
 jmp xchain01617_n00126_α
.Lx01940_0:
 .quad .Lx01940_0_s
.Lx01940_0_s:
 .string "recfield"
xchain01617_n00220_α:
bb01299_α:
  .section .rodata
  .Lcall01299_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01299_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain01617_n00126_α
 jmp xchain01617_n00126_α
xchain01617_n00220_β:
 jmp xchain01617_n00126_α
xchain01617_n00126_α:
# IR_PROC_VALUE first-class procedure value
bb01301_α:
 mov rdi, qword ptr [rip + .Lx01941_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain01617_n00223_α
 xchain01617_n00126_β:
 jmp xchain01617_n00224_α
.Lx01941_0:
 .quad .Lx01941_0_s
.Lx01941_0_s:
 .string "bigfield"
xchain01617_n00223_α:
bb01303_α:
  .section .rodata
  .Lcall01303_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01303_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain01617_n00224_α
 jmp xchain01617_n00224_α
xchain01617_n00223_β:
 jmp xchain01617_n00224_α
xchain01617_n00224_α:
# IR_PROC_VALUE first-class procedure value
bb01305_α:
 mov rdi, qword ptr [rip + .Lx01942_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain01617_n00225_α
 xchain01617_n00224_β:
 jmp xchain01617_n00129_α
.Lx01942_0:
 .quad .Lx01942_0_s
.Lx01942_0_s:
 .string "readz"
xchain01617_n00225_α:
bb01306_α:
  .section .rodata
  .Lcall01306_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01306_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain01617_n00129_α
 jmp xchain01617_n00129_α
xchain01617_n00225_β:
 jmp xchain01617_n00129_α
xchain01617_n00129_α:
# IR_PROC_VALUE first-class procedure value
bb01308_α:
 mov rdi, qword ptr [rip + .Lx01943_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain01617_n00131_α
 xchain01617_n00129_β:
 jmp xchain01617_n00228_α
.Lx01943_0:
 .quad .Lx01943_0_s
.Lx01943_0_s:
 .string "writecon"
xchain01617_n00131_α:
bb01310_α:
  .section .rodata
  .Lcall01310_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01310_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain01617_n00228_α
 jmp xchain01617_n00228_α
xchain01617_n00131_β:
 jmp xchain01617_n00228_α
xchain01617_n00228_α:
# IR_PROC_VALUE first-class procedure value
bb01312_α:
 mov rdi, qword ptr [rip + .Lx01944_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain01617_n00229_α
 xchain01617_n00228_β:
 jmp xchain01617_n00231_α
.Lx01944_0:
 .quad .Lx01944_0_s
.Lx01944_0_s:
 .string "writestr"
xchain01617_n00229_α:
bb01313_α:
  .section .rodata
  .Lcall01313_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01313_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain01617_n00231_α
 jmp xchain01617_n00231_α
xchain01617_n00229_β:
 jmp xchain01617_n00231_α
xchain01617_n00231_α:
# IR_PROC_VALUE first-class procedure value
bb01945_α:
 mov rdi, qword ptr [rip + .Lx01946_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain01617_n00233_α
 xchain01617_n00231_β:
 jmp xchain01617_n00133_α
.Lx01946_0:
 .quad .Lx01946_0_s
.Lx01946_0_s:
 .string "cxcreate"
xchain01617_n00233_α:
bb01947_α:
  .section .rodata
  .Lcall01947_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01947_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain01617_n00133_α
 jmp xchain01617_n00133_α
xchain01617_n00233_β:
 jmp xchain01617_n00133_α
xchain01617_n00133_α:
# IR_PROC_VALUE first-class procedure value
bb01948_α:
 mov rdi, qword ptr [rip + .Lx01949_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain01617_n00235_α
 xchain01617_n00133_β:
 jmp xchain01617_n00237_α
.Lx01949_0:
 .quad .Lx01949_0_s
.Lx01949_0_s:
 .string "cxget"
xchain01617_n00235_α:
bb01950_α:
  .section .rodata
  .Lcall01950_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01950_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain01617_n00237_α
 jmp xchain01617_n00237_α
xchain01617_n00235_β:
 jmp xchain01617_n00237_α
xchain01617_n00237_α:
# IR_PROC_VALUE first-class procedure value
bb01951_α:
 mov rdi, qword ptr [rip + .Lx01952_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain01617_n00135_α
 xchain01617_n00237_β:
 jmp xchain01617_n00239_α
.Lx01952_0:
 .quad .Lx01952_0_s
.Lx01952_0_s:
 .string "nothing"
xchain01617_n00135_α:
bb01953_α:
  .section .rodata
  .Lcall01953_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01953_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain01617_n00239_α
 jmp xchain01617_n00239_α
xchain01617_n00135_β:
 jmp xchain01617_n00239_α
xchain01617_n00239_α:
# IR_PROC_VALUE first-class procedure value
bb01317_α:
 mov rdi, qword ptr [rip + .Lx01954_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain01617_n00240_α
 xchain01617_n00239_β:
 jmp xchain01617_n00242_α
.Lx01954_0:
 .quad .Lx01954_0_s
.Lx01954_0_s:
 .string "nothing"
xchain01617_n00240_α:
bb01319_α:
  .section .rodata
  .Lcall01319_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01319_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain01617_n00242_α
 jmp xchain01617_n00242_α
xchain01617_n00240_β:
 jmp xchain01617_n00242_α
xchain01617_n00242_α:
# IR_PROC_VALUE first-class procedure value
bb01955_α:
 mov rdi, qword ptr [rip + .Lx01956_0]
 call rt_proc_value@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain01617_n00243_α
 xchain01617_n00242_β:
 jmp xchain01617_n00245_β
.Lx01956_0:
 .quad .Lx01956_0_s
.Lx01956_0_s:
 .string "nothing"
xchain01617_n00243_α:
bb01957_α:
  .section .rodata
  .Lcall01957_pname: .string "report"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall01957_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain01617_n00245_β
 jmp xchain01617_n00245_α
xchain01617_n00243_β:
 jmp xchain01617_n00245_β
xchain01617_n00245_α:
# IR_KEYWORD_read
bb01958_α:
 mov rdi, qword ptr [rip + .Lx01959_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain01617_n00247_α
 xchain01617_n00245_β:
 jmp main_ω
.Lx01959_0:
 .quad .Lx01959_0_s
.Lx01959_0_s:
 .string "&errout"
xchain01617_n00247_α:
bb01960_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+48]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2724: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2724]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain01617_n00247_β:
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
.section .rodata
.S0: .string "bb_scan_pos: unhandled (needs literal positive n + descr flat-chain slot)"
.text
