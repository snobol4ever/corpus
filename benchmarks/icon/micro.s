  .intel_syntax noprefix
  .text
  .globl proc_report_α
proc_report_α:
#=======================================================================================================================
    .global proc_report_α
    .global proc_report_β
    .global proc_report_γ
    .global proc_report_ω
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 752
  call rt_jmp_frame_lexprep@PLT
proc_report_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain0_n1_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 lea rdx, [rbp + 720]
 mov ecx, 0
 lea r8, [rbp + 720]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n3_α
 xchain0_n1_β:
 lea rdi, [rbp + 720]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n3_α
 jmp xchain0_n2_α
# KEYWORD_read
 xchain0_n2_α:
 mov rdi, qword ptr [rip + .Lx5_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "&errout"
 xchain0_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n2_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "."
 xchain0_n5_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn9: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn9]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
# IR_VAR
 xchain0_n7_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
# IR_RETURN
 xchain0_n8_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_report_γ
 xchain0_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx15_0]
 mov esi, 2
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
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n8_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "measure"
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n8_α
# IR_COERCE_NUMERIC
 xchain0_n11_α:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 7
 je .Lx18_1
 cmp eax, 6
 jne .Lx18_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx18_0
.Lx18_1:
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
 jmp .Lx18_2
.Lx18_0:
 lea rdi, [rbp + 272]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx18_2:
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n8_α
# IR_COERCE_NUMERIC
 xchain0_n12_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 7
 je .Lx20_1
 cmp eax, 6
 jne .Lx20_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx20_0
.Lx20_1:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 216], rax
 jmp .Lx20_2
.Lx20_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx20_2:
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n8_α
 xchain0_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx21_0
 mov eax, dword ptr [rbp + 208]
 cmp eax, 100
 je .Lx21_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx21_2
 mov eax, dword ptr [rbp + 208]
 cmp eax, 6
 jne .Lx21_2
.Lx21_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, qword ptr [rbp + 216]
 sub rax, rcx
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n14_α
.Lx21_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8d, 1
 lea r9, [rbp + 176]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx21_3
.Lx21_2:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n8_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
.Lx21_3:
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n8_α
.Lx22_0:
 .quad 10
 xchain0_n15_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+128]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 136], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+144]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn24: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n8_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "  "
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n8_α
 xchain0_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+48]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 56], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+64]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 72], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+80]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 88], rax
  .section .rodata
  .Lrkfn29: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn29]
 lea rsi, [rbp + 48]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n8_α
 xchain0_n18_β:
 jmp xchain0_n8_α
proc_report_res:
add rsp, 8
pop rbp
proc_report_β:
jmp proc_report_ω
proc_report_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 760]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
proc_report_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_measure_α
proc_measure_α:
#=======================================================================================================================
    .global proc_measure_α
    .global proc_measure_β
    .global proc_measure_γ
    .global proc_measure_ω
  sub rsp, 2768
  mov [rsp + 2744], rcx
  mov [rsp + 2752], rdx
  mov [rsp + 2760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2648], rsp
  mov rdi, rsp
  mov esi, 2736
  call rt_jmp_frame_lexprep@PLT
proc_measure_α_body:
# IR_VAR
 xchain30_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2552], rax
 jmp xchain30_n1_α
 xchain30_n0_β:
 jmp xchain30_n2_α
# IR_LIT_INTEGER
 xchain30_n1_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain30_n3_α
 xchain30_n1_β:
 jmp xchain30_n2_α
.Lx33_0:
 .quad 1
# IR_LIT_INTEGER
 xchain30_n2_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain30_n4_α
 xchain30_n2_β:
 jmp xchain30_n5_α
.Lx34_0:
 .quad 1
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n3_α:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2600], rax
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 lea rdx, [rbp + 2592]
 mov ecx, 1
 lea r8, [rbp + 2608]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain30_n2_α
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain30_n2_α
 xchain30_n3_β:
 lea rdi, [rbp + 2608]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n2_α
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain30_n2_α
 jmp xchain30_n2_α
 xchain30_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2512]
 mov rdx, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain30_n5_α
 xchain30_n4_β:
 jmp xchain30_n5_α
# KEYWORD_read
 xchain30_n5_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain30_n6_α
 xchain30_n5_β:
 jmp xchain30_n8_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "&time"
 xchain30_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2464]
 mov rdx, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain30_n8_α
 xchain30_n6_β:
 jmp xchain30_n8_α
 xchain30_n7_α:
 jmp xchain30_n8_α
xchain30_n7_β:
 jmp xchain30_n8_α
# IR_VAR
 xchain30_n8_α:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2392], rax
 jmp xchain30_n9_α
 xchain30_n8_β:
 jmp xchain30_n10_α
# IR_LIT_INTEGER
 xchain30_n9_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain30_n11_α
 xchain30_n9_β:
 jmp xchain30_n10_α
.Lx43_0:
 .quad 10
# IR_VAR
 xchain30_n10_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2280], rax
 jmp xchain30_n12_α
 xchain30_n10_β:
 jmp xchain30_n13_α
# IR_COERCE_NUMERIC
 xchain30_n11_α:
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 7
 je .Lx47_1
 cmp eax, 6
 jne .Lx47_0
 mov eax, dword ptr [rbp + 2416]
 cmp eax, 6
 jne .Lx47_0
.Lx47_1:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2360], rax
 jmp .Lx47_2
.Lx47_0:
 lea rdi, [rbp + 2704]
 lea rsi, [rbp + 2416]
 lea rdx, [rbp + 2352]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx47_2:
 jmp xchain30_n14_α
 xchain30_n11_β:
 jmp xchain30_n10_α
 xchain30_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain30_n13_α
 xchain30_n12_β:
 jmp xchain30_n13_α
# IR_VAR
 xchain30_n13_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2168], rax
 jmp xchain30_n15_α
 xchain30_n13_β:
 jmp xchain30_n16_α
 xchain30_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2352]
 cmp eax, 100
 je .Lx51_0
 mov eax, dword ptr [rbp + 2352]
 cmp eax, 6
 jne .Lx51_2
.Lx51_1:
 mov rax, qword ptr [rbp + 2360]
 mov rcx, 10
 imul rax, rcx
 mov qword ptr [rbp + 2320], 6
 mov qword ptr [rbp + 2328], rax
 jmp xchain30_n17_α
.Lx51_0:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2416]
 mov rcx, qword ptr [rbp + 2424]
 mov r8d, 2
 lea r9, [rbp + 2320]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx51_3
.Lx51_2:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2416]
 mov rcx, qword ptr [rbp + 2424]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n10_α
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
.Lx51_3:
 jmp xchain30_n17_α
 xchain30_n14_β:
 jmp xchain30_n10_α
# IR_VAR
 xchain30_n15_α:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2232], rax
 jmp xchain30_n18_α
 xchain30_n15_β:
 jmp xchain30_n16_α
# KEYWORD_read
 xchain30_n16_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain30_n19_α
 xchain30_n16_β:
 jmp xchain30_n20_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "&time"
 xchain30_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain30_n10_α
 xchain30_n17_β:
 jmp xchain30_n10_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n18_α:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2216], rax
 mov rdi, qword ptr [rbp + 2160]
 mov rsi, qword ptr [rbp + 2168]
 lea rdx, [rbp + 2208]
 mov ecx, 1
 lea r8, [rbp + 2224]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain30_n16_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain30_n16_α
 xchain30_n18_β:
 lea rdi, [rbp + 2224]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n16_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain30_n16_α
 jmp xchain30_n16_α
 xchain30_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain30_n20_α
 xchain30_n19_β:
 jmp xchain30_n20_α
# IR_VAR
 xchain30_n20_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2056], rax
 jmp xchain30_n21_α
 xchain30_n20_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n21_α:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2088], rax
 jmp xchain30_n23_α
 xchain30_n21_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n22_α:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 1736], rax
 jmp xchain30_n24_α
 xchain30_n22_β:
 jmp xchain30_n8_α
# IR_COERCE_NUMERIC
 xchain30_n23_α:
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 7
 je .Lx66_1
 cmp eax, 6
 jne .Lx66_0
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 6
 jne .Lx66_0
.Lx66_1:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2024], rax
 jmp .Lx66_2
.Lx66_0:
 lea rdi, [rbp + 2720]
 lea rsi, [rbp + 2672]
 lea rdx, [rbp + 2016]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx66_2:
 jmp xchain30_n25_α
 xchain30_n23_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n24_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1832], rax
 jmp xchain30_n26_α
 xchain30_n24_β:
 jmp xchain30_n8_α
# IR_COERCE_NUMERIC
 xchain30_n25_α:
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 7
 je .Lx70_1
 cmp eax, 6
 jne .Lx70_0
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 6
 jne .Lx70_0
.Lx70_1:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 1992], rax
 jmp .Lx70_2
.Lx70_0:
 lea rdi, [rbp + 2672]
 lea rsi, [rbp + 2720]
 lea rdx, [rbp + 1984]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx70_2:
 jmp xchain30_n27_α
 xchain30_n25_β:
 jmp xchain30_n22_α
# IR_LIT_INTEGER
 xchain30_n26_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain30_n28_α
 xchain30_n26_β:
 jmp xchain30_n8_α
.Lx71_0:
 .quad 20
 xchain30_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 2016]
 cmp eax, 6
 jne .Lx72_2
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 6
 jne .Lx72_2
.Lx72_1:
 mov rax, qword ptr [rbp + 2024]
 mov rcx, qword ptr [rbp + 1992]
 sub rax, rcx
 mov qword ptr [rbp + 1952], 6
 mov qword ptr [rbp + 1960], rax
 jmp xchain30_n29_α
.Lx72_0:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 1
 lea r9, [rbp + 1952]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx72_3
.Lx72_2:
 mov rdi, qword ptr [rbp + 2016]
 mov rsi, qword ptr [rbp + 2024]
 mov rdx, qword ptr [rbp + 1984]
 mov rcx, qword ptr [rbp + 1992]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n22_α
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
.Lx72_3:
 jmp xchain30_n29_α
 xchain30_n27_β:
 jmp xchain30_n22_α
# IR_COERCE_NUMERIC
 xchain30_n28_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx74_1
 cmp eax, 6
 jne .Lx74_0
 mov eax, dword ptr [rbp + 1856]
 cmp eax, 6
 jne .Lx74_0
.Lx74_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1800], rax
 jmp .Lx74_2
.Lx74_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1856]
 lea rdx, [rbp + 1792]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx74_2:
 jmp xchain30_n30_α
 xchain30_n28_β:
 jmp xchain30_n8_α
 xchain30_n29_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1928], rax
  .section .rodata
  .Lrkfn76: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn76]
 lea rsi, [rbp + 1920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain30_n22_α
 jmp xchain30_n31_α
 xchain30_n29_β:
 jmp xchain30_n22_α
 xchain30_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 100
 je .Lx77_0
 mov eax, dword ptr [rbp + 1792]
 cmp eax, 6
 jne .Lx77_2
.Lx77_1:
 mov rax, qword ptr [rbp + 1800]
 mov rcx, 20
 cqo
 idiv rcx
 mov qword ptr [rbp + 1760], 6
 mov qword ptr [rbp + 1768], rax
 jmp xchain30_n32_α
.Lx77_0:
 mov rdi, qword ptr [rbp + 1792]
 mov rsi, qword ptr [rbp + 1800]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 3
 lea r9, [rbp + 1760]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx77_3
.Lx77_2:
 mov rdi, qword ptr [rbp + 1792]
 mov rsi, qword ptr [rbp + 1800]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
.Lx77_3:
 jmp xchain30_n32_α
 xchain30_n30_β:
 jmp xchain30_n8_α
 xchain30_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain30_n22_α
 xchain30_n31_β:
 jmp xchain30_n22_α
 xchain30_n32_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx79_2
 mov eax, dword ptr [rbp + 1760]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [rbp + 2696]
 mov rcx, qword ptr [rbp + 1768]
 cmp rax, rcx
 jl xchain30_n8_α
 mov rcx, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rcx
 mov rcx, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rcx
 jmp xchain30_n34_α
.Lx79_0:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 mov r8d, 8
 lea r9, [rbp + 1696]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx79_1
 cmp eax, 1
 je xchain30_n8_α
 jmp xchain30_n34_α
.Lx79_2:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain30_n8_α
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rax
 jmp xchain30_n34_α
 xchain30_n32_β:
 jmp xchain30_n8_α
 xchain30_n33_α:
 jmp xchain30_n34_α
xchain30_n33_β:
 jmp xchain30_n34_α
# IR_LIT_REAL
 xchain30_n34_α:
 mov qword ptr [rbp + 1472], 7
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain30_n35_α
 xchain30_n34_β:
 jmp xchain30_n37_α
.Lx81_0:
 .quad 4607632778762754458
# IR_VAR
 xchain30_n35_α:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 1512], rax
 jmp xchain30_n36_α
 xchain30_n35_β:
 jmp xchain30_n37_α
# IR_COERCE_NUMERIC
 xchain30_n36_α:
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 7
 je .Lx85_1
 cmp eax, 6
 jne .Lx85_0
 mov eax, dword ptr [rbp + 1472]
 cmp eax, 6
 jne .Lx85_0
.Lx85_1:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 1448], rax
 jmp .Lx85_2
.Lx85_0:
 lea rdi, [rbp + 2704]
 lea rsi, [rbp + 1472]
 lea rdx, [rbp + 1440]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx85_2:
 jmp xchain30_n38_α
 xchain30_n36_β:
 jmp xchain30_n37_α
 xchain30_n37_α:
# BOX IR_CALL collect(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn87: .string "collect"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn87]
 lea rsi, [rbp + 1136]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain30_n39_α
 jmp xchain30_n39_α
 xchain30_n37_β:
 jmp xchain30_n39_α
 xchain30_n38_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain30_n40_α
 xchain30_n38_β:
 jmp xchain30_n37_α
# KEYWORD_read
 xchain30_n39_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain30_n41_α
 xchain30_n39_β:
 jmp xchain30_n43_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "&time"
# IR_VAR
 xchain30_n40_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1544], rax
 jmp xchain30_n42_α
 xchain30_n40_β:
 jmp xchain30_n37_α
 xchain30_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain30_n43_α
 xchain30_n41_β:
 jmp xchain30_n43_α
# IR_COERCE_NUMERIC
 xchain30_n42_α:
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 7
 je .Lx94_1
 cmp eax, 6
 jne .Lx94_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx94_0
.Lx94_1:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
 jmp .Lx94_2
.Lx94_0:
 lea rdi, [rbp + 1408]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 1376]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx94_2:
 jmp xchain30_n44_α
 xchain30_n42_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n43_α:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 1016], rax
 jmp xchain30_n45_α
 xchain30_n43_β:
 jmp xchain30_n43_α
# IR_COERCE_NUMERIC
 xchain30_n44_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx98_1
 cmp eax, 6
 jne .Lx98_0
 mov eax, dword ptr [rbp + 1408]
 cmp eax, 6
 jne .Lx98_0
.Lx98_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1352], rax
 jmp .Lx98_2
.Lx98_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1408]
 lea rdx, [rbp + 1344]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx98_2:
 jmp xchain30_n46_α
 xchain30_n44_β:
 jmp xchain30_n37_α
# KEYWORD_read
 xchain30_n45_α:
 mov rdi, qword ptr [rip + .Lx99_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain30_n47_α
 xchain30_n45_β:
 jmp xchain30_n43_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "&time"
 xchain30_n46_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [rbp + 1344]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 6
 jne .Lx00001_2
 mov eax, dword ptr [rbp + 1344]
 cmp eax, 6
 jne .Lx00001_2
.Lx00001_1:
 mov rax, qword ptr [rbp + 1384]
 mov rcx, qword ptr [rbp + 1352]
 imul rax, rcx
 mov qword ptr [rbp + 1312], 6
 mov qword ptr [rbp + 1320], rax
 jmp xchain30_n48_α
.Lx00001_0:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1344]
 mov rcx, qword ptr [rbp + 1352]
 mov r8d, 2
 lea r9, [rbp + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00001_3
.Lx00001_2:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1344]
 mov rcx, qword ptr [rbp + 1352]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
.Lx00001_3:
 jmp xchain30_n48_α
 xchain30_n46_β:
 jmp xchain30_n37_α
 xchain30_n47_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [rbp + 2680]
 mov rcx, qword ptr [rbp + 1048]
 cmp rax, rcx
 je xchain30_n43_α
 mov rcx, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rcx
 mov rcx, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rcx
 jmp xchain30_n49_α
.Lx00002_0:
 mov rdi, qword ptr [rbp + 2672]
 mov rsi, qword ptr [rbp + 2680]
 mov rdx, qword ptr [rbp + 1040]
 mov rcx, qword ptr [rbp + 1048]
 mov r8d, 10
 lea r9, [rbp + 976]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00002_1
 cmp eax, 1
 je xchain30_n43_α
 jmp xchain30_n49_α
.Lx00002_2:
 mov rdi, qword ptr [rbp + 2672]
 mov rsi, qword ptr [rbp + 2680]
 mov rdx, qword ptr [rbp + 1040]
 mov rcx, qword ptr [rbp + 1048]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain30_n43_α
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
 jmp xchain30_n49_α
 xchain30_n47_β:
 jmp xchain30_n43_α
# IR_VAR
 xchain30_n48_α:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 1624], rax
 jmp xchain30_n50_α
 xchain30_n48_β:
 jmp xchain30_n37_α
 xchain30_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain30_n51_α
 xchain30_n49_β:
 jmp xchain30_n43_α
 xchain30_n50_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn106: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 1584]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain30_n37_α
 jmp xchain30_n52_α
 xchain30_n50_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n51_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 872], rax
 jmp xchain30_n53_α
 xchain30_n51_β:
 jmp xchain30_n54_α
# IR_COERCE_NUMERIC
 xchain30_n52_α:
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 7
 je .Lx00003_1
 cmp eax, 6
 jne .Lx00003_0
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 6
 jne .Lx00003_0
.Lx00003_1:
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1288], rax
 jmp .Lx00003_2
.Lx00003_0:
 lea rdi, [rbp + 1312]
 lea rsi, [rbp + 1568]
 lea rdx, [rbp + 1280]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00003_2:
 jmp xchain30_n55_α
 xchain30_n52_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n53_α:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 936], rax
 jmp xchain30_n56_α
 xchain30_n53_β:
 jmp xchain30_n54_α
# KEYWORD_read
 xchain30_n54_α:
 mov rdi, qword ptr [rip + .Lx00004_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain30_n57_α
 xchain30_n54_β:
 jmp xchain30_n59_α
.Lx00004_0:
 .quad .Lx00004_0_s
.Lx00004_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain30_n55_α:
 mov eax, dword ptr [rbp + 1568]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1256], rax
 jmp .Lx00005_2
.Lx00005_0:
 lea rdi, [rbp + 1568]
 lea rsi, [rbp + 1312]
 lea rdx, [rbp + 1248]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00005_2:
 jmp xchain30_n58_α
 xchain30_n55_β:
 jmp xchain30_n37_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n56_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 920], rax
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 lea rdx, [rbp + 912]
 mov ecx, 1
 lea r8, [rbp + 928]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain30_n54_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain30_n54_α
 xchain30_n56_β:
 lea rdi, [rbp + 928]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n54_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain30_n54_α
 jmp xchain30_n54_α
 xchain30_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain30_n59_α
 xchain30_n57_β:
 jmp xchain30_n59_α
 xchain30_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx00006_2
 mov eax, dword ptr [rbp + 1248]
 cmp eax, 6
 jne .Lx00006_2
.Lx00006_1:
 mov rax, qword ptr [rbp + 1288]
 mov rcx, qword ptr [rbp + 1256]
 cqo
 idiv rcx
 mov qword ptr [rbp + 1216], 6
 mov qword ptr [rbp + 1224], rax
 jmp xchain30_n60_α
.Lx00006_0:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 3
 lea r9, [rbp + 1216]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00006_3
.Lx00006_2:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
.Lx00006_3:
 jmp xchain30_n60_α
 xchain30_n58_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n59_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 760], rax
 jmp xchain30_n61_α
 xchain30_n59_β:
 jmp xchain30_n62_α
 xchain30_n60_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn123: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain30_n37_α
 jmp xchain30_n63_α
 xchain30_n60_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n61_α:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 792], rax
 jmp xchain30_n64_α
 xchain30_n61_β:
 jmp xchain30_n62_α
# IR_VAR
 xchain30_n62_α:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 488], rax
 jmp xchain30_n65_α
 xchain30_n62_β:
 jmp xchain30_n66_α
 xchain30_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain30_n37_α
 xchain30_n63_β:
 jmp xchain30_n37_α
# IR_COERCE_NUMERIC
 xchain30_n64_α:
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 728], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [rbp + 2720]
 lea rsi, [rbp + 2672]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain30_n67_α
 xchain30_n64_β:
 jmp xchain30_n62_α
# IR_VAR
 xchain30_n65_α:
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 568], rax
 jmp xchain30_n68_α
 xchain30_n65_β:
 jmp xchain30_n66_α
# IR_VAR
 xchain30_n66_α:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 280], rax
 jmp xchain30_n69_α
 xchain30_n66_β:
 jmp xchain30_n70_α
# IR_COERCE_NUMERIC
 xchain30_n67_α:
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 7
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [rbp + 2720]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 696], rax
 jmp .Lx00008_2
.Lx00008_0:
 lea rdi, [rbp + 2672]
 lea rsi, [rbp + 2720]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00008_2:
 jmp xchain30_n71_α
 xchain30_n67_β:
 jmp xchain30_n62_α
 xchain30_n68_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn138: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain30_n66_α
 jmp xchain30_n72_α
 xchain30_n68_β:
 jmp xchain30_n66_α
# IR_LIT_INTEGER
 xchain30_n69_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain30_n73_α
 xchain30_n69_β:
 jmp xchain30_n70_α
.Lx00009_0:
 .quad 1000000
# IR_VAR
 xchain30_n70_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 56], rax
 jmp xchain30_n74_α
 xchain30_n70_β:
 jmp proc_measure_ω
 xchain30_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00010_2
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, qword ptr [rbp + 696]
 sub rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain30_n75_α
.Lx00010_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00010_3
.Lx00010_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n62_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
.Lx00010_3:
 jmp xchain30_n75_α
 xchain30_n71_β:
 jmp xchain30_n62_α
# IR_COERCE_NUMERIC
 xchain30_n72_α:
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [rbp + 2688]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00011_2:
 jmp xchain30_n76_α
 xchain30_n72_β:
 jmp xchain30_n66_α
# IR_COERCE_NUMERIC
 xchain30_n73_α:
 mov eax, dword ptr [rbp + 2672]
 cmp eax, 7
 je .Lx00012_1
 cmp eax, 6
 jne .Lx00012_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00012_0
.Lx00012_1:
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 248], rax
 jmp .Lx00012_2
.Lx00012_0:
 lea rdi, [rbp + 2672]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00012_2:
 jmp xchain30_n77_α
 xchain30_n73_β:
 jmp xchain30_n70_α
# IR_RETURN
 xchain30_n74_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_measure_γ
 xchain30_n75_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn149: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn149]
 lea rsi, [rbp + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain30_n62_α
 jmp xchain30_n78_α
 xchain30_n75_β:
 jmp xchain30_n62_α
# IR_COERCE_NUMERIC
 xchain30_n76_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 7
 je .Lx00013_1
 cmp eax, 6
 jne .Lx00013_0
 mov eax, dword ptr [rbp + 2688]
 cmp eax, 6
 jne .Lx00013_0
.Lx00013_1:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00013_2
.Lx00013_0:
 lea rdi, [rbp + 512]
 lea rsi, [rbp + 2688]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00013_2:
 jmp xchain30_n79_α
 xchain30_n76_β:
 jmp xchain30_n66_α
 xchain30_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00014_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00014_2
.Lx00014_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, 1000000
 imul rax, rcx
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain30_n80_α
.Lx00014_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 lea r9, [rbp + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00014_3
.Lx00014_2:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n70_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
.Lx00014_3:
 jmp xchain30_n80_α
 xchain30_n77_β:
 jmp xchain30_n70_α
 xchain30_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain30_n62_α
 xchain30_n78_β:
 jmp xchain30_n62_α
 xchain30_n79_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00015_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00015_2
.Lx00015_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, qword ptr [rbp + 424]
 cqo
 idiv rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain30_n81_α
.Lx00015_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00015_3
.Lx00015_2:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n66_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
.Lx00015_3:
 jmp xchain30_n81_α
 xchain30_n79_β:
 jmp xchain30_n66_α
# IR_LIT_REAL
 xchain30_n80_α:
 mov qword ptr [rbp + 336], 7
 mov rax, qword ptr [rip + .Lx00016_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain30_n82_α
 xchain30_n80_β:
 jmp xchain30_n70_α
.Lx00016_0:
 .quad 4602678819172646912
 xchain30_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain30_n66_α
 xchain30_n81_β:
 jmp xchain30_n66_α
# IR_COERCE_NUMERIC
 xchain30_n82_α:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 7
 je .Lx00017_1
 cmp eax, 6
 jne .Lx00017_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00017_0
.Lx00017_1:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp .Lx00017_2
.Lx00017_0:
 lea rdi, [rbp + 208]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00017_2:
 jmp xchain30_n83_α
 xchain30_n82_β:
 jmp xchain30_n70_α
 xchain30_n83_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n70_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain30_n84_α
 xchain30_n83_β:
 jmp xchain30_n70_α
 xchain30_n84_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn161: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain30_n70_α
 jmp xchain30_n85_α
 xchain30_n84_β:
 jmp xchain30_n70_α
 xchain30_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain30_n70_α
 xchain30_n85_β:
 jmp xchain30_n70_α
proc_measure_res:
add rsp, 8
pop rbp
proc_measure_β:
jmp proc_measure_ω
proc_measure_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2744]
lea rsp, [rbp + 2768]
mov rbp, [rbp + 2760]
jmp rax
proc_measure_ω:
mov rax, [rbp + 2752]
lea rsp, [rbp + 2768]
mov rbp, [rbp + 2760]
jmp rax
  .globl proc_nothing_α
proc_nothing_α:
#=======================================================================================================================
    .global proc_nothing_α
    .global proc_nothing_β
    .global proc_nothing_γ
    .global proc_nothing_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_nothing_α_body:
# IR_VAR
 xchain00018_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00018_n1_α
 xchain00018_n0_β:
 jmp xchain00018_n2_α
# IR_UNOP
 xchain00018_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00018_n2_α
 cmp eax, 0
 jne xchain00018_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00018_n3_α
 xchain00018_n1_β:
 jmp xchain00018_n2_α
# IR_LIT_INTEGER
 xchain00018_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00018_n4_α
 xchain00018_n2_β:
 jmp proc_nothing_ω
.Lx00019_0:
 .quad 1
# IR_LIT_STRING
 xchain00018_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00018_n5_α
 xchain00018_n3_β:
 jmp proc_nothing_ω
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "nothing"
# IR_VAR
 xchain00018_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00018_n6_α
 xchain00018_n4_β:
 jmp proc_nothing_ω
# IR_RETURN
 xchain00018_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nothing_γ
# IR_TO
 xchain00018_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00021_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nothing_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00018_n7_α
 xchain00018_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00021_0
# IR_LIT_INTEGER
 xchain00018_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00018_n6_β
 xchain00018_n7_β:
 jmp xchain00018_n6_β
.Lx00022_0:
 .quad 0
proc_nothing_res:
add rsp, 8
pop rbp
proc_nothing_β:
jmp proc_nothing_ω
proc_nothing_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_nothing_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_uplus_α
proc_uplus_α:
#=======================================================================================================================
    .global proc_uplus_α
    .global proc_uplus_β
    .global proc_uplus_γ
    .global proc_uplus_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_uplus_α_body:
# IR_VAR
 xchain00023_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00023_n1_α
 xchain00023_n0_β:
 jmp xchain00023_n2_α
# IR_UNOP
 xchain00023_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00023_n2_α
 cmp eax, 0
 jne xchain00023_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00023_n3_α
 xchain00023_n1_β:
 jmp xchain00023_n2_α
# IR_LIT_INTEGER
 xchain00023_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00023_n4_α
 xchain00023_n2_β:
 jmp proc_uplus_ω
.Lx00024_0:
 .quad 1
# IR_LIT_STRING
 xchain00023_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00023_n5_α
 xchain00023_n3_β:
 jmp proc_uplus_ω
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "+407"
# IR_VAR
 xchain00023_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00023_n6_α
 xchain00023_n4_β:
 jmp proc_uplus_ω
# IR_RETURN
 xchain00023_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplus_γ
# IR_TO
 xchain00023_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00026_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00023_n7_α
 xchain00023_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00026_0
# IR_LIT_INTEGER
 xchain00023_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00023_n6_β
 xchain00023_n7_β:
 jmp xchain00023_n6_β
.Lx00027_0:
 .quad 407
proc_uplus_res:
add rsp, 8
pop rbp
proc_uplus_β:
jmp proc_uplus_ω
proc_uplus_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_uplus_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_uplusr_α
proc_uplusr_α:
#=======================================================================================================================
    .global proc_uplusr_α
    .global proc_uplusr_β
    .global proc_uplusr_γ
    .global proc_uplusr_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_uplusr_α_body:
# IR_VAR
 xchain00028_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00028_n1_α
 xchain00028_n0_β:
 jmp xchain00028_n2_α
# IR_UNOP
 xchain00028_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00028_n2_α
 cmp eax, 0
 jne xchain00028_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00028_n3_α
 xchain00028_n1_β:
 jmp xchain00028_n2_α
# IR_LIT_INTEGER
 xchain00028_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00028_n4_α
 xchain00028_n2_β:
 jmp proc_uplusr_ω
.Lx00029_0:
 .quad 1
# IR_LIT_STRING
 xchain00028_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00028_n5_α
 xchain00028_n3_β:
 jmp proc_uplusr_ω
.Lx00030_0:
 .quad .Lx00030_0_s
.Lx00030_0_s:
 .string "+7.25"
# IR_VAR
 xchain00028_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00028_n6_α
 xchain00028_n4_β:
 jmp proc_uplusr_ω
# IR_RETURN
 xchain00028_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplusr_γ
# IR_TO
 xchain00028_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00031_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00028_n7_α
 xchain00028_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00031_0
# IR_LIT_REAL
 xchain00028_n7_α:
 mov qword ptr [rbp + 128], 7
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00028_n6_β
 xchain00028_n7_β:
 jmp xchain00028_n6_β
.Lx00032_0:
 .quad 4619848792751996928
proc_uplusr_res:
add rsp, 8
pop rbp
proc_uplusr_β:
jmp proc_uplusr_ω
proc_uplusr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_uplusr_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_absf_α
proc_absf_α:
#=======================================================================================================================
    .global proc_absf_α
    .global proc_absf_β
    .global proc_absf_γ
    .global proc_absf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_absf_α_body:
# IR_VAR
 xchain00033_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00033_n1_α
 xchain00033_n0_β:
 jmp xchain00033_n2_α
# IR_UNOP
 xchain00033_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00033_n2_α
 cmp eax, 0
 jne xchain00033_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00033_n3_α
 xchain00033_n1_β:
 jmp xchain00033_n2_α
# IR_LIT_INTEGER
 xchain00033_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00033_n4_α
 xchain00033_n2_β:
 jmp proc_absf_ω
.Lx00034_0:
 .quad 1
# IR_LIT_STRING
 xchain00033_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00033_n5_α
 xchain00033_n3_β:
 jmp proc_absf_ω
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string "abs(-3)"
# IR_VAR
 xchain00033_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00033_n6_α
 xchain00033_n4_β:
 jmp proc_absf_ω
# IR_RETURN
 xchain00033_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_absf_γ
# IR_TO
 xchain00033_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00036_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00033_n7_α
 xchain00033_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00036_0
# IR_LIT_INTEGER
 xchain00033_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00033_n8_α
 xchain00033_n7_β:
 jmp xchain00033_n6_β
.Lx00037_0:
 .quad 18446744073709551613
 xchain00033_n8_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn212: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00033_n6_β
 jmp xchain00033_n6_β
 xchain00033_n8_β:
 jmp xchain00033_n6_β
proc_absf_res:
add rsp, 8
pop rbp
proc_absf_β:
jmp proc_absf_ω
proc_absf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_absf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_intadd_α
proc_intadd_α:
#=======================================================================================================================
    .global proc_intadd_α
    .global proc_intadd_β
    .global proc_intadd_γ
    .global proc_intadd_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_intadd_α_body:
# IR_VAR
 xchain00038_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00038_n1_α
 xchain00038_n0_β:
 jmp xchain00038_n2_α
# IR_UNOP
 xchain00038_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00038_n2_α
 cmp eax, 0
 jne xchain00038_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00038_n3_α
 xchain00038_n1_β:
 jmp xchain00038_n2_α
# IR_LIT_INTEGER
 xchain00038_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00038_n4_α
 xchain00038_n2_β:
 jmp proc_intadd_ω
.Lx00039_0:
 .quad 1
# IR_LIT_STRING
 xchain00038_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00038_n5_α
 xchain00038_n3_β:
 jmp proc_intadd_ω
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "4 + 7"
# IR_VAR
 xchain00038_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00038_n6_α
 xchain00038_n4_β:
 jmp proc_intadd_ω
# IR_RETURN
 xchain00038_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intadd_γ
# IR_TO
 xchain00038_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00041_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00038_n7_α
 xchain00038_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00041_0
# IR_LIT_INTEGER
 xchain00038_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00038_n8_α
 xchain00038_n7_β:
 jmp xchain00038_n6_β
.Lx00042_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00038_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00038_n9_α
 xchain00038_n8_β:
 jmp xchain00038_n6_β
.Lx00043_0:
 .quad 7
 xchain00038_n9_α:
# IR_BINOP_ARITH
.Lx00044_1:
 mov rax, 4
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 128], 6
 mov qword ptr [rbp + 136], rax
 jmp xchain00038_n6_β
.Lx00044_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 0
 lea r9, [rbp + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00044_3
.Lx00044_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00038_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
.Lx00044_3:
 jmp xchain00038_n6_β
 xchain00038_n9_β:
 jmp xchain00038_n6_β
proc_intadd_res:
add rsp, 8
pop rbp
proc_intadd_β:
jmp proc_intadd_ω
proc_intadd_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_intadd_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_intcmp_α
proc_intcmp_α:
#=======================================================================================================================
    .global proc_intcmp_α
    .global proc_intcmp_β
    .global proc_intcmp_γ
    .global proc_intcmp_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_intcmp_α_body:
# IR_VAR
 xchain00045_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00045_n1_α
 xchain00045_n0_β:
 jmp xchain00045_n2_α
# IR_UNOP
 xchain00045_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00045_n2_α
 cmp eax, 0
 jne xchain00045_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00045_n3_α
 xchain00045_n1_β:
 jmp xchain00045_n2_α
# IR_LIT_INTEGER
 xchain00045_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00046_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00045_n4_α
 xchain00045_n2_β:
 jmp proc_intcmp_ω
.Lx00046_0:
 .quad 1
# IR_LIT_STRING
 xchain00045_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00045_n5_α
 xchain00045_n3_β:
 jmp proc_intcmp_ω
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "4 < 7"
# IR_VAR
 xchain00045_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00045_n6_α
 xchain00045_n4_β:
 jmp proc_intcmp_ω
# IR_RETURN
 xchain00045_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcmp_γ
# IR_TO
 xchain00045_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00048_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00045_n7_α
 xchain00045_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00048_0
# IR_LIT_INTEGER
 xchain00045_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00045_n8_α
 xchain00045_n7_β:
 jmp xchain00045_n6_β
.Lx00049_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00045_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00045_n9_α
 xchain00045_n8_β:
 jmp xchain00045_n6_β
.Lx00050_0:
 .quad 7
 xchain00045_n9_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 100
 je .Lx00051_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00051_2
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00051_2
.Lx00051_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 200]
 cmp rax, rcx
 jge xchain00045_n6_β
 mov rcx, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rcx
 mov rcx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rcx
 jmp xchain00045_n6_β
.Lx00051_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 lea r9, [rbp + 128]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00051_1
 cmp eax, 1
 je xchain00045_n6_β
 jmp xchain00045_n6_β
.Lx00051_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00045_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00045_n6_β
 xchain00045_n9_β:
 jmp xchain00045_n6_β
proc_intcmp_res:
add rsp, 8
pop rbp
proc_intcmp_β:
jmp proc_intcmp_ω
proc_intcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_intcmp_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_intpow_α
proc_intpow_α:
#=======================================================================================================================
    .global proc_intpow_α
    .global proc_intpow_β
    .global proc_intpow_γ
    .global proc_intpow_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_intpow_α_body:
# IR_VAR
 xchain00052_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00052_n1_α
 xchain00052_n0_β:
 jmp xchain00052_n2_α
# IR_UNOP
 xchain00052_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00052_n2_α
 cmp eax, 0
 jne xchain00052_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00052_n3_α
 xchain00052_n1_β:
 jmp xchain00052_n2_α
# IR_LIT_INTEGER
 xchain00052_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00052_n4_α
 xchain00052_n2_β:
 jmp proc_intpow_ω
.Lx00053_0:
 .quad 1
# IR_LIT_STRING
 xchain00052_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00052_n5_α
 xchain00052_n3_β:
 jmp proc_intpow_ω
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "4 ^ 7"
# IR_VAR
 xchain00052_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00052_n6_α
 xchain00052_n4_β:
 jmp proc_intpow_ω
# IR_RETURN
 xchain00052_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intpow_γ
# IR_TO
 xchain00052_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00055_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00052_n7_α
 xchain00052_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00055_0
# IR_LIT_INTEGER
 xchain00052_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00052_n8_α
 xchain00052_n7_β:
 jmp xchain00052_n6_β
.Lx00056_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00052_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00052_n9_α
 xchain00052_n8_β:
 jmp xchain00052_n6_β
.Lx00057_0:
 .quad 7
 xchain00052_n9_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00052_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00052_n6_β
 xchain00052_n9_β:
 jmp xchain00052_n6_β
proc_intpow_res:
add rsp, 8
pop rbp
proc_intpow_β:
jmp proc_intpow_ω
proc_intpow_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_intpow_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_realcmp_α
proc_realcmp_α:
#=======================================================================================================================
    .global proc_realcmp_α
    .global proc_realcmp_β
    .global proc_realcmp_γ
    .global proc_realcmp_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_realcmp_α_body:
# IR_VAR
 xchain00058_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00058_n1_α
 xchain00058_n0_β:
 jmp xchain00058_n2_α
# IR_UNOP
 xchain00058_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00058_n2_α
 cmp eax, 0
 jne xchain00058_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00058_n3_α
 xchain00058_n1_β:
 jmp xchain00058_n2_α
# IR_LIT_INTEGER
 xchain00058_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00058_n4_α
 xchain00058_n2_β:
 jmp proc_realcmp_ω
.Lx00059_0:
 .quad 1
# IR_LIT_STRING
 xchain00058_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00058_n5_α
 xchain00058_n3_β:
 jmp proc_realcmp_ω
.Lx00060_0:
 .quad .Lx00060_0_s
.Lx00060_0_s:
 .string "1.6 < 2.7"
# IR_VAR
 xchain00058_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00058_n6_α
 xchain00058_n4_β:
 jmp proc_realcmp_ω
# IR_RETURN
 xchain00058_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcmp_γ
# IR_TO
 xchain00058_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00061_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00058_n7_α
 xchain00058_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00061_0
# IR_LIT_REAL
 xchain00058_n7_α:
 mov qword ptr [rbp + 160], 7
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00058_n8_α
 xchain00058_n7_β:
 jmp xchain00058_n6_β
.Lx00062_0:
 .quad 4609884578576439706
# IR_LIT_REAL
 xchain00058_n8_α:
 mov qword ptr [rbp + 192], 7
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00058_n9_α
 xchain00058_n8_β:
 jmp xchain00058_n6_β
.Lx00063_0:
 .quad 4613262278296967578
 xchain00058_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00058_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00058_n6_β
 xchain00058_n9_β:
 jmp xchain00058_n6_β
proc_realcmp_res:
add rsp, 8
pop rbp
proc_realcmp_β:
jmp proc_realcmp_ω
proc_realcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_realcmp_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_cosf_α
proc_cosf_α:
#=======================================================================================================================
    .global proc_cosf_α
    .global proc_cosf_β
    .global proc_cosf_γ
    .global proc_cosf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_cosf_α_body:
# IR_VAR
 xchain00064_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00064_n1_α
 xchain00064_n0_β:
 jmp xchain00064_n2_α
# IR_UNOP
 xchain00064_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00064_n2_α
 cmp eax, 0
 jne xchain00064_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00064_n3_α
 xchain00064_n1_β:
 jmp xchain00064_n2_α
# IR_LIT_INTEGER
 xchain00064_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00064_n4_α
 xchain00064_n2_β:
 jmp proc_cosf_ω
.Lx00065_0:
 .quad 1
# IR_LIT_STRING
 xchain00064_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00064_n5_α
 xchain00064_n3_β:
 jmp proc_cosf_ω
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "cos(0.2)"
# IR_VAR
 xchain00064_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00064_n6_α
 xchain00064_n4_β:
 jmp proc_cosf_ω
# IR_RETURN
 xchain00064_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cosf_γ
# IR_TO
 xchain00064_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00067_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00064_n7_α
 xchain00064_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00067_0
# IR_LIT_REAL
 xchain00064_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00064_n8_α
 xchain00064_n7_β:
 jmp xchain00064_n6_β
.Lx00068_0:
 .quad 4596373779694328218
 xchain00064_n8_α:
# BOX IR_CALL cos(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn282: .string "cos"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn282]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00064_n6_β
 jmp xchain00064_n6_β
 xchain00064_n8_β:
 jmp xchain00064_n6_β
proc_cosf_res:
add rsp, 8
pop rbp
proc_cosf_β:
jmp proc_cosf_ω
proc_cosf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_cosf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_sqrtf_α
proc_sqrtf_α:
#=======================================================================================================================
    .global proc_sqrtf_α
    .global proc_sqrtf_β
    .global proc_sqrtf_γ
    .global proc_sqrtf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_sqrtf_α_body:
# IR_VAR
 xchain00069_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00069_n1_α
 xchain00069_n0_β:
 jmp xchain00069_n2_α
# IR_UNOP
 xchain00069_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00069_n2_α
 cmp eax, 0
 jne xchain00069_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00069_n3_α
 xchain00069_n1_β:
 jmp xchain00069_n2_α
# IR_LIT_INTEGER
 xchain00069_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00069_n4_α
 xchain00069_n2_β:
 jmp proc_sqrtf_ω
.Lx00070_0:
 .quad 1
# IR_LIT_STRING
 xchain00069_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00069_n5_α
 xchain00069_n3_β:
 jmp proc_sqrtf_ω
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "sqrt(7.4)"
# IR_VAR
 xchain00069_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00069_n6_α
 xchain00069_n4_β:
 jmp proc_sqrtf_ω
# IR_RETURN
 xchain00069_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_sqrtf_γ
# IR_TO
 xchain00069_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00072_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00069_n7_α
 xchain00069_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00072_0
# IR_LIT_REAL
 xchain00069_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00069_n8_α
 xchain00069_n7_β:
 jmp xchain00069_n6_β
.Lx00073_0:
 .quad 4620017677738023322
 xchain00069_n8_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn296: .string "sqrt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn296]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00069_n6_β
 jmp xchain00069_n6_β
 xchain00069_n8_β:
 jmp xchain00069_n6_β
proc_sqrtf_res:
add rsp, 8
pop rbp
proc_sqrtf_β:
jmp proc_sqrtf_ω
proc_sqrtf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_sqrtf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_logf_α
proc_logf_α:
#=======================================================================================================================
    .global proc_logf_α
    .global proc_logf_β
    .global proc_logf_γ
    .global proc_logf_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_logf_α_body:
# IR_VAR
 xchain00074_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 jmp xchain00074_n2_α
# IR_UNOP
 xchain00074_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00074_n2_α
 cmp eax, 0
 jne xchain00074_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00074_n3_α
 xchain00074_n1_β:
 jmp xchain00074_n2_α
# IR_LIT_INTEGER
 xchain00074_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00074_n4_α
 xchain00074_n2_β:
 jmp proc_logf_ω
.Lx00075_0:
 .quad 1
# IR_LIT_STRING
 xchain00074_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00074_n5_α
 xchain00074_n3_β:
 jmp proc_logf_ω
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string "log(25.,17.)"
# IR_VAR
 xchain00074_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00074_n6_α
 xchain00074_n4_β:
 jmp proc_logf_ω
# IR_RETURN
 xchain00074_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_logf_γ
# IR_TO
 xchain00074_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00077_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00074_n7_α
 xchain00074_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00077_0
# IR_LIT_REAL
 xchain00074_n7_α:
 mov qword ptr [rbp + 192], 7
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00074_n8_α
 xchain00074_n7_β:
 jmp xchain00074_n6_β
.Lx00078_0:
 .quad 4627730092099895296
# IR_LIT_REAL
 xchain00074_n8_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00074_n9_α
 xchain00074_n8_β:
 jmp xchain00074_n6_β
.Lx00079_0:
 .quad 4625478292286210048
 xchain00074_n9_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn311: .string "log"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn311]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00074_n6_β
 jmp xchain00074_n6_β
 xchain00074_n9_β:
 jmp xchain00074_n6_β
proc_logf_res:
add rsp, 8
pop rbp
proc_logf_β:
jmp proc_logf_ω
proc_logf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_logf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_nullfunc_α
proc_nullfunc_α:
#=======================================================================================================================
    .global proc_nullfunc_α
    .global proc_nullfunc_β
    .global proc_nullfunc_γ
    .global proc_nullfunc_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_nullfunc_α_body:
# IR_VAR
 xchain00080_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00080_n1_α
 xchain00080_n0_β:
 jmp xchain00080_n2_α
# IR_UNOP
 xchain00080_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00080_n2_α
 cmp eax, 0
 jne xchain00080_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00080_n3_α
 xchain00080_n1_β:
 jmp xchain00080_n2_α
# IR_LIT_INTEGER
 xchain00080_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00080_n4_α
 xchain00080_n2_β:
 jmp proc_nullfunc_ω
.Lx00081_0:
 .quad 1
# IR_LIT_STRING
 xchain00080_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00080_n5_α
 xchain00080_n3_β:
 jmp proc_nullfunc_ω
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "p()"
# IR_VAR
 xchain00080_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00080_n6_α
 xchain00080_n4_β:
 jmp proc_nullfunc_ω
# IR_RETURN
 xchain00080_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullfunc_γ
# IR_TO
 xchain00080_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00083_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00080_n7_α
 xchain00080_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00083_0
 xchain00080_n7_α:
 mov rdi, qword ptr [rip + .Lx00084_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00084_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00084_3]
 lea rdx, [rip + .Lx00084_4]
 jmp rax
.Lx00084_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00084_2
.Lx00084_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00084_2
.Lx00084_1:
 call rt_faildescr@PLT
.Lx00084_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00080_n6_β
 jmp xchain00080_n6_β
 xchain00080_n7_β:
 jmp xchain00080_n6_β
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "nullf"
proc_nullfunc_res:
add rsp, 8
pop rbp
proc_nullfunc_β:
jmp proc_nullfunc_ω
proc_nullfunc_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_nullfunc_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_nullf_α
proc_nullf_α:
#=======================================================================================================================
    .global proc_nullf_α
    .global proc_nullf_β
    .global proc_nullf_γ
    .global proc_nullf_ω
  sub rsp, 64
  mov [rsp + 40], rcx
  mov [rsp + 48], rdx
  mov [rsp + 56], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 32
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 24], rsp
  mov rdi, rsp
  mov esi, 32
  call rt_jmp_frame_lexprep@PLT
proc_nullf_α_body:
jmp proc_nullf_ω
proc_nullf_res:
add rsp, 8
pop rbp
proc_nullf_β:
jmp proc_nullf_ω
proc_nullf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 40]
lea rsp, [rbp + 64]
mov rbp, [rbp + 56]
jmp rax
proc_nullf_ω:
mov rax, [rbp + 48]
lea rsp, [rbp + 64]
mov rbp, [rbp + 56]
jmp rax
  .globl proc_listcall_α
proc_listcall_α:
#=======================================================================================================================
    .global proc_listcall_α
    .global proc_listcall_β
    .global proc_listcall_γ
    .global proc_listcall_ω
  sub rsp, 608
  mov [rsp + 584], rcx
  mov [rsp + 592], rdx
  mov [rsp + 600], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 576
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 568], rsp
  mov rdi, rsp
  mov esi, 576
  call rt_jmp_frame_lexprep@PLT
proc_listcall_α_body:
# IR_VAR_REF
 xchain00085_n0_α:
 mov rdi, 1879052368
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00085_n1_α
 xchain00085_n0_β:
 jmp xchain00085_n3_α
# IR_NULLTEST_VAR
 xchain00085_n1_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 99
 je xchain00085_n3_α
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00085_n3_α
 cmp eax, 0
 jne xchain00085_n3_α
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 488], rax
 jmp xchain00085_n2_α
 xchain00085_n1_β:
 jmp xchain00085_n3_α
# IR_LIT_INTEGER
 xchain00085_n2_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00085_n4_α
 xchain00085_n2_β:
 jmp xchain00085_n3_α
.Lx00086_0:
 .quad 1
# IR_VAR
 xchain00085_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00085_n5_α
 xchain00085_n3_β:
 jmp xchain00085_n6_α
# IR_ASSIGN_VAR
 xchain00085_n4_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00085_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00085_n7_α
 xchain00085_n4_β:
 jmp xchain00085_n3_α
# IR_UNOP
 xchain00085_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00085_n6_α
 cmp eax, 0
 jne xchain00085_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00085_n8_α
 xchain00085_n5_β:
 jmp xchain00085_n6_α
# IR_LIT_INTEGER
 xchain00085_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00085_n9_α
 xchain00085_n6_β:
 jmp proc_listcall_ω
.Lx00087_0:
 .quad 1
# IR_MAKE_LIST
 xchain00085_n7_α:
 lea rdi, [rbp + 448]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00085_n10_α
 xchain00085_n7_β:
 jmp xchain00085_n3_α
# IR_LIT_STRING
 xchain00085_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00085_n11_α
 xchain00085_n8_β:
 jmp proc_listcall_ω
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "p ! L"
# IR_VAR
 xchain00085_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00085_n12_α
 xchain00085_n9_β:
 jmp proc_listcall_ω
# IR_ASSIGN gva
 xchain00085_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00085_n13_α
 xchain00085_n10_β:
 jmp xchain00085_n3_α
# IR_RETURN
 xchain00085_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listcall_γ
# IR_TO
 xchain00085_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00089_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00085_n14_α
 xchain00085_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00089_0
# IR_MOVE_LABEL
 xchain00085_n13_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00085_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00085_n3_α
 xchain00085_n13_β:
 jmp xchain00085_n3_α
# IR_LIT_STRING
 xchain00085_n14_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00085_n16_α
 xchain00085_n14_β:
 jmp xchain00085_n12_β
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "nullf"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00085_n15_α:
 jmp qword ptr [rbp + 400]
 xchain00085_n15_β:
 jmp xchain00085_n3_α
# IR_VAR
 xchain00085_n16_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00085_n17_α
 xchain00085_n16_β:
 jmp xchain00085_n12_β
 xchain00085_n17_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn352: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn352]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00085_n12_β
 jmp xchain00085_n12_β
 xchain00085_n17_β:
 jmp xchain00085_n12_β
proc_listcall_res:
add rsp, 8
pop rbp
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 584]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
proc_listcall_ω:
mov rax, [rbp + 592]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
  .globl proc_addfunc_α
proc_addfunc_α:
#=======================================================================================================================
    .global proc_addfunc_α
    .global proc_addfunc_β
    .global proc_addfunc_γ
    .global proc_addfunc_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_addfunc_α_body:
# IR_VAR
 xchain00091_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00091_n1_α
 xchain00091_n0_β:
 jmp xchain00091_n2_α
# IR_UNOP
 xchain00091_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00091_n2_α
 cmp eax, 0
 jne xchain00091_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00091_n3_α
 xchain00091_n1_β:
 jmp xchain00091_n2_α
# IR_LIT_INTEGER
 xchain00091_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00091_n4_α
 xchain00091_n2_β:
 jmp proc_addfunc_ω
.Lx00092_0:
 .quad 1
# IR_LIT_STRING
 xchain00091_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00091_n5_α
 xchain00091_n3_β:
 jmp proc_addfunc_ω
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "add(4, 7)"
# IR_VAR
 xchain00091_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00091_n6_α
 xchain00091_n4_β:
 jmp proc_addfunc_ω
# IR_RETURN
 xchain00091_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_addfunc_γ
# IR_TO
 xchain00091_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00094_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00091_n7_α
 xchain00091_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00094_0
# IR_LIT_INTEGER
 xchain00091_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00091_n8_α
 xchain00091_n7_β:
 jmp xchain00091_n6_β
.Lx00095_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00091_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00091_n9_α
 xchain00091_n8_β:
 jmp xchain00091_n6_β
.Lx00096_0:
 .quad 7
 xchain00091_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00097_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00097_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00097_3]
 lea rdx, [rip + .Lx00097_4]
 jmp rax
.Lx00097_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00097_2
.Lx00097_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00097_2
.Lx00097_1:
 call rt_faildescr@PLT
.Lx00097_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00091_n6_β
 jmp xchain00091_n6_β
 xchain00091_n9_β:
 jmp xchain00091_n6_β
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "add"
proc_addfunc_res:
add rsp, 8
pop rbp
proc_addfunc_β:
jmp proc_addfunc_ω
proc_addfunc_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_addfunc_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_add_α
proc_add_α:
#=======================================================================================================================
    .global proc_add_α
    .global proc_add_β
    .global proc_add_γ
    .global proc_add_ω
  sub rsp, 256
  mov [rsp + 232], rcx
  mov [rsp + 240], rdx
  mov [rsp + 248], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 224
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 216], rsp
  mov rdi, rsp
  mov esi, 224
  call rt_jmp_frame_lexprep@PLT
proc_add_α_body:
# IR_VAR
 xchain00098_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00098_n1_α
 xchain00098_n0_β:
 jmp proc_add_ω
# IR_VAR
 xchain00098_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 184], rax
 jmp xchain00098_n2_α
 xchain00098_n1_β:
 jmp proc_add_ω
# IR_COERCE_NUMERIC
 xchain00098_n2_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00099_1
 cmp eax, 6
 jne .Lx00099_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx00099_0
.Lx00099_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp .Lx00099_2
.Lx00099_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00099_2:
 jmp xchain00098_n3_α
 xchain00098_n2_β:
 jmp proc_add_ω
# IR_COERCE_NUMERIC
 xchain00098_n3_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx00100_1
 cmp eax, 6
 jne .Lx00100_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00100_0
.Lx00100_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00100_2
.Lx00100_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00100_2:
 jmp xchain00098_n4_α
 xchain00098_n3_β:
 jmp proc_add_ω
 xchain00098_n4_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 112]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [rbp + 120]
 mov rcx, qword ptr [rbp + 88]
 add rax, rcx
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 jmp xchain00098_n5_α
.Lx00101_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 mov r8d, 0
 lea r9, [rbp + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00101_3
.Lx00101_2:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_add_ω
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
.Lx00101_3:
 jmp xchain00098_n5_α
 xchain00098_n4_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00098_n5_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_add_γ
proc_add_res:
add rsp, 8
pop rbp
proc_add_β:
jmp proc_add_ω
proc_add_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 232]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
proc_add_ω:
mov rax, [rbp + 240]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
  .globl proc_rfact0_α
proc_rfact0_α:
#=======================================================================================================================
    .global proc_rfact0_α
    .global proc_rfact0_β
    .global proc_rfact0_γ
    .global proc_rfact0_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_rfact0_α_body:
# IR_VAR
 xchain00102_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00102_n1_α
 xchain00102_n0_β:
 jmp xchain00102_n2_α
# IR_UNOP
 xchain00102_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00102_n2_α
 cmp eax, 0
 jne xchain00102_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00102_n3_α
 xchain00102_n1_β:
 jmp xchain00102_n2_α
# IR_LIT_INTEGER
 xchain00102_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00102_n4_α
 xchain00102_n2_β:
 jmp proc_rfact0_ω
.Lx00103_0:
 .quad 1
# IR_LIT_STRING
 xchain00102_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00102_n5_α
 xchain00102_n3_β:
 jmp proc_rfact0_ω
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "rfact(0)"
# IR_VAR
 xchain00102_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00102_n6_α
 xchain00102_n4_β:
 jmp proc_rfact0_ω
# IR_RETURN
 xchain00102_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact0_γ
# IR_TO
 xchain00102_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00105_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00102_n7_α
 xchain00102_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00105_0
# IR_LIT_INTEGER
 xchain00102_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00102_n8_α
 xchain00102_n7_β:
 jmp xchain00102_n6_β
.Lx00106_0:
 .quad 0
 xchain00102_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00107_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00107_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00107_3]
 lea rdx, [rip + .Lx00107_4]
 jmp rax
.Lx00107_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00107_2
.Lx00107_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00107_2
.Lx00107_1:
 call rt_faildescr@PLT
.Lx00107_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00102_n6_β
 jmp xchain00102_n6_β
 xchain00102_n8_β:
 jmp xchain00102_n6_β
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "rfact"
proc_rfact0_res:
add rsp, 8
pop rbp
proc_rfact0_β:
jmp proc_rfact0_ω
proc_rfact0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_rfact0_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_rfact10_α
proc_rfact10_α:
#=======================================================================================================================
    .global proc_rfact10_α
    .global proc_rfact10_β
    .global proc_rfact10_γ
    .global proc_rfact10_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_rfact10_α_body:
# IR_VAR
 xchain00108_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00108_n1_α
 xchain00108_n0_β:
 jmp xchain00108_n2_α
# IR_UNOP
 xchain00108_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00108_n2_α
 cmp eax, 0
 jne xchain00108_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00108_n3_α
 xchain00108_n1_β:
 jmp xchain00108_n2_α
# IR_LIT_INTEGER
 xchain00108_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00108_n4_α
 xchain00108_n2_β:
 jmp proc_rfact10_ω
.Lx00109_0:
 .quad 1
# IR_LIT_STRING
 xchain00108_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00108_n5_α
 xchain00108_n3_β:
 jmp proc_rfact10_ω
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "rfact(10)"
# IR_VAR
 xchain00108_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00108_n6_α
 xchain00108_n4_β:
 jmp proc_rfact10_ω
# IR_RETURN
 xchain00108_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact10_γ
# IR_TO
 xchain00108_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00111_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00108_n7_α
 xchain00108_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00111_0
# IR_LIT_INTEGER
 xchain00108_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00108_n8_α
 xchain00108_n7_β:
 jmp xchain00108_n6_β
.Lx00112_0:
 .quad 10
 xchain00108_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00113_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00113_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00113_3]
 lea rdx, [rip + .Lx00113_4]
 jmp rax
.Lx00113_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00113_2
.Lx00113_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00113_2
.Lx00113_1:
 call rt_faildescr@PLT
.Lx00113_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00108_n6_β
 jmp xchain00108_n6_β
 xchain00108_n8_β:
 jmp xchain00108_n6_β
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "rfact"
proc_rfact10_res:
add rsp, 8
pop rbp
proc_rfact10_β:
jmp proc_rfact10_ω
proc_rfact10_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_rfact10_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_rfact_α
proc_rfact_α:
#=======================================================================================================================
    .global proc_rfact_α
    .global proc_rfact_β
    .global proc_rfact_γ
    .global proc_rfact_ω
  sub rsp, 544
  mov [rsp + 520], rcx
  mov [rsp + 528], rdx
  mov [rsp + 536], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 512
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 504], rsp
  mov rdi, rsp
  mov esi, 512
  call rt_jmp_frame_lexprep@PLT
proc_rfact_α_body:
# IR_VAR
 xchain00114_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00114_n1_α
 xchain00114_n0_β:
 jmp xchain00114_n2_α
# IR_LIT_INTEGER
 xchain00114_n1_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00114_n3_α
 xchain00114_n1_β:
 jmp xchain00114_n2_α
.Lx00115_0:
 .quad 1
# IR_VAR
 xchain00114_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain00114_n4_α
 xchain00114_n2_β:
 jmp proc_rfact_ω
 xchain00114_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00116_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00116_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00116_2
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00116_2
.Lx00116_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 472]
 cmp rax, rcx
 jge xchain00114_n2_α
 mov rcx, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rcx
 mov rcx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rcx
 jmp xchain00114_n5_α
.Lx00116_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 5
 lea r9, [rbp + 400]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00116_1
 cmp eax, 1
 je xchain00114_n2_α
 jmp xchain00114_n5_α
.Lx00116_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00114_n2_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
 jmp xchain00114_n5_α
 xchain00114_n3_β:
 jmp xchain00114_n2_α
# IR_VAR
 xchain00114_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00114_n6_α
 xchain00114_n4_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00114_n5_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00114_n7_α
 xchain00114_n5_β:
 jmp proc_rfact_ω
.Lx00117_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00114_n6_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00114_n8_α
 xchain00114_n6_β:
 jmp proc_rfact_ω
.Lx00118_0:
 .quad 1
# IR_RETURN
 xchain00114_n7_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact_γ
# IR_COERCE_NUMERIC
 xchain00114_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00119_1
 cmp eax, 6
 jne .Lx00119_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00119_0
.Lx00119_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp .Lx00119_2
.Lx00119_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00119_2:
 jmp xchain00114_n9_α
 xchain00114_n8_β:
 jmp proc_rfact_ω
 xchain00114_n9_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00120_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00120_2
.Lx00120_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00114_n10_α
.Lx00120_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00120_3
.Lx00120_2:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
.Lx00120_3:
 jmp xchain00114_n10_α
 xchain00114_n9_β:
 jmp proc_rfact_ω
 xchain00114_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00121_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00121_3]
 lea rdx, [rip + .Lx00121_4]
 jmp rax
.Lx00121_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00121_2
.Lx00121_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00121_2
.Lx00121_1:
 call rt_faildescr@PLT
.Lx00121_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00114_n11_α
 xchain00114_n10_β:
 jmp proc_rfact_ω
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "rfact"
# IR_COERCE_NUMERIC
 xchain00114_n11_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00122_1
 cmp eax, 6
 jne .Lx00122_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00122_0
.Lx00122_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00122_2
.Lx00122_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 224]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00122_2:
 jmp xchain00114_n12_α
 xchain00114_n11_β:
 jmp proc_rfact_ω
# IR_COERCE_NUMERIC
 xchain00114_n12_α:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 7
 je .Lx00123_1
 cmp eax, 6
 jne .Lx00123_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00123_0
.Lx00123_1:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 136], rax
 jmp .Lx00123_2
.Lx00123_0:
 lea rdi, [rbp + 224]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00123_2:
 jmp xchain00114_n13_α
 xchain00114_n12_β:
 jmp proc_rfact_ω
 xchain00114_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [rbp + 128]
 cmp eax, 100
 je .Lx00124_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00124_2
 mov eax, dword ptr [rbp + 128]
 cmp eax, 6
 jne .Lx00124_2
.Lx00124_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 136]
 imul rax, rcx
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 jmp xchain00114_n14_α
.Lx00124_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 2
 lea r9, [rbp + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00124_3
.Lx00124_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
.Lx00124_3:
 jmp xchain00114_n14_α
 xchain00114_n13_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00114_n14_α:
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact_γ
proc_rfact_res:
add rsp, 8
pop rbp
proc_rfact_β:
jmp proc_rfact_ω
proc_rfact_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 520]
lea rsp, [rbp + 544]
mov rbp, [rbp + 536]
jmp rax
proc_rfact_ω:
mov rax, [rbp + 528]
lea rsp, [rbp + 544]
mov rbp, [rbp + 536]
jmp rax
  .globl proc_rfib5_α
proc_rfib5_α:
#=======================================================================================================================
    .global proc_rfib5_α
    .global proc_rfib5_β
    .global proc_rfib5_γ
    .global proc_rfib5_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_rfib5_α_body:
# IR_VAR
 xchain00125_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00125_n1_α
 xchain00125_n0_β:
 jmp xchain00125_n2_α
# IR_UNOP
 xchain00125_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00125_n2_α
 cmp eax, 0
 jne xchain00125_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00125_n3_α
 xchain00125_n1_β:
 jmp xchain00125_n2_α
# IR_LIT_INTEGER
 xchain00125_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00125_n4_α
 xchain00125_n2_β:
 jmp proc_rfib5_ω
.Lx00126_0:
 .quad 1
# IR_LIT_STRING
 xchain00125_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00125_n5_α
 xchain00125_n3_β:
 jmp proc_rfib5_ω
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "rfib(5)"
# IR_VAR
 xchain00125_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00125_n6_α
 xchain00125_n4_β:
 jmp proc_rfib5_ω
# IR_RETURN
 xchain00125_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib5_γ
# IR_TO
 xchain00125_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00128_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00125_n7_α
 xchain00125_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00128_0
# IR_LIT_INTEGER
 xchain00125_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00125_n8_α
 xchain00125_n7_β:
 jmp xchain00125_n6_β
.Lx00129_0:
 .quad 5
 xchain00125_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00130_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00130_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00130_3]
 lea rdx, [rip + .Lx00130_4]
 jmp rax
.Lx00130_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00130_2
.Lx00130_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00130_2
.Lx00130_1:
 call rt_faildescr@PLT
.Lx00130_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00125_n6_β
 jmp xchain00125_n6_β
 xchain00125_n8_β:
 jmp xchain00125_n6_β
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "rfib"
proc_rfib5_res:
add rsp, 8
pop rbp
proc_rfib5_β:
jmp proc_rfib5_ω
proc_rfib5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_rfib5_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_rfib_α
proc_rfib_α:
#=======================================================================================================================
    .global proc_rfib_α
    .global proc_rfib_β
    .global proc_rfib_γ
    .global proc_rfib_ω
  sub rsp, 688
  mov [rsp + 664], rcx
  mov [rsp + 672], rdx
  mov [rsp + 680], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 656
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 648], rsp
  mov rdi, rsp
  mov esi, 656
  call rt_jmp_frame_lexprep@PLT
proc_rfib_α_body:
# IR_VAR
 xchain00131_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00131_n1_α
 xchain00131_n0_β:
 jmp xchain00131_n2_α
# IR_LIT_INTEGER
 xchain00131_n1_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00131_n3_α
 xchain00131_n1_β:
 jmp xchain00131_n2_α
.Lx00132_0:
 .quad 3
# IR_VAR
 xchain00131_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00131_n4_α
 xchain00131_n2_β:
 jmp proc_rfib_ω
 xchain00131_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00133_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00133_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00133_2
.Lx00133_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 616]
 cmp rax, rcx
 jge xchain00131_n2_α
 mov rcx, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rcx
 mov rcx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rcx
 jmp xchain00131_n5_α
.Lx00133_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 5
 lea r9, [rbp + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00133_1
 cmp eax, 1
 je xchain00131_n2_α
 jmp xchain00131_n5_α
.Lx00133_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00131_n2_α
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
 jmp xchain00131_n5_α
 xchain00131_n3_β:
 jmp xchain00131_n2_α
# IR_LIT_INTEGER
 xchain00131_n4_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00131_n6_α
 xchain00131_n4_β:
 jmp proc_rfib_ω
.Lx00134_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00131_n5_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00131_n7_α
 xchain00131_n5_β:
 jmp proc_rfib_ω
.Lx00135_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00131_n6_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00136_1
 cmp eax, 6
 jne .Lx00136_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00136_0
.Lx00136_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00136_2
.Lx00136_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00136_2:
 jmp xchain00131_n8_α
 xchain00131_n6_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00131_n7_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib_γ
 xchain00131_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00131_n9_α
.Lx00137_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00137_3
.Lx00137_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00137_3:
 jmp xchain00131_n9_α
 xchain00131_n8_β:
 jmp proc_rfib_ω
 xchain00131_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00138_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00138_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00138_3]
 lea rdx, [rip + .Lx00138_4]
 jmp rax
.Lx00138_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00138_2
.Lx00138_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00138_2
.Lx00138_1:
 call rt_faildescr@PLT
.Lx00138_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00131_n10_α
 xchain00131_n9_β:
 jmp proc_rfib_ω
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "rfib"
# IR_VAR
 xchain00131_n10_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00131_n11_α
 xchain00131_n10_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00131_n11_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00131_n12_α
 xchain00131_n11_β:
 jmp proc_rfib_ω
.Lx00139_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00131_n12_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00140_1
 cmp eax, 6
 jne .Lx00140_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00140_0
.Lx00140_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00140_2
.Lx00140_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00140_2:
 jmp xchain00131_n13_α
 xchain00131_n12_β:
 jmp proc_rfib_ω
 xchain00131_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00141_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00141_2
.Lx00141_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 416], 6
 mov qword ptr [rbp + 424], rax
 jmp xchain00131_n14_α
.Lx00141_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 1
 lea r9, [rbp + 416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00141_3
.Lx00141_2:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
.Lx00141_3:
 jmp xchain00131_n14_α
 xchain00131_n13_β:
 jmp proc_rfib_ω
 xchain00131_n14_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00142_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00142_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00142_3]
 lea rdx, [rip + .Lx00142_4]
 jmp rax
.Lx00142_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00142_2
.Lx00142_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00142_2
.Lx00142_1:
 call rt_faildescr@PLT
.Lx00142_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00131_n15_α
 xchain00131_n14_β:
 jmp proc_rfib_ω
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "rfib"
# IR_COERCE_NUMERIC
 xchain00131_n15_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00143_1
 cmp eax, 6
 jne .Lx00143_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00143_0
.Lx00143_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00143_2
.Lx00143_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00143_2:
 jmp xchain00131_n16_α
 xchain00131_n15_β:
 jmp proc_rfib_ω
# IR_COERCE_NUMERIC
 xchain00131_n16_α:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 7
 je .Lx00144_1
 cmp eax, 6
 jne .Lx00144_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00144_0
.Lx00144_1:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 136], rax
 jmp .Lx00144_2
.Lx00144_0:
 lea rdi, [rbp + 368]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00144_2:
 jmp xchain00131_n17_α
 xchain00131_n16_β:
 jmp proc_rfib_ω
 xchain00131_n17_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [rbp + 128]
 cmp eax, 100
 je .Lx00145_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00145_2
 mov eax, dword ptr [rbp + 128]
 cmp eax, 6
 jne .Lx00145_2
.Lx00145_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 136]
 add rax, rcx
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 jmp xchain00131_n18_α
.Lx00145_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 0
 lea r9, [rbp + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00145_3
.Lx00145_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
.Lx00145_3:
 jmp xchain00131_n18_α
 xchain00131_n17_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00131_n18_α:
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib_γ
proc_rfib_res:
add rsp, 8
pop rbp
proc_rfib_β:
jmp proc_rfib_ω
proc_rfib_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 664]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
proc_rfib_ω:
mov rax, [rbp + 672]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
  .globl proc_prslow_α
proc_prslow_α:
#=======================================================================================================================
    .global proc_prslow_α
    .global proc_prslow_β
    .global proc_prslow_γ
    .global proc_prslow_ω
  sub rsp, 1088
  mov [rsp + 1064], rcx
  mov [rsp + 1072], rdx
  mov [rsp + 1080], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1056
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1016], rsp
  mov rdi, rsp
  mov esi, 1056
  call rt_jmp_frame_lexprep@PLT
proc_prslow_α_body:
# IR_VAR
 xchain00146_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 984], rax
 jmp xchain00146_n1_α
 xchain00146_n0_β:
 jmp xchain00146_n2_α
# IR_UNOP
 xchain00146_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00146_n2_α
 cmp eax, 0
 jne xchain00146_n2_α
 mov qword ptr [rbp + 944], 0
 mov qword ptr [rbp + 952], 0
 jmp xchain00146_n3_α
 xchain00146_n1_β:
 jmp xchain00146_n2_α
# IR_LIT_INTEGER
 xchain00146_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00146_n4_α
 xchain00146_n2_β:
 jmp proc_prslow_ω
.Lx00147_0:
 .quad 1
# IR_LIT_STRING
 xchain00146_n3_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00146_n5_α
 xchain00146_n3_β:
 jmp proc_prslow_ω
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "prslow(7)"
# IR_VAR
 xchain00146_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00146_n6_α
 xchain00146_n4_β:
 jmp proc_prslow_ω
# IR_RETURN
 xchain00146_n5_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_prslow_γ
# IR_TO
 xchain00146_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00149_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00146_n7_α
 xchain00146_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00149_0
# IR_LIT_INTEGER
 xchain00146_n7_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00146_n8_α
 xchain00146_n7_β:
 jmp xchain00146_n9_α
.Lx00150_0:
 .quad 0
 xchain00146_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00146_n9_α
 xchain00146_n8_β:
 jmp xchain00146_n9_α
# IR_LIT_INTEGER
 xchain00146_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00146_n10_α
 xchain00146_n9_β:
 jmp xchain00146_n6_β
.Lx00151_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00146_n10_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00146_n11_α
 xchain00146_n10_β:
 jmp xchain00146_n6_β
.Lx00152_0:
 .quad 7
# IR_TO
 xchain00146_n11_α:
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 176], rax
.Lx00153_0:
 mov rax, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 232]
 cmp rax, rcx
 jg xchain00146_n6_β
 mov qword ptr [rbp + 160], 6
 mov qword ptr [rbp + 168], rax
 jmp xchain00146_n12_α
 xchain00146_n11_β:
 inc qword ptr [rbp + 176]
 jmp .Lx00153_0
 xchain00146_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00146_n13_α
 xchain00146_n12_β:
 jmp xchain00146_n6_β
# IR_VAR
 xchain00146_n13_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 584], rax
 jmp xchain00146_n14_α
 xchain00146_n13_β:
 jmp xchain00146_n15_α
# IR_LIT_INTEGER
 xchain00146_n14_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00146_n16_α
 xchain00146_n14_β:
 jmp xchain00146_n15_α
.Lx00154_0:
 .quad 2
# IR_VAR
 xchain00146_n15_α:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 360], rax
 jmp xchain00146_n17_α
 xchain00146_n15_β:
 jmp xchain00146_n11_β
# IR_VAR
 xchain00146_n16_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 744], rax
 jmp xchain00146_n18_α
 xchain00146_n16_β:
 jmp xchain00146_n15_α
# IR_LIT_INTEGER
 xchain00146_n17_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00146_n19_α
 xchain00146_n17_β:
 jmp xchain00146_n11_β
.Lx00155_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00146_n18_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00146_n20_α
 xchain00146_n18_β:
 jmp xchain00146_n15_α
.Lx00156_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00146_n19_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx00157_1
 cmp eax, 6
 jne .Lx00157_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00157_0
.Lx00157_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 328], rax
 jmp .Lx00157_2
.Lx00157_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00157_2:
 jmp xchain00146_n21_α
 xchain00146_n19_β:
 jmp xchain00146_n11_β
# IR_COERCE_NUMERIC
 xchain00146_n20_α:
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 7
 je .Lx00158_1
 cmp eax, 6
 jne .Lx00158_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00158_0
.Lx00158_1:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 712], rax
 jmp .Lx00158_2
.Lx00158_0:
 lea rdi, [rbp + 1024]
 lea rsi, [rbp + 768]
 lea rdx, [rbp + 704]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00158_2:
 jmp xchain00146_n22_α
 xchain00146_n20_β:
 jmp xchain00146_n15_α
 xchain00146_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 320]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [rbp + 328]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain00146_n23_α
.Lx00159_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 0
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00159_3
.Lx00159_2:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00146_n11_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
.Lx00159_3:
 jmp xchain00146_n23_α
 xchain00146_n21_β:
 jmp xchain00146_n11_β
 xchain00146_n22_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 704]
 cmp eax, 100
 je .Lx00160_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00160_2
.Lx00160_1:
 mov rax, qword ptr [rbp + 712]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 672], 6
 mov qword ptr [rbp + 680], rax
 jmp xchain00146_n24_α
.Lx00160_0:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 1
 lea r9, [rbp + 672]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00160_3
.Lx00160_2:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00146_n15_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
.Lx00160_3:
 jmp xchain00146_n24_α
 xchain00146_n22_β:
 jmp xchain00146_n15_α
 xchain00146_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00146_n25_α
 xchain00146_n23_β:
 jmp xchain00146_n11_β
# IR_TO
 xchain00146_n24_α:
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 624], rax
.Lx00161_0:
 mov rax, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 680]
 cmp rax, rcx
 jg xchain00146_n15_α
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain00146_n26_α
 xchain00146_n24_β:
 inc qword ptr [rbp + 624]
 jmp .Lx00161_0
 xchain00146_n25_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00146_n11_β
xchain00146_n25_β:
 jmp xchain00146_n11_β
# IR_COERCE_NUMERIC
 xchain00146_n26_α:
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 7
 je .Lx00162_1
 cmp eax, 6
 jne .Lx00162_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00162_0
.Lx00162_1:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 552], rax
 jmp .Lx00162_2
.Lx00162_0:
 lea rdi, [rbp + 1024]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00162_2:
 jmp xchain00146_n27_α
 xchain00146_n26_β:
 jmp xchain00146_n15_α
# IR_COERCE_NUMERIC
 xchain00146_n27_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 7
 je .Lx00163_1
 cmp eax, 6
 jne .Lx00163_0
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 6
 jne .Lx00163_0
.Lx00163_1:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rax
 jmp .Lx00163_2
.Lx00163_0:
 lea rdi, [rbp + 608]
 lea rsi, [rbp + 1024]
 lea rdx, [rbp + 512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00163_2:
 jmp xchain00146_n28_α
 xchain00146_n27_β:
 jmp xchain00146_n15_α
 xchain00146_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00164_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00164_2
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00164_2
.Lx00164_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, qword ptr [rbp + 520]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 480], 6
 mov qword ptr [rbp + 488], rax
 jmp xchain00146_n29_α
.Lx00164_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 4
 lea r9, [rbp + 480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00164_3
.Lx00164_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00146_n15_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
.Lx00164_3:
 jmp xchain00146_n29_α
 xchain00146_n28_β:
 jmp xchain00146_n15_α
# IR_LIT_INTEGER
 xchain00146_n29_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00146_n30_α
 xchain00146_n29_β:
 jmp xchain00146_n24_β
.Lx00165_0:
 .quad 0
 xchain00146_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 480]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00166_2
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00166_2
.Lx00166_1:
 mov rax, qword ptr [rbp + 488]
 mov rcx, qword ptr [rbp + 808]
 cmp rax, rcx
 jne xchain00146_n24_β
 mov rcx, qword ptr [rbp + 800]
 mov qword ptr [rbp + 448], rcx
 mov rcx, qword ptr [rbp + 808]
 mov qword ptr [rbp + 456], rcx
 jmp xchain00146_n11_β
.Lx00166_0:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 9
 lea r9, [rbp + 448]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00166_1
 cmp eax, 1
 je xchain00146_n24_β
 jmp xchain00146_n11_β
.Lx00166_2:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00146_n24_β
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 456], rax
 jmp xchain00146_n11_β
 xchain00146_n30_β:
 jmp xchain00146_n24_β
 xchain00146_n31_α:
 jmp xchain00146_n11_β
xchain00146_n31_β:
 jmp xchain00146_n11_β
proc_prslow_res:
add rsp, 8
pop rbp
proc_prslow_β:
jmp proc_prslow_ω
proc_prslow_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1064]
lea rsp, [rbp + 1088]
mov rbp, [rbp + 1080]
jmp rax
proc_prslow_ω:
mov rax, [rbp + 1072]
lea rsp, [rbp + 1088]
mov rbp, [rbp + 1080]
jmp rax
  .globl proc_if0_α
proc_if0_α:
#=======================================================================================================================
    .global proc_if0_α
    .global proc_if0_β
    .global proc_if0_γ
    .global proc_if0_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_if0_α_body:
# IR_VAR
 xchain00167_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00167_n1_α
 xchain00167_n0_β:
 jmp xchain00167_n2_α
# IR_UNOP
 xchain00167_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00167_n2_α
 cmp eax, 0
 jne xchain00167_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00167_n3_α
 xchain00167_n1_β:
 jmp xchain00167_n2_α
# IR_LIT_INTEGER
 xchain00167_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00167_n4_α
 xchain00167_n2_β:
 jmp proc_if0_ω
.Lx00168_0:
 .quad 1
# IR_LIT_STRING
 xchain00167_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00167_n5_α
 xchain00167_n3_β:
 jmp proc_if0_ω
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "if 0 then 1"
# IR_VAR
 xchain00167_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00167_n6_α
 xchain00167_n4_β:
 jmp proc_if0_ω
# IR_RETURN
 xchain00167_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_if0_γ
# IR_TO
 xchain00167_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00170_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00167_n7_α
 xchain00167_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00170_0
# IR_LIT_INTEGER
 xchain00167_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00167_n8_α
 xchain00167_n7_β:
 jmp xchain00167_n6_β
.Lx00171_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00167_n8_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00167_n9_α
 xchain00167_n8_β:
 jmp xchain00167_n6_β
.Lx00172_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00167_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00167_n6_β]
 mov qword ptr [rbp + 144], rax
 jmp xchain00167_n6_β
 xchain00167_n9_β:
 jmp xchain00167_n6_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00167_n10_α:
 jmp qword ptr [rbp + 144]
 xchain00167_n10_β:
 jmp xchain00167_n6_β
proc_if0_res:
add rsp, 8
pop rbp
proc_if0_β:
jmp proc_if0_ω
proc_if0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_if0_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_case3_α
proc_case3_α:
#=======================================================================================================================
    .global proc_case3_α
    .global proc_case3_β
    .global proc_case3_γ
    .global proc_case3_ω
  sub rsp, 1008
  mov [rsp + 984], rcx
  mov [rsp + 992], rdx
  mov [rsp + 1000], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 976
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 952], rsp
  mov rdi, rsp
  mov esi, 976
  call rt_jmp_frame_lexprep@PLT
proc_case3_α_body:
# IR_VAR
 xchain00173_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 920], rax
 jmp xchain00173_n1_α
 xchain00173_n0_β:
 jmp xchain00173_n2_α
# IR_UNOP
 xchain00173_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00173_n2_α
 cmp eax, 0
 jne xchain00173_n2_α
 mov qword ptr [rbp + 880], 0
 mov qword ptr [rbp + 888], 0
 jmp xchain00173_n3_α
 xchain00173_n1_β:
 jmp xchain00173_n2_α
# IR_LIT_INTEGER
 xchain00173_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00173_n4_α
 xchain00173_n2_β:
 jmp proc_case3_ω
.Lx00174_0:
 .quad 1
# IR_LIT_STRING
 xchain00173_n3_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00173_n5_α
 xchain00173_n3_β:
 jmp proc_case3_ω
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "case 3 of..."
# IR_VAR
 xchain00173_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00173_n6_α
 xchain00173_n4_β:
 jmp proc_case3_ω
# IR_RETURN
 xchain00173_n5_α:
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_case3_γ
# IR_TO
 xchain00173_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00176_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00173_n7_α
 xchain00173_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00176_0
# IR_LIT_INTEGER
 xchain00173_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00173_n8_α
 xchain00173_n7_β:
 jmp xchain00173_n6_β
.Lx00177_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00173_n8_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00173_n9_α
 xchain00173_n8_β:
 jmp xchain00173_n6_β
.Lx00178_0:
 .quad 1
 xchain00173_n9_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+768]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn549: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn549]
 lea rsi, [rbp + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00173_n11_α
 jmp xchain00173_n10_α
 xchain00173_n9_β:
 jmp xchain00173_n11_α
# IR_LIT_INTEGER
 xchain00173_n10_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00173_n12_α
 xchain00173_n10_β:
 jmp xchain00173_n6_β
.Lx00179_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00173_n11_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00173_n13_α
 xchain00173_n11_β:
 jmp xchain00173_n6_β
.Lx00180_0:
 .quad 2
 xchain00173_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00173_n14_α
 xchain00173_n12_β:
 jmp xchain00173_n6_β
 xchain00173_n13_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+624]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+640]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn554: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn554]
 lea rsi, [rbp + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain00173_n16_α
 jmp xchain00173_n15_α
 xchain00173_n13_β:
 jmp xchain00173_n16_α
# IR_VAR
 xchain00173_n14_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 136], rax
 jmp xchain00173_n6_β
 xchain00173_n14_β:
 jmp xchain00173_n6_β
# IR_LIT_INTEGER
 xchain00173_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00173_n17_α
 xchain00173_n15_β:
 jmp xchain00173_n6_β
.Lx00181_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00173_n16_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00173_n18_α
 xchain00173_n16_β:
 jmp xchain00173_n6_β
.Lx00182_0:
 .quad 3
 xchain00173_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00173_n14_α
 xchain00173_n17_β:
 jmp xchain00173_n6_β
 xchain00173_n18_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+480]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+496]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn561: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn561]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00173_n20_α
 jmp xchain00173_n19_α
 xchain00173_n18_β:
 jmp xchain00173_n20_α
# IR_LIT_INTEGER
 xchain00173_n19_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00173_n21_α
 xchain00173_n19_β:
 jmp xchain00173_n6_β
.Lx00183_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00173_n20_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00173_n22_α
 xchain00173_n20_β:
 jmp xchain00173_n6_β
.Lx00184_0:
 .quad 4
 xchain00173_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00173_n14_α
 xchain00173_n21_β:
 jmp xchain00173_n6_β
 xchain00173_n22_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+336]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn566: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn566]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00173_n24_α
 jmp xchain00173_n23_α
 xchain00173_n22_β:
 jmp xchain00173_n24_α
# IR_LIT_INTEGER
 xchain00173_n23_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00173_n25_α
 xchain00173_n23_β:
 jmp xchain00173_n6_β
.Lx00185_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00173_n24_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00173_n26_α
 xchain00173_n24_β:
 jmp xchain00173_n6_β
.Lx00186_0:
 .quad 0
 xchain00173_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00173_n14_α
 xchain00173_n25_β:
 jmp xchain00173_n6_β
 xchain00173_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00173_n14_α
 xchain00173_n26_β:
 jmp xchain00173_n6_β
proc_case3_res:
add rsp, 8
pop rbp
proc_case3_β:
jmp proc_case3_ω
proc_case3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 984]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
jmp rax
proc_case3_ω:
mov rax, [rbp + 992]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
jmp rax
  .globl proc_nulltest_α
proc_nulltest_α:
#=======================================================================================================================
    .global proc_nulltest_α
    .global proc_nulltest_β
    .global proc_nulltest_γ
    .global proc_nulltest_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_nulltest_α_body:
# IR_VAR
 xchain00187_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00187_n1_α
 xchain00187_n0_β:
 jmp xchain00187_n2_α
# IR_UNOP
 xchain00187_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00187_n2_α
 cmp eax, 0
 jne xchain00187_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00187_n3_α
 xchain00187_n1_β:
 jmp xchain00187_n2_α
# IR_LIT_INTEGER
 xchain00187_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00187_n4_α
 xchain00187_n2_β:
 jmp proc_nulltest_ω
.Lx00188_0:
 .quad 1
# IR_LIT_STRING
 xchain00187_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00187_n5_α
 xchain00187_n3_β:
 jmp proc_nulltest_ω
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "\\8"
# IR_VAR
 xchain00187_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00187_n6_α
 xchain00187_n4_β:
 jmp proc_nulltest_ω
# IR_RETURN
 xchain00187_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nulltest_γ
# IR_TO
 xchain00187_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00190_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00187_n7_α
 xchain00187_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00190_0
# IR_LIT_INTEGER
 xchain00187_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00187_n8_α
 xchain00187_n7_β:
 jmp xchain00187_n6_β
.Lx00191_0:
 .quad 8
# IR_UNOP
 xchain00187_n8_α:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 99
 je xchain00187_n6_β
 cmp eax, 0
 je xchain00187_n6_β
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 jmp xchain00187_n6_β
 xchain00187_n8_β:
 jmp xchain00187_n6_β
proc_nulltest_res:
add rsp, 8
pop rbp
proc_nulltest_β:
jmp proc_nulltest_ω
proc_nulltest_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_nulltest_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_typef_α
proc_typef_α:
#=======================================================================================================================
    .global proc_typef_α
    .global proc_typef_β
    .global proc_typef_γ
    .global proc_typef_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_typef_α_body:
# IR_VAR
 xchain00192_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00192_n1_α
 xchain00192_n0_β:
 jmp xchain00192_n2_α
# IR_UNOP
 xchain00192_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00192_n2_α
 cmp eax, 0
 jne xchain00192_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00192_n3_α
 xchain00192_n1_β:
 jmp xchain00192_n2_α
# IR_LIT_INTEGER
 xchain00192_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00192_n4_α
 xchain00192_n2_β:
 jmp proc_typef_ω
.Lx00193_0:
 .quad 1
# IR_LIT_STRING
 xchain00192_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00192_n5_α
 xchain00192_n3_β:
 jmp proc_typef_ω
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "type(s)"
# IR_VAR
 xchain00192_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00192_n6_α
 xchain00192_n4_β:
 jmp proc_typef_ω
# IR_RETURN
 xchain00192_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_typef_γ
# IR_TO
 xchain00192_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00195_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00192_n7_α
 xchain00192_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00195_0
# IR_LIT_STRING
 xchain00192_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00192_n8_α
 xchain00192_n7_β:
 jmp xchain00192_n6_β
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "abcde"
 xchain00192_n8_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn597: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00192_n6_β
 jmp xchain00192_n6_β
 xchain00192_n8_β:
 jmp xchain00192_n6_β
proc_typef_res:
add rsp, 8
pop rbp
proc_typef_β:
jmp proc_typef_ω
proc_typef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_typef_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_imagef_α
proc_imagef_α:
#=======================================================================================================================
    .global proc_imagef_α
    .global proc_imagef_β
    .global proc_imagef_γ
    .global proc_imagef_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_imagef_α_body:
# IR_VAR
 xchain00197_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00197_n1_α
 xchain00197_n0_β:
 jmp xchain00197_n2_α
# IR_UNOP
 xchain00197_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00197_n2_α
 cmp eax, 0
 jne xchain00197_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00197_n3_α
 xchain00197_n1_β:
 jmp xchain00197_n2_α
# IR_LIT_INTEGER
 xchain00197_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00197_n4_α
 xchain00197_n2_β:
 jmp proc_imagef_ω
.Lx00198_0:
 .quad 1
# IR_LIT_STRING
 xchain00197_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00197_n5_α
 xchain00197_n3_β:
 jmp proc_imagef_ω
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "image(s)"
# IR_VAR
 xchain00197_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00197_n6_α
 xchain00197_n4_β:
 jmp proc_imagef_ω
# IR_RETURN
 xchain00197_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_imagef_γ
# IR_TO
 xchain00197_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00200_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00197_n7_α
 xchain00197_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00200_0
# IR_LIT_STRING
 xchain00197_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00197_n8_α
 xchain00197_n7_β:
 jmp xchain00197_n6_β
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "ab\tcd"
 xchain00197_n8_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn611: .string "image"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00197_n6_β
 jmp xchain00197_n6_β
 xchain00197_n8_β:
 jmp xchain00197_n6_β
proc_imagef_res:
add rsp, 8
pop rbp
proc_imagef_β:
jmp proc_imagef_ω
proc_imagef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_imagef_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_marshal_α
proc_marshal_α:
#=======================================================================================================================
    .global proc_marshal_α
    .global proc_marshal_β
    .global proc_marshal_γ
    .global proc_marshal_ω
  sub rsp, 592
  mov [rsp + 568], rcx
  mov [rsp + 576], rdx
  mov [rsp + 584], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 560
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 552], rsp
  mov rdi, rsp
  mov esi, 560
  call rt_jmp_frame_lexprep@PLT
proc_marshal_α_body:
# IR_VAR
 xchain00202_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 520], rax
 jmp xchain00202_n1_α
 xchain00202_n0_β:
 jmp xchain00202_n2_α
# IR_UNOP
 xchain00202_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00202_n2_α
 cmp eax, 0
 jne xchain00202_n2_α
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 jmp xchain00202_n3_α
 xchain00202_n1_β:
 jmp xchain00202_n2_α
# IR_LIT_INTEGER
 xchain00202_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00202_n4_α
 xchain00202_n2_β:
 jmp proc_marshal_ω
.Lx00203_0:
 .quad 1
# IR_LIT_STRING
 xchain00202_n3_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00202_n5_α
 xchain00202_n3_β:
 jmp proc_marshal_ω
.Lx00204_0:
 .quad .Lx00204_0_s
.Lx00204_0_s:
 .string "2(3,1,4,1,6)"
# IR_VAR
 xchain00202_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00202_n6_α
 xchain00202_n4_β:
 jmp proc_marshal_ω
# IR_RETURN
 xchain00202_n5_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_marshal_γ
# IR_TO
 xchain00202_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00205_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00202_n7_α
 xchain00202_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00205_0
# IR_LIT_INTEGER
 xchain00202_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00202_n8_α
 xchain00202_n7_β:
 jmp xchain00202_n6_β
.Lx00206_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00202_n8_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00202_n9_α
 xchain00202_n8_β:
 jmp xchain00202_n6_β
.Lx00207_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00202_n9_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00202_n10_α
 xchain00202_n9_β:
 jmp xchain00202_n6_β
.Lx00208_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00202_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00202_n11_α
 xchain00202_n10_β:
 jmp xchain00202_n6_β
.Lx00209_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00202_n11_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00202_n12_α
 xchain00202_n11_β:
 jmp xchain00202_n6_β
.Lx00210_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00202_n12_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00202_n13_α
 xchain00202_n12_β:
 jmp xchain00202_n6_β
.Lx00211_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00202_n13_α:
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rax
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 216], rax
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 232], rax
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 lea rdx, [rbp + 176]
 mov ecx, 5
 lea r8, [rbp + 256]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain00202_n6_β
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00202_n6_β
 xchain00202_n13_β:
 lea rdi, [rbp + 256]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00202_n6_β
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00202_n6_β
 jmp xchain00202_n6_β
proc_marshal_res:
add rsp, 8
pop rbp
proc_marshal_β:
jmp proc_marshal_ω
proc_marshal_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 568]
lea rsp, [rbp + 592]
mov rbp, [rbp + 584]
jmp rax
proc_marshal_ω:
mov rax, [rbp + 576]
lea rsp, [rbp + 592]
mov rbp, [rbp + 584]
jmp rax
  .globl proc_conj5_α
proc_conj5_α:
#=======================================================================================================================
    .global proc_conj5_α
    .global proc_conj5_β
    .global proc_conj5_γ
    .global proc_conj5_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_conj5_α_body:
# IR_VAR
 xchain00212_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00212_n1_α
 xchain00212_n0_β:
 jmp xchain00212_n2_α
# IR_UNOP
 xchain00212_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00212_n2_α
 cmp eax, 0
 jne xchain00212_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00212_n3_α
 xchain00212_n1_β:
 jmp xchain00212_n2_α
# IR_LIT_INTEGER
 xchain00212_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00212_n4_α
 xchain00212_n2_β:
 jmp proc_conj5_ω
.Lx00213_0:
 .quad 1
# IR_LIT_STRING
 xchain00212_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00212_n5_α
 xchain00212_n3_β:
 jmp proc_conj5_ω
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "1&2&3&4&5"
# IR_VAR
 xchain00212_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00212_n6_α
 xchain00212_n4_β:
 jmp proc_conj5_ω
# IR_RETURN
 xchain00212_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_conj5_γ
# IR_TO
 xchain00212_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00215_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00212_n7_α
 xchain00212_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00215_0
# IR_LIT_INTEGER
 xchain00212_n7_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00212_n8_α
 xchain00212_n7_β:
 jmp xchain00212_n6_β
.Lx00216_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00212_n8_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00212_n9_α
 xchain00212_n8_β:
 jmp xchain00212_n6_β
.Lx00217_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00212_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00218_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00212_n10_α
 xchain00212_n9_β:
 jmp xchain00212_n6_β
.Lx00218_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00212_n10_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00212_n11_α
 xchain00212_n10_β:
 jmp xchain00212_n6_β
.Lx00219_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00212_n11_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00212_n12_α
 xchain00212_n11_β:
 jmp xchain00212_n6_β
.Lx00220_0:
 .quad 5
 xchain00212_n12_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00212_n6_β
xchain00212_n12_β:
 jmp xchain00212_n6_β
proc_conj5_res:
add rsp, 8
pop rbp
proc_conj5_β:
jmp proc_conj5_ω
proc_conj5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_conj5_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_everyalt_α
proc_everyalt_α:
#=======================================================================================================================
    .global proc_everyalt_α
    .global proc_everyalt_β
    .global proc_everyalt_γ
    .global proc_everyalt_ω
  sub rsp, 496
  mov [rsp + 472], rcx
  mov [rsp + 480], rdx
  mov [rsp + 488], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 464
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 456], rsp
  mov rdi, rsp
  mov esi, 464
  call rt_jmp_frame_lexprep@PLT
proc_everyalt_α_body:
# IR_VAR
 xchain00221_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00221_n1_α
 xchain00221_n0_β:
 jmp xchain00221_n2_α
# IR_UNOP
 xchain00221_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00221_n2_α
 cmp eax, 0
 jne xchain00221_n2_α
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00221_n3_α
 xchain00221_n1_β:
 jmp xchain00221_n2_α
# IR_LIT_INTEGER
 xchain00221_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00221_n4_α
 xchain00221_n2_β:
 jmp proc_everyalt_ω
.Lx00222_0:
 .quad 1
# IR_LIT_STRING
 xchain00221_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00221_n5_α
 xchain00221_n3_β:
 jmp proc_everyalt_ω
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "1|2|3|4|5"
# IR_VAR
 xchain00221_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00221_n6_α
 xchain00221_n4_β:
 jmp proc_everyalt_ω
# IR_RETURN
 xchain00221_n5_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyalt_γ
# IR_TO
 xchain00221_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00224_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00221_n7_α
 xchain00221_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00224_0
# IR_LIT_INTEGER
 xchain00221_n7_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00221_n8_α
 xchain00221_n7_β:
 jmp xchain00221_n9_α
.Lx00225_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00221_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00221_n9_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00221_n10_α
 xchain00221_n8_β:
 jmp xchain00221_n6_β
# IR_LIT_INTEGER
 xchain00221_n9_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00221_n11_α
 xchain00221_n9_β:
 jmp xchain00221_n12_α
.Lx00226_0:
 .quad 2
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00221_n10_α:
 jmp qword ptr [rbp + 144]
 xchain00221_n10_β:
 jmp xchain00221_n6_β
# IR_MOVE_LABEL
 xchain00221_n11_α:
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00221_n12_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00221_n10_α
 xchain00221_n11_β:
 jmp xchain00221_n6_β
# IR_LIT_INTEGER
 xchain00221_n12_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00221_n13_α
 xchain00221_n12_β:
 jmp xchain00221_n14_α
.Lx00227_0:
 .quad 3
# IR_MOVE_LABEL
 xchain00221_n13_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00221_n14_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00221_n10_α
 xchain00221_n13_β:
 jmp xchain00221_n6_β
# IR_LIT_INTEGER
 xchain00221_n14_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00221_n15_α
 xchain00221_n14_β:
 jmp xchain00221_n16_α
.Lx00228_0:
 .quad 4
# IR_MOVE_LABEL
 xchain00221_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00221_n16_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00221_n10_α
 xchain00221_n15_β:
 jmp xchain00221_n6_β
# IR_LIT_INTEGER
 xchain00221_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00221_n17_α
 xchain00221_n16_β:
 jmp xchain00221_n6_β
.Lx00229_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00221_n17_α:
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00221_n6_β]
 mov qword ptr [rbp + 144], rax
 jmp xchain00221_n10_α
 xchain00221_n17_β:
 jmp xchain00221_n6_β
proc_everyalt_res:
add rsp, 8
pop rbp
proc_everyalt_β:
jmp proc_everyalt_ω
proc_everyalt_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 472]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
proc_everyalt_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
  .globl proc_everyto_α
proc_everyto_α:
#=======================================================================================================================
    .global proc_everyto_α
    .global proc_everyto_β
    .global proc_everyto_γ
    .global proc_everyto_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_everyto_α_body:
# IR_VAR
 xchain00230_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00230_n1_α
 xchain00230_n0_β:
 jmp xchain00230_n2_α
# IR_UNOP
 xchain00230_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00230_n2_α
 cmp eax, 0
 jne xchain00230_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00230_n3_α
 xchain00230_n1_β:
 jmp xchain00230_n2_α
# IR_LIT_INTEGER
 xchain00230_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00230_n4_α
 xchain00230_n2_β:
 jmp proc_everyto_ω
.Lx00231_0:
 .quad 1
# IR_LIT_STRING
 xchain00230_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00230_n5_α
 xchain00230_n3_β:
 jmp proc_everyto_ω
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "1 to 5"
# IR_VAR
 xchain00230_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00230_n6_α
 xchain00230_n4_β:
 jmp proc_everyto_ω
# IR_RETURN
 xchain00230_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyto_γ
# IR_TO
 xchain00230_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00233_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00230_n7_α
 xchain00230_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00233_0
# IR_LIT_INTEGER
 xchain00230_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00230_n8_α
 xchain00230_n7_β:
 jmp xchain00230_n6_β
.Lx00234_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00230_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00230_n9_α
 xchain00230_n8_β:
 jmp xchain00230_n6_β
.Lx00235_0:
 .quad 5
# IR_TO
 xchain00230_n9_α:
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 144], rax
.Lx00236_0:
 mov rax, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 200]
 cmp rax, rcx
 jg xchain00230_n6_β
 mov qword ptr [rbp + 128], 6
 mov qword ptr [rbp + 136], rax
 jmp xchain00230_n9_β
 xchain00230_n9_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00236_0
proc_everyto_res:
add rsp, 8
pop rbp
proc_everyto_β:
jmp proc_everyto_ω
proc_everyto_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_everyto_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_evsusp_α
proc_evsusp_α:
#=======================================================================================================================
    .global proc_evsusp_α
    .global proc_evsusp_β
    .global proc_evsusp_γ
    .global proc_evsusp_ω
  sub rsp, 256
  mov [rsp + 232], rcx
  mov [rsp + 240], rdx
  mov [rsp + 248], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 224
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 216], rsp
  mov rdi, rsp
  mov esi, 224
  call rt_jmp_frame_lexprep@PLT
proc_evsusp_α_body:
# IR_VAR
 xchain00237_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00237_n1_α
 xchain00237_n0_β:
 jmp xchain00237_n2_α
# IR_UNOP
 xchain00237_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00237_n2_α
 cmp eax, 0
 jne xchain00237_n2_α
 mov qword ptr [rbp + 144], 0
 mov qword ptr [rbp + 152], 0
 jmp xchain00237_n3_α
 xchain00237_n1_β:
 jmp xchain00237_n2_α
# IR_VAR
 xchain00237_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 56], rax
 jmp xchain00237_n4_α
 xchain00237_n2_β:
 jmp proc_evsusp_ω
# IR_LIT_STRING
 xchain00237_n3_α:
 mov qword ptr [rbp + 112], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 120], rax
 jmp xchain00237_n5_α
 xchain00237_n3_β:
 jmp proc_evsusp_ω
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "suspend i"
 xchain00237_n4_α:
  .section .rodata
  .Lcall00142_pname: .string "susproc"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00142_pname]
 mov esi, 1
 lea rdx, [rbp + 64]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00237_n4_β
xchain00237_n4_β:
 lea rdi, [rbp + 64]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00237_n4_β
# IR_RETURN
 xchain00237_n5_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_evsusp_γ
proc_evsusp_res:
add rsp, 8
pop rbp
proc_evsusp_β:
jmp proc_evsusp_ω
proc_evsusp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 232]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
proc_evsusp_ω:
mov rax, [rbp + 240]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
  .globl proc_susproc_α
proc_susproc_α:
#=======================================================================================================================
    .global proc_susproc_α
    .global proc_susproc_β
    .global proc_susproc_γ
    .global proc_susproc_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 152], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_susproc_β
proc_susproc_α_body:
lea rax, [rip + xchain00239_n3_β]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
 xchain00239_n0_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00239_n1_α
 xchain00239_n0_β:
 jmp proc_susproc_ω
.Lx00240_0:
 .quad 1
# IR_VAR
 xchain00239_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00239_n2_α
 xchain00239_n1_β:
 jmp proc_susproc_ω
# IR_TO
 xchain00239_n2_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00241_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00239_n3_α
 xchain00239_n2_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00241_0
# IR_SUSPEND yield+resume
 xchain00239_n3_α:
 lea rax, [rip + xchain00239_n3_β]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_susproc_γ
 xchain00239_n3_β:
 jmp xchain00239_n2_β
proc_susproc_β:
jmp qword ptr [rbp + 128]
proc_susproc_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 152]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_susproc_ω:
mov rsp, qword ptr [rbp + 152]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_intcoerce_α
proc_intcoerce_α:
#=======================================================================================================================
    .global proc_intcoerce_α
    .global proc_intcoerce_β
    .global proc_intcoerce_γ
    .global proc_intcoerce_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_intcoerce_α_body:
# IR_VAR
 xchain00242_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00242_n1_α
 xchain00242_n0_β:
 jmp xchain00242_n2_α
# IR_UNOP
 xchain00242_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00242_n2_α
 cmp eax, 0
 jne xchain00242_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00242_n3_α
 xchain00242_n1_β:
 jmp xchain00242_n2_α
# IR_LIT_INTEGER
 xchain00242_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00242_n4_α
 xchain00242_n2_β:
 jmp proc_intcoerce_ω
.Lx00243_0:
 .quad 1
# IR_LIT_STRING
 xchain00242_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00242_n5_α
 xchain00242_n3_β:
 jmp proc_intcoerce_ω
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "+\"407\""
# IR_VAR
 xchain00242_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00242_n6_α
 xchain00242_n4_β:
 jmp proc_intcoerce_ω
# IR_RETURN
 xchain00242_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcoerce_γ
# IR_TO
 xchain00242_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00245_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00242_n7_α
 xchain00242_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00245_0
# IR_LIT_STRING
 xchain00242_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00242_n8_α
 xchain00242_n7_β:
 jmp xchain00242_n6_β
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "407"
# IR_COERCE_NUMERIC
 xchain00242_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00247_1
 cmp eax, 6
 jne .Lx00247_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00247_0
.Lx00247_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00247_2
.Lx00247_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00247_2:
 jmp xchain00242_n9_α
 xchain00242_n8_β:
 jmp xchain00242_n6_β
# IR_UNOP
 xchain00242_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00242_n6_β
 xchain00242_n9_β:
 jmp xchain00242_n6_β
proc_intcoerce_res:
add rsp, 8
pop rbp
proc_intcoerce_β:
jmp proc_intcoerce_ω
proc_intcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_intcoerce_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_realcoerce_α
proc_realcoerce_α:
#=======================================================================================================================
    .global proc_realcoerce_α
    .global proc_realcoerce_β
    .global proc_realcoerce_γ
    .global proc_realcoerce_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_realcoerce_α_body:
# IR_VAR
 xchain00248_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00248_n1_α
 xchain00248_n0_β:
 jmp xchain00248_n2_α
# IR_UNOP
 xchain00248_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00248_n2_α
 cmp eax, 0
 jne xchain00248_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00248_n3_α
 xchain00248_n1_β:
 jmp xchain00248_n2_α
# IR_LIT_INTEGER
 xchain00248_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00248_n4_α
 xchain00248_n2_β:
 jmp proc_realcoerce_ω
.Lx00249_0:
 .quad 1
# IR_LIT_STRING
 xchain00248_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00248_n5_α
 xchain00248_n3_β:
 jmp proc_realcoerce_ω
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "+\"7.25\""
# IR_VAR
 xchain00248_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00248_n6_α
 xchain00248_n4_β:
 jmp proc_realcoerce_ω
# IR_RETURN
 xchain00248_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcoerce_γ
# IR_TO
 xchain00248_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00251_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00248_n7_α
 xchain00248_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00251_0
# IR_LIT_STRING
 xchain00248_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00248_n8_α
 xchain00248_n7_β:
 jmp xchain00248_n6_β
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "7.25"
# IR_COERCE_NUMERIC
 xchain00248_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00253_1
 cmp eax, 6
 jne .Lx00253_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00253_0
.Lx00253_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00253_2
.Lx00253_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00253_2:
 jmp xchain00248_n9_α
 xchain00248_n8_β:
 jmp xchain00248_n6_β
# IR_UNOP
 xchain00248_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00248_n6_β
 xchain00248_n9_β:
 jmp xchain00248_n6_β
proc_realcoerce_res:
add rsp, 8
pop rbp
proc_realcoerce_β:
jmp proc_realcoerce_ω
proc_realcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_realcoerce_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_strcoerce_α
proc_strcoerce_α:
#=======================================================================================================================
    .global proc_strcoerce_α
    .global proc_strcoerce_β
    .global proc_strcoerce_γ
    .global proc_strcoerce_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_strcoerce_α_body:
# IR_VAR
 xchain00254_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00254_n1_α
 xchain00254_n0_β:
 jmp xchain00254_n2_α
# IR_UNOP
 xchain00254_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00254_n2_α
 cmp eax, 0
 jne xchain00254_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00254_n3_α
 xchain00254_n1_β:
 jmp xchain00254_n2_α
# IR_LIT_INTEGER
 xchain00254_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00254_n4_α
 xchain00254_n2_β:
 jmp proc_strcoerce_ω
.Lx00255_0:
 .quad 1
# IR_LIT_STRING
 xchain00254_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00254_n5_α
 xchain00254_n3_β:
 jmp proc_strcoerce_ω
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "*407"
# IR_VAR
 xchain00254_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00254_n6_α
 xchain00254_n4_β:
 jmp proc_strcoerce_ω
# IR_RETURN
 xchain00254_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoerce_γ
# IR_TO
 xchain00254_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00257_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00254_n7_α
 xchain00254_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00257_0
# IR_LIT_INTEGER
 xchain00254_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00254_n8_α
 xchain00254_n7_β:
 jmp xchain00254_n6_β
.Lx00258_0:
 .quad 407
# IR_UNOP
 xchain00254_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00254_n6_β
 xchain00254_n8_β:
 jmp xchain00254_n6_β
proc_strcoerce_res:
add rsp, 8
pop rbp
proc_strcoerce_β:
jmp proc_strcoerce_ω
proc_strcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_strcoerce_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_strcoercer_α
proc_strcoercer_α:
#=======================================================================================================================
    .global proc_strcoercer_α
    .global proc_strcoercer_β
    .global proc_strcoercer_γ
    .global proc_strcoercer_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_strcoercer_α_body:
# IR_VAR
 xchain00259_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00259_n1_α
 xchain00259_n0_β:
 jmp xchain00259_n2_α
# IR_UNOP
 xchain00259_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00259_n2_α
 cmp eax, 0
 jne xchain00259_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00259_n3_α
 xchain00259_n1_β:
 jmp xchain00259_n2_α
# IR_LIT_INTEGER
 xchain00259_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00259_n4_α
 xchain00259_n2_β:
 jmp proc_strcoercer_ω
.Lx00260_0:
 .quad 1
# IR_LIT_STRING
 xchain00259_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00259_n5_α
 xchain00259_n3_β:
 jmp proc_strcoercer_ω
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "*7.25"
# IR_VAR
 xchain00259_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00259_n6_α
 xchain00259_n4_β:
 jmp proc_strcoercer_ω
# IR_RETURN
 xchain00259_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoercer_γ
# IR_TO
 xchain00259_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00262_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00259_n7_α
 xchain00259_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00262_0
# IR_LIT_REAL
 xchain00259_n7_α:
 mov qword ptr [rbp + 160], 7
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00259_n8_α
 xchain00259_n7_β:
 jmp xchain00259_n6_β
.Lx00263_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00259_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00259_n6_β
 xchain00259_n8_β:
 jmp xchain00259_n6_β
proc_strcoercer_res:
add rsp, 8
pop rbp
proc_strcoercer_β:
jmp proc_strcoercer_ω
proc_strcoercer_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_strcoercer_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_tointeger_α
proc_tointeger_α:
#=======================================================================================================================
    .global proc_tointeger_α
    .global proc_tointeger_β
    .global proc_tointeger_γ
    .global proc_tointeger_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_tointeger_α_body:
# IR_VAR
 xchain00264_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00264_n1_α
 xchain00264_n0_β:
 jmp xchain00264_n2_α
# IR_UNOP
 xchain00264_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00264_n2_α
 cmp eax, 0
 jne xchain00264_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00264_n3_α
 xchain00264_n1_β:
 jmp xchain00264_n2_α
# IR_LIT_INTEGER
 xchain00264_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00264_n4_α
 xchain00264_n2_β:
 jmp proc_tointeger_ω
.Lx00265_0:
 .quad 1
# IR_LIT_STRING
 xchain00264_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00264_n5_α
 xchain00264_n3_β:
 jmp proc_tointeger_ω
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "integer(\"407\")"
# IR_VAR
 xchain00264_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00264_n6_α
 xchain00264_n4_β:
 jmp proc_tointeger_ω
# IR_RETURN
 xchain00264_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tointeger_γ
# IR_TO
 xchain00264_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00267_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00264_n7_α
 xchain00264_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00267_0
# IR_LIT_STRING
 xchain00264_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00264_n8_α
 xchain00264_n7_β:
 jmp xchain00264_n6_β
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "407"
 xchain00264_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn777: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn777]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00264_n6_β
 jmp xchain00264_n6_β
 xchain00264_n8_β:
 jmp xchain00264_n6_β
proc_tointeger_res:
add rsp, 8
pop rbp
proc_tointeger_β:
jmp proc_tointeger_ω
proc_tointeger_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_tointeger_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_toreal_α
proc_toreal_α:
#=======================================================================================================================
    .global proc_toreal_α
    .global proc_toreal_β
    .global proc_toreal_γ
    .global proc_toreal_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_toreal_α_body:
# IR_VAR
 xchain00269_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00269_n1_α
 xchain00269_n0_β:
 jmp xchain00269_n2_α
# IR_UNOP
 xchain00269_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00269_n2_α
 cmp eax, 0
 jne xchain00269_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00269_n3_α
 xchain00269_n1_β:
 jmp xchain00269_n2_α
# IR_LIT_INTEGER
 xchain00269_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00269_n4_α
 xchain00269_n2_β:
 jmp proc_toreal_ω
.Lx00270_0:
 .quad 1
# IR_LIT_STRING
 xchain00269_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00269_n5_α
 xchain00269_n3_β:
 jmp proc_toreal_ω
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "real(\"7.25\")"
# IR_VAR
 xchain00269_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00269_n6_α
 xchain00269_n4_β:
 jmp proc_toreal_ω
# IR_RETURN
 xchain00269_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_toreal_γ
# IR_TO
 xchain00269_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00272_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00269_n7_α
 xchain00269_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00272_0
# IR_LIT_STRING
 xchain00269_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00269_n8_α
 xchain00269_n7_β:
 jmp xchain00269_n6_β
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "407"
 xchain00269_n8_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn791: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn791]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00269_n6_β
 jmp xchain00269_n6_β
 xchain00269_n8_β:
 jmp xchain00269_n6_β
proc_toreal_res:
add rsp, 8
pop rbp
proc_toreal_β:
jmp proc_toreal_ω
proc_toreal_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_toreal_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_tostring_α
proc_tostring_α:
#=======================================================================================================================
    .global proc_tostring_α
    .global proc_tostring_β
    .global proc_tostring_γ
    .global proc_tostring_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_tostring_α_body:
# IR_VAR
 xchain00274_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00274_n1_α
 xchain00274_n0_β:
 jmp xchain00274_n2_α
# IR_UNOP
 xchain00274_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00274_n2_α
 cmp eax, 0
 jne xchain00274_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00274_n3_α
 xchain00274_n1_β:
 jmp xchain00274_n2_α
# IR_LIT_INTEGER
 xchain00274_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00274_n4_α
 xchain00274_n2_β:
 jmp proc_tostring_ω
.Lx00275_0:
 .quad 1
# IR_LIT_STRING
 xchain00274_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00274_n5_α
 xchain00274_n3_β:
 jmp proc_tostring_ω
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "string(407)"
# IR_VAR
 xchain00274_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00274_n6_α
 xchain00274_n4_β:
 jmp proc_tostring_ω
# IR_RETURN
 xchain00274_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tostring_γ
# IR_TO
 xchain00274_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00277_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00274_n7_α
 xchain00274_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00277_0
# IR_LIT_INTEGER
 xchain00274_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00274_n8_α
 xchain00274_n7_β:
 jmp xchain00274_n6_β
.Lx00278_0:
 .quad 407
 xchain00274_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn805: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn805]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00274_n6_β
 jmp xchain00274_n6_β
 xchain00274_n8_β:
 jmp xchain00274_n6_β
proc_tostring_res:
add rsp, 8
pop rbp
proc_tostring_β:
jmp proc_tostring_ω
proc_tostring_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_tostring_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_rtostring_α
proc_rtostring_α:
#=======================================================================================================================
    .global proc_rtostring_α
    .global proc_rtostring_β
    .global proc_rtostring_γ
    .global proc_rtostring_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_rtostring_α_body:
# IR_VAR
 xchain00279_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00279_n1_α
 xchain00279_n0_β:
 jmp xchain00279_n2_α
# IR_UNOP
 xchain00279_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00279_n2_α
 cmp eax, 0
 jne xchain00279_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00279_n3_α
 xchain00279_n1_β:
 jmp xchain00279_n2_α
# IR_LIT_INTEGER
 xchain00279_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00279_n4_α
 xchain00279_n2_β:
 jmp proc_rtostring_ω
.Lx00280_0:
 .quad 1
# IR_LIT_STRING
 xchain00279_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00279_n5_α
 xchain00279_n3_β:
 jmp proc_rtostring_ω
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "string(7.25)"
# IR_VAR
 xchain00279_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00279_n6_α
 xchain00279_n4_β:
 jmp proc_rtostring_ω
# IR_RETURN
 xchain00279_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rtostring_γ
# IR_TO
 xchain00279_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00282_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00279_n7_α
 xchain00279_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00282_0
# IR_LIT_REAL
 xchain00279_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00279_n8_α
 xchain00279_n7_β:
 jmp xchain00279_n6_β
.Lx00283_0:
 .quad 4619848792751996928
 xchain00279_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn819: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn819]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00279_n6_β
 jmp xchain00279_n6_β
 xchain00279_n8_β:
 jmp xchain00279_n6_β
proc_rtostring_res:
add rsp, 8
pop rbp
proc_rtostring_β:
jmp proc_rtostring_ω
proc_rtostring_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_rtostring_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_tocset_α
proc_tocset_α:
#=======================================================================================================================
    .global proc_tocset_α
    .global proc_tocset_β
    .global proc_tocset_γ
    .global proc_tocset_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_tocset_α_body:
# IR_VAR
 xchain00284_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00284_n1_α
 xchain00284_n0_β:
 jmp xchain00284_n2_α
# IR_UNOP
 xchain00284_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00284_n2_α
 cmp eax, 0
 jne xchain00284_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00284_n3_α
 xchain00284_n1_β:
 jmp xchain00284_n2_α
# IR_LIT_INTEGER
 xchain00284_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00284_n4_α
 xchain00284_n2_β:
 jmp proc_tocset_ω
.Lx00285_0:
 .quad 1
# IR_LIT_STRING
 xchain00284_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00284_n5_α
 xchain00284_n3_β:
 jmp proc_tocset_ω
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "cset(\"407\")"
# IR_VAR
 xchain00284_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00284_n6_α
 xchain00284_n4_β:
 jmp proc_tocset_ω
# IR_RETURN
 xchain00284_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tocset_γ
# IR_TO
 xchain00284_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00287_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00284_n7_α
 xchain00284_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00287_0
# IR_LIT_STRING
 xchain00284_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00288_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00284_n8_α
 xchain00284_n7_β:
 jmp xchain00284_n6_β
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "407"
 xchain00284_n8_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn833: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn833]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00284_n6_β
 jmp xchain00284_n6_β
 xchain00284_n8_β:
 jmp xchain00284_n6_β
proc_tocset_res:
add rsp, 8
pop rbp
proc_tocset_β:
jmp proc_tocset_ω
proc_tocset_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_tocset_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_charf_α
proc_charf_α:
#=======================================================================================================================
    .global proc_charf_α
    .global proc_charf_β
    .global proc_charf_γ
    .global proc_charf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_charf_α_body:
# IR_VAR
 xchain00289_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00289_n1_α
 xchain00289_n0_β:
 jmp xchain00289_n2_α
# IR_UNOP
 xchain00289_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00289_n2_α
 cmp eax, 0
 jne xchain00289_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00289_n3_α
 xchain00289_n1_β:
 jmp xchain00289_n2_α
# IR_LIT_INTEGER
 xchain00289_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00289_n4_α
 xchain00289_n2_β:
 jmp proc_charf_ω
.Lx00290_0:
 .quad 1
# IR_LIT_STRING
 xchain00289_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00289_n5_α
 xchain00289_n3_β:
 jmp proc_charf_ω
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "char(65)"
# IR_VAR
 xchain00289_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00289_n6_α
 xchain00289_n4_β:
 jmp proc_charf_ω
# IR_RETURN
 xchain00289_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_charf_γ
# IR_TO
 xchain00289_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00292_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00289_n7_α
 xchain00289_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00292_0
# IR_LIT_INTEGER
 xchain00289_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00289_n8_α
 xchain00289_n7_β:
 jmp xchain00289_n6_β
.Lx00293_0:
 .quad 65
 xchain00289_n8_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn847: .string "char"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn847]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00289_n6_β
 jmp xchain00289_n6_β
 xchain00289_n8_β:
 jmp xchain00289_n6_β
proc_charf_res:
add rsp, 8
pop rbp
proc_charf_β:
jmp proc_charf_ω
proc_charf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_charf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_ordf_α
proc_ordf_α:
#=======================================================================================================================
    .global proc_ordf_α
    .global proc_ordf_β
    .global proc_ordf_γ
    .global proc_ordf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_ordf_α_body:
# IR_VAR
 xchain00294_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00294_n1_α
 xchain00294_n0_β:
 jmp xchain00294_n2_α
# IR_UNOP
 xchain00294_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00294_n2_α
 cmp eax, 0
 jne xchain00294_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00294_n3_α
 xchain00294_n1_β:
 jmp xchain00294_n2_α
# IR_LIT_INTEGER
 xchain00294_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00294_n4_α
 xchain00294_n2_β:
 jmp proc_ordf_ω
.Lx00295_0:
 .quad 1
# IR_LIT_STRING
 xchain00294_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00294_n5_α
 xchain00294_n3_β:
 jmp proc_ordf_ω
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "ord(\"A\")"
# IR_VAR
 xchain00294_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00294_n6_α
 xchain00294_n4_β:
 jmp proc_ordf_ω
# IR_RETURN
 xchain00294_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_ordf_γ
# IR_TO
 xchain00294_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00297_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00294_n7_α
 xchain00294_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00297_0
# IR_LIT_STRING
 xchain00294_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00294_n8_α
 xchain00294_n7_β:
 jmp xchain00294_n6_β
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "A"
 xchain00294_n8_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn861: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn861]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00294_n6_β
 jmp xchain00294_n6_β
 xchain00294_n8_β:
 jmp xchain00294_n6_β
proc_ordf_res:
add rsp, 8
pop rbp
proc_ordf_β:
jmp proc_ordf_ω
proc_ordf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_ordf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_strsize_α
proc_strsize_α:
#=======================================================================================================================
    .global proc_strsize_α
    .global proc_strsize_β
    .global proc_strsize_γ
    .global proc_strsize_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_strsize_α_body:
# IR_VAR
 xchain00299_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00299_n1_α
 xchain00299_n0_β:
 jmp xchain00299_n2_α
# IR_UNOP
 xchain00299_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00299_n2_α
 cmp eax, 0
 jne xchain00299_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00299_n3_α
 xchain00299_n1_β:
 jmp xchain00299_n2_α
# IR_LIT_INTEGER
 xchain00299_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00299_n4_α
 xchain00299_n2_β:
 jmp proc_strsize_ω
.Lx00300_0:
 .quad 1
# IR_LIT_STRING
 xchain00299_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00299_n5_α
 xchain00299_n3_β:
 jmp proc_strsize_ω
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "*\"abcde\""
# IR_VAR
 xchain00299_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00299_n6_α
 xchain00299_n4_β:
 jmp proc_strsize_ω
# IR_RETURN
 xchain00299_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsize_γ
# IR_TO
 xchain00299_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00302_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00299_n7_α
 xchain00299_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00302_0
# IR_LIT_STRING
 xchain00299_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00299_n8_α
 xchain00299_n7_β:
 jmp xchain00299_n6_β
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "abcde"
# IR_UNOP
 xchain00299_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00299_n6_β
 xchain00299_n8_β:
 jmp xchain00299_n6_β
proc_strsize_res:
add rsp, 8
pop rbp
proc_strsize_β:
jmp proc_strsize_ω
proc_strsize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_strsize_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_concat_α
proc_concat_α:
#=======================================================================================================================
    .global proc_concat_α
    .global proc_concat_β
    .global proc_concat_γ
    .global proc_concat_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_concat_α_body:
# IR_VAR
 xchain00304_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00304_n1_α
 xchain00304_n0_β:
 jmp xchain00304_n2_α
# IR_UNOP
 xchain00304_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00304_n2_α
 cmp eax, 0
 jne xchain00304_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00304_n3_α
 xchain00304_n1_β:
 jmp xchain00304_n2_α
# IR_LIT_INTEGER
 xchain00304_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00304_n4_α
 xchain00304_n2_β:
 jmp proc_concat_ω
.Lx00305_0:
 .quad 1
# IR_LIT_STRING
 xchain00304_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00304_n5_α
 xchain00304_n3_β:
 jmp proc_concat_ω
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "\"a\" || \"b\""
# IR_VAR
 xchain00304_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00304_n6_α
 xchain00304_n4_β:
 jmp proc_concat_ω
# IR_RETURN
 xchain00304_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_concat_γ
# IR_TO
 xchain00304_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00307_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00304_n7_α
 xchain00304_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00307_0
# IR_LIT_STRING
 xchain00304_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00308_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00304_n8_α
 xchain00304_n7_β:
 jmp xchain00304_n6_β
.Lx00308_0:
 .quad .Lx00308_0_s
.Lx00308_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00304_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00304_n9_α
 xchain00304_n8_β:
 jmp xchain00304_n6_β
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "b"
 xchain00304_n9_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 call str_concat_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00304_n6_β
 xchain00304_n9_β:
 jmp xchain00304_n6_β
proc_concat_res:
add rsp, 8
pop rbp
proc_concat_β:
jmp proc_concat_ω
proc_concat_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_concat_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_strpick_α
proc_strpick_α:
#=======================================================================================================================
    .global proc_strpick_α
    .global proc_strpick_β
    .global proc_strpick_γ
    .global proc_strpick_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_strpick_α_body:
# IR_VAR
 xchain00310_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00310_n1_α
 xchain00310_n0_β:
 jmp xchain00310_n2_α
# IR_UNOP
 xchain00310_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00310_n2_α
 cmp eax, 0
 jne xchain00310_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00310_n3_α
 xchain00310_n1_β:
 jmp xchain00310_n2_α
# IR_LIT_INTEGER
 xchain00310_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00310_n4_α
 xchain00310_n2_β:
 jmp proc_strpick_ω
.Lx00311_0:
 .quad 1
# IR_LIT_STRING
 xchain00310_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00310_n5_α
 xchain00310_n3_β:
 jmp proc_strpick_ω
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "?\"abcde\""
# IR_VAR
 xchain00310_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00310_n6_α
 xchain00310_n4_β:
 jmp proc_strpick_ω
# IR_RETURN
 xchain00310_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strpick_γ
# IR_TO
 xchain00310_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00313_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00310_n7_α
 xchain00310_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00313_0
# IR_LIT_STRING
 xchain00310_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00310_n8_α
 xchain00310_n7_β:
 jmp xchain00310_n6_β
.Lx00314_0:
 .quad .Lx00314_0_s
.Lx00314_0_s:
 .string "abcde"
# IR_RANDOM
 xchain00310_n8_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00310_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00310_n9_α
 xchain00310_n8_β:
 jmp xchain00310_n6_β
# IR_DEREF variable -> value
 xchain00310_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00310_n6_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00310_n6_β
 xchain00310_n9_β:
 jmp xchain00310_n6_β
proc_strpick_res:
add rsp, 8
pop rbp
proc_strpick_β:
jmp proc_strpick_ω
proc_strpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_strpick_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_strbang_α
proc_strbang_α:
#=======================================================================================================================
    .global proc_strbang_α
    .global proc_strbang_β
    .global proc_strbang_γ
    .global proc_strbang_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_strbang_α_body:
# IR_VAR
 xchain00315_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00315_n1_α
 xchain00315_n0_β:
 jmp xchain00315_n2_α
# IR_UNOP
 xchain00315_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00315_n2_α
 cmp eax, 0
 jne xchain00315_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00315_n3_α
 xchain00315_n1_β:
 jmp xchain00315_n2_α
# IR_LIT_INTEGER
 xchain00315_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00315_n4_α
 xchain00315_n2_β:
 jmp proc_strbang_ω
.Lx00316_0:
 .quad 1
# IR_LIT_STRING
 xchain00315_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00315_n5_α
 xchain00315_n3_β:
 jmp proc_strbang_ω
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "!\"12345\""
# IR_VAR
 xchain00315_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00315_n6_α
 xchain00315_n4_β:
 jmp proc_strbang_ω
# IR_RETURN
 xchain00315_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strbang_γ
# IR_TO
 xchain00315_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00318_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00315_n7_α
 xchain00315_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00318_0
# IR_LIT_STRING
 xchain00315_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00319_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00315_n8_α
 xchain00315_n7_β:
 jmp xchain00315_n6_β
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00315_n8_α:
 mov qword ptr [rbp + 144], 0
.Lx00320_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00315_n6_β
 jmp xchain00315_n8_β
 xchain00315_n8_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00320_0
proc_strbang_res:
add rsp, 8
pop rbp
proc_strbang_β:
jmp proc_strbang_ω
proc_strbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_strbang_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_strsub_α
proc_strsub_α:
#=======================================================================================================================
    .global proc_strsub_α
    .global proc_strsub_β
    .global proc_strsub_γ
    .global proc_strsub_ω
  sub rsp, 416
  mov [rsp + 392], rcx
  mov [rsp + 400], rdx
  mov [rsp + 408], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 384
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 384
  call rt_jmp_frame_lexprep@PLT
proc_strsub_α_body:
# IR_VAR
 xchain00321_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00321_n1_α
 xchain00321_n0_β:
 jmp xchain00321_n2_α
# IR_UNOP
 xchain00321_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00321_n2_α
 cmp eax, 0
 jne xchain00321_n2_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00321_n3_α
 xchain00321_n1_β:
 jmp xchain00321_n2_α
# IR_LIT_INTEGER
 xchain00321_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00321_n4_α
 xchain00321_n2_β:
 jmp proc_strsub_ω
.Lx00322_0:
 .quad 1
# IR_LIT_STRING
 xchain00321_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00321_n5_α
 xchain00321_n3_β:
 jmp proc_strsub_ω
.Lx00323_0:
 .quad .Lx00323_0_s
.Lx00323_0_s:
 .string "\"abcde\"[3]"
# IR_VAR
 xchain00321_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00321_n6_α
 xchain00321_n4_β:
 jmp proc_strsub_ω
# IR_RETURN
 xchain00321_n5_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsub_γ
# IR_TO
 xchain00321_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00324_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00321_n7_α
 xchain00321_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00324_0
# IR_LIT_STRING
 xchain00321_n7_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00321_n8_α
 xchain00321_n7_β:
 jmp xchain00321_n6_β
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00321_n8_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00321_n9_α
 xchain00321_n8_β:
 jmp xchain00321_n6_β
.Lx00326_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00321_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00321_n6_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00321_n10_α
 xchain00321_n9_β:
 jmp xchain00321_n6_β
# IR_DEREF variable -> value
 xchain00321_n10_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00321_n6_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00321_n6_β
 xchain00321_n10_β:
 jmp xchain00321_n6_β
proc_strsub_res:
add rsp, 8
pop rbp
proc_strsub_β:
jmp proc_strsub_ω
proc_strsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strsub_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_substr_α
proc_substr_α:
#=======================================================================================================================
    .global proc_substr_α
    .global proc_substr_β
    .global proc_substr_γ
    .global proc_substr_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_substr_α_body:
# IR_VAR
 xchain00327_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00327_n1_α
 xchain00327_n0_β:
 jmp xchain00327_n2_α
# IR_UNOP
 xchain00327_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00327_n2_α
 cmp eax, 0
 jne xchain00327_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00327_n3_α
 xchain00327_n1_β:
 jmp xchain00327_n2_α
# IR_LIT_INTEGER
 xchain00327_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00327_n4_α
 xchain00327_n2_β:
 jmp proc_substr_ω
.Lx00328_0:
 .quad 1
# IR_LIT_STRING
 xchain00327_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00327_n5_α
 xchain00327_n3_β:
 jmp proc_substr_ω
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "\"abcde\"[2:5]"
# IR_VAR
 xchain00327_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00327_n6_α
 xchain00327_n4_β:
 jmp proc_substr_ω
# IR_RETURN
 xchain00327_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_substr_γ
# IR_TO
 xchain00327_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00330_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00327_n7_α
 xchain00327_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00330_0
# IR_LIT_STRING
 xchain00327_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00327_n8_α
 xchain00327_n7_β:
 jmp xchain00327_n6_β
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00327_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00327_n9_α
 xchain00327_n8_β:
 jmp xchain00327_n6_β
.Lx00332_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00327_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00327_n10_α
 xchain00327_n9_β:
 jmp xchain00327_n6_β
.Lx00333_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00327_n10_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8, qword ptr [rbp + 224]
 mov r9, qword ptr [rbp + 232]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00327_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00327_n6_β
 xchain00327_n10_β:
 jmp xchain00327_n6_β
proc_substr_res:
add rsp, 8
pop rbp
proc_substr_β:
jmp proc_substr_ω
proc_substr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_substr_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_subsasg_α
proc_subsasg_α:
#=======================================================================================================================
    .global proc_subsasg_α
    .global proc_subsasg_β
    .global proc_subsasg_γ
    .global proc_subsasg_ω
  sub rsp, 512
  mov [rsp + 488], rcx
  mov [rsp + 496], rdx
  mov [rsp + 504], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 480
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 456], rsp
  mov rdi, rsp
  mov esi, 480
  call rt_jmp_frame_lexprep@PLT
proc_subsasg_α_body:
# IR_VAR
 xchain00334_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00334_n1_α
 xchain00334_n0_β:
 jmp xchain00334_n2_α
# IR_UNOP
 xchain00334_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00334_n2_α
 cmp eax, 0
 jne xchain00334_n2_α
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00334_n3_α
 xchain00334_n1_β:
 jmp xchain00334_n2_α
# IR_LIT_INTEGER
 xchain00334_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00334_n4_α
 xchain00334_n2_β:
 jmp proc_subsasg_ω
.Lx00335_0:
 .quad 1
# IR_LIT_STRING
 xchain00334_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00334_n5_α
 xchain00334_n3_β:
 jmp proc_subsasg_ω
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "s[2:5] := \"x\""
# IR_VAR
 xchain00334_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00334_n6_α
 xchain00334_n4_β:
 jmp proc_subsasg_ω
# IR_RETURN
 xchain00334_n5_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_subsasg_γ
# IR_TO
 xchain00334_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00337_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00334_n7_α
 xchain00334_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00337_0
# IR_LIT_STRING
 xchain00334_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00338_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00334_n8_α
 xchain00334_n7_β:
 jmp xchain00334_n6_β
.Lx00338_0:
 .quad .Lx00338_0_s
.Lx00338_0_s:
 .string "abcde"
 xchain00334_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00334_n9_α
 xchain00334_n8_β:
 jmp xchain00334_n6_β
# IR_LIT_INTEGER
 xchain00334_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00334_n10_α
 xchain00334_n9_β:
 jmp xchain00334_n6_β
.Lx00339_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00334_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00334_n11_α
 xchain00334_n10_β:
 jmp xchain00334_n6_β
.Lx00340_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00334_n11_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8, qword ptr [rbp + 240]
 mov r9, qword ptr [rbp + 248]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00334_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00334_n12_α
 xchain00334_n11_β:
 jmp xchain00334_n6_β
# IR_LIT_STRING
 xchain00334_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00341_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00334_n13_α
 xchain00334_n12_β:
 jmp xchain00334_n6_β
.Lx00341_0:
 .quad .Lx00341_0_s
.Lx00341_0_s:
 .string "x"
# IR_ASSIGN_VAR
 xchain00334_n13_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00334_n6_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00334_n6_β
 xchain00334_n13_β:
 jmp xchain00334_n6_β
proc_subsasg_res:
add rsp, 8
pop rbp
proc_subsasg_β:
jmp proc_subsasg_ω
proc_subsasg_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 488]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
proc_subsasg_ω:
mov rax, [rbp + 496]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
  .globl proc_strcmp_α
proc_strcmp_α:
#=======================================================================================================================
    .global proc_strcmp_α
    .global proc_strcmp_β
    .global proc_strcmp_γ
    .global proc_strcmp_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_strcmp_α_body:
# IR_VAR
 xchain00342_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00342_n1_α
 xchain00342_n0_β:
 jmp xchain00342_n2_α
# IR_UNOP
 xchain00342_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00342_n2_α
 cmp eax, 0
 jne xchain00342_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00342_n3_α
 xchain00342_n1_β:
 jmp xchain00342_n2_α
# IR_LIT_INTEGER
 xchain00342_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00342_n4_α
 xchain00342_n2_β:
 jmp proc_strcmp_ω
.Lx00343_0:
 .quad 1
# IR_LIT_STRING
 xchain00342_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00342_n5_α
 xchain00342_n3_β:
 jmp proc_strcmp_ω
.Lx00344_0:
 .quad .Lx00344_0_s
.Lx00344_0_s:
 .string "\"abc\">>\"aaa\""
# IR_VAR
 xchain00342_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00342_n6_α
 xchain00342_n4_β:
 jmp proc_strcmp_ω
# IR_RETURN
 xchain00342_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcmp_γ
# IR_TO
 xchain00342_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00345_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00342_n7_α
 xchain00342_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00345_0
# IR_LIT_STRING
 xchain00342_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00342_n8_α
 xchain00342_n7_β:
 jmp xchain00342_n6_β
.Lx00346_0:
 .quad .Lx00346_0_s
.Lx00346_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00342_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00342_n9_α
 xchain00342_n8_β:
 jmp xchain00342_n6_β
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "aaa"
 xchain00342_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00342_n6_β
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00342_n6_β
 xchain00342_n9_β:
 jmp xchain00342_n6_β
proc_strcmp_res:
add rsp, 8
pop rbp
proc_strcmp_β:
jmp proc_strcmp_ω
proc_strcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_strcmp_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_strident_α
proc_strident_α:
#=======================================================================================================================
    .global proc_strident_α
    .global proc_strident_β
    .global proc_strident_γ
    .global proc_strident_ω
  sub rsp, 400
  mov [rsp + 376], rcx
  mov [rsp + 384], rdx
  mov [rsp + 392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 368
  call rt_jmp_frame_lexprep@PLT
proc_strident_α_body:
# IR_VAR
 xchain00348_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00348_n1_α
 xchain00348_n0_β:
 jmp xchain00348_n2_α
# IR_UNOP
 xchain00348_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00348_n2_α
 cmp eax, 0
 jne xchain00348_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00348_n3_α
 xchain00348_n1_β:
 jmp xchain00348_n2_α
# IR_LIT_INTEGER
 xchain00348_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00349_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00348_n4_α
 xchain00348_n2_β:
 jmp proc_strident_ω
.Lx00349_0:
 .quad 1
# IR_LIT_STRING
 xchain00348_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00350_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00348_n5_α
 xchain00348_n3_β:
 jmp proc_strident_ω
.Lx00350_0:
 .quad .Lx00350_0_s
.Lx00350_0_s:
 .string "\"abc\"===\"aaa\""
# IR_VAR
 xchain00348_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00348_n6_α
 xchain00348_n4_β:
 jmp proc_strident_ω
# IR_RETURN
 xchain00348_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strident_γ
# IR_TO
 xchain00348_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00351_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00348_n7_α
 xchain00348_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00351_0
# IR_LIT_STRING
 xchain00348_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00348_n8_α
 xchain00348_n7_β:
 jmp xchain00348_n6_β
.Lx00352_0:
 .quad .Lx00352_0_s
.Lx00352_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00348_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00348_n9_α
 xchain00348_n8_β:
 jmp xchain00348_n6_β
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "aaa"
 xchain00348_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00348_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00348_n6_β
 xchain00348_n9_β:
 jmp xchain00348_n6_β
proc_strident_res:
add rsp, 8
pop rbp
proc_strident_β:
jmp proc_strident_ω
proc_strident_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_strident_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_replf_α
proc_replf_α:
#=======================================================================================================================
    .global proc_replf_α
    .global proc_replf_β
    .global proc_replf_γ
    .global proc_replf_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_replf_α_body:
# IR_VAR
 xchain00354_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00354_n1_α
 xchain00354_n0_β:
 jmp xchain00354_n2_α
# IR_UNOP
 xchain00354_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00354_n2_α
 cmp eax, 0
 jne xchain00354_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00354_n3_α
 xchain00354_n1_β:
 jmp xchain00354_n2_α
# IR_LIT_INTEGER
 xchain00354_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00354_n4_α
 xchain00354_n2_β:
 jmp proc_replf_ω
.Lx00355_0:
 .quad 1
# IR_LIT_STRING
 xchain00354_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00354_n5_α
 xchain00354_n3_β:
 jmp proc_replf_ω
.Lx00356_0:
 .quad .Lx00356_0_s
.Lx00356_0_s:
 .string "repl(\"-\",20)"
# IR_VAR
 xchain00354_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00354_n6_α
 xchain00354_n4_β:
 jmp proc_replf_ω
# IR_RETURN
 xchain00354_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_replf_γ
# IR_TO
 xchain00354_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00357_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00354_n7_α
 xchain00354_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00357_0
# IR_LIT_STRING
 xchain00354_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00358_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00354_n8_α
 xchain00354_n7_β:
 jmp xchain00354_n6_β
.Lx00358_0:
 .quad .Lx00358_0_s
.Lx00358_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00354_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00354_n9_α
 xchain00354_n8_β:
 jmp xchain00354_n6_β
.Lx00359_0:
 .quad 20
 xchain00354_n9_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1007: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1007]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00354_n6_β
 jmp xchain00354_n6_β
 xchain00354_n9_β:
 jmp xchain00354_n6_β
proc_replf_res:
add rsp, 8
pop rbp
proc_replf_β:
jmp proc_replf_ω
proc_replf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_replf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_reversef_α
proc_reversef_α:
#=======================================================================================================================
    .global proc_reversef_α
    .global proc_reversef_β
    .global proc_reversef_γ
    .global proc_reversef_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_reversef_α_body:
# IR_VAR
 xchain00360_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00360_n1_α
 xchain00360_n0_β:
 jmp xchain00360_n2_α
# IR_UNOP
 xchain00360_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00360_n2_α
 cmp eax, 0
 jne xchain00360_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00360_n3_α
 xchain00360_n1_β:
 jmp xchain00360_n2_α
# IR_LIT_INTEGER
 xchain00360_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00360_n4_α
 xchain00360_n2_β:
 jmp proc_reversef_ω
.Lx00361_0:
 .quad 1
# IR_LIT_STRING
 xchain00360_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00360_n5_α
 xchain00360_n3_β:
 jmp proc_reversef_ω
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string "reverse(\"a...z\")"
# IR_VAR
 xchain00360_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00360_n6_α
 xchain00360_n4_β:
 jmp proc_reversef_ω
# IR_RETURN
 xchain00360_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reversef_γ
# IR_TO
 xchain00360_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00363_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00360_n7_α
 xchain00360_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00363_0
# IR_LIT_STRING
 xchain00360_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00364_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00360_n8_α
 xchain00360_n7_β:
 jmp xchain00360_n6_β
.Lx00364_0:
 .quad .Lx00364_0_s
.Lx00364_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00360_n8_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1021: .string "reverse"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1021]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00360_n6_β
 jmp xchain00360_n6_β
 xchain00360_n8_β:
 jmp xchain00360_n6_β
proc_reversef_res:
add rsp, 8
pop rbp
proc_reversef_β:
jmp proc_reversef_ω
proc_reversef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_reversef_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_leftf_α
proc_leftf_α:
#=======================================================================================================================
    .global proc_leftf_α
    .global proc_leftf_β
    .global proc_leftf_γ
    .global proc_leftf_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_leftf_α_body:
# IR_VAR
 xchain00365_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00365_n1_α
 xchain00365_n0_β:
 jmp xchain00365_n2_α
# IR_UNOP
 xchain00365_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00365_n2_α
 cmp eax, 0
 jne xchain00365_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00365_n3_α
 xchain00365_n1_β:
 jmp xchain00365_n2_α
# IR_LIT_INTEGER
 xchain00365_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00365_n4_α
 xchain00365_n2_β:
 jmp proc_leftf_ω
.Lx00366_0:
 .quad 1
# IR_LIT_STRING
 xchain00365_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00365_n5_α
 xchain00365_n3_β:
 jmp proc_leftf_ω
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "left(\"a\",10)"
# IR_VAR
 xchain00365_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00365_n6_α
 xchain00365_n4_β:
 jmp proc_leftf_ω
# IR_RETURN
 xchain00365_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_leftf_γ
# IR_TO
 xchain00365_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00368_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00365_n7_α
 xchain00365_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00368_0
# IR_LIT_STRING
 xchain00365_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00365_n8_α
 xchain00365_n7_β:
 jmp xchain00365_n6_β
.Lx00369_0:
 .quad .Lx00369_0_s
.Lx00369_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00365_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00365_n9_α
 xchain00365_n8_β:
 jmp xchain00365_n6_β
.Lx00370_0:
 .quad 10
 xchain00365_n9_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1036: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1036]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00365_n6_β
 jmp xchain00365_n6_β
 xchain00365_n9_β:
 jmp xchain00365_n6_β
proc_leftf_res:
add rsp, 8
pop rbp
proc_leftf_β:
jmp proc_leftf_ω
proc_leftf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_leftf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_centerf_α
proc_centerf_α:
#=======================================================================================================================
    .global proc_centerf_α
    .global proc_centerf_β
    .global proc_centerf_γ
    .global proc_centerf_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_centerf_α_body:
# IR_VAR
 xchain00371_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00371_n1_α
 xchain00371_n0_β:
 jmp xchain00371_n2_α
# IR_UNOP
 xchain00371_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00371_n2_α
 cmp eax, 0
 jne xchain00371_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00371_n3_α
 xchain00371_n1_β:
 jmp xchain00371_n2_α
# IR_LIT_INTEGER
 xchain00371_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00371_n4_α
 xchain00371_n2_β:
 jmp proc_centerf_ω
.Lx00372_0:
 .quad 1
# IR_LIT_STRING
 xchain00371_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00371_n5_α
 xchain00371_n3_β:
 jmp proc_centerf_ω
.Lx00373_0:
 .quad .Lx00373_0_s
.Lx00373_0_s:
 .string "center(\"a\",10)"
# IR_VAR
 xchain00371_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00371_n6_α
 xchain00371_n4_β:
 jmp proc_centerf_ω
# IR_RETURN
 xchain00371_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_centerf_γ
# IR_TO
 xchain00371_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00374_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00371_n7_α
 xchain00371_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00374_0
# IR_LIT_STRING
 xchain00371_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00375_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00371_n8_α
 xchain00371_n7_β:
 jmp xchain00371_n6_β
.Lx00375_0:
 .quad .Lx00375_0_s
.Lx00375_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00371_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00371_n9_α
 xchain00371_n8_β:
 jmp xchain00371_n6_β
.Lx00376_0:
 .quad 10
 xchain00371_n9_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1051: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1051]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00371_n6_β
 jmp xchain00371_n6_β
 xchain00371_n9_β:
 jmp xchain00371_n6_β
proc_centerf_res:
add rsp, 8
pop rbp
proc_centerf_β:
jmp proc_centerf_ω
proc_centerf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_centerf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_rightf_α
proc_rightf_α:
#=======================================================================================================================
    .global proc_rightf_α
    .global proc_rightf_β
    .global proc_rightf_γ
    .global proc_rightf_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_rightf_α_body:
# IR_VAR
 xchain00377_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00377_n1_α
 xchain00377_n0_β:
 jmp xchain00377_n2_α
# IR_UNOP
 xchain00377_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00377_n2_α
 cmp eax, 0
 jne xchain00377_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00377_n3_α
 xchain00377_n1_β:
 jmp xchain00377_n2_α
# IR_LIT_INTEGER
 xchain00377_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00378_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00377_n4_α
 xchain00377_n2_β:
 jmp proc_rightf_ω
.Lx00378_0:
 .quad 1
# IR_LIT_STRING
 xchain00377_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00377_n5_α
 xchain00377_n3_β:
 jmp proc_rightf_ω
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "right(\"a\",10)"
# IR_VAR
 xchain00377_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00377_n6_α
 xchain00377_n4_β:
 jmp proc_rightf_ω
# IR_RETURN
 xchain00377_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rightf_γ
# IR_TO
 xchain00377_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00380_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00377_n7_α
 xchain00377_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00380_0
# IR_LIT_STRING
 xchain00377_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00377_n8_α
 xchain00377_n7_β:
 jmp xchain00377_n6_β
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00377_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00377_n9_α
 xchain00377_n8_β:
 jmp xchain00377_n6_β
.Lx00382_0:
 .quad 10
 xchain00377_n9_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1066: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1066]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00377_n6_β
 jmp xchain00377_n6_β
 xchain00377_n9_β:
 jmp xchain00377_n6_β
proc_rightf_res:
add rsp, 8
pop rbp
proc_rightf_β:
jmp proc_rightf_ω
proc_rightf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_rightf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_trimf_α
proc_trimf_α:
#=======================================================================================================================
    .global proc_trimf_α
    .global proc_trimf_β
    .global proc_trimf_γ
    .global proc_trimf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_trimf_α_body:
# IR_VAR
 xchain00383_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00383_n1_α
 xchain00383_n0_β:
 jmp xchain00383_n2_α
# IR_UNOP
 xchain00383_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00383_n2_α
 cmp eax, 0
 jne xchain00383_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00383_n3_α
 xchain00383_n1_β:
 jmp xchain00383_n2_α
# IR_LIT_INTEGER
 xchain00383_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00383_n4_α
 xchain00383_n2_β:
 jmp proc_trimf_ω
.Lx00384_0:
 .quad 1
# IR_LIT_STRING
 xchain00383_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00383_n5_α
 xchain00383_n3_β:
 jmp proc_trimf_ω
.Lx00385_0:
 .quad .Lx00385_0_s
.Lx00385_0_s:
 .string "trim(\"a  ...\")"
# IR_VAR
 xchain00383_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00383_n6_α
 xchain00383_n4_β:
 jmp proc_trimf_ω
# IR_RETURN
 xchain00383_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_trimf_γ
# IR_TO
 xchain00383_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00386_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00383_n7_α
 xchain00383_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00386_0
# IR_LIT_STRING
 xchain00383_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00387_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00383_n8_α
 xchain00383_n7_β:
 jmp xchain00383_n6_β
.Lx00387_0:
 .quad .Lx00387_0_s
.Lx00387_0_s:
 .string "a         "
 xchain00383_n8_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1080: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1080]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00383_n6_β
 jmp xchain00383_n6_β
 xchain00383_n8_β:
 jmp xchain00383_n6_β
proc_trimf_res:
add rsp, 8
pop rbp
proc_trimf_β:
jmp proc_trimf_ω
proc_trimf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_trimf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_entabf_α
proc_entabf_α:
#=======================================================================================================================
    .global proc_entabf_α
    .global proc_entabf_β
    .global proc_entabf_γ
    .global proc_entabf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_entabf_α_body:
# IR_VAR
 xchain00388_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00388_n1_α
 xchain00388_n0_β:
 jmp xchain00388_n2_α
# IR_UNOP
 xchain00388_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00388_n2_α
 cmp eax, 0
 jne xchain00388_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00388_n3_α
 xchain00388_n1_β:
 jmp xchain00388_n2_α
# IR_LIT_INTEGER
 xchain00388_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00388_n4_α
 xchain00388_n2_β:
 jmp proc_entabf_ω
.Lx00389_0:
 .quad 1
# IR_LIT_STRING
 xchain00388_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00388_n5_α
 xchain00388_n3_β:
 jmp proc_entabf_ω
.Lx00390_0:
 .quad .Lx00390_0_s
.Lx00390_0_s:
 .string "entab(\"a  ...\")"
# IR_VAR
 xchain00388_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00388_n6_α
 xchain00388_n4_β:
 jmp proc_entabf_ω
# IR_RETURN
 xchain00388_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_entabf_γ
# IR_TO
 xchain00388_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00391_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00388_n7_α
 xchain00388_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00391_0
# IR_LIT_STRING
 xchain00388_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00392_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00388_n8_α
 xchain00388_n7_β:
 jmp xchain00388_n6_β
.Lx00392_0:
 .quad .Lx00392_0_s
.Lx00392_0_s:
 .string "a         "
 xchain00388_n8_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1094: .string "entab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1094]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00388_n6_β
 jmp xchain00388_n6_β
 xchain00388_n8_β:
 jmp xchain00388_n6_β
proc_entabf_res:
add rsp, 8
pop rbp
proc_entabf_β:
jmp proc_entabf_ω
proc_entabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_entabf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_detabf_α
proc_detabf_α:
#=======================================================================================================================
    .global proc_detabf_α
    .global proc_detabf_β
    .global proc_detabf_γ
    .global proc_detabf_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 352
  call rt_jmp_frame_lexprep@PLT
proc_detabf_α_body:
# IR_VAR
 xchain00393_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00393_n1_α
 xchain00393_n0_β:
 jmp xchain00393_n2_α
# IR_UNOP
 xchain00393_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00393_n2_α
 cmp eax, 0
 jne xchain00393_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00393_n3_α
 xchain00393_n1_β:
 jmp xchain00393_n2_α
# IR_LIT_INTEGER
 xchain00393_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00393_n4_α
 xchain00393_n2_β:
 jmp proc_detabf_ω
.Lx00394_0:
 .quad 1
# IR_LIT_STRING
 xchain00393_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00393_n5_α
 xchain00393_n3_β:
 jmp proc_detabf_ω
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_VAR
 xchain00393_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00393_n6_α
 xchain00393_n4_β:
 jmp proc_detabf_ω
# IR_RETURN
 xchain00393_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_detabf_γ
# IR_TO
 xchain00393_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00396_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00393_n7_α
 xchain00393_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00396_0
# IR_LIT_STRING
 xchain00393_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00397_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00393_n8_α
 xchain00393_n7_β:
 jmp xchain00393_n6_β
.Lx00397_0:
 .quad .Lx00397_0_s
.Lx00397_0_s:
 .string "a\tb\tc"
 xchain00393_n8_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1108: .string "detab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1108]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00393_n6_β
 jmp xchain00393_n6_β
 xchain00393_n8_β:
 jmp xchain00393_n6_β
proc_detabf_res:
add rsp, 8
pop rbp
proc_detabf_β:
jmp proc_detabf_ω
proc_detabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_detabf_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_mapf_α
proc_mapf_α:
#=======================================================================================================================
    .global proc_mapf_α
    .global proc_mapf_β
    .global proc_mapf_γ
    .global proc_mapf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_mapf_α_body:
# IR_VAR
 xchain00398_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00398_n1_α
 xchain00398_n0_β:
 jmp xchain00398_n2_α
# IR_UNOP
 xchain00398_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00398_n2_α
 cmp eax, 0
 jne xchain00398_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00398_n3_α
 xchain00398_n1_β:
 jmp xchain00398_n2_α
# IR_LIT_INTEGER
 xchain00398_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00398_n4_α
 xchain00398_n2_β:
 jmp proc_mapf_ω
.Lx00399_0:
 .quad 1
# IR_LIT_STRING
 xchain00398_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00398_n5_α
 xchain00398_n3_β:
 jmp proc_mapf_ω
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_VAR
 xchain00398_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00398_n6_α
 xchain00398_n4_β:
 jmp proc_mapf_ω
# IR_RETURN
 xchain00398_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mapf_γ
# IR_TO
 xchain00398_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00401_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00398_n7_α
 xchain00398_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00401_0
# IR_LIT_STRING
 xchain00398_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00398_n8_α
 xchain00398_n7_β:
 jmp xchain00398_n6_β
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00398_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00398_n9_α
 xchain00398_n8_β:
 jmp xchain00398_n6_β
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00398_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00398_n10_α
 xchain00398_n9_β:
 jmp xchain00398_n6_β
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00398_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+144]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+160]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 168], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+176]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn1124: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1124]
 lea rsi, [rbp + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00398_n6_β
 jmp xchain00398_n6_β
 xchain00398_n10_β:
 jmp xchain00398_n6_β
proc_mapf_res:
add rsp, 8
pop rbp
proc_mapf_β:
jmp proc_mapf_ω
proc_mapf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_mapf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_map1_α
proc_map1_α:
#=======================================================================================================================
    .global proc_map1_α
    .global proc_map1_β
    .global proc_map1_γ
    .global proc_map1_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_map1_α_body:
# IR_VAR
 xchain00405_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00405_n1_α
 xchain00405_n0_β:
 jmp xchain00405_n2_α
# IR_UNOP
 xchain00405_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00405_n2_α
 cmp eax, 0
 jne xchain00405_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00405_n3_α
 xchain00405_n1_β:
 jmp xchain00405_n2_α
# IR_LIT_INTEGER
 xchain00405_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00405_n4_α
 xchain00405_n2_β:
 jmp proc_map1_ω
.Lx00406_0:
 .quad 1
# IR_LIT_STRING
 xchain00405_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00405_n5_α
 xchain00405_n3_β:
 jmp proc_map1_ω
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_VAR
 xchain00405_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00405_n6_α
 xchain00405_n4_β:
 jmp proc_map1_ω
# IR_RETURN
 xchain00405_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map1_γ
# IR_TO
 xchain00405_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00408_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00405_n7_α
 xchain00405_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00408_0
# IR_LIT_STRING
 xchain00405_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00405_n8_α
 xchain00405_n7_β:
 jmp xchain00405_n6_β
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00405_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00405_n9_α
 xchain00405_n8_β:
 jmp xchain00405_n6_β
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00405_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00405_n10_α
 xchain00405_n9_β:
 jmp xchain00405_n6_β
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "ba"
 xchain00405_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+144]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+160]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 168], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+176]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn1140: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1140]
 lea rsi, [rbp + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00405_n6_β
 jmp xchain00405_n6_β
 xchain00405_n10_β:
 jmp xchain00405_n6_β
proc_map1_res:
add rsp, 8
pop rbp
proc_map1_β:
jmp proc_map1_ω
proc_map1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_map1_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_map2_α
proc_map2_α:
#=======================================================================================================================
    .global proc_map2_α
    .global proc_map2_β
    .global proc_map2_γ
    .global proc_map2_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_map2_α_body:
# IR_VAR
 xchain00412_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 600], rax
 jmp xchain00412_n1_α
 xchain00412_n0_β:
 jmp xchain00412_n2_α
# IR_UNOP
 xchain00412_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00412_n2_α
 cmp eax, 0
 jne xchain00412_n2_α
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 jmp xchain00412_n3_α
 xchain00412_n1_β:
 jmp xchain00412_n2_α
# IR_LIT_INTEGER
 xchain00412_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00412_n4_α
 xchain00412_n2_β:
 jmp proc_map2_ω
.Lx00413_0:
 .quad 1
# IR_LIT_STRING
 xchain00412_n3_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00412_n5_α
 xchain00412_n3_β:
 jmp proc_map2_ω
.Lx00414_0:
 .quad .Lx00414_0_s
.Lx00414_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_VAR
 xchain00412_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00412_n6_α
 xchain00412_n4_β:
 jmp proc_map2_ω
# IR_RETURN
 xchain00412_n5_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map2_γ
# IR_TO
 xchain00412_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00415_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00412_n7_α
 xchain00412_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00415_0
# IR_LIT_STRING
 xchain00412_n7_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00416_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00412_n8_α
 xchain00412_n7_β:
 jmp xchain00412_n6_β
.Lx00416_0:
 .quad .Lx00416_0_s
.Lx00416_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00412_n8_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00412_n9_α
 xchain00412_n8_β:
 jmp xchain00412_n6_β
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00412_n9_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00412_n10_α
 xchain00412_n9_β:
 jmp xchain00412_n6_β
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "ba"
 xchain00412_n10_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+352]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+368]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn1156: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1156]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00412_n6_β
 jmp xchain00412_n11_α
 xchain00412_n10_β:
 jmp xchain00412_n6_β
# IR_LIT_STRING
 xchain00412_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00412_n12_α
 xchain00412_n11_β:
 jmp xchain00412_n6_β
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "c"
# IR_LIT_STRING
 xchain00412_n12_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00412_n13_α
 xchain00412_n12_β:
 jmp xchain00412_n6_β
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00412_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00412_n14_α
 xchain00412_n13_β:
 jmp xchain00412_n6_β
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "cd"
 xchain00412_n14_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+176]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 184], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+192]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1161: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1161]
 lea rsi, [rbp + 160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00412_n6_β
 jmp xchain00412_n15_α
 xchain00412_n14_β:
 jmp xchain00412_n6_β
 xchain00412_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00412_n6_β
xchain00412_n15_β:
 jmp xchain00412_n6_β
proc_map2_res:
add rsp, 8
pop rbp
proc_map2_β:
jmp proc_map2_ω
proc_map2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_map2_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_tablemap_α
proc_tablemap_α:
#=======================================================================================================================
    .global proc_tablemap_α
    .global proc_tablemap_β
    .global proc_tablemap_γ
    .global proc_tablemap_ω
  sub rsp, 912
  mov [rsp + 888], rcx
  mov [rsp + 896], rdx
  mov [rsp + 904], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 872], rsp
  mov rdi, rsp
  mov esi, 880
  call rt_jmp_frame_lexprep@PLT
proc_tablemap_α_body:
# IR_VAR_REF
 xchain00422_n0_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00422_n1_α
 xchain00422_n0_β:
 jmp xchain00422_n3_α
# IR_NULLTEST_VAR
 xchain00422_n1_α:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 99
 je xchain00422_n3_α
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00422_n3_α
 cmp eax, 0
 jne xchain00422_n3_α
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 792], rax
 jmp xchain00422_n2_α
 xchain00422_n1_β:
 jmp xchain00422_n3_α
# IR_LIT_INTEGER
 xchain00422_n2_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00422_n4_α
 xchain00422_n2_β:
 jmp xchain00422_n3_α
.Lx00423_0:
 .quad 1
# IR_VAR
 xchain00422_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00422_n5_α
 xchain00422_n3_β:
 jmp xchain00422_n6_α
# IR_ASSIGN_VAR
 xchain00422_n4_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00422_n3_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00422_n7_α
 xchain00422_n4_β:
 jmp xchain00422_n3_α
# IR_UNOP
 xchain00422_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00422_n6_α
 cmp eax, 0
 jne xchain00422_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00422_n8_α
 xchain00422_n5_β:
 jmp xchain00422_n6_α
# IR_LIT_INTEGER
 xchain00422_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00422_n9_α
 xchain00422_n6_β:
 jmp proc_tablemap_ω
.Lx00424_0:
 .quad 1
 xchain00422_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1174: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1174]
 lea rsi, [rbp + 736]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain00422_n11_α
 jmp xchain00422_n10_α
 xchain00422_n7_β:
 jmp xchain00422_n11_α
# IR_LIT_STRING
 xchain00422_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00422_n12_α
 xchain00422_n8_β:
 jmp proc_tablemap_ω
.Lx00425_0:
 .quad .Lx00425_0_s
.Lx00425_0_s:
 .string "T[\"b\"]"
# IR_VAR
 xchain00422_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00422_n13_α
 xchain00422_n9_β:
 jmp proc_tablemap_ω
# IR_ASSIGN gva
 xchain00422_n10_α:
 mov rax, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00422_n11_α
 xchain00422_n10_β:
 jmp xchain00422_n11_α
# IR_VAR_REF
 xchain00422_n11_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00422_n14_α
 xchain00422_n11_β:
 jmp xchain00422_n19_α
# IR_RETURN
 xchain00422_n12_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tablemap_γ
# IR_TO
 xchain00422_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00426_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00422_n15_α
 xchain00422_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00426_0
# IR_LIT_STRING
 xchain00422_n14_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00422_n16_α
 xchain00422_n14_β:
 jmp xchain00422_n19_α
.Lx00427_0:
 .quad .Lx00427_0_s
.Lx00427_0_s:
 .string "a"
# IR_VAR_REF
 xchain00422_n15_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00422_n17_α
 xchain00422_n15_β:
 jmp xchain00422_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00422_n16_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00422_n19_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00422_n18_α
 xchain00422_n16_β:
 jmp xchain00422_n19_α
# IR_LIT_STRING
 xchain00422_n17_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00422_n20_α
 xchain00422_n17_β:
 jmp xchain00422_n13_β
.Lx00428_0:
 .quad .Lx00428_0_s
.Lx00428_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00422_n18_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00422_n21_α
 xchain00422_n18_β:
 jmp xchain00422_n19_α
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "b"
# IR_VAR_REF
 xchain00422_n19_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00422_n22_α
 xchain00422_n19_β:
 jmp xchain00422_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00422_n20_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00422_n13_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00422_n23_α
 xchain00422_n20_β:
 jmp xchain00422_n13_β
# IR_ASSIGN_VAR
 xchain00422_n21_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00422_n19_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00422_n19_α
 xchain00422_n21_β:
 jmp xchain00422_n19_α
# IR_LIT_STRING
 xchain00422_n22_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00430_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00422_n24_α
 xchain00422_n22_β:
 jmp xchain00422_n3_α
.Lx00430_0:
 .quad .Lx00430_0_s
.Lx00430_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00422_n23_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00422_n13_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00422_n13_β
 xchain00422_n23_β:
 jmp xchain00422_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00422_n24_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00422_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00422_n25_α
 xchain00422_n24_β:
 jmp xchain00422_n3_α
# IR_LIT_STRING
 xchain00422_n25_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00422_n26_α
 xchain00422_n25_β:
 jmp xchain00422_n3_α
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00422_n26_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00422_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00422_n27_α
 xchain00422_n26_β:
 jmp xchain00422_n3_α
 xchain00422_n27_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 408], rax
 jmp xchain00422_n28_α
xchain00422_n27_β:
 jmp xchain00422_n3_α
# IR_MOVE_LABEL
 xchain00422_n28_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00422_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00422_n3_α
 xchain00422_n28_β:
 jmp xchain00422_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00422_n29_α:
 jmp qword ptr [rbp + 384]
 xchain00422_n29_β:
 jmp xchain00422_n3_α
proc_tablemap_res:
add rsp, 8
pop rbp
proc_tablemap_β:
jmp proc_tablemap_ω
proc_tablemap_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 888]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
proc_tablemap_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
  .globl proc_listmap_α
proc_listmap_α:
#=======================================================================================================================
    .global proc_listmap_α
    .global proc_listmap_β
    .global proc_listmap_γ
    .global proc_listmap_ω
  sub rsp, 1104
  mov [rsp + 1080], rcx
  mov [rsp + 1088], rdx
  mov [rsp + 1096], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1072
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1064], rsp
  mov rdi, rsp
  mov esi, 1072
  call rt_jmp_frame_lexprep@PLT
proc_listmap_α_body:
# IR_VAR_REF
 xchain00432_n0_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00432_n1_α
 xchain00432_n0_β:
 jmp xchain00432_n3_α
# IR_NULLTEST_VAR
 xchain00432_n1_α:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 99
 je xchain00432_n3_α
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00432_n3_α
 cmp eax, 0
 jne xchain00432_n3_α
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 984], rax
 jmp xchain00432_n2_α
 xchain00432_n1_β:
 jmp xchain00432_n3_α
# IR_LIT_INTEGER
 xchain00432_n2_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00432_n4_α
 xchain00432_n2_β:
 jmp xchain00432_n3_α
.Lx00433_0:
 .quad 1
# IR_VAR
 xchain00432_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00432_n5_α
 xchain00432_n3_β:
 jmp xchain00432_n6_α
# IR_ASSIGN_VAR
 xchain00432_n4_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00432_n3_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00432_n7_α
 xchain00432_n4_β:
 jmp xchain00432_n3_α
# IR_UNOP
 xchain00432_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00432_n6_α
 cmp eax, 0
 jne xchain00432_n6_α
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00432_n8_α
 xchain00432_n5_β:
 jmp xchain00432_n6_α
# IR_LIT_INTEGER
 xchain00432_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00432_n9_α
 xchain00432_n6_β:
 jmp proc_listmap_ω
.Lx00434_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00432_n7_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00432_n10_α
 xchain00432_n7_β:
 jmp xchain00432_n14_α
.Lx00435_0:
 .quad 256
# IR_LIT_STRING
 xchain00432_n8_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00432_n11_α
 xchain00432_n8_β:
 jmp proc_listmap_ω
.Lx00436_0:
 .quad .Lx00436_0_s
.Lx00436_0_s:
 .string "L[ord(\"b\")]"
# IR_VAR
 xchain00432_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00432_n12_α
 xchain00432_n9_β:
 jmp proc_listmap_ω
 xchain00432_n10_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn1219: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1219]
 lea rsi, [rbp + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain00432_n14_α
 jmp xchain00432_n13_α
 xchain00432_n10_β:
 jmp xchain00432_n14_α
# IR_RETURN
 xchain00432_n11_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listmap_γ
# IR_TO
 xchain00432_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00437_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00432_n15_α
 xchain00432_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00437_0
# IR_ASSIGN gva
 xchain00432_n13_α:
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00432_n14_α
 xchain00432_n13_β:
 jmp xchain00432_n14_α
# IR_VAR_REF
 xchain00432_n14_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00432_n16_α
 xchain00432_n14_β:
 jmp xchain00432_n21_α
# IR_VAR_REF
 xchain00432_n15_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00432_n17_α
 xchain00432_n15_β:
 jmp xchain00432_n12_β
# IR_LIT_STRING
 xchain00432_n16_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx00438_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00432_n18_α
 xchain00432_n16_β:
 jmp xchain00432_n21_α
.Lx00438_0:
 .quad .Lx00438_0_s
.Lx00438_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00432_n17_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00432_n19_α
 xchain00432_n17_β:
 jmp xchain00432_n12_β
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "b"
 xchain00432_n18_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn1231: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1231]
 lea rsi, [rbp + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain00432_n21_α
 jmp xchain00432_n20_α
 xchain00432_n18_β:
 jmp xchain00432_n21_α
 xchain00432_n19_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn1233: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1233]
 lea rsi, [rbp + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00432_n12_β
 jmp xchain00432_n22_α
 xchain00432_n19_β:
 jmp xchain00432_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00432_n20_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00432_n21_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00432_n23_α
 xchain00432_n20_β:
 jmp xchain00432_n21_α
# IR_VAR_REF
 xchain00432_n21_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00432_n24_α
 xchain00432_n21_β:
 jmp xchain00432_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00432_n22_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00432_n12_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00432_n25_α
 xchain00432_n22_β:
 jmp xchain00432_n12_β
# IR_LIT_STRING
 xchain00432_n23_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00432_n26_α
 xchain00432_n23_β:
 jmp xchain00432_n21_α
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00432_n24_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00441_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00432_n27_α
 xchain00432_n24_β:
 jmp xchain00432_n3_α
.Lx00441_0:
 .quad .Lx00441_0_s
.Lx00441_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00432_n25_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00432_n12_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00432_n12_β
 xchain00432_n25_β:
 jmp xchain00432_n12_β
# IR_ASSIGN_VAR
 xchain00432_n26_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00432_n21_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00432_n21_α
 xchain00432_n26_β:
 jmp xchain00432_n21_α
 xchain00432_n27_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn1243: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1243]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00432_n3_α
 jmp xchain00432_n28_α
 xchain00432_n27_β:
 jmp xchain00432_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00432_n28_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00432_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00432_n29_α
 xchain00432_n28_β:
 jmp xchain00432_n3_α
# IR_LIT_STRING
 xchain00432_n29_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00432_n30_α
 xchain00432_n29_β:
 jmp xchain00432_n3_α
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00432_n30_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00432_n3_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00432_n31_α
 xchain00432_n30_β:
 jmp xchain00432_n3_α
 xchain00432_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 456], rax
 jmp xchain00432_n32_α
xchain00432_n31_β:
 jmp xchain00432_n3_α
# IR_MOVE_LABEL
 xchain00432_n32_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + xchain00432_n3_α]
 mov qword ptr [rbp + 432], rax
 jmp xchain00432_n3_α
 xchain00432_n32_β:
 jmp xchain00432_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00432_n33_α:
 jmp qword ptr [rbp + 432]
 xchain00432_n33_β:
 jmp xchain00432_n3_α
proc_listmap_res:
add rsp, 8
pop rbp
proc_listmap_β:
jmp proc_listmap_ω
proc_listmap_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1080]
lea rsp, [rbp + 1104]
mov rbp, [rbp + 1096]
jmp rax
proc_listmap_ω:
mov rax, [rbp + 1088]
lea rsp, [rbp + 1104]
mov rbp, [rbp + 1096]
jmp rax
  .globl proc_nullscan_α
proc_nullscan_α:
#=======================================================================================================================
    .global proc_nullscan_α
    .global proc_nullscan_β
    .global proc_nullscan_γ
    .global proc_nullscan_ω
  sub rsp, 448
  mov [rsp + 424], rcx
  mov [rsp + 432], rdx
  mov [rsp + 440], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 416
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 416
  call rt_jmp_frame_lexprep@PLT
proc_nullscan_α_body:
# IR_VAR
 xchain00443_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00443_n1_α
 xchain00443_n0_β:
 jmp xchain00443_n2_α
# IR_UNOP
 xchain00443_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00443_n2_α
 cmp eax, 0
 jne xchain00443_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00443_n3_α
 xchain00443_n1_β:
 jmp xchain00443_n2_α
# IR_LIT_INTEGER
 xchain00443_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00443_n4_α
 xchain00443_n2_β:
 jmp proc_nullscan_ω
.Lx00444_0:
 .quad 1
# IR_LIT_STRING
 xchain00443_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00443_n5_α
 xchain00443_n3_β:
 jmp proc_nullscan_ω
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "s ? 0"
# IR_VAR
 xchain00443_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00443_n6_α
 xchain00443_n4_β:
 jmp proc_nullscan_ω
# IR_RETURN
 xchain00443_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullscan_γ
# IR_TO
 xchain00443_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00446_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00443_n7_α
 xchain00443_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00446_0
# IR_LIT_STRING
 xchain00443_n7_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00447_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00443_n8_α
 xchain00443_n7_β:
 jmp xchain00443_n6_β
.Lx00447_0:
 .quad .Lx00447_0_s
.Lx00447_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00443_n8_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00443_n9_α
 xchain00443_n8_β:
 jmp xchain00443_n6_β
# IR_LIT_INTEGER
 xchain00443_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00448_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00443_n10_α
 xchain00443_n9_β:
 jmp proc_nullscan_ω
.Lx00448_0:
 .quad 0
# IR_GEN_SCAN
 xchain00443_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rdi, [rbp + 144]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 144]
 mov r14, qword ptr [rbp + 152]
 mov r15, qword ptr [rbp + 160]
 jmp xchain00443_n6_β
 xchain00443_n10_β:
 jmp xchain00443_n6_β
proc_nullscan_res:
add rsp, 8
pop rbp
proc_nullscan_β:
jmp proc_nullscan_ω
proc_nullscan_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_nullscan_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_movef_α
proc_movef_α:
#=======================================================================================================================
    .global proc_movef_α
    .global proc_movef_β
    .global proc_movef_γ
    .global proc_movef_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_movef_α_body:
# IR_VAR
 xchain00449_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00449_n1_α
 xchain00449_n0_β:
 jmp xchain00449_n2_α
# IR_UNOP
 xchain00449_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00449_n2_α
 cmp eax, 0
 jne xchain00449_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00449_n3_α
 xchain00449_n1_β:
 jmp xchain00449_n2_α
# IR_LIT_STRING
 xchain00449_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00450_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00449_n4_α
 xchain00449_n2_β:
 jmp proc_movef_ω
.Lx00450_0:
 .quad .Lx00450_0_s
.Lx00450_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00449_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00449_n5_α
 xchain00449_n3_β:
 jmp proc_movef_ω
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "move(0)"
# IR_GEN_SCAN
 xchain00449_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00449_n6_α
 xchain00449_n4_β:
 jmp proc_movef_ω
# IR_RETURN
 xchain00449_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_movef_γ
# IR_LIT_INTEGER
 xchain00449_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00449_n7_α
 xchain00449_n6_β:
 jmp xchain00449_n9_α
.Lx00452_0:
 .quad 1
# IR_VAR
 xchain00449_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00449_n8_α
 xchain00449_n7_β:
 jmp xchain00449_n9_α
# IR_TO
 xchain00449_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00453_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00449_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00449_n10_α
 xchain00449_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00453_0
# IR_GEN_SCAN
 xchain00449_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_movef_ω
 xchain00449_n9_β:
 jmp proc_movef_ω
# IR_LIT_INTEGER
 xchain00449_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00454_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00449_n11_α
 xchain00449_n10_β:
 jmp xchain00449_n8_β
.Lx00454_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00449_n11_α:
 sub rsp, 16
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00455_239
 add rsp, 16
 jmp xchain00449_n8_β
.Lx00455_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00455_240
 add rsp, 16
 jmp xchain00449_n8_β
.Lx00455_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00449_n8_β
 xchain00449_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00449_n8_β
proc_movef_res:
add rsp, 8
pop rbp
proc_movef_β:
jmp proc_movef_ω
proc_movef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_movef_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_mov11_α
proc_mov11_α:
#=======================================================================================================================
    .global proc_mov11_α
    .global proc_mov11_β
    .global proc_mov11_γ
    .global proc_mov11_ω
  sub rsp, 560
  mov [rsp + 536], rcx
  mov [rsp + 544], rdx
  mov [rsp + 552], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 528
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 520], rsp
  mov rdi, rsp
  mov esi, 528
  call rt_jmp_frame_lexprep@PLT
proc_mov11_α_body:
# IR_VAR
 xchain00456_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00456_n1_α
 xchain00456_n0_β:
 jmp xchain00456_n2_α
# IR_UNOP
 xchain00456_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00456_n2_α
 cmp eax, 0
 jne xchain00456_n2_α
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 jmp xchain00456_n3_α
 xchain00456_n1_β:
 jmp xchain00456_n2_α
# IR_LIT_STRING
 xchain00456_n2_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00457_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00456_n4_α
 xchain00456_n2_β:
 jmp proc_mov11_ω
.Lx00457_0:
 .quad .Lx00457_0_s
.Lx00457_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00456_n3_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00456_n5_α
 xchain00456_n3_β:
 jmp proc_mov11_ω
.Lx00458_0:
 .quad .Lx00458_0_s
.Lx00458_0_s:
 .string "move(1) & move(-1)"
# IR_GEN_SCAN
 xchain00456_n4_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00456_n6_α
 xchain00456_n4_β:
 jmp proc_mov11_ω
# IR_RETURN
 xchain00456_n5_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mov11_γ
# IR_LIT_INTEGER
 xchain00456_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00459_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00456_n7_α
 xchain00456_n6_β:
 jmp xchain00456_n9_α
.Lx00459_0:
 .quad 1
# IR_VAR
 xchain00456_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00456_n8_α
 xchain00456_n7_β:
 jmp xchain00456_n9_α
# IR_TO
 xchain00456_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00460_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00456_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00456_n10_α
 xchain00456_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00460_0
# IR_GEN_SCAN
 xchain00456_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_mov11_ω
 xchain00456_n9_β:
 jmp proc_mov11_ω
# IR_LIT_INTEGER
 xchain00456_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00461_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00456_n11_α
 xchain00456_n10_β:
 jmp xchain00456_n8_β
.Lx00461_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00456_n11_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00462_239
 add rsp, 16
 jmp xchain00456_n8_β
.Lx00462_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00462_240
 add rsp, 16
 jmp xchain00456_n8_β
.Lx00462_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00456_n12_α
 xchain00456_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00456_n8_β
# IR_LIT_INTEGER
 xchain00456_n12_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00463_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00456_n13_α
 xchain00456_n12_β:
 jmp xchain00456_n8_β
.Lx00463_0:
 .quad 18446744073709551615
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00456_n13_α:
 sub rsp, 16
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00464_239
 add rsp, 16
 jmp xchain00456_n8_β
.Lx00464_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00464_240
 add rsp, 16
 jmp xchain00456_n8_β
.Lx00464_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00456_n14_α
 xchain00456_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00456_n8_β
 xchain00456_n14_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00456_n8_β
xchain00456_n14_β:
 jmp xchain00456_n8_β
proc_mov11_res:
add rsp, 8
pop rbp
proc_mov11_β:
jmp proc_mov11_ω
proc_mov11_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 536]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
proc_mov11_ω:
mov rax, [rbp + 544]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
  .globl proc_pos11_α
proc_pos11_α:
#=======================================================================================================================
    .global proc_pos11_α
    .global proc_pos11_β
    .global proc_pos11_γ
    .global proc_pos11_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_pos11_α_body:
# IR_VAR
 xchain00465_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain00465_n1_α
 xchain00465_n0_β:
 jmp xchain00465_n2_α
# IR_UNOP
 xchain00465_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00465_n2_α
 cmp eax, 0
 jne xchain00465_n2_α
 mov qword ptr [rbp + 608], 0
 mov qword ptr [rbp + 616], 0
 jmp xchain00465_n3_α
 xchain00465_n1_β:
 jmp xchain00465_n2_α
# IR_LIT_STRING
 xchain00465_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00466_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00465_n4_α
 xchain00465_n2_β:
 jmp proc_pos11_ω
.Lx00466_0:
 .quad .Lx00466_0_s
.Lx00466_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00465_n3_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00467_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00465_n5_α
 xchain00465_n3_β:
 jmp proc_pos11_ω
.Lx00467_0:
 .quad .Lx00467_0_s
.Lx00467_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_GEN_SCAN
 xchain00465_n4_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00465_n6_α
 xchain00465_n4_β:
 jmp proc_pos11_ω
# IR_RETURN
 xchain00465_n5_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pos11_γ
# IR_LIT_INTEGER
 xchain00465_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00465_n7_α
 xchain00465_n6_β:
 jmp xchain00465_n9_α
.Lx00468_0:
 .quad 1
# IR_VAR
 xchain00465_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00465_n8_α
 xchain00465_n7_β:
 jmp xchain00465_n9_α
# IR_TO
 xchain00465_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00469_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00465_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00465_n10_α
 xchain00465_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00469_0
# IR_GEN_SCAN
 xchain00465_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_pos11_ω
 xchain00465_n9_β:
 jmp proc_pos11_ω
# KEYWORD_pos_call
 xchain00465_n10_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00465_n11_α
 xchain00465_n10_β:
 jmp xchain00465_n8_β
# IR_LIT_INTEGER
 xchain00465_n11_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00470_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00465_n12_α
 xchain00465_n11_β:
 jmp xchain00465_n8_β
.Lx00470_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00465_n12_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 7
 je .Lx00471_1
 cmp eax, 6
 jne .Lx00471_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00471_0
.Lx00471_1:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00471_2
.Lx00471_0:
 lea rdi, [rbp + 448]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00471_2:
 jmp xchain00465_n13_α
 xchain00465_n12_β:
 jmp xchain00465_n8_β
 xchain00465_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00472_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00472_2
.Lx00472_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00465_n14_α
.Lx00472_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00472_3
.Lx00472_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00465_n8_β
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
.Lx00472_3:
 jmp xchain00465_n14_α
 xchain00465_n13_β:
 jmp xchain00465_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00465_n14_α:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00465_n8_β
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00465_n15_α
 xchain00465_n14_β:
 jmp xchain00465_n8_β
# KEYWORD_pos_call
 xchain00465_n15_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00465_n16_α
 xchain00465_n15_β:
 jmp xchain00465_n8_β
# IR_LIT_INTEGER
 xchain00465_n16_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00473_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00465_n17_α
 xchain00465_n16_β:
 jmp xchain00465_n8_β
.Lx00473_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00465_n17_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00474_1
 cmp eax, 6
 jne .Lx00474_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00474_0
.Lx00474_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00474_2
.Lx00474_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00474_2:
 jmp xchain00465_n18_α
 xchain00465_n17_β:
 jmp xchain00465_n8_β
 xchain00465_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00475_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00475_2
.Lx00475_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00465_n19_α
.Lx00475_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00475_3
.Lx00475_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00465_n8_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00475_3:
 jmp xchain00465_n19_α
 xchain00465_n18_β:
 jmp xchain00465_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00465_n19_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00465_n8_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00465_n20_α
 xchain00465_n19_β:
 jmp xchain00465_n8_β
 xchain00465_n20_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00465_n8_β
xchain00465_n20_β:
 jmp xchain00465_n8_β
proc_pos11_res:
add rsp, 8
pop rbp
proc_pos11_β:
jmp proc_pos11_ω
proc_pos11_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_pos11_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_tabf_α
proc_tabf_α:
#=======================================================================================================================
    .global proc_tabf_α
    .global proc_tabf_β
    .global proc_tabf_γ
    .global proc_tabf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_tabf_α_body:
# IR_VAR
 xchain00476_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00476_n1_α
 xchain00476_n0_β:
 jmp xchain00476_n2_α
# IR_UNOP
 xchain00476_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00476_n2_α
 cmp eax, 0
 jne xchain00476_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00476_n3_α
 xchain00476_n1_β:
 jmp xchain00476_n2_α
# IR_LIT_STRING
 xchain00476_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00476_n4_α
 xchain00476_n2_β:
 jmp proc_tabf_ω
.Lx00477_0:
 .quad .Lx00477_0_s
.Lx00477_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00476_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00478_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00476_n5_α
 xchain00476_n3_β:
 jmp proc_tabf_ω
.Lx00478_0:
 .quad .Lx00478_0_s
.Lx00478_0_s:
 .string "tab(3)"
# IR_GEN_SCAN
 xchain00476_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00476_n6_α
 xchain00476_n4_β:
 jmp proc_tabf_ω
# IR_RETURN
 xchain00476_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabf_γ
# IR_LIT_INTEGER
 xchain00476_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00479_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00476_n7_α
 xchain00476_n6_β:
 jmp xchain00476_n9_α
.Lx00479_0:
 .quad 1
# IR_VAR
 xchain00476_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00476_n8_α
 xchain00476_n7_β:
 jmp xchain00476_n9_α
# IR_TO
 xchain00476_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00480_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00476_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00476_n10_α
 xchain00476_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00480_0
# IR_GEN_SCAN
 xchain00476_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabf_ω
 xchain00476_n9_β:
 jmp proc_tabf_ω
# IR_LIT_INTEGER
 xchain00476_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00481_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00476_n11_α
 xchain00476_n10_β:
 jmp xchain00476_n8_β
.Lx00481_0:
 .quad 3
# IR_SCAN_TAB
 xchain00476_n11_α:
 sub rsp, 16
 mov rax, 3
 cmp rax, 1
 jge .Lx00482_0
 add rax, r15
 add rax, 1
.Lx00482_0:
 cmp rax, 1
 jge .Lx00482_239
 add rsp, 16
 jmp xchain00476_n8_β
.Lx00482_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00482_240
 add rsp, 16
 jmp xchain00476_n8_β
.Lx00482_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00476_n8_β
 xchain00476_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00476_n8_β
proc_tabf_res:
add rsp, 8
pop rbp
proc_tabf_β:
jmp proc_tabf_ω
proc_tabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_tabf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_matchf_α
proc_matchf_α:
#=======================================================================================================================
    .global proc_matchf_α
    .global proc_matchf_β
    .global proc_matchf_γ
    .global proc_matchf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_matchf_α_body:
# IR_VAR
 xchain00483_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00483_n1_α
 xchain00483_n0_β:
 jmp xchain00483_n2_α
# IR_UNOP
 xchain00483_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00483_n2_α
 cmp eax, 0
 jne xchain00483_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00483_n3_α
 xchain00483_n1_β:
 jmp xchain00483_n2_α
# IR_LIT_STRING
 xchain00483_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00484_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00483_n4_α
 xchain00483_n2_β:
 jmp proc_matchf_ω
.Lx00484_0:
 .quad .Lx00484_0_s
.Lx00484_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00483_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00485_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00483_n5_α
 xchain00483_n3_β:
 jmp proc_matchf_ω
.Lx00485_0:
 .quad .Lx00485_0_s
.Lx00485_0_s:
 .string "match(\"abc\")"
# IR_GEN_SCAN
 xchain00483_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00483_n6_α
 xchain00483_n4_β:
 jmp proc_matchf_ω
# IR_RETURN
 xchain00483_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_matchf_γ
# IR_LIT_INTEGER
 xchain00483_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00483_n7_α
 xchain00483_n6_β:
 jmp xchain00483_n9_α
.Lx00486_0:
 .quad 1
# IR_VAR
 xchain00483_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00483_n8_α
 xchain00483_n7_β:
 jmp xchain00483_n9_α
# IR_TO
 xchain00483_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00487_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00483_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00483_n10_α
 xchain00483_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00487_0
# IR_GEN_SCAN
 xchain00483_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_matchf_ω
 xchain00483_n9_β:
 jmp proc_matchf_ω
# IR_LIT_STRING
 xchain00483_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00488_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00483_n11_α
 xchain00483_n10_β:
 jmp xchain00483_n8_β
.Lx00488_0:
 .quad .Lx00488_0_s
.Lx00488_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00483_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00489_239
 add rsp, 16
 jmp xchain00483_n8_β
.Lx00489_239:
 mov rdi, qword ptr [rip + .Lx00489_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00489_240
 add rsp, 16
 jmp xchain00483_n8_β
.Lx00489_240:
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 216], rax
 jmp xchain00483_n8_β
 xchain00483_n11_β:
 add rsp, 16
 jmp xchain00483_n8_β
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "abc"
proc_matchf_res:
add rsp, 8
pop rbp
proc_matchf_β:
jmp proc_matchf_ω
proc_matchf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_matchf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_tabmat_α
proc_tabmat_α:
#=======================================================================================================================
    .global proc_tabmat_α
    .global proc_tabmat_β
    .global proc_tabmat_γ
    .global proc_tabmat_ω
  sub rsp, 512
  mov [rsp + 488], rcx
  mov [rsp + 496], rdx
  mov [rsp + 504], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 480
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 472], rsp
  mov rdi, rsp
  mov esi, 480
  call rt_jmp_frame_lexprep@PLT
proc_tabmat_α_body:
# IR_VAR
 xchain00490_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00490_n1_α
 xchain00490_n0_β:
 jmp xchain00490_n2_α
# IR_UNOP
 xchain00490_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00490_n2_α
 cmp eax, 0
 jne xchain00490_n2_α
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain00490_n3_α
 xchain00490_n1_β:
 jmp xchain00490_n2_α
# IR_LIT_STRING
 xchain00490_n2_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00490_n4_α
 xchain00490_n2_β:
 jmp proc_tabmat_ω
.Lx00491_0:
 .quad .Lx00491_0_s
.Lx00491_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00490_n3_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00490_n5_α
 xchain00490_n3_β:
 jmp proc_tabmat_ω
.Lx00492_0:
 .quad .Lx00492_0_s
.Lx00492_0_s:
 .string "s1 ? =s2"
# IR_GEN_SCAN
 xchain00490_n4_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00490_n6_α
 xchain00490_n4_β:
 jmp proc_tabmat_ω
# IR_RETURN
 xchain00490_n5_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabmat_γ
# IR_LIT_INTEGER
 xchain00490_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00493_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00490_n7_α
 xchain00490_n6_β:
 jmp xchain00490_n9_α
.Lx00493_0:
 .quad 1
# IR_VAR
 xchain00490_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00490_n8_α
 xchain00490_n7_β:
 jmp xchain00490_n9_α
# IR_TO
 xchain00490_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00494_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00490_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00490_n10_α
 xchain00490_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00494_0
# IR_GEN_SCAN
 xchain00490_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabmat_ω
 xchain00490_n9_β:
 jmp proc_tabmat_ω
# IR_LIT_STRING
 xchain00490_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00495_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00490_n11_α
 xchain00490_n10_β:
 jmp xchain00490_n8_β
.Lx00495_0:
 .quad .Lx00495_0_s
.Lx00495_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00490_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00496_239
 add rsp, 16
 jmp xchain00490_n8_β
.Lx00496_239:
 mov rdi, qword ptr [rip + .Lx00496_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00496_240
 add rsp, 16
 jmp xchain00490_n8_β
.Lx00496_240:
 mov qword ptr [rbp + 240], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 248], rax
 jmp xchain00490_n12_α
 xchain00490_n11_β:
 add rsp, 16
 jmp xchain00490_n8_β
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00490_n12_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 248]
 cmp rax, 1
 jge .Lx00497_0
 add rax, r15
 add rax, 1
.Lx00497_0:
 cmp rax, 1
 jge .Lx00497_239
 add rsp, 16
 jmp xchain00490_n8_β
.Lx00497_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00497_240
 add rsp, 16
 jmp xchain00490_n8_β
.Lx00497_240:
 mov qword ptr [rsp + 0], r14
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
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00490_n8_β
 xchain00490_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00490_n8_β
proc_tabmat_res:
add rsp, 8
pop rbp
proc_tabmat_β:
jmp proc_tabmat_ω
proc_tabmat_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 488]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
proc_tabmat_ω:
mov rax, [rbp + 496]
lea rsp, [rbp + 512]
mov rbp, [rbp + 504]
jmp rax
  .globl proc_posf_α
proc_posf_α:
#=======================================================================================================================
    .global proc_posf_α
    .global proc_posf_β
    .global proc_posf_γ
    .global proc_posf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_posf_α_body:
# IR_VAR
 xchain00498_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00498_n1_α
 xchain00498_n0_β:
 jmp xchain00498_n2_α
# IR_UNOP
 xchain00498_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00498_n2_α
 cmp eax, 0
 jne xchain00498_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00498_n3_α
 xchain00498_n1_β:
 jmp xchain00498_n2_α
# IR_LIT_STRING
 xchain00498_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00498_n4_α
 xchain00498_n2_β:
 jmp proc_posf_ω
.Lx00499_0:
 .quad .Lx00499_0_s
.Lx00499_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00498_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00498_n5_α
 xchain00498_n3_β:
 jmp proc_posf_ω
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "pos(-1)"
# IR_GEN_SCAN
 xchain00498_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00498_n6_α
 xchain00498_n4_β:
 jmp proc_posf_ω
# IR_RETURN
 xchain00498_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_posf_γ
# IR_LIT_INTEGER
 xchain00498_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00501_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00498_n7_α
 xchain00498_n6_β:
 jmp xchain00498_n9_α
.Lx00501_0:
 .quad 1
# IR_VAR
 xchain00498_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00498_n8_α
 xchain00498_n7_β:
 jmp xchain00498_n9_α
# IR_TO
 xchain00498_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00502_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00498_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00498_n10_α
 xchain00498_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00502_0
# IR_GEN_SCAN
 xchain00498_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_posf_ω
 xchain00498_n9_β:
 jmp proc_posf_ω
# IR_LIT_INTEGER
 xchain00498_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00498_n11_α
 xchain00498_n10_β:
 jmp xchain00498_n8_β
.Lx00503_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00498_n11_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00504_0
 add rax, r15
 add rax, 1
.Lx00504_0:
 cmp rax, 1
 jl xchain00498_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00498_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00498_n8_β
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00498_n8_β
 xchain00498_n11_β:
 jmp xchain00498_n8_β
proc_posf_res:
add rsp, 8
pop rbp
proc_posf_β:
jmp proc_posf_ω
proc_posf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_posf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_anyf_α
proc_anyf_α:
#=======================================================================================================================
    .global proc_anyf_α
    .global proc_anyf_β
    .global proc_anyf_γ
    .global proc_anyf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_anyf_α_body:
# IR_VAR
 xchain00505_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00505_n1_α
 xchain00505_n0_β:
 jmp xchain00505_n2_α
# IR_UNOP
 xchain00505_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00505_n2_α
 cmp eax, 0
 jne xchain00505_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00505_n3_α
 xchain00505_n1_β:
 jmp xchain00505_n2_α
# IR_LIT_STRING
 xchain00505_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00506_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00505_n4_α
 xchain00505_n2_β:
 jmp proc_anyf_ω
.Lx00506_0:
 .quad .Lx00506_0_s
.Lx00506_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00505_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00505_n5_α
 xchain00505_n3_β:
 jmp proc_anyf_ω
.Lx00507_0:
 .quad .Lx00507_0_s
.Lx00507_0_s:
 .string "any('aeiou')"
# IR_GEN_SCAN
 xchain00505_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00505_n6_α
 xchain00505_n4_β:
 jmp proc_anyf_ω
# IR_RETURN
 xchain00505_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_anyf_γ
# IR_LIT_INTEGER
 xchain00505_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00508_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00505_n7_α
 xchain00505_n6_β:
 jmp xchain00505_n9_α
.Lx00508_0:
 .quad 1
# IR_VAR
 xchain00505_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00505_n8_α
 xchain00505_n7_β:
 jmp xchain00505_n9_α
# IR_TO
 xchain00505_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00509_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00505_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00505_n10_α
 xchain00505_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00509_0
# IR_GEN_SCAN
 xchain00505_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_anyf_ω
 xchain00505_n9_β:
 jmp proc_anyf_ω
# IR_LIT_CHARSET
 xchain00505_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00510_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00505_n11_α
 xchain00505_n10_β:
 jmp xchain00505_n8_β
.Lx00510_0:
 .quad .Lx00510_0_s
.Lx00510_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00505_n11_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00505_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00511_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00505_n8_β
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 216], rax
 jmp xchain00505_n8_β
 xchain00505_n11_β:
 jmp xchain00505_n8_β
.Lx00511_0:
 .quad .Lx00511_0_s
.Lx00511_0_s:
 .string "aeiou"
proc_anyf_res:
add rsp, 8
pop rbp
proc_anyf_β:
jmp proc_anyf_ω
proc_anyf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_anyf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_manyf_α
proc_manyf_α:
#=======================================================================================================================
    .global proc_manyf_α
    .global proc_manyf_β
    .global proc_manyf_γ
    .global proc_manyf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_manyf_α_body:
# IR_VAR
 xchain00512_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00512_n1_α
 xchain00512_n0_β:
 jmp xchain00512_n2_α
# IR_UNOP
 xchain00512_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00512_n2_α
 cmp eax, 0
 jne xchain00512_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00512_n3_α
 xchain00512_n1_β:
 jmp xchain00512_n2_α
# IR_LIT_STRING
 xchain00512_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00513_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00512_n4_α
 xchain00512_n2_β:
 jmp proc_manyf_ω
.Lx00513_0:
 .quad .Lx00513_0_s
.Lx00513_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00512_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00512_n5_α
 xchain00512_n3_β:
 jmp proc_manyf_ω
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "many(&lcase)"
# IR_GEN_SCAN
 xchain00512_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00512_n6_α
 xchain00512_n4_β:
 jmp proc_manyf_ω
# IR_RETURN
 xchain00512_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_manyf_γ
# IR_LIT_INTEGER
 xchain00512_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00515_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00512_n7_α
 xchain00512_n6_β:
 jmp xchain00512_n9_α
.Lx00515_0:
 .quad 1
# IR_VAR
 xchain00512_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00512_n8_α
 xchain00512_n7_β:
 jmp xchain00512_n9_α
# IR_TO
 xchain00512_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00516_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00512_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00512_n10_α
 xchain00512_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00516_0
# IR_GEN_SCAN
 xchain00512_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_manyf_ω
 xchain00512_n9_β:
 jmp proc_manyf_ω
# IR_LIT_CHARSET
 xchain00512_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00512_n11_α
 xchain00512_n10_β:
 jmp xchain00512_n8_β
.Lx00517_0:
 .quad .Lx00517_0_s
.Lx00517_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00512_n11_α:
 mov eax, r14d
.Lx00518_0:
 cmp eax, r15d
 jge .Lx00518_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00518_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00518_1
 add eax, 1
 jmp .Lx00518_0
.Lx00518_1:
 cmp eax, r14d
 je xchain00512_n8_β
 mov qword ptr [rbp + 208], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 216], rcx
 jmp xchain00512_n8_β
 xchain00512_n11_β:
 jmp xchain00512_n8_β
.Lx00518_2:
 .quad .Lx00518_2_s
.Lx00518_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
proc_manyf_res:
add rsp, 8
pop rbp
proc_manyf_β:
jmp proc_manyf_ω
proc_manyf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_manyf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_uptof_α
proc_uptof_α:
#=======================================================================================================================
    .global proc_uptof_α
    .global proc_uptof_β
    .global proc_uptof_γ
    .global proc_uptof_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_uptof_α_body:
# IR_VAR
 xchain00519_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00519_n1_α
 xchain00519_n0_β:
 jmp xchain00519_n2_α
# IR_UNOP
 xchain00519_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00519_n2_α
 cmp eax, 0
 jne xchain00519_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00519_n3_α
 xchain00519_n1_β:
 jmp xchain00519_n2_α
# IR_LIT_STRING
 xchain00519_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00520_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00519_n4_α
 xchain00519_n2_β:
 jmp proc_uptof_ω
.Lx00520_0:
 .quad .Lx00520_0_s
.Lx00520_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00519_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00519_n5_α
 xchain00519_n3_β:
 jmp proc_uptof_ω
.Lx00521_0:
 .quad .Lx00521_0_s
.Lx00521_0_s:
 .string "upto('d')"
# IR_GEN_SCAN
 xchain00519_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00519_n6_α
 xchain00519_n4_β:
 jmp proc_uptof_ω
# IR_RETURN
 xchain00519_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uptof_γ
# IR_LIT_INTEGER
 xchain00519_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00519_n7_α
 xchain00519_n6_β:
 jmp xchain00519_n9_α
.Lx00522_0:
 .quad 1
# IR_VAR
 xchain00519_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00519_n8_α
 xchain00519_n7_β:
 jmp xchain00519_n9_α
# IR_TO
 xchain00519_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00523_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00519_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00519_n10_α
 xchain00519_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00523_0
# IR_GEN_SCAN
 xchain00519_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_uptof_ω
 xchain00519_n9_β:
 jmp proc_uptof_ω
# IR_LIT_CHARSET
 xchain00519_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00524_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00519_n11_α
 xchain00519_n10_β:
 jmp xchain00519_n8_β
.Lx00524_0:
 .quad .Lx00524_0_s
.Lx00524_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00519_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00525_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00519_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00525_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00525_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00519_n8_β
.Lx00525_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00525_0
 xchain00519_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00525_0
.Lx00525_2:
 .quad .Lx00525_2_s
.Lx00525_2_s:
 .string "d"
proc_uptof_res:
add rsp, 8
pop rbp
proc_uptof_β:
jmp proc_uptof_ω
proc_uptof_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_uptof_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_findf_α
proc_findf_α:
#=======================================================================================================================
    .global proc_findf_α
    .global proc_findf_β
    .global proc_findf_γ
    .global proc_findf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_findf_α_body:
# IR_VAR
 xchain00526_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00526_n1_α
 xchain00526_n0_β:
 jmp xchain00526_n2_α
# IR_UNOP
 xchain00526_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00526_n2_α
 cmp eax, 0
 jne xchain00526_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00526_n3_α
 xchain00526_n1_β:
 jmp xchain00526_n2_α
# IR_LIT_STRING
 xchain00526_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00527_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00526_n4_α
 xchain00526_n2_β:
 jmp proc_findf_ω
.Lx00527_0:
 .quad .Lx00527_0_s
.Lx00527_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00526_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00526_n5_α
 xchain00526_n3_β:
 jmp proc_findf_ω
.Lx00528_0:
 .quad .Lx00528_0_s
.Lx00528_0_s:
 .string "find(\"de\")"
# IR_GEN_SCAN
 xchain00526_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00526_n6_α
 xchain00526_n4_β:
 jmp proc_findf_ω
# IR_RETURN
 xchain00526_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_findf_γ
# IR_LIT_INTEGER
 xchain00526_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00526_n7_α
 xchain00526_n6_β:
 jmp xchain00526_n9_α
.Lx00529_0:
 .quad 1
# IR_VAR
 xchain00526_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00526_n8_α
 xchain00526_n7_β:
 jmp xchain00526_n9_α
# IR_TO
 xchain00526_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00530_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00526_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00526_n10_α
 xchain00526_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00530_0
# IR_GEN_SCAN
 xchain00526_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_findf_ω
 xchain00526_n9_β:
 jmp proc_findf_ω
# IR_LIT_STRING
 xchain00526_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00531_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00526_n11_α
 xchain00526_n10_β:
 jmp xchain00526_n8_β
.Lx00531_0:
 .quad .Lx00531_0_s
.Lx00531_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00526_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00532_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00526_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00532_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00532_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00526_n8_β
.Lx00532_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00532_0
 xchain00526_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00532_0
proc_findf_res:
add rsp, 8
pop rbp
proc_findf_β:
jmp proc_findf_ω
proc_findf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_findf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_balf_α
proc_balf_α:
#=======================================================================================================================
    .global proc_balf_α
    .global proc_balf_β
    .global proc_balf_γ
    .global proc_balf_ω
  sub rsp, 480
  mov [rsp + 456], rcx
  mov [rsp + 464], rdx
  mov [rsp + 472], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 448
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 448
  call rt_jmp_frame_lexprep@PLT
proc_balf_α_body:
# IR_VAR
 xchain00533_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00533_n1_α
 xchain00533_n0_β:
 jmp xchain00533_n2_α
# IR_UNOP
 xchain00533_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00533_n2_α
 cmp eax, 0
 jne xchain00533_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00533_n3_α
 xchain00533_n1_β:
 jmp xchain00533_n2_α
# IR_LIT_STRING
 xchain00533_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00534_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00533_n4_α
 xchain00533_n2_β:
 jmp proc_balf_ω
.Lx00534_0:
 .quad .Lx00534_0_s
.Lx00534_0_s:
 .string "(a*b)+(c/d)"
# IR_LIT_STRING
 xchain00533_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00533_n5_α
 xchain00533_n3_β:
 jmp proc_balf_ω
.Lx00535_0:
 .quad .Lx00535_0_s
.Lx00535_0_s:
 .string "bal('+')"
# IR_GEN_SCAN
 xchain00533_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00533_n6_α
 xchain00533_n4_β:
 jmp proc_balf_ω
# IR_RETURN
 xchain00533_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_balf_γ
# IR_LIT_INTEGER
 xchain00533_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00536_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00533_n7_α
 xchain00533_n6_β:
 jmp xchain00533_n9_α
.Lx00536_0:
 .quad 1
# IR_VAR
 xchain00533_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00533_n8_α
 xchain00533_n7_β:
 jmp xchain00533_n9_α
# IR_TO
 xchain00533_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00537_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00533_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00533_n10_α
 xchain00533_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00537_0
# IR_GEN_SCAN
 xchain00533_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_balf_ω
 xchain00533_n9_β:
 jmp proc_balf_ω
# IR_LIT_CHARSET
 xchain00533_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00533_n11_α
 xchain00533_n10_β:
 jmp xchain00533_n8_β
.Lx00538_0:
 .quad .Lx00538_0_s
.Lx00538_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00533_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00539_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00533_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00539_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00539_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00533_n8_β
.Lx00539_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00539_0
 xchain00533_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00539_0
.Lx00539_2:
 .quad .Lx00539_2_s
.Lx00539_2_s:
 .string "+"
proc_balf_res:
add rsp, 8
pop rbp
proc_balf_β:
jmp proc_balf_ω
proc_balf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_balf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_cssize_α
proc_cssize_α:
#=======================================================================================================================
    .global proc_cssize_α
    .global proc_cssize_β
    .global proc_cssize_γ
    .global proc_cssize_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_cssize_α_body:
# IR_VAR
 xchain00540_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00540_n1_α
 xchain00540_n0_β:
 jmp xchain00540_n2_α
# IR_UNOP
 xchain00540_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00540_n2_α
 cmp eax, 0
 jne xchain00540_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00540_n3_α
 xchain00540_n1_β:
 jmp xchain00540_n2_α
# IR_LIT_INTEGER
 xchain00540_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00541_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00540_n4_α
 xchain00540_n2_β:
 jmp proc_cssize_ω
.Lx00541_0:
 .quad 1
# IR_LIT_STRING
 xchain00540_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00540_n5_α
 xchain00540_n3_β:
 jmp proc_cssize_ω
.Lx00542_0:
 .quad .Lx00542_0_s
.Lx00542_0_s:
 .string "*&digits"
# IR_VAR
 xchain00540_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00540_n6_α
 xchain00540_n4_β:
 jmp proc_cssize_ω
# IR_RETURN
 xchain00540_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cssize_γ
# IR_TO
 xchain00540_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00543_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00540_n7_α
 xchain00540_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00543_0
# IR_LIT_CHARSET
 xchain00540_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00540_n8_α
 xchain00540_n7_β:
 jmp xchain00540_n6_β
.Lx00544_0:
 .quad .Lx00544_0_s
.Lx00544_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00540_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00540_n6_β
 xchain00540_n8_β:
 jmp xchain00540_n6_β
proc_cssize_res:
add rsp, 8
pop rbp
proc_cssize_β:
jmp proc_cssize_ω
proc_cssize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_cssize_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_cscompl_α
proc_cscompl_α:
#=======================================================================================================================
    .global proc_cscompl_α
    .global proc_cscompl_β
    .global proc_cscompl_γ
    .global proc_cscompl_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_cscompl_α_body:
# IR_VAR
 xchain00545_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00545_n1_α
 xchain00545_n0_β:
 jmp xchain00545_n2_α
# IR_UNOP
 xchain00545_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00545_n2_α
 cmp eax, 0
 jne xchain00545_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00545_n3_α
 xchain00545_n1_β:
 jmp xchain00545_n2_α
# IR_LIT_INTEGER
 xchain00545_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00546_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00545_n4_α
 xchain00545_n2_β:
 jmp proc_cscompl_ω
.Lx00546_0:
 .quad 1
# IR_LIT_STRING
 xchain00545_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00547_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00545_n5_α
 xchain00545_n3_β:
 jmp proc_cscompl_ω
.Lx00547_0:
 .quad .Lx00547_0_s
.Lx00547_0_s:
 .string "~&digits"
# IR_VAR
 xchain00545_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00545_n6_α
 xchain00545_n4_β:
 jmp proc_cscompl_ω
# IR_RETURN
 xchain00545_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cscompl_γ
# IR_TO
 xchain00545_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00548_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00545_n7_α
 xchain00545_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00548_0
# IR_LIT_CHARSET
 xchain00545_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00545_n8_α
 xchain00545_n7_β:
 jmp xchain00545_n6_β
.Lx00549_0:
 .quad .Lx00549_0_s
.Lx00549_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00545_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00545_n6_β
 xchain00545_n8_β:
 jmp xchain00545_n6_β
proc_cscompl_res:
add rsp, 8
pop rbp
proc_cscompl_β:
jmp proc_cscompl_ω
proc_cscompl_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_cscompl_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_lcreate_α
proc_lcreate_α:
#=======================================================================================================================
    .global proc_lcreate_α
    .global proc_lcreate_β
    .global proc_lcreate_γ
    .global proc_lcreate_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_lcreate_α_body:
# IR_VAR
 xchain00550_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00550_n1_α
 xchain00550_n0_β:
 jmp xchain00550_n2_α
# IR_UNOP
 xchain00550_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00550_n2_α
 cmp eax, 0
 jne xchain00550_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00550_n3_α
 xchain00550_n1_β:
 jmp xchain00550_n2_α
# IR_LIT_INTEGER
 xchain00550_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00550_n4_α
 xchain00550_n2_β:
 jmp proc_lcreate_ω
.Lx00551_0:
 .quad 1
# IR_LIT_STRING
 xchain00550_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00550_n5_α
 xchain00550_n3_β:
 jmp proc_lcreate_ω
.Lx00552_0:
 .quad .Lx00552_0_s
.Lx00552_0_s:
 .string "list(5,0)"
# IR_VAR
 xchain00550_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00550_n6_α
 xchain00550_n4_β:
 jmp proc_lcreate_ω
# IR_RETURN
 xchain00550_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcreate_γ
# IR_TO
 xchain00550_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00553_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00550_n7_α
 xchain00550_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00553_0
# IR_LIT_INTEGER
 xchain00550_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00550_n8_α
 xchain00550_n7_β:
 jmp xchain00550_n6_β
.Lx00554_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00550_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00550_n9_α
 xchain00550_n8_β:
 jmp xchain00550_n6_β
.Lx00555_0:
 .quad 0
 xchain00550_n9_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1553: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1553]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00550_n6_β
 jmp xchain00550_n6_β
 xchain00550_n9_β:
 jmp xchain00550_n6_β
proc_lcreate_res:
add rsp, 8
pop rbp
proc_lcreate_β:
jmp proc_lcreate_ω
proc_lcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_lcreate_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_lconst_α
proc_lconst_α:
#=======================================================================================================================
    .global proc_lconst_α
    .global proc_lconst_β
    .global proc_lconst_γ
    .global proc_lconst_ω
  sub rsp, 592
  mov [rsp + 568], rcx
  mov [rsp + 576], rdx
  mov [rsp + 584], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 560
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 536], rsp
  mov rdi, rsp
  mov esi, 560
  call rt_jmp_frame_lexprep@PLT
proc_lconst_α_body:
# IR_VAR
 xchain00556_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00556_n1_α
 xchain00556_n0_β:
 jmp xchain00556_n2_α
# IR_UNOP
 xchain00556_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00556_n2_α
 cmp eax, 0
 jne xchain00556_n2_α
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain00556_n3_α
 xchain00556_n1_β:
 jmp xchain00556_n2_α
# IR_LIT_INTEGER
 xchain00556_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00557_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00556_n4_α
 xchain00556_n2_β:
 jmp proc_lconst_ω
.Lx00557_0:
 .quad 1
# IR_LIT_STRING
 xchain00556_n3_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00556_n5_α
 xchain00556_n3_β:
 jmp proc_lconst_ω
.Lx00558_0:
 .quad .Lx00558_0_s
.Lx00558_0_s:
 .string "[1,2,3,4,5]"
# IR_VAR
 xchain00556_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00556_n6_α
 xchain00556_n4_β:
 jmp proc_lconst_ω
# IR_RETURN
 xchain00556_n5_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lconst_γ
# IR_TO
 xchain00556_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00559_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00556_n7_α
 xchain00556_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00559_0
# IR_LIT_INTEGER
 xchain00556_n7_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00560_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00556_n8_α
 xchain00556_n7_β:
 jmp xchain00556_n6_β
.Lx00560_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00556_n8_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00556_n9_α
 xchain00556_n8_β:
 jmp xchain00556_n6_β
.Lx00561_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00556_n9_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00556_n10_α
 xchain00556_n9_β:
 jmp xchain00556_n6_β
.Lx00562_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00556_n10_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00563_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00556_n11_α
 xchain00556_n10_β:
 jmp xchain00556_n6_β
.Lx00563_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00556_n11_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00556_n12_α
 xchain00556_n11_β:
 jmp xchain00556_n6_β
.Lx00564_0:
 .quad 5
# IR_MAKE_LIST
 xchain00556_n12_α:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 168], rax
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 200], rax
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 216], rax
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 232], rax
 lea rdi, [rbp + 160]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00556_n13_α
 xchain00556_n12_β:
 jmp xchain00556_n6_β
 xchain00556_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00556_n6_β
 xchain00556_n13_β:
 jmp xchain00556_n6_β
proc_lconst_res:
add rsp, 8
pop rbp
proc_lconst_β:
jmp proc_lconst_ω
proc_lconst_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 568]
lea rsp, [rbp + 592]
mov rbp, [rbp + 584]
jmp rax
proc_lconst_ω:
mov rax, [rbp + 576]
lea rsp, [rbp + 592]
mov rbp, [rbp + 584]
jmp rax
  .globl proc_lcopy_α
proc_lcopy_α:
#=======================================================================================================================
    .global proc_lcopy_α
    .global proc_lcopy_β
    .global proc_lcopy_γ
    .global proc_lcopy_ω
  sub rsp, 800
  mov [rsp + 776], rcx
  mov [rsp + 784], rdx
  mov [rsp + 792], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 768
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 760], rsp
  mov rdi, rsp
  mov esi, 768
  call rt_jmp_frame_lexprep@PLT
proc_lcopy_α_body:
# IR_VAR_REF
 xchain00565_n0_α:
 mov rdi, 1879052464
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00565_n1_α
 xchain00565_n0_β:
 jmp xchain00565_n3_α
# IR_NULLTEST_VAR
 xchain00565_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00565_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00565_n3_α
 cmp eax, 0
 jne xchain00565_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00565_n2_α
 xchain00565_n1_β:
 jmp xchain00565_n3_α
# IR_LIT_INTEGER
 xchain00565_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00566_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00565_n4_α
 xchain00565_n2_β:
 jmp xchain00565_n3_α
.Lx00566_0:
 .quad 1
# IR_VAR
 xchain00565_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00565_n5_α
 xchain00565_n3_β:
 jmp xchain00565_n6_α
# IR_ASSIGN_VAR
 xchain00565_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00565_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00565_n7_α
 xchain00565_n4_β:
 jmp xchain00565_n3_α
# IR_UNOP
 xchain00565_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00565_n6_α
 cmp eax, 0
 jne xchain00565_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00565_n8_α
 xchain00565_n5_β:
 jmp xchain00565_n6_α
# IR_LIT_INTEGER
 xchain00565_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00567_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00565_n9_α
 xchain00565_n6_β:
 jmp proc_lcopy_ω
.Lx00567_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00565_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00565_n10_α
 xchain00565_n7_β:
 jmp xchain00565_n3_α
.Lx00568_0:
 .quad 1
# IR_LIT_STRING
 xchain00565_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00565_n11_α
 xchain00565_n8_β:
 jmp proc_lcopy_ω
.Lx00569_0:
 .quad .Lx00569_0_s
.Lx00569_0_s:
 .string "copy(L)"
# IR_VAR
 xchain00565_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00565_n12_α
 xchain00565_n9_β:
 jmp proc_lcopy_ω
# IR_LIT_INTEGER
 xchain00565_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00565_n13_α
 xchain00565_n10_β:
 jmp xchain00565_n3_α
.Lx00570_0:
 .quad 2
# IR_RETURN
 xchain00565_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcopy_γ
# IR_TO
 xchain00565_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00571_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00565_n14_α
 xchain00565_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00571_0
# IR_LIT_INTEGER
 xchain00565_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00565_n15_α
 xchain00565_n13_β:
 jmp xchain00565_n3_α
.Lx00572_0:
 .quad 3
# IR_VAR
 xchain00565_n14_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00565_n16_α
 xchain00565_n14_β:
 jmp xchain00565_n12_β
# IR_LIT_INTEGER
 xchain00565_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00565_n17_α
 xchain00565_n15_β:
 jmp xchain00565_n3_α
.Lx00573_0:
 .quad 4
 xchain00565_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1595: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1595]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00565_n12_β
 jmp xchain00565_n12_β
 xchain00565_n16_β:
 jmp xchain00565_n12_β
# IR_LIT_INTEGER
 xchain00565_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00565_n18_α
 xchain00565_n17_β:
 jmp xchain00565_n3_α
.Lx00574_0:
 .quad 5
# IR_MAKE_LIST
 xchain00565_n18_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 408], rax
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 472], rax
 lea rdi, [rbp + 400]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00565_n19_α
 xchain00565_n18_β:
 jmp xchain00565_n3_α
# IR_ASSIGN gva
 xchain00565_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00565_n20_α
 xchain00565_n19_β:
 jmp xchain00565_n3_α
# IR_MOVE_LABEL
 xchain00565_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00565_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00565_n3_α
 xchain00565_n20_β:
 jmp xchain00565_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00565_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00565_n21_β:
 jmp xchain00565_n3_α
proc_lcopy_res:
add rsp, 8
pop rbp
proc_lcopy_β:
jmp proc_lcopy_ω
proc_lcopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 776]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
proc_lcopy_ω:
mov rax, [rbp + 784]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
  .globl proc_lsort_α
proc_lsort_α:
#=======================================================================================================================
    .global proc_lsort_α
    .global proc_lsort_β
    .global proc_lsort_γ
    .global proc_lsort_ω
  sub rsp, 800
  mov [rsp + 776], rcx
  mov [rsp + 784], rdx
  mov [rsp + 792], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 768
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 760], rsp
  mov rdi, rsp
  mov esi, 768
  call rt_jmp_frame_lexprep@PLT
proc_lsort_α_body:
# IR_VAR_REF
 xchain00575_n0_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00575_n1_α
 xchain00575_n0_β:
 jmp xchain00575_n3_α
# IR_NULLTEST_VAR
 xchain00575_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00575_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00575_n3_α
 cmp eax, 0
 jne xchain00575_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00575_n2_α
 xchain00575_n1_β:
 jmp xchain00575_n3_α
# IR_LIT_INTEGER
 xchain00575_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00576_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00575_n4_α
 xchain00575_n2_β:
 jmp xchain00575_n3_α
.Lx00576_0:
 .quad 1
# IR_VAR
 xchain00575_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00575_n5_α
 xchain00575_n3_β:
 jmp xchain00575_n6_α
# IR_ASSIGN_VAR
 xchain00575_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00575_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00575_n7_α
 xchain00575_n4_β:
 jmp xchain00575_n3_α
# IR_UNOP
 xchain00575_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00575_n6_α
 cmp eax, 0
 jne xchain00575_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00575_n8_α
 xchain00575_n5_β:
 jmp xchain00575_n6_α
# IR_LIT_INTEGER
 xchain00575_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00575_n9_α
 xchain00575_n6_β:
 jmp proc_lsort_ω
.Lx00577_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00575_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00575_n10_α
 xchain00575_n7_β:
 jmp xchain00575_n3_α
.Lx00578_0:
 .quad 2
# IR_LIT_STRING
 xchain00575_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00575_n11_α
 xchain00575_n8_β:
 jmp proc_lsort_ω
.Lx00579_0:
 .quad .Lx00579_0_s
.Lx00579_0_s:
 .string "sort(L)"
# IR_VAR
 xchain00575_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00575_n12_α
 xchain00575_n9_β:
 jmp proc_lsort_ω
# IR_LIT_INTEGER
 xchain00575_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00580_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00575_n13_α
 xchain00575_n10_β:
 jmp xchain00575_n3_α
.Lx00580_0:
 .quad 7
# IR_RETURN
 xchain00575_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsort_γ
# IR_TO
 xchain00575_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00581_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00575_n14_α
 xchain00575_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00581_0
# IR_LIT_INTEGER
 xchain00575_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00582_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00575_n15_α
 xchain00575_n13_β:
 jmp xchain00575_n3_α
.Lx00582_0:
 .quad 1
# IR_VAR
 xchain00575_n14_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00575_n16_α
 xchain00575_n14_β:
 jmp xchain00575_n12_β
# IR_LIT_INTEGER
 xchain00575_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00575_n17_α
 xchain00575_n15_β:
 jmp xchain00575_n3_α
.Lx00583_0:
 .quad 8
 xchain00575_n16_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1626: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1626]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00575_n12_β
 jmp xchain00575_n12_β
 xchain00575_n16_β:
 jmp xchain00575_n12_β
# IR_LIT_INTEGER
 xchain00575_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00575_n18_α
 xchain00575_n17_β:
 jmp xchain00575_n3_α
.Lx00584_0:
 .quad 3
# IR_MAKE_LIST
 xchain00575_n18_α:
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 408], rax
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 472], rax
 lea rdi, [rbp + 400]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00575_n19_α
 xchain00575_n18_β:
 jmp xchain00575_n3_α
# IR_ASSIGN gva
 xchain00575_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00575_n20_α
 xchain00575_n19_β:
 jmp xchain00575_n3_α
# IR_MOVE_LABEL
 xchain00575_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00575_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00575_n3_α
 xchain00575_n20_β:
 jmp xchain00575_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00575_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00575_n21_β:
 jmp xchain00575_n3_α
proc_lsort_res:
add rsp, 8
pop rbp
proc_lsort_β:
jmp proc_lsort_ω
proc_lsort_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 776]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
proc_lsort_ω:
mov rax, [rbp + 784]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
  .globl proc_lsize_α
proc_lsize_α:
#=======================================================================================================================
    .global proc_lsize_α
    .global proc_lsize_β
    .global proc_lsize_γ
    .global proc_lsize_ω
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 752
  call rt_jmp_frame_lexprep@PLT
proc_lsize_α_body:
# IR_VAR_REF
 xchain00585_n0_α:
 mov rdi, 1879052528
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00585_n1_α
 xchain00585_n0_β:
 jmp xchain00585_n3_α
# IR_NULLTEST_VAR
 xchain00585_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00585_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00585_n3_α
 cmp eax, 0
 jne xchain00585_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00585_n2_α
 xchain00585_n1_β:
 jmp xchain00585_n3_α
# IR_LIT_INTEGER
 xchain00585_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00585_n4_α
 xchain00585_n2_β:
 jmp xchain00585_n3_α
.Lx00586_0:
 .quad 1
# IR_VAR
 xchain00585_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00585_n5_α
 xchain00585_n3_β:
 jmp xchain00585_n6_α
# IR_ASSIGN_VAR
 xchain00585_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00585_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00585_n7_α
 xchain00585_n4_β:
 jmp xchain00585_n3_α
# IR_UNOP
 xchain00585_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00585_n6_α
 cmp eax, 0
 jne xchain00585_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00585_n8_α
 xchain00585_n5_β:
 jmp xchain00585_n6_α
# IR_LIT_INTEGER
 xchain00585_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00587_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00585_n9_α
 xchain00585_n6_β:
 jmp proc_lsize_ω
.Lx00587_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00585_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00585_n10_α
 xchain00585_n7_β:
 jmp xchain00585_n3_α
.Lx00588_0:
 .quad 1
# IR_LIT_STRING
 xchain00585_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00589_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00585_n11_α
 xchain00585_n8_β:
 jmp proc_lsize_ω
.Lx00589_0:
 .quad .Lx00589_0_s
.Lx00589_0_s:
 .string "*L"
# IR_VAR
 xchain00585_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00585_n12_α
 xchain00585_n9_β:
 jmp proc_lsize_ω
# IR_LIT_INTEGER
 xchain00585_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00590_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00585_n13_α
 xchain00585_n10_β:
 jmp xchain00585_n3_α
.Lx00590_0:
 .quad 2
# IR_RETURN
 xchain00585_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsize_γ
# IR_TO
 xchain00585_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00591_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00585_n14_α
 xchain00585_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00591_0
# IR_LIT_INTEGER
 xchain00585_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00585_n15_α
 xchain00585_n13_β:
 jmp xchain00585_n3_α
.Lx00592_0:
 .quad 3
# IR_VAR
 xchain00585_n14_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00585_n16_α
 xchain00585_n14_β:
 jmp xchain00585_n12_β
# IR_LIT_INTEGER
 xchain00585_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00585_n17_α
 xchain00585_n15_β:
 jmp xchain00585_n3_α
.Lx00593_0:
 .quad 4
# IR_UNOP
 xchain00585_n16_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00585_n12_β
 xchain00585_n16_β:
 jmp xchain00585_n12_β
# IR_LIT_INTEGER
 xchain00585_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00585_n18_α
 xchain00585_n17_β:
 jmp xchain00585_n3_α
.Lx00594_0:
 .quad 5
# IR_MAKE_LIST
 xchain00585_n18_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 408], rax
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 424], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
 lea rdi, [rbp + 384]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00585_n19_α
 xchain00585_n18_β:
 jmp xchain00585_n3_α
# IR_ASSIGN gva
 xchain00585_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00585_n20_α
 xchain00585_n19_β:
 jmp xchain00585_n3_α
# IR_MOVE_LABEL
 xchain00585_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00585_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00585_n3_α
 xchain00585_n20_β:
 jmp xchain00585_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00585_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00585_n21_β:
 jmp xchain00585_n3_α
proc_lsize_res:
add rsp, 8
pop rbp
proc_lsize_β:
jmp proc_lsize_ω
proc_lsize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 760]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
proc_lsize_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_lpick_α
proc_lpick_α:
#=======================================================================================================================
    .global proc_lpick_α
    .global proc_lpick_β
    .global proc_lpick_γ
    .global proc_lpick_ω
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 752
  call rt_jmp_frame_lexprep@PLT
proc_lpick_α_body:
# IR_VAR_REF
 xchain00595_n0_α:
 mov rdi, 1879052560
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00595_n1_α
 xchain00595_n0_β:
 jmp xchain00595_n3_α
# IR_NULLTEST_VAR
 xchain00595_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00595_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00595_n3_α
 cmp eax, 0
 jne xchain00595_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00595_n2_α
 xchain00595_n1_β:
 jmp xchain00595_n3_α
# IR_LIT_INTEGER
 xchain00595_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00596_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00595_n4_α
 xchain00595_n2_β:
 jmp xchain00595_n3_α
.Lx00596_0:
 .quad 1
# IR_VAR
 xchain00595_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00595_n5_α
 xchain00595_n3_β:
 jmp xchain00595_n6_α
# IR_ASSIGN_VAR
 xchain00595_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00595_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00595_n7_α
 xchain00595_n4_β:
 jmp xchain00595_n3_α
# IR_UNOP
 xchain00595_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00595_n6_α
 cmp eax, 0
 jne xchain00595_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00595_n8_α
 xchain00595_n5_β:
 jmp xchain00595_n6_α
# IR_LIT_INTEGER
 xchain00595_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00595_n9_α
 xchain00595_n6_β:
 jmp proc_lpick_ω
.Lx00597_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00595_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00598_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00595_n10_α
 xchain00595_n7_β:
 jmp xchain00595_n3_α
.Lx00598_0:
 .quad 1
# IR_LIT_STRING
 xchain00595_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00595_n11_α
 xchain00595_n8_β:
 jmp proc_lpick_ω
.Lx00599_0:
 .quad .Lx00599_0_s
.Lx00599_0_s:
 .string "?L"
# IR_VAR
 xchain00595_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00595_n12_α
 xchain00595_n9_β:
 jmp proc_lpick_ω
# IR_LIT_INTEGER
 xchain00595_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00595_n13_α
 xchain00595_n10_β:
 jmp xchain00595_n3_α
.Lx00600_0:
 .quad 2
# IR_RETURN
 xchain00595_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lpick_γ
# IR_TO
 xchain00595_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00601_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00595_n14_α
 xchain00595_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00601_0
# IR_LIT_INTEGER
 xchain00595_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00602_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00595_n15_α
 xchain00595_n13_β:
 jmp xchain00595_n3_α
.Lx00602_0:
 .quad 3
# IR_VAR_REF
 xchain00595_n14_α:
 mov rdi, 1879052544
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00595_n16_α
 xchain00595_n14_β:
 jmp xchain00595_n12_β
# IR_LIT_INTEGER
 xchain00595_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00595_n17_α
 xchain00595_n15_β:
 jmp xchain00595_n3_α
.Lx00603_0:
 .quad 4
# IR_RANDOM
 xchain00595_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00595_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00595_n18_α
 xchain00595_n16_β:
 jmp xchain00595_n12_β
# IR_LIT_INTEGER
 xchain00595_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00595_n19_α
 xchain00595_n17_β:
 jmp xchain00595_n3_α
.Lx00604_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00595_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00595_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00595_n12_β
 xchain00595_n18_β:
 jmp xchain00595_n12_β
# IR_MAKE_LIST
 xchain00595_n19_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 408], rax
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 424], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
 lea rdi, [rbp + 384]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00595_n20_α
 xchain00595_n19_β:
 jmp xchain00595_n3_α
# IR_ASSIGN gva
 xchain00595_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00595_n21_α
 xchain00595_n20_β:
 jmp xchain00595_n3_α
# IR_MOVE_LABEL
 xchain00595_n21_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00595_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00595_n3_α
 xchain00595_n21_β:
 jmp xchain00595_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00595_n22_α:
 jmp qword ptr [rbp + 336]
 xchain00595_n22_β:
 jmp xchain00595_n3_α
proc_lpick_res:
add rsp, 8
pop rbp
proc_lpick_β:
jmp proc_lpick_ω
proc_lpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 760]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
proc_lpick_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_lsubscr_α
proc_lsubscr_α:
#=======================================================================================================================
    .global proc_lsubscr_α
    .global proc_lsubscr_β
    .global proc_lsubscr_γ
    .global proc_lsubscr_ω
  sub rsp, 832
  mov [rsp + 808], rcx
  mov [rsp + 816], rdx
  mov [rsp + 824], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 800
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 800
  call rt_jmp_frame_lexprep@PLT
proc_lsubscr_α_body:
# IR_VAR_REF
 xchain00605_n0_α:
 mov rdi, 1879052592
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00605_n1_α
 xchain00605_n0_β:
 jmp xchain00605_n3_α
# IR_NULLTEST_VAR
 xchain00605_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00605_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00605_n3_α
 cmp eax, 0
 jne xchain00605_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00605_n2_α
 xchain00605_n1_β:
 jmp xchain00605_n3_α
# IR_LIT_INTEGER
 xchain00605_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00605_n4_α
 xchain00605_n2_β:
 jmp xchain00605_n3_α
.Lx00606_0:
 .quad 1
# IR_VAR
 xchain00605_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00605_n5_α
 xchain00605_n3_β:
 jmp xchain00605_n6_α
# IR_ASSIGN_VAR
 xchain00605_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00605_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00605_n7_α
 xchain00605_n4_β:
 jmp xchain00605_n3_α
# IR_UNOP
 xchain00605_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00605_n6_α
 cmp eax, 0
 jne xchain00605_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00605_n8_α
 xchain00605_n5_β:
 jmp xchain00605_n6_α
# IR_LIT_INTEGER
 xchain00605_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00605_n9_α
 xchain00605_n6_β:
 jmp proc_lsubscr_ω
.Lx00607_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00605_n7_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00605_n10_α
 xchain00605_n7_β:
 jmp xchain00605_n3_α
.Lx00608_0:
 .quad 1
# IR_LIT_STRING
 xchain00605_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00605_n11_α
 xchain00605_n8_β:
 jmp proc_lsubscr_ω
.Lx00609_0:
 .quad .Lx00609_0_s
.Lx00609_0_s:
 .string "L[3]"
# IR_VAR
 xchain00605_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00605_n12_α
 xchain00605_n9_β:
 jmp proc_lsubscr_ω
# IR_LIT_INTEGER
 xchain00605_n10_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00605_n13_α
 xchain00605_n10_β:
 jmp xchain00605_n3_α
.Lx00610_0:
 .quad 2
# IR_RETURN
 xchain00605_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsubscr_γ
# IR_TO
 xchain00605_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00611_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00605_n14_α
 xchain00605_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00611_0
# IR_LIT_INTEGER
 xchain00605_n13_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00605_n15_α
 xchain00605_n13_β:
 jmp xchain00605_n3_α
.Lx00612_0:
 .quad 3
# IR_VAR_REF
 xchain00605_n14_α:
 mov rdi, 1879052576
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00605_n16_α
 xchain00605_n14_β:
 jmp xchain00605_n12_β
# IR_LIT_INTEGER
 xchain00605_n15_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00605_n17_α
 xchain00605_n15_β:
 jmp xchain00605_n3_α
.Lx00613_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00605_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00605_n18_α
 xchain00605_n16_β:
 jmp xchain00605_n12_β
.Lx00614_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00605_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00615_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00605_n19_α
 xchain00605_n17_β:
 jmp xchain00605_n3_α
.Lx00615_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00605_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00605_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00605_n20_α
 xchain00605_n18_β:
 jmp xchain00605_n12_β
# IR_MAKE_LIST
 xchain00605_n19_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 472], rax
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 488], rax
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 504], rax
 lea rdi, [rbp + 432]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00605_n21_α
 xchain00605_n19_β:
 jmp xchain00605_n3_α
# IR_DEREF variable -> value
 xchain00605_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00605_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00605_n12_β
 xchain00605_n20_β:
 jmp xchain00605_n12_β
# IR_ASSIGN gva
 xchain00605_n21_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00605_n22_α
 xchain00605_n21_β:
 jmp xchain00605_n3_α
# IR_MOVE_LABEL
 xchain00605_n22_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00605_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00605_n3_α
 xchain00605_n22_β:
 jmp xchain00605_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00605_n23_α:
 jmp qword ptr [rbp + 384]
 xchain00605_n23_β:
 jmp xchain00605_n3_α
proc_lsubscr_res:
add rsp, 8
pop rbp
proc_lsubscr_β:
jmp proc_lsubscr_ω
proc_lsubscr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_lsubscr_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_lbang_α
proc_lbang_α:
#=======================================================================================================================
    .global proc_lbang_α
    .global proc_lbang_β
    .global proc_lbang_γ
    .global proc_lbang_ω
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 744], rsp
  mov rdi, rsp
  mov esi, 752
  call rt_jmp_frame_lexprep@PLT
proc_lbang_α_body:
# IR_VAR_REF
 xchain00616_n0_α:
 mov rdi, 1879052624
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00616_n1_α
 xchain00616_n0_β:
 jmp xchain00616_n3_α
# IR_NULLTEST_VAR
 xchain00616_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00616_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00616_n3_α
 cmp eax, 0
 jne xchain00616_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00616_n2_α
 xchain00616_n1_β:
 jmp xchain00616_n3_α
# IR_LIT_INTEGER
 xchain00616_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00617_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00616_n4_α
 xchain00616_n2_β:
 jmp xchain00616_n3_α
.Lx00617_0:
 .quad 1
# IR_VAR
 xchain00616_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00616_n5_α
 xchain00616_n3_β:
 jmp xchain00616_n6_α
# IR_ASSIGN_VAR
 xchain00616_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00616_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00616_n7_α
 xchain00616_n4_β:
 jmp xchain00616_n3_α
# IR_UNOP
 xchain00616_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00616_n6_α
 cmp eax, 0
 jne xchain00616_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00616_n8_α
 xchain00616_n5_β:
 jmp xchain00616_n6_α
# IR_LIT_INTEGER
 xchain00616_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00618_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00616_n9_α
 xchain00616_n6_β:
 jmp proc_lbang_ω
.Lx00618_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00616_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00616_n10_α
 xchain00616_n7_β:
 jmp xchain00616_n3_α
.Lx00619_0:
 .quad 1
# IR_LIT_STRING
 xchain00616_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00620_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00616_n11_α
 xchain00616_n8_β:
 jmp proc_lbang_ω
.Lx00620_0:
 .quad .Lx00620_0_s
.Lx00620_0_s:
 .string "!L"
# IR_VAR
 xchain00616_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00616_n12_α
 xchain00616_n9_β:
 jmp proc_lbang_ω
# IR_LIT_INTEGER
 xchain00616_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00616_n13_α
 xchain00616_n10_β:
 jmp xchain00616_n3_α
.Lx00621_0:
 .quad 2
# IR_RETURN
 xchain00616_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lbang_γ
# IR_TO
 xchain00616_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00622_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00616_n14_α
 xchain00616_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00622_0
# IR_LIT_INTEGER
 xchain00616_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00623_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00616_n15_α
 xchain00616_n13_β:
 jmp xchain00616_n3_α
.Lx00623_0:
 .quad 3
# IR_VAR
 xchain00616_n14_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00616_n16_α
 xchain00616_n14_β:
 jmp xchain00616_n12_β
# IR_LIT_INTEGER
 xchain00616_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00616_n17_α
 xchain00616_n15_β:
 jmp xchain00616_n3_α
.Lx00624_0:
 .quad 4
# IR_LIST_BANG
 xchain00616_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00625_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00616_n12_β
 jmp xchain00616_n16_β
 xchain00616_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00625_0
# IR_LIT_INTEGER
 xchain00616_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00626_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00616_n18_α
 xchain00616_n17_β:
 jmp xchain00616_n3_α
.Lx00626_0:
 .quad 5
# IR_MAKE_LIST
 xchain00616_n18_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 408], rax
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 424], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 440], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
 lea rdi, [rbp + 384]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00616_n19_α
 xchain00616_n18_β:
 jmp xchain00616_n3_α
# IR_ASSIGN gva
 xchain00616_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00616_n20_α
 xchain00616_n19_β:
 jmp xchain00616_n3_α
# IR_MOVE_LABEL
 xchain00616_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00616_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00616_n3_α
 xchain00616_n20_β:
 jmp xchain00616_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00616_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00616_n21_β:
 jmp xchain00616_n3_α
proc_lbang_res:
add rsp, 8
pop rbp
proc_lbang_β:
jmp proc_lbang_ω
proc_lbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 760]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
proc_lbang_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_put1get1_α
proc_put1get1_α:
#=======================================================================================================================
    .global proc_put1get1_α
    .global proc_put1get1_β
    .global proc_put1get1_γ
    .global proc_put1get1_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 624
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 624
  call rt_jmp_frame_lexprep@PLT
proc_put1get1_α_body:
# IR_VAR_REF
 xchain00627_n0_α:
 mov rdi, 1879052656
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00627_n1_α
 xchain00627_n0_β:
 jmp xchain00627_n3_α
# IR_NULLTEST_VAR
 xchain00627_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00627_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00627_n3_α
 cmp eax, 0
 jne xchain00627_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00627_n2_α
 xchain00627_n1_β:
 jmp xchain00627_n3_α
# IR_LIT_INTEGER
 xchain00627_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00628_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00627_n4_α
 xchain00627_n2_β:
 jmp xchain00627_n3_α
.Lx00628_0:
 .quad 1
# IR_VAR
 xchain00627_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00627_n5_α
 xchain00627_n3_β:
 jmp xchain00627_n6_α
# IR_ASSIGN_VAR
 xchain00627_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00627_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00627_n7_α
 xchain00627_n4_β:
 jmp xchain00627_n3_α
# IR_UNOP
 xchain00627_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00627_n6_α
 cmp eax, 0
 jne xchain00627_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00627_n8_α
 xchain00627_n5_β:
 jmp xchain00627_n6_α
# IR_LIT_INTEGER
 xchain00627_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00629_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00627_n9_α
 xchain00627_n6_β:
 jmp proc_put1get1_ω
.Lx00629_0:
 .quad 1
# IR_MAKE_LIST
 xchain00627_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00627_n10_α
 xchain00627_n7_β:
 jmp xchain00627_n3_α
# IR_LIT_STRING
 xchain00627_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00627_n11_α
 xchain00627_n8_β:
 jmp proc_put1get1_ω
.Lx00630_0:
 .quad .Lx00630_0_s
.Lx00630_0_s:
 .string "get(put(L,0))"
# IR_VAR
 xchain00627_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00627_n12_α
 xchain00627_n9_β:
 jmp proc_put1get1_ω
# IR_ASSIGN gva
 xchain00627_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00627_n13_α
 xchain00627_n10_β:
 jmp xchain00627_n3_α
# IR_RETURN
 xchain00627_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put1get1_γ
# IR_TO
 xchain00627_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00631_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00627_n14_α
 xchain00627_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00631_0
# IR_MOVE_LABEL
 xchain00627_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00627_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00627_n3_α
 xchain00627_n13_β:
 jmp xchain00627_n3_α
# IR_VAR
 xchain00627_n14_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00627_n16_α
 xchain00627_n14_β:
 jmp xchain00627_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00627_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00627_n15_β:
 jmp xchain00627_n3_α
# IR_LIT_INTEGER
 xchain00627_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00632_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00627_n17_α
 xchain00627_n16_β:
 jmp xchain00627_n12_β
.Lx00632_0:
 .quad 0
 xchain00627_n17_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn1787: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1787]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00627_n12_β
 jmp xchain00627_n18_α
 xchain00627_n17_β:
 jmp xchain00627_n12_β
 xchain00627_n18_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1789: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1789]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00627_n12_β
 jmp xchain00627_n12_β
 xchain00627_n18_β:
 jmp xchain00627_n12_β
proc_put1get1_res:
add rsp, 8
pop rbp
proc_put1get1_β:
jmp proc_put1get1_ω
proc_put1get1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 632]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
proc_put1get1_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_put2get2_α
proc_put2get2_α:
#=======================================================================================================================
    .global proc_put2get2_α
    .global proc_put2get2_β
    .global proc_put2get2_γ
    .global proc_put2get2_ω
  sub rsp, 832
  mov [rsp + 808], rcx
  mov [rsp + 816], rdx
  mov [rsp + 824], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 800
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 800
  call rt_jmp_frame_lexprep@PLT
proc_put2get2_α_body:
# IR_VAR_REF
 xchain00633_n0_α:
 mov rdi, 1879052688
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00633_n1_α
 xchain00633_n0_β:
 jmp xchain00633_n3_α
# IR_NULLTEST_VAR
 xchain00633_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00633_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00633_n3_α
 cmp eax, 0
 jne xchain00633_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00633_n2_α
 xchain00633_n1_β:
 jmp xchain00633_n3_α
# IR_LIT_INTEGER
 xchain00633_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00634_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00633_n4_α
 xchain00633_n2_β:
 jmp xchain00633_n3_α
.Lx00634_0:
 .quad 1
# IR_VAR
 xchain00633_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00633_n5_α
 xchain00633_n3_β:
 jmp xchain00633_n6_α
# IR_ASSIGN_VAR
 xchain00633_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00633_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00633_n7_α
 xchain00633_n4_β:
 jmp xchain00633_n3_α
# IR_UNOP
 xchain00633_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00633_n6_α
 cmp eax, 0
 jne xchain00633_n6_α
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 jmp xchain00633_n8_α
 xchain00633_n5_β:
 jmp xchain00633_n6_α
# IR_LIT_INTEGER
 xchain00633_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00633_n9_α
 xchain00633_n6_β:
 jmp proc_put2get2_ω
.Lx00635_0:
 .quad 1
# IR_MAKE_LIST
 xchain00633_n7_α:
 lea rdi, [rbp + 672]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00633_n10_α
 xchain00633_n7_β:
 jmp xchain00633_n3_α
# IR_LIT_STRING
 xchain00633_n8_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00633_n11_α
 xchain00633_n8_β:
 jmp proc_put2get2_ω
.Lx00636_0:
 .quad .Lx00636_0_s
.Lx00636_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_VAR
 xchain00633_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00633_n12_α
 xchain00633_n9_β:
 jmp proc_put2get2_ω
# IR_ASSIGN gva
 xchain00633_n10_α:
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00633_n13_α
 xchain00633_n10_β:
 jmp xchain00633_n3_α
# IR_RETURN
 xchain00633_n11_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put2get2_γ
# IR_TO
 xchain00633_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00637_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00633_n14_α
 xchain00633_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00637_0
# IR_MOVE_LABEL
 xchain00633_n13_α:
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
 lea rax, [rip + xchain00633_n3_α]
 mov qword ptr [rbp + 624], rax
 jmp xchain00633_n3_α
 xchain00633_n13_β:
 jmp xchain00633_n3_α
# IR_VAR
 xchain00633_n14_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00633_n16_α
 xchain00633_n14_β:
 jmp xchain00633_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00633_n15_α:
 jmp qword ptr [rbp + 624]
 xchain00633_n15_β:
 jmp xchain00633_n3_α
# IR_LIT_INTEGER
 xchain00633_n16_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00638_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00633_n17_α
 xchain00633_n16_β:
 jmp xchain00633_n12_β
.Lx00638_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00633_n17_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00633_n18_α
 xchain00633_n17_β:
 jmp xchain00633_n12_β
.Lx00639_0:
 .quad 2
 xchain00633_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+336]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 344], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+352]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn1817: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1817]
 lea rsi, [rbp + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00633_n12_β
 jmp xchain00633_n19_α
 xchain00633_n18_β:
 jmp xchain00633_n12_β
# IR_VAR
 xchain00633_n19_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00633_n20_α
 xchain00633_n19_β:
 jmp xchain00633_n12_β
 xchain00633_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1820: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1820]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00633_n12_β
 jmp xchain00633_n21_α
 xchain00633_n20_β:
 jmp xchain00633_n12_β
# IR_VAR
 xchain00633_n21_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00633_n22_α
 xchain00633_n21_β:
 jmp xchain00633_n12_β
 xchain00633_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1823: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1823]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00633_n12_β
 jmp xchain00633_n23_α
 xchain00633_n22_β:
 jmp xchain00633_n12_β
 xchain00633_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00633_n12_β
xchain00633_n23_β:
 jmp xchain00633_n12_β
proc_put2get2_res:
add rsp, 8
pop rbp
proc_put2get2_β:
jmp proc_put2get2_ω
proc_put2get2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_put2get2_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_put3get3_α
proc_put3get3_α:
#=======================================================================================================================
    .global proc_put3get3_α
    .global proc_put3get3_β
    .global proc_put3get3_γ
    .global proc_put3get3_ω
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 928
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 928
  call rt_jmp_frame_lexprep@PLT
proc_put3get3_α_body:
# IR_VAR_REF
 xchain00640_n0_α:
 mov rdi, 1879052720
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00640_n1_α
 xchain00640_n0_β:
 jmp xchain00640_n3_α
# IR_NULLTEST_VAR
 xchain00640_n1_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 99
 je xchain00640_n3_α
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00640_n3_α
 cmp eax, 0
 jne xchain00640_n3_α
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 840], rax
 jmp xchain00640_n2_α
 xchain00640_n1_β:
 jmp xchain00640_n3_α
# IR_LIT_INTEGER
 xchain00640_n2_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00641_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00640_n4_α
 xchain00640_n2_β:
 jmp xchain00640_n3_α
.Lx00641_0:
 .quad 1
# IR_VAR
 xchain00640_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 712], rax
 jmp xchain00640_n5_α
 xchain00640_n3_β:
 jmp xchain00640_n6_α
# IR_ASSIGN_VAR
 xchain00640_n4_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00640_n3_α
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00640_n7_α
 xchain00640_n4_β:
 jmp xchain00640_n3_α
# IR_UNOP
 xchain00640_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00640_n6_α
 cmp eax, 0
 jne xchain00640_n6_α
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 jmp xchain00640_n8_α
 xchain00640_n5_β:
 jmp xchain00640_n6_α
# IR_LIT_INTEGER
 xchain00640_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00640_n9_α
 xchain00640_n6_β:
 jmp proc_put3get3_ω
.Lx00642_0:
 .quad 1
# IR_MAKE_LIST
 xchain00640_n7_α:
 lea rdi, [rbp + 800]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00640_n10_α
 xchain00640_n7_β:
 jmp xchain00640_n3_α
# IR_LIT_STRING
 xchain00640_n8_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00640_n11_α
 xchain00640_n8_β:
 jmp proc_put3get3_ω
.Lx00643_0:
 .quad .Lx00643_0_s
.Lx00643_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_VAR
 xchain00640_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00640_n12_α
 xchain00640_n9_β:
 jmp proc_put3get3_ω
# IR_ASSIGN gva
 xchain00640_n10_α:
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00640_n13_α
 xchain00640_n10_β:
 jmp xchain00640_n3_α
# IR_RETURN
 xchain00640_n11_α:
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put3get3_γ
# IR_TO
 xchain00640_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00644_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00640_n14_α
 xchain00640_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00644_0
# IR_MOVE_LABEL
 xchain00640_n13_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + xchain00640_n3_α]
 mov qword ptr [rbp + 752], rax
 jmp xchain00640_n3_α
 xchain00640_n13_β:
 jmp xchain00640_n3_α
# IR_VAR
 xchain00640_n14_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00640_n16_α
 xchain00640_n14_β:
 jmp xchain00640_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00640_n15_α:
 jmp qword ptr [rbp + 752]
 xchain00640_n15_β:
 jmp xchain00640_n3_α
# IR_LIT_INTEGER
 xchain00640_n16_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00640_n17_α
 xchain00640_n16_β:
 jmp xchain00640_n12_β
.Lx00645_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00640_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00646_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00640_n18_α
 xchain00640_n17_β:
 jmp xchain00640_n12_β
.Lx00646_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00640_n18_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00640_n19_α
 xchain00640_n18_β:
 jmp xchain00640_n12_β
.Lx00647_0:
 .quad 3
 xchain00640_n19_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+400]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+416]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+544] -> [zr+432]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 440], rax
# marshal arg3 = producer-box slot [zr+576] -> [zr+448]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn1853: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1853]
 lea rsi, [rbp + 400]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00640_n12_β
 jmp xchain00640_n20_α
 xchain00640_n19_β:
 jmp xchain00640_n12_β
# IR_VAR
 xchain00640_n20_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00640_n21_α
 xchain00640_n20_β:
 jmp xchain00640_n12_β
 xchain00640_n21_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn1856: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1856]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00640_n12_β
 jmp xchain00640_n22_α
 xchain00640_n21_β:
 jmp xchain00640_n12_β
# IR_VAR
 xchain00640_n22_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00640_n23_α
 xchain00640_n22_β:
 jmp xchain00640_n12_β
 xchain00640_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1859: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1859]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00640_n12_β
 jmp xchain00640_n24_α
 xchain00640_n23_β:
 jmp xchain00640_n12_β
# IR_VAR
 xchain00640_n24_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00640_n25_α
 xchain00640_n24_β:
 jmp xchain00640_n12_β
 xchain00640_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1862: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1862]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00640_n12_β
 jmp xchain00640_n26_α
 xchain00640_n25_β:
 jmp xchain00640_n12_β
 xchain00640_n26_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00640_n12_β
xchain00640_n26_β:
 jmp xchain00640_n12_β
proc_put3get3_res:
add rsp, 8
pop rbp
proc_put3get3_β:
jmp proc_put3get3_ω
proc_put3get3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 936]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_put3get3_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
  .globl proc_put4get4_α
proc_put4get4_α:
#=======================================================================================================================
    .global proc_put4get4_α
    .global proc_put4get4_β
    .global proc_put4get4_γ
    .global proc_put4get4_ω
  sub rsp, 1088
  mov [rsp + 1064], rcx
  mov [rsp + 1072], rdx
  mov [rsp + 1080], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1056
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1048], rsp
  mov rdi, rsp
  mov esi, 1056
  call rt_jmp_frame_lexprep@PLT
proc_put4get4_α_body:
# IR_VAR_REF
 xchain00648_n0_α:
 mov rdi, 1879052752
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00648_n1_α
 xchain00648_n0_β:
 jmp xchain00648_n3_α
# IR_NULLTEST_VAR
 xchain00648_n1_α:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 99
 je xchain00648_n3_α
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00648_n3_α
 cmp eax, 0
 jne xchain00648_n3_α
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 968], rax
 jmp xchain00648_n2_α
 xchain00648_n1_β:
 jmp xchain00648_n3_α
# IR_LIT_INTEGER
 xchain00648_n2_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00649_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00648_n4_α
 xchain00648_n2_β:
 jmp xchain00648_n3_α
.Lx00649_0:
 .quad 1
# IR_VAR
 xchain00648_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 840], rax
 jmp xchain00648_n5_α
 xchain00648_n3_β:
 jmp xchain00648_n6_α
# IR_ASSIGN_VAR
 xchain00648_n4_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 1008]
 mov rcx, qword ptr [rbp + 1016]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00648_n3_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00648_n7_α
 xchain00648_n4_β:
 jmp xchain00648_n3_α
# IR_UNOP
 xchain00648_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00648_n6_α
 cmp eax, 0
 jne xchain00648_n6_α
 mov qword ptr [rbp + 800], 0
 mov qword ptr [rbp + 808], 0
 jmp xchain00648_n8_α
 xchain00648_n5_β:
 jmp xchain00648_n6_α
# IR_LIT_INTEGER
 xchain00648_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00648_n9_α
 xchain00648_n6_β:
 jmp proc_put4get4_ω
.Lx00650_0:
 .quad 1
# IR_MAKE_LIST
 xchain00648_n7_α:
 lea rdi, [rbp + 928]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00648_n10_α
 xchain00648_n7_β:
 jmp xchain00648_n3_α
# IR_LIT_STRING
 xchain00648_n8_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00648_n11_α
 xchain00648_n8_β:
 jmp proc_put4get4_ω
.Lx00651_0:
 .quad .Lx00651_0_s
.Lx00651_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_VAR
 xchain00648_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00648_n12_α
 xchain00648_n9_β:
 jmp proc_put4get4_ω
# IR_ASSIGN gva
 xchain00648_n10_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [1879052736], rax
 mov qword ptr [1879052744], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00648_n13_α
 xchain00648_n10_β:
 jmp xchain00648_n3_α
# IR_RETURN
 xchain00648_n11_α:
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put4get4_γ
# IR_TO
 xchain00648_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00652_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00648_n14_α
 xchain00648_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00652_0
# IR_MOVE_LABEL
 xchain00648_n13_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
 lea rax, [rip + xchain00648_n3_α]
 mov qword ptr [rbp + 880], rax
 jmp xchain00648_n3_α
 xchain00648_n13_β:
 jmp xchain00648_n3_α
# IR_VAR
 xchain00648_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00648_n16_α
 xchain00648_n14_β:
 jmp xchain00648_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00648_n15_α:
 jmp qword ptr [rbp + 880]
 xchain00648_n15_β:
 jmp xchain00648_n3_α
# IR_LIT_INTEGER
 xchain00648_n16_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00648_n17_α
 xchain00648_n16_β:
 jmp xchain00648_n12_β
.Lx00653_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00648_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00648_n18_α
 xchain00648_n17_β:
 jmp xchain00648_n12_β
.Lx00654_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00648_n18_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00648_n19_α
 xchain00648_n18_β:
 jmp xchain00648_n12_β
.Lx00655_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00648_n19_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00648_n20_α
 xchain00648_n19_β:
 jmp xchain00648_n12_β
.Lx00656_0:
 .quad 4
 xchain00648_n20_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+480]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+496]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+512]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 520], rax
# marshal arg3 = producer-box slot [zr+672] -> [zr+528]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 536], rax
# marshal arg4 = producer-box slot [zr+704] -> [zr+544]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn1893: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1893]
 lea rsi, [rbp + 480]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00648_n12_β
 jmp xchain00648_n21_α
 xchain00648_n20_β:
 jmp xchain00648_n12_β
# IR_VAR
 xchain00648_n21_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00648_n22_α
 xchain00648_n21_β:
 jmp xchain00648_n12_β
 xchain00648_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn1896: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1896]
 lea rsi, [rbp + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00648_n12_β
 jmp xchain00648_n23_α
 xchain00648_n22_β:
 jmp xchain00648_n12_β
# IR_VAR
 xchain00648_n23_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00648_n24_α
 xchain00648_n23_β:
 jmp xchain00648_n12_β
 xchain00648_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn1899: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1899]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00648_n12_β
 jmp xchain00648_n25_α
 xchain00648_n24_β:
 jmp xchain00648_n12_β
# IR_VAR
 xchain00648_n25_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00648_n26_α
 xchain00648_n25_β:
 jmp xchain00648_n12_β
 xchain00648_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1902: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1902]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00648_n12_β
 jmp xchain00648_n27_α
 xchain00648_n26_β:
 jmp xchain00648_n12_β
# IR_VAR
 xchain00648_n27_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00648_n28_α
 xchain00648_n27_β:
 jmp xchain00648_n12_β
 xchain00648_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1905: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1905]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00648_n12_β
 jmp xchain00648_n29_α
 xchain00648_n28_β:
 jmp xchain00648_n12_β
 xchain00648_n29_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00648_n12_β
xchain00648_n29_β:
 jmp xchain00648_n12_β
proc_put4get4_res:
add rsp, 8
pop rbp
proc_put4get4_β:
jmp proc_put4get4_ω
proc_put4get4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1064]
lea rsp, [rbp + 1088]
mov rbp, [rbp + 1080]
jmp rax
proc_put4get4_ω:
mov rax, [rbp + 1072]
lea rsp, [rbp + 1088]
mov rbp, [rbp + 1080]
jmp rax
  .globl proc_pushpop_α
proc_pushpop_α:
#=======================================================================================================================
    .global proc_pushpop_α
    .global proc_pushpop_β
    .global proc_pushpop_γ
    .global proc_pushpop_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 624
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 624
  call rt_jmp_frame_lexprep@PLT
proc_pushpop_α_body:
# IR_VAR_REF
 xchain00657_n0_α:
 mov rdi, 1879052784
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00657_n1_α
 xchain00657_n0_β:
 jmp xchain00657_n3_α
# IR_NULLTEST_VAR
 xchain00657_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00657_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00657_n3_α
 cmp eax, 0
 jne xchain00657_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00657_n2_α
 xchain00657_n1_β:
 jmp xchain00657_n3_α
# IR_LIT_INTEGER
 xchain00657_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00658_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00657_n4_α
 xchain00657_n2_β:
 jmp xchain00657_n3_α
.Lx00658_0:
 .quad 1
# IR_VAR
 xchain00657_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00657_n5_α
 xchain00657_n3_β:
 jmp xchain00657_n6_α
# IR_ASSIGN_VAR
 xchain00657_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00657_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00657_n7_α
 xchain00657_n4_β:
 jmp xchain00657_n3_α
# IR_UNOP
 xchain00657_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00657_n6_α
 cmp eax, 0
 jne xchain00657_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00657_n8_α
 xchain00657_n5_β:
 jmp xchain00657_n6_α
# IR_LIT_INTEGER
 xchain00657_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00657_n9_α
 xchain00657_n6_β:
 jmp proc_pushpop_ω
.Lx00659_0:
 .quad 1
# IR_MAKE_LIST
 xchain00657_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00657_n10_α
 xchain00657_n7_β:
 jmp xchain00657_n3_α
# IR_LIT_STRING
 xchain00657_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00657_n11_α
 xchain00657_n8_β:
 jmp proc_pushpop_ω
.Lx00660_0:
 .quad .Lx00660_0_s
.Lx00660_0_s:
 .string "pop(push(L,0))"
# IR_VAR
 xchain00657_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00657_n12_α
 xchain00657_n9_β:
 jmp proc_pushpop_ω
# IR_ASSIGN gva
 xchain00657_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00657_n13_α
 xchain00657_n10_β:
 jmp xchain00657_n3_α
# IR_RETURN
 xchain00657_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop_γ
# IR_TO
 xchain00657_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00661_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00657_n14_α
 xchain00657_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00661_0
# IR_MOVE_LABEL
 xchain00657_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00657_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00657_n3_α
 xchain00657_n13_β:
 jmp xchain00657_n3_α
# IR_VAR
 xchain00657_n14_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00657_n16_α
 xchain00657_n14_β:
 jmp xchain00657_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00657_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00657_n15_β:
 jmp xchain00657_n3_α
# IR_LIT_INTEGER
 xchain00657_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00657_n17_α
 xchain00657_n16_β:
 jmp xchain00657_n12_β
.Lx00662_0:
 .quad 0
 xchain00657_n17_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn1933: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1933]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00657_n12_β
 jmp xchain00657_n18_α
 xchain00657_n17_β:
 jmp xchain00657_n12_β
 xchain00657_n18_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1935: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1935]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00657_n12_β
 jmp xchain00657_n12_β
 xchain00657_n18_β:
 jmp xchain00657_n12_β
proc_pushpop_res:
add rsp, 8
pop rbp
proc_pushpop_β:
jmp proc_pushpop_ω
proc_pushpop_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 632]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
proc_pushpop_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_putget12_α
proc_putget12_α:
#=======================================================================================================================
    .global proc_putget12_α
    .global proc_putget12_β
    .global proc_putget12_γ
    .global proc_putget12_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1192], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_putget12_α_body:
# IR_VAR_REF
 xchain00663_n0_α:
 mov rdi, 1879052816
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00663_n1_α
 xchain00663_n0_β:
 jmp xchain00663_n3_α
# IR_NULLTEST_VAR
 xchain00663_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00663_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00663_n3_α
 cmp eax, 0
 jne xchain00663_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00663_n2_α
 xchain00663_n1_β:
 jmp xchain00663_n3_α
# IR_LIT_INTEGER
 xchain00663_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00664_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00663_n4_α
 xchain00663_n2_β:
 jmp xchain00663_n3_α
.Lx00664_0:
 .quad 1
# IR_VAR
 xchain00663_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00663_n5_α
 xchain00663_n3_β:
 jmp xchain00663_n6_α
# IR_ASSIGN_VAR
 xchain00663_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00663_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00663_n7_α
 xchain00663_n4_β:
 jmp xchain00663_n3_α
# IR_UNOP
 xchain00663_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00663_n6_α
 cmp eax, 0
 jne xchain00663_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00663_n8_α
 xchain00663_n5_β:
 jmp xchain00663_n6_α
# IR_LIT_INTEGER
 xchain00663_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00663_n9_α
 xchain00663_n6_β:
 jmp proc_putget12_ω
.Lx00665_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00663_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00663_n10_α
 xchain00663_n7_β:
 jmp xchain00663_n3_α
.Lx00666_0:
 .quad 3
# IR_LIT_STRING
 xchain00663_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00667_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00663_n11_α
 xchain00663_n8_β:
 jmp proc_putget12_ω
.Lx00667_0:
 .quad .Lx00667_0_s
.Lx00667_0_s:
 .string "get(put(L12,0))"
# IR_VAR
 xchain00663_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00663_n12_α
 xchain00663_n9_β:
 jmp proc_putget12_ω
# IR_LIT_INTEGER
 xchain00663_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00668_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00663_n13_α
 xchain00663_n10_β:
 jmp xchain00663_n3_α
.Lx00668_0:
 .quad 1
# IR_RETURN
 xchain00663_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putget12_γ
# IR_TO
 xchain00663_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00669_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00663_n14_α
 xchain00663_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00669_0
# IR_LIT_INTEGER
 xchain00663_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00663_n15_α
 xchain00663_n13_β:
 jmp xchain00663_n3_α
.Lx00670_0:
 .quad 4
# IR_VAR
 xchain00663_n14_α:
 mov rax, qword ptr [1879052800]
 mov rdx, qword ptr [1879052808]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00663_n16_α
 xchain00663_n14_β:
 jmp xchain00663_n12_β
# IR_LIT_INTEGER
 xchain00663_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00663_n17_α
 xchain00663_n15_β:
 jmp xchain00663_n3_α
.Lx00671_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00663_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00663_n18_α
 xchain00663_n16_β:
 jmp xchain00663_n12_β
.Lx00672_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00663_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00673_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00663_n19_α
 xchain00663_n17_β:
 jmp xchain00663_n3_α
.Lx00673_0:
 .quad 5
 xchain00663_n18_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn1960: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1960]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00663_n12_β
 jmp xchain00663_n20_α
 xchain00663_n18_β:
 jmp xchain00663_n12_β
# IR_LIT_INTEGER
 xchain00663_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00663_n21_α
 xchain00663_n19_β:
 jmp xchain00663_n3_α
.Lx00674_0:
 .quad 9
 xchain00663_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1963: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1963]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00663_n12_β
 jmp xchain00663_n12_β
 xchain00663_n20_β:
 jmp xchain00663_n12_β
# IR_LIT_INTEGER
 xchain00663_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00663_n22_α
 xchain00663_n21_β:
 jmp xchain00663_n3_α
.Lx00675_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00663_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00663_n23_α
 xchain00663_n22_β:
 jmp xchain00663_n3_α
.Lx00676_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00663_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00663_n24_α
 xchain00663_n23_β:
 jmp xchain00663_n3_α
.Lx00677_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00663_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00663_n25_α
 xchain00663_n24_β:
 jmp xchain00663_n3_α
.Lx00678_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00663_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00663_n26_α
 xchain00663_n25_β:
 jmp xchain00663_n3_α
.Lx00679_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00663_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00663_n27_α
 xchain00663_n26_β:
 jmp xchain00663_n3_α
.Lx00680_0:
 .quad 8
# IR_MAKE_LIST
 xchain00663_n27_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 504], rax
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 520], rax
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 536], rax
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 552], rax
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 568], rax
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 584], rax
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 600], rax
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 616], rax
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 632], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 648], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 664], rax
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 680], rax
 lea rdi, [rbp + 496]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00663_n28_α
 xchain00663_n27_β:
 jmp xchain00663_n3_α
# IR_ASSIGN gva
 xchain00663_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00663_n29_α
 xchain00663_n28_β:
 jmp xchain00663_n3_α
# IR_MOVE_LABEL
 xchain00663_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00663_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00663_n3_α
 xchain00663_n29_β:
 jmp xchain00663_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00663_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00663_n30_β:
 jmp xchain00663_n3_α
proc_putget12_res:
add rsp, 8
pop rbp
proc_putget12_β:
jmp proc_putget12_ω
proc_putget12_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_putget12_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_pushpop12_α
proc_pushpop12_α:
#=======================================================================================================================
    .global proc_pushpop12_α
    .global proc_pushpop12_β
    .global proc_pushpop12_γ
    .global proc_pushpop12_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1192], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_pushpop12_α_body:
# IR_VAR_REF
 xchain00681_n0_α:
 mov rdi, 1879052848
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00681_n1_α
 xchain00681_n0_β:
 jmp xchain00681_n3_α
# IR_NULLTEST_VAR
 xchain00681_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00681_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00681_n3_α
 cmp eax, 0
 jne xchain00681_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00681_n2_α
 xchain00681_n1_β:
 jmp xchain00681_n3_α
# IR_LIT_INTEGER
 xchain00681_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00682_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00681_n4_α
 xchain00681_n2_β:
 jmp xchain00681_n3_α
.Lx00682_0:
 .quad 1
# IR_VAR
 xchain00681_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00681_n5_α
 xchain00681_n3_β:
 jmp xchain00681_n6_α
# IR_ASSIGN_VAR
 xchain00681_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00681_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00681_n7_α
 xchain00681_n4_β:
 jmp xchain00681_n3_α
# IR_UNOP
 xchain00681_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00681_n6_α
 cmp eax, 0
 jne xchain00681_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00681_n8_α
 xchain00681_n5_β:
 jmp xchain00681_n6_α
# IR_LIT_INTEGER
 xchain00681_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00681_n9_α
 xchain00681_n6_β:
 jmp proc_pushpop12_ω
.Lx00683_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00681_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00681_n10_α
 xchain00681_n7_β:
 jmp xchain00681_n3_α
.Lx00684_0:
 .quad 3
# IR_LIT_STRING
 xchain00681_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00685_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00681_n11_α
 xchain00681_n8_β:
 jmp proc_pushpop12_ω
.Lx00685_0:
 .quad .Lx00685_0_s
.Lx00685_0_s:
 .string "pop(push(L12,0))"
# IR_VAR
 xchain00681_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00681_n12_α
 xchain00681_n9_β:
 jmp proc_pushpop12_ω
# IR_LIT_INTEGER
 xchain00681_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00681_n13_α
 xchain00681_n10_β:
 jmp xchain00681_n3_α
.Lx00686_0:
 .quad 1
# IR_RETURN
 xchain00681_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop12_γ
# IR_TO
 xchain00681_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00687_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00681_n14_α
 xchain00681_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00687_0
# IR_LIT_INTEGER
 xchain00681_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00688_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00681_n15_α
 xchain00681_n13_β:
 jmp xchain00681_n3_α
.Lx00688_0:
 .quad 4
# IR_VAR
 xchain00681_n14_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00681_n16_α
 xchain00681_n14_β:
 jmp xchain00681_n12_β
# IR_LIT_INTEGER
 xchain00681_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00681_n17_α
 xchain00681_n15_β:
 jmp xchain00681_n3_α
.Lx00689_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00681_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00681_n18_α
 xchain00681_n16_β:
 jmp xchain00681_n12_β
.Lx00690_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00681_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00681_n19_α
 xchain00681_n17_β:
 jmp xchain00681_n3_α
.Lx00691_0:
 .quad 5
 xchain00681_n18_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2001: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2001]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00681_n12_β
 jmp xchain00681_n20_α
 xchain00681_n18_β:
 jmp xchain00681_n12_β
# IR_LIT_INTEGER
 xchain00681_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00692_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00681_n21_α
 xchain00681_n19_β:
 jmp xchain00681_n3_α
.Lx00692_0:
 .quad 9
 xchain00681_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2004: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2004]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00681_n12_β
 jmp xchain00681_n12_β
 xchain00681_n20_β:
 jmp xchain00681_n12_β
# IR_LIT_INTEGER
 xchain00681_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00681_n22_α
 xchain00681_n21_β:
 jmp xchain00681_n3_α
.Lx00693_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00681_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00681_n23_α
 xchain00681_n22_β:
 jmp xchain00681_n3_α
.Lx00694_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00681_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00681_n24_α
 xchain00681_n23_β:
 jmp xchain00681_n3_α
.Lx00695_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00681_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00696_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00681_n25_α
 xchain00681_n24_β:
 jmp xchain00681_n3_α
.Lx00696_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00681_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00681_n26_α
 xchain00681_n25_β:
 jmp xchain00681_n3_α
.Lx00697_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00681_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00698_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00681_n27_α
 xchain00681_n26_β:
 jmp xchain00681_n3_α
.Lx00698_0:
 .quad 8
# IR_MAKE_LIST
 xchain00681_n27_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 504], rax
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 520], rax
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 536], rax
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 552], rax
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 568], rax
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 584], rax
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 600], rax
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 616], rax
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 632], rax
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 648], rax
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 664], rax
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 680], rax
 lea rdi, [rbp + 496]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00681_n28_α
 xchain00681_n27_β:
 jmp xchain00681_n3_α
# IR_ASSIGN gva
 xchain00681_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00681_n29_α
 xchain00681_n28_β:
 jmp xchain00681_n3_α
# IR_MOVE_LABEL
 xchain00681_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00681_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00681_n3_α
 xchain00681_n29_β:
 jmp xchain00681_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00681_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00681_n30_β:
 jmp xchain00681_n3_α
proc_pushpop12_res:
add rsp, 8
pop rbp
proc_pushpop12_β:
jmp proc_pushpop12_ω
proc_pushpop12_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_pushpop12_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_setcreate_α
proc_setcreate_α:
#=======================================================================================================================
    .global proc_setcreate_α
    .global proc_setcreate_β
    .global proc_setcreate_γ
    .global proc_setcreate_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_setcreate_α_body:
# IR_VAR
 xchain00699_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00699_n1_α
 xchain00699_n0_β:
 jmp xchain00699_n2_α
# IR_UNOP
 xchain00699_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00699_n2_α
 cmp eax, 0
 jne xchain00699_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00699_n3_α
 xchain00699_n1_β:
 jmp xchain00699_n2_α
# IR_LIT_INTEGER
 xchain00699_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00699_n4_α
 xchain00699_n2_β:
 jmp proc_setcreate_ω
.Lx00700_0:
 .quad 1
# IR_LIT_STRING
 xchain00699_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00699_n5_α
 xchain00699_n3_β:
 jmp proc_setcreate_ω
.Lx00701_0:
 .quad .Lx00701_0_s
.Lx00701_0_s:
 .string "set()"
# IR_VAR
 xchain00699_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00699_n6_α
 xchain00699_n4_β:
 jmp proc_setcreate_ω
# IR_RETURN
 xchain00699_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcreate_γ
# IR_TO
 xchain00699_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00702_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00699_n7_α
 xchain00699_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00702_0
 xchain00699_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2030: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2030]
 lea rsi, [rbp + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00699_n6_β
 jmp xchain00699_n6_β
 xchain00699_n7_β:
 jmp xchain00699_n6_β
proc_setcreate_res:
add rsp, 8
pop rbp
proc_setcreate_β:
jmp proc_setcreate_ω
proc_setcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_setcreate_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_setcopy_α
proc_setcopy_α:
#=======================================================================================================================
    .global proc_setcopy_α
    .global proc_setcopy_β
    .global proc_setcopy_γ
    .global proc_setcopy_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_setcopy_α_body:
# IR_VAR_REF
 xchain00703_n0_α:
 mov rdi, 1879052880
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00703_n1_α
 xchain00703_n0_β:
 jmp xchain00703_n3_α
# IR_NULLTEST_VAR
 xchain00703_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00703_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00703_n3_α
 cmp eax, 0
 jne xchain00703_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00703_n2_α
 xchain00703_n1_β:
 jmp xchain00703_n3_α
# IR_LIT_INTEGER
 xchain00703_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00703_n4_α
 xchain00703_n2_β:
 jmp xchain00703_n3_α
.Lx00704_0:
 .quad 1
# IR_VAR
 xchain00703_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00703_n5_α
 xchain00703_n3_β:
 jmp xchain00703_n6_α
# IR_ASSIGN_VAR
 xchain00703_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00703_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00703_n7_α
 xchain00703_n4_β:
 jmp xchain00703_n3_α
# IR_UNOP
 xchain00703_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00703_n6_α
 cmp eax, 0
 jne xchain00703_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00703_n8_α
 xchain00703_n5_β:
 jmp xchain00703_n6_α
# IR_LIT_INTEGER
 xchain00703_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00705_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00703_n9_α
 xchain00703_n6_β:
 jmp proc_setcopy_ω
.Lx00705_0:
 .quad 1
 xchain00703_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2042: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2042]
 lea rsi, [rbp + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00703_n3_α
 jmp xchain00703_n10_α
 xchain00703_n7_β:
 jmp xchain00703_n3_α
# IR_LIT_STRING
 xchain00703_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00706_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00703_n11_α
 xchain00703_n8_β:
 jmp proc_setcopy_ω
.Lx00706_0:
 .quad .Lx00706_0_s
.Lx00706_0_s:
 .string "copy(S)"
# IR_VAR
 xchain00703_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00703_n12_α
 xchain00703_n9_β:
 jmp proc_setcopy_ω
# IR_ASSIGN gva
 xchain00703_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00703_n13_α
 xchain00703_n10_β:
 jmp xchain00703_n3_α
# IR_RETURN
 xchain00703_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcopy_γ
# IR_TO
 xchain00703_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00707_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00703_n14_α
 xchain00703_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00707_0
# IR_LIT_INTEGER
 xchain00703_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00708_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00703_n15_α
 xchain00703_n13_β:
 jmp xchain00703_n3_α
.Lx00708_0:
 .quad 5
# IR_VAR
 xchain00703_n14_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00703_n16_α
 xchain00703_n14_β:
 jmp xchain00703_n12_β
 xchain00703_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+400]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn2053: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2053]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00703_n3_α
 jmp xchain00703_n17_α
 xchain00703_n15_β:
 jmp xchain00703_n3_α
 xchain00703_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2055: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2055]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00703_n12_β
 jmp xchain00703_n12_β
 xchain00703_n16_β:
 jmp xchain00703_n12_β
# IR_MOVE_LABEL
 xchain00703_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00703_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00703_n3_α
 xchain00703_n17_β:
 jmp xchain00703_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00703_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00703_n18_β:
 jmp xchain00703_n3_α
proc_setcopy_res:
add rsp, 8
pop rbp
proc_setcopy_β:
jmp proc_setcopy_ω
proc_setcopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_setcopy_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_setinsert_α
proc_setinsert_α:
#=======================================================================================================================
    .global proc_setinsert_α
    .global proc_setinsert_β
    .global proc_setinsert_γ
    .global proc_setinsert_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_setinsert_α_body:
# IR_VAR_REF
 xchain00709_n0_α:
 mov rdi, 1879052912
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00709_n1_α
 xchain00709_n0_β:
 jmp xchain00709_n3_α
# IR_NULLTEST_VAR
 xchain00709_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00709_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00709_n3_α
 cmp eax, 0
 jne xchain00709_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00709_n2_α
 xchain00709_n1_β:
 jmp xchain00709_n3_α
# IR_LIT_INTEGER
 xchain00709_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00710_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00709_n4_α
 xchain00709_n2_β:
 jmp xchain00709_n3_α
.Lx00710_0:
 .quad 1
# IR_VAR
 xchain00709_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00709_n5_α
 xchain00709_n3_β:
 jmp xchain00709_n6_α
# IR_ASSIGN_VAR
 xchain00709_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00709_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00709_n7_α
 xchain00709_n4_β:
 jmp xchain00709_n3_α
# IR_UNOP
 xchain00709_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00709_n6_α
 cmp eax, 0
 jne xchain00709_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00709_n8_α
 xchain00709_n5_β:
 jmp xchain00709_n6_α
# IR_LIT_INTEGER
 xchain00709_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00711_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00709_n9_α
 xchain00709_n6_β:
 jmp proc_setinsert_ω
.Lx00711_0:
 .quad 1
 xchain00709_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2071: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2071]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00709_n3_α
 jmp xchain00709_n10_α
 xchain00709_n7_β:
 jmp xchain00709_n3_α
# IR_LIT_STRING
 xchain00709_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00709_n11_α
 xchain00709_n8_β:
 jmp proc_setinsert_ω
.Lx00712_0:
 .quad .Lx00712_0_s
.Lx00712_0_s:
 .string "insert(S,5)"
# IR_VAR
 xchain00709_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00709_n12_α
 xchain00709_n9_β:
 jmp proc_setinsert_ω
# IR_ASSIGN gva
 xchain00709_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00709_n13_α
 xchain00709_n10_β:
 jmp xchain00709_n3_α
# IR_RETURN
 xchain00709_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsert_γ
# IR_TO
 xchain00709_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00713_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00709_n14_α
 xchain00709_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00713_0
# IR_LIT_INTEGER
 xchain00709_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00714_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00709_n15_α
 xchain00709_n13_β:
 jmp xchain00709_n3_α
.Lx00714_0:
 .quad 5
# IR_VAR
 xchain00709_n14_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00709_n16_α
 xchain00709_n14_β:
 jmp xchain00709_n12_β
 xchain00709_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn2082: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2082]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00709_n3_α
 jmp xchain00709_n17_α
 xchain00709_n15_β:
 jmp xchain00709_n3_α
# IR_LIT_INTEGER
 xchain00709_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00709_n18_α
 xchain00709_n16_β:
 jmp xchain00709_n12_β
.Lx00715_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00709_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00709_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00709_n3_α
 xchain00709_n17_β:
 jmp xchain00709_n3_α
 xchain00709_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2087: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2087]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00709_n12_β
 jmp xchain00709_n12_β
 xchain00709_n18_β:
 jmp xchain00709_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00709_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00709_n19_β:
 jmp xchain00709_n3_α
proc_setinsert_res:
add rsp, 8
pop rbp
proc_setinsert_β:
jmp proc_setinsert_ω
proc_setinsert_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_setinsert_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_setmember_α
proc_setmember_α:
#=======================================================================================================================
    .global proc_setmember_α
    .global proc_setmember_β
    .global proc_setmember_γ
    .global proc_setmember_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_setmember_α_body:
# IR_VAR_REF
 xchain00716_n0_α:
 mov rdi, 1879052944
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00716_n1_α
 xchain00716_n0_β:
 jmp xchain00716_n3_α
# IR_NULLTEST_VAR
 xchain00716_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00716_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00716_n3_α
 cmp eax, 0
 jne xchain00716_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00716_n2_α
 xchain00716_n1_β:
 jmp xchain00716_n3_α
# IR_LIT_INTEGER
 xchain00716_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00717_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00716_n4_α
 xchain00716_n2_β:
 jmp xchain00716_n3_α
.Lx00717_0:
 .quad 1
# IR_VAR
 xchain00716_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00716_n5_α
 xchain00716_n3_β:
 jmp xchain00716_n6_α
# IR_ASSIGN_VAR
 xchain00716_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00716_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00716_n7_α
 xchain00716_n4_β:
 jmp xchain00716_n3_α
# IR_UNOP
 xchain00716_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00716_n6_α
 cmp eax, 0
 jne xchain00716_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00716_n8_α
 xchain00716_n5_β:
 jmp xchain00716_n6_α
# IR_LIT_INTEGER
 xchain00716_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00718_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00716_n9_α
 xchain00716_n6_β:
 jmp proc_setmember_ω
.Lx00718_0:
 .quad 1
 xchain00716_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2101: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2101]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00716_n3_α
 jmp xchain00716_n10_α
 xchain00716_n7_β:
 jmp xchain00716_n3_α
# IR_LIT_STRING
 xchain00716_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00716_n11_α
 xchain00716_n8_β:
 jmp proc_setmember_ω
.Lx00719_0:
 .quad .Lx00719_0_s
.Lx00719_0_s:
 .string "member(S,5)"
# IR_VAR
 xchain00716_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00716_n12_α
 xchain00716_n9_β:
 jmp proc_setmember_ω
# IR_ASSIGN gva
 xchain00716_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052928], rax
 mov qword ptr [1879052936], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00716_n13_α
 xchain00716_n10_β:
 jmp xchain00716_n3_α
# IR_RETURN
 xchain00716_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setmember_γ
# IR_TO
 xchain00716_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00720_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00716_n14_α
 xchain00716_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00720_0
# IR_LIT_INTEGER
 xchain00716_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00716_n15_α
 xchain00716_n13_β:
 jmp xchain00716_n3_α
.Lx00721_0:
 .quad 5
# IR_VAR
 xchain00716_n14_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00716_n16_α
 xchain00716_n14_β:
 jmp xchain00716_n12_β
 xchain00716_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn2112: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2112]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00716_n3_α
 jmp xchain00716_n17_α
 xchain00716_n15_β:
 jmp xchain00716_n3_α
# IR_LIT_INTEGER
 xchain00716_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00716_n18_α
 xchain00716_n16_β:
 jmp xchain00716_n12_β
.Lx00722_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00716_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00716_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00716_n3_α
 xchain00716_n17_β:
 jmp xchain00716_n3_α
 xchain00716_n18_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2117: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2117]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00716_n12_β
 jmp xchain00716_n12_β
 xchain00716_n18_β:
 jmp xchain00716_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00716_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00716_n19_β:
 jmp xchain00716_n3_α
proc_setmember_res:
add rsp, 8
pop rbp
proc_setmember_β:
jmp proc_setmember_ω
proc_setmember_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_setmember_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_setinsdel_α
proc_setinsdel_α:
#=======================================================================================================================
    .global proc_setinsdel_α
    .global proc_setinsdel_β
    .global proc_setinsdel_γ
    .global proc_setinsdel_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_setinsdel_α_body:
# IR_VAR_REF
 xchain00723_n0_α:
 mov rdi, 1879052976
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00723_n1_α
 xchain00723_n0_β:
 jmp xchain00723_n3_α
# IR_NULLTEST_VAR
 xchain00723_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00723_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00723_n3_α
 cmp eax, 0
 jne xchain00723_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00723_n2_α
 xchain00723_n1_β:
 jmp xchain00723_n3_α
# IR_LIT_INTEGER
 xchain00723_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00723_n4_α
 xchain00723_n2_β:
 jmp xchain00723_n3_α
.Lx00724_0:
 .quad 1
# IR_VAR
 xchain00723_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00723_n5_α
 xchain00723_n3_β:
 jmp xchain00723_n6_α
# IR_ASSIGN_VAR
 xchain00723_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00723_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00723_n7_α
 xchain00723_n4_β:
 jmp xchain00723_n3_α
# IR_UNOP
 xchain00723_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00723_n6_α
 cmp eax, 0
 jne xchain00723_n6_α
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00723_n8_α
 xchain00723_n5_β:
 jmp xchain00723_n6_α
# IR_LIT_INTEGER
 xchain00723_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00723_n9_α
 xchain00723_n6_β:
 jmp proc_setinsdel_ω
.Lx00725_0:
 .quad 1
 xchain00723_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2131: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2131]
 lea rsi, [rbp + 544]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain00723_n3_α
 jmp xchain00723_n10_α
 xchain00723_n7_β:
 jmp xchain00723_n3_α
# IR_LIT_STRING
 xchain00723_n8_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00723_n11_α
 xchain00723_n8_β:
 jmp proc_setinsdel_ω
.Lx00726_0:
 .quad .Lx00726_0_s
.Lx00726_0_s:
 .string "insert+delete"
# IR_VAR
 xchain00723_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00723_n12_α
 xchain00723_n9_β:
 jmp proc_setinsdel_ω
# IR_ASSIGN gva
 xchain00723_n10_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00723_n13_α
 xchain00723_n10_β:
 jmp xchain00723_n3_α
# IR_RETURN
 xchain00723_n11_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsdel_γ
# IR_TO
 xchain00723_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00727_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00723_n14_α
 xchain00723_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00727_0
# IR_MOVE_LABEL
 xchain00723_n13_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 lea rax, [rip + xchain00723_n3_α]
 mov qword ptr [rbp + 496], rax
 jmp xchain00723_n3_α
 xchain00723_n13_β:
 jmp xchain00723_n3_α
# IR_VAR
 xchain00723_n14_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00723_n16_α
 xchain00723_n14_β:
 jmp xchain00723_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00723_n15_α:
 jmp qword ptr [rbp + 496]
 xchain00723_n15_β:
 jmp xchain00723_n3_α
# IR_LIT_INTEGER
 xchain00723_n16_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00728_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00723_n17_α
 xchain00723_n16_β:
 jmp xchain00723_n12_β
.Lx00728_0:
 .quad 5
 xchain00723_n17_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+224]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn2146: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2146]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00723_n12_β
 jmp xchain00723_n18_α
 xchain00723_n17_β:
 jmp xchain00723_n12_β
# IR_LIT_INTEGER
 xchain00723_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00723_n19_α
 xchain00723_n18_β:
 jmp xchain00723_n12_β
.Lx00729_0:
 .quad 5
 xchain00723_n19_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+160]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2149: .string "delete"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2149]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00723_n12_β
 jmp xchain00723_n12_β
 xchain00723_n19_β:
 jmp xchain00723_n12_β
proc_setinsdel_res:
add rsp, 8
pop rbp
proc_setinsdel_β:
jmp proc_setinsdel_ω
proc_setinsdel_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_setinsdel_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_setpick_α
proc_setpick_α:
#=======================================================================================================================
    .global proc_setpick_α
    .global proc_setpick_β
    .global proc_setpick_γ
    .global proc_setpick_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 624
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 624
  call rt_jmp_frame_lexprep@PLT
proc_setpick_α_body:
# IR_VAR_REF
 xchain00730_n0_α:
 mov rdi, 1879053008
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00730_n1_α
 xchain00730_n0_β:
 jmp xchain00730_n3_α
# IR_NULLTEST_VAR
 xchain00730_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00730_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00730_n3_α
 cmp eax, 0
 jne xchain00730_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00730_n2_α
 xchain00730_n1_β:
 jmp xchain00730_n3_α
# IR_LIT_INTEGER
 xchain00730_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00731_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00730_n4_α
 xchain00730_n2_β:
 jmp xchain00730_n3_α
.Lx00731_0:
 .quad 1
# IR_VAR
 xchain00730_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00730_n5_α
 xchain00730_n3_β:
 jmp xchain00730_n6_α
# IR_ASSIGN_VAR
 xchain00730_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00730_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00730_n7_α
 xchain00730_n4_β:
 jmp xchain00730_n3_α
# IR_UNOP
 xchain00730_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00730_n6_α
 cmp eax, 0
 jne xchain00730_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00730_n8_α
 xchain00730_n5_β:
 jmp xchain00730_n6_α
# IR_LIT_INTEGER
 xchain00730_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00730_n9_α
 xchain00730_n6_β:
 jmp proc_setpick_ω
.Lx00732_0:
 .quad 1
 xchain00730_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2161: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2161]
 lea rsi, [rbp + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00730_n3_α
 jmp xchain00730_n10_α
 xchain00730_n7_β:
 jmp xchain00730_n3_α
# IR_LIT_STRING
 xchain00730_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00730_n11_α
 xchain00730_n8_β:
 jmp proc_setpick_ω
.Lx00733_0:
 .quad .Lx00733_0_s
.Lx00733_0_s:
 .string "?S"
# IR_VAR
 xchain00730_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00730_n12_α
 xchain00730_n9_β:
 jmp proc_setpick_ω
# IR_ASSIGN gva
 xchain00730_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00730_n13_α
 xchain00730_n10_β:
 jmp xchain00730_n3_α
# IR_RETURN
 xchain00730_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setpick_γ
# IR_TO
 xchain00730_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00734_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00730_n14_α
 xchain00730_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00734_0
# IR_LIT_INTEGER
 xchain00730_n13_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00730_n15_α
 xchain00730_n13_β:
 jmp xchain00730_n3_α
.Lx00735_0:
 .quad 5
# IR_VAR_REF
 xchain00730_n14_α:
 mov rdi, 1879052992
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00730_n16_α
 xchain00730_n14_β:
 jmp xchain00730_n12_β
 xchain00730_n15_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+384]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn2173: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2173]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00730_n3_α
 jmp xchain00730_n17_α
 xchain00730_n15_β:
 jmp xchain00730_n3_α
# IR_RANDOM
 xchain00730_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00730_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00730_n18_α
 xchain00730_n16_β:
 jmp xchain00730_n12_β
# IR_MOVE_LABEL
 xchain00730_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00730_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00730_n3_α
 xchain00730_n17_β:
 jmp xchain00730_n3_α
# IR_DEREF variable -> value
 xchain00730_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00730_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00730_n12_β
 xchain00730_n18_β:
 jmp xchain00730_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00730_n19_α:
 jmp qword ptr [rbp + 336]
 xchain00730_n19_β:
 jmp xchain00730_n3_α
proc_setpick_res:
add rsp, 8
pop rbp
proc_setpick_β:
jmp proc_setpick_ω
proc_setpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 632]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
proc_setpick_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_setbang_α
proc_setbang_α:
#=======================================================================================================================
    .global proc_setbang_α
    .global proc_setbang_β
    .global proc_setbang_γ
    .global proc_setbang_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_setbang_α_body:
# IR_VAR_REF
 xchain00736_n0_α:
 mov rdi, 1879053040
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00736_n1_α
 xchain00736_n0_β:
 jmp xchain00736_n3_α
# IR_NULLTEST_VAR
 xchain00736_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00736_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00736_n3_α
 cmp eax, 0
 jne xchain00736_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00736_n2_α
 xchain00736_n1_β:
 jmp xchain00736_n3_α
# IR_LIT_INTEGER
 xchain00736_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00737_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00736_n4_α
 xchain00736_n2_β:
 jmp xchain00736_n3_α
.Lx00737_0:
 .quad 1
# IR_VAR
 xchain00736_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00736_n5_α
 xchain00736_n3_β:
 jmp xchain00736_n6_α
# IR_ASSIGN_VAR
 xchain00736_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00736_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00736_n7_α
 xchain00736_n4_β:
 jmp xchain00736_n3_α
# IR_UNOP
 xchain00736_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00736_n6_α
 cmp eax, 0
 jne xchain00736_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00736_n8_α
 xchain00736_n5_β:
 jmp xchain00736_n6_α
# IR_LIT_INTEGER
 xchain00736_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00736_n9_α
 xchain00736_n6_β:
 jmp proc_setbang_ω
.Lx00738_0:
 .quad 1
 xchain00736_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2191: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2191]
 lea rsi, [rbp + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00736_n3_α
 jmp xchain00736_n10_α
 xchain00736_n7_β:
 jmp xchain00736_n3_α
# IR_LIT_STRING
 xchain00736_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00736_n11_α
 xchain00736_n8_β:
 jmp proc_setbang_ω
.Lx00739_0:
 .quad .Lx00739_0_s
.Lx00739_0_s:
 .string "!S"
# IR_VAR
 xchain00736_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00736_n12_α
 xchain00736_n9_β:
 jmp proc_setbang_ω
# IR_ASSIGN gva
 xchain00736_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00736_n13_α
 xchain00736_n10_β:
 jmp xchain00736_n3_α
# IR_RETURN
 xchain00736_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setbang_γ
# IR_TO
 xchain00736_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00740_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00736_n14_α
 xchain00736_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00740_0
# IR_LIT_INTEGER
 xchain00736_n13_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00741_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00736_n15_α
 xchain00736_n13_β:
 jmp xchain00736_n3_α
.Lx00741_0:
 .quad 1
# IR_VAR
 xchain00736_n14_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00736_n16_α
 xchain00736_n14_β:
 jmp xchain00736_n12_β
# IR_LIT_INTEGER
 xchain00736_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00736_n17_α
 xchain00736_n15_β:
 jmp xchain00736_n3_α
.Lx00742_0:
 .quad 5
# IR_LIST_BANG
 xchain00736_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00743_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00736_n12_β
 jmp xchain00736_n16_β
 xchain00736_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00743_0
# IR_TO
 xchain00736_n17_α:
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 480], rax
.Lx00744_0:
 mov rax, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 536]
 cmp rax, rcx
 jg xchain00736_n3_α
 mov qword ptr [rbp + 464], 6
 mov qword ptr [rbp + 472], rax
 jmp xchain00736_n18_α
 xchain00736_n17_β:
 inc qword ptr [rbp + 480]
 jmp .Lx00744_0
 xchain00736_n18_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+384]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn2207: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2207]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00736_n3_α
 jmp xchain00736_n17_β
 xchain00736_n18_β:
 jmp xchain00736_n3_α
proc_setbang_res:
add rsp, 8
pop rbp
proc_setbang_β:
jmp proc_setbang_ω
proc_setbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_setbang_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_tblcreate_α
proc_tblcreate_α:
#=======================================================================================================================
    .global proc_tblcreate_α
    .global proc_tblcreate_β
    .global proc_tblcreate_γ
    .global proc_tblcreate_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
  mov rdi, rsp
  mov esi, 304
  call rt_jmp_frame_lexprep@PLT
proc_tblcreate_α_body:
# IR_VAR
 xchain00745_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00745_n1_α
 xchain00745_n0_β:
 jmp xchain00745_n2_α
# IR_UNOP
 xchain00745_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00745_n2_α
 cmp eax, 0
 jne xchain00745_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00745_n3_α
 xchain00745_n1_β:
 jmp xchain00745_n2_α
# IR_LIT_INTEGER
 xchain00745_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00746_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00745_n4_α
 xchain00745_n2_β:
 jmp proc_tblcreate_ω
.Lx00746_0:
 .quad 1
# IR_LIT_STRING
 xchain00745_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00747_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00745_n5_α
 xchain00745_n3_β:
 jmp proc_tblcreate_ω
.Lx00747_0:
 .quad .Lx00747_0_s
.Lx00747_0_s:
 .string "table()"
# IR_VAR
 xchain00745_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00745_n6_α
 xchain00745_n4_β:
 jmp proc_tblcreate_ω
# IR_RETURN
 xchain00745_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblcreate_γ
# IR_TO
 xchain00745_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00748_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00745_n7_α
 xchain00745_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00748_0
 xchain00745_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2220: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2220]
 lea rsi, [rbp + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00745_n6_β
 jmp xchain00745_n6_β
 xchain00745_n7_β:
 jmp xchain00745_n6_β
proc_tblcreate_res:
add rsp, 8
pop rbp
proc_tblcreate_β:
jmp proc_tblcreate_ω
proc_tblcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_tblcreate_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_tblasgn_α
proc_tblasgn_α:
#=======================================================================================================================
    .global proc_tblasgn_α
    .global proc_tblasgn_β
    .global proc_tblasgn_γ
    .global proc_tblasgn_ω
  sub rsp, 752
  mov [rsp + 728], rcx
  mov [rsp + 736], rdx
  mov [rsp + 744], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 720
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 712], rsp
  mov rdi, rsp
  mov esi, 720
  call rt_jmp_frame_lexprep@PLT
proc_tblasgn_α_body:
# IR_VAR_REF
 xchain00749_n0_α:
 mov rdi, 1879053072
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00749_n1_α
 xchain00749_n0_β:
 jmp xchain00749_n3_α
# IR_NULLTEST_VAR
 xchain00749_n1_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 99
 je xchain00749_n3_α
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00749_n3_α
 cmp eax, 0
 jne xchain00749_n3_α
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 632], rax
 jmp xchain00749_n2_α
 xchain00749_n1_β:
 jmp xchain00749_n3_α
# IR_LIT_INTEGER
 xchain00749_n2_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00750_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00749_n4_α
 xchain00749_n2_β:
 jmp xchain00749_n3_α
.Lx00750_0:
 .quad 1
# IR_VAR
 xchain00749_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00749_n5_α
 xchain00749_n3_β:
 jmp xchain00749_n6_α
# IR_ASSIGN_VAR
 xchain00749_n4_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00749_n3_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00749_n7_α
 xchain00749_n4_β:
 jmp xchain00749_n3_α
# IR_UNOP
 xchain00749_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00749_n6_α
 cmp eax, 0
 jne xchain00749_n6_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00749_n8_α
 xchain00749_n5_β:
 jmp xchain00749_n6_α
# IR_LIT_INTEGER
 xchain00749_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00749_n9_α
 xchain00749_n6_β:
 jmp proc_tblasgn_ω
.Lx00751_0:
 .quad 1
 xchain00749_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2232: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2232]
 lea rsi, [rbp + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00749_n3_α
 jmp xchain00749_n10_α
 xchain00749_n7_β:
 jmp xchain00749_n3_α
# IR_LIT_STRING
 xchain00749_n8_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00749_n11_α
 xchain00749_n8_β:
 jmp proc_tblasgn_ω
.Lx00752_0:
 .quad .Lx00752_0_s
.Lx00752_0_s:
 .string "T[5] := 1"
# IR_VAR
 xchain00749_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00749_n12_α
 xchain00749_n9_β:
 jmp proc_tblasgn_ω
# IR_ASSIGN gva
 xchain00749_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00749_n13_α
 xchain00749_n10_β:
 jmp xchain00749_n3_α
# IR_RETURN
 xchain00749_n11_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblasgn_γ
# IR_TO
 xchain00749_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00753_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00749_n14_α
 xchain00749_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00753_0
# IR_LIT_INTEGER
 xchain00749_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00754_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00749_n15_α
 xchain00749_n13_β:
 jmp xchain00749_n3_α
.Lx00754_0:
 .quad 5
# IR_VAR_REF
 xchain00749_n14_α:
 mov rdi, 1879053056
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00749_n16_α
 xchain00749_n14_β:
 jmp xchain00749_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00749_n15_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00749_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00749_n17_α
 xchain00749_n15_β:
 jmp xchain00749_n3_α
# IR_LIT_INTEGER
 xchain00749_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00749_n18_α
 xchain00749_n16_β:
 jmp xchain00749_n12_β
.Lx00755_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00749_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00756_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00749_n19_α
 xchain00749_n17_β:
 jmp xchain00749_n3_α
.Lx00756_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00749_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00749_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00749_n20_α
 xchain00749_n18_β:
 jmp xchain00749_n12_β
# IR_ASSIGN_VAR
 xchain00749_n19_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00749_n3_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00749_n21_α
 xchain00749_n19_β:
 jmp xchain00749_n3_α
# IR_LIT_INTEGER
 xchain00749_n20_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00757_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00749_n22_α
 xchain00749_n20_β:
 jmp xchain00749_n12_β
.Lx00757_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00749_n21_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + xchain00749_n3_α]
 mov qword ptr [rbp + 416], rax
 jmp xchain00749_n3_α
 xchain00749_n21_β:
 jmp xchain00749_n3_α
# IR_ASSIGN_VAR
 xchain00749_n22_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00749_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00749_n12_β
 xchain00749_n22_β:
 jmp xchain00749_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00749_n23_α:
 jmp qword ptr [rbp + 416]
 xchain00749_n23_β:
 jmp xchain00749_n3_α
proc_tblasgn_res:
add rsp, 8
pop rbp
proc_tblasgn_β:
jmp proc_tblasgn_ω
proc_tblasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 728]
lea rsp, [rbp + 752]
mov rbp, [rbp + 744]
jmp rax
proc_tblasgn_ω:
mov rax, [rbp + 736]
lea rsp, [rbp + 752]
mov rbp, [rbp + 744]
jmp rax
  .globl proc_tblsub_α
proc_tblsub_α:
#=======================================================================================================================
    .global proc_tblsub_α
    .global proc_tblsub_β
    .global proc_tblsub_γ
    .global proc_tblsub_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_tblsub_α_body:
# IR_VAR_REF
 xchain00758_n0_α:
 mov rdi, 1879053104
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00758_n1_α
 xchain00758_n0_β:
 jmp xchain00758_n3_α
# IR_NULLTEST_VAR
 xchain00758_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00758_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00758_n3_α
 cmp eax, 0
 jne xchain00758_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00758_n2_α
 xchain00758_n1_β:
 jmp xchain00758_n3_α
# IR_LIT_INTEGER
 xchain00758_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00759_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00758_n4_α
 xchain00758_n2_β:
 jmp xchain00758_n3_α
.Lx00759_0:
 .quad 1
# IR_VAR
 xchain00758_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00758_n5_α
 xchain00758_n3_β:
 jmp xchain00758_n6_α
# IR_ASSIGN_VAR
 xchain00758_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00758_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00758_n7_α
 xchain00758_n4_β:
 jmp xchain00758_n3_α
# IR_UNOP
 xchain00758_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00758_n6_α
 cmp eax, 0
 jne xchain00758_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00758_n8_α
 xchain00758_n5_β:
 jmp xchain00758_n6_α
# IR_LIT_INTEGER
 xchain00758_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00758_n9_α
 xchain00758_n6_β:
 jmp proc_tblsub_ω
.Lx00760_0:
 .quad 1
 xchain00758_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2265: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2265]
 lea rsi, [rbp + 432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00758_n3_α
 jmp xchain00758_n10_α
 xchain00758_n7_β:
 jmp xchain00758_n3_α
# IR_LIT_STRING
 xchain00758_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00758_n11_α
 xchain00758_n8_β:
 jmp proc_tblsub_ω
.Lx00761_0:
 .quad .Lx00761_0_s
.Lx00761_0_s:
 .string "T[5]"
# IR_VAR
 xchain00758_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00758_n12_α
 xchain00758_n9_β:
 jmp proc_tblsub_ω
# IR_ASSIGN gva
 xchain00758_n10_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00758_n13_α
 xchain00758_n10_β:
 jmp xchain00758_n3_α
# IR_RETURN
 xchain00758_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblsub_γ
# IR_TO
 xchain00758_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00762_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00758_n14_α
 xchain00758_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00762_0
# IR_LIT_INTEGER
 xchain00758_n13_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00758_n15_α
 xchain00758_n13_β:
 jmp xchain00758_n3_α
.Lx00763_0:
 .quad 5
# IR_VAR_REF
 xchain00758_n14_α:
 mov rdi, 1879053088
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00758_n16_α
 xchain00758_n14_β:
 jmp xchain00758_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00758_n15_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00758_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00758_n17_α
 xchain00758_n15_β:
 jmp xchain00758_n3_α
# IR_LIT_INTEGER
 xchain00758_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00758_n18_α
 xchain00758_n16_β:
 jmp xchain00758_n12_β
.Lx00764_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00758_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00758_n19_α
 xchain00758_n17_β:
 jmp xchain00758_n3_α
.Lx00765_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00758_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00758_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00758_n20_α
 xchain00758_n18_β:
 jmp xchain00758_n12_β
# IR_ASSIGN_VAR
 xchain00758_n19_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00758_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00758_n21_α
 xchain00758_n19_β:
 jmp xchain00758_n3_α
# IR_DEREF variable -> value
 xchain00758_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00758_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00758_n12_β
 xchain00758_n20_β:
 jmp xchain00758_n12_β
# IR_MOVE_LABEL
 xchain00758_n21_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00758_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00758_n3_α
 xchain00758_n21_β:
 jmp xchain00758_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00758_n22_α:
 jmp qword ptr [rbp + 384]
 xchain00758_n22_β:
 jmp xchain00758_n3_α
proc_tblsub_res:
add rsp, 8
pop rbp
proc_tblsub_β:
jmp proc_tblsub_ω
proc_tblsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_tblsub_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_recconstr_α
proc_recconstr_α:
#=======================================================================================================================
    .global proc_recconstr_α
    .global proc_recconstr_β
    .global proc_recconstr_γ
    .global proc_recconstr_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_recconstr_α_body:
# IR_VAR
 xchain00766_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00766_n1_α
 xchain00766_n0_β:
 jmp xchain00766_n2_α
# IR_UNOP
 xchain00766_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00766_n2_α
 cmp eax, 0
 jne xchain00766_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00766_n3_α
 xchain00766_n1_β:
 jmp xchain00766_n2_α
# IR_LIT_INTEGER
 xchain00766_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00766_n4_α
 xchain00766_n2_β:
 jmp proc_recconstr_ω
.Lx00767_0:
 .quad 1
# IR_LIT_STRING
 xchain00766_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00768_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00766_n5_α
 xchain00766_n3_β:
 jmp proc_recconstr_ω
.Lx00768_0:
 .quad .Lx00768_0_s
.Lx00768_0_s:
 .string "record(4,7)"
# IR_VAR
 xchain00766_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00766_n6_α
 xchain00766_n4_β:
 jmp proc_recconstr_ω
# IR_RETURN
 xchain00766_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recconstr_γ
# IR_TO
 xchain00766_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00769_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00766_n7_α
 xchain00766_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00769_0
# IR_LIT_INTEGER
 xchain00766_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00770_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00766_n8_α
 xchain00766_n7_β:
 jmp xchain00766_n6_β
.Lx00770_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00766_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00766_n9_α
 xchain00766_n8_β:
 jmp xchain00766_n6_β
.Lx00771_0:
 .quad 7
 xchain00766_n9_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2300: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2300]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00766_n6_β
 jmp xchain00766_n6_β
 xchain00766_n9_β:
 jmp xchain00766_n6_β
proc_recconstr_res:
add rsp, 8
pop rbp
proc_recconstr_β:
jmp proc_recconstr_ω
proc_recconstr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_recconstr_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_reccopy_α
proc_reccopy_α:
#=======================================================================================================================
    .global proc_reccopy_α
    .global proc_reccopy_β
    .global proc_reccopy_γ
    .global proc_reccopy_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_reccopy_α_body:
# IR_VAR_REF
 xchain00772_n0_α:
 mov rdi, 1879053136
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00772_n1_α
 xchain00772_n0_β:
 jmp xchain00772_n3_α
# IR_NULLTEST_VAR
 xchain00772_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00772_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00772_n3_α
 cmp eax, 0
 jne xchain00772_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00772_n2_α
 xchain00772_n1_β:
 jmp xchain00772_n3_α
# IR_LIT_INTEGER
 xchain00772_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00773_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00772_n4_α
 xchain00772_n2_β:
 jmp xchain00772_n3_α
.Lx00773_0:
 .quad 1
# IR_VAR
 xchain00772_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00772_n5_α
 xchain00772_n3_β:
 jmp xchain00772_n6_α
# IR_ASSIGN_VAR
 xchain00772_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00772_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00772_n7_α
 xchain00772_n4_β:
 jmp xchain00772_n3_α
# IR_UNOP
 xchain00772_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00772_n6_α
 cmp eax, 0
 jne xchain00772_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00772_n8_α
 xchain00772_n5_β:
 jmp xchain00772_n6_α
# IR_LIT_INTEGER
 xchain00772_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00772_n9_α
 xchain00772_n6_β:
 jmp proc_reccopy_ω
.Lx00774_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00772_n7_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00772_n10_α
 xchain00772_n7_β:
 jmp xchain00772_n3_α
.Lx00775_0:
 .quad 4
# IR_LIT_STRING
 xchain00772_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00772_n11_α
 xchain00772_n8_β:
 jmp proc_reccopy_ω
.Lx00776_0:
 .quad .Lx00776_0_s
.Lx00776_0_s:
 .string "copy(R)"
# IR_VAR
 xchain00772_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00772_n12_α
 xchain00772_n9_β:
 jmp proc_reccopy_ω
# IR_LIT_INTEGER
 xchain00772_n10_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00772_n13_α
 xchain00772_n10_β:
 jmp xchain00772_n3_α
.Lx00777_0:
 .quad 7
# IR_RETURN
 xchain00772_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reccopy_γ
# IR_TO
 xchain00772_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00778_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00772_n14_α
 xchain00772_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00778_0
 xchain00772_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn2320: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2320]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00772_n3_α
 jmp xchain00772_n15_α
 xchain00772_n13_β:
 jmp xchain00772_n3_α
# IR_VAR
 xchain00772_n14_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00772_n16_α
 xchain00772_n14_β:
 jmp xchain00772_n12_β
# IR_ASSIGN gva
 xchain00772_n15_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00772_n17_α
 xchain00772_n15_β:
 jmp xchain00772_n3_α
 xchain00772_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2324: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2324]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00772_n12_β
 jmp xchain00772_n12_β
 xchain00772_n16_β:
 jmp xchain00772_n12_β
# IR_MOVE_LABEL
 xchain00772_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00772_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00772_n3_α
 xchain00772_n17_β:
 jmp xchain00772_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00772_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00772_n18_β:
 jmp xchain00772_n3_α
proc_reccopy_res:
add rsp, 8
pop rbp
proc_reccopy_β:
jmp proc_reccopy_ω
proc_reccopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_reccopy_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_recfield_α
proc_recfield_α:
#=======================================================================================================================
    .global proc_recfield_α
    .global proc_recfield_β
    .global proc_recfield_γ
    .global proc_recfield_ω
  sub rsp, 656
  mov [rsp + 632], rcx
  mov [rsp + 640], rdx
  mov [rsp + 648], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 624
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 616], rsp
  mov rdi, rsp
  mov esi, 624
  call rt_jmp_frame_lexprep@PLT
proc_recfield_α_body:
# IR_VAR_REF
 xchain00779_n0_α:
 mov rdi, 1879053168
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00779_n1_α
 xchain00779_n0_β:
 jmp xchain00779_n3_α
# IR_NULLTEST_VAR
 xchain00779_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00779_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00779_n3_α
 cmp eax, 0
 jne xchain00779_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00779_n2_α
 xchain00779_n1_β:
 jmp xchain00779_n3_α
# IR_LIT_INTEGER
 xchain00779_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00779_n4_α
 xchain00779_n2_β:
 jmp xchain00779_n3_α
.Lx00780_0:
 .quad 1
# IR_VAR
 xchain00779_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00779_n5_α
 xchain00779_n3_β:
 jmp xchain00779_n6_α
# IR_ASSIGN_VAR
 xchain00779_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00779_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00779_n7_α
 xchain00779_n4_β:
 jmp xchain00779_n3_α
# IR_UNOP
 xchain00779_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00779_n6_α
 cmp eax, 0
 jne xchain00779_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00779_n8_α
 xchain00779_n5_β:
 jmp xchain00779_n6_α
# IR_LIT_INTEGER
 xchain00779_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00781_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00779_n9_α
 xchain00779_n6_β:
 jmp proc_recfield_ω
.Lx00781_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00779_n7_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00779_n10_α
 xchain00779_n7_β:
 jmp xchain00779_n3_α
.Lx00782_0:
 .quad 4
# IR_LIT_STRING
 xchain00779_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00783_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00779_n11_α
 xchain00779_n8_β:
 jmp proc_recfield_ω
.Lx00783_0:
 .quad .Lx00783_0_s
.Lx00783_0_s:
 .string "R.f"
# IR_VAR
 xchain00779_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00779_n12_α
 xchain00779_n9_β:
 jmp proc_recfield_ω
# IR_LIT_INTEGER
 xchain00779_n10_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00779_n13_α
 xchain00779_n10_β:
 jmp xchain00779_n3_α
.Lx00784_0:
 .quad 7
# IR_RETURN
 xchain00779_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recfield_γ
# IR_TO
 xchain00779_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00785_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00779_n14_α
 xchain00779_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00785_0
 xchain00779_n13_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn2348: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2348]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00779_n3_α
 jmp xchain00779_n15_α
 xchain00779_n13_β:
 jmp xchain00779_n3_α
# IR_VAR
 xchain00779_n14_α:
 mov rax, qword ptr [1879053152]
 mov rdx, qword ptr [1879053160]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00779_n16_α
 xchain00779_n14_β:
 jmp xchain00779_n12_β
# IR_ASSIGN gva
 xchain00779_n15_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00779_n17_α
 xchain00779_n15_β:
 jmp xchain00779_n3_α
# IR_FIELD_GET
 xchain00779_n16_α:
 mov rdi, qword ptr [rip + .Lx00786_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00779_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00779_n12_β
 xchain00779_n16_β:
 jmp xchain00779_n12_β
.Lx00786_0:
 .quad .Lx00786_0_s
.Lx00786_0_s:
 .string "y"
# IR_MOVE_LABEL
 xchain00779_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00779_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00779_n3_α
 xchain00779_n17_β:
 jmp xchain00779_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00779_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00779_n18_β:
 jmp xchain00779_n3_α
proc_recfield_res:
add rsp, 8
pop rbp
proc_recfield_β:
jmp proc_recfield_ω
proc_recfield_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 632]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
proc_recfield_ω:
mov rax, [rbp + 640]
lea rsp, [rbp + 656]
mov rbp, [rbp + 648]
jmp rax
  .globl proc_bigfield_α
proc_bigfield_α:
#=======================================================================================================================
    .global proc_bigfield_α
    .global proc_bigfield_β
    .global proc_bigfield_γ
    .global proc_bigfield_ω
  sub rsp, 560
  mov [rsp + 536], rcx
  mov [rsp + 544], rdx
  mov [rsp + 552], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 528
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 520], rsp
  mov rdi, rsp
  mov esi, 528
  call rt_jmp_frame_lexprep@PLT
proc_bigfield_α_body:
# IR_VAR_REF
 xchain00787_n0_α:
 mov rdi, 1879053200
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00787_n1_α
 xchain00787_n0_β:
 jmp xchain00787_n3_α
# IR_NULLTEST_VAR
 xchain00787_n1_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 99
 je xchain00787_n3_α
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00787_n3_α
 cmp eax, 0
 jne xchain00787_n3_α
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 440], rax
 jmp xchain00787_n2_α
 xchain00787_n1_β:
 jmp xchain00787_n3_α
# IR_LIT_INTEGER
 xchain00787_n2_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00787_n4_α
 xchain00787_n2_β:
 jmp xchain00787_n3_α
.Lx00788_0:
 .quad 1
# IR_VAR
 xchain00787_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00787_n5_α
 xchain00787_n3_β:
 jmp xchain00787_n6_α
# IR_ASSIGN_VAR
 xchain00787_n4_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00787_n3_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00787_n7_α
 xchain00787_n4_β:
 jmp xchain00787_n3_α
# IR_UNOP
 xchain00787_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00787_n6_α
 cmp eax, 0
 jne xchain00787_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00787_n8_α
 xchain00787_n5_β:
 jmp xchain00787_n6_α
# IR_LIT_INTEGER
 xchain00787_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00789_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00787_n9_α
 xchain00787_n6_β:
 jmp proc_bigfield_ω
.Lx00789_0:
 .quad 1
 xchain00787_n7_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2367: .string "bigrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2367]
 lea rsi, [rbp + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00787_n3_α
 jmp xchain00787_n10_α
 xchain00787_n7_β:
 jmp xchain00787_n3_α
# IR_LIT_STRING
 xchain00787_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00787_n11_α
 xchain00787_n8_β:
 jmp proc_bigfield_ω
.Lx00790_0:
 .quad .Lx00790_0_s
.Lx00790_0_s:
 .string "R2.f"
# IR_VAR
 xchain00787_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00787_n12_α
 xchain00787_n9_β:
 jmp proc_bigfield_ω
# IR_ASSIGN gva
 xchain00787_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00787_n13_α
 xchain00787_n10_β:
 jmp xchain00787_n3_α
# IR_RETURN
 xchain00787_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_bigfield_γ
# IR_TO
 xchain00787_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00791_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00787_n14_α
 xchain00787_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00791_0
# IR_MOVE_LABEL
 xchain00787_n13_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00787_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00787_n3_α
 xchain00787_n13_β:
 jmp xchain00787_n3_α
# IR_VAR
 xchain00787_n14_α:
 mov rax, qword ptr [1879053184]
 mov rdx, qword ptr [1879053192]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00787_n16_α
 xchain00787_n14_β:
 jmp xchain00787_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00787_n15_α:
 jmp qword ptr [rbp + 336]
 xchain00787_n15_β:
 jmp xchain00787_n3_α
# IR_FIELD_GET
 xchain00787_n16_α:
 mov rdi, qword ptr [rip + .Lx00792_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00787_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00787_n12_β
 xchain00787_n16_β:
 jmp xchain00787_n12_β
.Lx00792_0:
 .quad .Lx00792_0_s
.Lx00792_0_s:
 .string "horatio"
proc_bigfield_res:
add rsp, 8
pop rbp
proc_bigfield_β:
jmp proc_bigfield_ω
proc_bigfield_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 536]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
proc_bigfield_ω:
mov rax, [rbp + 544]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
  .globl proc_globasgn_α
proc_globasgn_α:
#=======================================================================================================================
    .global proc_globasgn_α
    .global proc_globasgn_β
    .global proc_globasgn_γ
    .global proc_globasgn_ω
  sub rsp, 352
  mov [rsp + 328], rcx
  mov [rsp + 336], rdx
  mov [rsp + 344], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 320
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 320
  call rt_jmp_frame_lexprep@PLT
proc_globasgn_α_body:
# IR_VAR
 xchain00793_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00793_n1_α
 xchain00793_n0_β:
 jmp xchain00793_n2_α
# IR_UNOP
 xchain00793_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00793_n2_α
 cmp eax, 0
 jne xchain00793_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00793_n3_α
 xchain00793_n1_β:
 jmp xchain00793_n2_α
# IR_LIT_INTEGER
 xchain00793_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00794_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00793_n4_α
 xchain00793_n2_β:
 jmp proc_globasgn_ω
.Lx00794_0:
 .quad 1
# IR_LIT_STRING
 xchain00793_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00795_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00793_n5_α
 xchain00793_n3_β:
 jmp proc_globasgn_ω
.Lx00795_0:
 .quad .Lx00795_0_s
.Lx00795_0_s:
 .string "global := 1"
# IR_VAR
 xchain00793_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00793_n6_α
 xchain00793_n4_β:
 jmp proc_globasgn_ω
# IR_RETURN
 xchain00793_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_globasgn_γ
# IR_TO
 xchain00793_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00796_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00793_n7_α
 xchain00793_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00796_0
# IR_LIT_INTEGER
 xchain00793_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00797_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00793_n8_α
 xchain00793_n7_β:
 jmp xchain00793_n6_β
.Lx00797_0:
 .quad 1
# IR_ASSIGN gva
 xchain00793_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00793_n6_β
 xchain00793_n8_β:
 jmp xchain00793_n6_β
proc_globasgn_res:
add rsp, 8
pop rbp
proc_globasgn_β:
jmp proc_globasgn_ω
proc_globasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_globasgn_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_loclasgn_α
proc_loclasgn_α:
#=======================================================================================================================
    .global proc_loclasgn_α
    .global proc_loclasgn_β
    .global proc_loclasgn_γ
    .global proc_loclasgn_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 336
  call rt_jmp_frame_lexprep@PLT
proc_loclasgn_α_body:
# IR_VAR
 xchain00798_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00798_n1_α
 xchain00798_n0_β:
 jmp xchain00798_n2_α
# IR_UNOP
 xchain00798_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00798_n2_α
 cmp eax, 0
 jne xchain00798_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00798_n3_α
 xchain00798_n1_β:
 jmp xchain00798_n2_α
# IR_LIT_INTEGER
 xchain00798_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00799_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00798_n4_α
 xchain00798_n2_β:
 jmp proc_loclasgn_ω
.Lx00799_0:
 .quad 1
# IR_LIT_STRING
 xchain00798_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00798_n5_α
 xchain00798_n3_β:
 jmp proc_loclasgn_ω
.Lx00800_0:
 .quad .Lx00800_0_s
.Lx00800_0_s:
 .string "local := 1"
# IR_VAR
 xchain00798_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00798_n6_α
 xchain00798_n4_β:
 jmp proc_loclasgn_ω
# IR_RETURN
 xchain00798_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_loclasgn_γ
# IR_TO
 xchain00798_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00801_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00798_n7_α
 xchain00798_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00801_0
# IR_LIT_INTEGER
 xchain00798_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00802_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00798_n8_α
 xchain00798_n7_β:
 jmp xchain00798_n6_β
.Lx00802_0:
 .quad 1
 xchain00798_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00798_n6_β
 xchain00798_n8_β:
 jmp xchain00798_n6_β
proc_loclasgn_res:
add rsp, 8
pop rbp
proc_loclasgn_β:
jmp proc_loclasgn_ω
proc_loclasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_loclasgn_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_statasgn_α
proc_statasgn_α:
#=======================================================================================================================
    .global proc_statasgn_α
    .global proc_statasgn_β
    .global proc_statasgn_γ
    .global proc_statasgn_ω
  sub rsp, 352
  mov [rsp + 328], rcx
  mov [rsp + 336], rdx
  mov [rsp + 344], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 320
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 320
  call rt_jmp_frame_lexprep@PLT
proc_statasgn_α_body:
# IR_VAR
 xchain00803_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00803_n1_α
 xchain00803_n0_β:
 jmp xchain00803_n2_α
# IR_UNOP
 xchain00803_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00803_n2_α
 cmp eax, 0
 jne xchain00803_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00803_n3_α
 xchain00803_n1_β:
 jmp xchain00803_n2_α
# IR_LIT_INTEGER
 xchain00803_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00804_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00803_n4_α
 xchain00803_n2_β:
 jmp proc_statasgn_ω
.Lx00804_0:
 .quad 1
# IR_LIT_STRING
 xchain00803_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00803_n5_α
 xchain00803_n3_β:
 jmp proc_statasgn_ω
.Lx00805_0:
 .quad .Lx00805_0_s
.Lx00805_0_s:
 .string "static := 1"
# IR_VAR
 xchain00803_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00803_n6_α
 xchain00803_n4_β:
 jmp proc_statasgn_ω
# IR_RETURN
 xchain00803_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_statasgn_γ
# IR_TO
 xchain00803_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00806_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00803_n7_α
 xchain00803_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00806_0
# IR_LIT_INTEGER
 xchain00803_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00807_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00803_n8_α
 xchain00803_n7_β:
 jmp xchain00803_n6_β
.Lx00807_0:
 .quad 1
# IR_ASSIGN gva
 xchain00803_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00803_n6_β
 xchain00803_n8_β:
 jmp xchain00803_n6_β
proc_statasgn_res:
add rsp, 8
pop rbp
proc_statasgn_β:
jmp proc_statasgn_ω
proc_statasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_statasgn_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_readz_α
proc_readz_α:
#=======================================================================================================================
    .global proc_readz_α
    .global proc_readz_β
    .global proc_readz_γ
    .global proc_readz_ω
  sub rsp, 720
  mov [rsp + 696], rcx
  mov [rsp + 704], rdx
  mov [rsp + 712], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 688
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 688
  call rt_jmp_frame_lexprep@PLT
proc_readz_α_body:
# IR_VAR_REF
 xchain00808_n0_α:
 mov rdi, 1879053248
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00808_n1_α
 xchain00808_n0_β:
 jmp xchain00808_n3_α
# IR_NULLTEST_VAR
 xchain00808_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00808_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00808_n3_α
 cmp eax, 0
 jne xchain00808_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00808_n2_α
 xchain00808_n1_β:
 jmp xchain00808_n3_α
# IR_LIT_INTEGER
 xchain00808_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00809_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00808_n4_α
 xchain00808_n2_β:
 jmp xchain00808_n3_α
.Lx00809_0:
 .quad 1
# IR_VAR
 xchain00808_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00808_n5_α
 xchain00808_n3_β:
 jmp xchain00808_n6_α
# IR_ASSIGN_VAR
 xchain00808_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00808_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00808_n7_α
 xchain00808_n4_β:
 jmp xchain00808_n3_α
# IR_UNOP
 xchain00808_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00808_n6_α
 cmp eax, 0
 jne xchain00808_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00808_n8_α
 xchain00808_n5_β:
 jmp xchain00808_n6_α
# IR_LIT_INTEGER
 xchain00808_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00810_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00808_n9_α
 xchain00808_n6_β:
 jmp proc_readz_ω
.Lx00810_0:
 .quad 1
# IR_LIT_STRING
 xchain00808_n7_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00811_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00808_n10_α
 xchain00808_n7_β:
 jmp xchain00808_n3_α
.Lx00811_0:
 .quad .Lx00811_0_s
.Lx00811_0_s:
 .string "/dev/zero"
# IR_LIT_STRING
 xchain00808_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00808_n11_α
 xchain00808_n8_β:
 jmp proc_readz_ω
.Lx00812_0:
 .quad .Lx00812_0_s
.Lx00812_0_s:
 .string "reads(zero,8)"
# IR_VAR
 xchain00808_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00808_n12_α
 xchain00808_n9_β:
 jmp proc_readz_ω
# IR_LIT_STRING
 xchain00808_n10_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00808_n13_α
 xchain00808_n10_β:
 jmp xchain00808_n3_α
.Lx00813_0:
 .quad .Lx00813_0_s
.Lx00813_0_s:
 .string "ru"
# IR_RETURN
 xchain00808_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_readz_γ
# IR_TO
 xchain00808_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00814_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00808_n14_α
 xchain00808_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00814_0
 xchain00808_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn2439: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2439]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00808_n3_α
 jmp xchain00808_n15_α
 xchain00808_n13_β:
 jmp xchain00808_n3_α
# IR_VAR
 xchain00808_n14_α:
 mov rax, qword ptr [1879053232]
 mov rdx, qword ptr [1879053240]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00808_n16_α
 xchain00808_n14_β:
 jmp xchain00808_n12_β
# IR_ASSIGN gva
 xchain00808_n15_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00808_n17_α
 xchain00808_n15_β:
 jmp xchain00808_n3_α
# IR_LIT_INTEGER
 xchain00808_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00815_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00808_n18_α
 xchain00808_n16_β:
 jmp xchain00808_n12_β
.Lx00815_0:
 .quad 8
# IR_MOVE_LABEL
 xchain00808_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00808_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00808_n3_α
 xchain00808_n17_β:
 jmp xchain00808_n3_α
 xchain00808_n18_α:
# BOX IR_CALL reads(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2446: .string "reads"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2446]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00808_n12_β
 jmp xchain00808_n12_β
 xchain00808_n18_β:
 jmp xchain00808_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00808_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00808_n19_β:
 jmp xchain00808_n3_α
proc_readz_res:
add rsp, 8
pop rbp
proc_readz_β:
jmp proc_readz_ω
proc_readz_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_readz_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_writecon_α
proc_writecon_α:
#=======================================================================================================================
    .global proc_writecon_α
    .global proc_writecon_β
    .global proc_writecon_γ
    .global proc_writecon_ω
  sub rsp, 432
  mov [rsp + 408], rcx
  mov [rsp + 416], rdx
  mov [rsp + 424], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 400
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 400
  call rt_jmp_frame_lexprep@PLT
proc_writecon_α_body:
# IR_VAR
 xchain00816_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00816_n1_α
 xchain00816_n0_β:
 jmp xchain00816_n2_α
# IR_UNOP
 xchain00816_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00816_n2_α
 cmp eax, 0
 jne xchain00816_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00816_n3_α
 xchain00816_n1_β:
 jmp xchain00816_n2_α
# IR_LIT_INTEGER
 xchain00816_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00817_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00816_n4_α
 xchain00816_n2_β:
 jmp proc_writecon_ω
.Lx00817_0:
 .quad 1
# IR_LIT_STRING
 xchain00816_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00818_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00816_n5_α
 xchain00816_n3_β:
 jmp proc_writecon_ω
.Lx00818_0:
 .quad .Lx00818_0_s
.Lx00818_0_s:
 .string "write(\"a...z\")"
# IR_VAR
 xchain00816_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00816_n6_α
 xchain00816_n4_β:
 jmp proc_writecon_ω
# IR_RETURN
 xchain00816_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writecon_γ
# IR_TO
 xchain00816_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00819_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00816_n7_α
 xchain00816_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00819_0
# IR_VAR
 xchain00816_n7_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00816_n8_α
 xchain00816_n7_β:
 jmp xchain00816_n6_β
# IR_LIT_STRING
 xchain00816_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00820_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00816_n9_α
 xchain00816_n8_β:
 jmp xchain00816_n6_β
.Lx00820_0:
 .quad .Lx00820_0_s
.Lx00820_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00816_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2463: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2463]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00816_n6_β
 jmp xchain00816_n6_β
 xchain00816_n9_β:
 jmp xchain00816_n6_β
proc_writecon_res:
add rsp, 8
pop rbp
proc_writecon_β:
jmp proc_writecon_ω
proc_writecon_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_writecon_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_writestr_α
proc_writestr_α:
#=======================================================================================================================
    .global proc_writestr_α
    .global proc_writestr_β
    .global proc_writestr_γ
    .global proc_writestr_ω
  sub rsp, 624
  mov [rsp + 600], rcx
  mov [rsp + 608], rdx
  mov [rsp + 616], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 592
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 584], rsp
  mov rdi, rsp
  mov esi, 592
  call rt_jmp_frame_lexprep@PLT
proc_writestr_α_body:
# IR_VAR_REF
 xchain00821_n0_α:
 mov rdi, 1879053280
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00821_n1_α
 xchain00821_n0_β:
 jmp xchain00821_n3_α
# IR_NULLTEST_VAR
 xchain00821_n1_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 99
 je xchain00821_n3_α
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00821_n3_α
 cmp eax, 0
 jne xchain00821_n3_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 504], rax
 jmp xchain00821_n2_α
 xchain00821_n1_β:
 jmp xchain00821_n3_α
# IR_LIT_INTEGER
 xchain00821_n2_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00822_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00821_n4_α
 xchain00821_n2_β:
 jmp xchain00821_n3_α
.Lx00822_0:
 .quad 1
# IR_VAR
 xchain00821_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00821_n5_α
 xchain00821_n3_β:
 jmp xchain00821_n6_α
# IR_ASSIGN_VAR
 xchain00821_n4_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00821_n3_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00821_n7_α
 xchain00821_n4_β:
 jmp xchain00821_n3_α
# IR_UNOP
 xchain00821_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00821_n6_α
 cmp eax, 0
 jne xchain00821_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00821_n8_α
 xchain00821_n5_β:
 jmp xchain00821_n6_α
# IR_LIT_INTEGER
 xchain00821_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00823_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00821_n9_α
 xchain00821_n6_β:
 jmp proc_writestr_ω
.Lx00823_0:
 .quad 1
# IR_LIT_STRING
 xchain00821_n7_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00821_n10_α
 xchain00821_n7_β:
 jmp xchain00821_n3_α
.Lx00824_0:
 .quad .Lx00824_0_s
.Lx00824_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00821_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00825_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00821_n11_α
 xchain00821_n8_β:
 jmp proc_writestr_ω
.Lx00825_0:
 .quad .Lx00825_0_s
.Lx00825_0_s:
 .string "write(s)"
# IR_VAR
 xchain00821_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00821_n12_α
 xchain00821_n9_β:
 jmp proc_writestr_ω
# IR_ASSIGN gva
 xchain00821_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00821_n13_α
 xchain00821_n10_β:
 jmp xchain00821_n3_α
# IR_RETURN
 xchain00821_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writestr_γ
# IR_TO
 xchain00821_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00826_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00821_n14_α
 xchain00821_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00826_0
# IR_MOVE_LABEL
 xchain00821_n13_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00821_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00821_n3_α
 xchain00821_n13_β:
 jmp xchain00821_n3_α
# IR_VAR
 xchain00821_n14_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00821_n16_α
 xchain00821_n14_β:
 jmp xchain00821_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00821_n15_α:
 jmp qword ptr [rbp + 400]
 xchain00821_n15_β:
 jmp xchain00821_n3_α
# IR_VAR
 xchain00821_n16_α:
 mov rax, qword ptr [1879053264]
 mov rdx, qword ptr [1879053272]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00821_n17_α
 xchain00821_n16_β:
 jmp xchain00821_n12_β
 xchain00821_n17_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+160]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn2489: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2489]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00821_n12_β
 jmp xchain00821_n12_β
 xchain00821_n17_β:
 jmp xchain00821_n12_β
proc_writestr_res:
add rsp, 8
pop rbp
proc_writestr_β:
jmp proc_writestr_ω
proc_writestr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_writestr_ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
  .globl proc_cxcreate_α
proc_cxcreate_α:
#=======================================================================================================================
    .global proc_cxcreate_α
    .global proc_cxcreate_β
    .global proc_cxcreate_γ
    .global proc_cxcreate_ω
  sub rsp, 448
  mov [rsp + 424], rcx
  mov [rsp + 432], rdx
  mov [rsp + 440], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 416
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 416
  call rt_jmp_frame_lexprep@PLT
proc_cxcreate_α_body:
# IR_VAR
 xchain00827_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00827_n1_α
 xchain00827_n0_β:
 jmp xchain00827_n2_α
# IR_UNOP
 xchain00827_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00827_n2_α
 cmp eax, 0
 jne xchain00827_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00827_n3_α
 xchain00827_n1_β:
 jmp xchain00827_n2_α
# IR_LIT_INTEGER
 xchain00827_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00828_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00827_n4_α
 xchain00827_n2_β:
 jmp proc_cxcreate_ω
.Lx00828_0:
 .quad 1
# IR_LIT_STRING
 xchain00827_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00829_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00827_n5_α
 xchain00827_n3_β:
 jmp proc_cxcreate_ω
.Lx00829_0:
 .quad .Lx00829_0_s
.Lx00829_0_s:
 .string "create |\"a\""
# IR_VAR
 xchain00827_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00827_n6_α
 xchain00827_n4_β:
 jmp proc_cxcreate_ω
# IR_RETURN
 xchain00827_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxcreate_γ
# IR_TO
 xchain00827_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00830_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00827_n7_α
 xchain00827_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00830_0
# IR_CREATE
 xchain00827_n7_α:
 mov qword ptr [rsp + 144], r12
 mov qword ptr [rsp + 152], r13
 mov qword ptr [rsp + 160], r14
 mov qword ptr [rsp + 168], r15
 mov qword ptr [rsp + 176], rbx
 mov qword ptr [rsp + 184], rbp
 lea rdi, [rip + xchain00827_n8_α]
 lea rsi, [rbp + 144]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 128], rax
 jmp xchain00827_n6_β
 xchain00827_n7_β:
 jmp xchain00827_n6_β
 xchain00827_n8_α:
# IR_REPALT clear
 mov qword ptr [rbp + 224], 0
jmp xchain00827_n10_α
xchain00827_n8_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 mov qword ptr [rbp + 224], 1
jmp xchain00827_n9_α
xchain00827_n8_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 224]
 cmp rax, 1
je xchain00827_n8_α
jmp xchain00827_n11_α
xchain00827_n8_β:
jmp xchain00827_n8_rt
# IR_CORET yield
 xchain00827_n9_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00827_n8_β
# IR_LIT_STRING
 xchain00827_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00831_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00827_n8_ry
 xchain00827_n10_β:
 jmp xchain00827_n8_rt
.Lx00831_0:
 .quad .Lx00831_0_s
.Lx00831_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00827_n11_α:
 call scrip_cofail@PLT
 jmp proc_cxcreate_ω
proc_cxcreate_res:
add rsp, 8
pop rbp
proc_cxcreate_β:
jmp proc_cxcreate_ω
proc_cxcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_cxcreate_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_cxget_α
proc_cxget_α:
#=======================================================================================================================
    .global proc_cxget_α
    .global proc_cxget_β
    .global proc_cxget_γ
    .global proc_cxget_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_cxget_α_body:
# IR_VAR_REF
 xchain00832_n0_α:
 mov rdi, 1879053312
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00832_n1_α
 xchain00832_n0_β:
 jmp xchain00832_n3_α
# IR_NULLTEST_VAR
 xchain00832_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00832_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00832_n3_α
 cmp eax, 0
 jne xchain00832_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00832_n2_α
 xchain00832_n1_β:
 jmp xchain00832_n3_α
# IR_LIT_INTEGER
 xchain00832_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00833_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00832_n4_α
 xchain00832_n2_β:
 jmp xchain00832_n3_α
.Lx00833_0:
 .quad 1
# IR_VAR
 xchain00832_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00832_n5_α
 xchain00832_n3_β:
 jmp xchain00832_n6_α
# IR_ASSIGN_VAR
 xchain00832_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00832_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00832_n7_α
 xchain00832_n4_β:
 jmp xchain00832_n3_α
# IR_UNOP
 xchain00832_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00832_n6_α
 cmp eax, 0
 jne xchain00832_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00832_n8_α
 xchain00832_n5_β:
 jmp xchain00832_n6_α
# IR_LIT_INTEGER
 xchain00832_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00834_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00832_n9_α
 xchain00832_n6_β:
 jmp proc_cxget_ω
.Lx00834_0:
 .quad 1
# IR_CREATE
 xchain00832_n7_α:
 mov qword ptr [rsp + 384], r12
 mov qword ptr [rsp + 392], r13
 mov qword ptr [rsp + 400], r14
 mov qword ptr [rsp + 408], r15
 mov qword ptr [rsp + 416], rbx
 mov qword ptr [rsp + 424], rbp
 lea rdi, [rip + xchain00832_n11_α]
 lea rsi, [rbp + 384]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 368], rax
 jmp xchain00832_n10_α
 xchain00832_n7_β:
 jmp xchain00832_n3_α
# IR_LIT_STRING
 xchain00832_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00835_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00832_n12_α
 xchain00832_n8_β:
 jmp proc_cxget_ω
.Lx00835_0:
 .quad .Lx00835_0_s
.Lx00835_0_s:
 .string "@C"
# IR_VAR
 xchain00832_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00832_n13_α
 xchain00832_n9_β:
 jmp proc_cxget_ω
# IR_ASSIGN gva
 xchain00832_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00832_n14_α
 xchain00832_n10_β:
 jmp xchain00832_n3_α
 xchain00832_n11_α:
# IR_REPALT clear
 mov qword ptr [rbp + 464], 0
jmp xchain00832_n16_α
xchain00832_n11_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 mov qword ptr [rbp + 464], 1
jmp xchain00832_n15_α
xchain00832_n11_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 464]
 cmp rax, 1
je xchain00832_n11_α
jmp xchain00832_n20_α
xchain00832_n11_β:
jmp xchain00832_n11_rt
# IR_RETURN
 xchain00832_n12_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxget_γ
# IR_TO
 xchain00832_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00836_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00832_n17_α
 xchain00832_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00836_0
# IR_MOVE_LABEL
 xchain00832_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00832_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00832_n3_α
 xchain00832_n14_β:
 jmp xchain00832_n3_α
# IR_CORET yield
 xchain00832_n15_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00832_n11_β
# IR_LIT_STRING
 xchain00832_n16_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00837_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00832_n11_ry
 xchain00832_n16_β:
 jmp xchain00832_n11_rt
.Lx00837_0:
 .quad .Lx00837_0_s
.Lx00837_0_s:
 .string "a"
# IR_VAR
 xchain00832_n17_α:
 mov rax, qword ptr [1879053296]
 mov rdx, qword ptr [1879053304]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00832_n19_α
 xchain00832_n17_β:
 jmp xchain00832_n13_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00832_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00832_n18_β:
 jmp xchain00832_n3_α
# IR_ACTIVATE
 xchain00832_n19_α:
 mov rdi, qword ptr [rbp + 160]
 xor esi, esi
 xor edx, edx
 lea rcx, [rbp + 128]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00832_n13_β
 jmp xchain00832_n13_β
 xchain00832_n19_β:
 jmp xchain00832_n13_β
# IR_COFAIL exhausted
 xchain00832_n20_α:
 call scrip_cofail@PLT
 jmp proc_cxget_ω
proc_cxget_res:
add rsp, 8
pop rbp
proc_cxget_β:
jmp proc_cxget_ω
proc_cxget_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_cxget_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_startup:
  sub rsp, 8
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2736
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 32
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 576
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 512
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 656
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 1056
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 976
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 464
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 160
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 480
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1072
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 416
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 528
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 480
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 448
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 768
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 768
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 752
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1056
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 720
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 624
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 528
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 320
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 320
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 688
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 592
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 416
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
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
  .Lgvan64: .string "cxget__INITFLAG__0"
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
  .quad .Lgvan64
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 65
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 65
  call gva_register@PLT
  # R12-ERAD FENCE: main(args) stuffing pending under RSP self-alloc
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
  mov qword ptr [rsp + 11480], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_INTEGER
 xchain00838_n0_α:
 mov qword ptr [rbp + 11264], 6
 mov rax, qword ptr [rip + .Lx00839_0]
 mov qword ptr [rbp + 11272], rax
 jmp xchain00838_n1_α
 xchain00838_n0_β:
 jmp xchain00838_n10_α
.Lx00839_0:
 .quad 1000
# IR_VAR_REF
 xchain00838_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain00838_n2_α
 xchain00838_n1_β:
 jmp xchain00838_n5_α
# IR_LIT_INTEGER
 xchain00838_n2_α:
 mov qword ptr [rbp + 11392], 6
 mov rax, qword ptr [rip + .Lx00840_0]
 mov qword ptr [rbp + 11400], rax
 jmp xchain00838_n3_α
 xchain00838_n2_β:
 jmp xchain00838_n5_α
.Lx00840_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00838_n3_α:
 mov rdi, qword ptr [rbp + 11360]
 mov rsi, qword ptr [rbp + 11368]
 mov rdx, qword ptr [rbp + 11392]
 mov rcx, qword ptr [rbp + 11400]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00838_n5_α
 mov qword ptr [rbp + 11424], rax
 mov qword ptr [rbp + 11432], rdx
 jmp xchain00838_n4_α
 xchain00838_n3_β:
 jmp xchain00838_n5_α
# IR_DEREF variable -> value
 xchain00838_n4_α:
 mov rdi, qword ptr [rbp + 11424]
 mov rsi, qword ptr [rbp + 11432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00838_n5_α
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 jmp xchain00838_n6_α
 xchain00838_n4_β:
 jmp xchain00838_n5_α
# IR_LIT_REAL
 xchain00838_n5_α:
 mov qword ptr [rbp + 11328], 7
 mov rax, qword ptr [rip + .Lx00841_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain00838_n7_α
 xchain00838_n5_β:
 jmp xchain00838_n10_α
.Lx00841_0:
 .quad 4607182418800017408
# IR_MOVE_LABEL
 xchain00838_n6_α:
 mov rax, qword ptr [rbp + 11456]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11464]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00838_n5_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00838_n8_α
 xchain00838_n6_β:
 jmp xchain00838_n10_α
# IR_MOVE_LABEL
 xchain00838_n7_α:
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00838_n10_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00838_n8_α
 xchain00838_n7_β:
 jmp xchain00838_n10_α
# IR_COERCE_NUMERIC
 xchain00838_n8_α:
 mov eax, dword ptr [rbp + 11296]
 cmp eax, 7
 je .Lx00842_1
 cmp eax, 6
 jne .Lx00842_0
 mov eax, dword ptr [rbp + 11264]
 cmp eax, 6
 jne .Lx00842_0
.Lx00842_1:
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11232], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11240], rax
 jmp .Lx00842_2
.Lx00842_0:
 lea rdi, [rbp + 11296]
 lea rsi, [rbp + 11264]
 lea rdx, [rbp + 11232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00842_2:
 jmp xchain00838_n11_α
 xchain00838_n8_β:
 jmp xchain00838_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00838_n9_α:
 jmp qword ptr [rbp + 11312]
 xchain00838_n9_β:
 jmp xchain00838_n10_α
# IR_LIT_STRING
 xchain00838_n10_α:
 mov qword ptr [rbp + 11072], 1
 mov rax, qword ptr [rip + .Lx00843_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain00838_n12_α
 xchain00838_n10_β:
 jmp xchain00838_n17_α
.Lx00843_0:
 .quad .Lx00843_0_s
.Lx00843_0_s:
 .string "/dev/null"
 xchain00838_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 100
 je .Lx00844_0
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 6
 jne .Lx00844_2
.Lx00844_1:
 mov rax, 1000
 mov rcx, qword ptr [rbp + 11240]
 imul rax, rcx
 mov qword ptr [rbp + 11200], 6
 mov qword ptr [rbp + 11208], rax
 jmp xchain00838_n13_α
.Lx00844_0:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 lea r9, [rbp + 11200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00844_3
.Lx00844_2:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00838_n10_α
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
.Lx00844_3:
 jmp xchain00838_n13_α
 xchain00838_n11_β:
 jmp xchain00838_n10_α
# IR_LIT_STRING
 xchain00838_n12_α:
 mov qword ptr [rbp + 11104], 1
 mov rax, qword ptr [rip + .Lx00845_0]
 mov qword ptr [rbp + 11112], rax
 jmp xchain00838_n14_α
 xchain00838_n12_β:
 jmp xchain00838_n17_α
.Lx00845_0:
 .quad .Lx00845_0_s
.Lx00845_0_s:
 .string "w"
 xchain00838_n13_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11200] -> [zr+11168]
 mov rax, qword ptr [rbp + 11200]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 11208]
 mov qword ptr [rbp + 11176], rax
  .section .rodata
  .Lrkfn2567: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2567]
 lea rsi, [rbp + 11168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je xchain00838_n10_α
 jmp xchain00838_n15_α
 xchain00838_n13_β:
 jmp xchain00838_n10_α
 xchain00838_n14_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11072] -> [zr+11024]
 mov rax, qword ptr [rbp + 11072]
 mov qword ptr [rbp + 11024], rax
 mov rax, qword ptr [rbp + 11080]
 mov qword ptr [rbp + 11032], rax
# marshal arg1 = producer-box slot [zr+11104] -> [zr+11040]
 mov rax, qword ptr [rbp + 11104]
 mov qword ptr [rbp + 11040], rax
 mov rax, qword ptr [rbp + 11112]
 mov qword ptr [rbp + 11048], rax
  .section .rodata
  .Lrkfn2569: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2569]
 lea rsi, [rbp + 11024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 cmp eax, 99
 je xchain00838_n17_α
 jmp xchain00838_n16_α
 xchain00838_n14_β:
 jmp xchain00838_n17_α
# IR_ASSIGN gva
 xchain00838_n15_α:
 mov rax, qword ptr [rbp + 11152]
 mov rdx, qword ptr [rbp + 11160]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 11136], rax
 mov qword ptr [rbp + 11144], rdx
 jmp xchain00838_n10_α
 xchain00838_n15_β:
 jmp xchain00838_n10_α
# IR_ASSIGN gva
 xchain00838_n16_α:
 mov rax, qword ptr [rbp + 11008]
 mov rdx, qword ptr [rbp + 11016]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain00838_n17_α
 xchain00838_n16_β:
 jmp xchain00838_n17_α
# IR_VAR
 xchain00838_n17_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 jmp xchain00838_n18_α
 xchain00838_n17_β:
 jmp xchain00838_n19_α
 xchain00838_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10960]
 mov rdx, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10944], rax
 mov qword ptr [rbp + 10952], rdx
 jmp xchain00838_n19_α
 xchain00838_n18_β:
 jmp xchain00838_n19_α
# IR_VAR
 xchain00838_n19_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10832], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10840], rax
 jmp xchain00838_n20_α
 xchain00838_n19_β:
 jmp xchain00838_n21_α
# IR_LIT_REAL
 xchain00838_n20_α:
 mov qword ptr [rbp + 10912], 7
 mov rax, qword ptr [rip + .Lx00846_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain00838_n22_α
 xchain00838_n20_β:
 jmp xchain00838_n21_α
.Lx00846_0:
 .quad 4652007308841189376
 xchain00838_n21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2578: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2578]
 lea rsi, [rbp + 10768]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10752], rax
 mov qword ptr [rbp + 10760], rdx
 cmp eax, 99
 je xchain00838_n24_α
 jmp xchain00838_n23_α
 xchain00838_n21_β:
 jmp xchain00838_n24_α
 xchain00838_n22_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10912] -> [zr+10880]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10888], rax
  .section .rodata
  .Lrkfn2580: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2580]
 lea rsi, [rbp + 10880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 cmp eax, 99
 je xchain00838_n21_α
 jmp xchain00838_n25_α
 xchain00838_n22_β:
 jmp xchain00838_n21_α
 xchain00838_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10752]
 mov rdx, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain00838_n24_α
 xchain00838_n23_β:
 jmp xchain00838_n24_α
# IR_LIT_INTEGER
 xchain00838_n24_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx00847_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain00838_n26_α
 xchain00838_n24_β:
 jmp xchain00838_n38_α
.Lx00847_0:
 .quad 1
 xchain00838_n25_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 100
 je .Lx00848_0
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 100
 je .Lx00848_0
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 6
 jne .Lx00848_2
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 6
 jne .Lx00848_2
.Lx00848_1:
 mov rax, qword ptr [rbp + 11512]
 mov rcx, qword ptr [rbp + 10872]
 cmp rax, rcx
 jge xchain00838_n21_α
 mov rcx, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rcx
 mov rcx, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rcx
 jmp xchain00838_n27_α
.Lx00848_0:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 lea r9, [rbp + 10800]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00848_1
 cmp eax, 1
 je xchain00838_n21_α
 jmp xchain00838_n27_α
.Lx00848_2:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00838_n21_α
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rax
 jmp xchain00838_n27_α
 xchain00838_n25_β:
 jmp xchain00838_n21_α
# IR_LIT_INTEGER
 xchain00838_n26_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx00849_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain00838_n28_α
 xchain00838_n26_β:
 jmp xchain00838_n38_α
.Lx00849_0:
 .quad 5
 xchain00838_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain00838_n21_α
 xchain00838_n27_β:
 jmp xchain00838_n21_α
# IR_TO
 xchain00838_n28_α:
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10288], rax
.Lx00850_0:
 mov rax, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10344]
 cmp rax, rcx
 jg xchain00838_n38_α
 mov qword ptr [rbp + 10272], 6
 mov qword ptr [rbp + 10280], rax
 jmp xchain00838_n29_α
 xchain00838_n28_β:
 inc qword ptr [rbp + 10288]
 jmp .Lx00850_0
# KEYWORD_read
 xchain00838_n29_α:
 mov rdi, qword ptr [rip + .Lx00851_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 jmp xchain00838_n30_α
 xchain00838_n29_β:
 jmp xchain00838_n32_α
.Lx00851_0:
 .quad .Lx00851_0_s
.Lx00851_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00838_n30_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx00852_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain00838_n31_α
 xchain00838_n30_β:
 jmp xchain00838_n32_α
.Lx00852_0:
 .quad .Lx00852_0_s
.Lx00852_0_s:
 .string "."
 xchain00838_n31_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10672] -> [zr+10624]
 mov rax, qword ptr [rbp + 10672]
 mov qword ptr [rbp + 10624], rax
 mov rax, qword ptr [rbp + 10680]
 mov qword ptr [rbp + 10632], rax
# marshal arg1 = producer-box slot [zr+10704] -> [zr+10640]
 mov rax, qword ptr [rbp + 10704]
 mov qword ptr [rbp + 10640], rax
 mov rax, qword ptr [rbp + 10712]
 mov qword ptr [rbp + 10648], rax
  .section .rodata
  .Lrkfn2591: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2591]
 lea rsi, [rbp + 10624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 cmp eax, 99
 je xchain00838_n32_α
 jmp xchain00838_n32_α
 xchain00838_n31_β:
 jmp xchain00838_n32_α
# IR_VAR
 xchain00838_n32_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10456], rax
 jmp xchain00838_n33_α
 xchain00838_n32_β:
 jmp xchain00838_n28_β
# IR_PROC_VALUE
 xchain00838_n33_α:
 mov rdi, qword ptr [rip + .Lx00853_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 jmp xchain00838_n34_α
 xchain00838_n33_β:
 jmp xchain00838_n28_β
.Lx00853_0:
 .quad .Lx00853_0_s
.Lx00853_0_s:
 .string "nothing"
# IR_VAR
 xchain00838_n34_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10584], rax
 jmp xchain00838_n35_α
 xchain00838_n34_β:
 jmp xchain00838_n28_β
 xchain00838_n35_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 10544]
 mov rdx, qword ptr [rbp + 10552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10576]
 mov rdx, qword ptr [rbp + 10584]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00854_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00854_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00854_3]
 lea rdx, [rip + .Lx00854_4]
 jmp rax
.Lx00854_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00854_2
.Lx00854_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00854_2
.Lx00854_1:
 call rt_faildescr@PLT
.Lx00854_2:
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 cmp eax, 99
 je xchain00838_n28_β
 jmp xchain00838_n36_α
 xchain00838_n35_β:
 jmp xchain00838_n28_β
.Lx00854_0:
 .quad .Lx00854_0_s
.Lx00854_0_s:
 .string "measure"
 xchain00838_n36_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10448] -> [zr+10400]
 mov rax, qword ptr [rbp + 10448]
 mov qword ptr [rbp + 10400], rax
 mov rax, qword ptr [rbp + 10456]
 mov qword ptr [rbp + 10408], rax
# marshal arg1 = producer-box slot [zr+10480] -> [zr+10416]
 mov rax, qword ptr [rbp + 10480]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 10488]
 mov qword ptr [rbp + 10424], rax
  .section .rodata
  .Lrkfn2601: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2601]
 lea rsi, [rbp + 10400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 cmp eax, 99
 je xchain00838_n28_β
 jmp xchain00838_n37_α
 xchain00838_n36_β:
 jmp xchain00838_n28_β
 xchain00838_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10368], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10376], rax
 jmp xchain00838_n28_β
xchain00838_n37_β:
 jmp xchain00838_n28_β
# IR_VAR
 xchain00838_n38_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 9848], rax
 jmp xchain00838_n39_α
 xchain00838_n38_β:
 jmp xchain00838_n40_α
 xchain00838_n39_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9840] -> [zr+9808]
 mov rax, qword ptr [rbp + 9840]
 mov qword ptr [rbp + 9808], rax
 mov rax, qword ptr [rbp + 9848]
 mov qword ptr [rbp + 9816], rax
  .section .rodata
  .Lrkfn2606: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2606]
 lea rsi, [rbp + 9808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 cmp eax, 99
 je xchain00838_n40_α
 jmp xchain00838_n41_α
 xchain00838_n39_β:
 jmp xchain00838_n40_α
# IR_VAR
 xchain00838_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain00838_n42_α
 xchain00838_n40_β:
 jmp xchain00838_n43_α
# IR_LIT_INTEGER
 xchain00838_n41_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx00855_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain00838_n44_α
 xchain00838_n41_β:
 jmp xchain00838_n40_α
.Lx00855_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00838_n42_α:
 mov qword ptr [rbp + 9712], 6
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain00838_n45_α
 xchain00838_n42_β:
 jmp xchain00838_n43_α
.Lx00856_0:
 .quad 10
# IR_PROC_VALUE
 xchain00838_n43_α:
 mov rdi, qword ptr [rip + .Lx00857_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain00838_n46_α
 xchain00838_n43_β:
 jmp xchain00838_n49_α
.Lx00857_0:
 .quad .Lx00857_0_s
.Lx00857_0_s:
 .string "nothing"
# IR_VAR
 xchain00838_n44_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10136], rax
 jmp xchain00838_n47_α
 xchain00838_n44_β:
 jmp xchain00838_n40_α
 xchain00838_n45_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9680] -> [zr+9632]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9632], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9640], rax
# marshal arg1 = producer-box slot [zr+9712] -> [zr+9648]
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9648], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9656], rax
  .section .rodata
  .Lrkfn2615: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2615]
 lea rsi, [rbp + 9632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain00838_n43_α
 jmp xchain00838_n48_α
 xchain00838_n45_β:
 jmp xchain00838_n43_α
 xchain00838_n46_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00858_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00858_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00858_3]
 lea rdx, [rip + .Lx00858_4]
 jmp rax
.Lx00858_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00858_2
.Lx00858_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00858_2
.Lx00858_1:
 call rt_faildescr@PLT
.Lx00858_2:
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 cmp eax, 99
 je xchain00838_n49_α
 jmp xchain00838_n49_α
 xchain00838_n46_β:
 jmp xchain00838_n49_α
.Lx00858_0:
 .quad .Lx00858_0_s
.Lx00858_0_s:
 .string "report"
# IR_UNOP
 xchain00838_n47_α:
 mov rdi, qword ptr [rbp + 11488]
 mov rsi, qword ptr [rbp + 11496]
 call rt_size_d@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain00838_n50_α
 xchain00838_n47_β:
 jmp xchain00838_n40_α
# IR_LIT_STRING
 xchain00838_n48_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx00859_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain00838_n51_α
 xchain00838_n48_β:
 jmp xchain00838_n43_α
.Lx00859_0:
 .quad .Lx00859_0_s
.Lx00859_0_s:
 .string "  overhead"
# IR_PROC_VALUE
 xchain00838_n49_α:
 mov rdi, qword ptr [rip + .Lx00860_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain00838_n52_α
 xchain00838_n49_β:
 jmp xchain00838_n54_α
.Lx00860_0:
 .quad .Lx00860_0_s
.Lx00860_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00838_n50_α:
 mov qword ptr [rbp + 10160], 6
 mov rax, qword ptr [rip + .Lx00861_0]
 mov qword ptr [rbp + 10168], rax
 jmp xchain00838_n53_α
 xchain00838_n50_β:
 jmp xchain00838_n40_α
.Lx00861_0:
 .quad 1
 xchain00838_n51_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9568]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9576], rax
# marshal arg1 = producer-box slot [zr+9744] -> [zr+9584]
 mov rax, qword ptr [rbp + 9744]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9752]
 mov qword ptr [rbp + 9592], rax
  .section .rodata
  .Lrkfn2624: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2624]
 lea rsi, [rbp + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain00838_n43_α
 jmp xchain00838_n43_α
 xchain00838_n51_β:
 jmp xchain00838_n43_α
 xchain00838_n52_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9440]
 mov rdx, qword ptr [rbp + 9448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00862_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00862_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00862_3]
 lea rdx, [rip + .Lx00862_4]
 jmp rax
.Lx00862_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00862_2
.Lx00862_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00862_2
.Lx00862_1:
 call rt_faildescr@PLT
.Lx00862_2:
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain00838_n54_α
 jmp xchain00838_n54_α
 xchain00838_n52_β:
 jmp xchain00838_n54_α
.Lx00862_0:
 .quad .Lx00862_0_s
.Lx00862_0_s:
 .string "report"
# IR_COERCE_NUMERIC
 xchain00838_n53_α:
 mov eax, dword ptr [rbp + 10096]
 cmp eax, 7
 je .Lx00863_1
 cmp eax, 6
 jne .Lx00863_0
 mov eax, dword ptr [rbp + 10160]
 cmp eax, 6
 jne .Lx00863_0
.Lx00863_1:
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
 jmp .Lx00863_2
.Lx00863_0:
 lea rdi, [rbp + 10096]
 lea rsi, [rbp + 10160]
 lea rdx, [rbp + 10064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00863_2:
 jmp xchain00838_n55_α
 xchain00838_n53_β:
 jmp xchain00838_n40_α
# IR_PROC_VALUE
 xchain00838_n54_α:
 mov rdi, qword ptr [rip + .Lx00864_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain00838_n56_α
 xchain00838_n54_β:
 jmp xchain00838_n58_α
.Lx00864_0:
 .quad .Lx00864_0_s
.Lx00864_0_s:
 .string "nothing"
 xchain00838_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 100
 je .Lx00865_0
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 6
 jne .Lx00865_2
.Lx00865_1:
 mov rax, qword ptr [rbp + 10072]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 10032], 6
 mov qword ptr [rbp + 10040], rax
 jmp xchain00838_n57_α
.Lx00865_0:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 lea r9, [rbp + 10032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00865_3
.Lx00865_2:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00838_n40_α
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
.Lx00865_3:
 jmp xchain00838_n57_α
 xchain00838_n55_β:
 jmp xchain00838_n40_α
 xchain00838_n56_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9360]
 mov rdx, qword ptr [rbp + 9368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00866_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00866_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00866_3]
 lea rdx, [rip + .Lx00866_4]
 jmp rax
.Lx00866_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00866_2
.Lx00866_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00866_2
.Lx00866_1:
 call rt_faildescr@PLT
.Lx00866_2:
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain00838_n58_α
 jmp xchain00838_n58_α
 xchain00838_n56_β:
 jmp xchain00838_n58_α
.Lx00866_0:
 .quad .Lx00866_0_s
.Lx00866_0_s:
 .string "report"
# IR_LIT_INTEGER
 xchain00838_n57_α:
 mov qword ptr [rbp + 10192], 6
 mov rax, qword ptr [rip + .Lx00867_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain00838_n59_α
 xchain00838_n57_β:
 jmp xchain00838_n40_α
.Lx00867_0:
 .quad 2
# IR_PROC_VALUE
 xchain00838_n58_α:
 mov rdi, qword ptr [rip + .Lx00868_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain00838_n60_α
 xchain00838_n58_β:
 jmp xchain00838_n62_α
.Lx00868_0:
 .quad .Lx00868_0_s
.Lx00868_0_s:
 .string "globasgn"
# IR_COERCE_NUMERIC
 xchain00838_n59_α:
 mov eax, dword ptr [rbp + 10032]
 cmp eax, 7
 je .Lx00869_1
 cmp eax, 6
 jne .Lx00869_0
 mov eax, dword ptr [rbp + 10192]
 cmp eax, 6
 jne .Lx00869_0
.Lx00869_1:
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10008], rax
 jmp .Lx00869_2
.Lx00869_0:
 lea rdi, [rbp + 10032]
 lea rsi, [rbp + 10192]
 lea rdx, [rbp + 10000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00869_2:
 jmp xchain00838_n61_α
 xchain00838_n59_β:
 jmp xchain00838_n40_α
 xchain00838_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9280]
 mov rdx, qword ptr [rbp + 9288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00870_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00870_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00870_3]
 lea rdx, [rip + .Lx00870_4]
 jmp rax
.Lx00870_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00870_2
.Lx00870_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00870_2
.Lx00870_1:
 call rt_faildescr@PLT
.Lx00870_2:
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain00838_n62_α
 jmp xchain00838_n62_α
 xchain00838_n60_β:
 jmp xchain00838_n62_α
.Lx00870_0:
 .quad .Lx00870_0_s
.Lx00870_0_s:
 .string "report"
 xchain00838_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 100
 je .Lx00871_0
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 6
 jne .Lx00871_2
.Lx00871_1:
 mov rax, qword ptr [rbp + 10008]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [rbp + 9968], 6
 mov qword ptr [rbp + 9976], rax
 jmp xchain00838_n63_α
.Lx00871_0:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 lea r9, [rbp + 9968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00871_3
.Lx00871_2:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00838_n40_α
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
.Lx00871_3:
 jmp xchain00838_n63_α
 xchain00838_n61_β:
 jmp xchain00838_n40_α
# IR_PROC_VALUE
 xchain00838_n62_α:
 mov rdi, qword ptr [rip + .Lx00872_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain00838_n64_α
 xchain00838_n62_β:
 jmp xchain00838_n66_α
.Lx00872_0:
 .quad .Lx00872_0_s
.Lx00872_0_s:
 .string "statasgn"
# IR_COERCE_NUMERIC
 xchain00838_n63_α:
 mov eax, dword ptr [rbp + 9968]
 cmp eax, 7
 je .Lx00873_1
 cmp eax, 6
 jne .Lx00873_0
 mov eax, dword ptr [rbp + 9936]
 cmp eax, 6
 jne .Lx00873_0
.Lx00873_1:
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
 jmp .Lx00873_2
.Lx00873_0:
 lea rdi, [rbp + 9968]
 lea rsi, [rbp + 9936]
 lea rdx, [rbp + 9904]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00873_2:
 jmp xchain00838_n65_α
 xchain00838_n63_β:
 jmp xchain00838_n40_α
 xchain00838_n64_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00874_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00874_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00874_3]
 lea rdx, [rip + .Lx00874_4]
 jmp rax
.Lx00874_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00874_2
.Lx00874_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00874_2
.Lx00874_1:
 call rt_faildescr@PLT
.Lx00874_2:
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain00838_n66_α
 jmp xchain00838_n66_α
 xchain00838_n64_β:
 jmp xchain00838_n66_α
.Lx00874_0:
 .quad .Lx00874_0_s
.Lx00874_0_s:
 .string "report"
 xchain00838_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 100
 je .Lx00875_0
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 6
 jne .Lx00875_2
.Lx00875_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 9912]
 add rax, rcx
 mov qword ptr [rbp + 9872], 6
 mov qword ptr [rbp + 9880], rax
 jmp xchain00838_n67_α
.Lx00875_0:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9872]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00875_3
.Lx00875_2:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00838_n40_α
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
.Lx00875_3:
 jmp xchain00838_n67_α
 xchain00838_n65_β:
 jmp xchain00838_n40_α
# IR_PROC_VALUE
 xchain00838_n66_α:
 mov rdi, qword ptr [rip + .Lx00876_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 jmp xchain00838_n68_α
 xchain00838_n66_β:
 jmp xchain00838_n70_α
.Lx00876_0:
 .quad .Lx00876_0_s
.Lx00876_0_s:
 .string "loclasgn"
# IR_SUBSCRIPT x[i] variable
 xchain00838_n67_α:
 mov rdi, qword ptr [rbp + 9792]
 mov rsi, qword ptr [rbp + 9800]
 mov rdx, qword ptr [rbp + 9872]
 mov rcx, qword ptr [rbp + 9880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00838_n40_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain00838_n69_α
 xchain00838_n67_β:
 jmp xchain00838_n40_α
 xchain00838_n68_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9120]
 mov rdx, qword ptr [rbp + 9128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00877_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00877_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00877_3]
 lea rdx, [rip + .Lx00877_4]
 jmp rax
.Lx00877_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00877_2
.Lx00877_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00877_2
.Lx00877_1:
 call rt_faildescr@PLT
.Lx00877_2:
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain00838_n70_α
 jmp xchain00838_n70_α
 xchain00838_n68_β:
 jmp xchain00838_n70_α
.Lx00877_0:
 .quad .Lx00877_0_s
.Lx00877_0_s:
 .string "report"
# IR_DEREF variable -> value
 xchain00838_n69_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00838_n40_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain00838_n71_α
 xchain00838_n69_β:
 jmp xchain00838_n40_α
# IR_PROC_VALUE
 xchain00838_n70_α:
 mov rdi, qword ptr [rip + .Lx00878_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain00838_n72_α
 xchain00838_n70_β:
 jmp xchain00838_n73_α
.Lx00878_0:
 .quad .Lx00878_0_s
.Lx00878_0_s:
 .string "if0"
# IR_ASSIGN gva
 xchain00838_n71_α:
 mov rax, qword ptr [rbp + 10256]
 mov rdx, qword ptr [rbp + 10264]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain00838_n40_α
 xchain00838_n71_β:
 jmp xchain00838_n40_α
 xchain00838_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00879_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00879_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00879_3]
 lea rdx, [rip + .Lx00879_4]
 jmp rax
.Lx00879_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00879_2
.Lx00879_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00879_2
.Lx00879_1:
 call rt_faildescr@PLT
.Lx00879_2:
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain00838_n73_α
 jmp xchain00838_n73_α
 xchain00838_n72_β:
 jmp xchain00838_n73_α
.Lx00879_0:
 .quad .Lx00879_0_s
.Lx00879_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n73_α:
 mov rdi, qword ptr [rip + .Lx00880_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain00838_n74_α
 xchain00838_n73_β:
 jmp xchain00838_n75_α
.Lx00880_0:
 .quad .Lx00880_0_s
.Lx00880_0_s:
 .string "case3"
 xchain00838_n74_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8960]
 mov rdx, qword ptr [rbp + 8968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00881_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00881_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00881_3]
 lea rdx, [rip + .Lx00881_4]
 jmp rax
.Lx00881_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00881_2
.Lx00881_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00881_2
.Lx00881_1:
 call rt_faildescr@PLT
.Lx00881_2:
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain00838_n75_α
 jmp xchain00838_n75_α
 xchain00838_n74_β:
 jmp xchain00838_n75_α
.Lx00881_0:
 .quad .Lx00881_0_s
.Lx00881_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n75_α:
 mov rdi, qword ptr [rip + .Lx00882_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain00838_n76_α
 xchain00838_n75_β:
 jmp xchain00838_n77_α
.Lx00882_0:
 .quad .Lx00882_0_s
.Lx00882_0_s:
 .string "nulltest"
 xchain00838_n76_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8880]
 mov rdx, qword ptr [rbp + 8888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00883_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00883_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00883_3]
 lea rdx, [rip + .Lx00883_4]
 jmp rax
.Lx00883_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00883_2
.Lx00883_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00883_2
.Lx00883_1:
 call rt_faildescr@PLT
.Lx00883_2:
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 cmp eax, 99
 je xchain00838_n77_α
 jmp xchain00838_n77_α
 xchain00838_n76_β:
 jmp xchain00838_n77_α
.Lx00883_0:
 .quad .Lx00883_0_s
.Lx00883_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n77_α:
 mov rdi, qword ptr [rip + .Lx00884_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain00838_n78_α
 xchain00838_n77_β:
 jmp xchain00838_n79_α
.Lx00884_0:
 .quad .Lx00884_0_s
.Lx00884_0_s:
 .string "typef"
 xchain00838_n78_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00885_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00885_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00885_3]
 lea rdx, [rip + .Lx00885_4]
 jmp rax
.Lx00885_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00885_2
.Lx00885_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00885_2
.Lx00885_1:
 call rt_faildescr@PLT
.Lx00885_2:
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain00838_n79_α
 jmp xchain00838_n79_α
 xchain00838_n78_β:
 jmp xchain00838_n79_α
.Lx00885_0:
 .quad .Lx00885_0_s
.Lx00885_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n79_α:
 mov rdi, qword ptr [rip + .Lx00886_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8720], rax
 mov qword ptr [rbp + 8728], rdx
 jmp xchain00838_n80_α
 xchain00838_n79_β:
 jmp xchain00838_n81_α
.Lx00886_0:
 .quad .Lx00886_0_s
.Lx00886_0_s:
 .string "imagef"
 xchain00838_n80_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8720]
 mov rdx, qword ptr [rbp + 8728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00887_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00887_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00887_3]
 lea rdx, [rip + .Lx00887_4]
 jmp rax
.Lx00887_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00887_2
.Lx00887_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00887_2
.Lx00887_1:
 call rt_faildescr@PLT
.Lx00887_2:
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je xchain00838_n81_α
 jmp xchain00838_n81_α
 xchain00838_n80_β:
 jmp xchain00838_n81_α
.Lx00887_0:
 .quad .Lx00887_0_s
.Lx00887_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n81_α:
 mov rdi, qword ptr [rip + .Lx00888_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain00838_n82_α
 xchain00838_n81_β:
 jmp xchain00838_n83_α
.Lx00888_0:
 .quad .Lx00888_0_s
.Lx00888_0_s:
 .string "everyto"
 xchain00838_n82_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8640]
 mov rdx, qword ptr [rbp + 8648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00889_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00889_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00889_3]
 lea rdx, [rip + .Lx00889_4]
 jmp rax
.Lx00889_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00889_2
.Lx00889_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00889_2
.Lx00889_1:
 call rt_faildescr@PLT
.Lx00889_2:
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 cmp eax, 99
 je xchain00838_n83_α
 jmp xchain00838_n83_α
 xchain00838_n82_β:
 jmp xchain00838_n83_α
.Lx00889_0:
 .quad .Lx00889_0_s
.Lx00889_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n83_α:
 mov rdi, qword ptr [rip + .Lx00890_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 jmp xchain00838_n84_α
 xchain00838_n83_β:
 jmp xchain00838_n85_α
.Lx00890_0:
 .quad .Lx00890_0_s
.Lx00890_0_s:
 .string "everyalt"
 xchain00838_n84_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8560]
 mov rdx, qword ptr [rbp + 8568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00891_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00891_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00891_3]
 lea rdx, [rip + .Lx00891_4]
 jmp rax
.Lx00891_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00891_2
.Lx00891_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00891_2
.Lx00891_1:
 call rt_faildescr@PLT
.Lx00891_2:
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain00838_n85_α
 jmp xchain00838_n85_α
 xchain00838_n84_β:
 jmp xchain00838_n85_α
.Lx00891_0:
 .quad .Lx00891_0_s
.Lx00891_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n85_α:
 mov rdi, qword ptr [rip + .Lx00892_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain00838_n86_α
 xchain00838_n85_β:
 jmp xchain00838_n87_α
.Lx00892_0:
 .quad .Lx00892_0_s
.Lx00892_0_s:
 .string "conj5"
 xchain00838_n86_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8480]
 mov rdx, qword ptr [rbp + 8488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00893_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00893_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00893_3]
 lea rdx, [rip + .Lx00893_4]
 jmp rax
.Lx00893_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00893_2
.Lx00893_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00893_2
.Lx00893_1:
 call rt_faildescr@PLT
.Lx00893_2:
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 cmp eax, 99
 je xchain00838_n87_α
 jmp xchain00838_n87_α
 xchain00838_n86_β:
 jmp xchain00838_n87_α
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n87_α:
 mov rdi, qword ptr [rip + .Lx00894_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain00838_n88_α
 xchain00838_n87_β:
 jmp xchain00838_n89_α
.Lx00894_0:
 .quad .Lx00894_0_s
.Lx00894_0_s:
 .string "nullfunc"
 xchain00838_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8400]
 mov rdx, qword ptr [rbp + 8408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00895_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00895_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00895_3]
 lea rdx, [rip + .Lx00895_4]
 jmp rax
.Lx00895_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00895_2
.Lx00895_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00895_2
.Lx00895_1:
 call rt_faildescr@PLT
.Lx00895_2:
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain00838_n89_α
 jmp xchain00838_n89_α
 xchain00838_n88_β:
 jmp xchain00838_n89_α
.Lx00895_0:
 .quad .Lx00895_0_s
.Lx00895_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n89_α:
 mov rdi, qword ptr [rip + .Lx00896_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain00838_n90_α
 xchain00838_n89_β:
 jmp xchain00838_n91_α
.Lx00896_0:
 .quad .Lx00896_0_s
.Lx00896_0_s:
 .string "listcall"
 xchain00838_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8320]
 mov rdx, qword ptr [rbp + 8328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00897_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00897_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00897_3]
 lea rdx, [rip + .Lx00897_4]
 jmp rax
.Lx00897_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00897_2
.Lx00897_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00897_2
.Lx00897_1:
 call rt_faildescr@PLT
.Lx00897_2:
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je xchain00838_n91_α
 jmp xchain00838_n91_α
 xchain00838_n90_β:
 jmp xchain00838_n91_α
.Lx00897_0:
 .quad .Lx00897_0_s
.Lx00897_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n91_α:
 mov rdi, qword ptr [rip + .Lx00898_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain00838_n92_α
 xchain00838_n91_β:
 jmp xchain00838_n93_α
.Lx00898_0:
 .quad .Lx00898_0_s
.Lx00898_0_s:
 .string "marshal"
 xchain00838_n92_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8240]
 mov rdx, qword ptr [rbp + 8248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00899_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00899_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00899_3]
 lea rdx, [rip + .Lx00899_4]
 jmp rax
.Lx00899_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00899_2
.Lx00899_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00899_2
.Lx00899_1:
 call rt_faildescr@PLT
.Lx00899_2:
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je xchain00838_n93_α
 jmp xchain00838_n93_α
 xchain00838_n92_β:
 jmp xchain00838_n93_α
.Lx00899_0:
 .quad .Lx00899_0_s
.Lx00899_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n93_α:
 mov rdi, qword ptr [rip + .Lx00900_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain00838_n94_α
 xchain00838_n93_β:
 jmp xchain00838_n95_α
.Lx00900_0:
 .quad .Lx00900_0_s
.Lx00900_0_s:
 .string "evsusp"
 xchain00838_n94_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8160]
 mov rdx, qword ptr [rbp + 8168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00901_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00901_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00901_3]
 lea rdx, [rip + .Lx00901_4]
 jmp rax
.Lx00901_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00901_2
.Lx00901_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00901_2
.Lx00901_1:
 call rt_faildescr@PLT
.Lx00901_2:
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 cmp eax, 99
 je xchain00838_n95_α
 jmp xchain00838_n95_α
 xchain00838_n94_β:
 jmp xchain00838_n95_α
.Lx00901_0:
 .quad .Lx00901_0_s
.Lx00901_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n95_α:
 mov rdi, qword ptr [rip + .Lx00902_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain00838_n96_α
 xchain00838_n95_β:
 jmp xchain00838_n97_α
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "tointeger"
 xchain00838_n96_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8080]
 mov rdx, qword ptr [rbp + 8088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00903_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00903_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00903_3]
 lea rdx, [rip + .Lx00903_4]
 jmp rax
.Lx00903_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00903_2
.Lx00903_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00903_2
.Lx00903_1:
 call rt_faildescr@PLT
.Lx00903_2:
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain00838_n97_α
 jmp xchain00838_n97_α
 xchain00838_n96_β:
 jmp xchain00838_n97_α
.Lx00903_0:
 .quad .Lx00903_0_s
.Lx00903_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n97_α:
 mov rdi, qword ptr [rip + .Lx00904_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain00838_n98_α
 xchain00838_n97_β:
 jmp xchain00838_n99_α
.Lx00904_0:
 .quad .Lx00904_0_s
.Lx00904_0_s:
 .string "intcoerce"
 xchain00838_n98_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00905_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00905_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00905_3]
 lea rdx, [rip + .Lx00905_4]
 jmp rax
.Lx00905_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00905_2
.Lx00905_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00905_2
.Lx00905_1:
 call rt_faildescr@PLT
.Lx00905_2:
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain00838_n99_α
 jmp xchain00838_n99_α
 xchain00838_n98_β:
 jmp xchain00838_n99_α
.Lx00905_0:
 .quad .Lx00905_0_s
.Lx00905_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n99_α:
 mov rdi, qword ptr [rip + .Lx00906_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain00838_n00001_α
 xchain00838_n99_β:
 jmp xchain00838_n00002_α
.Lx00906_0:
 .quad .Lx00906_0_s
.Lx00906_0_s:
 .string "uplus"
 xchain00838_n00001_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7920]
 mov rdx, qword ptr [rbp + 7928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00907_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00907_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00907_3]
 lea rdx, [rip + .Lx00907_4]
 jmp rax
.Lx00907_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00907_2
.Lx00907_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00907_2
.Lx00907_1:
 call rt_faildescr@PLT
.Lx00907_2:
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 cmp eax, 99
 je xchain00838_n00002_α
 jmp xchain00838_n00002_α
 xchain00838_n00001_β:
 jmp xchain00838_n00002_α
.Lx00907_0:
 .quad .Lx00907_0_s
.Lx00907_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00002_α:
 mov rdi, qword ptr [rip + .Lx00908_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00838_n00909_α
 xchain00838_n00002_β:
 jmp xchain00838_n00910_α
.Lx00908_0:
 .quad .Lx00908_0_s
.Lx00908_0_s:
 .string "tostring"
 xchain00838_n00909_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7840]
 mov rdx, qword ptr [rbp + 7848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00911_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00911_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00911_3]
 lea rdx, [rip + .Lx00911_4]
 jmp rax
.Lx00911_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00911_2
.Lx00911_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00911_2
.Lx00911_1:
 call rt_faildescr@PLT
.Lx00911_2:
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain00838_n00910_α
 jmp xchain00838_n00910_α
 xchain00838_n00909_β:
 jmp xchain00838_n00910_α
.Lx00911_0:
 .quad .Lx00911_0_s
.Lx00911_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00910_α:
 mov rdi, qword ptr [rip + .Lx00912_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain00838_n00913_α
 xchain00838_n00910_β:
 jmp xchain00838_n00914_α
.Lx00912_0:
 .quad .Lx00912_0_s
.Lx00912_0_s:
 .string "strcoerce"
 xchain00838_n00913_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00915_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00915_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00915_3]
 lea rdx, [rip + .Lx00915_4]
 jmp rax
.Lx00915_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00915_2
.Lx00915_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00915_2
.Lx00915_1:
 call rt_faildescr@PLT
.Lx00915_2:
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain00838_n00914_α
 jmp xchain00838_n00914_α
 xchain00838_n00913_β:
 jmp xchain00838_n00914_α
.Lx00915_0:
 .quad .Lx00915_0_s
.Lx00915_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00914_α:
 mov rdi, qword ptr [rip + .Lx00916_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain00838_n00917_α
 xchain00838_n00914_β:
 jmp xchain00838_n00918_α
.Lx00916_0:
 .quad .Lx00916_0_s
.Lx00916_0_s:
 .string "absf"
 xchain00838_n00917_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7680]
 mov rdx, qword ptr [rbp + 7688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00919_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00919_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00919_3]
 lea rdx, [rip + .Lx00919_4]
 jmp rax
.Lx00919_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00919_2
.Lx00919_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00919_2
.Lx00919_1:
 call rt_faildescr@PLT
.Lx00919_2:
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain00838_n00918_α
 jmp xchain00838_n00918_α
 xchain00838_n00917_β:
 jmp xchain00838_n00918_α
.Lx00919_0:
 .quad .Lx00919_0_s
.Lx00919_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00918_α:
 mov rdi, qword ptr [rip + .Lx00920_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain00838_n00921_α
 xchain00838_n00918_β:
 jmp xchain00838_n00922_α
.Lx00920_0:
 .quad .Lx00920_0_s
.Lx00920_0_s:
 .string "intadd"
 xchain00838_n00921_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00923_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00923_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00923_3]
 lea rdx, [rip + .Lx00923_4]
 jmp rax
.Lx00923_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00923_2
.Lx00923_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00923_2
.Lx00923_1:
 call rt_faildescr@PLT
.Lx00923_2:
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain00838_n00922_α
 jmp xchain00838_n00922_α
 xchain00838_n00921_β:
 jmp xchain00838_n00922_α
.Lx00923_0:
 .quad .Lx00923_0_s
.Lx00923_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00922_α:
 mov rdi, qword ptr [rip + .Lx00924_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00838_n00003_α
 xchain00838_n00922_β:
 jmp xchain00838_n00925_α
.Lx00924_0:
 .quad .Lx00924_0_s
.Lx00924_0_s:
 .string "addfunc"
 xchain00838_n00003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7520]
 mov rdx, qword ptr [rbp + 7528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00926_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00926_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00926_3]
 lea rdx, [rip + .Lx00926_4]
 jmp rax
.Lx00926_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00926_2
.Lx00926_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00926_2
.Lx00926_1:
 call rt_faildescr@PLT
.Lx00926_2:
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain00838_n00925_α
 jmp xchain00838_n00925_α
 xchain00838_n00003_β:
 jmp xchain00838_n00925_α
.Lx00926_0:
 .quad .Lx00926_0_s
.Lx00926_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00925_α:
 mov rdi, qword ptr [rip + .Lx00927_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain00838_n00928_α
 xchain00838_n00925_β:
 jmp xchain00838_n00004_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "intpow"
 xchain00838_n00928_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7440]
 mov rdx, qword ptr [rbp + 7448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00929_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00929_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00929_3]
 lea rdx, [rip + .Lx00929_4]
 jmp rax
.Lx00929_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00929_2
.Lx00929_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00929_2
.Lx00929_1:
 call rt_faildescr@PLT
.Lx00929_2:
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain00838_n00004_α
 jmp xchain00838_n00004_α
 xchain00838_n00928_β:
 jmp xchain00838_n00004_α
.Lx00929_0:
 .quad .Lx00929_0_s
.Lx00929_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00004_α:
 mov rdi, qword ptr [rip + .Lx00930_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain00838_n00931_α
 xchain00838_n00004_β:
 jmp xchain00838_n00005_α
.Lx00930_0:
 .quad .Lx00930_0_s
.Lx00930_0_s:
 .string "intcmp"
 xchain00838_n00931_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7360]
 mov rdx, qword ptr [rbp + 7368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00932_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00932_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00932_3]
 lea rdx, [rip + .Lx00932_4]
 jmp rax
.Lx00932_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00932_2
.Lx00932_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00932_2
.Lx00932_1:
 call rt_faildescr@PLT
.Lx00932_2:
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain00838_n00005_α
 jmp xchain00838_n00005_α
 xchain00838_n00931_β:
 jmp xchain00838_n00005_α
.Lx00932_0:
 .quad .Lx00932_0_s
.Lx00932_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00005_α:
 mov rdi, qword ptr [rip + .Lx00933_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain00838_n00934_α
 xchain00838_n00005_β:
 jmp xchain00838_n00935_α
.Lx00933_0:
 .quad .Lx00933_0_s
.Lx00933_0_s:
 .string "rfact0"
 xchain00838_n00934_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7280]
 mov rdx, qword ptr [rbp + 7288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00936_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00936_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00936_3]
 lea rdx, [rip + .Lx00936_4]
 jmp rax
.Lx00936_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00936_2
.Lx00936_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00936_2
.Lx00936_1:
 call rt_faildescr@PLT
.Lx00936_2:
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain00838_n00935_α
 jmp xchain00838_n00935_α
 xchain00838_n00934_β:
 jmp xchain00838_n00935_α
.Lx00936_0:
 .quad .Lx00936_0_s
.Lx00936_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00935_α:
 mov rdi, qword ptr [rip + .Lx00937_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain00838_n00938_α
 xchain00838_n00935_β:
 jmp xchain00838_n00006_α
.Lx00937_0:
 .quad .Lx00937_0_s
.Lx00937_0_s:
 .string "rfact10"
 xchain00838_n00938_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7200]
 mov rdx, qword ptr [rbp + 7208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00939_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00939_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00939_3]
 lea rdx, [rip + .Lx00939_4]
 jmp rax
.Lx00939_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00939_2
.Lx00939_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00939_2
.Lx00939_1:
 call rt_faildescr@PLT
.Lx00939_2:
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain00838_n00006_α
 jmp xchain00838_n00006_α
 xchain00838_n00938_β:
 jmp xchain00838_n00006_α
.Lx00939_0:
 .quad .Lx00939_0_s
.Lx00939_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00006_α:
 mov rdi, qword ptr [rip + .Lx00940_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain00838_n00941_α
 xchain00838_n00006_β:
 jmp xchain00838_n00942_α
.Lx00940_0:
 .quad .Lx00940_0_s
.Lx00940_0_s:
 .string "rfib5"
 xchain00838_n00941_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7120]
 mov rdx, qword ptr [rbp + 7128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00943_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00943_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00943_3]
 lea rdx, [rip + .Lx00943_4]
 jmp rax
.Lx00943_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00943_2
.Lx00943_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00943_2
.Lx00943_1:
 call rt_faildescr@PLT
.Lx00943_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain00838_n00942_α
 jmp xchain00838_n00942_α
 xchain00838_n00941_β:
 jmp xchain00838_n00942_α
.Lx00943_0:
 .quad .Lx00943_0_s
.Lx00943_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00942_α:
 mov rdi, qword ptr [rip + .Lx00944_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain00838_n00945_α
 xchain00838_n00942_β:
 jmp xchain00838_n00946_α
.Lx00944_0:
 .quad .Lx00944_0_s
.Lx00944_0_s:
 .string "prslow"
 xchain00838_n00945_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7040]
 mov rdx, qword ptr [rbp + 7048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00947_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00947_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00947_3]
 lea rdx, [rip + .Lx00947_4]
 jmp rax
.Lx00947_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00947_2
.Lx00947_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00947_2
.Lx00947_1:
 call rt_faildescr@PLT
.Lx00947_2:
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain00838_n00946_α
 jmp xchain00838_n00946_α
 xchain00838_n00945_β:
 jmp xchain00838_n00946_α
.Lx00947_0:
 .quad .Lx00947_0_s
.Lx00947_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00946_α:
 mov rdi, qword ptr [rip + .Lx00948_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain00838_n00949_α
 xchain00838_n00946_β:
 jmp xchain00838_n00950_α
.Lx00948_0:
 .quad .Lx00948_0_s
.Lx00948_0_s:
 .string "toreal"
 xchain00838_n00949_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6960]
 mov rdx, qword ptr [rbp + 6968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00951_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00951_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00951_3]
 lea rdx, [rip + .Lx00951_4]
 jmp rax
.Lx00951_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00951_2
.Lx00951_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00951_2
.Lx00951_1:
 call rt_faildescr@PLT
.Lx00951_2:
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain00838_n00950_α
 jmp xchain00838_n00950_α
 xchain00838_n00949_β:
 jmp xchain00838_n00950_α
.Lx00951_0:
 .quad .Lx00951_0_s
.Lx00951_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00950_α:
 mov rdi, qword ptr [rip + .Lx00952_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain00838_n00953_α
 xchain00838_n00950_β:
 jmp xchain00838_n00954_α
.Lx00952_0:
 .quad .Lx00952_0_s
.Lx00952_0_s:
 .string "realcoerce"
 xchain00838_n00953_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6880]
 mov rdx, qword ptr [rbp + 6888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00955_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00955_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00955_3]
 lea rdx, [rip + .Lx00955_4]
 jmp rax
.Lx00955_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00955_2
.Lx00955_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00955_2
.Lx00955_1:
 call rt_faildescr@PLT
.Lx00955_2:
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je xchain00838_n00954_α
 jmp xchain00838_n00954_α
 xchain00838_n00953_β:
 jmp xchain00838_n00954_α
.Lx00955_0:
 .quad .Lx00955_0_s
.Lx00955_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00954_α:
 mov rdi, qword ptr [rip + .Lx00956_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain00838_n00957_α
 xchain00838_n00954_β:
 jmp xchain00838_n00958_α
.Lx00956_0:
 .quad .Lx00956_0_s
.Lx00956_0_s:
 .string "uplusr"
 xchain00838_n00957_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6800]
 mov rdx, qword ptr [rbp + 6808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00959_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00959_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00959_3]
 lea rdx, [rip + .Lx00959_4]
 jmp rax
.Lx00959_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00959_2
.Lx00959_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00959_2
.Lx00959_1:
 call rt_faildescr@PLT
.Lx00959_2:
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain00838_n00958_α
 jmp xchain00838_n00958_α
 xchain00838_n00957_β:
 jmp xchain00838_n00958_α
.Lx00959_0:
 .quad .Lx00959_0_s
.Lx00959_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00958_α:
 mov rdi, qword ptr [rip + .Lx00960_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00838_n00007_α
 xchain00838_n00958_β:
 jmp xchain00838_n00961_α
.Lx00960_0:
 .quad .Lx00960_0_s
.Lx00960_0_s:
 .string "rtostring"
 xchain00838_n00007_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6720]
 mov rdx, qword ptr [rbp + 6728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00962_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00962_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00962_3]
 lea rdx, [rip + .Lx00962_4]
 jmp rax
.Lx00962_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00962_2
.Lx00962_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00962_2
.Lx00962_1:
 call rt_faildescr@PLT
.Lx00962_2:
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain00838_n00961_α
 jmp xchain00838_n00961_α
 xchain00838_n00007_β:
 jmp xchain00838_n00961_α
.Lx00962_0:
 .quad .Lx00962_0_s
.Lx00962_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00961_α:
 mov rdi, qword ptr [rip + .Lx00963_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain00838_n00964_α
 xchain00838_n00961_β:
 jmp xchain00838_n00965_α
.Lx00963_0:
 .quad .Lx00963_0_s
.Lx00963_0_s:
 .string "strcoercer"
 xchain00838_n00964_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6640]
 mov rdx, qword ptr [rbp + 6648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00966_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00966_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00966_3]
 lea rdx, [rip + .Lx00966_4]
 jmp rax
.Lx00966_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00966_2
.Lx00966_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00966_2
.Lx00966_1:
 call rt_faildescr@PLT
.Lx00966_2:
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain00838_n00965_α
 jmp xchain00838_n00965_α
 xchain00838_n00964_β:
 jmp xchain00838_n00965_α
.Lx00966_0:
 .quad .Lx00966_0_s
.Lx00966_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00965_α:
 mov rdi, qword ptr [rip + .Lx00967_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00838_n00968_α
 xchain00838_n00965_β:
 jmp xchain00838_n00969_α
.Lx00967_0:
 .quad .Lx00967_0_s
.Lx00967_0_s:
 .string "realcmp"
 xchain00838_n00968_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00970_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00970_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00970_3]
 lea rdx, [rip + .Lx00970_4]
 jmp rax
.Lx00970_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00970_2
.Lx00970_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00970_2
.Lx00970_1:
 call rt_faildescr@PLT
.Lx00970_2:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain00838_n00969_α
 jmp xchain00838_n00969_α
 xchain00838_n00968_β:
 jmp xchain00838_n00969_α
.Lx00970_0:
 .quad .Lx00970_0_s
.Lx00970_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00969_α:
 mov rdi, qword ptr [rip + .Lx00971_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain00838_n00008_α
 xchain00838_n00969_β:
 jmp xchain00838_n00972_α
.Lx00971_0:
 .quad .Lx00971_0_s
.Lx00971_0_s:
 .string "sqrtf"
 xchain00838_n00008_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6480]
 mov rdx, qword ptr [rbp + 6488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00973_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00973_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00973_3]
 lea rdx, [rip + .Lx00973_4]
 jmp rax
.Lx00973_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00973_2
.Lx00973_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00973_2
.Lx00973_1:
 call rt_faildescr@PLT
.Lx00973_2:
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain00838_n00972_α
 jmp xchain00838_n00972_α
 xchain00838_n00008_β:
 jmp xchain00838_n00972_α
.Lx00973_0:
 .quad .Lx00973_0_s
.Lx00973_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00972_α:
 mov rdi, qword ptr [rip + .Lx00974_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00838_n00975_α
 xchain00838_n00972_β:
 jmp xchain00838_n00009_α
.Lx00974_0:
 .quad .Lx00974_0_s
.Lx00974_0_s:
 .string "cosf"
 xchain00838_n00975_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6400]
 mov rdx, qword ptr [rbp + 6408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00976_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00976_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00976_3]
 lea rdx, [rip + .Lx00976_4]
 jmp rax
.Lx00976_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00976_2
.Lx00976_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00976_2
.Lx00976_1:
 call rt_faildescr@PLT
.Lx00976_2:
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain00838_n00009_α
 jmp xchain00838_n00009_α
 xchain00838_n00975_β:
 jmp xchain00838_n00009_α
.Lx00976_0:
 .quad .Lx00976_0_s
.Lx00976_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00009_α:
 mov rdi, qword ptr [rip + .Lx00977_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00838_n00978_α
 xchain00838_n00009_β:
 jmp xchain00838_n00979_α
.Lx00977_0:
 .quad .Lx00977_0_s
.Lx00977_0_s:
 .string "logf"
 xchain00838_n00978_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6320]
 mov rdx, qword ptr [rbp + 6328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00980_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00980_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00980_3]
 lea rdx, [rip + .Lx00980_4]
 jmp rax
.Lx00980_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00980_2
.Lx00980_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00980_2
.Lx00980_1:
 call rt_faildescr@PLT
.Lx00980_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain00838_n00979_α
 jmp xchain00838_n00979_α
 xchain00838_n00978_β:
 jmp xchain00838_n00979_α
.Lx00980_0:
 .quad .Lx00980_0_s
.Lx00980_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00979_α:
 mov rdi, qword ptr [rip + .Lx00981_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00838_n00010_α
 xchain00838_n00979_β:
 jmp xchain00838_n00982_α
.Lx00981_0:
 .quad .Lx00981_0_s
.Lx00981_0_s:
 .string "charf"
 xchain00838_n00010_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00983_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00983_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00983_3]
 lea rdx, [rip + .Lx00983_4]
 jmp rax
.Lx00983_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00983_2
.Lx00983_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00983_2
.Lx00983_1:
 call rt_faildescr@PLT
.Lx00983_2:
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00838_n00982_α
 jmp xchain00838_n00982_α
 xchain00838_n00010_β:
 jmp xchain00838_n00982_α
.Lx00983_0:
 .quad .Lx00983_0_s
.Lx00983_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00982_α:
 mov rdi, qword ptr [rip + .Lx00984_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain00838_n00011_α
 xchain00838_n00982_β:
 jmp xchain00838_n00985_α
.Lx00984_0:
 .quad .Lx00984_0_s
.Lx00984_0_s:
 .string "ordf"
 xchain00838_n00011_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00986_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00986_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00986_3]
 lea rdx, [rip + .Lx00986_4]
 jmp rax
.Lx00986_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00986_2
.Lx00986_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00986_2
.Lx00986_1:
 call rt_faildescr@PLT
.Lx00986_2:
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain00838_n00985_α
 jmp xchain00838_n00985_α
 xchain00838_n00011_β:
 jmp xchain00838_n00985_α
.Lx00986_0:
 .quad .Lx00986_0_s
.Lx00986_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00985_α:
 mov rdi, qword ptr [rip + .Lx00987_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00838_n00012_α
 xchain00838_n00985_β:
 jmp xchain00838_n00988_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "strsize"
 xchain00838_n00012_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6080]
 mov rdx, qword ptr [rbp + 6088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00989_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00989_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00989_3]
 lea rdx, [rip + .Lx00989_4]
 jmp rax
.Lx00989_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00989_2
.Lx00989_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00989_2
.Lx00989_1:
 call rt_faildescr@PLT
.Lx00989_2:
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 cmp eax, 99
 je xchain00838_n00988_α
 jmp xchain00838_n00988_α
 xchain00838_n00012_β:
 jmp xchain00838_n00988_α
.Lx00989_0:
 .quad .Lx00989_0_s
.Lx00989_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00988_α:
 mov rdi, qword ptr [rip + .Lx00990_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00838_n00991_α
 xchain00838_n00988_β:
 jmp xchain00838_n00992_α
.Lx00990_0:
 .quad .Lx00990_0_s
.Lx00990_0_s:
 .string "strpick"
 xchain00838_n00991_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6000]
 mov rdx, qword ptr [rbp + 6008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00993_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00993_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00993_3]
 lea rdx, [rip + .Lx00993_4]
 jmp rax
.Lx00993_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00993_2
.Lx00993_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00993_2
.Lx00993_1:
 call rt_faildescr@PLT
.Lx00993_2:
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 cmp eax, 99
 je xchain00838_n00992_α
 jmp xchain00838_n00992_α
 xchain00838_n00991_β:
 jmp xchain00838_n00992_α
.Lx00993_0:
 .quad .Lx00993_0_s
.Lx00993_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00992_α:
 mov rdi, qword ptr [rip + .Lx00994_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain00838_n00995_α
 xchain00838_n00992_β:
 jmp xchain00838_n00013_α
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "strbang"
 xchain00838_n00995_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5920]
 mov rdx, qword ptr [rbp + 5928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00996_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00996_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00996_3]
 lea rdx, [rip + .Lx00996_4]
 jmp rax
.Lx00996_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00996_2
.Lx00996_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00996_2
.Lx00996_1:
 call rt_faildescr@PLT
.Lx00996_2:
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain00838_n00013_α
 jmp xchain00838_n00013_α
 xchain00838_n00995_β:
 jmp xchain00838_n00013_α
.Lx00996_0:
 .quad .Lx00996_0_s
.Lx00996_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00013_α:
 mov rdi, qword ptr [rip + .Lx00997_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00838_n00014_α
 xchain00838_n00013_β:
 jmp xchain00838_n00998_α
.Lx00997_0:
 .quad .Lx00997_0_s
.Lx00997_0_s:
 .string "strsub"
 xchain00838_n00014_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00999_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00999_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00999_3]
 lea rdx, [rip + .Lx00999_4]
 jmp rax
.Lx00999_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00999_2
.Lx00999_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00999_2
.Lx00999_1:
 call rt_faildescr@PLT
.Lx00999_2:
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain00838_n00998_α
 jmp xchain00838_n00998_α
 xchain00838_n00014_β:
 jmp xchain00838_n00998_α
.Lx00999_0:
 .quad .Lx00999_0_s
.Lx00999_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00998_α:
 mov rdi, qword ptr [rip + .Lx01000_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain00838_n00015_α
 xchain00838_n00998_β:
 jmp xchain00838_n00016_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "substr"
 xchain00838_n00015_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5760]
 mov rdx, qword ptr [rbp + 5768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01001_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01001_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01001_3]
 lea rdx, [rip + .Lx01001_4]
 jmp rax
.Lx01001_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01001_2
.Lx01001_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01001_2
.Lx01001_1:
 call rt_faildescr@PLT
.Lx01001_2:
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain00838_n00016_α
 jmp xchain00838_n00016_α
 xchain00838_n00015_β:
 jmp xchain00838_n00016_α
.Lx01001_0:
 .quad .Lx01001_0_s
.Lx01001_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00016_α:
 mov rdi, qword ptr [rip + .Lx01002_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain00838_n01003_α
 xchain00838_n00016_β:
 jmp xchain00838_n01004_α
.Lx01002_0:
 .quad .Lx01002_0_s
.Lx01002_0_s:
 .string "subsasg"
 xchain00838_n01003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5680]
 mov rdx, qword ptr [rbp + 5688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01005_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01005_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01005_3]
 lea rdx, [rip + .Lx01005_4]
 jmp rax
.Lx01005_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01005_2
.Lx01005_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01005_2
.Lx01005_1:
 call rt_faildescr@PLT
.Lx01005_2:
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain00838_n01004_α
 jmp xchain00838_n01004_α
 xchain00838_n01003_β:
 jmp xchain00838_n01004_α
.Lx01005_0:
 .quad .Lx01005_0_s
.Lx01005_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01004_α:
 mov rdi, qword ptr [rip + .Lx01006_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00838_n00017_α
 xchain00838_n01004_β:
 jmp xchain00838_n01007_α
.Lx01006_0:
 .quad .Lx01006_0_s
.Lx01006_0_s:
 .string "strcmp"
 xchain00838_n00017_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5600]
 mov rdx, qword ptr [rbp + 5608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01008_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01008_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01008_3]
 lea rdx, [rip + .Lx01008_4]
 jmp rax
.Lx01008_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01008_2
.Lx01008_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01008_2
.Lx01008_1:
 call rt_faildescr@PLT
.Lx01008_2:
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain00838_n01007_α
 jmp xchain00838_n01007_α
 xchain00838_n00017_β:
 jmp xchain00838_n01007_α
.Lx01008_0:
 .quad .Lx01008_0_s
.Lx01008_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01007_α:
 mov rdi, qword ptr [rip + .Lx01009_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain00838_n01010_α
 xchain00838_n01007_β:
 jmp xchain00838_n01011_α
.Lx01009_0:
 .quad .Lx01009_0_s
.Lx01009_0_s:
 .string "strident"
 xchain00838_n01010_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5520]
 mov rdx, qword ptr [rbp + 5528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01012_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01012_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01012_3]
 lea rdx, [rip + .Lx01012_4]
 jmp rax
.Lx01012_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01012_2
.Lx01012_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01012_2
.Lx01012_1:
 call rt_faildescr@PLT
.Lx01012_2:
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain00838_n01011_α
 jmp xchain00838_n01011_α
 xchain00838_n01010_β:
 jmp xchain00838_n01011_α
.Lx01012_0:
 .quad .Lx01012_0_s
.Lx01012_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01011_α:
 mov rdi, qword ptr [rip + .Lx01013_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain00838_n01014_α
 xchain00838_n01011_β:
 jmp xchain00838_n00018_α
.Lx01013_0:
 .quad .Lx01013_0_s
.Lx01013_0_s:
 .string "concat"
 xchain00838_n01014_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5440]
 mov rdx, qword ptr [rbp + 5448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01015_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01015_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01015_3]
 lea rdx, [rip + .Lx01015_4]
 jmp rax
.Lx01015_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01015_2
.Lx01015_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01015_2
.Lx01015_1:
 call rt_faildescr@PLT
.Lx01015_2:
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain00838_n00018_α
 jmp xchain00838_n00018_α
 xchain00838_n01014_β:
 jmp xchain00838_n00018_α
.Lx01015_0:
 .quad .Lx01015_0_s
.Lx01015_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00018_α:
 mov rdi, qword ptr [rip + .Lx01016_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain00838_n01017_α
 xchain00838_n00018_β:
 jmp xchain00838_n01018_α
.Lx01016_0:
 .quad .Lx01016_0_s
.Lx01016_0_s:
 .string "reversef"
 xchain00838_n01017_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01019_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01019_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01019_3]
 lea rdx, [rip + .Lx01019_4]
 jmp rax
.Lx01019_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01019_2
.Lx01019_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01019_2
.Lx01019_1:
 call rt_faildescr@PLT
.Lx01019_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain00838_n01018_α
 jmp xchain00838_n01018_α
 xchain00838_n01017_β:
 jmp xchain00838_n01018_α
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01018_α:
 mov rdi, qword ptr [rip + .Lx01020_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain00838_n01021_α
 xchain00838_n01018_β:
 jmp xchain00838_n00019_α
.Lx01020_0:
 .quad .Lx01020_0_s
.Lx01020_0_s:
 .string "trimf"
 xchain00838_n01021_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01022_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01022_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01022_3]
 lea rdx, [rip + .Lx01022_4]
 jmp rax
.Lx01022_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01022_2
.Lx01022_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01022_2
.Lx01022_1:
 call rt_faildescr@PLT
.Lx01022_2:
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain00838_n00019_α
 jmp xchain00838_n00019_α
 xchain00838_n01021_β:
 jmp xchain00838_n00019_α
.Lx01022_0:
 .quad .Lx01022_0_s
.Lx01022_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00019_α:
 mov rdi, qword ptr [rip + .Lx01023_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain00838_n00020_α
 xchain00838_n00019_β:
 jmp xchain00838_n01024_α
.Lx01023_0:
 .quad .Lx01023_0_s
.Lx01023_0_s:
 .string "replf"
 xchain00838_n00020_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5200]
 mov rdx, qword ptr [rbp + 5208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01025_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01025_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01025_3]
 lea rdx, [rip + .Lx01025_4]
 jmp rax
.Lx01025_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01025_2
.Lx01025_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01025_2
.Lx01025_1:
 call rt_faildescr@PLT
.Lx01025_2:
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain00838_n01024_α
 jmp xchain00838_n01024_α
 xchain00838_n00020_β:
 jmp xchain00838_n01024_α
.Lx01025_0:
 .quad .Lx01025_0_s
.Lx01025_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01024_α:
 mov rdi, qword ptr [rip + .Lx01026_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain00838_n01027_α
 xchain00838_n01024_β:
 jmp xchain00838_n01028_α
.Lx01026_0:
 .quad .Lx01026_0_s
.Lx01026_0_s:
 .string "leftf"
 xchain00838_n01027_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01029_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01029_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01029_3]
 lea rdx, [rip + .Lx01029_4]
 jmp rax
.Lx01029_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01029_2
.Lx01029_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01029_2
.Lx01029_1:
 call rt_faildescr@PLT
.Lx01029_2:
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain00838_n01028_α
 jmp xchain00838_n01028_α
 xchain00838_n01027_β:
 jmp xchain00838_n01028_α
.Lx01029_0:
 .quad .Lx01029_0_s
.Lx01029_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01028_α:
 mov rdi, qword ptr [rip + .Lx01030_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain00838_n01031_α
 xchain00838_n01028_β:
 jmp xchain00838_n00021_α
.Lx01030_0:
 .quad .Lx01030_0_s
.Lx01030_0_s:
 .string "centerf"
 xchain00838_n01031_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01032_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01032_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01032_3]
 lea rdx, [rip + .Lx01032_4]
 jmp rax
.Lx01032_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01032_2
.Lx01032_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01032_2
.Lx01032_1:
 call rt_faildescr@PLT
.Lx01032_2:
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain00838_n00021_α
 jmp xchain00838_n00021_α
 xchain00838_n01031_β:
 jmp xchain00838_n00021_α
.Lx01032_0:
 .quad .Lx01032_0_s
.Lx01032_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00021_α:
 mov rdi, qword ptr [rip + .Lx01033_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain00838_n00022_α
 xchain00838_n00021_β:
 jmp xchain00838_n00023_α
.Lx01033_0:
 .quad .Lx01033_0_s
.Lx01033_0_s:
 .string "rightf"
 xchain00838_n00022_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01034_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01034_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01034_3]
 lea rdx, [rip + .Lx01034_4]
 jmp rax
.Lx01034_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01034_2
.Lx01034_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01034_2
.Lx01034_1:
 call rt_faildescr@PLT
.Lx01034_2:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain00838_n00023_α
 jmp xchain00838_n00023_α
 xchain00838_n00022_β:
 jmp xchain00838_n00023_α
.Lx01034_0:
 .quad .Lx01034_0_s
.Lx01034_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00023_α:
 mov rdi, qword ptr [rip + .Lx01035_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain00838_n01036_α
 xchain00838_n00023_β:
 jmp xchain00838_n01037_α
.Lx01035_0:
 .quad .Lx01035_0_s
.Lx01035_0_s:
 .string "entabf"
 xchain00838_n01036_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01038_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01038_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01038_3]
 lea rdx, [rip + .Lx01038_4]
 jmp rax
.Lx01038_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01038_2
.Lx01038_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01038_2
.Lx01038_1:
 call rt_faildescr@PLT
.Lx01038_2:
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp eax, 99
 je xchain00838_n01037_α
 jmp xchain00838_n01037_α
 xchain00838_n01036_β:
 jmp xchain00838_n01037_α
.Lx01038_0:
 .quad .Lx01038_0_s
.Lx01038_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01037_α:
 mov rdi, qword ptr [rip + .Lx01039_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00838_n01040_α
 xchain00838_n01037_β:
 jmp xchain00838_n00024_α
.Lx01039_0:
 .quad .Lx01039_0_s
.Lx01039_0_s:
 .string "detabf"
 xchain00838_n01040_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01041_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01041_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01041_3]
 lea rdx, [rip + .Lx01041_4]
 jmp rax
.Lx01041_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01041_2
.Lx01041_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01041_2
.Lx01041_1:
 call rt_faildescr@PLT
.Lx01041_2:
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain00838_n00024_α
 jmp xchain00838_n00024_α
 xchain00838_n01040_β:
 jmp xchain00838_n00024_α
.Lx01041_0:
 .quad .Lx01041_0_s
.Lx01041_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00024_α:
 mov rdi, qword ptr [rip + .Lx01042_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00838_n00025_α
 xchain00838_n00024_β:
 jmp xchain00838_n01043_α
.Lx01042_0:
 .quad .Lx01042_0_s
.Lx01042_0_s:
 .string "mapf"
 xchain00838_n00025_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01044_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01044_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01044_3]
 lea rdx, [rip + .Lx01044_4]
 jmp rax
.Lx01044_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01044_2
.Lx01044_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01044_2
.Lx01044_1:
 call rt_faildescr@PLT
.Lx01044_2:
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain00838_n01043_α
 jmp xchain00838_n01043_α
 xchain00838_n00025_β:
 jmp xchain00838_n01043_α
.Lx01044_0:
 .quad .Lx01044_0_s
.Lx01044_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01043_α:
 mov rdi, qword ptr [rip + .Lx01045_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00838_n01046_α
 xchain00838_n01043_β:
 jmp xchain00838_n01047_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "map1"
 xchain00838_n01046_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01048_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01048_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01048_3]
 lea rdx, [rip + .Lx01048_4]
 jmp rax
.Lx01048_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01048_2
.Lx01048_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01048_2
.Lx01048_1:
 call rt_faildescr@PLT
.Lx01048_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain00838_n01047_α
 jmp xchain00838_n01047_α
 xchain00838_n01046_β:
 jmp xchain00838_n01047_α
.Lx01048_0:
 .quad .Lx01048_0_s
.Lx01048_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01047_α:
 mov rdi, qword ptr [rip + .Lx01049_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00838_n01050_α
 xchain00838_n01047_β:
 jmp xchain00838_n00026_α
.Lx01049_0:
 .quad .Lx01049_0_s
.Lx01049_0_s:
 .string "map2"
 xchain00838_n01050_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01051_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01051_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01051_3]
 lea rdx, [rip + .Lx01051_4]
 jmp rax
.Lx01051_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01051_2
.Lx01051_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01051_2
.Lx01051_1:
 call rt_faildescr@PLT
.Lx01051_2:
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain00838_n00026_α
 jmp xchain00838_n00026_α
 xchain00838_n01050_β:
 jmp xchain00838_n00026_α
.Lx01051_0:
 .quad .Lx01051_0_s
.Lx01051_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00026_α:
 mov rdi, qword ptr [rip + .Lx01052_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00838_n00027_α
 xchain00838_n00026_β:
 jmp xchain00838_n00028_α
.Lx01052_0:
 .quad .Lx01052_0_s
.Lx01052_0_s:
 .string "tablemap"
 xchain00838_n00027_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01053_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01053_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01053_3]
 lea rdx, [rip + .Lx01053_4]
 jmp rax
.Lx01053_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01053_2
.Lx01053_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01053_2
.Lx01053_1:
 call rt_faildescr@PLT
.Lx01053_2:
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain00838_n00028_α
 jmp xchain00838_n00028_α
 xchain00838_n00027_β:
 jmp xchain00838_n00028_α
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00028_α:
 mov rdi, qword ptr [rip + .Lx01054_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00838_n01055_α
 xchain00838_n00028_β:
 jmp xchain00838_n01056_α
.Lx01054_0:
 .quad .Lx01054_0_s
.Lx01054_0_s:
 .string "listmap"
 xchain00838_n01055_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01057_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01057_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01057_3]
 lea rdx, [rip + .Lx01057_4]
 jmp rax
.Lx01057_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01057_2
.Lx01057_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01057_2
.Lx01057_1:
 call rt_faildescr@PLT
.Lx01057_2:
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain00838_n01056_α
 jmp xchain00838_n01056_α
 xchain00838_n01055_β:
 jmp xchain00838_n01056_α
.Lx01057_0:
 .quad .Lx01057_0_s
.Lx01057_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01056_α:
 mov rdi, qword ptr [rip + .Lx01058_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain00838_n01059_α
 xchain00838_n01056_β:
 jmp xchain00838_n00029_α
.Lx01058_0:
 .quad .Lx01058_0_s
.Lx01058_0_s:
 .string "nullscan"
 xchain00838_n01059_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01060_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01060_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01060_3]
 lea rdx, [rip + .Lx01060_4]
 jmp rax
.Lx01060_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01060_2
.Lx01060_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01060_2
.Lx01060_1:
 call rt_faildescr@PLT
.Lx01060_2:
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je xchain00838_n00029_α
 jmp xchain00838_n00029_α
 xchain00838_n01059_β:
 jmp xchain00838_n00029_α
.Lx01060_0:
 .quad .Lx01060_0_s
.Lx01060_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00029_α:
 mov rdi, qword ptr [rip + .Lx01061_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00838_n00030_α
 xchain00838_n00029_β:
 jmp xchain00838_n01062_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "movef"
 xchain00838_n00030_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01063_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01063_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01063_3]
 lea rdx, [rip + .Lx01063_4]
 jmp rax
.Lx01063_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01063_2
.Lx01063_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01063_2
.Lx01063_1:
 call rt_faildescr@PLT
.Lx01063_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain00838_n01062_α
 jmp xchain00838_n01062_α
 xchain00838_n00030_β:
 jmp xchain00838_n01062_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01062_α:
 mov rdi, qword ptr [rip + .Lx01064_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00838_n01065_α
 xchain00838_n01062_β:
 jmp xchain00838_n01066_α
.Lx01064_0:
 .quad .Lx01064_0_s
.Lx01064_0_s:
 .string "mov11"
 xchain00838_n01065_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4160]
 mov rdx, qword ptr [rbp + 4168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01067_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01067_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01067_3]
 lea rdx, [rip + .Lx01067_4]
 jmp rax
.Lx01067_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01067_2
.Lx01067_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01067_2
.Lx01067_1:
 call rt_faildescr@PLT
.Lx01067_2:
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00838_n01066_α
 jmp xchain00838_n01066_α
 xchain00838_n01065_β:
 jmp xchain00838_n01066_α
.Lx01067_0:
 .quad .Lx01067_0_s
.Lx01067_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01066_α:
 mov rdi, qword ptr [rip + .Lx01068_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00838_n01069_α
 xchain00838_n01066_β:
 jmp xchain00838_n00031_α
.Lx01068_0:
 .quad .Lx01068_0_s
.Lx01068_0_s:
 .string "pos11"
 xchain00838_n01069_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01070_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01070_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01070_3]
 lea rdx, [rip + .Lx01070_4]
 jmp rax
.Lx01070_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01070_2
.Lx01070_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01070_2
.Lx01070_1:
 call rt_faildescr@PLT
.Lx01070_2:
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain00838_n00031_α
 jmp xchain00838_n00031_α
 xchain00838_n01069_β:
 jmp xchain00838_n00031_α
.Lx01070_0:
 .quad .Lx01070_0_s
.Lx01070_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00031_α:
 mov rdi, qword ptr [rip + .Lx01071_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00838_n00032_α
 xchain00838_n00031_β:
 jmp xchain00838_n00033_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "tabf"
 xchain00838_n00032_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01072_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01072_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01072_3]
 lea rdx, [rip + .Lx01072_4]
 jmp rax
.Lx01072_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01072_2
.Lx01072_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01072_2
.Lx01072_1:
 call rt_faildescr@PLT
.Lx01072_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00838_n00033_α
 jmp xchain00838_n00033_α
 xchain00838_n00032_β:
 jmp xchain00838_n00033_α
.Lx01072_0:
 .quad .Lx01072_0_s
.Lx01072_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00033_α:
 mov rdi, qword ptr [rip + .Lx01073_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain00838_n01074_α
 xchain00838_n00033_β:
 jmp xchain00838_n01075_α
.Lx01073_0:
 .quad .Lx01073_0_s
.Lx01073_0_s:
 .string "matchf"
 xchain00838_n01074_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01076_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01076_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01076_3]
 lea rdx, [rip + .Lx01076_4]
 jmp rax
.Lx01076_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01076_2
.Lx01076_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01076_2
.Lx01076_1:
 call rt_faildescr@PLT
.Lx01076_2:
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain00838_n01075_α
 jmp xchain00838_n01075_α
 xchain00838_n01074_β:
 jmp xchain00838_n01075_α
.Lx01076_0:
 .quad .Lx01076_0_s
.Lx01076_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01075_α:
 mov rdi, qword ptr [rip + .Lx01077_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00838_n01078_α
 xchain00838_n01075_β:
 jmp xchain00838_n00034_α
.Lx01077_0:
 .quad .Lx01077_0_s
.Lx01077_0_s:
 .string "tabmat"
 xchain00838_n01078_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3840]
 mov rdx, qword ptr [rbp + 3848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01079_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01079_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01079_3]
 lea rdx, [rip + .Lx01079_4]
 jmp rax
.Lx01079_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01079_2
.Lx01079_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01079_2
.Lx01079_1:
 call rt_faildescr@PLT
.Lx01079_2:
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je xchain00838_n00034_α
 jmp xchain00838_n00034_α
 xchain00838_n01078_β:
 jmp xchain00838_n00034_α
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00034_α:
 mov rdi, qword ptr [rip + .Lx01080_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00838_n00035_α
 xchain00838_n00034_β:
 jmp xchain00838_n01081_α
.Lx01080_0:
 .quad .Lx01080_0_s
.Lx01080_0_s:
 .string "posf"
 xchain00838_n00035_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01082_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01082_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01082_3]
 lea rdx, [rip + .Lx01082_4]
 jmp rax
.Lx01082_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01082_2
.Lx01082_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01082_2
.Lx01082_1:
 call rt_faildescr@PLT
.Lx01082_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain00838_n01081_α
 jmp xchain00838_n01081_α
 xchain00838_n00035_β:
 jmp xchain00838_n01081_α
.Lx01082_0:
 .quad .Lx01082_0_s
.Lx01082_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01081_α:
 mov rdi, qword ptr [rip + .Lx01083_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain00838_n01084_α
 xchain00838_n01081_β:
 jmp xchain00838_n01085_α
.Lx01083_0:
 .quad .Lx01083_0_s
.Lx01083_0_s:
 .string "anyf"
 xchain00838_n01084_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01086_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01086_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01086_3]
 lea rdx, [rip + .Lx01086_4]
 jmp rax
.Lx01086_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01086_2
.Lx01086_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01086_2
.Lx01086_1:
 call rt_faildescr@PLT
.Lx01086_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain00838_n01085_α
 jmp xchain00838_n01085_α
 xchain00838_n01084_β:
 jmp xchain00838_n01085_α
.Lx01086_0:
 .quad .Lx01086_0_s
.Lx01086_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01085_α:
 mov rdi, qword ptr [rip + .Lx01087_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00838_n01088_α
 xchain00838_n01085_β:
 jmp xchain00838_n00036_α
.Lx01087_0:
 .quad .Lx01087_0_s
.Lx01087_0_s:
 .string "manyf"
 xchain00838_n01088_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01089_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01089_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01089_3]
 lea rdx, [rip + .Lx01089_4]
 jmp rax
.Lx01089_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01089_2
.Lx01089_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01089_2
.Lx01089_1:
 call rt_faildescr@PLT
.Lx01089_2:
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain00838_n00036_α
 jmp xchain00838_n00036_α
 xchain00838_n01088_β:
 jmp xchain00838_n00036_α
.Lx01089_0:
 .quad .Lx01089_0_s
.Lx01089_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00036_α:
 mov rdi, qword ptr [rip + .Lx01090_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain00838_n00037_α
 xchain00838_n00036_β:
 jmp xchain00838_n01091_α
.Lx01090_0:
 .quad .Lx01090_0_s
.Lx01090_0_s:
 .string "uptof"
 xchain00838_n00037_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3520]
 mov rdx, qword ptr [rbp + 3528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01092_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01092_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01092_3]
 lea rdx, [rip + .Lx01092_4]
 jmp rax
.Lx01092_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01092_2
.Lx01092_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01092_2
.Lx01092_1:
 call rt_faildescr@PLT
.Lx01092_2:
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain00838_n01091_α
 jmp xchain00838_n01091_α
 xchain00838_n00037_β:
 jmp xchain00838_n01091_α
.Lx01092_0:
 .quad .Lx01092_0_s
.Lx01092_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01091_α:
 mov rdi, qword ptr [rip + .Lx01093_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00838_n01094_α
 xchain00838_n01091_β:
 jmp xchain00838_n00038_α
.Lx01093_0:
 .quad .Lx01093_0_s
.Lx01093_0_s:
 .string "findf"
 xchain00838_n01094_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01095_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01095_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01095_3]
 lea rdx, [rip + .Lx01095_4]
 jmp rax
.Lx01095_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01095_2
.Lx01095_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01095_2
.Lx01095_1:
 call rt_faildescr@PLT
.Lx01095_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00838_n00038_α
 jmp xchain00838_n00038_α
 xchain00838_n01094_β:
 jmp xchain00838_n00038_α
.Lx01095_0:
 .quad .Lx01095_0_s
.Lx01095_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00038_α:
 mov rdi, qword ptr [rip + .Lx01096_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00838_n01097_α
 xchain00838_n00038_β:
 jmp xchain00838_n01098_α
.Lx01096_0:
 .quad .Lx01096_0_s
.Lx01096_0_s:
 .string "balf"
 xchain00838_n01097_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01099_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01099_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01099_3]
 lea rdx, [rip + .Lx01099_4]
 jmp rax
.Lx01099_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01099_2
.Lx01099_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01099_2
.Lx01099_1:
 call rt_faildescr@PLT
.Lx01099_2:
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain00838_n01098_α
 jmp xchain00838_n01098_α
 xchain00838_n01097_β:
 jmp xchain00838_n01098_α
.Lx01099_0:
 .quad .Lx01099_0_s
.Lx01099_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01098_α:
 mov rdi, qword ptr [rip + .Lx01100_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00838_n01101_α
 xchain00838_n01098_β:
 jmp xchain00838_n00039_α
.Lx01100_0:
 .quad .Lx01100_0_s
.Lx01100_0_s:
 .string "tocset"
 xchain00838_n01101_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01102_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01102_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01102_3]
 lea rdx, [rip + .Lx01102_4]
 jmp rax
.Lx01102_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01102_2
.Lx01102_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01102_2
.Lx01102_1:
 call rt_faildescr@PLT
.Lx01102_2:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain00838_n00039_α
 jmp xchain00838_n00039_α
 xchain00838_n01101_β:
 jmp xchain00838_n00039_α
.Lx01102_0:
 .quad .Lx01102_0_s
.Lx01102_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00039_α:
 mov rdi, qword ptr [rip + .Lx01103_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00838_n00040_α
 xchain00838_n00039_β:
 jmp xchain00838_n01104_α
.Lx01103_0:
 .quad .Lx01103_0_s
.Lx01103_0_s:
 .string "cssize"
 xchain00838_n00040_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01105_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01105_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01105_3]
 lea rdx, [rip + .Lx01105_4]
 jmp rax
.Lx01105_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01105_2
.Lx01105_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01105_2
.Lx01105_1:
 call rt_faildescr@PLT
.Lx01105_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain00838_n01104_α
 jmp xchain00838_n01104_α
 xchain00838_n00040_β:
 jmp xchain00838_n01104_α
.Lx01105_0:
 .quad .Lx01105_0_s
.Lx01105_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01104_α:
 mov rdi, qword ptr [rip + .Lx01106_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00838_n01107_α
 xchain00838_n01104_β:
 jmp xchain00838_n01108_α
.Lx01106_0:
 .quad .Lx01106_0_s
.Lx01106_0_s:
 .string "cscompl"
 xchain00838_n01107_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01109_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01109_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01109_3]
 lea rdx, [rip + .Lx01109_4]
 jmp rax
.Lx01109_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01109_2
.Lx01109_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01109_2
.Lx01109_1:
 call rt_faildescr@PLT
.Lx01109_2:
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00838_n01108_α
 jmp xchain00838_n01108_α
 xchain00838_n01107_β:
 jmp xchain00838_n01108_α
.Lx01109_0:
 .quad .Lx01109_0_s
.Lx01109_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01108_α:
 mov rdi, qword ptr [rip + .Lx01110_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00838_n01111_α
 xchain00838_n01108_β:
 jmp xchain00838_n00041_α
.Lx01110_0:
 .quad .Lx01110_0_s
.Lx01110_0_s:
 .string "lcreate"
 xchain00838_n01111_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01112_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01112_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01112_3]
 lea rdx, [rip + .Lx01112_4]
 jmp rax
.Lx01112_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01112_2
.Lx01112_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01112_2
.Lx01112_1:
 call rt_faildescr@PLT
.Lx01112_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00838_n00041_α
 jmp xchain00838_n00041_α
 xchain00838_n01111_β:
 jmp xchain00838_n00041_α
.Lx01112_0:
 .quad .Lx01112_0_s
.Lx01112_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00041_α:
 mov rdi, qword ptr [rip + .Lx01113_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00838_n00042_α
 xchain00838_n00041_β:
 jmp xchain00838_n00043_α
.Lx01113_0:
 .quad .Lx01113_0_s
.Lx01113_0_s:
 .string "lconst"
 xchain00838_n00042_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01114_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01114_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01114_3]
 lea rdx, [rip + .Lx01114_4]
 jmp rax
.Lx01114_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01114_2
.Lx01114_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01114_2
.Lx01114_1:
 call rt_faildescr@PLT
.Lx01114_2:
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain00838_n00043_α
 jmp xchain00838_n00043_α
 xchain00838_n00042_β:
 jmp xchain00838_n00043_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00043_α:
 mov rdi, qword ptr [rip + .Lx01115_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00838_n00044_α
 xchain00838_n00043_β:
 jmp xchain00838_n00045_α
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "lcopy"
 xchain00838_n00044_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01116_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01116_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01116_3]
 lea rdx, [rip + .Lx01116_4]
 jmp rax
.Lx01116_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01116_2
.Lx01116_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01116_2
.Lx01116_1:
 call rt_faildescr@PLT
.Lx01116_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain00838_n00045_α
 jmp xchain00838_n00045_α
 xchain00838_n00044_β:
 jmp xchain00838_n00045_α
.Lx01116_0:
 .quad .Lx01116_0_s
.Lx01116_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00045_α:
 mov rdi, qword ptr [rip + .Lx01117_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00838_n01118_α
 xchain00838_n00045_β:
 jmp xchain00838_n01119_α
.Lx01117_0:
 .quad .Lx01117_0_s
.Lx01117_0_s:
 .string "lsort"
 xchain00838_n01118_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01120_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01120_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01120_3]
 lea rdx, [rip + .Lx01120_4]
 jmp rax
.Lx01120_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01120_2
.Lx01120_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01120_2
.Lx01120_1:
 call rt_faildescr@PLT
.Lx01120_2:
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain00838_n01119_α
 jmp xchain00838_n01119_α
 xchain00838_n01118_β:
 jmp xchain00838_n01119_α
.Lx01120_0:
 .quad .Lx01120_0_s
.Lx01120_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01119_α:
 mov rdi, qword ptr [rip + .Lx01121_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00838_n01122_α
 xchain00838_n01119_β:
 jmp xchain00838_n00046_α
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "lsize"
 xchain00838_n01122_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01123_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01123_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01123_3]
 lea rdx, [rip + .Lx01123_4]
 jmp rax
.Lx01123_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01123_2
.Lx01123_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01123_2
.Lx01123_1:
 call rt_faildescr@PLT
.Lx01123_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain00838_n00046_α
 jmp xchain00838_n00046_α
 xchain00838_n01122_β:
 jmp xchain00838_n00046_α
.Lx01123_0:
 .quad .Lx01123_0_s
.Lx01123_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00046_α:
 mov rdi, qword ptr [rip + .Lx01124_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00838_n00047_α
 xchain00838_n00046_β:
 jmp xchain00838_n01125_α
.Lx01124_0:
 .quad .Lx01124_0_s
.Lx01124_0_s:
 .string "lpick"
 xchain00838_n00047_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01126_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01126_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01126_3]
 lea rdx, [rip + .Lx01126_4]
 jmp rax
.Lx01126_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01126_2
.Lx01126_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01126_2
.Lx01126_1:
 call rt_faildescr@PLT
.Lx01126_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain00838_n01125_α
 jmp xchain00838_n01125_α
 xchain00838_n00047_β:
 jmp xchain00838_n01125_α
.Lx01126_0:
 .quad .Lx01126_0_s
.Lx01126_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01125_α:
 mov rdi, qword ptr [rip + .Lx01127_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00838_n01128_α
 xchain00838_n01125_β:
 jmp xchain00838_n01129_α
.Lx01127_0:
 .quad .Lx01127_0_s
.Lx01127_0_s:
 .string "lbang"
 xchain00838_n01128_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01130_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01130_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01130_3]
 lea rdx, [rip + .Lx01130_4]
 jmp rax
.Lx01130_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01130_2
.Lx01130_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01130_2
.Lx01130_1:
 call rt_faildescr@PLT
.Lx01130_2:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain00838_n01129_α
 jmp xchain00838_n01129_α
 xchain00838_n01128_β:
 jmp xchain00838_n01129_α
.Lx01130_0:
 .quad .Lx01130_0_s
.Lx01130_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01129_α:
 mov rdi, qword ptr [rip + .Lx01131_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00838_n01132_α
 xchain00838_n01129_β:
 jmp xchain00838_n00048_α
.Lx01131_0:
 .quad .Lx01131_0_s
.Lx01131_0_s:
 .string "lsubscr"
 xchain00838_n01132_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2480]
 mov rdx, qword ptr [rbp + 2488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01133_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01133_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01133_3]
 lea rdx, [rip + .Lx01133_4]
 jmp rax
.Lx01133_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01133_2
.Lx01133_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01133_2
.Lx01133_1:
 call rt_faildescr@PLT
.Lx01133_2:
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain00838_n00048_α
 jmp xchain00838_n00048_α
 xchain00838_n01132_β:
 jmp xchain00838_n00048_α
.Lx01133_0:
 .quad .Lx01133_0_s
.Lx01133_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00048_α:
 mov rdi, qword ptr [rip + .Lx01134_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00838_n00049_α
 xchain00838_n00048_β:
 jmp xchain00838_n00050_α
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "put1get1"
 xchain00838_n00049_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01135_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01135_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01135_3]
 lea rdx, [rip + .Lx01135_4]
 jmp rax
.Lx01135_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01135_2
.Lx01135_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01135_2
.Lx01135_1:
 call rt_faildescr@PLT
.Lx01135_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00838_n00050_α
 jmp xchain00838_n00050_α
 xchain00838_n00049_β:
 jmp xchain00838_n00050_α
.Lx01135_0:
 .quad .Lx01135_0_s
.Lx01135_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00050_α:
 mov rdi, qword ptr [rip + .Lx01136_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00838_n00051_α
 xchain00838_n00050_β:
 jmp xchain00838_n00052_α
.Lx01136_0:
 .quad .Lx01136_0_s
.Lx01136_0_s:
 .string "put2get2"
 xchain00838_n00051_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01137_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01137_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01137_3]
 lea rdx, [rip + .Lx01137_4]
 jmp rax
.Lx01137_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01137_2
.Lx01137_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01137_2
.Lx01137_1:
 call rt_faildescr@PLT
.Lx01137_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00838_n00052_α
 jmp xchain00838_n00052_α
 xchain00838_n00051_β:
 jmp xchain00838_n00052_α
.Lx01137_0:
 .quad .Lx01137_0_s
.Lx01137_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00052_α:
 mov rdi, qword ptr [rip + .Lx01138_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00838_n01139_α
 xchain00838_n00052_β:
 jmp xchain00838_n01140_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "put3get3"
 xchain00838_n01139_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2240]
 mov rdx, qword ptr [rbp + 2248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01141_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01141_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01141_3]
 lea rdx, [rip + .Lx01141_4]
 jmp rax
.Lx01141_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01141_2
.Lx01141_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01141_2
.Lx01141_1:
 call rt_faildescr@PLT
.Lx01141_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain00838_n01140_α
 jmp xchain00838_n01140_α
 xchain00838_n01139_β:
 jmp xchain00838_n01140_α
.Lx01141_0:
 .quad .Lx01141_0_s
.Lx01141_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01140_α:
 mov rdi, qword ptr [rip + .Lx01142_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00838_n01143_α
 xchain00838_n01140_β:
 jmp xchain00838_n00053_α
.Lx01142_0:
 .quad .Lx01142_0_s
.Lx01142_0_s:
 .string "put4get4"
 xchain00838_n01143_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01144_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01144_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01144_3]
 lea rdx, [rip + .Lx01144_4]
 jmp rax
.Lx01144_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01144_2
.Lx01144_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01144_2
.Lx01144_1:
 call rt_faildescr@PLT
.Lx01144_2:
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain00838_n00053_α
 jmp xchain00838_n00053_α
 xchain00838_n01143_β:
 jmp xchain00838_n00053_α
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00053_α:
 mov rdi, qword ptr [rip + .Lx01145_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00838_n00054_α
 xchain00838_n00053_β:
 jmp xchain00838_n01146_α
.Lx01145_0:
 .quad .Lx01145_0_s
.Lx01145_0_s:
 .string "pushpop"
 xchain00838_n00054_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01147_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01147_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01147_3]
 lea rdx, [rip + .Lx01147_4]
 jmp rax
.Lx01147_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01147_2
.Lx01147_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01147_2
.Lx01147_1:
 call rt_faildescr@PLT
.Lx01147_2:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain00838_n01146_α
 jmp xchain00838_n01146_α
 xchain00838_n00054_β:
 jmp xchain00838_n01146_α
.Lx01147_0:
 .quad .Lx01147_0_s
.Lx01147_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01146_α:
 mov rdi, qword ptr [rip + .Lx01148_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00838_n01149_α
 xchain00838_n01146_β:
 jmp xchain00838_n01150_α
.Lx01148_0:
 .quad .Lx01148_0_s
.Lx01148_0_s:
 .string "putget12"
 xchain00838_n01149_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01151_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01151_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01151_3]
 lea rdx, [rip + .Lx01151_4]
 jmp rax
.Lx01151_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01151_2
.Lx01151_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01151_2
.Lx01151_1:
 call rt_faildescr@PLT
.Lx01151_2:
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain00838_n01150_α
 jmp xchain00838_n01150_α
 xchain00838_n01149_β:
 jmp xchain00838_n01150_α
.Lx01151_0:
 .quad .Lx01151_0_s
.Lx01151_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01150_α:
 mov rdi, qword ptr [rip + .Lx01152_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00838_n01153_α
 xchain00838_n01150_β:
 jmp xchain00838_n00055_α
.Lx01152_0:
 .quad .Lx01152_0_s
.Lx01152_0_s:
 .string "pushpop12"
 xchain00838_n01153_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01154_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01154_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01154_3]
 lea rdx, [rip + .Lx01154_4]
 jmp rax
.Lx01154_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01154_2
.Lx01154_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01154_2
.Lx01154_1:
 call rt_faildescr@PLT
.Lx01154_2:
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain00838_n00055_α
 jmp xchain00838_n00055_α
 xchain00838_n01153_β:
 jmp xchain00838_n00055_α
.Lx01154_0:
 .quad .Lx01154_0_s
.Lx01154_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00055_α:
 mov rdi, qword ptr [rip + .Lx01155_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00838_n00056_α
 xchain00838_n00055_β:
 jmp xchain00838_n00057_α
.Lx01155_0:
 .quad .Lx01155_0_s
.Lx01155_0_s:
 .string "setcreate"
 xchain00838_n00056_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01156_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01156_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01156_3]
 lea rdx, [rip + .Lx01156_4]
 jmp rax
.Lx01156_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01156_2
.Lx01156_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01156_2
.Lx01156_1:
 call rt_faildescr@PLT
.Lx01156_2:
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00838_n00057_α
 jmp xchain00838_n00057_α
 xchain00838_n00056_β:
 jmp xchain00838_n00057_α
.Lx01156_0:
 .quad .Lx01156_0_s
.Lx01156_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00057_α:
 mov rdi, qword ptr [rip + .Lx01157_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00838_n01158_α
 xchain00838_n00057_β:
 jmp xchain00838_n00058_α
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "setcopy"
 xchain00838_n01158_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01159_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01159_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01159_3]
 lea rdx, [rip + .Lx01159_4]
 jmp rax
.Lx01159_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01159_2
.Lx01159_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01159_2
.Lx01159_1:
 call rt_faildescr@PLT
.Lx01159_2:
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain00838_n00058_α
 jmp xchain00838_n00058_α
 xchain00838_n01158_β:
 jmp xchain00838_n00058_α
.Lx01159_0:
 .quad .Lx01159_0_s
.Lx01159_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00058_α:
 mov rdi, qword ptr [rip + .Lx01160_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00838_n01161_α
 xchain00838_n00058_β:
 jmp xchain00838_n01162_α
.Lx01160_0:
 .quad .Lx01160_0_s
.Lx01160_0_s:
 .string "setmember"
 xchain00838_n01161_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01163_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01163_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01163_3]
 lea rdx, [rip + .Lx01163_4]
 jmp rax
.Lx01163_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01163_2
.Lx01163_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01163_2
.Lx01163_1:
 call rt_faildescr@PLT
.Lx01163_2:
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00838_n01162_α
 jmp xchain00838_n01162_α
 xchain00838_n01161_β:
 jmp xchain00838_n01162_α
.Lx01163_0:
 .quad .Lx01163_0_s
.Lx01163_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01162_α:
 mov rdi, qword ptr [rip + .Lx01164_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00838_n01165_α
 xchain00838_n01162_β:
 jmp xchain00838_n00059_α
.Lx01164_0:
 .quad .Lx01164_0_s
.Lx01164_0_s:
 .string "setinsert"
 xchain00838_n01165_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01166_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01166_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01166_3]
 lea rdx, [rip + .Lx01166_4]
 jmp rax
.Lx01166_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01166_2
.Lx01166_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01166_2
.Lx01166_1:
 call rt_faildescr@PLT
.Lx01166_2:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00838_n00059_α
 jmp xchain00838_n00059_α
 xchain00838_n01165_β:
 jmp xchain00838_n00059_α
.Lx01166_0:
 .quad .Lx01166_0_s
.Lx01166_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00059_α:
 mov rdi, qword ptr [rip + .Lx01167_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00838_n00060_α
 xchain00838_n00059_β:
 jmp xchain00838_n01168_α
.Lx01167_0:
 .quad .Lx01167_0_s
.Lx01167_0_s:
 .string "setinsdel"
 xchain00838_n00060_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01169_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01169_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01169_3]
 lea rdx, [rip + .Lx01169_4]
 jmp rax
.Lx01169_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01169_2
.Lx01169_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01169_2
.Lx01169_1:
 call rt_faildescr@PLT
.Lx01169_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00838_n01168_α
 jmp xchain00838_n01168_α
 xchain00838_n00060_β:
 jmp xchain00838_n01168_α
.Lx01169_0:
 .quad .Lx01169_0_s
.Lx01169_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01168_α:
 mov rdi, qword ptr [rip + .Lx01170_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00838_n01171_α
 xchain00838_n01168_β:
 jmp xchain00838_n01172_α
.Lx01170_0:
 .quad .Lx01170_0_s
.Lx01170_0_s:
 .string "setbang"
 xchain00838_n01171_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01173_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01173_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01173_3]
 lea rdx, [rip + .Lx01173_4]
 jmp rax
.Lx01173_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01173_2
.Lx01173_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01173_2
.Lx01173_1:
 call rt_faildescr@PLT
.Lx01173_2:
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00838_n01172_α
 jmp xchain00838_n01172_α
 xchain00838_n01171_β:
 jmp xchain00838_n01172_α
.Lx01173_0:
 .quad .Lx01173_0_s
.Lx01173_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01172_α:
 mov rdi, qword ptr [rip + .Lx01174_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00838_n01175_α
 xchain00838_n01172_β:
 jmp xchain00838_n00061_α
.Lx01174_0:
 .quad .Lx01174_0_s
.Lx01174_0_s:
 .string "setpick"
 xchain00838_n01175_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01176_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01176_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01176_3]
 lea rdx, [rip + .Lx01176_4]
 jmp rax
.Lx01176_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01176_2
.Lx01176_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01176_2
.Lx01176_1:
 call rt_faildescr@PLT
.Lx01176_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00838_n00061_α
 jmp xchain00838_n00061_α
 xchain00838_n01175_β:
 jmp xchain00838_n00061_α
.Lx01176_0:
 .quad .Lx01176_0_s
.Lx01176_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00061_α:
 mov rdi, qword ptr [rip + .Lx01177_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00838_n00062_α
 xchain00838_n00061_β:
 jmp xchain00838_n00063_α
.Lx01177_0:
 .quad .Lx01177_0_s
.Lx01177_0_s:
 .string "tblcreate"
 xchain00838_n00062_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01178_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01178_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01178_3]
 lea rdx, [rip + .Lx01178_4]
 jmp rax
.Lx01178_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01178_2
.Lx01178_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01178_2
.Lx01178_1:
 call rt_faildescr@PLT
.Lx01178_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain00838_n00063_α
 jmp xchain00838_n00063_α
 xchain00838_n00062_β:
 jmp xchain00838_n00063_α
.Lx01178_0:
 .quad .Lx01178_0_s
.Lx01178_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00063_α:
 mov rdi, qword ptr [rip + .Lx01179_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00838_n01180_α
 xchain00838_n00063_β:
 jmp xchain00838_n00064_α
.Lx01179_0:
 .quad .Lx01179_0_s
.Lx01179_0_s:
 .string "tblsub"
 xchain00838_n01180_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01181_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01181_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01181_3]
 lea rdx, [rip + .Lx01181_4]
 jmp rax
.Lx01181_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01181_2
.Lx01181_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01181_2
.Lx01181_1:
 call rt_faildescr@PLT
.Lx01181_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00838_n00064_α
 jmp xchain00838_n00064_α
 xchain00838_n01180_β:
 jmp xchain00838_n00064_α
.Lx01181_0:
 .quad .Lx01181_0_s
.Lx01181_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00064_α:
 mov rdi, qword ptr [rip + .Lx01182_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00838_n01183_α
 xchain00838_n00064_β:
 jmp xchain00838_n01184_α
.Lx01182_0:
 .quad .Lx01182_0_s
.Lx01182_0_s:
 .string "tblasgn"
 xchain00838_n01183_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01185_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01185_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01185_3]
 lea rdx, [rip + .Lx01185_4]
 jmp rax
.Lx01185_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01185_2
.Lx01185_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01185_2
.Lx01185_1:
 call rt_faildescr@PLT
.Lx01185_2:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00838_n01184_α
 jmp xchain00838_n01184_α
 xchain00838_n01183_β:
 jmp xchain00838_n01184_α
.Lx01185_0:
 .quad .Lx01185_0_s
.Lx01185_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01184_α:
 mov rdi, qword ptr [rip + .Lx01186_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00838_n01187_α
 xchain00838_n01184_β:
 jmp xchain00838_n00065_α
.Lx01186_0:
 .quad .Lx01186_0_s
.Lx01186_0_s:
 .string "recconstr"
 xchain00838_n01187_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01188_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01188_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01188_3]
 lea rdx, [rip + .Lx01188_4]
 jmp rax
.Lx01188_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01188_2
.Lx01188_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01188_2
.Lx01188_1:
 call rt_faildescr@PLT
.Lx01188_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain00838_n00065_α
 jmp xchain00838_n00065_α
 xchain00838_n01187_β:
 jmp xchain00838_n00065_α
.Lx01188_0:
 .quad .Lx01188_0_s
.Lx01188_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00065_α:
 mov rdi, qword ptr [rip + .Lx01189_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00838_n00066_α
 xchain00838_n00065_β:
 jmp xchain00838_n01190_α
.Lx01189_0:
 .quad .Lx01189_0_s
.Lx01189_0_s:
 .string "reccopy"
 xchain00838_n00066_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01191_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01191_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01191_3]
 lea rdx, [rip + .Lx01191_4]
 jmp rax
.Lx01191_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01191_2
.Lx01191_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01191_2
.Lx01191_1:
 call rt_faildescr@PLT
.Lx01191_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00838_n01190_α
 jmp xchain00838_n01190_α
 xchain00838_n00066_β:
 jmp xchain00838_n01190_α
.Lx01191_0:
 .quad .Lx01191_0_s
.Lx01191_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01190_α:
 mov rdi, qword ptr [rip + .Lx01192_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00838_n01193_α
 xchain00838_n01190_β:
 jmp xchain00838_n01194_α
.Lx01192_0:
 .quad .Lx01192_0_s
.Lx01192_0_s:
 .string "recfield"
 xchain00838_n01193_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01195_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01195_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01195_3]
 lea rdx, [rip + .Lx01195_4]
 jmp rax
.Lx01195_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01195_2
.Lx01195_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01195_2
.Lx01195_1:
 call rt_faildescr@PLT
.Lx01195_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00838_n01194_α
 jmp xchain00838_n01194_α
 xchain00838_n01193_β:
 jmp xchain00838_n01194_α
.Lx01195_0:
 .quad .Lx01195_0_s
.Lx01195_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01194_α:
 mov rdi, qword ptr [rip + .Lx01196_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00838_n01197_α
 xchain00838_n01194_β:
 jmp xchain00838_n00067_α
.Lx01196_0:
 .quad .Lx01196_0_s
.Lx01196_0_s:
 .string "bigfield"
 xchain00838_n01197_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01198_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01198_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01198_3]
 lea rdx, [rip + .Lx01198_4]
 jmp rax
.Lx01198_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01198_2
.Lx01198_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01198_2
.Lx01198_1:
 call rt_faildescr@PLT
.Lx01198_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00838_n00067_α
 jmp xchain00838_n00067_α
 xchain00838_n01197_β:
 jmp xchain00838_n00067_α
.Lx01198_0:
 .quad .Lx01198_0_s
.Lx01198_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00067_α:
 mov rdi, qword ptr [rip + .Lx01199_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00838_n00068_α
 xchain00838_n00067_β:
 jmp xchain00838_n01200_α
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "readz"
 xchain00838_n00068_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01201_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01201_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01201_3]
 lea rdx, [rip + .Lx01201_4]
 jmp rax
.Lx01201_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01201_2
.Lx01201_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01201_2
.Lx01201_1:
 call rt_faildescr@PLT
.Lx01201_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00838_n01200_α
 jmp xchain00838_n01200_α
 xchain00838_n00068_β:
 jmp xchain00838_n01200_α
.Lx01201_0:
 .quad .Lx01201_0_s
.Lx01201_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01200_α:
 mov rdi, qword ptr [rip + .Lx01202_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00838_n01203_α
 xchain00838_n01200_β:
 jmp xchain00838_n00069_α
.Lx01202_0:
 .quad .Lx01202_0_s
.Lx01202_0_s:
 .string "writecon"
 xchain00838_n01203_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01204_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01204_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01204_3]
 lea rdx, [rip + .Lx01204_4]
 jmp rax
.Lx01204_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01204_2
.Lx01204_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01204_2
.Lx01204_1:
 call rt_faildescr@PLT
.Lx01204_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00838_n00069_α
 jmp xchain00838_n00069_α
 xchain00838_n01203_β:
 jmp xchain00838_n00069_α
.Lx01204_0:
 .quad .Lx01204_0_s
.Lx01204_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00069_α:
 mov rdi, qword ptr [rip + .Lx01205_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00838_n01206_α
 xchain00838_n00069_β:
 jmp xchain00838_n01207_α
.Lx01205_0:
 .quad .Lx01205_0_s
.Lx01205_0_s:
 .string "writestr"
 xchain00838_n01206_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01208_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01208_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01208_3]
 lea rdx, [rip + .Lx01208_4]
 jmp rax
.Lx01208_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01208_2
.Lx01208_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01208_2
.Lx01208_1:
 call rt_faildescr@PLT
.Lx01208_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00838_n01207_α
 jmp xchain00838_n01207_α
 xchain00838_n01206_β:
 jmp xchain00838_n01207_α
.Lx01208_0:
 .quad .Lx01208_0_s
.Lx01208_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01207_α:
 mov rdi, qword ptr [rip + .Lx01209_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00838_n01210_α
 xchain00838_n01207_β:
 jmp xchain00838_n00070_α
.Lx01209_0:
 .quad .Lx01209_0_s
.Lx01209_0_s:
 .string "cxcreate"
 xchain00838_n01210_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01211_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01211_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01211_3]
 lea rdx, [rip + .Lx01211_4]
 jmp rax
.Lx01211_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01211_2
.Lx01211_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01211_2
.Lx01211_1:
 call rt_faildescr@PLT
.Lx01211_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00838_n00070_α
 jmp xchain00838_n00070_α
 xchain00838_n01210_β:
 jmp xchain00838_n00070_α
.Lx01211_0:
 .quad .Lx01211_0_s
.Lx01211_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00070_α:
 mov rdi, qword ptr [rip + .Lx01212_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00838_n00071_α
 xchain00838_n00070_β:
 jmp xchain00838_n01213_α
.Lx01212_0:
 .quad .Lx01212_0_s
.Lx01212_0_s:
 .string "cxget"
 xchain00838_n00071_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01214_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01214_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01214_3]
 lea rdx, [rip + .Lx01214_4]
 jmp rax
.Lx01214_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01214_2
.Lx01214_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01214_2
.Lx01214_1:
 call rt_faildescr@PLT
.Lx01214_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00838_n01213_α
 jmp xchain00838_n01213_α
 xchain00838_n00071_β:
 jmp xchain00838_n01213_α
.Lx01214_0:
 .quad .Lx01214_0_s
.Lx01214_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01213_α:
 mov rdi, qword ptr [rip + .Lx01215_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00838_n01216_α
 xchain00838_n01213_β:
 jmp xchain00838_n01217_α
.Lx01215_0:
 .quad .Lx01215_0_s
.Lx01215_0_s:
 .string "nothing"
 xchain00838_n01216_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01218_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01218_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01218_3]
 lea rdx, [rip + .Lx01218_4]
 jmp rax
.Lx01218_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01218_2
.Lx01218_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01218_2
.Lx01218_1:
 call rt_faildescr@PLT
.Lx01218_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00838_n01217_α
 jmp xchain00838_n01217_α
 xchain00838_n01216_β:
 jmp xchain00838_n01217_α
.Lx01218_0:
 .quad .Lx01218_0_s
.Lx01218_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n01217_α:
 mov rdi, qword ptr [rip + .Lx01219_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00838_n01220_α
 xchain00838_n01217_β:
 jmp xchain00838_n00072_α
.Lx01219_0:
 .quad .Lx01219_0_s
.Lx01219_0_s:
 .string "nothing"
 xchain00838_n01220_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01221_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01221_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01221_3]
 lea rdx, [rip + .Lx01221_4]
 jmp rax
.Lx01221_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01221_2
.Lx01221_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01221_2
.Lx01221_1:
 call rt_faildescr@PLT
.Lx01221_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00838_n00072_α
 jmp xchain00838_n00072_α
 xchain00838_n01220_β:
 jmp xchain00838_n00072_α
.Lx01221_0:
 .quad .Lx01221_0_s
.Lx01221_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00838_n00072_α:
 mov rdi, qword ptr [rip + .Lx01222_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00838_n00073_α
 xchain00838_n00072_β:
 jmp xchain00838_n01223_α
.Lx01222_0:
 .quad .Lx01222_0_s
.Lx01222_0_s:
 .string "nothing"
 xchain00838_n00073_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01224_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01224_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01224_3]
 lea rdx, [rip + .Lx01224_4]
 jmp rax
.Lx01224_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01224_2
.Lx01224_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01224_2
.Lx01224_1:
 call rt_faildescr@PLT
.Lx01224_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00838_n01223_α
 jmp xchain00838_n01223_α
 xchain00838_n00073_β:
 jmp xchain00838_n01223_α
.Lx01224_0:
 .quad .Lx01224_0_s
.Lx01224_0_s:
 .string "report"
# KEYWORD_read
 xchain00838_n01223_α:
 mov rdi, qword ptr [rip + .Lx01225_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00838_n01226_α
 xchain00838_n01223_β:
 jmp main_ω
.Lx01225_0:
 .quad .Lx01225_0_s
.Lx01225_0_s:
 .string "&errout"
 xchain00838_n01226_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn3106: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3106]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00838_n01226_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 11480]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 11480]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
