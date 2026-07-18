  .intel_syntax noprefix
  .text
  .globl proc_report_α
proc_report_α:
#=======================================================================================================================
    .global proc_report_α
    .global proc_report_β
    .global proc_report_γ
    .global proc_report_ω
  sub rsp, 832
  mov [rsp + 808], rcx
  mov [rsp + 816], rdx
  mov [rsp + 824], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 800
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 776], rsp
  mov rdi, rsp
  mov esi, 800
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
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
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
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 792]
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
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_report_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_measure_α
proc_measure_α:
#=======================================================================================================================
    .global proc_measure_α
    .global proc_measure_β
    .global proc_measure_γ
    .global proc_measure_ω
  sub rsp, 2912
  mov [rsp + 2888], rcx
  mov [rsp + 2896], rdx
  mov [rsp + 2904], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2792], rsp
  mov rdi, rsp
  mov esi, 2880
  call rt_jmp_frame_lexprep@PLT
proc_measure_α_body:
# IR_VAR
 xchain30_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2648], rax
 jmp xchain30_n1_α
 xchain30_n0_β:
 jmp xchain30_n2_α
# IR_LIT_INTEGER
 xchain30_n1_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain30_n3_α
 xchain30_n1_β:
 jmp xchain30_n2_α
.Lx33_0:
 .quad 1
# IR_LIT_INTEGER
 xchain30_n2_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain30_n4_α
 xchain30_n2_β:
 jmp xchain30_n5_α
.Lx34_0:
 .quad 1
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n3_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 lea rdx, [rbp + 2688]
 mov ecx, 1
 lea r8, [rbp + 2704]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain30_n2_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain30_n2_α
 xchain30_n3_β:
 lea rdi, [rbp + 2704]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n2_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain30_n2_α
 jmp xchain30_n2_α
 xchain30_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain30_n5_α
 xchain30_n4_β:
 jmp xchain30_n5_α
# KEYWORD_read
 xchain30_n5_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain30_n6_α
 xchain30_n5_β:
 jmp xchain30_n8_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "&time"
 xchain30_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain30_n8_α
 xchain30_n6_β:
 jmp xchain30_n8_α
 xchain30_n7_α:
 jmp xchain30_n8_α
xchain30_n7_β:
 jmp xchain30_n8_α
# IR_VAR
 xchain30_n8_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2488], rax
 jmp xchain30_n9_α
 xchain30_n8_β:
 jmp xchain30_n10_α
# IR_LIT_INTEGER
 xchain30_n9_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain30_n11_α
 xchain30_n9_β:
 jmp xchain30_n10_α
.Lx43_0:
 .quad 10
# IR_VAR
 xchain30_n10_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2376], rax
 jmp xchain30_n12_α
 xchain30_n10_β:
 jmp xchain30_n13_α
# IR_COERCE_NUMERIC
 xchain30_n11_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx47_1
 cmp eax, 6
 jne .Lx47_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx47_0
.Lx47_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2456], rax
 jmp .Lx47_2
.Lx47_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2512]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx47_2:
 jmp xchain30_n14_α
 xchain30_n11_β:
 jmp xchain30_n10_α
 xchain30_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain30_n13_α
 xchain30_n12_β:
 jmp xchain30_n13_α
# IR_VAR
 xchain30_n13_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2216], rax
 jmp xchain30_n15_α
 xchain30_n13_β:
 jmp xchain30_n16_α
 xchain30_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx51_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx51_2
.Lx51_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 10
 imul rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain30_n17_α
.Lx51_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx51_3
.Lx51_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n10_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
.Lx51_3:
 jmp xchain30_n17_α
 xchain30_n14_β:
 jmp xchain30_n10_α
# IR_VAR
 xchain30_n15_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2328], rax
 jmp xchain30_n18_α
 xchain30_n15_β:
 jmp xchain30_n16_α
# KEYWORD_read
 xchain30_n16_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain30_n19_α
 xchain30_n16_β:
 jmp xchain30_n20_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "&time"
 xchain30_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain30_n10_α
 xchain30_n17_β:
 jmp xchain30_n10_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n18_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2264], rax
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 lea rdx, [rbp + 2256]
 mov ecx, 1
 lea r8, [rbp + 2272]
 call rt_call_value_gen_h@PLT
 cmp eax, 99
 je xchain30_n16_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain30_n16_α
 xchain30_n18_β:
 lea rdi, [rbp + 2272]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n16_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain30_n16_α
 jmp xchain30_n16_α
 xchain30_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain30_n20_α
 xchain30_n19_β:
 jmp xchain30_n20_α
# IR_VAR
 xchain30_n20_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2104], rax
 jmp xchain30_n21_α
 xchain30_n20_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n21_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2136], rax
 jmp xchain30_n23_α
 xchain30_n21_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n22_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1784], rax
 jmp xchain30_n24_α
 xchain30_n22_β:
 jmp xchain30_n8_α
# IR_COERCE_NUMERIC
 xchain30_n23_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 7
 je .Lx66_1
 cmp eax, 6
 jne .Lx66_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx66_0
.Lx66_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2072], rax
 jmp .Lx66_2
.Lx66_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 2064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx66_2:
 jmp xchain30_n25_α
 xchain30_n23_β:
 jmp xchain30_n22_α
# IR_VAR
 xchain30_n24_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1880], rax
 jmp xchain30_n26_α
 xchain30_n24_β:
 jmp xchain30_n8_α
# IR_COERCE_NUMERIC
 xchain30_n25_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx70_1
 cmp eax, 6
 jne .Lx70_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx70_0
.Lx70_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2040], rax
 jmp .Lx70_2
.Lx70_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx70_2:
 jmp xchain30_n27_α
 xchain30_n25_β:
 jmp xchain30_n22_α
# IR_LIT_INTEGER
 xchain30_n26_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain30_n28_α
 xchain30_n26_β:
 jmp xchain30_n8_α
.Lx71_0:
 .quad 20
 xchain30_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx72_0
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 6
 jne .Lx72_2
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx72_2
.Lx72_1:
 mov rax, qword ptr [rbp + 2072]
 mov rcx, qword ptr [rbp + 2040]
 sub rax, rcx
 mov qword ptr [rbp + 2000], 6
 mov qword ptr [rbp + 2008], rax
 jmp xchain30_n29_α
.Lx72_0:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 lea r9, [rbp + 2000]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx72_3
.Lx72_2:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n22_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
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
 mov eax, dword ptr [rbp + 1904]
 cmp eax, 6
 jne .Lx74_0
.Lx74_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1848], rax
 jmp .Lx74_2
.Lx74_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1904]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx74_2:
 jmp xchain30_n30_α
 xchain30_n28_β:
 jmp xchain30_n8_α
 xchain30_n29_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn76: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn76]
 lea rsi, [rbp + 1968]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain30_n22_α
 jmp xchain30_n31_α
 xchain30_n29_β:
 jmp xchain30_n22_α
 xchain30_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx77_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx77_2
.Lx77_1:
 mov rax, qword ptr [rbp + 1848]
 mov rcx, 20
 cqo
 idiv rcx
 mov qword ptr [rbp + 1808], 6
 mov qword ptr [rbp + 1816], rax
 jmp xchain30_n32_α
.Lx77_0:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 lea r9, [rbp + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx77_3
.Lx77_2:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
.Lx77_3:
 jmp xchain30_n32_α
 xchain30_n30_β:
 jmp xchain30_n8_α
 xchain30_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain30_n22_α
 xchain30_n31_β:
 jmp xchain30_n22_α
 xchain30_n32_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 100
 je .Lx79_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx79_2
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 6
 jne .Lx79_2
.Lx79_1:
 mov rax, qword ptr [rbp + 2840]
 mov rcx, qword ptr [rbp + 1816]
 cmp rax, rcx
 jl xchain30_n8_α
 mov rcx, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rcx
 mov rcx, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rcx
 jmp xchain30_n34_α
.Lx79_0:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 lea r9, [rbp + 1744]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx79_1
 cmp eax, 1
 je xchain30_n8_α
 jmp xchain30_n34_α
.Lx79_2:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain30_n8_α
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
 jmp xchain30_n34_α
 xchain30_n32_β:
 jmp xchain30_n8_α
 xchain30_n33_α:
 jmp xchain30_n34_α
xchain30_n33_β:
 jmp xchain30_n34_α
# IR_LIT_REAL
 xchain30_n34_α:
 mov qword ptr [rbp + 1520], 7
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain30_n35_α
 xchain30_n34_β:
 jmp xchain30_n37_α
.Lx81_0:
 .quad 4607632778762754458
# IR_VAR
 xchain30_n35_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1560], rax
 jmp xchain30_n36_α
 xchain30_n35_β:
 jmp xchain30_n37_α
# IR_COERCE_NUMERIC
 xchain30_n36_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx85_1
 cmp eax, 6
 jne .Lx85_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx85_0
.Lx85_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1496], rax
 jmp .Lx85_2
.Lx85_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1488]
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
 lea rsi, [rbp + 1184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain30_n39_α
 jmp xchain30_n39_α
 xchain30_n37_β:
 jmp xchain30_n39_α
 xchain30_n38_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain30_n40_α
 xchain30_n38_β:
 jmp xchain30_n37_α
# KEYWORD_read
 xchain30_n39_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
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
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1592], rax
 jmp xchain30_n42_α
 xchain30_n40_β:
 jmp xchain30_n37_α
 xchain30_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain30_n43_α
 xchain30_n41_β:
 jmp xchain30_n43_α
# IR_COERCE_NUMERIC
 xchain30_n42_α:
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 7
 je .Lx94_1
 cmp eax, 6
 jne .Lx94_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx94_0
.Lx94_1:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
 jmp .Lx94_2
.Lx94_0:
 lea rdi, [rbp + 1456]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 1424]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx94_2:
 jmp xchain30_n44_α
 xchain30_n42_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n43_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 1064], rax
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
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 6
 jne .Lx98_0
.Lx98_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1400], rax
 jmp .Lx98_2
.Lx98_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1456]
 lea rdx, [rbp + 1392]
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
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain30_n47_α
 xchain30_n45_β:
 jmp xchain30_n43_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "&time"
 xchain30_n46_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 100
 je .Lx00001_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx00001_2
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx00001_2
.Lx00001_1:
 mov rax, qword ptr [rbp + 1432]
 mov rcx, qword ptr [rbp + 1400]
 imul rax, rcx
 mov qword ptr [rbp + 1360], 6
 mov qword ptr [rbp + 1368], rax
 jmp xchain30_n48_α
.Lx00001_0:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 mov r8d, 2
 lea r9, [rbp + 1360]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00001_3
.Lx00001_2:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
.Lx00001_3:
 jmp xchain30_n48_α
 xchain30_n46_β:
 jmp xchain30_n37_α
 xchain30_n47_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [rbp + 2824]
 mov rcx, qword ptr [rbp + 1096]
 cmp rax, rcx
 je xchain30_n43_α
 mov rcx, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rcx
 mov rcx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rcx
 jmp xchain30_n49_α
.Lx00002_0:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 10
 lea r9, [rbp + 1024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00002_1
 cmp eax, 1
 je xchain30_n43_α
 jmp xchain30_n49_α
.Lx00002_2:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain30_n43_α
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
 jmp xchain30_n49_α
 xchain30_n47_β:
 jmp xchain30_n43_α
# IR_VAR
 xchain30_n48_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1672], rax
 jmp xchain30_n50_α
 xchain30_n48_β:
 jmp xchain30_n37_α
 xchain30_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain30_n51_α
 xchain30_n49_β:
 jmp xchain30_n43_α
 xchain30_n50_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn106: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
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
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 7
 je .Lx00003_1
 cmp eax, 6
 jne .Lx00003_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx00003_0
.Lx00003_1:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1336], rax
 jmp .Lx00003_2
.Lx00003_0:
 lea rdi, [rbp + 1360]
 lea rsi, [rbp + 1616]
 lea rdx, [rbp + 1328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00003_2:
 jmp xchain30_n55_α
 xchain30_n52_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n53_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 984], rax
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
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1304], rax
 jmp .Lx00005_2
.Lx00005_0:
 lea rdi, [rbp + 1616]
 lea rsi, [rbp + 1360]
 lea rdx, [rbp + 1296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00005_2:
 jmp xchain30_n58_α
 xchain30_n55_β:
 jmp xchain30_n37_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain30_n56_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
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
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain30_n59_α
 xchain30_n57_β:
 jmp xchain30_n59_α
 xchain30_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00006_2
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00006_2
.Lx00006_1:
 mov rax, qword ptr [rbp + 1336]
 mov rcx, qword ptr [rbp + 1304]
 cqo
 idiv rcx
 mov qword ptr [rbp + 1264], 6
 mov qword ptr [rbp + 1272], rax
 jmp xchain30_n60_α
.Lx00006_0:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 lea r9, [rbp + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00006_3
.Lx00006_2:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n37_α
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
.Lx00006_3:
 jmp xchain30_n60_α
 xchain30_n58_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n59_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 760], rax
 jmp xchain30_n61_α
 xchain30_n59_β:
 jmp xchain30_n62_α
 xchain30_n60_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn123: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain30_n37_α
 jmp xchain30_n63_α
 xchain30_n60_β:
 jmp xchain30_n37_α
# IR_VAR
 xchain30_n61_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 792], rax
 jmp xchain30_n64_α
 xchain30_n61_β:
 jmp xchain30_n62_α
# IR_VAR
 xchain30_n62_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 488], rax
 jmp xchain30_n65_α
 xchain30_n62_β:
 jmp xchain30_n66_α
 xchain30_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain30_n37_α
 xchain30_n63_β:
 jmp xchain30_n37_α
# IR_COERCE_NUMERIC
 xchain30_n64_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 728], rax
 jmp .Lx00007_2
.Lx00007_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00007_2:
 jmp xchain30_n67_α
 xchain30_n64_β:
 jmp xchain30_n62_α
# IR_VAR
 xchain30_n65_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 568], rax
 jmp xchain30_n68_α
 xchain30_n65_β:
 jmp xchain30_n66_α
# IR_VAR
 xchain30_n66_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 280], rax
 jmp xchain30_n69_α
 xchain30_n66_β:
 jmp xchain30_n70_α
# IR_COERCE_NUMERIC
 xchain30_n67_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 696], rax
 jmp .Lx00008_2
.Lx00008_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
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
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 2808]
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
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00011_2
.Lx00011_0:
 lea rdi, [rbp + 2832]
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
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00012_1
 cmp eax, 6
 jne .Lx00012_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00012_0
.Lx00012_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 248], rax
 jmp .Lx00012_2
.Lx00012_0:
 lea rdi, [rbp + 2816]
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
 mov eax, dword ptr [rbp + 2832]
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
 lea rsi, [rbp + 2832]
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
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
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
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
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
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
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
mov rax, [rbp + 2888]
lea rsp, [rbp + 2912]
mov rbp, [rbp + 2904]
jmp rax
proc_measure_ω:
mov rax, [rbp + 2896]
lea rsp, [rbp + 2912]
mov rbp, [rbp + 2904]
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
  sub rsp, 640
  mov [rsp + 616], rcx
  mov [rsp + 624], rdx
  mov [rsp + 632], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 608
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 600], rsp
  mov rdi, rsp
  mov esi, 608
  call rt_jmp_frame_lexprep@PLT
proc_marshal_α_body:
# IR_VAR
 xchain00202_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 568], rax
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
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
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
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 504], rax
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
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
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
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00202_n9_α
 xchain00202_n8_β:
 jmp xchain00202_n6_β
.Lx00207_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00202_n9_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00202_n10_α
 xchain00202_n9_β:
 jmp xchain00202_n6_β
.Lx00208_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00202_n10_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00202_n11_α
 xchain00202_n10_β:
 jmp xchain00202_n6_β
.Lx00209_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00202_n11_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00202_n12_α
 xchain00202_n11_β:
 jmp xchain00202_n6_β
.Lx00210_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00202_n12_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00202_n13_α
 xchain00202_n12_β:
 jmp xchain00202_n6_β
.Lx00211_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); gen-proc callee parks an activation handle at [zeta+off+16+n*16], beta resumes it (rt_call_value_resume_h) and routes omega when the frame dies
 xchain00202_n13_α:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 200], rax
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 216], rax
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 232], rax
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 440]
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
mov rax, [rbp + 616]
lea rsp, [rbp + 640]
mov rbp, [rbp + 632]
jmp rax
proc_marshal_ω:
mov rax, [rbp + 624]
lea rsp, [rbp + 640]
mov rbp, [rbp + 632]
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
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 272
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 272
  call rt_jmp_frame_lexprep@PLT
proc_evsusp_α_body:
# IR_VAR
 xchain00237_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
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
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 jmp xchain00237_n3_α
 xchain00237_n1_β:
 jmp xchain00237_n2_α
# IR_VAR
 xchain00237_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00237_n4_α
 xchain00237_n2_β:
 jmp proc_evsusp_ω
# IR_LIT_STRING
 xchain00237_n3_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00237_n5_α
 xchain00237_n3_β:
 jmp proc_evsusp_ω
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "suspend i"
 xchain00237_n4_α:
 mov qword ptr [rbp + 64], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00239_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00239_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00239_3]
 lea rdx, [rip + .Lx00239_4]
 jmp rax
.Lx00239_3:
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00239_5
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00239_2
.Lx00239_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00239_2
.Lx00239_4:
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00239_6
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00239_2
.Lx00239_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00239_2
.Lx00239_1:
 call rt_faildescr@PLT
.Lx00239_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00237_n4_β
 xchain00237_n4_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "susproc"
# IR_RETURN
 xchain00237_n5_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
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
mov rax, [rbp + 280]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
proc_evsusp_ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
  .globl proc_susproc_α
proc_susproc_α:
#=======================================================================================================================
    .global proc_susproc_α
    .global proc_susproc_β
    .global proc_susproc_γ
    .global proc_susproc_ω
  sub rsp, 192
  mov [rsp + 168], rcx
  mov [rsp + 176], rdx
  mov [rsp + 184], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 160
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 152], rsp
  mov rdi, rsp
  mov esi, 160
  call rt_jmp_frame_lexprep@PLT
proc_susproc_α_body:
lea rax, [rip + xchain00240_n3_β]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
 xchain00240_n0_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00240_n1_α
 xchain00240_n0_β:
 jmp proc_susproc_ω
.Lx00241_0:
 .quad 1
# IR_VAR
 xchain00240_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00240_n2_α
 xchain00240_n1_β:
 jmp proc_susproc_ω
# IR_TO
 xchain00240_n2_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00242_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00240_n3_α
 xchain00240_n2_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00242_0
# IR_SUSPEND yield+resume
 xchain00240_n3_α:
 lea rax, [rip + xchain00240_n3_β]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_susproc_γ
 xchain00240_n3_β:
 jmp xchain00240_n2_β
proc_susproc_res:
add rsp, 8
pop rbp
proc_susproc_β:
jmp qword ptr [rbp + 128]
proc_susproc_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_susproc_res]
push rax
mov rax, [rbp + 168]
mov rbp, [rbp + 184]
jmp rax
proc_susproc_ω:
mov rax, [rbp + 176]
lea rsp, [rbp + 192]
mov rbp, [rbp + 184]
jmp rax
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
 xchain00243_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00243_n1_α
 xchain00243_n0_β:
 jmp xchain00243_n2_α
# IR_UNOP
 xchain00243_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00243_n2_α
 cmp eax, 0
 jne xchain00243_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00243_n3_α
 xchain00243_n1_β:
 jmp xchain00243_n2_α
# IR_LIT_INTEGER
 xchain00243_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00243_n4_α
 xchain00243_n2_β:
 jmp proc_intcoerce_ω
.Lx00244_0:
 .quad 1
# IR_LIT_STRING
 xchain00243_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00243_n5_α
 xchain00243_n3_β:
 jmp proc_intcoerce_ω
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "+\"407\""
# IR_VAR
 xchain00243_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00243_n6_α
 xchain00243_n4_β:
 jmp proc_intcoerce_ω
# IR_RETURN
 xchain00243_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcoerce_γ
# IR_TO
 xchain00243_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00246_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00243_n7_α
 xchain00243_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00246_0
# IR_LIT_STRING
 xchain00243_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00243_n8_α
 xchain00243_n7_β:
 jmp xchain00243_n6_β
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "407"
# IR_COERCE_NUMERIC
 xchain00243_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00248_1
 cmp eax, 6
 jne .Lx00248_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00248_0
.Lx00248_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00248_2
.Lx00248_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00248_2:
 jmp xchain00243_n9_α
 xchain00243_n8_β:
 jmp xchain00243_n6_β
# IR_UNOP
 xchain00243_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00243_n6_β
 xchain00243_n9_β:
 jmp xchain00243_n6_β
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
 xchain00249_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00249_n1_α
 xchain00249_n0_β:
 jmp xchain00249_n2_α
# IR_UNOP
 xchain00249_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00249_n2_α
 cmp eax, 0
 jne xchain00249_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00249_n3_α
 xchain00249_n1_β:
 jmp xchain00249_n2_α
# IR_LIT_INTEGER
 xchain00249_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00249_n4_α
 xchain00249_n2_β:
 jmp proc_realcoerce_ω
.Lx00250_0:
 .quad 1
# IR_LIT_STRING
 xchain00249_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00249_n5_α
 xchain00249_n3_β:
 jmp proc_realcoerce_ω
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "+\"7.25\""
# IR_VAR
 xchain00249_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00249_n6_α
 xchain00249_n4_β:
 jmp proc_realcoerce_ω
# IR_RETURN
 xchain00249_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcoerce_γ
# IR_TO
 xchain00249_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00252_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00249_n7_α
 xchain00249_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00252_0
# IR_LIT_STRING
 xchain00249_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00249_n8_α
 xchain00249_n7_β:
 jmp xchain00249_n6_β
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "7.25"
# IR_COERCE_NUMERIC
 xchain00249_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00254_1
 cmp eax, 6
 jne .Lx00254_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00254_0
.Lx00254_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00254_2
.Lx00254_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00254_2:
 jmp xchain00249_n9_α
 xchain00249_n8_β:
 jmp xchain00249_n6_β
# IR_UNOP
 xchain00249_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00249_n6_β
 xchain00249_n9_β:
 jmp xchain00249_n6_β
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
 xchain00255_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00255_n1_α
 xchain00255_n0_β:
 jmp xchain00255_n2_α
# IR_UNOP
 xchain00255_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00255_n2_α
 cmp eax, 0
 jne xchain00255_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00255_n3_α
 xchain00255_n1_β:
 jmp xchain00255_n2_α
# IR_LIT_INTEGER
 xchain00255_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00255_n4_α
 xchain00255_n2_β:
 jmp proc_strcoerce_ω
.Lx00256_0:
 .quad 1
# IR_LIT_STRING
 xchain00255_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00255_n5_α
 xchain00255_n3_β:
 jmp proc_strcoerce_ω
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "*407"
# IR_VAR
 xchain00255_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00255_n6_α
 xchain00255_n4_β:
 jmp proc_strcoerce_ω
# IR_RETURN
 xchain00255_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoerce_γ
# IR_TO
 xchain00255_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00258_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00255_n7_α
 xchain00255_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00258_0
# IR_LIT_INTEGER
 xchain00255_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00255_n8_α
 xchain00255_n7_β:
 jmp xchain00255_n6_β
.Lx00259_0:
 .quad 407
# IR_UNOP
 xchain00255_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00255_n6_β
 xchain00255_n8_β:
 jmp xchain00255_n6_β
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
 xchain00260_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00260_n1_α
 xchain00260_n0_β:
 jmp xchain00260_n2_α
# IR_UNOP
 xchain00260_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00260_n2_α
 cmp eax, 0
 jne xchain00260_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00260_n3_α
 xchain00260_n1_β:
 jmp xchain00260_n2_α
# IR_LIT_INTEGER
 xchain00260_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00260_n4_α
 xchain00260_n2_β:
 jmp proc_strcoercer_ω
.Lx00261_0:
 .quad 1
# IR_LIT_STRING
 xchain00260_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00260_n5_α
 xchain00260_n3_β:
 jmp proc_strcoercer_ω
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "*7.25"
# IR_VAR
 xchain00260_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00260_n6_α
 xchain00260_n4_β:
 jmp proc_strcoercer_ω
# IR_RETURN
 xchain00260_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoercer_γ
# IR_TO
 xchain00260_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00263_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00260_n7_α
 xchain00260_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00263_0
# IR_LIT_REAL
 xchain00260_n7_α:
 mov qword ptr [rbp + 160], 7
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00260_n8_α
 xchain00260_n7_β:
 jmp xchain00260_n6_β
.Lx00264_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00260_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00260_n6_β
 xchain00260_n8_β:
 jmp xchain00260_n6_β
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
 xchain00265_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00265_n1_α
 xchain00265_n0_β:
 jmp xchain00265_n2_α
# IR_UNOP
 xchain00265_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00265_n2_α
 cmp eax, 0
 jne xchain00265_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00265_n3_α
 xchain00265_n1_β:
 jmp xchain00265_n2_α
# IR_LIT_INTEGER
 xchain00265_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00265_n4_α
 xchain00265_n2_β:
 jmp proc_tointeger_ω
.Lx00266_0:
 .quad 1
# IR_LIT_STRING
 xchain00265_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00265_n5_α
 xchain00265_n3_β:
 jmp proc_tointeger_ω
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "integer(\"407\")"
# IR_VAR
 xchain00265_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00265_n6_α
 xchain00265_n4_β:
 jmp proc_tointeger_ω
# IR_RETURN
 xchain00265_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tointeger_γ
# IR_TO
 xchain00265_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00268_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00265_n7_α
 xchain00265_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00268_0
# IR_LIT_STRING
 xchain00265_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00265_n8_α
 xchain00265_n7_β:
 jmp xchain00265_n6_β
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "407"
 xchain00265_n8_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn778: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn778]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00265_n6_β
 jmp xchain00265_n6_β
 xchain00265_n8_β:
 jmp xchain00265_n6_β
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
 xchain00270_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00270_n1_α
 xchain00270_n0_β:
 jmp xchain00270_n2_α
# IR_UNOP
 xchain00270_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00270_n2_α
 cmp eax, 0
 jne xchain00270_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00270_n3_α
 xchain00270_n1_β:
 jmp xchain00270_n2_α
# IR_LIT_INTEGER
 xchain00270_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00270_n4_α
 xchain00270_n2_β:
 jmp proc_toreal_ω
.Lx00271_0:
 .quad 1
# IR_LIT_STRING
 xchain00270_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00270_n5_α
 xchain00270_n3_β:
 jmp proc_toreal_ω
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "real(\"7.25\")"
# IR_VAR
 xchain00270_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00270_n6_α
 xchain00270_n4_β:
 jmp proc_toreal_ω
# IR_RETURN
 xchain00270_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_toreal_γ
# IR_TO
 xchain00270_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00273_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00270_n7_α
 xchain00270_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00273_0
# IR_LIT_STRING
 xchain00270_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00270_n8_α
 xchain00270_n7_β:
 jmp xchain00270_n6_β
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "407"
 xchain00270_n8_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn792: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn792]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00270_n6_β
 jmp xchain00270_n6_β
 xchain00270_n8_β:
 jmp xchain00270_n6_β
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
 xchain00275_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00275_n1_α
 xchain00275_n0_β:
 jmp xchain00275_n2_α
# IR_UNOP
 xchain00275_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00275_n2_α
 cmp eax, 0
 jne xchain00275_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00275_n3_α
 xchain00275_n1_β:
 jmp xchain00275_n2_α
# IR_LIT_INTEGER
 xchain00275_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00275_n4_α
 xchain00275_n2_β:
 jmp proc_tostring_ω
.Lx00276_0:
 .quad 1
# IR_LIT_STRING
 xchain00275_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00275_n5_α
 xchain00275_n3_β:
 jmp proc_tostring_ω
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "string(407)"
# IR_VAR
 xchain00275_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00275_n6_α
 xchain00275_n4_β:
 jmp proc_tostring_ω
# IR_RETURN
 xchain00275_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tostring_γ
# IR_TO
 xchain00275_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00278_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00275_n7_α
 xchain00275_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00278_0
# IR_LIT_INTEGER
 xchain00275_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00275_n8_α
 xchain00275_n7_β:
 jmp xchain00275_n6_β
.Lx00279_0:
 .quad 407
 xchain00275_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn806: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn806]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00275_n6_β
 jmp xchain00275_n6_β
 xchain00275_n8_β:
 jmp xchain00275_n6_β
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
 xchain00280_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00280_n1_α
 xchain00280_n0_β:
 jmp xchain00280_n2_α
# IR_UNOP
 xchain00280_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00280_n2_α
 cmp eax, 0
 jne xchain00280_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00280_n3_α
 xchain00280_n1_β:
 jmp xchain00280_n2_α
# IR_LIT_INTEGER
 xchain00280_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00281_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00280_n4_α
 xchain00280_n2_β:
 jmp proc_rtostring_ω
.Lx00281_0:
 .quad 1
# IR_LIT_STRING
 xchain00280_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00280_n5_α
 xchain00280_n3_β:
 jmp proc_rtostring_ω
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "string(7.25)"
# IR_VAR
 xchain00280_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00280_n6_α
 xchain00280_n4_β:
 jmp proc_rtostring_ω
# IR_RETURN
 xchain00280_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rtostring_γ
# IR_TO
 xchain00280_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00283_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00280_n7_α
 xchain00280_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00283_0
# IR_LIT_REAL
 xchain00280_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00280_n8_α
 xchain00280_n7_β:
 jmp xchain00280_n6_β
.Lx00284_0:
 .quad 4619848792751996928
 xchain00280_n8_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn820: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn820]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00280_n6_β
 jmp xchain00280_n6_β
 xchain00280_n8_β:
 jmp xchain00280_n6_β
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
 xchain00285_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00285_n1_α
 xchain00285_n0_β:
 jmp xchain00285_n2_α
# IR_UNOP
 xchain00285_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00285_n2_α
 cmp eax, 0
 jne xchain00285_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00285_n3_α
 xchain00285_n1_β:
 jmp xchain00285_n2_α
# IR_LIT_INTEGER
 xchain00285_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00285_n4_α
 xchain00285_n2_β:
 jmp proc_tocset_ω
.Lx00286_0:
 .quad 1
# IR_LIT_STRING
 xchain00285_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00285_n5_α
 xchain00285_n3_β:
 jmp proc_tocset_ω
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "cset(\"407\")"
# IR_VAR
 xchain00285_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00285_n6_α
 xchain00285_n4_β:
 jmp proc_tocset_ω
# IR_RETURN
 xchain00285_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tocset_γ
# IR_TO
 xchain00285_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00288_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00285_n7_α
 xchain00285_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00288_0
# IR_LIT_STRING
 xchain00285_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00285_n8_α
 xchain00285_n7_β:
 jmp xchain00285_n6_β
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "407"
 xchain00285_n8_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn834: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn834]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00285_n6_β
 jmp xchain00285_n6_β
 xchain00285_n8_β:
 jmp xchain00285_n6_β
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
 xchain00290_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00290_n1_α
 xchain00290_n0_β:
 jmp xchain00290_n2_α
# IR_UNOP
 xchain00290_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00290_n2_α
 cmp eax, 0
 jne xchain00290_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00290_n3_α
 xchain00290_n1_β:
 jmp xchain00290_n2_α
# IR_LIT_INTEGER
 xchain00290_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00290_n4_α
 xchain00290_n2_β:
 jmp proc_charf_ω
.Lx00291_0:
 .quad 1
# IR_LIT_STRING
 xchain00290_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00290_n5_α
 xchain00290_n3_β:
 jmp proc_charf_ω
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "char(65)"
# IR_VAR
 xchain00290_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00290_n6_α
 xchain00290_n4_β:
 jmp proc_charf_ω
# IR_RETURN
 xchain00290_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_charf_γ
# IR_TO
 xchain00290_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00293_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00290_n7_α
 xchain00290_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00293_0
# IR_LIT_INTEGER
 xchain00290_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00290_n8_α
 xchain00290_n7_β:
 jmp xchain00290_n6_β
.Lx00294_0:
 .quad 65
 xchain00290_n8_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn848: .string "char"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn848]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00290_n6_β
 jmp xchain00290_n6_β
 xchain00290_n8_β:
 jmp xchain00290_n6_β
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
 xchain00295_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00295_n1_α
 xchain00295_n0_β:
 jmp xchain00295_n2_α
# IR_UNOP
 xchain00295_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00295_n2_α
 cmp eax, 0
 jne xchain00295_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00295_n3_α
 xchain00295_n1_β:
 jmp xchain00295_n2_α
# IR_LIT_INTEGER
 xchain00295_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00295_n4_α
 xchain00295_n2_β:
 jmp proc_ordf_ω
.Lx00296_0:
 .quad 1
# IR_LIT_STRING
 xchain00295_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00295_n5_α
 xchain00295_n3_β:
 jmp proc_ordf_ω
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "ord(\"A\")"
# IR_VAR
 xchain00295_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00295_n6_α
 xchain00295_n4_β:
 jmp proc_ordf_ω
# IR_RETURN
 xchain00295_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_ordf_γ
# IR_TO
 xchain00295_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00298_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00295_n7_α
 xchain00295_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00298_0
# IR_LIT_STRING
 xchain00295_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00295_n8_α
 xchain00295_n7_β:
 jmp xchain00295_n6_β
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "A"
 xchain00295_n8_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn862: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn862]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00295_n6_β
 jmp xchain00295_n6_β
 xchain00295_n8_β:
 jmp xchain00295_n6_β
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
 xchain00300_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00300_n1_α
 xchain00300_n0_β:
 jmp xchain00300_n2_α
# IR_UNOP
 xchain00300_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00300_n2_α
 cmp eax, 0
 jne xchain00300_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00300_n3_α
 xchain00300_n1_β:
 jmp xchain00300_n2_α
# IR_LIT_INTEGER
 xchain00300_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00300_n4_α
 xchain00300_n2_β:
 jmp proc_strsize_ω
.Lx00301_0:
 .quad 1
# IR_LIT_STRING
 xchain00300_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00300_n5_α
 xchain00300_n3_β:
 jmp proc_strsize_ω
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "*\"abcde\""
# IR_VAR
 xchain00300_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00300_n6_α
 xchain00300_n4_β:
 jmp proc_strsize_ω
# IR_RETURN
 xchain00300_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsize_γ
# IR_TO
 xchain00300_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00303_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00300_n7_α
 xchain00300_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00303_0
# IR_LIT_STRING
 xchain00300_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00300_n8_α
 xchain00300_n7_β:
 jmp xchain00300_n6_β
.Lx00304_0:
 .quad .Lx00304_0_s
.Lx00304_0_s:
 .string "abcde"
# IR_UNOP
 xchain00300_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00300_n6_β
 xchain00300_n8_β:
 jmp xchain00300_n6_β
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
 xchain00305_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00305_n1_α
 xchain00305_n0_β:
 jmp xchain00305_n2_α
# IR_UNOP
 xchain00305_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00305_n2_α
 cmp eax, 0
 jne xchain00305_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00305_n3_α
 xchain00305_n1_β:
 jmp xchain00305_n2_α
# IR_LIT_INTEGER
 xchain00305_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00305_n4_α
 xchain00305_n2_β:
 jmp proc_concat_ω
.Lx00306_0:
 .quad 1
# IR_LIT_STRING
 xchain00305_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00305_n5_α
 xchain00305_n3_β:
 jmp proc_concat_ω
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "\"a\" || \"b\""
# IR_VAR
 xchain00305_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00305_n6_α
 xchain00305_n4_β:
 jmp proc_concat_ω
# IR_RETURN
 xchain00305_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_concat_γ
# IR_TO
 xchain00305_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00308_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00305_n7_α
 xchain00305_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00308_0
# IR_LIT_STRING
 xchain00305_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00305_n8_α
 xchain00305_n7_β:
 jmp xchain00305_n6_β
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00305_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00305_n9_α
 xchain00305_n8_β:
 jmp xchain00305_n6_β
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "b"
 xchain00305_n9_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 call str_concat_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00305_n6_β
 xchain00305_n9_β:
 jmp xchain00305_n6_β
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
 xchain00311_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00311_n1_α
 xchain00311_n0_β:
 jmp xchain00311_n2_α
# IR_UNOP
 xchain00311_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00311_n2_α
 cmp eax, 0
 jne xchain00311_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00311_n3_α
 xchain00311_n1_β:
 jmp xchain00311_n2_α
# IR_LIT_INTEGER
 xchain00311_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00311_n4_α
 xchain00311_n2_β:
 jmp proc_strpick_ω
.Lx00312_0:
 .quad 1
# IR_LIT_STRING
 xchain00311_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00311_n5_α
 xchain00311_n3_β:
 jmp proc_strpick_ω
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "?\"abcde\""
# IR_VAR
 xchain00311_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00311_n6_α
 xchain00311_n4_β:
 jmp proc_strpick_ω
# IR_RETURN
 xchain00311_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strpick_γ
# IR_TO
 xchain00311_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00314_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00311_n7_α
 xchain00311_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00314_0
# IR_LIT_STRING
 xchain00311_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00311_n8_α
 xchain00311_n7_β:
 jmp xchain00311_n6_β
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "abcde"
# IR_RANDOM
 xchain00311_n8_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00311_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00311_n9_α
 xchain00311_n8_β:
 jmp xchain00311_n6_β
# IR_DEREF variable -> value
 xchain00311_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00311_n6_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00311_n6_β
 xchain00311_n9_β:
 jmp xchain00311_n6_β
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
 xchain00316_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00316_n1_α
 xchain00316_n0_β:
 jmp xchain00316_n2_α
# IR_UNOP
 xchain00316_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00316_n2_α
 cmp eax, 0
 jne xchain00316_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00316_n3_α
 xchain00316_n1_β:
 jmp xchain00316_n2_α
# IR_LIT_INTEGER
 xchain00316_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00316_n4_α
 xchain00316_n2_β:
 jmp proc_strbang_ω
.Lx00317_0:
 .quad 1
# IR_LIT_STRING
 xchain00316_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00316_n5_α
 xchain00316_n3_β:
 jmp proc_strbang_ω
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "!\"12345\""
# IR_VAR
 xchain00316_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00316_n6_α
 xchain00316_n4_β:
 jmp proc_strbang_ω
# IR_RETURN
 xchain00316_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strbang_γ
# IR_TO
 xchain00316_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00319_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00316_n7_α
 xchain00316_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00319_0
# IR_LIT_STRING
 xchain00316_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00320_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00316_n8_α
 xchain00316_n7_β:
 jmp xchain00316_n6_β
.Lx00320_0:
 .quad .Lx00320_0_s
.Lx00320_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00316_n8_α:
 mov qword ptr [rbp + 144], 0
.Lx00321_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00316_n6_β
 jmp xchain00316_n8_β
 xchain00316_n8_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00321_0
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
 xchain00322_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00322_n1_α
 xchain00322_n0_β:
 jmp xchain00322_n2_α
# IR_UNOP
 xchain00322_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00322_n2_α
 cmp eax, 0
 jne xchain00322_n2_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00322_n3_α
 xchain00322_n1_β:
 jmp xchain00322_n2_α
# IR_LIT_INTEGER
 xchain00322_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00322_n4_α
 xchain00322_n2_β:
 jmp proc_strsub_ω
.Lx00323_0:
 .quad 1
# IR_LIT_STRING
 xchain00322_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00324_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00322_n5_α
 xchain00322_n3_β:
 jmp proc_strsub_ω
.Lx00324_0:
 .quad .Lx00324_0_s
.Lx00324_0_s:
 .string "\"abcde\"[3]"
# IR_VAR
 xchain00322_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00322_n6_α
 xchain00322_n4_β:
 jmp proc_strsub_ω
# IR_RETURN
 xchain00322_n5_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsub_γ
# IR_TO
 xchain00322_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00325_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00322_n7_α
 xchain00322_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00325_0
# IR_LIT_STRING
 xchain00322_n7_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00322_n8_α
 xchain00322_n7_β:
 jmp xchain00322_n6_β
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00322_n8_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00322_n9_α
 xchain00322_n8_β:
 jmp xchain00322_n6_β
.Lx00327_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00322_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00322_n6_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00322_n10_α
 xchain00322_n9_β:
 jmp xchain00322_n6_β
# IR_DEREF variable -> value
 xchain00322_n10_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00322_n6_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00322_n6_β
 xchain00322_n10_β:
 jmp xchain00322_n6_β
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
 xchain00328_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00328_n1_α
 xchain00328_n0_β:
 jmp xchain00328_n2_α
# IR_UNOP
 xchain00328_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00328_n2_α
 cmp eax, 0
 jne xchain00328_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00328_n3_α
 xchain00328_n1_β:
 jmp xchain00328_n2_α
# IR_LIT_INTEGER
 xchain00328_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00328_n4_α
 xchain00328_n2_β:
 jmp proc_substr_ω
.Lx00329_0:
 .quad 1
# IR_LIT_STRING
 xchain00328_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00330_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00328_n5_α
 xchain00328_n3_β:
 jmp proc_substr_ω
.Lx00330_0:
 .quad .Lx00330_0_s
.Lx00330_0_s:
 .string "\"abcde\"[2:5]"
# IR_VAR
 xchain00328_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00328_n6_α
 xchain00328_n4_β:
 jmp proc_substr_ω
# IR_RETURN
 xchain00328_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_substr_γ
# IR_TO
 xchain00328_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00331_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00328_n7_α
 xchain00328_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00331_0
# IR_LIT_STRING
 xchain00328_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00328_n8_α
 xchain00328_n7_β:
 jmp xchain00328_n6_β
.Lx00332_0:
 .quad .Lx00332_0_s
.Lx00332_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00328_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00328_n9_α
 xchain00328_n8_β:
 jmp xchain00328_n6_β
.Lx00333_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00328_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00328_n10_α
 xchain00328_n9_β:
 jmp xchain00328_n6_β
.Lx00334_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00328_n10_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8, qword ptr [rbp + 224]
 mov r9, qword ptr [rbp + 232]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00328_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00328_n6_β
 xchain00328_n10_β:
 jmp xchain00328_n6_β
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
 xchain00335_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00335_n1_α
 xchain00335_n0_β:
 jmp xchain00335_n2_α
# IR_UNOP
 xchain00335_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00335_n2_α
 cmp eax, 0
 jne xchain00335_n2_α
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00335_n3_α
 xchain00335_n1_β:
 jmp xchain00335_n2_α
# IR_LIT_INTEGER
 xchain00335_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00335_n4_α
 xchain00335_n2_β:
 jmp proc_subsasg_ω
.Lx00336_0:
 .quad 1
# IR_LIT_STRING
 xchain00335_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00335_n5_α
 xchain00335_n3_β:
 jmp proc_subsasg_ω
.Lx00337_0:
 .quad .Lx00337_0_s
.Lx00337_0_s:
 .string "s[2:5] := \"x\""
# IR_VAR
 xchain00335_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00335_n6_α
 xchain00335_n4_β:
 jmp proc_subsasg_ω
# IR_RETURN
 xchain00335_n5_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_subsasg_γ
# IR_TO
 xchain00335_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00338_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00335_n7_α
 xchain00335_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00338_0
# IR_LIT_STRING
 xchain00335_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00335_n8_α
 xchain00335_n7_β:
 jmp xchain00335_n6_β
.Lx00339_0:
 .quad .Lx00339_0_s
.Lx00339_0_s:
 .string "abcde"
 xchain00335_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00335_n9_α
 xchain00335_n8_β:
 jmp xchain00335_n6_β
# IR_LIT_INTEGER
 xchain00335_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00335_n10_α
 xchain00335_n9_β:
 jmp xchain00335_n6_β
.Lx00340_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00335_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00341_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00335_n11_α
 xchain00335_n10_β:
 jmp xchain00335_n6_β
.Lx00341_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00335_n11_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8, qword ptr [rbp + 240]
 mov r9, qword ptr [rbp + 248]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00335_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00335_n12_α
 xchain00335_n11_β:
 jmp xchain00335_n6_β
# IR_LIT_STRING
 xchain00335_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00335_n13_α
 xchain00335_n12_β:
 jmp xchain00335_n6_β
.Lx00342_0:
 .quad .Lx00342_0_s
.Lx00342_0_s:
 .string "x"
# IR_ASSIGN_VAR
 xchain00335_n13_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00335_n6_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00335_n6_β
 xchain00335_n13_β:
 jmp xchain00335_n6_β
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
 xchain00343_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00343_n1_α
 xchain00343_n0_β:
 jmp xchain00343_n2_α
# IR_UNOP
 xchain00343_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00343_n2_α
 cmp eax, 0
 jne xchain00343_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00343_n3_α
 xchain00343_n1_β:
 jmp xchain00343_n2_α
# IR_LIT_INTEGER
 xchain00343_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00343_n4_α
 xchain00343_n2_β:
 jmp proc_strcmp_ω
.Lx00344_0:
 .quad 1
# IR_LIT_STRING
 xchain00343_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00343_n5_α
 xchain00343_n3_β:
 jmp proc_strcmp_ω
.Lx00345_0:
 .quad .Lx00345_0_s
.Lx00345_0_s:
 .string "\"abc\">>\"aaa\""
# IR_VAR
 xchain00343_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00343_n6_α
 xchain00343_n4_β:
 jmp proc_strcmp_ω
# IR_RETURN
 xchain00343_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcmp_γ
# IR_TO
 xchain00343_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00346_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00343_n7_α
 xchain00343_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00346_0
# IR_LIT_STRING
 xchain00343_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00343_n8_α
 xchain00343_n7_β:
 jmp xchain00343_n6_β
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00343_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00343_n9_α
 xchain00343_n8_β:
 jmp xchain00343_n6_β
.Lx00348_0:
 .quad .Lx00348_0_s
.Lx00348_0_s:
 .string "aaa"
 xchain00343_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00343_n6_β
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00343_n6_β
 xchain00343_n9_β:
 jmp xchain00343_n6_β
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
 xchain00349_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00349_n1_α
 xchain00349_n0_β:
 jmp xchain00349_n2_α
# IR_UNOP
 xchain00349_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00349_n2_α
 cmp eax, 0
 jne xchain00349_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00349_n3_α
 xchain00349_n1_β:
 jmp xchain00349_n2_α
# IR_LIT_INTEGER
 xchain00349_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00350_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00349_n4_α
 xchain00349_n2_β:
 jmp proc_strident_ω
.Lx00350_0:
 .quad 1
# IR_LIT_STRING
 xchain00349_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00349_n5_α
 xchain00349_n3_β:
 jmp proc_strident_ω
.Lx00351_0:
 .quad .Lx00351_0_s
.Lx00351_0_s:
 .string "\"abc\"===\"aaa\""
# IR_VAR
 xchain00349_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00349_n6_α
 xchain00349_n4_β:
 jmp proc_strident_ω
# IR_RETURN
 xchain00349_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strident_γ
# IR_TO
 xchain00349_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00352_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00349_n7_α
 xchain00349_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00352_0
# IR_LIT_STRING
 xchain00349_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00349_n8_α
 xchain00349_n7_β:
 jmp xchain00349_n6_β
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00349_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00349_n9_α
 xchain00349_n8_β:
 jmp xchain00349_n6_β
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "aaa"
 xchain00349_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00349_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00349_n6_β
 xchain00349_n9_β:
 jmp xchain00349_n6_β
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
 xchain00355_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00355_n1_α
 xchain00355_n0_β:
 jmp xchain00355_n2_α
# IR_UNOP
 xchain00355_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00355_n2_α
 cmp eax, 0
 jne xchain00355_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00355_n3_α
 xchain00355_n1_β:
 jmp xchain00355_n2_α
# IR_LIT_INTEGER
 xchain00355_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00355_n4_α
 xchain00355_n2_β:
 jmp proc_replf_ω
.Lx00356_0:
 .quad 1
# IR_LIT_STRING
 xchain00355_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00355_n5_α
 xchain00355_n3_β:
 jmp proc_replf_ω
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string "repl(\"-\",20)"
# IR_VAR
 xchain00355_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00355_n6_α
 xchain00355_n4_β:
 jmp proc_replf_ω
# IR_RETURN
 xchain00355_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_replf_γ
# IR_TO
 xchain00355_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00358_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00355_n7_α
 xchain00355_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00358_0
# IR_LIT_STRING
 xchain00355_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00355_n8_α
 xchain00355_n7_β:
 jmp xchain00355_n6_β
.Lx00359_0:
 .quad .Lx00359_0_s
.Lx00359_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00355_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00355_n9_α
 xchain00355_n8_β:
 jmp xchain00355_n6_β
.Lx00360_0:
 .quad 20
 xchain00355_n9_α:
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
  .Lrkfn1008: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1008]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00355_n6_β
 jmp xchain00355_n6_β
 xchain00355_n9_β:
 jmp xchain00355_n6_β
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
 xchain00361_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00361_n1_α
 xchain00361_n0_β:
 jmp xchain00361_n2_α
# IR_UNOP
 xchain00361_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00361_n2_α
 cmp eax, 0
 jne xchain00361_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00361_n3_α
 xchain00361_n1_β:
 jmp xchain00361_n2_α
# IR_LIT_INTEGER
 xchain00361_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00361_n4_α
 xchain00361_n2_β:
 jmp proc_reversef_ω
.Lx00362_0:
 .quad 1
# IR_LIT_STRING
 xchain00361_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00361_n5_α
 xchain00361_n3_β:
 jmp proc_reversef_ω
.Lx00363_0:
 .quad .Lx00363_0_s
.Lx00363_0_s:
 .string "reverse(\"a...z\")"
# IR_VAR
 xchain00361_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00361_n6_α
 xchain00361_n4_β:
 jmp proc_reversef_ω
# IR_RETURN
 xchain00361_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reversef_γ
# IR_TO
 xchain00361_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00364_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00361_n7_α
 xchain00361_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00364_0
# IR_LIT_STRING
 xchain00361_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00361_n8_α
 xchain00361_n7_β:
 jmp xchain00361_n6_β
.Lx00365_0:
 .quad .Lx00365_0_s
.Lx00365_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00361_n8_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1022: .string "reverse"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1022]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00361_n6_β
 jmp xchain00361_n6_β
 xchain00361_n8_β:
 jmp xchain00361_n6_β
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
 xchain00366_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00366_n1_α
 xchain00366_n0_β:
 jmp xchain00366_n2_α
# IR_UNOP
 xchain00366_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00366_n2_α
 cmp eax, 0
 jne xchain00366_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00366_n3_α
 xchain00366_n1_β:
 jmp xchain00366_n2_α
# IR_LIT_INTEGER
 xchain00366_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00366_n4_α
 xchain00366_n2_β:
 jmp proc_leftf_ω
.Lx00367_0:
 .quad 1
# IR_LIT_STRING
 xchain00366_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00366_n5_α
 xchain00366_n3_β:
 jmp proc_leftf_ω
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "left(\"a\",10)"
# IR_VAR
 xchain00366_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00366_n6_α
 xchain00366_n4_β:
 jmp proc_leftf_ω
# IR_RETURN
 xchain00366_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_leftf_γ
# IR_TO
 xchain00366_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00369_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00366_n7_α
 xchain00366_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00369_0
# IR_LIT_STRING
 xchain00366_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00366_n8_α
 xchain00366_n7_β:
 jmp xchain00366_n6_β
.Lx00370_0:
 .quad .Lx00370_0_s
.Lx00370_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00366_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00371_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00366_n9_α
 xchain00366_n8_β:
 jmp xchain00366_n6_β
.Lx00371_0:
 .quad 10
 xchain00366_n9_α:
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
  .Lrkfn1037: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1037]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00366_n6_β
 jmp xchain00366_n6_β
 xchain00366_n9_β:
 jmp xchain00366_n6_β
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
 xchain00372_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00372_n1_α
 xchain00372_n0_β:
 jmp xchain00372_n2_α
# IR_UNOP
 xchain00372_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00372_n2_α
 cmp eax, 0
 jne xchain00372_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00372_n3_α
 xchain00372_n1_β:
 jmp xchain00372_n2_α
# IR_LIT_INTEGER
 xchain00372_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00372_n4_α
 xchain00372_n2_β:
 jmp proc_centerf_ω
.Lx00373_0:
 .quad 1
# IR_LIT_STRING
 xchain00372_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00372_n5_α
 xchain00372_n3_β:
 jmp proc_centerf_ω
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "center(\"a\",10)"
# IR_VAR
 xchain00372_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00372_n6_α
 xchain00372_n4_β:
 jmp proc_centerf_ω
# IR_RETURN
 xchain00372_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_centerf_γ
# IR_TO
 xchain00372_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00375_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00372_n7_α
 xchain00372_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00375_0
# IR_LIT_STRING
 xchain00372_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00372_n8_α
 xchain00372_n7_β:
 jmp xchain00372_n6_β
.Lx00376_0:
 .quad .Lx00376_0_s
.Lx00376_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00372_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00372_n9_α
 xchain00372_n8_β:
 jmp xchain00372_n6_β
.Lx00377_0:
 .quad 10
 xchain00372_n9_α:
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
  .Lrkfn1052: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1052]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00372_n6_β
 jmp xchain00372_n6_β
 xchain00372_n9_β:
 jmp xchain00372_n6_β
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
 xchain00378_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00378_n1_α
 xchain00378_n0_β:
 jmp xchain00378_n2_α
# IR_UNOP
 xchain00378_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00378_n2_α
 cmp eax, 0
 jne xchain00378_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00378_n3_α
 xchain00378_n1_β:
 jmp xchain00378_n2_α
# IR_LIT_INTEGER
 xchain00378_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00378_n4_α
 xchain00378_n2_β:
 jmp proc_rightf_ω
.Lx00379_0:
 .quad 1
# IR_LIT_STRING
 xchain00378_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00378_n5_α
 xchain00378_n3_β:
 jmp proc_rightf_ω
.Lx00380_0:
 .quad .Lx00380_0_s
.Lx00380_0_s:
 .string "right(\"a\",10)"
# IR_VAR
 xchain00378_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00378_n6_α
 xchain00378_n4_β:
 jmp proc_rightf_ω
# IR_RETURN
 xchain00378_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rightf_γ
# IR_TO
 xchain00378_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00381_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00378_n7_α
 xchain00378_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00381_0
# IR_LIT_STRING
 xchain00378_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00378_n8_α
 xchain00378_n7_β:
 jmp xchain00378_n6_β
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00378_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00378_n9_α
 xchain00378_n8_β:
 jmp xchain00378_n6_β
.Lx00383_0:
 .quad 10
 xchain00378_n9_α:
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
  .Lrkfn1067: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1067]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00378_n6_β
 jmp xchain00378_n6_β
 xchain00378_n9_β:
 jmp xchain00378_n6_β
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
 xchain00384_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00384_n1_α
 xchain00384_n0_β:
 jmp xchain00384_n2_α
# IR_UNOP
 xchain00384_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00384_n2_α
 cmp eax, 0
 jne xchain00384_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00384_n3_α
 xchain00384_n1_β:
 jmp xchain00384_n2_α
# IR_LIT_INTEGER
 xchain00384_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00384_n4_α
 xchain00384_n2_β:
 jmp proc_trimf_ω
.Lx00385_0:
 .quad 1
# IR_LIT_STRING
 xchain00384_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00384_n5_α
 xchain00384_n3_β:
 jmp proc_trimf_ω
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "trim(\"a  ...\")"
# IR_VAR
 xchain00384_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00384_n6_α
 xchain00384_n4_β:
 jmp proc_trimf_ω
# IR_RETURN
 xchain00384_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_trimf_γ
# IR_TO
 xchain00384_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00387_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00384_n7_α
 xchain00384_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00387_0
# IR_LIT_STRING
 xchain00384_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00384_n8_α
 xchain00384_n7_β:
 jmp xchain00384_n6_β
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string "a         "
 xchain00384_n8_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1081: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1081]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00384_n6_β
 jmp xchain00384_n6_β
 xchain00384_n8_β:
 jmp xchain00384_n6_β
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
 xchain00389_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00389_n1_α
 xchain00389_n0_β:
 jmp xchain00389_n2_α
# IR_UNOP
 xchain00389_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00389_n2_α
 cmp eax, 0
 jne xchain00389_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00389_n3_α
 xchain00389_n1_β:
 jmp xchain00389_n2_α
# IR_LIT_INTEGER
 xchain00389_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00390_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00389_n4_α
 xchain00389_n2_β:
 jmp proc_entabf_ω
.Lx00390_0:
 .quad 1
# IR_LIT_STRING
 xchain00389_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00389_n5_α
 xchain00389_n3_β:
 jmp proc_entabf_ω
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "entab(\"a  ...\")"
# IR_VAR
 xchain00389_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00389_n6_α
 xchain00389_n4_β:
 jmp proc_entabf_ω
# IR_RETURN
 xchain00389_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_entabf_γ
# IR_TO
 xchain00389_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00392_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00389_n7_α
 xchain00389_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00392_0
# IR_LIT_STRING
 xchain00389_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00389_n8_α
 xchain00389_n7_β:
 jmp xchain00389_n6_β
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "a         "
 xchain00389_n8_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1095: .string "entab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1095]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00389_n6_β
 jmp xchain00389_n6_β
 xchain00389_n8_β:
 jmp xchain00389_n6_β
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
 xchain00394_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00394_n1_α
 xchain00394_n0_β:
 jmp xchain00394_n2_α
# IR_UNOP
 xchain00394_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00394_n2_α
 cmp eax, 0
 jne xchain00394_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00394_n3_α
 xchain00394_n1_β:
 jmp xchain00394_n2_α
# IR_LIT_INTEGER
 xchain00394_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00394_n4_α
 xchain00394_n2_β:
 jmp proc_detabf_ω
.Lx00395_0:
 .quad 1
# IR_LIT_STRING
 xchain00394_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00394_n5_α
 xchain00394_n3_β:
 jmp proc_detabf_ω
.Lx00396_0:
 .quad .Lx00396_0_s
.Lx00396_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_VAR
 xchain00394_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00394_n6_α
 xchain00394_n4_β:
 jmp proc_detabf_ω
# IR_RETURN
 xchain00394_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_detabf_γ
# IR_TO
 xchain00394_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00397_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00394_n7_α
 xchain00394_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00397_0
# IR_LIT_STRING
 xchain00394_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00394_n8_α
 xchain00394_n7_β:
 jmp xchain00394_n6_β
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "a\tb\tc"
 xchain00394_n8_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1109: .string "detab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1109]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00394_n6_β
 jmp xchain00394_n6_β
 xchain00394_n8_β:
 jmp xchain00394_n6_β
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
 xchain00399_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00399_n1_α
 xchain00399_n0_β:
 jmp xchain00399_n2_α
# IR_UNOP
 xchain00399_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00399_n2_α
 cmp eax, 0
 jne xchain00399_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00399_n3_α
 xchain00399_n1_β:
 jmp xchain00399_n2_α
# IR_LIT_INTEGER
 xchain00399_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00399_n4_α
 xchain00399_n2_β:
 jmp proc_mapf_ω
.Lx00400_0:
 .quad 1
# IR_LIT_STRING
 xchain00399_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00399_n5_α
 xchain00399_n3_β:
 jmp proc_mapf_ω
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_VAR
 xchain00399_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00399_n6_α
 xchain00399_n4_β:
 jmp proc_mapf_ω
# IR_RETURN
 xchain00399_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mapf_γ
# IR_TO
 xchain00399_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00402_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00399_n7_α
 xchain00399_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00402_0
# IR_LIT_STRING
 xchain00399_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00399_n8_α
 xchain00399_n7_β:
 jmp xchain00399_n6_β
.Lx00403_0:
 .quad .Lx00403_0_s
.Lx00403_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00399_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00399_n9_α
 xchain00399_n8_β:
 jmp xchain00399_n6_β
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00399_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00399_n10_α
 xchain00399_n9_β:
 jmp xchain00399_n6_β
.Lx00405_0:
 .quad .Lx00405_0_s
.Lx00405_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00399_n10_α:
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
  .Lrkfn1125: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1125]
 lea rsi, [rbp + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00399_n6_β
 jmp xchain00399_n6_β
 xchain00399_n10_β:
 jmp xchain00399_n6_β
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
 xchain00406_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00406_n1_α
 xchain00406_n0_β:
 jmp xchain00406_n2_α
# IR_UNOP
 xchain00406_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00406_n2_α
 cmp eax, 0
 jne xchain00406_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00406_n3_α
 xchain00406_n1_β:
 jmp xchain00406_n2_α
# IR_LIT_INTEGER
 xchain00406_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00406_n4_α
 xchain00406_n2_β:
 jmp proc_map1_ω
.Lx00407_0:
 .quad 1
# IR_LIT_STRING
 xchain00406_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00406_n5_α
 xchain00406_n3_β:
 jmp proc_map1_ω
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_VAR
 xchain00406_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00406_n6_α
 xchain00406_n4_β:
 jmp proc_map1_ω
# IR_RETURN
 xchain00406_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map1_γ
# IR_TO
 xchain00406_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00409_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00406_n7_α
 xchain00406_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00409_0
# IR_LIT_STRING
 xchain00406_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00406_n8_α
 xchain00406_n7_β:
 jmp xchain00406_n6_β
.Lx00410_0:
 .quad .Lx00410_0_s
.Lx00410_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00406_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00406_n9_α
 xchain00406_n8_β:
 jmp xchain00406_n6_β
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00406_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00406_n10_α
 xchain00406_n9_β:
 jmp xchain00406_n6_β
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "ba"
 xchain00406_n10_α:
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
  .Lrkfn1141: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1141]
 lea rsi, [rbp + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00406_n6_β
 jmp xchain00406_n6_β
 xchain00406_n10_β:
 jmp xchain00406_n6_β
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
 xchain00413_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 600], rax
 jmp xchain00413_n1_α
 xchain00413_n0_β:
 jmp xchain00413_n2_α
# IR_UNOP
 xchain00413_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00413_n2_α
 cmp eax, 0
 jne xchain00413_n2_α
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 jmp xchain00413_n3_α
 xchain00413_n1_β:
 jmp xchain00413_n2_α
# IR_LIT_INTEGER
 xchain00413_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00413_n4_α
 xchain00413_n2_β:
 jmp proc_map2_ω
.Lx00414_0:
 .quad 1
# IR_LIT_STRING
 xchain00413_n3_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00415_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00413_n5_α
 xchain00413_n3_β:
 jmp proc_map2_ω
.Lx00415_0:
 .quad .Lx00415_0_s
.Lx00415_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_VAR
 xchain00413_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00413_n6_α
 xchain00413_n4_β:
 jmp proc_map2_ω
# IR_RETURN
 xchain00413_n5_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map2_γ
# IR_TO
 xchain00413_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00416_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00413_n7_α
 xchain00413_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00416_0
# IR_LIT_STRING
 xchain00413_n7_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00413_n8_α
 xchain00413_n7_β:
 jmp xchain00413_n6_β
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00413_n8_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00413_n9_α
 xchain00413_n8_β:
 jmp xchain00413_n6_β
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00413_n9_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00413_n10_α
 xchain00413_n9_β:
 jmp xchain00413_n6_β
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "ba"
 xchain00413_n10_α:
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
  .Lrkfn1157: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1157]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00413_n6_β
 jmp xchain00413_n11_α
 xchain00413_n10_β:
 jmp xchain00413_n6_β
# IR_LIT_STRING
 xchain00413_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00413_n12_α
 xchain00413_n11_β:
 jmp xchain00413_n6_β
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "c"
# IR_LIT_STRING
 xchain00413_n12_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00413_n13_α
 xchain00413_n12_β:
 jmp xchain00413_n6_β
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00413_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00413_n14_α
 xchain00413_n13_β:
 jmp xchain00413_n6_β
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "cd"
 xchain00413_n14_α:
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
  .Lrkfn1162: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1162]
 lea rsi, [rbp + 160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00413_n6_β
 jmp xchain00413_n15_α
 xchain00413_n14_β:
 jmp xchain00413_n6_β
 xchain00413_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00413_n6_β
xchain00413_n15_β:
 jmp xchain00413_n6_β
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
 xchain00423_n0_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00423_n1_α
 xchain00423_n0_β:
 jmp xchain00423_n3_α
# IR_NULLTEST_VAR
 xchain00423_n1_α:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 99
 je xchain00423_n3_α
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00423_n3_α
 cmp eax, 0
 jne xchain00423_n3_α
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 792], rax
 jmp xchain00423_n2_α
 xchain00423_n1_β:
 jmp xchain00423_n3_α
# IR_LIT_INTEGER
 xchain00423_n2_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00423_n4_α
 xchain00423_n2_β:
 jmp xchain00423_n3_α
.Lx00424_0:
 .quad 1
# IR_VAR
 xchain00423_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00423_n5_α
 xchain00423_n3_β:
 jmp xchain00423_n6_α
# IR_ASSIGN_VAR
 xchain00423_n4_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00423_n3_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00423_n7_α
 xchain00423_n4_β:
 jmp xchain00423_n3_α
# IR_UNOP
 xchain00423_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00423_n6_α
 cmp eax, 0
 jne xchain00423_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00423_n8_α
 xchain00423_n5_β:
 jmp xchain00423_n6_α
# IR_LIT_INTEGER
 xchain00423_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00423_n9_α
 xchain00423_n6_β:
 jmp proc_tablemap_ω
.Lx00425_0:
 .quad 1
 xchain00423_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1175: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1175]
 lea rsi, [rbp + 736]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain00423_n11_α
 jmp xchain00423_n10_α
 xchain00423_n7_β:
 jmp xchain00423_n11_α
# IR_LIT_STRING
 xchain00423_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00423_n12_α
 xchain00423_n8_β:
 jmp proc_tablemap_ω
.Lx00426_0:
 .quad .Lx00426_0_s
.Lx00426_0_s:
 .string "T[\"b\"]"
# IR_VAR
 xchain00423_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00423_n13_α
 xchain00423_n9_β:
 jmp proc_tablemap_ω
# IR_ASSIGN gva
 xchain00423_n10_α:
 mov rax, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00423_n11_α
 xchain00423_n10_β:
 jmp xchain00423_n11_α
# IR_VAR_REF
 xchain00423_n11_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00423_n14_α
 xchain00423_n11_β:
 jmp xchain00423_n19_α
# IR_RETURN
 xchain00423_n12_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tablemap_γ
# IR_TO
 xchain00423_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00427_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00423_n15_α
 xchain00423_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00427_0
# IR_LIT_STRING
 xchain00423_n14_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00423_n16_α
 xchain00423_n14_β:
 jmp xchain00423_n19_α
.Lx00428_0:
 .quad .Lx00428_0_s
.Lx00428_0_s:
 .string "a"
# IR_VAR_REF
 xchain00423_n15_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00423_n17_α
 xchain00423_n15_β:
 jmp xchain00423_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00423_n16_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00423_n19_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00423_n18_α
 xchain00423_n16_β:
 jmp xchain00423_n19_α
# IR_LIT_STRING
 xchain00423_n17_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00423_n20_α
 xchain00423_n17_β:
 jmp xchain00423_n13_β
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00423_n18_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00430_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00423_n21_α
 xchain00423_n18_β:
 jmp xchain00423_n19_α
.Lx00430_0:
 .quad .Lx00430_0_s
.Lx00430_0_s:
 .string "b"
# IR_VAR_REF
 xchain00423_n19_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00423_n22_α
 xchain00423_n19_β:
 jmp xchain00423_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00423_n20_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00423_n13_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00423_n23_α
 xchain00423_n20_β:
 jmp xchain00423_n13_β
# IR_ASSIGN_VAR
 xchain00423_n21_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00423_n19_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00423_n19_α
 xchain00423_n21_β:
 jmp xchain00423_n19_α
# IR_LIT_STRING
 xchain00423_n22_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00423_n24_α
 xchain00423_n22_β:
 jmp xchain00423_n3_α
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00423_n23_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00423_n13_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00423_n13_β
 xchain00423_n23_β:
 jmp xchain00423_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00423_n24_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00423_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00423_n25_α
 xchain00423_n24_β:
 jmp xchain00423_n3_α
# IR_LIT_STRING
 xchain00423_n25_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00423_n26_α
 xchain00423_n25_β:
 jmp xchain00423_n3_α
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00423_n26_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00423_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00423_n27_α
 xchain00423_n26_β:
 jmp xchain00423_n3_α
 xchain00423_n27_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 408], rax
 jmp xchain00423_n28_α
xchain00423_n27_β:
 jmp xchain00423_n3_α
# IR_MOVE_LABEL
 xchain00423_n28_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00423_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00423_n3_α
 xchain00423_n28_β:
 jmp xchain00423_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00423_n29_α:
 jmp qword ptr [rbp + 384]
 xchain00423_n29_β:
 jmp xchain00423_n3_α
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
 xchain00433_n0_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00433_n1_α
 xchain00433_n0_β:
 jmp xchain00433_n3_α
# IR_NULLTEST_VAR
 xchain00433_n1_α:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 99
 je xchain00433_n3_α
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00433_n3_α
 cmp eax, 0
 jne xchain00433_n3_α
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 984], rax
 jmp xchain00433_n2_α
 xchain00433_n1_β:
 jmp xchain00433_n3_α
# IR_LIT_INTEGER
 xchain00433_n2_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00433_n4_α
 xchain00433_n2_β:
 jmp xchain00433_n3_α
.Lx00434_0:
 .quad 1
# IR_VAR
 xchain00433_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00433_n5_α
 xchain00433_n3_β:
 jmp xchain00433_n6_α
# IR_ASSIGN_VAR
 xchain00433_n4_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00433_n3_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00433_n7_α
 xchain00433_n4_β:
 jmp xchain00433_n3_α
# IR_UNOP
 xchain00433_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00433_n6_α
 cmp eax, 0
 jne xchain00433_n6_α
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00433_n8_α
 xchain00433_n5_β:
 jmp xchain00433_n6_α
# IR_LIT_INTEGER
 xchain00433_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00433_n9_α
 xchain00433_n6_β:
 jmp proc_listmap_ω
.Lx00435_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00433_n7_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00433_n10_α
 xchain00433_n7_β:
 jmp xchain00433_n14_α
.Lx00436_0:
 .quad 256
# IR_LIT_STRING
 xchain00433_n8_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00433_n11_α
 xchain00433_n8_β:
 jmp proc_listmap_ω
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "L[ord(\"b\")]"
# IR_VAR
 xchain00433_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00433_n12_α
 xchain00433_n9_β:
 jmp proc_listmap_ω
 xchain00433_n10_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn1220: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1220]
 lea rsi, [rbp + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain00433_n14_α
 jmp xchain00433_n13_α
 xchain00433_n10_β:
 jmp xchain00433_n14_α
# IR_RETURN
 xchain00433_n11_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listmap_γ
# IR_TO
 xchain00433_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00438_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00433_n15_α
 xchain00433_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00438_0
# IR_ASSIGN gva
 xchain00433_n13_α:
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00433_n14_α
 xchain00433_n13_β:
 jmp xchain00433_n14_α
# IR_VAR_REF
 xchain00433_n14_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00433_n16_α
 xchain00433_n14_β:
 jmp xchain00433_n21_α
# IR_VAR_REF
 xchain00433_n15_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00433_n17_α
 xchain00433_n15_β:
 jmp xchain00433_n12_β
# IR_LIT_STRING
 xchain00433_n16_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00433_n18_α
 xchain00433_n16_β:
 jmp xchain00433_n21_α
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00433_n17_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00433_n19_α
 xchain00433_n17_β:
 jmp xchain00433_n12_β
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "b"
 xchain00433_n18_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn1232: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1232]
 lea rsi, [rbp + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain00433_n21_α
 jmp xchain00433_n20_α
 xchain00433_n18_β:
 jmp xchain00433_n21_α
 xchain00433_n19_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn1234: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1234]
 lea rsi, [rbp + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00433_n12_β
 jmp xchain00433_n22_α
 xchain00433_n19_β:
 jmp xchain00433_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00433_n20_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00433_n21_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00433_n23_α
 xchain00433_n20_β:
 jmp xchain00433_n21_α
# IR_VAR_REF
 xchain00433_n21_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00433_n24_α
 xchain00433_n21_β:
 jmp xchain00433_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00433_n22_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00433_n12_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00433_n25_α
 xchain00433_n22_β:
 jmp xchain00433_n12_β
# IR_LIT_STRING
 xchain00433_n23_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00441_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00433_n26_α
 xchain00433_n23_β:
 jmp xchain00433_n21_α
.Lx00441_0:
 .quad .Lx00441_0_s
.Lx00441_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00433_n24_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00433_n27_α
 xchain00433_n24_β:
 jmp xchain00433_n3_α
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00433_n25_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00433_n12_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00433_n12_β
 xchain00433_n25_β:
 jmp xchain00433_n12_β
# IR_ASSIGN_VAR
 xchain00433_n26_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00433_n21_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00433_n21_α
 xchain00433_n26_β:
 jmp xchain00433_n21_α
 xchain00433_n27_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn1244: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1244]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00433_n3_α
 jmp xchain00433_n28_α
 xchain00433_n27_β:
 jmp xchain00433_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00433_n28_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00433_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00433_n29_α
 xchain00433_n28_β:
 jmp xchain00433_n3_α
# IR_LIT_STRING
 xchain00433_n29_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00433_n30_α
 xchain00433_n29_β:
 jmp xchain00433_n3_α
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00433_n30_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00433_n3_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00433_n31_α
 xchain00433_n30_β:
 jmp xchain00433_n3_α
 xchain00433_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 456], rax
 jmp xchain00433_n32_α
xchain00433_n31_β:
 jmp xchain00433_n3_α
# IR_MOVE_LABEL
 xchain00433_n32_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + xchain00433_n3_α]
 mov qword ptr [rbp + 432], rax
 jmp xchain00433_n3_α
 xchain00433_n32_β:
 jmp xchain00433_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00433_n33_α:
 jmp qword ptr [rbp + 432]
 xchain00433_n33_β:
 jmp xchain00433_n3_α
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
 xchain00444_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00444_n1_α
 xchain00444_n0_β:
 jmp xchain00444_n2_α
# IR_UNOP
 xchain00444_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00444_n2_α
 cmp eax, 0
 jne xchain00444_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00444_n3_α
 xchain00444_n1_β:
 jmp xchain00444_n2_α
# IR_LIT_INTEGER
 xchain00444_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00444_n4_α
 xchain00444_n2_β:
 jmp proc_nullscan_ω
.Lx00445_0:
 .quad 1
# IR_LIT_STRING
 xchain00444_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00444_n5_α
 xchain00444_n3_β:
 jmp proc_nullscan_ω
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "s ? 0"
# IR_VAR
 xchain00444_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00444_n6_α
 xchain00444_n4_β:
 jmp proc_nullscan_ω
# IR_RETURN
 xchain00444_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullscan_γ
# IR_TO
 xchain00444_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00447_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00444_n7_α
 xchain00444_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00447_0
# IR_LIT_STRING
 xchain00444_n7_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00448_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00444_n8_α
 xchain00444_n7_β:
 jmp xchain00444_n6_β
.Lx00448_0:
 .quad .Lx00448_0_s
.Lx00448_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00444_n8_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00444_n9_α
 xchain00444_n8_β:
 jmp xchain00444_n6_β
# IR_LIT_INTEGER
 xchain00444_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00444_n10_α
 xchain00444_n9_β:
 jmp proc_nullscan_ω
.Lx00449_0:
 .quad 0
# IR_GEN_SCAN
 xchain00444_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rdi, [rbp + 144]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 144]
 mov r14, qword ptr [rbp + 152]
 mov r15, qword ptr [rbp + 160]
 jmp xchain00444_n6_β
 xchain00444_n10_β:
 jmp xchain00444_n6_β
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
 xchain00450_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00450_n1_α
 xchain00450_n0_β:
 jmp xchain00450_n2_α
# IR_UNOP
 xchain00450_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00450_n2_α
 cmp eax, 0
 jne xchain00450_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00450_n3_α
 xchain00450_n1_β:
 jmp xchain00450_n2_α
# IR_LIT_STRING
 xchain00450_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00450_n4_α
 xchain00450_n2_β:
 jmp proc_movef_ω
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00450_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00450_n5_α
 xchain00450_n3_β:
 jmp proc_movef_ω
.Lx00452_0:
 .quad .Lx00452_0_s
.Lx00452_0_s:
 .string "move(0)"
# IR_GEN_SCAN
 xchain00450_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00450_n6_α
 xchain00450_n4_β:
 jmp proc_movef_ω
# IR_RETURN
 xchain00450_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_movef_γ
# IR_LIT_INTEGER
 xchain00450_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00450_n7_α
 xchain00450_n6_β:
 jmp xchain00450_n9_α
.Lx00453_0:
 .quad 1
# IR_VAR
 xchain00450_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00450_n8_α
 xchain00450_n7_β:
 jmp xchain00450_n9_α
# IR_TO
 xchain00450_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00454_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00450_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00450_n10_α
 xchain00450_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00454_0
# IR_GEN_SCAN
 xchain00450_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_movef_ω
 xchain00450_n9_β:
 jmp proc_movef_ω
# IR_LIT_INTEGER
 xchain00450_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00450_n11_α
 xchain00450_n10_β:
 jmp xchain00450_n8_β
.Lx00455_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00450_n11_α:
 sub rsp, 16
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00456_239
 add rsp, 16
 jmp xchain00450_n8_β
.Lx00456_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00456_240
 add rsp, 16
 jmp xchain00450_n8_β
.Lx00456_240:
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
 jmp xchain00450_n8_β
 xchain00450_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00450_n8_β
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
 xchain00457_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00457_n1_α
 xchain00457_n0_β:
 jmp xchain00457_n2_α
# IR_UNOP
 xchain00457_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00457_n2_α
 cmp eax, 0
 jne xchain00457_n2_α
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 jmp xchain00457_n3_α
 xchain00457_n1_β:
 jmp xchain00457_n2_α
# IR_LIT_STRING
 xchain00457_n2_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00457_n4_α
 xchain00457_n2_β:
 jmp proc_mov11_ω
.Lx00458_0:
 .quad .Lx00458_0_s
.Lx00458_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00457_n3_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00459_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00457_n5_α
 xchain00457_n3_β:
 jmp proc_mov11_ω
.Lx00459_0:
 .quad .Lx00459_0_s
.Lx00459_0_s:
 .string "move(1) & move(-1)"
# IR_GEN_SCAN
 xchain00457_n4_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00457_n6_α
 xchain00457_n4_β:
 jmp proc_mov11_ω
# IR_RETURN
 xchain00457_n5_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mov11_γ
# IR_LIT_INTEGER
 xchain00457_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00457_n7_α
 xchain00457_n6_β:
 jmp xchain00457_n9_α
.Lx00460_0:
 .quad 1
# IR_VAR
 xchain00457_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00457_n8_α
 xchain00457_n7_β:
 jmp xchain00457_n9_α
# IR_TO
 xchain00457_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00461_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00457_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00457_n10_α
 xchain00457_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00461_0
# IR_GEN_SCAN
 xchain00457_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_mov11_ω
 xchain00457_n9_β:
 jmp proc_mov11_ω
# IR_LIT_INTEGER
 xchain00457_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00457_n11_α
 xchain00457_n10_β:
 jmp xchain00457_n8_β
.Lx00462_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00457_n11_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00463_239
 add rsp, 16
 jmp xchain00457_n8_β
.Lx00463_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00463_240
 add rsp, 16
 jmp xchain00457_n8_β
.Lx00463_240:
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
 jmp xchain00457_n12_α
 xchain00457_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00457_n8_β
# IR_LIT_INTEGER
 xchain00457_n12_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00464_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00457_n13_α
 xchain00457_n12_β:
 jmp xchain00457_n8_β
.Lx00464_0:
 .quad 18446744073709551615
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00457_n13_α:
 sub rsp, 16
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00465_239
 add rsp, 16
 jmp xchain00457_n8_β
.Lx00465_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00465_240
 add rsp, 16
 jmp xchain00457_n8_β
.Lx00465_240:
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
 jmp xchain00457_n14_α
 xchain00457_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00457_n8_β
 xchain00457_n14_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00457_n8_β
xchain00457_n14_β:
 jmp xchain00457_n8_β
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
 xchain00466_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain00466_n1_α
 xchain00466_n0_β:
 jmp xchain00466_n2_α
# IR_UNOP
 xchain00466_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00466_n2_α
 cmp eax, 0
 jne xchain00466_n2_α
 mov qword ptr [rbp + 608], 0
 mov qword ptr [rbp + 616], 0
 jmp xchain00466_n3_α
 xchain00466_n1_β:
 jmp xchain00466_n2_α
# IR_LIT_STRING
 xchain00466_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00467_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00466_n4_α
 xchain00466_n2_β:
 jmp proc_pos11_ω
.Lx00467_0:
 .quad .Lx00467_0_s
.Lx00467_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00466_n3_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00466_n5_α
 xchain00466_n3_β:
 jmp proc_pos11_ω
.Lx00468_0:
 .quad .Lx00468_0_s
.Lx00468_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_GEN_SCAN
 xchain00466_n4_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00466_n6_α
 xchain00466_n4_β:
 jmp proc_pos11_ω
# IR_RETURN
 xchain00466_n5_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pos11_γ
# IR_LIT_INTEGER
 xchain00466_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00469_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00466_n7_α
 xchain00466_n6_β:
 jmp xchain00466_n9_α
.Lx00469_0:
 .quad 1
# IR_VAR
 xchain00466_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00466_n8_α
 xchain00466_n7_β:
 jmp xchain00466_n9_α
# IR_TO
 xchain00466_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00470_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00466_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00466_n10_α
 xchain00466_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00470_0
# IR_GEN_SCAN
 xchain00466_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_pos11_ω
 xchain00466_n9_β:
 jmp proc_pos11_ω
# KEYWORD_pos_call
 xchain00466_n10_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00466_n11_α
 xchain00466_n10_β:
 jmp xchain00466_n8_β
# IR_LIT_INTEGER
 xchain00466_n11_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00466_n12_α
 xchain00466_n11_β:
 jmp xchain00466_n8_β
.Lx00471_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00466_n12_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 7
 je .Lx00472_1
 cmp eax, 6
 jne .Lx00472_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00472_0
.Lx00472_1:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00472_2
.Lx00472_0:
 lea rdi, [rbp + 448]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00472_2:
 jmp xchain00466_n13_α
 xchain00466_n12_β:
 jmp xchain00466_n8_β
 xchain00466_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00473_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00473_2
.Lx00473_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00466_n14_α
.Lx00473_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00473_3
.Lx00473_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00466_n8_β
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
.Lx00473_3:
 jmp xchain00466_n14_α
 xchain00466_n13_β:
 jmp xchain00466_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00466_n14_α:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00466_n8_β
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00466_n15_α
 xchain00466_n14_β:
 jmp xchain00466_n8_β
# KEYWORD_pos_call
 xchain00466_n15_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00466_n16_α
 xchain00466_n15_β:
 jmp xchain00466_n8_β
# IR_LIT_INTEGER
 xchain00466_n16_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00474_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00466_n17_α
 xchain00466_n16_β:
 jmp xchain00466_n8_β
.Lx00474_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00466_n17_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00475_1
 cmp eax, 6
 jne .Lx00475_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00475_0
.Lx00475_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00475_2
.Lx00475_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00475_2:
 jmp xchain00466_n18_α
 xchain00466_n17_β:
 jmp xchain00466_n8_β
 xchain00466_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00476_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00476_2
.Lx00476_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00466_n19_α
.Lx00476_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00476_3
.Lx00476_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00466_n8_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00476_3:
 jmp xchain00466_n19_α
 xchain00466_n18_β:
 jmp xchain00466_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00466_n19_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00466_n8_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00466_n20_α
 xchain00466_n19_β:
 jmp xchain00466_n8_β
 xchain00466_n20_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00466_n8_β
xchain00466_n20_β:
 jmp xchain00466_n8_β
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
 xchain00477_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00477_n1_α
 xchain00477_n0_β:
 jmp xchain00477_n2_α
# IR_UNOP
 xchain00477_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00477_n2_α
 cmp eax, 0
 jne xchain00477_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00477_n3_α
 xchain00477_n1_β:
 jmp xchain00477_n2_α
# IR_LIT_STRING
 xchain00477_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00478_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00477_n4_α
 xchain00477_n2_β:
 jmp proc_tabf_ω
.Lx00478_0:
 .quad .Lx00478_0_s
.Lx00478_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00477_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00479_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00477_n5_α
 xchain00477_n3_β:
 jmp proc_tabf_ω
.Lx00479_0:
 .quad .Lx00479_0_s
.Lx00479_0_s:
 .string "tab(3)"
# IR_GEN_SCAN
 xchain00477_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00477_n6_α
 xchain00477_n4_β:
 jmp proc_tabf_ω
# IR_RETURN
 xchain00477_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabf_γ
# IR_LIT_INTEGER
 xchain00477_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00480_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00477_n7_α
 xchain00477_n6_β:
 jmp xchain00477_n9_α
.Lx00480_0:
 .quad 1
# IR_VAR
 xchain00477_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00477_n8_α
 xchain00477_n7_β:
 jmp xchain00477_n9_α
# IR_TO
 xchain00477_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00481_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00477_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00477_n10_α
 xchain00477_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00481_0
# IR_GEN_SCAN
 xchain00477_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabf_ω
 xchain00477_n9_β:
 jmp proc_tabf_ω
# IR_LIT_INTEGER
 xchain00477_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00482_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00477_n11_α
 xchain00477_n10_β:
 jmp xchain00477_n8_β
.Lx00482_0:
 .quad 3
# IR_SCAN_TAB
 xchain00477_n11_α:
 sub rsp, 16
 mov rax, 3
 cmp rax, 1
 jge .Lx00483_0
 add rax, r15
 add rax, 1
.Lx00483_0:
 cmp rax, 1
 jge .Lx00483_239
 add rsp, 16
 jmp xchain00477_n8_β
.Lx00483_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00483_240
 add rsp, 16
 jmp xchain00477_n8_β
.Lx00483_240:
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
 jmp xchain00477_n8_β
 xchain00477_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00477_n8_β
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
 xchain00484_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00484_n1_α
 xchain00484_n0_β:
 jmp xchain00484_n2_α
# IR_UNOP
 xchain00484_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00484_n2_α
 cmp eax, 0
 jne xchain00484_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00484_n3_α
 xchain00484_n1_β:
 jmp xchain00484_n2_α
# IR_LIT_STRING
 xchain00484_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00485_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00484_n4_α
 xchain00484_n2_β:
 jmp proc_matchf_ω
.Lx00485_0:
 .quad .Lx00485_0_s
.Lx00485_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00484_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00484_n5_α
 xchain00484_n3_β:
 jmp proc_matchf_ω
.Lx00486_0:
 .quad .Lx00486_0_s
.Lx00486_0_s:
 .string "match(\"abc\")"
# IR_GEN_SCAN
 xchain00484_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00484_n6_α
 xchain00484_n4_β:
 jmp proc_matchf_ω
# IR_RETURN
 xchain00484_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_matchf_γ
# IR_LIT_INTEGER
 xchain00484_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00487_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00484_n7_α
 xchain00484_n6_β:
 jmp xchain00484_n9_α
.Lx00487_0:
 .quad 1
# IR_VAR
 xchain00484_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00484_n8_α
 xchain00484_n7_β:
 jmp xchain00484_n9_α
# IR_TO
 xchain00484_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00488_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00484_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00484_n10_α
 xchain00484_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00488_0
# IR_GEN_SCAN
 xchain00484_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_matchf_ω
 xchain00484_n9_β:
 jmp proc_matchf_ω
# IR_LIT_STRING
 xchain00484_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00489_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00484_n11_α
 xchain00484_n10_β:
 jmp xchain00484_n8_β
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00484_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00490_239
 add rsp, 16
 jmp xchain00484_n8_β
.Lx00490_239:
 mov rdi, qword ptr [rip + .Lx00490_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00490_240
 add rsp, 16
 jmp xchain00484_n8_β
.Lx00490_240:
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 216], rax
 jmp xchain00484_n8_β
 xchain00484_n11_β:
 add rsp, 16
 jmp xchain00484_n8_β
.Lx00490_0:
 .quad .Lx00490_0_s
.Lx00490_0_s:
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
 xchain00491_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00491_n1_α
 xchain00491_n0_β:
 jmp xchain00491_n2_α
# IR_UNOP
 xchain00491_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00491_n2_α
 cmp eax, 0
 jne xchain00491_n2_α
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain00491_n3_α
 xchain00491_n1_β:
 jmp xchain00491_n2_α
# IR_LIT_STRING
 xchain00491_n2_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00491_n4_α
 xchain00491_n2_β:
 jmp proc_tabmat_ω
.Lx00492_0:
 .quad .Lx00492_0_s
.Lx00492_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00491_n3_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00493_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00491_n5_α
 xchain00491_n3_β:
 jmp proc_tabmat_ω
.Lx00493_0:
 .quad .Lx00493_0_s
.Lx00493_0_s:
 .string "s1 ? =s2"
# IR_GEN_SCAN
 xchain00491_n4_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00491_n6_α
 xchain00491_n4_β:
 jmp proc_tabmat_ω
# IR_RETURN
 xchain00491_n5_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabmat_γ
# IR_LIT_INTEGER
 xchain00491_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00494_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00491_n7_α
 xchain00491_n6_β:
 jmp xchain00491_n9_α
.Lx00494_0:
 .quad 1
# IR_VAR
 xchain00491_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00491_n8_α
 xchain00491_n7_β:
 jmp xchain00491_n9_α
# IR_TO
 xchain00491_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00495_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00491_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00491_n10_α
 xchain00491_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00495_0
# IR_GEN_SCAN
 xchain00491_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabmat_ω
 xchain00491_n9_β:
 jmp proc_tabmat_ω
# IR_LIT_STRING
 xchain00491_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00491_n11_α
 xchain00491_n10_β:
 jmp xchain00491_n8_β
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00491_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00497_239
 add rsp, 16
 jmp xchain00491_n8_β
.Lx00497_239:
 mov rdi, qword ptr [rip + .Lx00497_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00497_240
 add rsp, 16
 jmp xchain00491_n8_β
.Lx00497_240:
 mov qword ptr [rbp + 240], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 248], rax
 jmp xchain00491_n12_α
 xchain00491_n11_β:
 add rsp, 16
 jmp xchain00491_n8_β
.Lx00497_0:
 .quad .Lx00497_0_s
.Lx00497_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00491_n12_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 248]
 cmp rax, 1
 jge .Lx00498_0
 add rax, r15
 add rax, 1
.Lx00498_0:
 cmp rax, 1
 jge .Lx00498_239
 add rsp, 16
 jmp xchain00491_n8_β
.Lx00498_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00498_240
 add rsp, 16
 jmp xchain00491_n8_β
.Lx00498_240:
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
 jmp xchain00491_n8_β
 xchain00491_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00491_n8_β
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
 xchain00499_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00499_n1_α
 xchain00499_n0_β:
 jmp xchain00499_n2_α
# IR_UNOP
 xchain00499_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00499_n2_α
 cmp eax, 0
 jne xchain00499_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00499_n3_α
 xchain00499_n1_β:
 jmp xchain00499_n2_α
# IR_LIT_STRING
 xchain00499_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00499_n4_α
 xchain00499_n2_β:
 jmp proc_posf_ω
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00499_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00501_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00499_n5_α
 xchain00499_n3_β:
 jmp proc_posf_ω
.Lx00501_0:
 .quad .Lx00501_0_s
.Lx00501_0_s:
 .string "pos(-1)"
# IR_GEN_SCAN
 xchain00499_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00499_n6_α
 xchain00499_n4_β:
 jmp proc_posf_ω
# IR_RETURN
 xchain00499_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_posf_γ
# IR_LIT_INTEGER
 xchain00499_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00502_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00499_n7_α
 xchain00499_n6_β:
 jmp xchain00499_n9_α
.Lx00502_0:
 .quad 1
# IR_VAR
 xchain00499_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00499_n8_α
 xchain00499_n7_β:
 jmp xchain00499_n9_α
# IR_TO
 xchain00499_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00503_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00499_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00499_n10_α
 xchain00499_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00503_0
# IR_GEN_SCAN
 xchain00499_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_posf_ω
 xchain00499_n9_β:
 jmp proc_posf_ω
# IR_LIT_INTEGER
 xchain00499_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00504_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00499_n11_α
 xchain00499_n10_β:
 jmp xchain00499_n8_β
.Lx00504_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00499_n11_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00505_0
 add rax, r15
 add rax, 1
.Lx00505_0:
 cmp rax, 1
 jl xchain00499_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00499_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00499_n8_β
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00499_n8_β
 xchain00499_n11_β:
 jmp xchain00499_n8_β
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
 xchain00506_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00506_n1_α
 xchain00506_n0_β:
 jmp xchain00506_n2_α
# IR_UNOP
 xchain00506_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00506_n2_α
 cmp eax, 0
 jne xchain00506_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00506_n3_α
 xchain00506_n1_β:
 jmp xchain00506_n2_α
# IR_LIT_STRING
 xchain00506_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00506_n4_α
 xchain00506_n2_β:
 jmp proc_anyf_ω
.Lx00507_0:
 .quad .Lx00507_0_s
.Lx00507_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00506_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00508_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00506_n5_α
 xchain00506_n3_β:
 jmp proc_anyf_ω
.Lx00508_0:
 .quad .Lx00508_0_s
.Lx00508_0_s:
 .string "any('aeiou')"
# IR_GEN_SCAN
 xchain00506_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00506_n6_α
 xchain00506_n4_β:
 jmp proc_anyf_ω
# IR_RETURN
 xchain00506_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_anyf_γ
# IR_LIT_INTEGER
 xchain00506_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00506_n7_α
 xchain00506_n6_β:
 jmp xchain00506_n9_α
.Lx00509_0:
 .quad 1
# IR_VAR
 xchain00506_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00506_n8_α
 xchain00506_n7_β:
 jmp xchain00506_n9_α
# IR_TO
 xchain00506_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00510_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00506_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00506_n10_α
 xchain00506_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00510_0
# IR_GEN_SCAN
 xchain00506_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_anyf_ω
 xchain00506_n9_β:
 jmp proc_anyf_ω
# IR_LIT_CHARSET
 xchain00506_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00511_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00506_n11_α
 xchain00506_n10_β:
 jmp xchain00506_n8_β
.Lx00511_0:
 .quad .Lx00511_0_s
.Lx00511_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00506_n11_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00506_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00512_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00506_n8_β
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 216], rax
 jmp xchain00506_n8_β
 xchain00506_n11_β:
 jmp xchain00506_n8_β
.Lx00512_0:
 .quad .Lx00512_0_s
.Lx00512_0_s:
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
 xchain00513_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00513_n1_α
 xchain00513_n0_β:
 jmp xchain00513_n2_α
# IR_UNOP
 xchain00513_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00513_n2_α
 cmp eax, 0
 jne xchain00513_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00513_n3_α
 xchain00513_n1_β:
 jmp xchain00513_n2_α
# IR_LIT_STRING
 xchain00513_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00513_n4_α
 xchain00513_n2_β:
 jmp proc_manyf_ω
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00513_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00515_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00513_n5_α
 xchain00513_n3_β:
 jmp proc_manyf_ω
.Lx00515_0:
 .quad .Lx00515_0_s
.Lx00515_0_s:
 .string "many(&lcase)"
# IR_GEN_SCAN
 xchain00513_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00513_n6_α
 xchain00513_n4_β:
 jmp proc_manyf_ω
# IR_RETURN
 xchain00513_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_manyf_γ
# IR_LIT_INTEGER
 xchain00513_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00516_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00513_n7_α
 xchain00513_n6_β:
 jmp xchain00513_n9_α
.Lx00516_0:
 .quad 1
# IR_VAR
 xchain00513_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00513_n8_α
 xchain00513_n7_β:
 jmp xchain00513_n9_α
# IR_TO
 xchain00513_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00517_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00513_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00513_n10_α
 xchain00513_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00517_0
# IR_GEN_SCAN
 xchain00513_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_manyf_ω
 xchain00513_n9_β:
 jmp proc_manyf_ω
# IR_LIT_CHARSET
 xchain00513_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00518_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00513_n11_α
 xchain00513_n10_β:
 jmp xchain00513_n8_β
.Lx00518_0:
 .quad .Lx00518_0_s
.Lx00518_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00513_n11_α:
 mov eax, r14d
.Lx00519_0:
 cmp eax, r15d
 jge .Lx00519_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00519_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00519_1
 add eax, 1
 jmp .Lx00519_0
.Lx00519_1:
 cmp eax, r14d
 je xchain00513_n8_β
 mov qword ptr [rbp + 208], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 216], rcx
 jmp xchain00513_n8_β
 xchain00513_n11_β:
 jmp xchain00513_n8_β
.Lx00519_2:
 .quad .Lx00519_2_s
.Lx00519_2_s:
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
 xchain00520_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00520_n1_α
 xchain00520_n0_β:
 jmp xchain00520_n2_α
# IR_UNOP
 xchain00520_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00520_n2_α
 cmp eax, 0
 jne xchain00520_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00520_n3_α
 xchain00520_n1_β:
 jmp xchain00520_n2_α
# IR_LIT_STRING
 xchain00520_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00520_n4_α
 xchain00520_n2_β:
 jmp proc_uptof_ω
.Lx00521_0:
 .quad .Lx00521_0_s
.Lx00521_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00520_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00520_n5_α
 xchain00520_n3_β:
 jmp proc_uptof_ω
.Lx00522_0:
 .quad .Lx00522_0_s
.Lx00522_0_s:
 .string "upto('d')"
# IR_GEN_SCAN
 xchain00520_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00520_n6_α
 xchain00520_n4_β:
 jmp proc_uptof_ω
# IR_RETURN
 xchain00520_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uptof_γ
# IR_LIT_INTEGER
 xchain00520_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00523_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00520_n7_α
 xchain00520_n6_β:
 jmp xchain00520_n9_α
.Lx00523_0:
 .quad 1
# IR_VAR
 xchain00520_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00520_n8_α
 xchain00520_n7_β:
 jmp xchain00520_n9_α
# IR_TO
 xchain00520_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00524_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00520_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00520_n10_α
 xchain00520_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00524_0
# IR_GEN_SCAN
 xchain00520_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_uptof_ω
 xchain00520_n9_β:
 jmp proc_uptof_ω
# IR_LIT_CHARSET
 xchain00520_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00525_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00520_n11_α
 xchain00520_n10_β:
 jmp xchain00520_n8_β
.Lx00525_0:
 .quad .Lx00525_0_s
.Lx00525_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00520_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00526_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00520_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00526_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00526_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00520_n8_β
.Lx00526_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00526_0
 xchain00520_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00526_0
.Lx00526_2:
 .quad .Lx00526_2_s
.Lx00526_2_s:
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
 xchain00527_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00527_n1_α
 xchain00527_n0_β:
 jmp xchain00527_n2_α
# IR_UNOP
 xchain00527_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00527_n2_α
 cmp eax, 0
 jne xchain00527_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00527_n3_α
 xchain00527_n1_β:
 jmp xchain00527_n2_α
# IR_LIT_STRING
 xchain00527_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00527_n4_α
 xchain00527_n2_β:
 jmp proc_findf_ω
.Lx00528_0:
 .quad .Lx00528_0_s
.Lx00528_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00527_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00527_n5_α
 xchain00527_n3_β:
 jmp proc_findf_ω
.Lx00529_0:
 .quad .Lx00529_0_s
.Lx00529_0_s:
 .string "find(\"de\")"
# IR_GEN_SCAN
 xchain00527_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00527_n6_α
 xchain00527_n4_β:
 jmp proc_findf_ω
# IR_RETURN
 xchain00527_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_findf_γ
# IR_LIT_INTEGER
 xchain00527_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00530_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00527_n7_α
 xchain00527_n6_β:
 jmp xchain00527_n9_α
.Lx00530_0:
 .quad 1
# IR_VAR
 xchain00527_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00527_n8_α
 xchain00527_n7_β:
 jmp xchain00527_n9_α
# IR_TO
 xchain00527_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00531_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00527_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00527_n10_α
 xchain00527_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00531_0
# IR_GEN_SCAN
 xchain00527_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_findf_ω
 xchain00527_n9_β:
 jmp proc_findf_ω
# IR_LIT_STRING
 xchain00527_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00527_n11_α
 xchain00527_n10_β:
 jmp xchain00527_n8_β
.Lx00532_0:
 .quad .Lx00532_0_s
.Lx00532_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00527_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00533_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00527_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00533_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00533_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00527_n8_β
.Lx00533_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00533_0
 xchain00527_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00533_0
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
 xchain00534_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00534_n1_α
 xchain00534_n0_β:
 jmp xchain00534_n2_α
# IR_UNOP
 xchain00534_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00534_n2_α
 cmp eax, 0
 jne xchain00534_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00534_n3_α
 xchain00534_n1_β:
 jmp xchain00534_n2_α
# IR_LIT_STRING
 xchain00534_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00534_n4_α
 xchain00534_n2_β:
 jmp proc_balf_ω
.Lx00535_0:
 .quad .Lx00535_0_s
.Lx00535_0_s:
 .string "(a*b)+(c/d)"
# IR_LIT_STRING
 xchain00534_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00536_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00534_n5_α
 xchain00534_n3_β:
 jmp proc_balf_ω
.Lx00536_0:
 .quad .Lx00536_0_s
.Lx00536_0_s:
 .string "bal('+')"
# IR_GEN_SCAN
 xchain00534_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00534_n6_α
 xchain00534_n4_β:
 jmp proc_balf_ω
# IR_RETURN
 xchain00534_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_balf_γ
# IR_LIT_INTEGER
 xchain00534_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00537_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00534_n7_α
 xchain00534_n6_β:
 jmp xchain00534_n9_α
.Lx00537_0:
 .quad 1
# IR_VAR
 xchain00534_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00534_n8_α
 xchain00534_n7_β:
 jmp xchain00534_n9_α
# IR_TO
 xchain00534_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00538_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00534_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00534_n10_α
 xchain00534_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00538_0
# IR_GEN_SCAN
 xchain00534_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_balf_ω
 xchain00534_n9_β:
 jmp proc_balf_ω
# IR_LIT_CHARSET
 xchain00534_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00534_n11_α
 xchain00534_n10_β:
 jmp xchain00534_n8_β
.Lx00539_0:
 .quad .Lx00539_0_s
.Lx00539_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00534_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00540_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00534_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00540_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00540_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00534_n8_β
.Lx00540_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00540_0
 xchain00534_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00540_0
.Lx00540_2:
 .quad .Lx00540_2_s
.Lx00540_2_s:
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
 xchain00541_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00541_n1_α
 xchain00541_n0_β:
 jmp xchain00541_n2_α
# IR_UNOP
 xchain00541_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00541_n2_α
 cmp eax, 0
 jne xchain00541_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00541_n3_α
 xchain00541_n1_β:
 jmp xchain00541_n2_α
# IR_LIT_INTEGER
 xchain00541_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00541_n4_α
 xchain00541_n2_β:
 jmp proc_cssize_ω
.Lx00542_0:
 .quad 1
# IR_LIT_STRING
 xchain00541_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00543_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00541_n5_α
 xchain00541_n3_β:
 jmp proc_cssize_ω
.Lx00543_0:
 .quad .Lx00543_0_s
.Lx00543_0_s:
 .string "*&digits"
# IR_VAR
 xchain00541_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00541_n6_α
 xchain00541_n4_β:
 jmp proc_cssize_ω
# IR_RETURN
 xchain00541_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cssize_γ
# IR_TO
 xchain00541_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00544_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00541_n7_α
 xchain00541_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00544_0
# IR_LIT_CHARSET
 xchain00541_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00545_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00541_n8_α
 xchain00541_n7_β:
 jmp xchain00541_n6_β
.Lx00545_0:
 .quad .Lx00545_0_s
.Lx00545_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00541_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00541_n6_β
 xchain00541_n8_β:
 jmp xchain00541_n6_β
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
 xchain00546_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00546_n1_α
 xchain00546_n0_β:
 jmp xchain00546_n2_α
# IR_UNOP
 xchain00546_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00546_n2_α
 cmp eax, 0
 jne xchain00546_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00546_n3_α
 xchain00546_n1_β:
 jmp xchain00546_n2_α
# IR_LIT_INTEGER
 xchain00546_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00547_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00546_n4_α
 xchain00546_n2_β:
 jmp proc_cscompl_ω
.Lx00547_0:
 .quad 1
# IR_LIT_STRING
 xchain00546_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00546_n5_α
 xchain00546_n3_β:
 jmp proc_cscompl_ω
.Lx00548_0:
 .quad .Lx00548_0_s
.Lx00548_0_s:
 .string "~&digits"
# IR_VAR
 xchain00546_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00546_n6_α
 xchain00546_n4_β:
 jmp proc_cscompl_ω
# IR_RETURN
 xchain00546_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cscompl_γ
# IR_TO
 xchain00546_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00549_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00546_n7_α
 xchain00546_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00549_0
# IR_LIT_CHARSET
 xchain00546_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00550_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00546_n8_α
 xchain00546_n7_β:
 jmp xchain00546_n6_β
.Lx00550_0:
 .quad .Lx00550_0_s
.Lx00550_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00546_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00546_n6_β
 xchain00546_n8_β:
 jmp xchain00546_n6_β
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
 xchain00551_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00551_n1_α
 xchain00551_n0_β:
 jmp xchain00551_n2_α
# IR_UNOP
 xchain00551_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00551_n2_α
 cmp eax, 0
 jne xchain00551_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00551_n3_α
 xchain00551_n1_β:
 jmp xchain00551_n2_α
# IR_LIT_INTEGER
 xchain00551_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00551_n4_α
 xchain00551_n2_β:
 jmp proc_lcreate_ω
.Lx00552_0:
 .quad 1
# IR_LIT_STRING
 xchain00551_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00551_n5_α
 xchain00551_n3_β:
 jmp proc_lcreate_ω
.Lx00553_0:
 .quad .Lx00553_0_s
.Lx00553_0_s:
 .string "list(5,0)"
# IR_VAR
 xchain00551_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00551_n6_α
 xchain00551_n4_β:
 jmp proc_lcreate_ω
# IR_RETURN
 xchain00551_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcreate_γ
# IR_TO
 xchain00551_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00554_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00551_n7_α
 xchain00551_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00554_0
# IR_LIT_INTEGER
 xchain00551_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00551_n8_α
 xchain00551_n7_β:
 jmp xchain00551_n6_β
.Lx00555_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00551_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00551_n9_α
 xchain00551_n8_β:
 jmp xchain00551_n6_β
.Lx00556_0:
 .quad 0
 xchain00551_n9_α:
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
  .Lrkfn1554: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1554]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00551_n6_β
 jmp xchain00551_n6_β
 xchain00551_n9_β:
 jmp xchain00551_n6_β
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
 xchain00557_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00557_n1_α
 xchain00557_n0_β:
 jmp xchain00557_n2_α
# IR_UNOP
 xchain00557_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00557_n2_α
 cmp eax, 0
 jne xchain00557_n2_α
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain00557_n3_α
 xchain00557_n1_β:
 jmp xchain00557_n2_α
# IR_LIT_INTEGER
 xchain00557_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00557_n4_α
 xchain00557_n2_β:
 jmp proc_lconst_ω
.Lx00558_0:
 .quad 1
# IR_LIT_STRING
 xchain00557_n3_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00559_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00557_n5_α
 xchain00557_n3_β:
 jmp proc_lconst_ω
.Lx00559_0:
 .quad .Lx00559_0_s
.Lx00559_0_s:
 .string "[1,2,3,4,5]"
# IR_VAR
 xchain00557_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00557_n6_α
 xchain00557_n4_β:
 jmp proc_lconst_ω
# IR_RETURN
 xchain00557_n5_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lconst_γ
# IR_TO
 xchain00557_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00560_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00557_n7_α
 xchain00557_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00560_0
# IR_LIT_INTEGER
 xchain00557_n7_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00557_n8_α
 xchain00557_n7_β:
 jmp xchain00557_n6_β
.Lx00561_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00557_n8_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00557_n9_α
 xchain00557_n8_β:
 jmp xchain00557_n6_β
.Lx00562_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00557_n9_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00563_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00557_n10_α
 xchain00557_n9_β:
 jmp xchain00557_n6_β
.Lx00563_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00557_n10_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00557_n11_α
 xchain00557_n10_β:
 jmp xchain00557_n6_β
.Lx00564_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00557_n11_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00565_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00557_n12_α
 xchain00557_n11_β:
 jmp xchain00557_n6_β
.Lx00565_0:
 .quad 5
# IR_MAKE_LIST
 xchain00557_n12_α:
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
 jmp xchain00557_n13_α
 xchain00557_n12_β:
 jmp xchain00557_n6_β
 xchain00557_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00557_n6_β
 xchain00557_n13_β:
 jmp xchain00557_n6_β
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
 xchain00566_n0_α:
 mov rdi, 1879052464
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00566_n1_α
 xchain00566_n0_β:
 jmp xchain00566_n3_α
# IR_NULLTEST_VAR
 xchain00566_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00566_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00566_n3_α
 cmp eax, 0
 jne xchain00566_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00566_n2_α
 xchain00566_n1_β:
 jmp xchain00566_n3_α
# IR_LIT_INTEGER
 xchain00566_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00567_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00566_n4_α
 xchain00566_n2_β:
 jmp xchain00566_n3_α
.Lx00567_0:
 .quad 1
# IR_VAR
 xchain00566_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00566_n5_α
 xchain00566_n3_β:
 jmp xchain00566_n6_α
# IR_ASSIGN_VAR
 xchain00566_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00566_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00566_n7_α
 xchain00566_n4_β:
 jmp xchain00566_n3_α
# IR_UNOP
 xchain00566_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00566_n6_α
 cmp eax, 0
 jne xchain00566_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00566_n8_α
 xchain00566_n5_β:
 jmp xchain00566_n6_α
# IR_LIT_INTEGER
 xchain00566_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00566_n9_α
 xchain00566_n6_β:
 jmp proc_lcopy_ω
.Lx00568_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00566_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00566_n10_α
 xchain00566_n7_β:
 jmp xchain00566_n3_α
.Lx00569_0:
 .quad 1
# IR_LIT_STRING
 xchain00566_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00566_n11_α
 xchain00566_n8_β:
 jmp proc_lcopy_ω
.Lx00570_0:
 .quad .Lx00570_0_s
.Lx00570_0_s:
 .string "copy(L)"
# IR_VAR
 xchain00566_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00566_n12_α
 xchain00566_n9_β:
 jmp proc_lcopy_ω
# IR_LIT_INTEGER
 xchain00566_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00566_n13_α
 xchain00566_n10_β:
 jmp xchain00566_n3_α
.Lx00571_0:
 .quad 2
# IR_RETURN
 xchain00566_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcopy_γ
# IR_TO
 xchain00566_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00572_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00566_n14_α
 xchain00566_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00572_0
# IR_LIT_INTEGER
 xchain00566_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00566_n15_α
 xchain00566_n13_β:
 jmp xchain00566_n3_α
.Lx00573_0:
 .quad 3
# IR_VAR
 xchain00566_n14_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00566_n16_α
 xchain00566_n14_β:
 jmp xchain00566_n12_β
# IR_LIT_INTEGER
 xchain00566_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00566_n17_α
 xchain00566_n15_β:
 jmp xchain00566_n3_α
.Lx00574_0:
 .quad 4
 xchain00566_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1596: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1596]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00566_n12_β
 jmp xchain00566_n12_β
 xchain00566_n16_β:
 jmp xchain00566_n12_β
# IR_LIT_INTEGER
 xchain00566_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00575_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00566_n18_α
 xchain00566_n17_β:
 jmp xchain00566_n3_α
.Lx00575_0:
 .quad 5
# IR_MAKE_LIST
 xchain00566_n18_α:
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
 jmp xchain00566_n19_α
 xchain00566_n18_β:
 jmp xchain00566_n3_α
# IR_ASSIGN gva
 xchain00566_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00566_n20_α
 xchain00566_n19_β:
 jmp xchain00566_n3_α
# IR_MOVE_LABEL
 xchain00566_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00566_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00566_n3_α
 xchain00566_n20_β:
 jmp xchain00566_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00566_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00566_n21_β:
 jmp xchain00566_n3_α
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
 xchain00576_n0_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00576_n1_α
 xchain00576_n0_β:
 jmp xchain00576_n3_α
# IR_NULLTEST_VAR
 xchain00576_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00576_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00576_n3_α
 cmp eax, 0
 jne xchain00576_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00576_n2_α
 xchain00576_n1_β:
 jmp xchain00576_n3_α
# IR_LIT_INTEGER
 xchain00576_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00576_n4_α
 xchain00576_n2_β:
 jmp xchain00576_n3_α
.Lx00577_0:
 .quad 1
# IR_VAR
 xchain00576_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00576_n5_α
 xchain00576_n3_β:
 jmp xchain00576_n6_α
# IR_ASSIGN_VAR
 xchain00576_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00576_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00576_n7_α
 xchain00576_n4_β:
 jmp xchain00576_n3_α
# IR_UNOP
 xchain00576_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00576_n6_α
 cmp eax, 0
 jne xchain00576_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00576_n8_α
 xchain00576_n5_β:
 jmp xchain00576_n6_α
# IR_LIT_INTEGER
 xchain00576_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00576_n9_α
 xchain00576_n6_β:
 jmp proc_lsort_ω
.Lx00578_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00576_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00576_n10_α
 xchain00576_n7_β:
 jmp xchain00576_n3_α
.Lx00579_0:
 .quad 2
# IR_LIT_STRING
 xchain00576_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00580_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00576_n11_α
 xchain00576_n8_β:
 jmp proc_lsort_ω
.Lx00580_0:
 .quad .Lx00580_0_s
.Lx00580_0_s:
 .string "sort(L)"
# IR_VAR
 xchain00576_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00576_n12_α
 xchain00576_n9_β:
 jmp proc_lsort_ω
# IR_LIT_INTEGER
 xchain00576_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00581_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00576_n13_α
 xchain00576_n10_β:
 jmp xchain00576_n3_α
.Lx00581_0:
 .quad 7
# IR_RETURN
 xchain00576_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsort_γ
# IR_TO
 xchain00576_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00582_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00576_n14_α
 xchain00576_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00582_0
# IR_LIT_INTEGER
 xchain00576_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00576_n15_α
 xchain00576_n13_β:
 jmp xchain00576_n3_α
.Lx00583_0:
 .quad 1
# IR_VAR
 xchain00576_n14_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00576_n16_α
 xchain00576_n14_β:
 jmp xchain00576_n12_β
# IR_LIT_INTEGER
 xchain00576_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00576_n17_α
 xchain00576_n15_β:
 jmp xchain00576_n3_α
.Lx00584_0:
 .quad 8
 xchain00576_n16_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1627: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1627]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00576_n12_β
 jmp xchain00576_n12_β
 xchain00576_n16_β:
 jmp xchain00576_n12_β
# IR_LIT_INTEGER
 xchain00576_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00585_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00576_n18_α
 xchain00576_n17_β:
 jmp xchain00576_n3_α
.Lx00585_0:
 .quad 3
# IR_MAKE_LIST
 xchain00576_n18_α:
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
 jmp xchain00576_n19_α
 xchain00576_n18_β:
 jmp xchain00576_n3_α
# IR_ASSIGN gva
 xchain00576_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00576_n20_α
 xchain00576_n19_β:
 jmp xchain00576_n3_α
# IR_MOVE_LABEL
 xchain00576_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00576_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00576_n3_α
 xchain00576_n20_β:
 jmp xchain00576_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00576_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00576_n21_β:
 jmp xchain00576_n3_α
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
 xchain00586_n0_α:
 mov rdi, 1879052528
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00586_n1_α
 xchain00586_n0_β:
 jmp xchain00586_n3_α
# IR_NULLTEST_VAR
 xchain00586_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00586_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00586_n3_α
 cmp eax, 0
 jne xchain00586_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00586_n2_α
 xchain00586_n1_β:
 jmp xchain00586_n3_α
# IR_LIT_INTEGER
 xchain00586_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00587_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00586_n4_α
 xchain00586_n2_β:
 jmp xchain00586_n3_α
.Lx00587_0:
 .quad 1
# IR_VAR
 xchain00586_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00586_n5_α
 xchain00586_n3_β:
 jmp xchain00586_n6_α
# IR_ASSIGN_VAR
 xchain00586_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00586_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00586_n7_α
 xchain00586_n4_β:
 jmp xchain00586_n3_α
# IR_UNOP
 xchain00586_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00586_n6_α
 cmp eax, 0
 jne xchain00586_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00586_n8_α
 xchain00586_n5_β:
 jmp xchain00586_n6_α
# IR_LIT_INTEGER
 xchain00586_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00586_n9_α
 xchain00586_n6_β:
 jmp proc_lsize_ω
.Lx00588_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00586_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00589_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00586_n10_α
 xchain00586_n7_β:
 jmp xchain00586_n3_α
.Lx00589_0:
 .quad 1
# IR_LIT_STRING
 xchain00586_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00590_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00586_n11_α
 xchain00586_n8_β:
 jmp proc_lsize_ω
.Lx00590_0:
 .quad .Lx00590_0_s
.Lx00590_0_s:
 .string "*L"
# IR_VAR
 xchain00586_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00586_n12_α
 xchain00586_n9_β:
 jmp proc_lsize_ω
# IR_LIT_INTEGER
 xchain00586_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00586_n13_α
 xchain00586_n10_β:
 jmp xchain00586_n3_α
.Lx00591_0:
 .quad 2
# IR_RETURN
 xchain00586_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsize_γ
# IR_TO
 xchain00586_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00592_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00586_n14_α
 xchain00586_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00592_0
# IR_LIT_INTEGER
 xchain00586_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00586_n15_α
 xchain00586_n13_β:
 jmp xchain00586_n3_α
.Lx00593_0:
 .quad 3
# IR_VAR
 xchain00586_n14_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00586_n16_α
 xchain00586_n14_β:
 jmp xchain00586_n12_β
# IR_LIT_INTEGER
 xchain00586_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00586_n17_α
 xchain00586_n15_β:
 jmp xchain00586_n3_α
.Lx00594_0:
 .quad 4
# IR_UNOP
 xchain00586_n16_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00586_n12_β
 xchain00586_n16_β:
 jmp xchain00586_n12_β
# IR_LIT_INTEGER
 xchain00586_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00595_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00586_n18_α
 xchain00586_n17_β:
 jmp xchain00586_n3_α
.Lx00595_0:
 .quad 5
# IR_MAKE_LIST
 xchain00586_n18_α:
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
 jmp xchain00586_n19_α
 xchain00586_n18_β:
 jmp xchain00586_n3_α
# IR_ASSIGN gva
 xchain00586_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00586_n20_α
 xchain00586_n19_β:
 jmp xchain00586_n3_α
# IR_MOVE_LABEL
 xchain00586_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00586_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00586_n3_α
 xchain00586_n20_β:
 jmp xchain00586_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00586_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00586_n21_β:
 jmp xchain00586_n3_α
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
 xchain00596_n0_α:
 mov rdi, 1879052560
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00596_n1_α
 xchain00596_n0_β:
 jmp xchain00596_n3_α
# IR_NULLTEST_VAR
 xchain00596_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00596_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00596_n3_α
 cmp eax, 0
 jne xchain00596_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00596_n2_α
 xchain00596_n1_β:
 jmp xchain00596_n3_α
# IR_LIT_INTEGER
 xchain00596_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00596_n4_α
 xchain00596_n2_β:
 jmp xchain00596_n3_α
.Lx00597_0:
 .quad 1
# IR_VAR
 xchain00596_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00596_n5_α
 xchain00596_n3_β:
 jmp xchain00596_n6_α
# IR_ASSIGN_VAR
 xchain00596_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00596_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00596_n7_α
 xchain00596_n4_β:
 jmp xchain00596_n3_α
# IR_UNOP
 xchain00596_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00596_n6_α
 cmp eax, 0
 jne xchain00596_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00596_n8_α
 xchain00596_n5_β:
 jmp xchain00596_n6_α
# IR_LIT_INTEGER
 xchain00596_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00598_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00596_n9_α
 xchain00596_n6_β:
 jmp proc_lpick_ω
.Lx00598_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00596_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00599_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00596_n10_α
 xchain00596_n7_β:
 jmp xchain00596_n3_α
.Lx00599_0:
 .quad 1
# IR_LIT_STRING
 xchain00596_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00596_n11_α
 xchain00596_n8_β:
 jmp proc_lpick_ω
.Lx00600_0:
 .quad .Lx00600_0_s
.Lx00600_0_s:
 .string "?L"
# IR_VAR
 xchain00596_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00596_n12_α
 xchain00596_n9_β:
 jmp proc_lpick_ω
# IR_LIT_INTEGER
 xchain00596_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00596_n13_α
 xchain00596_n10_β:
 jmp xchain00596_n3_α
.Lx00601_0:
 .quad 2
# IR_RETURN
 xchain00596_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lpick_γ
# IR_TO
 xchain00596_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00602_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00596_n14_α
 xchain00596_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00602_0
# IR_LIT_INTEGER
 xchain00596_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00596_n15_α
 xchain00596_n13_β:
 jmp xchain00596_n3_α
.Lx00603_0:
 .quad 3
# IR_VAR_REF
 xchain00596_n14_α:
 mov rdi, 1879052544
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00596_n16_α
 xchain00596_n14_β:
 jmp xchain00596_n12_β
# IR_LIT_INTEGER
 xchain00596_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00596_n17_α
 xchain00596_n15_β:
 jmp xchain00596_n3_α
.Lx00604_0:
 .quad 4
# IR_RANDOM
 xchain00596_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00596_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00596_n18_α
 xchain00596_n16_β:
 jmp xchain00596_n12_β
# IR_LIT_INTEGER
 xchain00596_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00605_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00596_n19_α
 xchain00596_n17_β:
 jmp xchain00596_n3_α
.Lx00605_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00596_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00596_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00596_n12_β
 xchain00596_n18_β:
 jmp xchain00596_n12_β
# IR_MAKE_LIST
 xchain00596_n19_α:
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
 jmp xchain00596_n20_α
 xchain00596_n19_β:
 jmp xchain00596_n3_α
# IR_ASSIGN gva
 xchain00596_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00596_n21_α
 xchain00596_n20_β:
 jmp xchain00596_n3_α
# IR_MOVE_LABEL
 xchain00596_n21_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00596_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00596_n3_α
 xchain00596_n21_β:
 jmp xchain00596_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00596_n22_α:
 jmp qword ptr [rbp + 336]
 xchain00596_n22_β:
 jmp xchain00596_n3_α
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
 xchain00606_n0_α:
 mov rdi, 1879052592
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00606_n1_α
 xchain00606_n0_β:
 jmp xchain00606_n3_α
# IR_NULLTEST_VAR
 xchain00606_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00606_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00606_n3_α
 cmp eax, 0
 jne xchain00606_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00606_n2_α
 xchain00606_n1_β:
 jmp xchain00606_n3_α
# IR_LIT_INTEGER
 xchain00606_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00606_n4_α
 xchain00606_n2_β:
 jmp xchain00606_n3_α
.Lx00607_0:
 .quad 1
# IR_VAR
 xchain00606_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00606_n5_α
 xchain00606_n3_β:
 jmp xchain00606_n6_α
# IR_ASSIGN_VAR
 xchain00606_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00606_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00606_n7_α
 xchain00606_n4_β:
 jmp xchain00606_n3_α
# IR_UNOP
 xchain00606_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00606_n6_α
 cmp eax, 0
 jne xchain00606_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00606_n8_α
 xchain00606_n5_β:
 jmp xchain00606_n6_α
# IR_LIT_INTEGER
 xchain00606_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00606_n9_α
 xchain00606_n6_β:
 jmp proc_lsubscr_ω
.Lx00608_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00606_n7_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00606_n10_α
 xchain00606_n7_β:
 jmp xchain00606_n3_α
.Lx00609_0:
 .quad 1
# IR_LIT_STRING
 xchain00606_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00606_n11_α
 xchain00606_n8_β:
 jmp proc_lsubscr_ω
.Lx00610_0:
 .quad .Lx00610_0_s
.Lx00610_0_s:
 .string "L[3]"
# IR_VAR
 xchain00606_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00606_n12_α
 xchain00606_n9_β:
 jmp proc_lsubscr_ω
# IR_LIT_INTEGER
 xchain00606_n10_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00611_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00606_n13_α
 xchain00606_n10_β:
 jmp xchain00606_n3_α
.Lx00611_0:
 .quad 2
# IR_RETURN
 xchain00606_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsubscr_γ
# IR_TO
 xchain00606_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00612_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00606_n14_α
 xchain00606_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00612_0
# IR_LIT_INTEGER
 xchain00606_n13_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00606_n15_α
 xchain00606_n13_β:
 jmp xchain00606_n3_α
.Lx00613_0:
 .quad 3
# IR_VAR_REF
 xchain00606_n14_α:
 mov rdi, 1879052576
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00606_n16_α
 xchain00606_n14_β:
 jmp xchain00606_n12_β
# IR_LIT_INTEGER
 xchain00606_n15_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00606_n17_α
 xchain00606_n15_β:
 jmp xchain00606_n3_α
.Lx00614_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00606_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00615_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00606_n18_α
 xchain00606_n16_β:
 jmp xchain00606_n12_β
.Lx00615_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00606_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00606_n19_α
 xchain00606_n17_β:
 jmp xchain00606_n3_α
.Lx00616_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00606_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00606_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00606_n20_α
 xchain00606_n18_β:
 jmp xchain00606_n12_β
# IR_MAKE_LIST
 xchain00606_n19_α:
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
 jmp xchain00606_n21_α
 xchain00606_n19_β:
 jmp xchain00606_n3_α
# IR_DEREF variable -> value
 xchain00606_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00606_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00606_n12_β
 xchain00606_n20_β:
 jmp xchain00606_n12_β
# IR_ASSIGN gva
 xchain00606_n21_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00606_n22_α
 xchain00606_n21_β:
 jmp xchain00606_n3_α
# IR_MOVE_LABEL
 xchain00606_n22_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00606_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00606_n3_α
 xchain00606_n22_β:
 jmp xchain00606_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00606_n23_α:
 jmp qword ptr [rbp + 384]
 xchain00606_n23_β:
 jmp xchain00606_n3_α
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
 xchain00617_n0_α:
 mov rdi, 1879052624
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00617_n1_α
 xchain00617_n0_β:
 jmp xchain00617_n3_α
# IR_NULLTEST_VAR
 xchain00617_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00617_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00617_n3_α
 cmp eax, 0
 jne xchain00617_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00617_n2_α
 xchain00617_n1_β:
 jmp xchain00617_n3_α
# IR_LIT_INTEGER
 xchain00617_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00618_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00617_n4_α
 xchain00617_n2_β:
 jmp xchain00617_n3_α
.Lx00618_0:
 .quad 1
# IR_VAR
 xchain00617_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00617_n5_α
 xchain00617_n3_β:
 jmp xchain00617_n6_α
# IR_ASSIGN_VAR
 xchain00617_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00617_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00617_n7_α
 xchain00617_n4_β:
 jmp xchain00617_n3_α
# IR_UNOP
 xchain00617_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00617_n6_α
 cmp eax, 0
 jne xchain00617_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00617_n8_α
 xchain00617_n5_β:
 jmp xchain00617_n6_α
# IR_LIT_INTEGER
 xchain00617_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00617_n9_α
 xchain00617_n6_β:
 jmp proc_lbang_ω
.Lx00619_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00617_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00620_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00617_n10_α
 xchain00617_n7_β:
 jmp xchain00617_n3_α
.Lx00620_0:
 .quad 1
# IR_LIT_STRING
 xchain00617_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00617_n11_α
 xchain00617_n8_β:
 jmp proc_lbang_ω
.Lx00621_0:
 .quad .Lx00621_0_s
.Lx00621_0_s:
 .string "!L"
# IR_VAR
 xchain00617_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00617_n12_α
 xchain00617_n9_β:
 jmp proc_lbang_ω
# IR_LIT_INTEGER
 xchain00617_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00622_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00617_n13_α
 xchain00617_n10_β:
 jmp xchain00617_n3_α
.Lx00622_0:
 .quad 2
# IR_RETURN
 xchain00617_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lbang_γ
# IR_TO
 xchain00617_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00623_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00617_n14_α
 xchain00617_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00623_0
# IR_LIT_INTEGER
 xchain00617_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00617_n15_α
 xchain00617_n13_β:
 jmp xchain00617_n3_α
.Lx00624_0:
 .quad 3
# IR_VAR
 xchain00617_n14_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00617_n16_α
 xchain00617_n14_β:
 jmp xchain00617_n12_β
# IR_LIT_INTEGER
 xchain00617_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00617_n17_α
 xchain00617_n15_β:
 jmp xchain00617_n3_α
.Lx00625_0:
 .quad 4
# IR_LIST_BANG
 xchain00617_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00626_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00617_n12_β
 jmp xchain00617_n16_β
 xchain00617_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00626_0
# IR_LIT_INTEGER
 xchain00617_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00627_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00617_n18_α
 xchain00617_n17_β:
 jmp xchain00617_n3_α
.Lx00627_0:
 .quad 5
# IR_MAKE_LIST
 xchain00617_n18_α:
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
 jmp xchain00617_n19_α
 xchain00617_n18_β:
 jmp xchain00617_n3_α
# IR_ASSIGN gva
 xchain00617_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00617_n20_α
 xchain00617_n19_β:
 jmp xchain00617_n3_α
# IR_MOVE_LABEL
 xchain00617_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00617_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00617_n3_α
 xchain00617_n20_β:
 jmp xchain00617_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00617_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00617_n21_β:
 jmp xchain00617_n3_α
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
 xchain00628_n0_α:
 mov rdi, 1879052656
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00628_n1_α
 xchain00628_n0_β:
 jmp xchain00628_n3_α
# IR_NULLTEST_VAR
 xchain00628_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00628_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00628_n3_α
 cmp eax, 0
 jne xchain00628_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00628_n2_α
 xchain00628_n1_β:
 jmp xchain00628_n3_α
# IR_LIT_INTEGER
 xchain00628_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00629_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00628_n4_α
 xchain00628_n2_β:
 jmp xchain00628_n3_α
.Lx00629_0:
 .quad 1
# IR_VAR
 xchain00628_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00628_n5_α
 xchain00628_n3_β:
 jmp xchain00628_n6_α
# IR_ASSIGN_VAR
 xchain00628_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00628_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00628_n7_α
 xchain00628_n4_β:
 jmp xchain00628_n3_α
# IR_UNOP
 xchain00628_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00628_n6_α
 cmp eax, 0
 jne xchain00628_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00628_n8_α
 xchain00628_n5_β:
 jmp xchain00628_n6_α
# IR_LIT_INTEGER
 xchain00628_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00628_n9_α
 xchain00628_n6_β:
 jmp proc_put1get1_ω
.Lx00630_0:
 .quad 1
# IR_MAKE_LIST
 xchain00628_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00628_n10_α
 xchain00628_n7_β:
 jmp xchain00628_n3_α
# IR_LIT_STRING
 xchain00628_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00631_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00628_n11_α
 xchain00628_n8_β:
 jmp proc_put1get1_ω
.Lx00631_0:
 .quad .Lx00631_0_s
.Lx00631_0_s:
 .string "get(put(L,0))"
# IR_VAR
 xchain00628_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00628_n12_α
 xchain00628_n9_β:
 jmp proc_put1get1_ω
# IR_ASSIGN gva
 xchain00628_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00628_n13_α
 xchain00628_n10_β:
 jmp xchain00628_n3_α
# IR_RETURN
 xchain00628_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put1get1_γ
# IR_TO
 xchain00628_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00632_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00628_n14_α
 xchain00628_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00632_0
# IR_MOVE_LABEL
 xchain00628_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00628_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00628_n3_α
 xchain00628_n13_β:
 jmp xchain00628_n3_α
# IR_VAR
 xchain00628_n14_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00628_n16_α
 xchain00628_n14_β:
 jmp xchain00628_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00628_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00628_n15_β:
 jmp xchain00628_n3_α
# IR_LIT_INTEGER
 xchain00628_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00628_n17_α
 xchain00628_n16_β:
 jmp xchain00628_n12_β
.Lx00633_0:
 .quad 0
 xchain00628_n17_α:
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
  .Lrkfn1788: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1788]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00628_n12_β
 jmp xchain00628_n18_α
 xchain00628_n17_β:
 jmp xchain00628_n12_β
 xchain00628_n18_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1790: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1790]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00628_n12_β
 jmp xchain00628_n12_β
 xchain00628_n18_β:
 jmp xchain00628_n12_β
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
 xchain00634_n0_α:
 mov rdi, 1879052688
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00634_n1_α
 xchain00634_n0_β:
 jmp xchain00634_n3_α
# IR_NULLTEST_VAR
 xchain00634_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00634_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00634_n3_α
 cmp eax, 0
 jne xchain00634_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00634_n2_α
 xchain00634_n1_β:
 jmp xchain00634_n3_α
# IR_LIT_INTEGER
 xchain00634_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00634_n4_α
 xchain00634_n2_β:
 jmp xchain00634_n3_α
.Lx00635_0:
 .quad 1
# IR_VAR
 xchain00634_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00634_n5_α
 xchain00634_n3_β:
 jmp xchain00634_n6_α
# IR_ASSIGN_VAR
 xchain00634_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00634_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00634_n7_α
 xchain00634_n4_β:
 jmp xchain00634_n3_α
# IR_UNOP
 xchain00634_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00634_n6_α
 cmp eax, 0
 jne xchain00634_n6_α
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 jmp xchain00634_n8_α
 xchain00634_n5_β:
 jmp xchain00634_n6_α
# IR_LIT_INTEGER
 xchain00634_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00634_n9_α
 xchain00634_n6_β:
 jmp proc_put2get2_ω
.Lx00636_0:
 .quad 1
# IR_MAKE_LIST
 xchain00634_n7_α:
 lea rdi, [rbp + 672]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00634_n10_α
 xchain00634_n7_β:
 jmp xchain00634_n3_α
# IR_LIT_STRING
 xchain00634_n8_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00637_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00634_n11_α
 xchain00634_n8_β:
 jmp proc_put2get2_ω
.Lx00637_0:
 .quad .Lx00637_0_s
.Lx00637_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_VAR
 xchain00634_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00634_n12_α
 xchain00634_n9_β:
 jmp proc_put2get2_ω
# IR_ASSIGN gva
 xchain00634_n10_α:
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00634_n13_α
 xchain00634_n10_β:
 jmp xchain00634_n3_α
# IR_RETURN
 xchain00634_n11_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put2get2_γ
# IR_TO
 xchain00634_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00638_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00634_n14_α
 xchain00634_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00638_0
# IR_MOVE_LABEL
 xchain00634_n13_α:
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
 lea rax, [rip + xchain00634_n3_α]
 mov qword ptr [rbp + 624], rax
 jmp xchain00634_n3_α
 xchain00634_n13_β:
 jmp xchain00634_n3_α
# IR_VAR
 xchain00634_n14_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00634_n16_α
 xchain00634_n14_β:
 jmp xchain00634_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00634_n15_α:
 jmp qword ptr [rbp + 624]
 xchain00634_n15_β:
 jmp xchain00634_n3_α
# IR_LIT_INTEGER
 xchain00634_n16_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00634_n17_α
 xchain00634_n16_β:
 jmp xchain00634_n12_β
.Lx00639_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00634_n17_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00634_n18_α
 xchain00634_n17_β:
 jmp xchain00634_n12_β
.Lx00640_0:
 .quad 2
 xchain00634_n18_α:
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
  .Lrkfn1818: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1818]
 lea rsi, [rbp + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00634_n12_β
 jmp xchain00634_n19_α
 xchain00634_n18_β:
 jmp xchain00634_n12_β
# IR_VAR
 xchain00634_n19_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00634_n20_α
 xchain00634_n19_β:
 jmp xchain00634_n12_β
 xchain00634_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1821: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1821]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00634_n12_β
 jmp xchain00634_n21_α
 xchain00634_n20_β:
 jmp xchain00634_n12_β
# IR_VAR
 xchain00634_n21_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00634_n22_α
 xchain00634_n21_β:
 jmp xchain00634_n12_β
 xchain00634_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1824: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1824]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00634_n12_β
 jmp xchain00634_n23_α
 xchain00634_n22_β:
 jmp xchain00634_n12_β
 xchain00634_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00634_n12_β
xchain00634_n23_β:
 jmp xchain00634_n12_β
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
 xchain00641_n0_α:
 mov rdi, 1879052720
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00641_n1_α
 xchain00641_n0_β:
 jmp xchain00641_n3_α
# IR_NULLTEST_VAR
 xchain00641_n1_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 99
 je xchain00641_n3_α
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00641_n3_α
 cmp eax, 0
 jne xchain00641_n3_α
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 840], rax
 jmp xchain00641_n2_α
 xchain00641_n1_β:
 jmp xchain00641_n3_α
# IR_LIT_INTEGER
 xchain00641_n2_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00641_n4_α
 xchain00641_n2_β:
 jmp xchain00641_n3_α
.Lx00642_0:
 .quad 1
# IR_VAR
 xchain00641_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 712], rax
 jmp xchain00641_n5_α
 xchain00641_n3_β:
 jmp xchain00641_n6_α
# IR_ASSIGN_VAR
 xchain00641_n4_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00641_n3_α
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00641_n7_α
 xchain00641_n4_β:
 jmp xchain00641_n3_α
# IR_UNOP
 xchain00641_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00641_n6_α
 cmp eax, 0
 jne xchain00641_n6_α
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 jmp xchain00641_n8_α
 xchain00641_n5_β:
 jmp xchain00641_n6_α
# IR_LIT_INTEGER
 xchain00641_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00641_n9_α
 xchain00641_n6_β:
 jmp proc_put3get3_ω
.Lx00643_0:
 .quad 1
# IR_MAKE_LIST
 xchain00641_n7_α:
 lea rdi, [rbp + 800]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00641_n10_α
 xchain00641_n7_β:
 jmp xchain00641_n3_α
# IR_LIT_STRING
 xchain00641_n8_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00644_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00641_n11_α
 xchain00641_n8_β:
 jmp proc_put3get3_ω
.Lx00644_0:
 .quad .Lx00644_0_s
.Lx00644_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_VAR
 xchain00641_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00641_n12_α
 xchain00641_n9_β:
 jmp proc_put3get3_ω
# IR_ASSIGN gva
 xchain00641_n10_α:
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00641_n13_α
 xchain00641_n10_β:
 jmp xchain00641_n3_α
# IR_RETURN
 xchain00641_n11_α:
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put3get3_γ
# IR_TO
 xchain00641_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00645_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00641_n14_α
 xchain00641_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00645_0
# IR_MOVE_LABEL
 xchain00641_n13_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + xchain00641_n3_α]
 mov qword ptr [rbp + 752], rax
 jmp xchain00641_n3_α
 xchain00641_n13_β:
 jmp xchain00641_n3_α
# IR_VAR
 xchain00641_n14_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00641_n16_α
 xchain00641_n14_β:
 jmp xchain00641_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00641_n15_α:
 jmp qword ptr [rbp + 752]
 xchain00641_n15_β:
 jmp xchain00641_n3_α
# IR_LIT_INTEGER
 xchain00641_n16_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00646_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00641_n17_α
 xchain00641_n16_β:
 jmp xchain00641_n12_β
.Lx00646_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00641_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00641_n18_α
 xchain00641_n17_β:
 jmp xchain00641_n12_β
.Lx00647_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00641_n18_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00648_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00641_n19_α
 xchain00641_n18_β:
 jmp xchain00641_n12_β
.Lx00648_0:
 .quad 3
 xchain00641_n19_α:
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
  .Lrkfn1854: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1854]
 lea rsi, [rbp + 400]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00641_n12_β
 jmp xchain00641_n20_α
 xchain00641_n19_β:
 jmp xchain00641_n12_β
# IR_VAR
 xchain00641_n20_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00641_n21_α
 xchain00641_n20_β:
 jmp xchain00641_n12_β
 xchain00641_n21_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn1857: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1857]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00641_n12_β
 jmp xchain00641_n22_α
 xchain00641_n21_β:
 jmp xchain00641_n12_β
# IR_VAR
 xchain00641_n22_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00641_n23_α
 xchain00641_n22_β:
 jmp xchain00641_n12_β
 xchain00641_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1860: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1860]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00641_n12_β
 jmp xchain00641_n24_α
 xchain00641_n23_β:
 jmp xchain00641_n12_β
# IR_VAR
 xchain00641_n24_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00641_n25_α
 xchain00641_n24_β:
 jmp xchain00641_n12_β
 xchain00641_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1863: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1863]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00641_n12_β
 jmp xchain00641_n26_α
 xchain00641_n25_β:
 jmp xchain00641_n12_β
 xchain00641_n26_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00641_n12_β
xchain00641_n26_β:
 jmp xchain00641_n12_β
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
 xchain00649_n0_α:
 mov rdi, 1879052752
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00649_n1_α
 xchain00649_n0_β:
 jmp xchain00649_n3_α
# IR_NULLTEST_VAR
 xchain00649_n1_α:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 99
 je xchain00649_n3_α
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00649_n3_α
 cmp eax, 0
 jne xchain00649_n3_α
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 968], rax
 jmp xchain00649_n2_α
 xchain00649_n1_β:
 jmp xchain00649_n3_α
# IR_LIT_INTEGER
 xchain00649_n2_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00649_n4_α
 xchain00649_n2_β:
 jmp xchain00649_n3_α
.Lx00650_0:
 .quad 1
# IR_VAR
 xchain00649_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 840], rax
 jmp xchain00649_n5_α
 xchain00649_n3_β:
 jmp xchain00649_n6_α
# IR_ASSIGN_VAR
 xchain00649_n4_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 1008]
 mov rcx, qword ptr [rbp + 1016]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00649_n3_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00649_n7_α
 xchain00649_n4_β:
 jmp xchain00649_n3_α
# IR_UNOP
 xchain00649_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00649_n6_α
 cmp eax, 0
 jne xchain00649_n6_α
 mov qword ptr [rbp + 800], 0
 mov qword ptr [rbp + 808], 0
 jmp xchain00649_n8_α
 xchain00649_n5_β:
 jmp xchain00649_n6_α
# IR_LIT_INTEGER
 xchain00649_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00649_n9_α
 xchain00649_n6_β:
 jmp proc_put4get4_ω
.Lx00651_0:
 .quad 1
# IR_MAKE_LIST
 xchain00649_n7_α:
 lea rdi, [rbp + 928]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00649_n10_α
 xchain00649_n7_β:
 jmp xchain00649_n3_α
# IR_LIT_STRING
 xchain00649_n8_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00652_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00649_n11_α
 xchain00649_n8_β:
 jmp proc_put4get4_ω
.Lx00652_0:
 .quad .Lx00652_0_s
.Lx00652_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_VAR
 xchain00649_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00649_n12_α
 xchain00649_n9_β:
 jmp proc_put4get4_ω
# IR_ASSIGN gva
 xchain00649_n10_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [1879052736], rax
 mov qword ptr [1879052744], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00649_n13_α
 xchain00649_n10_β:
 jmp xchain00649_n3_α
# IR_RETURN
 xchain00649_n11_α:
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put4get4_γ
# IR_TO
 xchain00649_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00653_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00649_n14_α
 xchain00649_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00653_0
# IR_MOVE_LABEL
 xchain00649_n13_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
 lea rax, [rip + xchain00649_n3_α]
 mov qword ptr [rbp + 880], rax
 jmp xchain00649_n3_α
 xchain00649_n13_β:
 jmp xchain00649_n3_α
# IR_VAR
 xchain00649_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00649_n16_α
 xchain00649_n14_β:
 jmp xchain00649_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00649_n15_α:
 jmp qword ptr [rbp + 880]
 xchain00649_n15_β:
 jmp xchain00649_n3_α
# IR_LIT_INTEGER
 xchain00649_n16_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00649_n17_α
 xchain00649_n16_β:
 jmp xchain00649_n12_β
.Lx00654_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00649_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00649_n18_α
 xchain00649_n17_β:
 jmp xchain00649_n12_β
.Lx00655_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00649_n18_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00649_n19_α
 xchain00649_n18_β:
 jmp xchain00649_n12_β
.Lx00656_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00649_n19_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00649_n20_α
 xchain00649_n19_β:
 jmp xchain00649_n12_β
.Lx00657_0:
 .quad 4
 xchain00649_n20_α:
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
  .Lrkfn1894: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1894]
 lea rsi, [rbp + 480]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00649_n12_β
 jmp xchain00649_n21_α
 xchain00649_n20_β:
 jmp xchain00649_n12_β
# IR_VAR
 xchain00649_n21_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00649_n22_α
 xchain00649_n21_β:
 jmp xchain00649_n12_β
 xchain00649_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn1897: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1897]
 lea rsi, [rbp + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00649_n12_β
 jmp xchain00649_n23_α
 xchain00649_n22_β:
 jmp xchain00649_n12_β
# IR_VAR
 xchain00649_n23_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00649_n24_α
 xchain00649_n23_β:
 jmp xchain00649_n12_β
 xchain00649_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn1900: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1900]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00649_n12_β
 jmp xchain00649_n25_α
 xchain00649_n24_β:
 jmp xchain00649_n12_β
# IR_VAR
 xchain00649_n25_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00649_n26_α
 xchain00649_n25_β:
 jmp xchain00649_n12_β
 xchain00649_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1903: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1903]
 lea rsi, [rbp + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00649_n12_β
 jmp xchain00649_n27_α
 xchain00649_n26_β:
 jmp xchain00649_n12_β
# IR_VAR
 xchain00649_n27_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00649_n28_α
 xchain00649_n27_β:
 jmp xchain00649_n12_β
 xchain00649_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn1906: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1906]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain00649_n12_β
 jmp xchain00649_n29_α
 xchain00649_n28_β:
 jmp xchain00649_n12_β
 xchain00649_n29_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00649_n12_β
xchain00649_n29_β:
 jmp xchain00649_n12_β
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
 xchain00658_n0_α:
 mov rdi, 1879052784
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00658_n1_α
 xchain00658_n0_β:
 jmp xchain00658_n3_α
# IR_NULLTEST_VAR
 xchain00658_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00658_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00658_n3_α
 cmp eax, 0
 jne xchain00658_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00658_n2_α
 xchain00658_n1_β:
 jmp xchain00658_n3_α
# IR_LIT_INTEGER
 xchain00658_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00658_n4_α
 xchain00658_n2_β:
 jmp xchain00658_n3_α
.Lx00659_0:
 .quad 1
# IR_VAR
 xchain00658_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00658_n5_α
 xchain00658_n3_β:
 jmp xchain00658_n6_α
# IR_ASSIGN_VAR
 xchain00658_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00658_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00658_n7_α
 xchain00658_n4_β:
 jmp xchain00658_n3_α
# IR_UNOP
 xchain00658_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00658_n6_α
 cmp eax, 0
 jne xchain00658_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00658_n8_α
 xchain00658_n5_β:
 jmp xchain00658_n6_α
# IR_LIT_INTEGER
 xchain00658_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00658_n9_α
 xchain00658_n6_β:
 jmp proc_pushpop_ω
.Lx00660_0:
 .quad 1
# IR_MAKE_LIST
 xchain00658_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00658_n10_α
 xchain00658_n7_β:
 jmp xchain00658_n3_α
# IR_LIT_STRING
 xchain00658_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00661_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00658_n11_α
 xchain00658_n8_β:
 jmp proc_pushpop_ω
.Lx00661_0:
 .quad .Lx00661_0_s
.Lx00661_0_s:
 .string "pop(push(L,0))"
# IR_VAR
 xchain00658_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00658_n12_α
 xchain00658_n9_β:
 jmp proc_pushpop_ω
# IR_ASSIGN gva
 xchain00658_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00658_n13_α
 xchain00658_n10_β:
 jmp xchain00658_n3_α
# IR_RETURN
 xchain00658_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop_γ
# IR_TO
 xchain00658_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00662_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00658_n14_α
 xchain00658_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00662_0
# IR_MOVE_LABEL
 xchain00658_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00658_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00658_n3_α
 xchain00658_n13_β:
 jmp xchain00658_n3_α
# IR_VAR
 xchain00658_n14_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00658_n16_α
 xchain00658_n14_β:
 jmp xchain00658_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00658_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00658_n15_β:
 jmp xchain00658_n3_α
# IR_LIT_INTEGER
 xchain00658_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00658_n17_α
 xchain00658_n16_β:
 jmp xchain00658_n12_β
.Lx00663_0:
 .quad 0
 xchain00658_n17_α:
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
  .Lrkfn1934: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1934]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00658_n12_β
 jmp xchain00658_n18_α
 xchain00658_n17_β:
 jmp xchain00658_n12_β
 xchain00658_n18_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1936: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1936]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00658_n12_β
 jmp xchain00658_n12_β
 xchain00658_n18_β:
 jmp xchain00658_n12_β
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
 xchain00664_n0_α:
 mov rdi, 1879052816
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00664_n1_α
 xchain00664_n0_β:
 jmp xchain00664_n3_α
# IR_NULLTEST_VAR
 xchain00664_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00664_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00664_n3_α
 cmp eax, 0
 jne xchain00664_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00664_n2_α
 xchain00664_n1_β:
 jmp xchain00664_n3_α
# IR_LIT_INTEGER
 xchain00664_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00664_n4_α
 xchain00664_n2_β:
 jmp xchain00664_n3_α
.Lx00665_0:
 .quad 1
# IR_VAR
 xchain00664_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00664_n5_α
 xchain00664_n3_β:
 jmp xchain00664_n6_α
# IR_ASSIGN_VAR
 xchain00664_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00664_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00664_n7_α
 xchain00664_n4_β:
 jmp xchain00664_n3_α
# IR_UNOP
 xchain00664_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00664_n6_α
 cmp eax, 0
 jne xchain00664_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00664_n8_α
 xchain00664_n5_β:
 jmp xchain00664_n6_α
# IR_LIT_INTEGER
 xchain00664_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00664_n9_α
 xchain00664_n6_β:
 jmp proc_putget12_ω
.Lx00666_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00664_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00667_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00664_n10_α
 xchain00664_n7_β:
 jmp xchain00664_n3_α
.Lx00667_0:
 .quad 3
# IR_LIT_STRING
 xchain00664_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00668_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00664_n11_α
 xchain00664_n8_β:
 jmp proc_putget12_ω
.Lx00668_0:
 .quad .Lx00668_0_s
.Lx00668_0_s:
 .string "get(put(L12,0))"
# IR_VAR
 xchain00664_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00664_n12_α
 xchain00664_n9_β:
 jmp proc_putget12_ω
# IR_LIT_INTEGER
 xchain00664_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00669_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00664_n13_α
 xchain00664_n10_β:
 jmp xchain00664_n3_α
.Lx00669_0:
 .quad 1
# IR_RETURN
 xchain00664_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putget12_γ
# IR_TO
 xchain00664_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00670_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00664_n14_α
 xchain00664_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00670_0
# IR_LIT_INTEGER
 xchain00664_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00664_n15_α
 xchain00664_n13_β:
 jmp xchain00664_n3_α
.Lx00671_0:
 .quad 4
# IR_VAR
 xchain00664_n14_α:
 mov rax, qword ptr [1879052800]
 mov rdx, qword ptr [1879052808]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00664_n16_α
 xchain00664_n14_β:
 jmp xchain00664_n12_β
# IR_LIT_INTEGER
 xchain00664_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00664_n17_α
 xchain00664_n15_β:
 jmp xchain00664_n3_α
.Lx00672_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00664_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00673_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00664_n18_α
 xchain00664_n16_β:
 jmp xchain00664_n12_β
.Lx00673_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00664_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00664_n19_α
 xchain00664_n17_β:
 jmp xchain00664_n3_α
.Lx00674_0:
 .quad 5
 xchain00664_n18_α:
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
  .Lrkfn1961: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1961]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00664_n12_β
 jmp xchain00664_n20_α
 xchain00664_n18_β:
 jmp xchain00664_n12_β
# IR_LIT_INTEGER
 xchain00664_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00664_n21_α
 xchain00664_n19_β:
 jmp xchain00664_n3_α
.Lx00675_0:
 .quad 9
 xchain00664_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1964: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1964]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00664_n12_β
 jmp xchain00664_n12_β
 xchain00664_n20_β:
 jmp xchain00664_n12_β
# IR_LIT_INTEGER
 xchain00664_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00664_n22_α
 xchain00664_n21_β:
 jmp xchain00664_n3_α
.Lx00676_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00664_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00664_n23_α
 xchain00664_n22_β:
 jmp xchain00664_n3_α
.Lx00677_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00664_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00664_n24_α
 xchain00664_n23_β:
 jmp xchain00664_n3_α
.Lx00678_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00664_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00664_n25_α
 xchain00664_n24_β:
 jmp xchain00664_n3_α
.Lx00679_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00664_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00664_n26_α
 xchain00664_n25_β:
 jmp xchain00664_n3_α
.Lx00680_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00664_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00681_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00664_n27_α
 xchain00664_n26_β:
 jmp xchain00664_n3_α
.Lx00681_0:
 .quad 8
# IR_MAKE_LIST
 xchain00664_n27_α:
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
 jmp xchain00664_n28_α
 xchain00664_n27_β:
 jmp xchain00664_n3_α
# IR_ASSIGN gva
 xchain00664_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00664_n29_α
 xchain00664_n28_β:
 jmp xchain00664_n3_α
# IR_MOVE_LABEL
 xchain00664_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00664_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00664_n3_α
 xchain00664_n29_β:
 jmp xchain00664_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00664_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00664_n30_β:
 jmp xchain00664_n3_α
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
 xchain00682_n0_α:
 mov rdi, 1879052848
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00682_n1_α
 xchain00682_n0_β:
 jmp xchain00682_n3_α
# IR_NULLTEST_VAR
 xchain00682_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00682_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00682_n3_α
 cmp eax, 0
 jne xchain00682_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00682_n2_α
 xchain00682_n1_β:
 jmp xchain00682_n3_α
# IR_LIT_INTEGER
 xchain00682_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00682_n4_α
 xchain00682_n2_β:
 jmp xchain00682_n3_α
.Lx00683_0:
 .quad 1
# IR_VAR
 xchain00682_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00682_n5_α
 xchain00682_n3_β:
 jmp xchain00682_n6_α
# IR_ASSIGN_VAR
 xchain00682_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00682_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00682_n7_α
 xchain00682_n4_β:
 jmp xchain00682_n3_α
# IR_UNOP
 xchain00682_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00682_n6_α
 cmp eax, 0
 jne xchain00682_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00682_n8_α
 xchain00682_n5_β:
 jmp xchain00682_n6_α
# IR_LIT_INTEGER
 xchain00682_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00682_n9_α
 xchain00682_n6_β:
 jmp proc_pushpop12_ω
.Lx00684_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00682_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00685_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00682_n10_α
 xchain00682_n7_β:
 jmp xchain00682_n3_α
.Lx00685_0:
 .quad 3
# IR_LIT_STRING
 xchain00682_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00682_n11_α
 xchain00682_n8_β:
 jmp proc_pushpop12_ω
.Lx00686_0:
 .quad .Lx00686_0_s
.Lx00686_0_s:
 .string "pop(push(L12,0))"
# IR_VAR
 xchain00682_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00682_n12_α
 xchain00682_n9_β:
 jmp proc_pushpop12_ω
# IR_LIT_INTEGER
 xchain00682_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00682_n13_α
 xchain00682_n10_β:
 jmp xchain00682_n3_α
.Lx00687_0:
 .quad 1
# IR_RETURN
 xchain00682_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop12_γ
# IR_TO
 xchain00682_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00688_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00682_n14_α
 xchain00682_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00688_0
# IR_LIT_INTEGER
 xchain00682_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00682_n15_α
 xchain00682_n13_β:
 jmp xchain00682_n3_α
.Lx00689_0:
 .quad 4
# IR_VAR
 xchain00682_n14_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00682_n16_α
 xchain00682_n14_β:
 jmp xchain00682_n12_β
# IR_LIT_INTEGER
 xchain00682_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00682_n17_α
 xchain00682_n15_β:
 jmp xchain00682_n3_α
.Lx00690_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00682_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00682_n18_α
 xchain00682_n16_β:
 jmp xchain00682_n12_β
.Lx00691_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00682_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00692_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00682_n19_α
 xchain00682_n17_β:
 jmp xchain00682_n3_α
.Lx00692_0:
 .quad 5
 xchain00682_n18_α:
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
  .Lrkfn2002: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2002]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00682_n12_β
 jmp xchain00682_n20_α
 xchain00682_n18_β:
 jmp xchain00682_n12_β
# IR_LIT_INTEGER
 xchain00682_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00682_n21_α
 xchain00682_n19_β:
 jmp xchain00682_n3_α
.Lx00693_0:
 .quad 9
 xchain00682_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2005: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2005]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00682_n12_β
 jmp xchain00682_n12_β
 xchain00682_n20_β:
 jmp xchain00682_n12_β
# IR_LIT_INTEGER
 xchain00682_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00682_n22_α
 xchain00682_n21_β:
 jmp xchain00682_n3_α
.Lx00694_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00682_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00682_n23_α
 xchain00682_n22_β:
 jmp xchain00682_n3_α
.Lx00695_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00682_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00696_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00682_n24_α
 xchain00682_n23_β:
 jmp xchain00682_n3_α
.Lx00696_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00682_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00682_n25_α
 xchain00682_n24_β:
 jmp xchain00682_n3_α
.Lx00697_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00682_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00698_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00682_n26_α
 xchain00682_n25_β:
 jmp xchain00682_n3_α
.Lx00698_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00682_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00682_n27_α
 xchain00682_n26_β:
 jmp xchain00682_n3_α
.Lx00699_0:
 .quad 8
# IR_MAKE_LIST
 xchain00682_n27_α:
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
 jmp xchain00682_n28_α
 xchain00682_n27_β:
 jmp xchain00682_n3_α
# IR_ASSIGN gva
 xchain00682_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00682_n29_α
 xchain00682_n28_β:
 jmp xchain00682_n3_α
# IR_MOVE_LABEL
 xchain00682_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00682_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00682_n3_α
 xchain00682_n29_β:
 jmp xchain00682_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00682_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00682_n30_β:
 jmp xchain00682_n3_α
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
 xchain00700_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00700_n1_α
 xchain00700_n0_β:
 jmp xchain00700_n2_α
# IR_UNOP
 xchain00700_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00700_n2_α
 cmp eax, 0
 jne xchain00700_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00700_n3_α
 xchain00700_n1_β:
 jmp xchain00700_n2_α
# IR_LIT_INTEGER
 xchain00700_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00700_n4_α
 xchain00700_n2_β:
 jmp proc_setcreate_ω
.Lx00701_0:
 .quad 1
# IR_LIT_STRING
 xchain00700_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00702_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00700_n5_α
 xchain00700_n3_β:
 jmp proc_setcreate_ω
.Lx00702_0:
 .quad .Lx00702_0_s
.Lx00702_0_s:
 .string "set()"
# IR_VAR
 xchain00700_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00700_n6_α
 xchain00700_n4_β:
 jmp proc_setcreate_ω
# IR_RETURN
 xchain00700_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcreate_γ
# IR_TO
 xchain00700_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00703_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00700_n7_α
 xchain00700_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00703_0
 xchain00700_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2031: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2031]
 lea rsi, [rbp + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00700_n6_β
 jmp xchain00700_n6_β
 xchain00700_n7_β:
 jmp xchain00700_n6_β
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
 xchain00704_n0_α:
 mov rdi, 1879052880
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00704_n1_α
 xchain00704_n0_β:
 jmp xchain00704_n3_α
# IR_NULLTEST_VAR
 xchain00704_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00704_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00704_n3_α
 cmp eax, 0
 jne xchain00704_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00704_n2_α
 xchain00704_n1_β:
 jmp xchain00704_n3_α
# IR_LIT_INTEGER
 xchain00704_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00705_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00704_n4_α
 xchain00704_n2_β:
 jmp xchain00704_n3_α
.Lx00705_0:
 .quad 1
# IR_VAR
 xchain00704_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00704_n5_α
 xchain00704_n3_β:
 jmp xchain00704_n6_α
# IR_ASSIGN_VAR
 xchain00704_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00704_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00704_n7_α
 xchain00704_n4_β:
 jmp xchain00704_n3_α
# IR_UNOP
 xchain00704_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00704_n6_α
 cmp eax, 0
 jne xchain00704_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00704_n8_α
 xchain00704_n5_β:
 jmp xchain00704_n6_α
# IR_LIT_INTEGER
 xchain00704_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00706_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00704_n9_α
 xchain00704_n6_β:
 jmp proc_setcopy_ω
.Lx00706_0:
 .quad 1
 xchain00704_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2043: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2043]
 lea rsi, [rbp + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00704_n3_α
 jmp xchain00704_n10_α
 xchain00704_n7_β:
 jmp xchain00704_n3_α
# IR_LIT_STRING
 xchain00704_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00707_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00704_n11_α
 xchain00704_n8_β:
 jmp proc_setcopy_ω
.Lx00707_0:
 .quad .Lx00707_0_s
.Lx00707_0_s:
 .string "copy(S)"
# IR_VAR
 xchain00704_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00704_n12_α
 xchain00704_n9_β:
 jmp proc_setcopy_ω
# IR_ASSIGN gva
 xchain00704_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00704_n13_α
 xchain00704_n10_β:
 jmp xchain00704_n3_α
# IR_RETURN
 xchain00704_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcopy_γ
# IR_TO
 xchain00704_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00708_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00704_n14_α
 xchain00704_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00708_0
# IR_LIT_INTEGER
 xchain00704_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00709_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00704_n15_α
 xchain00704_n13_β:
 jmp xchain00704_n3_α
.Lx00709_0:
 .quad 5
# IR_VAR
 xchain00704_n14_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00704_n16_α
 xchain00704_n14_β:
 jmp xchain00704_n12_β
 xchain00704_n15_α:
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
  .Lrkfn2054: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2054]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00704_n3_α
 jmp xchain00704_n17_α
 xchain00704_n15_β:
 jmp xchain00704_n3_α
 xchain00704_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2056: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2056]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00704_n12_β
 jmp xchain00704_n12_β
 xchain00704_n16_β:
 jmp xchain00704_n12_β
# IR_MOVE_LABEL
 xchain00704_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00704_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00704_n3_α
 xchain00704_n17_β:
 jmp xchain00704_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00704_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00704_n18_β:
 jmp xchain00704_n3_α
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
 xchain00710_n0_α:
 mov rdi, 1879052912
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00710_n1_α
 xchain00710_n0_β:
 jmp xchain00710_n3_α
# IR_NULLTEST_VAR
 xchain00710_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00710_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00710_n3_α
 cmp eax, 0
 jne xchain00710_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00710_n2_α
 xchain00710_n1_β:
 jmp xchain00710_n3_α
# IR_LIT_INTEGER
 xchain00710_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00711_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00710_n4_α
 xchain00710_n2_β:
 jmp xchain00710_n3_α
.Lx00711_0:
 .quad 1
# IR_VAR
 xchain00710_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00710_n5_α
 xchain00710_n3_β:
 jmp xchain00710_n6_α
# IR_ASSIGN_VAR
 xchain00710_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00710_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00710_n7_α
 xchain00710_n4_β:
 jmp xchain00710_n3_α
# IR_UNOP
 xchain00710_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00710_n6_α
 cmp eax, 0
 jne xchain00710_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00710_n8_α
 xchain00710_n5_β:
 jmp xchain00710_n6_α
# IR_LIT_INTEGER
 xchain00710_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00710_n9_α
 xchain00710_n6_β:
 jmp proc_setinsert_ω
.Lx00712_0:
 .quad 1
 xchain00710_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2072: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2072]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00710_n3_α
 jmp xchain00710_n10_α
 xchain00710_n7_β:
 jmp xchain00710_n3_α
# IR_LIT_STRING
 xchain00710_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00713_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00710_n11_α
 xchain00710_n8_β:
 jmp proc_setinsert_ω
.Lx00713_0:
 .quad .Lx00713_0_s
.Lx00713_0_s:
 .string "insert(S,5)"
# IR_VAR
 xchain00710_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00710_n12_α
 xchain00710_n9_β:
 jmp proc_setinsert_ω
# IR_ASSIGN gva
 xchain00710_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00710_n13_α
 xchain00710_n10_β:
 jmp xchain00710_n3_α
# IR_RETURN
 xchain00710_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsert_γ
# IR_TO
 xchain00710_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00714_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00710_n14_α
 xchain00710_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00714_0
# IR_LIT_INTEGER
 xchain00710_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00710_n15_α
 xchain00710_n13_β:
 jmp xchain00710_n3_α
.Lx00715_0:
 .quad 5
# IR_VAR
 xchain00710_n14_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00710_n16_α
 xchain00710_n14_β:
 jmp xchain00710_n12_β
 xchain00710_n15_α:
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
  .Lrkfn2083: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2083]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00710_n3_α
 jmp xchain00710_n17_α
 xchain00710_n15_β:
 jmp xchain00710_n3_α
# IR_LIT_INTEGER
 xchain00710_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00716_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00710_n18_α
 xchain00710_n16_β:
 jmp xchain00710_n12_β
.Lx00716_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00710_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00710_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00710_n3_α
 xchain00710_n17_β:
 jmp xchain00710_n3_α
 xchain00710_n18_α:
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
  .Lrkfn2088: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2088]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00710_n12_β
 jmp xchain00710_n12_β
 xchain00710_n18_β:
 jmp xchain00710_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00710_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00710_n19_β:
 jmp xchain00710_n3_α
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
 xchain00717_n0_α:
 mov rdi, 1879052944
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00717_n1_α
 xchain00717_n0_β:
 jmp xchain00717_n3_α
# IR_NULLTEST_VAR
 xchain00717_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00717_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00717_n3_α
 cmp eax, 0
 jne xchain00717_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00717_n2_α
 xchain00717_n1_β:
 jmp xchain00717_n3_α
# IR_LIT_INTEGER
 xchain00717_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00718_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00717_n4_α
 xchain00717_n2_β:
 jmp xchain00717_n3_α
.Lx00718_0:
 .quad 1
# IR_VAR
 xchain00717_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00717_n5_α
 xchain00717_n3_β:
 jmp xchain00717_n6_α
# IR_ASSIGN_VAR
 xchain00717_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00717_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00717_n7_α
 xchain00717_n4_β:
 jmp xchain00717_n3_α
# IR_UNOP
 xchain00717_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00717_n6_α
 cmp eax, 0
 jne xchain00717_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00717_n8_α
 xchain00717_n5_β:
 jmp xchain00717_n6_α
# IR_LIT_INTEGER
 xchain00717_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00717_n9_α
 xchain00717_n6_β:
 jmp proc_setmember_ω
.Lx00719_0:
 .quad 1
 xchain00717_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2102: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2102]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00717_n3_α
 jmp xchain00717_n10_α
 xchain00717_n7_β:
 jmp xchain00717_n3_α
# IR_LIT_STRING
 xchain00717_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00720_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00717_n11_α
 xchain00717_n8_β:
 jmp proc_setmember_ω
.Lx00720_0:
 .quad .Lx00720_0_s
.Lx00720_0_s:
 .string "member(S,5)"
# IR_VAR
 xchain00717_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00717_n12_α
 xchain00717_n9_β:
 jmp proc_setmember_ω
# IR_ASSIGN gva
 xchain00717_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052928], rax
 mov qword ptr [1879052936], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00717_n13_α
 xchain00717_n10_β:
 jmp xchain00717_n3_α
# IR_RETURN
 xchain00717_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setmember_γ
# IR_TO
 xchain00717_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00721_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00717_n14_α
 xchain00717_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00721_0
# IR_LIT_INTEGER
 xchain00717_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00717_n15_α
 xchain00717_n13_β:
 jmp xchain00717_n3_α
.Lx00722_0:
 .quad 5
# IR_VAR
 xchain00717_n14_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00717_n16_α
 xchain00717_n14_β:
 jmp xchain00717_n12_β
 xchain00717_n15_α:
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
  .Lrkfn2113: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2113]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00717_n3_α
 jmp xchain00717_n17_α
 xchain00717_n15_β:
 jmp xchain00717_n3_α
# IR_LIT_INTEGER
 xchain00717_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00723_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00717_n18_α
 xchain00717_n16_β:
 jmp xchain00717_n12_β
.Lx00723_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00717_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00717_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00717_n3_α
 xchain00717_n17_β:
 jmp xchain00717_n3_α
 xchain00717_n18_α:
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
  .Lrkfn2118: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2118]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00717_n12_β
 jmp xchain00717_n12_β
 xchain00717_n18_β:
 jmp xchain00717_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00717_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00717_n19_β:
 jmp xchain00717_n3_α
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
 xchain00724_n0_α:
 mov rdi, 1879052976
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00724_n1_α
 xchain00724_n0_β:
 jmp xchain00724_n3_α
# IR_NULLTEST_VAR
 xchain00724_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00724_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00724_n3_α
 cmp eax, 0
 jne xchain00724_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00724_n2_α
 xchain00724_n1_β:
 jmp xchain00724_n3_α
# IR_LIT_INTEGER
 xchain00724_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00724_n4_α
 xchain00724_n2_β:
 jmp xchain00724_n3_α
.Lx00725_0:
 .quad 1
# IR_VAR
 xchain00724_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00724_n5_α
 xchain00724_n3_β:
 jmp xchain00724_n6_α
# IR_ASSIGN_VAR
 xchain00724_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00724_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00724_n7_α
 xchain00724_n4_β:
 jmp xchain00724_n3_α
# IR_UNOP
 xchain00724_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00724_n6_α
 cmp eax, 0
 jne xchain00724_n6_α
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00724_n8_α
 xchain00724_n5_β:
 jmp xchain00724_n6_α
# IR_LIT_INTEGER
 xchain00724_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00724_n9_α
 xchain00724_n6_β:
 jmp proc_setinsdel_ω
.Lx00726_0:
 .quad 1
 xchain00724_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2132: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2132]
 lea rsi, [rbp + 544]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain00724_n3_α
 jmp xchain00724_n10_α
 xchain00724_n7_β:
 jmp xchain00724_n3_α
# IR_LIT_STRING
 xchain00724_n8_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00727_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00724_n11_α
 xchain00724_n8_β:
 jmp proc_setinsdel_ω
.Lx00727_0:
 .quad .Lx00727_0_s
.Lx00727_0_s:
 .string "insert+delete"
# IR_VAR
 xchain00724_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00724_n12_α
 xchain00724_n9_β:
 jmp proc_setinsdel_ω
# IR_ASSIGN gva
 xchain00724_n10_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00724_n13_α
 xchain00724_n10_β:
 jmp xchain00724_n3_α
# IR_RETURN
 xchain00724_n11_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsdel_γ
# IR_TO
 xchain00724_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00728_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00724_n14_α
 xchain00724_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00728_0
# IR_MOVE_LABEL
 xchain00724_n13_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 lea rax, [rip + xchain00724_n3_α]
 mov qword ptr [rbp + 496], rax
 jmp xchain00724_n3_α
 xchain00724_n13_β:
 jmp xchain00724_n3_α
# IR_VAR
 xchain00724_n14_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00724_n16_α
 xchain00724_n14_β:
 jmp xchain00724_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00724_n15_α:
 jmp qword ptr [rbp + 496]
 xchain00724_n15_β:
 jmp xchain00724_n3_α
# IR_LIT_INTEGER
 xchain00724_n16_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00724_n17_α
 xchain00724_n16_β:
 jmp xchain00724_n12_β
.Lx00729_0:
 .quad 5
 xchain00724_n17_α:
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
  .Lrkfn2147: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2147]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00724_n12_β
 jmp xchain00724_n18_α
 xchain00724_n17_β:
 jmp xchain00724_n12_β
# IR_LIT_INTEGER
 xchain00724_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00730_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00724_n19_α
 xchain00724_n18_β:
 jmp xchain00724_n12_β
.Lx00730_0:
 .quad 5
 xchain00724_n19_α:
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
  .Lrkfn2150: .string "delete"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2150]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00724_n12_β
 jmp xchain00724_n12_β
 xchain00724_n19_β:
 jmp xchain00724_n12_β
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
 xchain00731_n0_α:
 mov rdi, 1879053008
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00731_n1_α
 xchain00731_n0_β:
 jmp xchain00731_n3_α
# IR_NULLTEST_VAR
 xchain00731_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00731_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00731_n3_α
 cmp eax, 0
 jne xchain00731_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00731_n2_α
 xchain00731_n1_β:
 jmp xchain00731_n3_α
# IR_LIT_INTEGER
 xchain00731_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00731_n4_α
 xchain00731_n2_β:
 jmp xchain00731_n3_α
.Lx00732_0:
 .quad 1
# IR_VAR
 xchain00731_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00731_n5_α
 xchain00731_n3_β:
 jmp xchain00731_n6_α
# IR_ASSIGN_VAR
 xchain00731_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00731_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00731_n7_α
 xchain00731_n4_β:
 jmp xchain00731_n3_α
# IR_UNOP
 xchain00731_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00731_n6_α
 cmp eax, 0
 jne xchain00731_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00731_n8_α
 xchain00731_n5_β:
 jmp xchain00731_n6_α
# IR_LIT_INTEGER
 xchain00731_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00731_n9_α
 xchain00731_n6_β:
 jmp proc_setpick_ω
.Lx00733_0:
 .quad 1
 xchain00731_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2162: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2162]
 lea rsi, [rbp + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00731_n3_α
 jmp xchain00731_n10_α
 xchain00731_n7_β:
 jmp xchain00731_n3_α
# IR_LIT_STRING
 xchain00731_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00734_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00731_n11_α
 xchain00731_n8_β:
 jmp proc_setpick_ω
.Lx00734_0:
 .quad .Lx00734_0_s
.Lx00734_0_s:
 .string "?S"
# IR_VAR
 xchain00731_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00731_n12_α
 xchain00731_n9_β:
 jmp proc_setpick_ω
# IR_ASSIGN gva
 xchain00731_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00731_n13_α
 xchain00731_n10_β:
 jmp xchain00731_n3_α
# IR_RETURN
 xchain00731_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setpick_γ
# IR_TO
 xchain00731_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00735_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00731_n14_α
 xchain00731_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00735_0
# IR_LIT_INTEGER
 xchain00731_n13_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00731_n15_α
 xchain00731_n13_β:
 jmp xchain00731_n3_α
.Lx00736_0:
 .quad 5
# IR_VAR_REF
 xchain00731_n14_α:
 mov rdi, 1879052992
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00731_n16_α
 xchain00731_n14_β:
 jmp xchain00731_n12_β
 xchain00731_n15_α:
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
  .Lrkfn2174: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2174]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00731_n3_α
 jmp xchain00731_n17_α
 xchain00731_n15_β:
 jmp xchain00731_n3_α
# IR_RANDOM
 xchain00731_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00731_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00731_n18_α
 xchain00731_n16_β:
 jmp xchain00731_n12_β
# IR_MOVE_LABEL
 xchain00731_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00731_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00731_n3_α
 xchain00731_n17_β:
 jmp xchain00731_n3_α
# IR_DEREF variable -> value
 xchain00731_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00731_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00731_n12_β
 xchain00731_n18_β:
 jmp xchain00731_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00731_n19_α:
 jmp qword ptr [rbp + 336]
 xchain00731_n19_β:
 jmp xchain00731_n3_α
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
 xchain00737_n0_α:
 mov rdi, 1879053040
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00737_n1_α
 xchain00737_n0_β:
 jmp xchain00737_n3_α
# IR_NULLTEST_VAR
 xchain00737_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00737_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00737_n3_α
 cmp eax, 0
 jne xchain00737_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00737_n2_α
 xchain00737_n1_β:
 jmp xchain00737_n3_α
# IR_LIT_INTEGER
 xchain00737_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00737_n4_α
 xchain00737_n2_β:
 jmp xchain00737_n3_α
.Lx00738_0:
 .quad 1
# IR_VAR
 xchain00737_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00737_n5_α
 xchain00737_n3_β:
 jmp xchain00737_n6_α
# IR_ASSIGN_VAR
 xchain00737_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00737_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00737_n7_α
 xchain00737_n4_β:
 jmp xchain00737_n3_α
# IR_UNOP
 xchain00737_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00737_n6_α
 cmp eax, 0
 jne xchain00737_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00737_n8_α
 xchain00737_n5_β:
 jmp xchain00737_n6_α
# IR_LIT_INTEGER
 xchain00737_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00737_n9_α
 xchain00737_n6_β:
 jmp proc_setbang_ω
.Lx00739_0:
 .quad 1
 xchain00737_n7_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2192: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2192]
 lea rsi, [rbp + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00737_n3_α
 jmp xchain00737_n10_α
 xchain00737_n7_β:
 jmp xchain00737_n3_α
# IR_LIT_STRING
 xchain00737_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00740_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00737_n11_α
 xchain00737_n8_β:
 jmp proc_setbang_ω
.Lx00740_0:
 .quad .Lx00740_0_s
.Lx00740_0_s:
 .string "!S"
# IR_VAR
 xchain00737_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00737_n12_α
 xchain00737_n9_β:
 jmp proc_setbang_ω
# IR_ASSIGN gva
 xchain00737_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00737_n13_α
 xchain00737_n10_β:
 jmp xchain00737_n3_α
# IR_RETURN
 xchain00737_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setbang_γ
# IR_TO
 xchain00737_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00741_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00737_n14_α
 xchain00737_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00741_0
# IR_LIT_INTEGER
 xchain00737_n13_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00737_n15_α
 xchain00737_n13_β:
 jmp xchain00737_n3_α
.Lx00742_0:
 .quad 1
# IR_VAR
 xchain00737_n14_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00737_n16_α
 xchain00737_n14_β:
 jmp xchain00737_n12_β
# IR_LIT_INTEGER
 xchain00737_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00743_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00737_n17_α
 xchain00737_n15_β:
 jmp xchain00737_n3_α
.Lx00743_0:
 .quad 5
# IR_LIST_BANG
 xchain00737_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00744_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00737_n12_β
 jmp xchain00737_n16_β
 xchain00737_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00744_0
# IR_TO
 xchain00737_n17_α:
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 480], rax
.Lx00745_0:
 mov rax, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 536]
 cmp rax, rcx
 jg xchain00737_n3_α
 mov qword ptr [rbp + 464], 6
 mov qword ptr [rbp + 472], rax
 jmp xchain00737_n18_α
 xchain00737_n17_β:
 inc qword ptr [rbp + 480]
 jmp .Lx00745_0
 xchain00737_n18_α:
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
  .Lrkfn2208: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2208]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00737_n3_α
 jmp xchain00737_n17_β
 xchain00737_n18_β:
 jmp xchain00737_n3_α
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
 xchain00746_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00746_n1_α
 xchain00746_n0_β:
 jmp xchain00746_n2_α
# IR_UNOP
 xchain00746_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00746_n2_α
 cmp eax, 0
 jne xchain00746_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00746_n3_α
 xchain00746_n1_β:
 jmp xchain00746_n2_α
# IR_LIT_INTEGER
 xchain00746_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00747_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00746_n4_α
 xchain00746_n2_β:
 jmp proc_tblcreate_ω
.Lx00747_0:
 .quad 1
# IR_LIT_STRING
 xchain00746_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00748_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00746_n5_α
 xchain00746_n3_β:
 jmp proc_tblcreate_ω
.Lx00748_0:
 .quad .Lx00748_0_s
.Lx00748_0_s:
 .string "table()"
# IR_VAR
 xchain00746_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00746_n6_α
 xchain00746_n4_β:
 jmp proc_tblcreate_ω
# IR_RETURN
 xchain00746_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblcreate_γ
# IR_TO
 xchain00746_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00749_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00746_n7_α
 xchain00746_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00749_0
 xchain00746_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2221: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2221]
 lea rsi, [rbp + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00746_n6_β
 jmp xchain00746_n6_β
 xchain00746_n7_β:
 jmp xchain00746_n6_β
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
 xchain00750_n0_α:
 mov rdi, 1879053072
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00750_n1_α
 xchain00750_n0_β:
 jmp xchain00750_n3_α
# IR_NULLTEST_VAR
 xchain00750_n1_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 99
 je xchain00750_n3_α
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00750_n3_α
 cmp eax, 0
 jne xchain00750_n3_α
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 632], rax
 jmp xchain00750_n2_α
 xchain00750_n1_β:
 jmp xchain00750_n3_α
# IR_LIT_INTEGER
 xchain00750_n2_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00750_n4_α
 xchain00750_n2_β:
 jmp xchain00750_n3_α
.Lx00751_0:
 .quad 1
# IR_VAR
 xchain00750_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00750_n5_α
 xchain00750_n3_β:
 jmp xchain00750_n6_α
# IR_ASSIGN_VAR
 xchain00750_n4_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00750_n3_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00750_n7_α
 xchain00750_n4_β:
 jmp xchain00750_n3_α
# IR_UNOP
 xchain00750_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00750_n6_α
 cmp eax, 0
 jne xchain00750_n6_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00750_n8_α
 xchain00750_n5_β:
 jmp xchain00750_n6_α
# IR_LIT_INTEGER
 xchain00750_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00750_n9_α
 xchain00750_n6_β:
 jmp proc_tblasgn_ω
.Lx00752_0:
 .quad 1
 xchain00750_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2233: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2233]
 lea rsi, [rbp + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain00750_n3_α
 jmp xchain00750_n10_α
 xchain00750_n7_β:
 jmp xchain00750_n3_α
# IR_LIT_STRING
 xchain00750_n8_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00753_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00750_n11_α
 xchain00750_n8_β:
 jmp proc_tblasgn_ω
.Lx00753_0:
 .quad .Lx00753_0_s
.Lx00753_0_s:
 .string "T[5] := 1"
# IR_VAR
 xchain00750_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00750_n12_α
 xchain00750_n9_β:
 jmp proc_tblasgn_ω
# IR_ASSIGN gva
 xchain00750_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00750_n13_α
 xchain00750_n10_β:
 jmp xchain00750_n3_α
# IR_RETURN
 xchain00750_n11_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblasgn_γ
# IR_TO
 xchain00750_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00754_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00750_n14_α
 xchain00750_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00754_0
# IR_LIT_INTEGER
 xchain00750_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00750_n15_α
 xchain00750_n13_β:
 jmp xchain00750_n3_α
.Lx00755_0:
 .quad 5
# IR_VAR_REF
 xchain00750_n14_α:
 mov rdi, 1879053056
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00750_n16_α
 xchain00750_n14_β:
 jmp xchain00750_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00750_n15_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00750_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00750_n17_α
 xchain00750_n15_β:
 jmp xchain00750_n3_α
# IR_LIT_INTEGER
 xchain00750_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00756_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00750_n18_α
 xchain00750_n16_β:
 jmp xchain00750_n12_β
.Lx00756_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00750_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00757_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00750_n19_α
 xchain00750_n17_β:
 jmp xchain00750_n3_α
.Lx00757_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00750_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00750_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00750_n20_α
 xchain00750_n18_β:
 jmp xchain00750_n12_β
# IR_ASSIGN_VAR
 xchain00750_n19_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00750_n3_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00750_n21_α
 xchain00750_n19_β:
 jmp xchain00750_n3_α
# IR_LIT_INTEGER
 xchain00750_n20_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00758_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00750_n22_α
 xchain00750_n20_β:
 jmp xchain00750_n12_β
.Lx00758_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00750_n21_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + xchain00750_n3_α]
 mov qword ptr [rbp + 416], rax
 jmp xchain00750_n3_α
 xchain00750_n21_β:
 jmp xchain00750_n3_α
# IR_ASSIGN_VAR
 xchain00750_n22_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00750_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00750_n12_β
 xchain00750_n22_β:
 jmp xchain00750_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00750_n23_α:
 jmp qword ptr [rbp + 416]
 xchain00750_n23_β:
 jmp xchain00750_n3_α
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
 xchain00759_n0_α:
 mov rdi, 1879053104
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00759_n1_α
 xchain00759_n0_β:
 jmp xchain00759_n3_α
# IR_NULLTEST_VAR
 xchain00759_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00759_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00759_n3_α
 cmp eax, 0
 jne xchain00759_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00759_n2_α
 xchain00759_n1_β:
 jmp xchain00759_n3_α
# IR_LIT_INTEGER
 xchain00759_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00759_n4_α
 xchain00759_n2_β:
 jmp xchain00759_n3_α
.Lx00760_0:
 .quad 1
# IR_VAR
 xchain00759_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00759_n5_α
 xchain00759_n3_β:
 jmp xchain00759_n6_α
# IR_ASSIGN_VAR
 xchain00759_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00759_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00759_n7_α
 xchain00759_n4_β:
 jmp xchain00759_n3_α
# IR_UNOP
 xchain00759_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00759_n6_α
 cmp eax, 0
 jne xchain00759_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00759_n8_α
 xchain00759_n5_β:
 jmp xchain00759_n6_α
# IR_LIT_INTEGER
 xchain00759_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00759_n9_α
 xchain00759_n6_β:
 jmp proc_tblsub_ω
.Lx00761_0:
 .quad 1
 xchain00759_n7_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2266: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2266]
 lea rsi, [rbp + 432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00759_n3_α
 jmp xchain00759_n10_α
 xchain00759_n7_β:
 jmp xchain00759_n3_α
# IR_LIT_STRING
 xchain00759_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00759_n11_α
 xchain00759_n8_β:
 jmp proc_tblsub_ω
.Lx00762_0:
 .quad .Lx00762_0_s
.Lx00762_0_s:
 .string "T[5]"
# IR_VAR
 xchain00759_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00759_n12_α
 xchain00759_n9_β:
 jmp proc_tblsub_ω
# IR_ASSIGN gva
 xchain00759_n10_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00759_n13_α
 xchain00759_n10_β:
 jmp xchain00759_n3_α
# IR_RETURN
 xchain00759_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblsub_γ
# IR_TO
 xchain00759_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00763_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00759_n14_α
 xchain00759_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00763_0
# IR_LIT_INTEGER
 xchain00759_n13_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00759_n15_α
 xchain00759_n13_β:
 jmp xchain00759_n3_α
.Lx00764_0:
 .quad 5
# IR_VAR_REF
 xchain00759_n14_α:
 mov rdi, 1879053088
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00759_n16_α
 xchain00759_n14_β:
 jmp xchain00759_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00759_n15_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00759_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00759_n17_α
 xchain00759_n15_β:
 jmp xchain00759_n3_α
# IR_LIT_INTEGER
 xchain00759_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00759_n18_α
 xchain00759_n16_β:
 jmp xchain00759_n12_β
.Lx00765_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00759_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00766_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00759_n19_α
 xchain00759_n17_β:
 jmp xchain00759_n3_α
.Lx00766_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00759_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00759_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00759_n20_α
 xchain00759_n18_β:
 jmp xchain00759_n12_β
# IR_ASSIGN_VAR
 xchain00759_n19_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00759_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00759_n21_α
 xchain00759_n19_β:
 jmp xchain00759_n3_α
# IR_DEREF variable -> value
 xchain00759_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00759_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00759_n12_β
 xchain00759_n20_β:
 jmp xchain00759_n12_β
# IR_MOVE_LABEL
 xchain00759_n21_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00759_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00759_n3_α
 xchain00759_n21_β:
 jmp xchain00759_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00759_n22_α:
 jmp qword ptr [rbp + 384]
 xchain00759_n22_β:
 jmp xchain00759_n3_α
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
 xchain00767_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00767_n1_α
 xchain00767_n0_β:
 jmp xchain00767_n2_α
# IR_UNOP
 xchain00767_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00767_n2_α
 cmp eax, 0
 jne xchain00767_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00767_n3_α
 xchain00767_n1_β:
 jmp xchain00767_n2_α
# IR_LIT_INTEGER
 xchain00767_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00768_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00767_n4_α
 xchain00767_n2_β:
 jmp proc_recconstr_ω
.Lx00768_0:
 .quad 1
# IR_LIT_STRING
 xchain00767_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00767_n5_α
 xchain00767_n3_β:
 jmp proc_recconstr_ω
.Lx00769_0:
 .quad .Lx00769_0_s
.Lx00769_0_s:
 .string "record(4,7)"
# IR_VAR
 xchain00767_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00767_n6_α
 xchain00767_n4_β:
 jmp proc_recconstr_ω
# IR_RETURN
 xchain00767_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recconstr_γ
# IR_TO
 xchain00767_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00770_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00767_n7_α
 xchain00767_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00770_0
# IR_LIT_INTEGER
 xchain00767_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00767_n8_α
 xchain00767_n7_β:
 jmp xchain00767_n6_β
.Lx00771_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00767_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00772_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00767_n9_α
 xchain00767_n8_β:
 jmp xchain00767_n6_β
.Lx00772_0:
 .quad 7
 xchain00767_n9_α:
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
  .Lrkfn2301: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2301]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00767_n6_β
 jmp xchain00767_n6_β
 xchain00767_n9_β:
 jmp xchain00767_n6_β
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
 xchain00773_n0_α:
 mov rdi, 1879053136
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00773_n1_α
 xchain00773_n0_β:
 jmp xchain00773_n3_α
# IR_NULLTEST_VAR
 xchain00773_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00773_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00773_n3_α
 cmp eax, 0
 jne xchain00773_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00773_n2_α
 xchain00773_n1_β:
 jmp xchain00773_n3_α
# IR_LIT_INTEGER
 xchain00773_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00773_n4_α
 xchain00773_n2_β:
 jmp xchain00773_n3_α
.Lx00774_0:
 .quad 1
# IR_VAR
 xchain00773_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00773_n5_α
 xchain00773_n3_β:
 jmp xchain00773_n6_α
# IR_ASSIGN_VAR
 xchain00773_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00773_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00773_n7_α
 xchain00773_n4_β:
 jmp xchain00773_n3_α
# IR_UNOP
 xchain00773_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00773_n6_α
 cmp eax, 0
 jne xchain00773_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00773_n8_α
 xchain00773_n5_β:
 jmp xchain00773_n6_α
# IR_LIT_INTEGER
 xchain00773_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00773_n9_α
 xchain00773_n6_β:
 jmp proc_reccopy_ω
.Lx00775_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00773_n7_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00773_n10_α
 xchain00773_n7_β:
 jmp xchain00773_n3_α
.Lx00776_0:
 .quad 4
# IR_LIT_STRING
 xchain00773_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00773_n11_α
 xchain00773_n8_β:
 jmp proc_reccopy_ω
.Lx00777_0:
 .quad .Lx00777_0_s
.Lx00777_0_s:
 .string "copy(R)"
# IR_VAR
 xchain00773_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00773_n12_α
 xchain00773_n9_β:
 jmp proc_reccopy_ω
# IR_LIT_INTEGER
 xchain00773_n10_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00773_n13_α
 xchain00773_n10_β:
 jmp xchain00773_n3_α
.Lx00778_0:
 .quad 7
# IR_RETURN
 xchain00773_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reccopy_γ
# IR_TO
 xchain00773_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00779_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00773_n14_α
 xchain00773_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00779_0
 xchain00773_n13_α:
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
  .Lrkfn2321: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2321]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00773_n3_α
 jmp xchain00773_n15_α
 xchain00773_n13_β:
 jmp xchain00773_n3_α
# IR_VAR
 xchain00773_n14_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00773_n16_α
 xchain00773_n14_β:
 jmp xchain00773_n12_β
# IR_ASSIGN gva
 xchain00773_n15_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00773_n17_α
 xchain00773_n15_β:
 jmp xchain00773_n3_α
 xchain00773_n16_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn2325: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2325]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00773_n12_β
 jmp xchain00773_n12_β
 xchain00773_n16_β:
 jmp xchain00773_n12_β
# IR_MOVE_LABEL
 xchain00773_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00773_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00773_n3_α
 xchain00773_n17_β:
 jmp xchain00773_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00773_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00773_n18_β:
 jmp xchain00773_n3_α
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
 xchain00780_n0_α:
 mov rdi, 1879053168
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00780_n1_α
 xchain00780_n0_β:
 jmp xchain00780_n3_α
# IR_NULLTEST_VAR
 xchain00780_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00780_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00780_n3_α
 cmp eax, 0
 jne xchain00780_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00780_n2_α
 xchain00780_n1_β:
 jmp xchain00780_n3_α
# IR_LIT_INTEGER
 xchain00780_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00781_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00780_n4_α
 xchain00780_n2_β:
 jmp xchain00780_n3_α
.Lx00781_0:
 .quad 1
# IR_VAR
 xchain00780_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00780_n5_α
 xchain00780_n3_β:
 jmp xchain00780_n6_α
# IR_ASSIGN_VAR
 xchain00780_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00780_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00780_n7_α
 xchain00780_n4_β:
 jmp xchain00780_n3_α
# IR_UNOP
 xchain00780_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00780_n6_α
 cmp eax, 0
 jne xchain00780_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00780_n8_α
 xchain00780_n5_β:
 jmp xchain00780_n6_α
# IR_LIT_INTEGER
 xchain00780_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00780_n9_α
 xchain00780_n6_β:
 jmp proc_recfield_ω
.Lx00782_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00780_n7_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00783_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00780_n10_α
 xchain00780_n7_β:
 jmp xchain00780_n3_α
.Lx00783_0:
 .quad 4
# IR_LIT_STRING
 xchain00780_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00780_n11_α
 xchain00780_n8_β:
 jmp proc_recfield_ω
.Lx00784_0:
 .quad .Lx00784_0_s
.Lx00784_0_s:
 .string "R.f"
# IR_VAR
 xchain00780_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00780_n12_α
 xchain00780_n9_β:
 jmp proc_recfield_ω
# IR_LIT_INTEGER
 xchain00780_n10_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00785_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00780_n13_α
 xchain00780_n10_β:
 jmp xchain00780_n3_α
.Lx00785_0:
 .quad 7
# IR_RETURN
 xchain00780_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recfield_γ
# IR_TO
 xchain00780_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00786_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00780_n14_α
 xchain00780_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00786_0
 xchain00780_n13_α:
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
  .Lrkfn2349: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2349]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00780_n3_α
 jmp xchain00780_n15_α
 xchain00780_n13_β:
 jmp xchain00780_n3_α
# IR_VAR
 xchain00780_n14_α:
 mov rax, qword ptr [1879053152]
 mov rdx, qword ptr [1879053160]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00780_n16_α
 xchain00780_n14_β:
 jmp xchain00780_n12_β
# IR_ASSIGN gva
 xchain00780_n15_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00780_n17_α
 xchain00780_n15_β:
 jmp xchain00780_n3_α
# IR_FIELD_GET
 xchain00780_n16_α:
 mov rdi, qword ptr [rip + .Lx00787_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00780_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00780_n12_β
 xchain00780_n16_β:
 jmp xchain00780_n12_β
.Lx00787_0:
 .quad .Lx00787_0_s
.Lx00787_0_s:
 .string "y"
# IR_MOVE_LABEL
 xchain00780_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00780_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00780_n3_α
 xchain00780_n17_β:
 jmp xchain00780_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00780_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00780_n18_β:
 jmp xchain00780_n3_α
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
 xchain00788_n0_α:
 mov rdi, 1879053200
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00788_n1_α
 xchain00788_n0_β:
 jmp xchain00788_n3_α
# IR_NULLTEST_VAR
 xchain00788_n1_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 99
 je xchain00788_n3_α
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00788_n3_α
 cmp eax, 0
 jne xchain00788_n3_α
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 440], rax
 jmp xchain00788_n2_α
 xchain00788_n1_β:
 jmp xchain00788_n3_α
# IR_LIT_INTEGER
 xchain00788_n2_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00789_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00788_n4_α
 xchain00788_n2_β:
 jmp xchain00788_n3_α
.Lx00789_0:
 .quad 1
# IR_VAR
 xchain00788_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00788_n5_α
 xchain00788_n3_β:
 jmp xchain00788_n6_α
# IR_ASSIGN_VAR
 xchain00788_n4_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00788_n3_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00788_n7_α
 xchain00788_n4_β:
 jmp xchain00788_n3_α
# IR_UNOP
 xchain00788_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00788_n6_α
 cmp eax, 0
 jne xchain00788_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00788_n8_α
 xchain00788_n5_β:
 jmp xchain00788_n6_α
# IR_LIT_INTEGER
 xchain00788_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00788_n9_α
 xchain00788_n6_β:
 jmp proc_bigfield_ω
.Lx00790_0:
 .quad 1
 xchain00788_n7_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2368: .string "bigrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2368]
 lea rsi, [rbp + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00788_n3_α
 jmp xchain00788_n10_α
 xchain00788_n7_β:
 jmp xchain00788_n3_α
# IR_LIT_STRING
 xchain00788_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00791_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00788_n11_α
 xchain00788_n8_β:
 jmp proc_bigfield_ω
.Lx00791_0:
 .quad .Lx00791_0_s
.Lx00791_0_s:
 .string "R2.f"
# IR_VAR
 xchain00788_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00788_n12_α
 xchain00788_n9_β:
 jmp proc_bigfield_ω
# IR_ASSIGN gva
 xchain00788_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00788_n13_α
 xchain00788_n10_β:
 jmp xchain00788_n3_α
# IR_RETURN
 xchain00788_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_bigfield_γ
# IR_TO
 xchain00788_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00792_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00788_n14_α
 xchain00788_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00792_0
# IR_MOVE_LABEL
 xchain00788_n13_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00788_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00788_n3_α
 xchain00788_n13_β:
 jmp xchain00788_n3_α
# IR_VAR
 xchain00788_n14_α:
 mov rax, qword ptr [1879053184]
 mov rdx, qword ptr [1879053192]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00788_n16_α
 xchain00788_n14_β:
 jmp xchain00788_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00788_n15_α:
 jmp qword ptr [rbp + 336]
 xchain00788_n15_β:
 jmp xchain00788_n3_α
# IR_FIELD_GET
 xchain00788_n16_α:
 mov rdi, qword ptr [rip + .Lx00793_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00788_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00788_n12_β
 xchain00788_n16_β:
 jmp xchain00788_n12_β
.Lx00793_0:
 .quad .Lx00793_0_s
.Lx00793_0_s:
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
 xchain00794_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00794_n1_α
 xchain00794_n0_β:
 jmp xchain00794_n2_α
# IR_UNOP
 xchain00794_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00794_n2_α
 cmp eax, 0
 jne xchain00794_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00794_n3_α
 xchain00794_n1_β:
 jmp xchain00794_n2_α
# IR_LIT_INTEGER
 xchain00794_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00795_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00794_n4_α
 xchain00794_n2_β:
 jmp proc_globasgn_ω
.Lx00795_0:
 .quad 1
# IR_LIT_STRING
 xchain00794_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00796_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00794_n5_α
 xchain00794_n3_β:
 jmp proc_globasgn_ω
.Lx00796_0:
 .quad .Lx00796_0_s
.Lx00796_0_s:
 .string "global := 1"
# IR_VAR
 xchain00794_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00794_n6_α
 xchain00794_n4_β:
 jmp proc_globasgn_ω
# IR_RETURN
 xchain00794_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_globasgn_γ
# IR_TO
 xchain00794_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00797_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00794_n7_α
 xchain00794_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00797_0
# IR_LIT_INTEGER
 xchain00794_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00794_n8_α
 xchain00794_n7_β:
 jmp xchain00794_n6_β
.Lx00798_0:
 .quad 1
# IR_ASSIGN gva
 xchain00794_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00794_n6_β
 xchain00794_n8_β:
 jmp xchain00794_n6_β
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
 xchain00799_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00799_n1_α
 xchain00799_n0_β:
 jmp xchain00799_n2_α
# IR_UNOP
 xchain00799_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00799_n2_α
 cmp eax, 0
 jne xchain00799_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00799_n3_α
 xchain00799_n1_β:
 jmp xchain00799_n2_α
# IR_LIT_INTEGER
 xchain00799_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00799_n4_α
 xchain00799_n2_β:
 jmp proc_loclasgn_ω
.Lx00800_0:
 .quad 1
# IR_LIT_STRING
 xchain00799_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00801_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00799_n5_α
 xchain00799_n3_β:
 jmp proc_loclasgn_ω
.Lx00801_0:
 .quad .Lx00801_0_s
.Lx00801_0_s:
 .string "local := 1"
# IR_VAR
 xchain00799_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00799_n6_α
 xchain00799_n4_β:
 jmp proc_loclasgn_ω
# IR_RETURN
 xchain00799_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_loclasgn_γ
# IR_TO
 xchain00799_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00802_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00799_n7_α
 xchain00799_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00802_0
# IR_LIT_INTEGER
 xchain00799_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00803_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00799_n8_α
 xchain00799_n7_β:
 jmp xchain00799_n6_β
.Lx00803_0:
 .quad 1
 xchain00799_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00799_n6_β
 xchain00799_n8_β:
 jmp xchain00799_n6_β
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
 xchain00804_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00804_n1_α
 xchain00804_n0_β:
 jmp xchain00804_n2_α
# IR_UNOP
 xchain00804_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00804_n2_α
 cmp eax, 0
 jne xchain00804_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00804_n3_α
 xchain00804_n1_β:
 jmp xchain00804_n2_α
# IR_LIT_INTEGER
 xchain00804_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00804_n4_α
 xchain00804_n2_β:
 jmp proc_statasgn_ω
.Lx00805_0:
 .quad 1
# IR_LIT_STRING
 xchain00804_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00804_n5_α
 xchain00804_n3_β:
 jmp proc_statasgn_ω
.Lx00806_0:
 .quad .Lx00806_0_s
.Lx00806_0_s:
 .string "static := 1"
# IR_VAR
 xchain00804_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00804_n6_α
 xchain00804_n4_β:
 jmp proc_statasgn_ω
# IR_RETURN
 xchain00804_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_statasgn_γ
# IR_TO
 xchain00804_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00807_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00804_n7_α
 xchain00804_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00807_0
# IR_LIT_INTEGER
 xchain00804_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00808_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00804_n8_α
 xchain00804_n7_β:
 jmp xchain00804_n6_β
.Lx00808_0:
 .quad 1
# IR_ASSIGN gva
 xchain00804_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00804_n6_β
 xchain00804_n8_β:
 jmp xchain00804_n6_β
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
 xchain00809_n0_α:
 mov rdi, 1879053248
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00809_n1_α
 xchain00809_n0_β:
 jmp xchain00809_n3_α
# IR_NULLTEST_VAR
 xchain00809_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00809_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00809_n3_α
 cmp eax, 0
 jne xchain00809_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00809_n2_α
 xchain00809_n1_β:
 jmp xchain00809_n3_α
# IR_LIT_INTEGER
 xchain00809_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00810_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00809_n4_α
 xchain00809_n2_β:
 jmp xchain00809_n3_α
.Lx00810_0:
 .quad 1
# IR_VAR
 xchain00809_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00809_n5_α
 xchain00809_n3_β:
 jmp xchain00809_n6_α
# IR_ASSIGN_VAR
 xchain00809_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00809_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00809_n7_α
 xchain00809_n4_β:
 jmp xchain00809_n3_α
# IR_UNOP
 xchain00809_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00809_n6_α
 cmp eax, 0
 jne xchain00809_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00809_n8_α
 xchain00809_n5_β:
 jmp xchain00809_n6_α
# IR_LIT_INTEGER
 xchain00809_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00811_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00809_n9_α
 xchain00809_n6_β:
 jmp proc_readz_ω
.Lx00811_0:
 .quad 1
# IR_LIT_STRING
 xchain00809_n7_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00809_n10_α
 xchain00809_n7_β:
 jmp xchain00809_n3_α
.Lx00812_0:
 .quad .Lx00812_0_s
.Lx00812_0_s:
 .string "/dev/zero"
# IR_LIT_STRING
 xchain00809_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00809_n11_α
 xchain00809_n8_β:
 jmp proc_readz_ω
.Lx00813_0:
 .quad .Lx00813_0_s
.Lx00813_0_s:
 .string "reads(zero,8)"
# IR_VAR
 xchain00809_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00809_n12_α
 xchain00809_n9_β:
 jmp proc_readz_ω
# IR_LIT_STRING
 xchain00809_n10_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00814_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00809_n13_α
 xchain00809_n10_β:
 jmp xchain00809_n3_α
.Lx00814_0:
 .quad .Lx00814_0_s
.Lx00814_0_s:
 .string "ru"
# IR_RETURN
 xchain00809_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_readz_γ
# IR_TO
 xchain00809_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00815_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00809_n14_α
 xchain00809_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00815_0
 xchain00809_n13_α:
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
  .Lrkfn2440: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2440]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00809_n3_α
 jmp xchain00809_n15_α
 xchain00809_n13_β:
 jmp xchain00809_n3_α
# IR_VAR
 xchain00809_n14_α:
 mov rax, qword ptr [1879053232]
 mov rdx, qword ptr [1879053240]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00809_n16_α
 xchain00809_n14_β:
 jmp xchain00809_n12_β
# IR_ASSIGN gva
 xchain00809_n15_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00809_n17_α
 xchain00809_n15_β:
 jmp xchain00809_n3_α
# IR_LIT_INTEGER
 xchain00809_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00816_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00809_n18_α
 xchain00809_n16_β:
 jmp xchain00809_n12_β
.Lx00816_0:
 .quad 8
# IR_MOVE_LABEL
 xchain00809_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00809_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00809_n3_α
 xchain00809_n17_β:
 jmp xchain00809_n3_α
 xchain00809_n18_α:
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
  .Lrkfn2447: .string "reads"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2447]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00809_n12_β
 jmp xchain00809_n12_β
 xchain00809_n18_β:
 jmp xchain00809_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00809_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00809_n19_β:
 jmp xchain00809_n3_α
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
 xchain00817_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00817_n1_α
 xchain00817_n0_β:
 jmp xchain00817_n2_α
# IR_UNOP
 xchain00817_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00817_n2_α
 cmp eax, 0
 jne xchain00817_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00817_n3_α
 xchain00817_n1_β:
 jmp xchain00817_n2_α
# IR_LIT_INTEGER
 xchain00817_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00818_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00817_n4_α
 xchain00817_n2_β:
 jmp proc_writecon_ω
.Lx00818_0:
 .quad 1
# IR_LIT_STRING
 xchain00817_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00817_n5_α
 xchain00817_n3_β:
 jmp proc_writecon_ω
.Lx00819_0:
 .quad .Lx00819_0_s
.Lx00819_0_s:
 .string "write(\"a...z\")"
# IR_VAR
 xchain00817_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00817_n6_α
 xchain00817_n4_β:
 jmp proc_writecon_ω
# IR_RETURN
 xchain00817_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writecon_γ
# IR_TO
 xchain00817_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00820_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00817_n7_α
 xchain00817_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00820_0
# IR_VAR
 xchain00817_n7_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00817_n8_α
 xchain00817_n7_β:
 jmp xchain00817_n6_β
# IR_LIT_STRING
 xchain00817_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00821_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00817_n9_α
 xchain00817_n8_β:
 jmp xchain00817_n6_β
.Lx00821_0:
 .quad .Lx00821_0_s
.Lx00821_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00817_n9_α:
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
  .Lrkfn2464: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2464]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00817_n6_β
 jmp xchain00817_n6_β
 xchain00817_n9_β:
 jmp xchain00817_n6_β
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
 xchain00822_n0_α:
 mov rdi, 1879053280
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00822_n1_α
 xchain00822_n0_β:
 jmp xchain00822_n3_α
# IR_NULLTEST_VAR
 xchain00822_n1_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 99
 je xchain00822_n3_α
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00822_n3_α
 cmp eax, 0
 jne xchain00822_n3_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 504], rax
 jmp xchain00822_n2_α
 xchain00822_n1_β:
 jmp xchain00822_n3_α
# IR_LIT_INTEGER
 xchain00822_n2_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00823_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00822_n4_α
 xchain00822_n2_β:
 jmp xchain00822_n3_α
.Lx00823_0:
 .quad 1
# IR_VAR
 xchain00822_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00822_n5_α
 xchain00822_n3_β:
 jmp xchain00822_n6_α
# IR_ASSIGN_VAR
 xchain00822_n4_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00822_n3_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00822_n7_α
 xchain00822_n4_β:
 jmp xchain00822_n3_α
# IR_UNOP
 xchain00822_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00822_n6_α
 cmp eax, 0
 jne xchain00822_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00822_n8_α
 xchain00822_n5_β:
 jmp xchain00822_n6_α
# IR_LIT_INTEGER
 xchain00822_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00822_n9_α
 xchain00822_n6_β:
 jmp proc_writestr_ω
.Lx00824_0:
 .quad 1
# IR_LIT_STRING
 xchain00822_n7_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00825_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00822_n10_α
 xchain00822_n7_β:
 jmp xchain00822_n3_α
.Lx00825_0:
 .quad .Lx00825_0_s
.Lx00825_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00822_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00826_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00822_n11_α
 xchain00822_n8_β:
 jmp proc_writestr_ω
.Lx00826_0:
 .quad .Lx00826_0_s
.Lx00826_0_s:
 .string "write(s)"
# IR_VAR
 xchain00822_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00822_n12_α
 xchain00822_n9_β:
 jmp proc_writestr_ω
# IR_ASSIGN gva
 xchain00822_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00822_n13_α
 xchain00822_n10_β:
 jmp xchain00822_n3_α
# IR_RETURN
 xchain00822_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writestr_γ
# IR_TO
 xchain00822_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00827_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00822_n14_α
 xchain00822_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00827_0
# IR_MOVE_LABEL
 xchain00822_n13_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00822_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00822_n3_α
 xchain00822_n13_β:
 jmp xchain00822_n3_α
# IR_VAR
 xchain00822_n14_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00822_n16_α
 xchain00822_n14_β:
 jmp xchain00822_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00822_n15_α:
 jmp qword ptr [rbp + 400]
 xchain00822_n15_β:
 jmp xchain00822_n3_α
# IR_VAR
 xchain00822_n16_α:
 mov rax, qword ptr [1879053264]
 mov rdx, qword ptr [1879053272]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00822_n17_α
 xchain00822_n16_β:
 jmp xchain00822_n12_β
 xchain00822_n17_α:
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
  .Lrkfn2490: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2490]
 lea rsi, [rbp + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00822_n12_β
 jmp xchain00822_n12_β
 xchain00822_n17_β:
 jmp xchain00822_n12_β
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
 xchain00828_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00828_n1_α
 xchain00828_n0_β:
 jmp xchain00828_n2_α
# IR_UNOP
 xchain00828_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00828_n2_α
 cmp eax, 0
 jne xchain00828_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00828_n3_α
 xchain00828_n1_β:
 jmp xchain00828_n2_α
# IR_LIT_INTEGER
 xchain00828_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00829_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00828_n4_α
 xchain00828_n2_β:
 jmp proc_cxcreate_ω
.Lx00829_0:
 .quad 1
# IR_LIT_STRING
 xchain00828_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00830_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00828_n5_α
 xchain00828_n3_β:
 jmp proc_cxcreate_ω
.Lx00830_0:
 .quad .Lx00830_0_s
.Lx00830_0_s:
 .string "create |\"a\""
# IR_VAR
 xchain00828_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00828_n6_α
 xchain00828_n4_β:
 jmp proc_cxcreate_ω
# IR_RETURN
 xchain00828_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxcreate_γ
# IR_TO
 xchain00828_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00831_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00828_n7_α
 xchain00828_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00831_0
# IR_CREATE
 xchain00828_n7_α:
 mov qword ptr [rsp + 144], r12
 mov qword ptr [rsp + 152], r13
 mov qword ptr [rsp + 160], r14
 mov qword ptr [rsp + 168], r15
 mov qword ptr [rsp + 176], rbx
 mov qword ptr [rsp + 184], rbp
 lea rdi, [rip + xchain00828_n8_α]
 lea rsi, [rbp + 144]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 128], rax
 jmp xchain00828_n6_β
 xchain00828_n7_β:
 jmp xchain00828_n6_β
 xchain00828_n8_α:
# IR_REPALT clear
 mov qword ptr [rbp + 224], 0
jmp xchain00828_n10_α
xchain00828_n8_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 mov qword ptr [rbp + 224], 1
jmp xchain00828_n9_α
xchain00828_n8_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 224]
 cmp rax, 1
je xchain00828_n8_α
jmp xchain00828_n11_α
xchain00828_n8_β:
jmp xchain00828_n8_rt
# IR_CORET yield
 xchain00828_n9_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00828_n8_β
# IR_LIT_STRING
 xchain00828_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00832_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00828_n8_ry
 xchain00828_n10_β:
 jmp xchain00828_n8_rt
.Lx00832_0:
 .quad .Lx00832_0_s
.Lx00832_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00828_n11_α:
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
 xchain00833_n0_α:
 mov rdi, 1879053312
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00833_n1_α
 xchain00833_n0_β:
 jmp xchain00833_n3_α
# IR_NULLTEST_VAR
 xchain00833_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00833_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00833_n3_α
 cmp eax, 0
 jne xchain00833_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00833_n2_α
 xchain00833_n1_β:
 jmp xchain00833_n3_α
# IR_LIT_INTEGER
 xchain00833_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00834_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00833_n4_α
 xchain00833_n2_β:
 jmp xchain00833_n3_α
.Lx00834_0:
 .quad 1
# IR_VAR
 xchain00833_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00833_n5_α
 xchain00833_n3_β:
 jmp xchain00833_n6_α
# IR_ASSIGN_VAR
 xchain00833_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00833_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00833_n7_α
 xchain00833_n4_β:
 jmp xchain00833_n3_α
# IR_UNOP
 xchain00833_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00833_n6_α
 cmp eax, 0
 jne xchain00833_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00833_n8_α
 xchain00833_n5_β:
 jmp xchain00833_n6_α
# IR_LIT_INTEGER
 xchain00833_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00835_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00833_n9_α
 xchain00833_n6_β:
 jmp proc_cxget_ω
.Lx00835_0:
 .quad 1
# IR_CREATE
 xchain00833_n7_α:
 mov qword ptr [rsp + 384], r12
 mov qword ptr [rsp + 392], r13
 mov qword ptr [rsp + 400], r14
 mov qword ptr [rsp + 408], r15
 mov qword ptr [rsp + 416], rbx
 mov qword ptr [rsp + 424], rbp
 lea rdi, [rip + xchain00833_n11_α]
 lea rsi, [rbp + 384]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 368], rax
 jmp xchain00833_n10_α
 xchain00833_n7_β:
 jmp xchain00833_n3_α
# IR_LIT_STRING
 xchain00833_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00836_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00833_n12_α
 xchain00833_n8_β:
 jmp proc_cxget_ω
.Lx00836_0:
 .quad .Lx00836_0_s
.Lx00836_0_s:
 .string "@C"
# IR_VAR
 xchain00833_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00833_n13_α
 xchain00833_n9_β:
 jmp proc_cxget_ω
# IR_ASSIGN gva
 xchain00833_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00833_n14_α
 xchain00833_n10_β:
 jmp xchain00833_n3_α
 xchain00833_n11_α:
# IR_REPALT clear
 mov qword ptr [rbp + 464], 0
jmp xchain00833_n16_α
xchain00833_n11_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 mov qword ptr [rbp + 464], 1
jmp xchain00833_n15_α
xchain00833_n11_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 464]
 cmp rax, 1
je xchain00833_n11_α
jmp xchain00833_n20_α
xchain00833_n11_β:
jmp xchain00833_n11_rt
# IR_RETURN
 xchain00833_n12_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxget_γ
# IR_TO
 xchain00833_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00837_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00833_n17_α
 xchain00833_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00837_0
# IR_MOVE_LABEL
 xchain00833_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00833_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00833_n3_α
 xchain00833_n14_β:
 jmp xchain00833_n3_α
# IR_CORET yield
 xchain00833_n15_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00833_n11_β
# IR_LIT_STRING
 xchain00833_n16_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00838_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00833_n11_ry
 xchain00833_n16_β:
 jmp xchain00833_n11_rt
.Lx00838_0:
 .quad .Lx00838_0_s
.Lx00838_0_s:
 .string "a"
# IR_VAR
 xchain00833_n17_α:
 mov rax, qword ptr [1879053296]
 mov rdx, qword ptr [1879053304]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00833_n19_α
 xchain00833_n17_β:
 jmp xchain00833_n13_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00833_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00833_n18_β:
 jmp xchain00833_n3_α
# IR_ACTIVATE
 xchain00833_n19_α:
 mov rdi, qword ptr [rbp + 160]
 xor esi, esi
 xor edx, edx
 lea rcx, [rbp + 128]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00833_n13_β
 jmp xchain00833_n13_β
 xchain00833_n19_β:
 jmp xchain00833_n13_β
# IR_COFAIL exhausted
 xchain00833_n20_α:
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
  mov esi, 800
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
  mov esi, 2880
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
  mov esi, 608
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
  mov esi, 272
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
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
 xchain00839_n0_α:
 mov qword ptr [rbp + 11264], 6
 mov rax, qword ptr [rip + .Lx00840_0]
 mov qword ptr [rbp + 11272], rax
 jmp xchain00839_n1_α
 xchain00839_n0_β:
 jmp xchain00839_n10_α
.Lx00840_0:
 .quad 1000
# IR_VAR_REF
 xchain00839_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain00839_n2_α
 xchain00839_n1_β:
 jmp xchain00839_n5_α
# IR_LIT_INTEGER
 xchain00839_n2_α:
 mov qword ptr [rbp + 11392], 6
 mov rax, qword ptr [rip + .Lx00841_0]
 mov qword ptr [rbp + 11400], rax
 jmp xchain00839_n3_α
 xchain00839_n2_β:
 jmp xchain00839_n5_α
.Lx00841_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00839_n3_α:
 mov rdi, qword ptr [rbp + 11360]
 mov rsi, qword ptr [rbp + 11368]
 mov rdx, qword ptr [rbp + 11392]
 mov rcx, qword ptr [rbp + 11400]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00839_n5_α
 mov qword ptr [rbp + 11424], rax
 mov qword ptr [rbp + 11432], rdx
 jmp xchain00839_n4_α
 xchain00839_n3_β:
 jmp xchain00839_n5_α
# IR_DEREF variable -> value
 xchain00839_n4_α:
 mov rdi, qword ptr [rbp + 11424]
 mov rsi, qword ptr [rbp + 11432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00839_n5_α
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 jmp xchain00839_n6_α
 xchain00839_n4_β:
 jmp xchain00839_n5_α
# IR_LIT_REAL
 xchain00839_n5_α:
 mov qword ptr [rbp + 11328], 7
 mov rax, qword ptr [rip + .Lx00842_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain00839_n7_α
 xchain00839_n5_β:
 jmp xchain00839_n10_α
.Lx00842_0:
 .quad 4607182418800017408
# IR_MOVE_LABEL
 xchain00839_n6_α:
 mov rax, qword ptr [rbp + 11456]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11464]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00839_n5_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00839_n8_α
 xchain00839_n6_β:
 jmp xchain00839_n10_α
# IR_MOVE_LABEL
 xchain00839_n7_α:
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00839_n10_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00839_n8_α
 xchain00839_n7_β:
 jmp xchain00839_n10_α
# IR_COERCE_NUMERIC
 xchain00839_n8_α:
 mov eax, dword ptr [rbp + 11296]
 cmp eax, 7
 je .Lx00843_1
 cmp eax, 6
 jne .Lx00843_0
 mov eax, dword ptr [rbp + 11264]
 cmp eax, 6
 jne .Lx00843_0
.Lx00843_1:
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11232], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11240], rax
 jmp .Lx00843_2
.Lx00843_0:
 lea rdi, [rbp + 11296]
 lea rsi, [rbp + 11264]
 lea rdx, [rbp + 11232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00843_2:
 jmp xchain00839_n11_α
 xchain00839_n8_β:
 jmp xchain00839_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00839_n9_α:
 jmp qword ptr [rbp + 11312]
 xchain00839_n9_β:
 jmp xchain00839_n10_α
# IR_LIT_STRING
 xchain00839_n10_α:
 mov qword ptr [rbp + 11072], 1
 mov rax, qword ptr [rip + .Lx00844_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain00839_n12_α
 xchain00839_n10_β:
 jmp xchain00839_n17_α
.Lx00844_0:
 .quad .Lx00844_0_s
.Lx00844_0_s:
 .string "/dev/null"
 xchain00839_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 100
 je .Lx00845_0
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 6
 jne .Lx00845_2
.Lx00845_1:
 mov rax, 1000
 mov rcx, qword ptr [rbp + 11240]
 imul rax, rcx
 mov qword ptr [rbp + 11200], 6
 mov qword ptr [rbp + 11208], rax
 jmp xchain00839_n13_α
.Lx00845_0:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 lea r9, [rbp + 11200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00845_3
.Lx00845_2:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00839_n10_α
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
.Lx00845_3:
 jmp xchain00839_n13_α
 xchain00839_n11_β:
 jmp xchain00839_n10_α
# IR_LIT_STRING
 xchain00839_n12_α:
 mov qword ptr [rbp + 11104], 1
 mov rax, qword ptr [rip + .Lx00846_0]
 mov qword ptr [rbp + 11112], rax
 jmp xchain00839_n14_α
 xchain00839_n12_β:
 jmp xchain00839_n17_α
.Lx00846_0:
 .quad .Lx00846_0_s
.Lx00846_0_s:
 .string "w"
 xchain00839_n13_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11200] -> [zr+11168]
 mov rax, qword ptr [rbp + 11200]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 11208]
 mov qword ptr [rbp + 11176], rax
  .section .rodata
  .Lrkfn2568: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2568]
 lea rsi, [rbp + 11168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je xchain00839_n10_α
 jmp xchain00839_n15_α
 xchain00839_n13_β:
 jmp xchain00839_n10_α
 xchain00839_n14_α:
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
  .Lrkfn2570: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2570]
 lea rsi, [rbp + 11024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 cmp eax, 99
 je xchain00839_n17_α
 jmp xchain00839_n16_α
 xchain00839_n14_β:
 jmp xchain00839_n17_α
# IR_ASSIGN gva
 xchain00839_n15_α:
 mov rax, qword ptr [rbp + 11152]
 mov rdx, qword ptr [rbp + 11160]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 11136], rax
 mov qword ptr [rbp + 11144], rdx
 jmp xchain00839_n10_α
 xchain00839_n15_β:
 jmp xchain00839_n10_α
# IR_ASSIGN gva
 xchain00839_n16_α:
 mov rax, qword ptr [rbp + 11008]
 mov rdx, qword ptr [rbp + 11016]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain00839_n17_α
 xchain00839_n16_β:
 jmp xchain00839_n17_α
# IR_VAR
 xchain00839_n17_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 jmp xchain00839_n18_α
 xchain00839_n17_β:
 jmp xchain00839_n19_α
 xchain00839_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10960]
 mov rdx, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10944], rax
 mov qword ptr [rbp + 10952], rdx
 jmp xchain00839_n19_α
 xchain00839_n18_β:
 jmp xchain00839_n19_α
# IR_VAR
 xchain00839_n19_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10832], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10840], rax
 jmp xchain00839_n20_α
 xchain00839_n19_β:
 jmp xchain00839_n21_α
# IR_LIT_REAL
 xchain00839_n20_α:
 mov qword ptr [rbp + 10912], 7
 mov rax, qword ptr [rip + .Lx00847_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain00839_n22_α
 xchain00839_n20_β:
 jmp xchain00839_n21_α
.Lx00847_0:
 .quad 4652007308841189376
 xchain00839_n21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2579: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2579]
 lea rsi, [rbp + 10768]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10752], rax
 mov qword ptr [rbp + 10760], rdx
 cmp eax, 99
 je xchain00839_n24_α
 jmp xchain00839_n23_α
 xchain00839_n21_β:
 jmp xchain00839_n24_α
 xchain00839_n22_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10912] -> [zr+10880]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10888], rax
  .section .rodata
  .Lrkfn2581: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2581]
 lea rsi, [rbp + 10880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 cmp eax, 99
 je xchain00839_n21_α
 jmp xchain00839_n25_α
 xchain00839_n22_β:
 jmp xchain00839_n21_α
 xchain00839_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10752]
 mov rdx, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain00839_n24_α
 xchain00839_n23_β:
 jmp xchain00839_n24_α
# IR_LIT_INTEGER
 xchain00839_n24_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx00848_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain00839_n26_α
 xchain00839_n24_β:
 jmp xchain00839_n38_α
.Lx00848_0:
 .quad 1
 xchain00839_n25_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 100
 je .Lx00849_0
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 100
 je .Lx00849_0
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 6
 jne .Lx00849_2
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 6
 jne .Lx00849_2
.Lx00849_1:
 mov rax, qword ptr [rbp + 11512]
 mov rcx, qword ptr [rbp + 10872]
 cmp rax, rcx
 jge xchain00839_n21_α
 mov rcx, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rcx
 mov rcx, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rcx
 jmp xchain00839_n27_α
.Lx00849_0:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 lea r9, [rbp + 10800]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00849_1
 cmp eax, 1
 je xchain00839_n21_α
 jmp xchain00839_n27_α
.Lx00849_2:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00839_n21_α
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rax
 jmp xchain00839_n27_α
 xchain00839_n25_β:
 jmp xchain00839_n21_α
# IR_LIT_INTEGER
 xchain00839_n26_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx00850_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain00839_n28_α
 xchain00839_n26_β:
 jmp xchain00839_n38_α
.Lx00850_0:
 .quad 5
 xchain00839_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain00839_n21_α
 xchain00839_n27_β:
 jmp xchain00839_n21_α
# IR_TO
 xchain00839_n28_α:
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10288], rax
.Lx00851_0:
 mov rax, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10344]
 cmp rax, rcx
 jg xchain00839_n38_α
 mov qword ptr [rbp + 10272], 6
 mov qword ptr [rbp + 10280], rax
 jmp xchain00839_n29_α
 xchain00839_n28_β:
 inc qword ptr [rbp + 10288]
 jmp .Lx00851_0
# KEYWORD_read
 xchain00839_n29_α:
 mov rdi, qword ptr [rip + .Lx00852_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 jmp xchain00839_n30_α
 xchain00839_n29_β:
 jmp xchain00839_n32_α
.Lx00852_0:
 .quad .Lx00852_0_s
.Lx00852_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00839_n30_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx00853_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain00839_n31_α
 xchain00839_n30_β:
 jmp xchain00839_n32_α
.Lx00853_0:
 .quad .Lx00853_0_s
.Lx00853_0_s:
 .string "."
 xchain00839_n31_α:
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
  .Lrkfn2592: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2592]
 lea rsi, [rbp + 10624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 cmp eax, 99
 je xchain00839_n32_α
 jmp xchain00839_n32_α
 xchain00839_n31_β:
 jmp xchain00839_n32_α
# IR_VAR
 xchain00839_n32_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10456], rax
 jmp xchain00839_n33_α
 xchain00839_n32_β:
 jmp xchain00839_n28_β
# IR_PROC_VALUE
 xchain00839_n33_α:
 mov rdi, qword ptr [rip + .Lx00854_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 jmp xchain00839_n34_α
 xchain00839_n33_β:
 jmp xchain00839_n28_β
.Lx00854_0:
 .quad .Lx00854_0_s
.Lx00854_0_s:
 .string "nothing"
# IR_VAR
 xchain00839_n34_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10584], rax
 jmp xchain00839_n35_α
 xchain00839_n34_β:
 jmp xchain00839_n28_β
 xchain00839_n35_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 10544]
 mov rdx, qword ptr [rbp + 10552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10576]
 mov rdx, qword ptr [rbp + 10584]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00855_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00855_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00855_3]
 lea rdx, [rip + .Lx00855_4]
 jmp rax
.Lx00855_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00855_2
.Lx00855_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00855_2
.Lx00855_1:
 call rt_faildescr@PLT
.Lx00855_2:
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 cmp eax, 99
 je xchain00839_n28_β
 jmp xchain00839_n36_α
 xchain00839_n35_β:
 jmp xchain00839_n28_β
.Lx00855_0:
 .quad .Lx00855_0_s
.Lx00855_0_s:
 .string "measure"
 xchain00839_n36_α:
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
  .Lrkfn2602: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2602]
 lea rsi, [rbp + 10400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 cmp eax, 99
 je xchain00839_n28_β
 jmp xchain00839_n37_α
 xchain00839_n36_β:
 jmp xchain00839_n28_β
 xchain00839_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10368], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10376], rax
 jmp xchain00839_n28_β
xchain00839_n37_β:
 jmp xchain00839_n28_β
# IR_VAR
 xchain00839_n38_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 9848], rax
 jmp xchain00839_n39_α
 xchain00839_n38_β:
 jmp xchain00839_n40_α
 xchain00839_n39_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9840] -> [zr+9808]
 mov rax, qword ptr [rbp + 9840]
 mov qword ptr [rbp + 9808], rax
 mov rax, qword ptr [rbp + 9848]
 mov qword ptr [rbp + 9816], rax
  .section .rodata
  .Lrkfn2607: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2607]
 lea rsi, [rbp + 9808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 cmp eax, 99
 je xchain00839_n40_α
 jmp xchain00839_n41_α
 xchain00839_n39_β:
 jmp xchain00839_n40_α
# IR_VAR
 xchain00839_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain00839_n42_α
 xchain00839_n40_β:
 jmp xchain00839_n43_α
# IR_LIT_INTEGER
 xchain00839_n41_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain00839_n44_α
 xchain00839_n41_β:
 jmp xchain00839_n40_α
.Lx00856_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00839_n42_α:
 mov qword ptr [rbp + 9712], 6
 mov rax, qword ptr [rip + .Lx00857_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain00839_n45_α
 xchain00839_n42_β:
 jmp xchain00839_n43_α
.Lx00857_0:
 .quad 10
# IR_PROC_VALUE
 xchain00839_n43_α:
 mov rdi, qword ptr [rip + .Lx00858_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain00839_n46_α
 xchain00839_n43_β:
 jmp xchain00839_n49_α
.Lx00858_0:
 .quad .Lx00858_0_s
.Lx00858_0_s:
 .string "nothing"
# IR_VAR
 xchain00839_n44_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10136], rax
 jmp xchain00839_n47_α
 xchain00839_n44_β:
 jmp xchain00839_n40_α
 xchain00839_n45_α:
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
  .Lrkfn2616: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2616]
 lea rsi, [rbp + 9632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain00839_n43_α
 jmp xchain00839_n48_α
 xchain00839_n45_β:
 jmp xchain00839_n43_α
 xchain00839_n46_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00859_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00859_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00859_3]
 lea rdx, [rip + .Lx00859_4]
 jmp rax
.Lx00859_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00859_2
.Lx00859_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00859_2
.Lx00859_1:
 call rt_faildescr@PLT
.Lx00859_2:
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 cmp eax, 99
 je xchain00839_n49_α
 jmp xchain00839_n49_α
 xchain00839_n46_β:
 jmp xchain00839_n49_α
.Lx00859_0:
 .quad .Lx00859_0_s
.Lx00859_0_s:
 .string "report"
# IR_UNOP
 xchain00839_n47_α:
 mov rdi, qword ptr [rbp + 11488]
 mov rsi, qword ptr [rbp + 11496]
 call rt_size_d@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain00839_n50_α
 xchain00839_n47_β:
 jmp xchain00839_n40_α
# IR_LIT_STRING
 xchain00839_n48_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx00860_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain00839_n51_α
 xchain00839_n48_β:
 jmp xchain00839_n43_α
.Lx00860_0:
 .quad .Lx00860_0_s
.Lx00860_0_s:
 .string "  overhead"
# IR_PROC_VALUE
 xchain00839_n49_α:
 mov rdi, qword ptr [rip + .Lx00861_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain00839_n52_α
 xchain00839_n49_β:
 jmp xchain00839_n54_α
.Lx00861_0:
 .quad .Lx00861_0_s
.Lx00861_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00839_n50_α:
 mov qword ptr [rbp + 10160], 6
 mov rax, qword ptr [rip + .Lx00862_0]
 mov qword ptr [rbp + 10168], rax
 jmp xchain00839_n53_α
 xchain00839_n50_β:
 jmp xchain00839_n40_α
.Lx00862_0:
 .quad 1
 xchain00839_n51_α:
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
  .Lrkfn2625: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2625]
 lea rsi, [rbp + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain00839_n43_α
 jmp xchain00839_n43_α
 xchain00839_n51_β:
 jmp xchain00839_n43_α
 xchain00839_n52_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9440]
 mov rdx, qword ptr [rbp + 9448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00863_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00863_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00863_3]
 lea rdx, [rip + .Lx00863_4]
 jmp rax
.Lx00863_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00863_2
.Lx00863_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00863_2
.Lx00863_1:
 call rt_faildescr@PLT
.Lx00863_2:
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain00839_n54_α
 jmp xchain00839_n54_α
 xchain00839_n52_β:
 jmp xchain00839_n54_α
.Lx00863_0:
 .quad .Lx00863_0_s
.Lx00863_0_s:
 .string "report"
# IR_COERCE_NUMERIC
 xchain00839_n53_α:
 mov eax, dword ptr [rbp + 10096]
 cmp eax, 7
 je .Lx00864_1
 cmp eax, 6
 jne .Lx00864_0
 mov eax, dword ptr [rbp + 10160]
 cmp eax, 6
 jne .Lx00864_0
.Lx00864_1:
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
 jmp .Lx00864_2
.Lx00864_0:
 lea rdi, [rbp + 10096]
 lea rsi, [rbp + 10160]
 lea rdx, [rbp + 10064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00864_2:
 jmp xchain00839_n55_α
 xchain00839_n53_β:
 jmp xchain00839_n40_α
# IR_PROC_VALUE
 xchain00839_n54_α:
 mov rdi, qword ptr [rip + .Lx00865_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain00839_n56_α
 xchain00839_n54_β:
 jmp xchain00839_n58_α
.Lx00865_0:
 .quad .Lx00865_0_s
.Lx00865_0_s:
 .string "nothing"
 xchain00839_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 100
 je .Lx00866_0
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 6
 jne .Lx00866_2
.Lx00866_1:
 mov rax, qword ptr [rbp + 10072]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 10032], 6
 mov qword ptr [rbp + 10040], rax
 jmp xchain00839_n57_α
.Lx00866_0:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 lea r9, [rbp + 10032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00866_3
.Lx00866_2:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00839_n40_α
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
.Lx00866_3:
 jmp xchain00839_n57_α
 xchain00839_n55_β:
 jmp xchain00839_n40_α
 xchain00839_n56_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9360]
 mov rdx, qword ptr [rbp + 9368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00867_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00867_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00867_3]
 lea rdx, [rip + .Lx00867_4]
 jmp rax
.Lx00867_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00867_2
.Lx00867_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00867_2
.Lx00867_1:
 call rt_faildescr@PLT
.Lx00867_2:
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain00839_n58_α
 jmp xchain00839_n58_α
 xchain00839_n56_β:
 jmp xchain00839_n58_α
.Lx00867_0:
 .quad .Lx00867_0_s
.Lx00867_0_s:
 .string "report"
# IR_LIT_INTEGER
 xchain00839_n57_α:
 mov qword ptr [rbp + 10192], 6
 mov rax, qword ptr [rip + .Lx00868_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain00839_n59_α
 xchain00839_n57_β:
 jmp xchain00839_n40_α
.Lx00868_0:
 .quad 2
# IR_PROC_VALUE
 xchain00839_n58_α:
 mov rdi, qword ptr [rip + .Lx00869_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain00839_n60_α
 xchain00839_n58_β:
 jmp xchain00839_n62_α
.Lx00869_0:
 .quad .Lx00869_0_s
.Lx00869_0_s:
 .string "globasgn"
# IR_COERCE_NUMERIC
 xchain00839_n59_α:
 mov eax, dword ptr [rbp + 10032]
 cmp eax, 7
 je .Lx00870_1
 cmp eax, 6
 jne .Lx00870_0
 mov eax, dword ptr [rbp + 10192]
 cmp eax, 6
 jne .Lx00870_0
.Lx00870_1:
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10008], rax
 jmp .Lx00870_2
.Lx00870_0:
 lea rdi, [rbp + 10032]
 lea rsi, [rbp + 10192]
 lea rdx, [rbp + 10000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00870_2:
 jmp xchain00839_n61_α
 xchain00839_n59_β:
 jmp xchain00839_n40_α
 xchain00839_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9280]
 mov rdx, qword ptr [rbp + 9288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00871_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00871_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00871_3]
 lea rdx, [rip + .Lx00871_4]
 jmp rax
.Lx00871_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00871_2
.Lx00871_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00871_2
.Lx00871_1:
 call rt_faildescr@PLT
.Lx00871_2:
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain00839_n62_α
 jmp xchain00839_n62_α
 xchain00839_n60_β:
 jmp xchain00839_n62_α
.Lx00871_0:
 .quad .Lx00871_0_s
.Lx00871_0_s:
 .string "report"
 xchain00839_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 100
 je .Lx00872_0
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 6
 jne .Lx00872_2
.Lx00872_1:
 mov rax, qword ptr [rbp + 10008]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [rbp + 9968], 6
 mov qword ptr [rbp + 9976], rax
 jmp xchain00839_n63_α
.Lx00872_0:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 lea r9, [rbp + 9968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00872_3
.Lx00872_2:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00839_n40_α
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
.Lx00872_3:
 jmp xchain00839_n63_α
 xchain00839_n61_β:
 jmp xchain00839_n40_α
# IR_PROC_VALUE
 xchain00839_n62_α:
 mov rdi, qword ptr [rip + .Lx00873_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain00839_n64_α
 xchain00839_n62_β:
 jmp xchain00839_n66_α
.Lx00873_0:
 .quad .Lx00873_0_s
.Lx00873_0_s:
 .string "statasgn"
# IR_COERCE_NUMERIC
 xchain00839_n63_α:
 mov eax, dword ptr [rbp + 9968]
 cmp eax, 7
 je .Lx00874_1
 cmp eax, 6
 jne .Lx00874_0
 mov eax, dword ptr [rbp + 9936]
 cmp eax, 6
 jne .Lx00874_0
.Lx00874_1:
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
 jmp .Lx00874_2
.Lx00874_0:
 lea rdi, [rbp + 9968]
 lea rsi, [rbp + 9936]
 lea rdx, [rbp + 9904]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00874_2:
 jmp xchain00839_n65_α
 xchain00839_n63_β:
 jmp xchain00839_n40_α
 xchain00839_n64_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00875_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00875_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00875_3]
 lea rdx, [rip + .Lx00875_4]
 jmp rax
.Lx00875_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00875_2
.Lx00875_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00875_2
.Lx00875_1:
 call rt_faildescr@PLT
.Lx00875_2:
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain00839_n66_α
 jmp xchain00839_n66_α
 xchain00839_n64_β:
 jmp xchain00839_n66_α
.Lx00875_0:
 .quad .Lx00875_0_s
.Lx00875_0_s:
 .string "report"
 xchain00839_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 100
 je .Lx00876_0
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 6
 jne .Lx00876_2
.Lx00876_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 9912]
 add rax, rcx
 mov qword ptr [rbp + 9872], 6
 mov qword ptr [rbp + 9880], rax
 jmp xchain00839_n67_α
.Lx00876_0:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9872]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00876_3
.Lx00876_2:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00839_n40_α
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
.Lx00876_3:
 jmp xchain00839_n67_α
 xchain00839_n65_β:
 jmp xchain00839_n40_α
# IR_PROC_VALUE
 xchain00839_n66_α:
 mov rdi, qword ptr [rip + .Lx00877_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 jmp xchain00839_n68_α
 xchain00839_n66_β:
 jmp xchain00839_n70_α
.Lx00877_0:
 .quad .Lx00877_0_s
.Lx00877_0_s:
 .string "loclasgn"
# IR_SUBSCRIPT x[i] variable
 xchain00839_n67_α:
 mov rdi, qword ptr [rbp + 9792]
 mov rsi, qword ptr [rbp + 9800]
 mov rdx, qword ptr [rbp + 9872]
 mov rcx, qword ptr [rbp + 9880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00839_n40_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain00839_n69_α
 xchain00839_n67_β:
 jmp xchain00839_n40_α
 xchain00839_n68_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9120]
 mov rdx, qword ptr [rbp + 9128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00878_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00878_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00878_3]
 lea rdx, [rip + .Lx00878_4]
 jmp rax
.Lx00878_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00878_2
.Lx00878_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00878_2
.Lx00878_1:
 call rt_faildescr@PLT
.Lx00878_2:
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain00839_n70_α
 jmp xchain00839_n70_α
 xchain00839_n68_β:
 jmp xchain00839_n70_α
.Lx00878_0:
 .quad .Lx00878_0_s
.Lx00878_0_s:
 .string "report"
# IR_DEREF variable -> value
 xchain00839_n69_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00839_n40_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain00839_n71_α
 xchain00839_n69_β:
 jmp xchain00839_n40_α
# IR_PROC_VALUE
 xchain00839_n70_α:
 mov rdi, qword ptr [rip + .Lx00879_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain00839_n72_α
 xchain00839_n70_β:
 jmp xchain00839_n73_α
.Lx00879_0:
 .quad .Lx00879_0_s
.Lx00879_0_s:
 .string "if0"
# IR_ASSIGN gva
 xchain00839_n71_α:
 mov rax, qword ptr [rbp + 10256]
 mov rdx, qword ptr [rbp + 10264]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain00839_n40_α
 xchain00839_n71_β:
 jmp xchain00839_n40_α
 xchain00839_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00880_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00880_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00880_3]
 lea rdx, [rip + .Lx00880_4]
 jmp rax
.Lx00880_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00880_2
.Lx00880_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00880_2
.Lx00880_1:
 call rt_faildescr@PLT
.Lx00880_2:
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain00839_n73_α
 jmp xchain00839_n73_α
 xchain00839_n72_β:
 jmp xchain00839_n73_α
.Lx00880_0:
 .quad .Lx00880_0_s
.Lx00880_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n73_α:
 mov rdi, qword ptr [rip + .Lx00881_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain00839_n74_α
 xchain00839_n73_β:
 jmp xchain00839_n75_α
.Lx00881_0:
 .quad .Lx00881_0_s
.Lx00881_0_s:
 .string "case3"
 xchain00839_n74_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8960]
 mov rdx, qword ptr [rbp + 8968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00882_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00882_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00882_3]
 lea rdx, [rip + .Lx00882_4]
 jmp rax
.Lx00882_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00882_2
.Lx00882_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00882_2
.Lx00882_1:
 call rt_faildescr@PLT
.Lx00882_2:
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain00839_n75_α
 jmp xchain00839_n75_α
 xchain00839_n74_β:
 jmp xchain00839_n75_α
.Lx00882_0:
 .quad .Lx00882_0_s
.Lx00882_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n75_α:
 mov rdi, qword ptr [rip + .Lx00883_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain00839_n76_α
 xchain00839_n75_β:
 jmp xchain00839_n77_α
.Lx00883_0:
 .quad .Lx00883_0_s
.Lx00883_0_s:
 .string "nulltest"
 xchain00839_n76_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8880]
 mov rdx, qword ptr [rbp + 8888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00884_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00884_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00884_3]
 lea rdx, [rip + .Lx00884_4]
 jmp rax
.Lx00884_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00884_2
.Lx00884_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00884_2
.Lx00884_1:
 call rt_faildescr@PLT
.Lx00884_2:
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 cmp eax, 99
 je xchain00839_n77_α
 jmp xchain00839_n77_α
 xchain00839_n76_β:
 jmp xchain00839_n77_α
.Lx00884_0:
 .quad .Lx00884_0_s
.Lx00884_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n77_α:
 mov rdi, qword ptr [rip + .Lx00885_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain00839_n78_α
 xchain00839_n77_β:
 jmp xchain00839_n79_α
.Lx00885_0:
 .quad .Lx00885_0_s
.Lx00885_0_s:
 .string "typef"
 xchain00839_n78_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00886_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00886_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00886_3]
 lea rdx, [rip + .Lx00886_4]
 jmp rax
.Lx00886_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00886_2
.Lx00886_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00886_2
.Lx00886_1:
 call rt_faildescr@PLT
.Lx00886_2:
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain00839_n79_α
 jmp xchain00839_n79_α
 xchain00839_n78_β:
 jmp xchain00839_n79_α
.Lx00886_0:
 .quad .Lx00886_0_s
.Lx00886_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n79_α:
 mov rdi, qword ptr [rip + .Lx00887_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8720], rax
 mov qword ptr [rbp + 8728], rdx
 jmp xchain00839_n80_α
 xchain00839_n79_β:
 jmp xchain00839_n81_α
.Lx00887_0:
 .quad .Lx00887_0_s
.Lx00887_0_s:
 .string "imagef"
 xchain00839_n80_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8720]
 mov rdx, qword ptr [rbp + 8728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00888_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00888_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00888_3]
 lea rdx, [rip + .Lx00888_4]
 jmp rax
.Lx00888_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00888_2
.Lx00888_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00888_2
.Lx00888_1:
 call rt_faildescr@PLT
.Lx00888_2:
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je xchain00839_n81_α
 jmp xchain00839_n81_α
 xchain00839_n80_β:
 jmp xchain00839_n81_α
.Lx00888_0:
 .quad .Lx00888_0_s
.Lx00888_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n81_α:
 mov rdi, qword ptr [rip + .Lx00889_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain00839_n82_α
 xchain00839_n81_β:
 jmp xchain00839_n83_α
.Lx00889_0:
 .quad .Lx00889_0_s
.Lx00889_0_s:
 .string "everyto"
 xchain00839_n82_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8640]
 mov rdx, qword ptr [rbp + 8648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00890_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00890_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00890_3]
 lea rdx, [rip + .Lx00890_4]
 jmp rax
.Lx00890_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00890_2
.Lx00890_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00890_2
.Lx00890_1:
 call rt_faildescr@PLT
.Lx00890_2:
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 cmp eax, 99
 je xchain00839_n83_α
 jmp xchain00839_n83_α
 xchain00839_n82_β:
 jmp xchain00839_n83_α
.Lx00890_0:
 .quad .Lx00890_0_s
.Lx00890_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n83_α:
 mov rdi, qword ptr [rip + .Lx00891_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 jmp xchain00839_n84_α
 xchain00839_n83_β:
 jmp xchain00839_n85_α
.Lx00891_0:
 .quad .Lx00891_0_s
.Lx00891_0_s:
 .string "everyalt"
 xchain00839_n84_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8560]
 mov rdx, qword ptr [rbp + 8568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00892_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00892_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00892_3]
 lea rdx, [rip + .Lx00892_4]
 jmp rax
.Lx00892_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00892_2
.Lx00892_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00892_2
.Lx00892_1:
 call rt_faildescr@PLT
.Lx00892_2:
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain00839_n85_α
 jmp xchain00839_n85_α
 xchain00839_n84_β:
 jmp xchain00839_n85_α
.Lx00892_0:
 .quad .Lx00892_0_s
.Lx00892_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n85_α:
 mov rdi, qword ptr [rip + .Lx00893_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain00839_n86_α
 xchain00839_n85_β:
 jmp xchain00839_n87_α
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "conj5"
 xchain00839_n86_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8480]
 mov rdx, qword ptr [rbp + 8488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00894_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00894_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00894_3]
 lea rdx, [rip + .Lx00894_4]
 jmp rax
.Lx00894_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00894_2
.Lx00894_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00894_2
.Lx00894_1:
 call rt_faildescr@PLT
.Lx00894_2:
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 cmp eax, 99
 je xchain00839_n87_α
 jmp xchain00839_n87_α
 xchain00839_n86_β:
 jmp xchain00839_n87_α
.Lx00894_0:
 .quad .Lx00894_0_s
.Lx00894_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n87_α:
 mov rdi, qword ptr [rip + .Lx00895_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain00839_n88_α
 xchain00839_n87_β:
 jmp xchain00839_n89_α
.Lx00895_0:
 .quad .Lx00895_0_s
.Lx00895_0_s:
 .string "nullfunc"
 xchain00839_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8400]
 mov rdx, qword ptr [rbp + 8408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00896_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00896_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00896_3]
 lea rdx, [rip + .Lx00896_4]
 jmp rax
.Lx00896_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00896_2
.Lx00896_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00896_2
.Lx00896_1:
 call rt_faildescr@PLT
.Lx00896_2:
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain00839_n89_α
 jmp xchain00839_n89_α
 xchain00839_n88_β:
 jmp xchain00839_n89_α
.Lx00896_0:
 .quad .Lx00896_0_s
.Lx00896_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n89_α:
 mov rdi, qword ptr [rip + .Lx00897_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain00839_n90_α
 xchain00839_n89_β:
 jmp xchain00839_n91_α
.Lx00897_0:
 .quad .Lx00897_0_s
.Lx00897_0_s:
 .string "listcall"
 xchain00839_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8320]
 mov rdx, qword ptr [rbp + 8328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00898_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00898_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00898_3]
 lea rdx, [rip + .Lx00898_4]
 jmp rax
.Lx00898_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00898_2
.Lx00898_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00898_2
.Lx00898_1:
 call rt_faildescr@PLT
.Lx00898_2:
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je xchain00839_n91_α
 jmp xchain00839_n91_α
 xchain00839_n90_β:
 jmp xchain00839_n91_α
.Lx00898_0:
 .quad .Lx00898_0_s
.Lx00898_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n91_α:
 mov rdi, qword ptr [rip + .Lx00899_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain00839_n92_α
 xchain00839_n91_β:
 jmp xchain00839_n93_α
.Lx00899_0:
 .quad .Lx00899_0_s
.Lx00899_0_s:
 .string "marshal"
 xchain00839_n92_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8240]
 mov rdx, qword ptr [rbp + 8248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00900_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00900_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00900_3]
 lea rdx, [rip + .Lx00900_4]
 jmp rax
.Lx00900_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00900_2
.Lx00900_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00900_2
.Lx00900_1:
 call rt_faildescr@PLT
.Lx00900_2:
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je xchain00839_n93_α
 jmp xchain00839_n93_α
 xchain00839_n92_β:
 jmp xchain00839_n93_α
.Lx00900_0:
 .quad .Lx00900_0_s
.Lx00900_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n93_α:
 mov rdi, qword ptr [rip + .Lx00901_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain00839_n94_α
 xchain00839_n93_β:
 jmp xchain00839_n95_α
.Lx00901_0:
 .quad .Lx00901_0_s
.Lx00901_0_s:
 .string "evsusp"
 xchain00839_n94_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8160]
 mov rdx, qword ptr [rbp + 8168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00902_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00902_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00902_3]
 lea rdx, [rip + .Lx00902_4]
 jmp rax
.Lx00902_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00902_2
.Lx00902_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00902_2
.Lx00902_1:
 call rt_faildescr@PLT
.Lx00902_2:
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 cmp eax, 99
 je xchain00839_n95_α
 jmp xchain00839_n95_α
 xchain00839_n94_β:
 jmp xchain00839_n95_α
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n95_α:
 mov rdi, qword ptr [rip + .Lx00903_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain00839_n96_α
 xchain00839_n95_β:
 jmp xchain00839_n97_α
.Lx00903_0:
 .quad .Lx00903_0_s
.Lx00903_0_s:
 .string "tointeger"
 xchain00839_n96_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8080]
 mov rdx, qword ptr [rbp + 8088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00904_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00904_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00904_3]
 lea rdx, [rip + .Lx00904_4]
 jmp rax
.Lx00904_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00904_2
.Lx00904_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00904_2
.Lx00904_1:
 call rt_faildescr@PLT
.Lx00904_2:
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain00839_n97_α
 jmp xchain00839_n97_α
 xchain00839_n96_β:
 jmp xchain00839_n97_α
.Lx00904_0:
 .quad .Lx00904_0_s
.Lx00904_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n97_α:
 mov rdi, qword ptr [rip + .Lx00905_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain00839_n98_α
 xchain00839_n97_β:
 jmp xchain00839_n99_α
.Lx00905_0:
 .quad .Lx00905_0_s
.Lx00905_0_s:
 .string "intcoerce"
 xchain00839_n98_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00906_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00906_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00906_3]
 lea rdx, [rip + .Lx00906_4]
 jmp rax
.Lx00906_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00906_2
.Lx00906_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00906_2
.Lx00906_1:
 call rt_faildescr@PLT
.Lx00906_2:
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain00839_n99_α
 jmp xchain00839_n99_α
 xchain00839_n98_β:
 jmp xchain00839_n99_α
.Lx00906_0:
 .quad .Lx00906_0_s
.Lx00906_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n99_α:
 mov rdi, qword ptr [rip + .Lx00907_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain00839_n00001_α
 xchain00839_n99_β:
 jmp xchain00839_n00002_α
.Lx00907_0:
 .quad .Lx00907_0_s
.Lx00907_0_s:
 .string "uplus"
 xchain00839_n00001_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7920]
 mov rdx, qword ptr [rbp + 7928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00908_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00908_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00908_3]
 lea rdx, [rip + .Lx00908_4]
 jmp rax
.Lx00908_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00908_2
.Lx00908_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00908_2
.Lx00908_1:
 call rt_faildescr@PLT
.Lx00908_2:
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 cmp eax, 99
 je xchain00839_n00002_α
 jmp xchain00839_n00002_α
 xchain00839_n00001_β:
 jmp xchain00839_n00002_α
.Lx00908_0:
 .quad .Lx00908_0_s
.Lx00908_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00002_α:
 mov rdi, qword ptr [rip + .Lx00909_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00839_n00910_α
 xchain00839_n00002_β:
 jmp xchain00839_n00911_α
.Lx00909_0:
 .quad .Lx00909_0_s
.Lx00909_0_s:
 .string "tostring"
 xchain00839_n00910_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7840]
 mov rdx, qword ptr [rbp + 7848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00912_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00912_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00912_3]
 lea rdx, [rip + .Lx00912_4]
 jmp rax
.Lx00912_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00912_2
.Lx00912_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00912_2
.Lx00912_1:
 call rt_faildescr@PLT
.Lx00912_2:
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain00839_n00911_α
 jmp xchain00839_n00911_α
 xchain00839_n00910_β:
 jmp xchain00839_n00911_α
.Lx00912_0:
 .quad .Lx00912_0_s
.Lx00912_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00911_α:
 mov rdi, qword ptr [rip + .Lx00913_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain00839_n00914_α
 xchain00839_n00911_β:
 jmp xchain00839_n00915_α
.Lx00913_0:
 .quad .Lx00913_0_s
.Lx00913_0_s:
 .string "strcoerce"
 xchain00839_n00914_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00916_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00916_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00916_3]
 lea rdx, [rip + .Lx00916_4]
 jmp rax
.Lx00916_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00916_2
.Lx00916_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00916_2
.Lx00916_1:
 call rt_faildescr@PLT
.Lx00916_2:
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain00839_n00915_α
 jmp xchain00839_n00915_α
 xchain00839_n00914_β:
 jmp xchain00839_n00915_α
.Lx00916_0:
 .quad .Lx00916_0_s
.Lx00916_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00915_α:
 mov rdi, qword ptr [rip + .Lx00917_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain00839_n00918_α
 xchain00839_n00915_β:
 jmp xchain00839_n00919_α
.Lx00917_0:
 .quad .Lx00917_0_s
.Lx00917_0_s:
 .string "absf"
 xchain00839_n00918_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7680]
 mov rdx, qword ptr [rbp + 7688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00920_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00920_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00920_3]
 lea rdx, [rip + .Lx00920_4]
 jmp rax
.Lx00920_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00920_2
.Lx00920_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00920_2
.Lx00920_1:
 call rt_faildescr@PLT
.Lx00920_2:
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain00839_n00919_α
 jmp xchain00839_n00919_α
 xchain00839_n00918_β:
 jmp xchain00839_n00919_α
.Lx00920_0:
 .quad .Lx00920_0_s
.Lx00920_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00919_α:
 mov rdi, qword ptr [rip + .Lx00921_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain00839_n00922_α
 xchain00839_n00919_β:
 jmp xchain00839_n00923_α
.Lx00921_0:
 .quad .Lx00921_0_s
.Lx00921_0_s:
 .string "intadd"
 xchain00839_n00922_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00924_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00924_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00924_3]
 lea rdx, [rip + .Lx00924_4]
 jmp rax
.Lx00924_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00924_2
.Lx00924_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00924_2
.Lx00924_1:
 call rt_faildescr@PLT
.Lx00924_2:
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain00839_n00923_α
 jmp xchain00839_n00923_α
 xchain00839_n00922_β:
 jmp xchain00839_n00923_α
.Lx00924_0:
 .quad .Lx00924_0_s
.Lx00924_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00923_α:
 mov rdi, qword ptr [rip + .Lx00925_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00839_n00003_α
 xchain00839_n00923_β:
 jmp xchain00839_n00926_α
.Lx00925_0:
 .quad .Lx00925_0_s
.Lx00925_0_s:
 .string "addfunc"
 xchain00839_n00003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7520]
 mov rdx, qword ptr [rbp + 7528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00927_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00927_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00927_3]
 lea rdx, [rip + .Lx00927_4]
 jmp rax
.Lx00927_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00927_2
.Lx00927_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00927_2
.Lx00927_1:
 call rt_faildescr@PLT
.Lx00927_2:
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain00839_n00926_α
 jmp xchain00839_n00926_α
 xchain00839_n00003_β:
 jmp xchain00839_n00926_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00926_α:
 mov rdi, qword ptr [rip + .Lx00928_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain00839_n00929_α
 xchain00839_n00926_β:
 jmp xchain00839_n00004_α
.Lx00928_0:
 .quad .Lx00928_0_s
.Lx00928_0_s:
 .string "intpow"
 xchain00839_n00929_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7440]
 mov rdx, qword ptr [rbp + 7448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00930_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00930_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00930_3]
 lea rdx, [rip + .Lx00930_4]
 jmp rax
.Lx00930_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00930_2
.Lx00930_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00930_2
.Lx00930_1:
 call rt_faildescr@PLT
.Lx00930_2:
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain00839_n00004_α
 jmp xchain00839_n00004_α
 xchain00839_n00929_β:
 jmp xchain00839_n00004_α
.Lx00930_0:
 .quad .Lx00930_0_s
.Lx00930_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00004_α:
 mov rdi, qword ptr [rip + .Lx00931_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain00839_n00932_α
 xchain00839_n00004_β:
 jmp xchain00839_n00005_α
.Lx00931_0:
 .quad .Lx00931_0_s
.Lx00931_0_s:
 .string "intcmp"
 xchain00839_n00932_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7360]
 mov rdx, qword ptr [rbp + 7368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00933_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00933_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00933_3]
 lea rdx, [rip + .Lx00933_4]
 jmp rax
.Lx00933_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00933_2
.Lx00933_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00933_2
.Lx00933_1:
 call rt_faildescr@PLT
.Lx00933_2:
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain00839_n00005_α
 jmp xchain00839_n00005_α
 xchain00839_n00932_β:
 jmp xchain00839_n00005_α
.Lx00933_0:
 .quad .Lx00933_0_s
.Lx00933_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00005_α:
 mov rdi, qword ptr [rip + .Lx00934_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain00839_n00935_α
 xchain00839_n00005_β:
 jmp xchain00839_n00936_α
.Lx00934_0:
 .quad .Lx00934_0_s
.Lx00934_0_s:
 .string "rfact0"
 xchain00839_n00935_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7280]
 mov rdx, qword ptr [rbp + 7288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00937_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00937_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00937_3]
 lea rdx, [rip + .Lx00937_4]
 jmp rax
.Lx00937_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00937_2
.Lx00937_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00937_2
.Lx00937_1:
 call rt_faildescr@PLT
.Lx00937_2:
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain00839_n00936_α
 jmp xchain00839_n00936_α
 xchain00839_n00935_β:
 jmp xchain00839_n00936_α
.Lx00937_0:
 .quad .Lx00937_0_s
.Lx00937_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00936_α:
 mov rdi, qword ptr [rip + .Lx00938_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain00839_n00939_α
 xchain00839_n00936_β:
 jmp xchain00839_n00006_α
.Lx00938_0:
 .quad .Lx00938_0_s
.Lx00938_0_s:
 .string "rfact10"
 xchain00839_n00939_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7200]
 mov rdx, qword ptr [rbp + 7208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00940_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00940_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00940_3]
 lea rdx, [rip + .Lx00940_4]
 jmp rax
.Lx00940_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00940_2
.Lx00940_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00940_2
.Lx00940_1:
 call rt_faildescr@PLT
.Lx00940_2:
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain00839_n00006_α
 jmp xchain00839_n00006_α
 xchain00839_n00939_β:
 jmp xchain00839_n00006_α
.Lx00940_0:
 .quad .Lx00940_0_s
.Lx00940_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00006_α:
 mov rdi, qword ptr [rip + .Lx00941_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain00839_n00942_α
 xchain00839_n00006_β:
 jmp xchain00839_n00943_α
.Lx00941_0:
 .quad .Lx00941_0_s
.Lx00941_0_s:
 .string "rfib5"
 xchain00839_n00942_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7120]
 mov rdx, qword ptr [rbp + 7128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00944_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00944_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00944_3]
 lea rdx, [rip + .Lx00944_4]
 jmp rax
.Lx00944_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00944_2
.Lx00944_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00944_2
.Lx00944_1:
 call rt_faildescr@PLT
.Lx00944_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain00839_n00943_α
 jmp xchain00839_n00943_α
 xchain00839_n00942_β:
 jmp xchain00839_n00943_α
.Lx00944_0:
 .quad .Lx00944_0_s
.Lx00944_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00943_α:
 mov rdi, qword ptr [rip + .Lx00945_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain00839_n00946_α
 xchain00839_n00943_β:
 jmp xchain00839_n00947_α
.Lx00945_0:
 .quad .Lx00945_0_s
.Lx00945_0_s:
 .string "prslow"
 xchain00839_n00946_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7040]
 mov rdx, qword ptr [rbp + 7048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00948_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00948_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00948_3]
 lea rdx, [rip + .Lx00948_4]
 jmp rax
.Lx00948_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00948_2
.Lx00948_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00948_2
.Lx00948_1:
 call rt_faildescr@PLT
.Lx00948_2:
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain00839_n00947_α
 jmp xchain00839_n00947_α
 xchain00839_n00946_β:
 jmp xchain00839_n00947_α
.Lx00948_0:
 .quad .Lx00948_0_s
.Lx00948_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00947_α:
 mov rdi, qword ptr [rip + .Lx00949_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain00839_n00950_α
 xchain00839_n00947_β:
 jmp xchain00839_n00951_α
.Lx00949_0:
 .quad .Lx00949_0_s
.Lx00949_0_s:
 .string "toreal"
 xchain00839_n00950_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6960]
 mov rdx, qword ptr [rbp + 6968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00952_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00952_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00952_3]
 lea rdx, [rip + .Lx00952_4]
 jmp rax
.Lx00952_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00952_2
.Lx00952_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00952_2
.Lx00952_1:
 call rt_faildescr@PLT
.Lx00952_2:
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain00839_n00951_α
 jmp xchain00839_n00951_α
 xchain00839_n00950_β:
 jmp xchain00839_n00951_α
.Lx00952_0:
 .quad .Lx00952_0_s
.Lx00952_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00951_α:
 mov rdi, qword ptr [rip + .Lx00953_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain00839_n00954_α
 xchain00839_n00951_β:
 jmp xchain00839_n00955_α
.Lx00953_0:
 .quad .Lx00953_0_s
.Lx00953_0_s:
 .string "realcoerce"
 xchain00839_n00954_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6880]
 mov rdx, qword ptr [rbp + 6888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00956_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00956_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00956_3]
 lea rdx, [rip + .Lx00956_4]
 jmp rax
.Lx00956_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00956_2
.Lx00956_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00956_2
.Lx00956_1:
 call rt_faildescr@PLT
.Lx00956_2:
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je xchain00839_n00955_α
 jmp xchain00839_n00955_α
 xchain00839_n00954_β:
 jmp xchain00839_n00955_α
.Lx00956_0:
 .quad .Lx00956_0_s
.Lx00956_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00955_α:
 mov rdi, qword ptr [rip + .Lx00957_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain00839_n00958_α
 xchain00839_n00955_β:
 jmp xchain00839_n00959_α
.Lx00957_0:
 .quad .Lx00957_0_s
.Lx00957_0_s:
 .string "uplusr"
 xchain00839_n00958_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6800]
 mov rdx, qword ptr [rbp + 6808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00960_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00960_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00960_3]
 lea rdx, [rip + .Lx00960_4]
 jmp rax
.Lx00960_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00960_2
.Lx00960_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00960_2
.Lx00960_1:
 call rt_faildescr@PLT
.Lx00960_2:
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain00839_n00959_α
 jmp xchain00839_n00959_α
 xchain00839_n00958_β:
 jmp xchain00839_n00959_α
.Lx00960_0:
 .quad .Lx00960_0_s
.Lx00960_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00959_α:
 mov rdi, qword ptr [rip + .Lx00961_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00839_n00007_α
 xchain00839_n00959_β:
 jmp xchain00839_n00962_α
.Lx00961_0:
 .quad .Lx00961_0_s
.Lx00961_0_s:
 .string "rtostring"
 xchain00839_n00007_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6720]
 mov rdx, qword ptr [rbp + 6728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00963_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00963_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00963_3]
 lea rdx, [rip + .Lx00963_4]
 jmp rax
.Lx00963_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00963_2
.Lx00963_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00963_2
.Lx00963_1:
 call rt_faildescr@PLT
.Lx00963_2:
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain00839_n00962_α
 jmp xchain00839_n00962_α
 xchain00839_n00007_β:
 jmp xchain00839_n00962_α
.Lx00963_0:
 .quad .Lx00963_0_s
.Lx00963_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00962_α:
 mov rdi, qword ptr [rip + .Lx00964_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain00839_n00965_α
 xchain00839_n00962_β:
 jmp xchain00839_n00966_α
.Lx00964_0:
 .quad .Lx00964_0_s
.Lx00964_0_s:
 .string "strcoercer"
 xchain00839_n00965_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6640]
 mov rdx, qword ptr [rbp + 6648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00967_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00967_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00967_3]
 lea rdx, [rip + .Lx00967_4]
 jmp rax
.Lx00967_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00967_2
.Lx00967_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00967_2
.Lx00967_1:
 call rt_faildescr@PLT
.Lx00967_2:
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain00839_n00966_α
 jmp xchain00839_n00966_α
 xchain00839_n00965_β:
 jmp xchain00839_n00966_α
.Lx00967_0:
 .quad .Lx00967_0_s
.Lx00967_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00966_α:
 mov rdi, qword ptr [rip + .Lx00968_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00839_n00969_α
 xchain00839_n00966_β:
 jmp xchain00839_n00970_α
.Lx00968_0:
 .quad .Lx00968_0_s
.Lx00968_0_s:
 .string "realcmp"
 xchain00839_n00969_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00971_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00971_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00971_3]
 lea rdx, [rip + .Lx00971_4]
 jmp rax
.Lx00971_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00971_2
.Lx00971_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00971_2
.Lx00971_1:
 call rt_faildescr@PLT
.Lx00971_2:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain00839_n00970_α
 jmp xchain00839_n00970_α
 xchain00839_n00969_β:
 jmp xchain00839_n00970_α
.Lx00971_0:
 .quad .Lx00971_0_s
.Lx00971_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00970_α:
 mov rdi, qword ptr [rip + .Lx00972_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain00839_n00008_α
 xchain00839_n00970_β:
 jmp xchain00839_n00973_α
.Lx00972_0:
 .quad .Lx00972_0_s
.Lx00972_0_s:
 .string "sqrtf"
 xchain00839_n00008_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6480]
 mov rdx, qword ptr [rbp + 6488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00974_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00974_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00974_3]
 lea rdx, [rip + .Lx00974_4]
 jmp rax
.Lx00974_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00974_2
.Lx00974_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00974_2
.Lx00974_1:
 call rt_faildescr@PLT
.Lx00974_2:
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain00839_n00973_α
 jmp xchain00839_n00973_α
 xchain00839_n00008_β:
 jmp xchain00839_n00973_α
.Lx00974_0:
 .quad .Lx00974_0_s
.Lx00974_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00973_α:
 mov rdi, qword ptr [rip + .Lx00975_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00839_n00976_α
 xchain00839_n00973_β:
 jmp xchain00839_n00009_α
.Lx00975_0:
 .quad .Lx00975_0_s
.Lx00975_0_s:
 .string "cosf"
 xchain00839_n00976_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6400]
 mov rdx, qword ptr [rbp + 6408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00977_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00977_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00977_3]
 lea rdx, [rip + .Lx00977_4]
 jmp rax
.Lx00977_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00977_2
.Lx00977_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00977_2
.Lx00977_1:
 call rt_faildescr@PLT
.Lx00977_2:
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain00839_n00009_α
 jmp xchain00839_n00009_α
 xchain00839_n00976_β:
 jmp xchain00839_n00009_α
.Lx00977_0:
 .quad .Lx00977_0_s
.Lx00977_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00009_α:
 mov rdi, qword ptr [rip + .Lx00978_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00839_n00979_α
 xchain00839_n00009_β:
 jmp xchain00839_n00980_α
.Lx00978_0:
 .quad .Lx00978_0_s
.Lx00978_0_s:
 .string "logf"
 xchain00839_n00979_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6320]
 mov rdx, qword ptr [rbp + 6328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00981_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00981_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00981_3]
 lea rdx, [rip + .Lx00981_4]
 jmp rax
.Lx00981_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00981_2
.Lx00981_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00981_2
.Lx00981_1:
 call rt_faildescr@PLT
.Lx00981_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain00839_n00980_α
 jmp xchain00839_n00980_α
 xchain00839_n00979_β:
 jmp xchain00839_n00980_α
.Lx00981_0:
 .quad .Lx00981_0_s
.Lx00981_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00980_α:
 mov rdi, qword ptr [rip + .Lx00982_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00839_n00010_α
 xchain00839_n00980_β:
 jmp xchain00839_n00983_α
.Lx00982_0:
 .quad .Lx00982_0_s
.Lx00982_0_s:
 .string "charf"
 xchain00839_n00010_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00984_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00984_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00984_3]
 lea rdx, [rip + .Lx00984_4]
 jmp rax
.Lx00984_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00984_2
.Lx00984_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00984_2
.Lx00984_1:
 call rt_faildescr@PLT
.Lx00984_2:
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00839_n00983_α
 jmp xchain00839_n00983_α
 xchain00839_n00010_β:
 jmp xchain00839_n00983_α
.Lx00984_0:
 .quad .Lx00984_0_s
.Lx00984_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00983_α:
 mov rdi, qword ptr [rip + .Lx00985_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain00839_n00011_α
 xchain00839_n00983_β:
 jmp xchain00839_n00986_α
.Lx00985_0:
 .quad .Lx00985_0_s
.Lx00985_0_s:
 .string "ordf"
 xchain00839_n00011_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00987_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00987_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00987_3]
 lea rdx, [rip + .Lx00987_4]
 jmp rax
.Lx00987_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00987_2
.Lx00987_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00987_2
.Lx00987_1:
 call rt_faildescr@PLT
.Lx00987_2:
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain00839_n00986_α
 jmp xchain00839_n00986_α
 xchain00839_n00011_β:
 jmp xchain00839_n00986_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00986_α:
 mov rdi, qword ptr [rip + .Lx00988_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00839_n00012_α
 xchain00839_n00986_β:
 jmp xchain00839_n00989_α
.Lx00988_0:
 .quad .Lx00988_0_s
.Lx00988_0_s:
 .string "strsize"
 xchain00839_n00012_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6080]
 mov rdx, qword ptr [rbp + 6088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00990_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00990_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00990_3]
 lea rdx, [rip + .Lx00990_4]
 jmp rax
.Lx00990_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00990_2
.Lx00990_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00990_2
.Lx00990_1:
 call rt_faildescr@PLT
.Lx00990_2:
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 cmp eax, 99
 je xchain00839_n00989_α
 jmp xchain00839_n00989_α
 xchain00839_n00012_β:
 jmp xchain00839_n00989_α
.Lx00990_0:
 .quad .Lx00990_0_s
.Lx00990_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00989_α:
 mov rdi, qword ptr [rip + .Lx00991_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00839_n00992_α
 xchain00839_n00989_β:
 jmp xchain00839_n00993_α
.Lx00991_0:
 .quad .Lx00991_0_s
.Lx00991_0_s:
 .string "strpick"
 xchain00839_n00992_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6000]
 mov rdx, qword ptr [rbp + 6008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00994_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00994_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00994_3]
 lea rdx, [rip + .Lx00994_4]
 jmp rax
.Lx00994_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00994_2
.Lx00994_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00994_2
.Lx00994_1:
 call rt_faildescr@PLT
.Lx00994_2:
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 cmp eax, 99
 je xchain00839_n00993_α
 jmp xchain00839_n00993_α
 xchain00839_n00992_β:
 jmp xchain00839_n00993_α
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00993_α:
 mov rdi, qword ptr [rip + .Lx00995_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain00839_n00996_α
 xchain00839_n00993_β:
 jmp xchain00839_n00013_α
.Lx00995_0:
 .quad .Lx00995_0_s
.Lx00995_0_s:
 .string "strbang"
 xchain00839_n00996_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5920]
 mov rdx, qword ptr [rbp + 5928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00997_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00997_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00997_3]
 lea rdx, [rip + .Lx00997_4]
 jmp rax
.Lx00997_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00997_2
.Lx00997_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00997_2
.Lx00997_1:
 call rt_faildescr@PLT
.Lx00997_2:
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain00839_n00013_α
 jmp xchain00839_n00013_α
 xchain00839_n00996_β:
 jmp xchain00839_n00013_α
.Lx00997_0:
 .quad .Lx00997_0_s
.Lx00997_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00013_α:
 mov rdi, qword ptr [rip + .Lx00998_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00839_n00014_α
 xchain00839_n00013_β:
 jmp xchain00839_n00999_α
.Lx00998_0:
 .quad .Lx00998_0_s
.Lx00998_0_s:
 .string "strsub"
 xchain00839_n00014_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01000_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01000_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01000_3]
 lea rdx, [rip + .Lx01000_4]
 jmp rax
.Lx01000_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01000_2
.Lx01000_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01000_2
.Lx01000_1:
 call rt_faildescr@PLT
.Lx01000_2:
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain00839_n00999_α
 jmp xchain00839_n00999_α
 xchain00839_n00014_β:
 jmp xchain00839_n00999_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00999_α:
 mov rdi, qword ptr [rip + .Lx01001_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain00839_n00015_α
 xchain00839_n00999_β:
 jmp xchain00839_n00016_α
.Lx01001_0:
 .quad .Lx01001_0_s
.Lx01001_0_s:
 .string "substr"
 xchain00839_n00015_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5760]
 mov rdx, qword ptr [rbp + 5768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01002_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01002_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01002_3]
 lea rdx, [rip + .Lx01002_4]
 jmp rax
.Lx01002_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01002_2
.Lx01002_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01002_2
.Lx01002_1:
 call rt_faildescr@PLT
.Lx01002_2:
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain00839_n00016_α
 jmp xchain00839_n00016_α
 xchain00839_n00015_β:
 jmp xchain00839_n00016_α
.Lx01002_0:
 .quad .Lx01002_0_s
.Lx01002_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00016_α:
 mov rdi, qword ptr [rip + .Lx01003_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain00839_n01004_α
 xchain00839_n00016_β:
 jmp xchain00839_n01005_α
.Lx01003_0:
 .quad .Lx01003_0_s
.Lx01003_0_s:
 .string "subsasg"
 xchain00839_n01004_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5680]
 mov rdx, qword ptr [rbp + 5688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01006_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01006_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01006_3]
 lea rdx, [rip + .Lx01006_4]
 jmp rax
.Lx01006_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01006_2
.Lx01006_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01006_2
.Lx01006_1:
 call rt_faildescr@PLT
.Lx01006_2:
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain00839_n01005_α
 jmp xchain00839_n01005_α
 xchain00839_n01004_β:
 jmp xchain00839_n01005_α
.Lx01006_0:
 .quad .Lx01006_0_s
.Lx01006_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01005_α:
 mov rdi, qword ptr [rip + .Lx01007_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00839_n00017_α
 xchain00839_n01005_β:
 jmp xchain00839_n01008_α
.Lx01007_0:
 .quad .Lx01007_0_s
.Lx01007_0_s:
 .string "strcmp"
 xchain00839_n00017_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5600]
 mov rdx, qword ptr [rbp + 5608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01009_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01009_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01009_3]
 lea rdx, [rip + .Lx01009_4]
 jmp rax
.Lx01009_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01009_2
.Lx01009_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01009_2
.Lx01009_1:
 call rt_faildescr@PLT
.Lx01009_2:
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain00839_n01008_α
 jmp xchain00839_n01008_α
 xchain00839_n00017_β:
 jmp xchain00839_n01008_α
.Lx01009_0:
 .quad .Lx01009_0_s
.Lx01009_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01008_α:
 mov rdi, qword ptr [rip + .Lx01010_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain00839_n01011_α
 xchain00839_n01008_β:
 jmp xchain00839_n01012_α
.Lx01010_0:
 .quad .Lx01010_0_s
.Lx01010_0_s:
 .string "strident"
 xchain00839_n01011_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5520]
 mov rdx, qword ptr [rbp + 5528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01013_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01013_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01013_3]
 lea rdx, [rip + .Lx01013_4]
 jmp rax
.Lx01013_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01013_2
.Lx01013_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01013_2
.Lx01013_1:
 call rt_faildescr@PLT
.Lx01013_2:
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain00839_n01012_α
 jmp xchain00839_n01012_α
 xchain00839_n01011_β:
 jmp xchain00839_n01012_α
.Lx01013_0:
 .quad .Lx01013_0_s
.Lx01013_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01012_α:
 mov rdi, qword ptr [rip + .Lx01014_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain00839_n01015_α
 xchain00839_n01012_β:
 jmp xchain00839_n00018_α
.Lx01014_0:
 .quad .Lx01014_0_s
.Lx01014_0_s:
 .string "concat"
 xchain00839_n01015_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5440]
 mov rdx, qword ptr [rbp + 5448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01016_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01016_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01016_3]
 lea rdx, [rip + .Lx01016_4]
 jmp rax
.Lx01016_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01016_2
.Lx01016_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01016_2
.Lx01016_1:
 call rt_faildescr@PLT
.Lx01016_2:
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain00839_n00018_α
 jmp xchain00839_n00018_α
 xchain00839_n01015_β:
 jmp xchain00839_n00018_α
.Lx01016_0:
 .quad .Lx01016_0_s
.Lx01016_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00018_α:
 mov rdi, qword ptr [rip + .Lx01017_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain00839_n01018_α
 xchain00839_n00018_β:
 jmp xchain00839_n01019_α
.Lx01017_0:
 .quad .Lx01017_0_s
.Lx01017_0_s:
 .string "reversef"
 xchain00839_n01018_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01020_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01020_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01020_3]
 lea rdx, [rip + .Lx01020_4]
 jmp rax
.Lx01020_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01020_2
.Lx01020_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01020_2
.Lx01020_1:
 call rt_faildescr@PLT
.Lx01020_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain00839_n01019_α
 jmp xchain00839_n01019_α
 xchain00839_n01018_β:
 jmp xchain00839_n01019_α
.Lx01020_0:
 .quad .Lx01020_0_s
.Lx01020_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01019_α:
 mov rdi, qword ptr [rip + .Lx01021_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain00839_n01022_α
 xchain00839_n01019_β:
 jmp xchain00839_n00019_α
.Lx01021_0:
 .quad .Lx01021_0_s
.Lx01021_0_s:
 .string "trimf"
 xchain00839_n01022_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01023_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01023_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01023_3]
 lea rdx, [rip + .Lx01023_4]
 jmp rax
.Lx01023_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01023_2
.Lx01023_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01023_2
.Lx01023_1:
 call rt_faildescr@PLT
.Lx01023_2:
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain00839_n00019_α
 jmp xchain00839_n00019_α
 xchain00839_n01022_β:
 jmp xchain00839_n00019_α
.Lx01023_0:
 .quad .Lx01023_0_s
.Lx01023_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00019_α:
 mov rdi, qword ptr [rip + .Lx01024_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain00839_n00020_α
 xchain00839_n00019_β:
 jmp xchain00839_n01025_α
.Lx01024_0:
 .quad .Lx01024_0_s
.Lx01024_0_s:
 .string "replf"
 xchain00839_n00020_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5200]
 mov rdx, qword ptr [rbp + 5208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01026_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01026_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01026_3]
 lea rdx, [rip + .Lx01026_4]
 jmp rax
.Lx01026_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01026_2
.Lx01026_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01026_2
.Lx01026_1:
 call rt_faildescr@PLT
.Lx01026_2:
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain00839_n01025_α
 jmp xchain00839_n01025_α
 xchain00839_n00020_β:
 jmp xchain00839_n01025_α
.Lx01026_0:
 .quad .Lx01026_0_s
.Lx01026_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01025_α:
 mov rdi, qword ptr [rip + .Lx01027_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain00839_n01028_α
 xchain00839_n01025_β:
 jmp xchain00839_n01029_α
.Lx01027_0:
 .quad .Lx01027_0_s
.Lx01027_0_s:
 .string "leftf"
 xchain00839_n01028_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01030_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01030_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01030_3]
 lea rdx, [rip + .Lx01030_4]
 jmp rax
.Lx01030_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01030_2
.Lx01030_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01030_2
.Lx01030_1:
 call rt_faildescr@PLT
.Lx01030_2:
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain00839_n01029_α
 jmp xchain00839_n01029_α
 xchain00839_n01028_β:
 jmp xchain00839_n01029_α
.Lx01030_0:
 .quad .Lx01030_0_s
.Lx01030_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01029_α:
 mov rdi, qword ptr [rip + .Lx01031_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain00839_n01032_α
 xchain00839_n01029_β:
 jmp xchain00839_n00021_α
.Lx01031_0:
 .quad .Lx01031_0_s
.Lx01031_0_s:
 .string "centerf"
 xchain00839_n01032_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01033_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01033_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01033_3]
 lea rdx, [rip + .Lx01033_4]
 jmp rax
.Lx01033_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01033_2
.Lx01033_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01033_2
.Lx01033_1:
 call rt_faildescr@PLT
.Lx01033_2:
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain00839_n00021_α
 jmp xchain00839_n00021_α
 xchain00839_n01032_β:
 jmp xchain00839_n00021_α
.Lx01033_0:
 .quad .Lx01033_0_s
.Lx01033_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00021_α:
 mov rdi, qword ptr [rip + .Lx01034_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain00839_n00022_α
 xchain00839_n00021_β:
 jmp xchain00839_n00023_α
.Lx01034_0:
 .quad .Lx01034_0_s
.Lx01034_0_s:
 .string "rightf"
 xchain00839_n00022_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01035_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01035_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01035_3]
 lea rdx, [rip + .Lx01035_4]
 jmp rax
.Lx01035_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01035_2
.Lx01035_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01035_2
.Lx01035_1:
 call rt_faildescr@PLT
.Lx01035_2:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain00839_n00023_α
 jmp xchain00839_n00023_α
 xchain00839_n00022_β:
 jmp xchain00839_n00023_α
.Lx01035_0:
 .quad .Lx01035_0_s
.Lx01035_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00023_α:
 mov rdi, qword ptr [rip + .Lx01036_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain00839_n01037_α
 xchain00839_n00023_β:
 jmp xchain00839_n01038_α
.Lx01036_0:
 .quad .Lx01036_0_s
.Lx01036_0_s:
 .string "entabf"
 xchain00839_n01037_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01039_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01039_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01039_3]
 lea rdx, [rip + .Lx01039_4]
 jmp rax
.Lx01039_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01039_2
.Lx01039_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01039_2
.Lx01039_1:
 call rt_faildescr@PLT
.Lx01039_2:
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp eax, 99
 je xchain00839_n01038_α
 jmp xchain00839_n01038_α
 xchain00839_n01037_β:
 jmp xchain00839_n01038_α
.Lx01039_0:
 .quad .Lx01039_0_s
.Lx01039_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01038_α:
 mov rdi, qword ptr [rip + .Lx01040_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00839_n01041_α
 xchain00839_n01038_β:
 jmp xchain00839_n00024_α
.Lx01040_0:
 .quad .Lx01040_0_s
.Lx01040_0_s:
 .string "detabf"
 xchain00839_n01041_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01042_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01042_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01042_3]
 lea rdx, [rip + .Lx01042_4]
 jmp rax
.Lx01042_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01042_2
.Lx01042_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01042_2
.Lx01042_1:
 call rt_faildescr@PLT
.Lx01042_2:
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain00839_n00024_α
 jmp xchain00839_n00024_α
 xchain00839_n01041_β:
 jmp xchain00839_n00024_α
.Lx01042_0:
 .quad .Lx01042_0_s
.Lx01042_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00024_α:
 mov rdi, qword ptr [rip + .Lx01043_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00839_n00025_α
 xchain00839_n00024_β:
 jmp xchain00839_n01044_α
.Lx01043_0:
 .quad .Lx01043_0_s
.Lx01043_0_s:
 .string "mapf"
 xchain00839_n00025_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01045_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01045_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01045_3]
 lea rdx, [rip + .Lx01045_4]
 jmp rax
.Lx01045_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01045_2
.Lx01045_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01045_2
.Lx01045_1:
 call rt_faildescr@PLT
.Lx01045_2:
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain00839_n01044_α
 jmp xchain00839_n01044_α
 xchain00839_n00025_β:
 jmp xchain00839_n01044_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01044_α:
 mov rdi, qword ptr [rip + .Lx01046_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00839_n01047_α
 xchain00839_n01044_β:
 jmp xchain00839_n01048_α
.Lx01046_0:
 .quad .Lx01046_0_s
.Lx01046_0_s:
 .string "map1"
 xchain00839_n01047_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01049_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01049_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01049_3]
 lea rdx, [rip + .Lx01049_4]
 jmp rax
.Lx01049_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01049_2
.Lx01049_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01049_2
.Lx01049_1:
 call rt_faildescr@PLT
.Lx01049_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain00839_n01048_α
 jmp xchain00839_n01048_α
 xchain00839_n01047_β:
 jmp xchain00839_n01048_α
.Lx01049_0:
 .quad .Lx01049_0_s
.Lx01049_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01048_α:
 mov rdi, qword ptr [rip + .Lx01050_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00839_n01051_α
 xchain00839_n01048_β:
 jmp xchain00839_n00026_α
.Lx01050_0:
 .quad .Lx01050_0_s
.Lx01050_0_s:
 .string "map2"
 xchain00839_n01051_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01052_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01052_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01052_3]
 lea rdx, [rip + .Lx01052_4]
 jmp rax
.Lx01052_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01052_2
.Lx01052_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01052_2
.Lx01052_1:
 call rt_faildescr@PLT
.Lx01052_2:
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain00839_n00026_α
 jmp xchain00839_n00026_α
 xchain00839_n01051_β:
 jmp xchain00839_n00026_α
.Lx01052_0:
 .quad .Lx01052_0_s
.Lx01052_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00026_α:
 mov rdi, qword ptr [rip + .Lx01053_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00839_n00027_α
 xchain00839_n00026_β:
 jmp xchain00839_n00028_α
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "tablemap"
 xchain00839_n00027_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01054_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01054_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01054_3]
 lea rdx, [rip + .Lx01054_4]
 jmp rax
.Lx01054_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01054_2
.Lx01054_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01054_2
.Lx01054_1:
 call rt_faildescr@PLT
.Lx01054_2:
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain00839_n00028_α
 jmp xchain00839_n00028_α
 xchain00839_n00027_β:
 jmp xchain00839_n00028_α
.Lx01054_0:
 .quad .Lx01054_0_s
.Lx01054_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00028_α:
 mov rdi, qword ptr [rip + .Lx01055_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00839_n01056_α
 xchain00839_n00028_β:
 jmp xchain00839_n01057_α
.Lx01055_0:
 .quad .Lx01055_0_s
.Lx01055_0_s:
 .string "listmap"
 xchain00839_n01056_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01058_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01058_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01058_3]
 lea rdx, [rip + .Lx01058_4]
 jmp rax
.Lx01058_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01058_2
.Lx01058_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01058_2
.Lx01058_1:
 call rt_faildescr@PLT
.Lx01058_2:
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain00839_n01057_α
 jmp xchain00839_n01057_α
 xchain00839_n01056_β:
 jmp xchain00839_n01057_α
.Lx01058_0:
 .quad .Lx01058_0_s
.Lx01058_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01057_α:
 mov rdi, qword ptr [rip + .Lx01059_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain00839_n01060_α
 xchain00839_n01057_β:
 jmp xchain00839_n00029_α
.Lx01059_0:
 .quad .Lx01059_0_s
.Lx01059_0_s:
 .string "nullscan"
 xchain00839_n01060_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01061_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01061_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01061_3]
 lea rdx, [rip + .Lx01061_4]
 jmp rax
.Lx01061_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01061_2
.Lx01061_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01061_2
.Lx01061_1:
 call rt_faildescr@PLT
.Lx01061_2:
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je xchain00839_n00029_α
 jmp xchain00839_n00029_α
 xchain00839_n01060_β:
 jmp xchain00839_n00029_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00029_α:
 mov rdi, qword ptr [rip + .Lx01062_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00839_n00030_α
 xchain00839_n00029_β:
 jmp xchain00839_n01063_α
.Lx01062_0:
 .quad .Lx01062_0_s
.Lx01062_0_s:
 .string "movef"
 xchain00839_n00030_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01064_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01064_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01064_3]
 lea rdx, [rip + .Lx01064_4]
 jmp rax
.Lx01064_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01064_2
.Lx01064_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01064_2
.Lx01064_1:
 call rt_faildescr@PLT
.Lx01064_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain00839_n01063_α
 jmp xchain00839_n01063_α
 xchain00839_n00030_β:
 jmp xchain00839_n01063_α
.Lx01064_0:
 .quad .Lx01064_0_s
.Lx01064_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01063_α:
 mov rdi, qword ptr [rip + .Lx01065_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00839_n01066_α
 xchain00839_n01063_β:
 jmp xchain00839_n01067_α
.Lx01065_0:
 .quad .Lx01065_0_s
.Lx01065_0_s:
 .string "mov11"
 xchain00839_n01066_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4160]
 mov rdx, qword ptr [rbp + 4168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01068_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01068_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01068_3]
 lea rdx, [rip + .Lx01068_4]
 jmp rax
.Lx01068_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01068_2
.Lx01068_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01068_2
.Lx01068_1:
 call rt_faildescr@PLT
.Lx01068_2:
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00839_n01067_α
 jmp xchain00839_n01067_α
 xchain00839_n01066_β:
 jmp xchain00839_n01067_α
.Lx01068_0:
 .quad .Lx01068_0_s
.Lx01068_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01067_α:
 mov rdi, qword ptr [rip + .Lx01069_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00839_n01070_α
 xchain00839_n01067_β:
 jmp xchain00839_n00031_α
.Lx01069_0:
 .quad .Lx01069_0_s
.Lx01069_0_s:
 .string "pos11"
 xchain00839_n01070_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01071_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01071_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01071_3]
 lea rdx, [rip + .Lx01071_4]
 jmp rax
.Lx01071_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01071_2
.Lx01071_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01071_2
.Lx01071_1:
 call rt_faildescr@PLT
.Lx01071_2:
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain00839_n00031_α
 jmp xchain00839_n00031_α
 xchain00839_n01070_β:
 jmp xchain00839_n00031_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00031_α:
 mov rdi, qword ptr [rip + .Lx01072_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00839_n00032_α
 xchain00839_n00031_β:
 jmp xchain00839_n00033_α
.Lx01072_0:
 .quad .Lx01072_0_s
.Lx01072_0_s:
 .string "tabf"
 xchain00839_n00032_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01073_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01073_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01073_3]
 lea rdx, [rip + .Lx01073_4]
 jmp rax
.Lx01073_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01073_2
.Lx01073_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01073_2
.Lx01073_1:
 call rt_faildescr@PLT
.Lx01073_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00839_n00033_α
 jmp xchain00839_n00033_α
 xchain00839_n00032_β:
 jmp xchain00839_n00033_α
.Lx01073_0:
 .quad .Lx01073_0_s
.Lx01073_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00033_α:
 mov rdi, qword ptr [rip + .Lx01074_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain00839_n01075_α
 xchain00839_n00033_β:
 jmp xchain00839_n01076_α
.Lx01074_0:
 .quad .Lx01074_0_s
.Lx01074_0_s:
 .string "matchf"
 xchain00839_n01075_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01077_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01077_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01077_3]
 lea rdx, [rip + .Lx01077_4]
 jmp rax
.Lx01077_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01077_2
.Lx01077_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01077_2
.Lx01077_1:
 call rt_faildescr@PLT
.Lx01077_2:
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain00839_n01076_α
 jmp xchain00839_n01076_α
 xchain00839_n01075_β:
 jmp xchain00839_n01076_α
.Lx01077_0:
 .quad .Lx01077_0_s
.Lx01077_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01076_α:
 mov rdi, qword ptr [rip + .Lx01078_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00839_n01079_α
 xchain00839_n01076_β:
 jmp xchain00839_n00034_α
.Lx01078_0:
 .quad .Lx01078_0_s
.Lx01078_0_s:
 .string "tabmat"
 xchain00839_n01079_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3840]
 mov rdx, qword ptr [rbp + 3848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01080_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01080_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01080_3]
 lea rdx, [rip + .Lx01080_4]
 jmp rax
.Lx01080_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01080_2
.Lx01080_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01080_2
.Lx01080_1:
 call rt_faildescr@PLT
.Lx01080_2:
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je xchain00839_n00034_α
 jmp xchain00839_n00034_α
 xchain00839_n01079_β:
 jmp xchain00839_n00034_α
.Lx01080_0:
 .quad .Lx01080_0_s
.Lx01080_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00034_α:
 mov rdi, qword ptr [rip + .Lx01081_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00839_n00035_α
 xchain00839_n00034_β:
 jmp xchain00839_n01082_α
.Lx01081_0:
 .quad .Lx01081_0_s
.Lx01081_0_s:
 .string "posf"
 xchain00839_n00035_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01083_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01083_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01083_3]
 lea rdx, [rip + .Lx01083_4]
 jmp rax
.Lx01083_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01083_2
.Lx01083_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01083_2
.Lx01083_1:
 call rt_faildescr@PLT
.Lx01083_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain00839_n01082_α
 jmp xchain00839_n01082_α
 xchain00839_n00035_β:
 jmp xchain00839_n01082_α
.Lx01083_0:
 .quad .Lx01083_0_s
.Lx01083_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01082_α:
 mov rdi, qword ptr [rip + .Lx01084_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain00839_n01085_α
 xchain00839_n01082_β:
 jmp xchain00839_n01086_α
.Lx01084_0:
 .quad .Lx01084_0_s
.Lx01084_0_s:
 .string "anyf"
 xchain00839_n01085_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01087_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01087_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01087_3]
 lea rdx, [rip + .Lx01087_4]
 jmp rax
.Lx01087_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01087_2
.Lx01087_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01087_2
.Lx01087_1:
 call rt_faildescr@PLT
.Lx01087_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain00839_n01086_α
 jmp xchain00839_n01086_α
 xchain00839_n01085_β:
 jmp xchain00839_n01086_α
.Lx01087_0:
 .quad .Lx01087_0_s
.Lx01087_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01086_α:
 mov rdi, qword ptr [rip + .Lx01088_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00839_n01089_α
 xchain00839_n01086_β:
 jmp xchain00839_n00036_α
.Lx01088_0:
 .quad .Lx01088_0_s
.Lx01088_0_s:
 .string "manyf"
 xchain00839_n01089_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01090_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01090_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01090_3]
 lea rdx, [rip + .Lx01090_4]
 jmp rax
.Lx01090_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01090_2
.Lx01090_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01090_2
.Lx01090_1:
 call rt_faildescr@PLT
.Lx01090_2:
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain00839_n00036_α
 jmp xchain00839_n00036_α
 xchain00839_n01089_β:
 jmp xchain00839_n00036_α
.Lx01090_0:
 .quad .Lx01090_0_s
.Lx01090_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00036_α:
 mov rdi, qword ptr [rip + .Lx01091_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain00839_n00037_α
 xchain00839_n00036_β:
 jmp xchain00839_n01092_α
.Lx01091_0:
 .quad .Lx01091_0_s
.Lx01091_0_s:
 .string "uptof"
 xchain00839_n00037_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3520]
 mov rdx, qword ptr [rbp + 3528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01093_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01093_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01093_3]
 lea rdx, [rip + .Lx01093_4]
 jmp rax
.Lx01093_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01093_2
.Lx01093_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01093_2
.Lx01093_1:
 call rt_faildescr@PLT
.Lx01093_2:
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain00839_n01092_α
 jmp xchain00839_n01092_α
 xchain00839_n00037_β:
 jmp xchain00839_n01092_α
.Lx01093_0:
 .quad .Lx01093_0_s
.Lx01093_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01092_α:
 mov rdi, qword ptr [rip + .Lx01094_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00839_n01095_α
 xchain00839_n01092_β:
 jmp xchain00839_n00038_α
.Lx01094_0:
 .quad .Lx01094_0_s
.Lx01094_0_s:
 .string "findf"
 xchain00839_n01095_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01096_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01096_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01096_3]
 lea rdx, [rip + .Lx01096_4]
 jmp rax
.Lx01096_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01096_2
.Lx01096_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01096_2
.Lx01096_1:
 call rt_faildescr@PLT
.Lx01096_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00839_n00038_α
 jmp xchain00839_n00038_α
 xchain00839_n01095_β:
 jmp xchain00839_n00038_α
.Lx01096_0:
 .quad .Lx01096_0_s
.Lx01096_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00038_α:
 mov rdi, qword ptr [rip + .Lx01097_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00839_n01098_α
 xchain00839_n00038_β:
 jmp xchain00839_n01099_α
.Lx01097_0:
 .quad .Lx01097_0_s
.Lx01097_0_s:
 .string "balf"
 xchain00839_n01098_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01100_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01100_3]
 lea rdx, [rip + .Lx01100_4]
 jmp rax
.Lx01100_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01100_2
.Lx01100_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01100_2
.Lx01100_1:
 call rt_faildescr@PLT
.Lx01100_2:
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain00839_n01099_α
 jmp xchain00839_n01099_α
 xchain00839_n01098_β:
 jmp xchain00839_n01099_α
.Lx01100_0:
 .quad .Lx01100_0_s
.Lx01100_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01099_α:
 mov rdi, qword ptr [rip + .Lx01101_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00839_n01102_α
 xchain00839_n01099_β:
 jmp xchain00839_n00039_α
.Lx01101_0:
 .quad .Lx01101_0_s
.Lx01101_0_s:
 .string "tocset"
 xchain00839_n01102_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01103_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01103_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01103_3]
 lea rdx, [rip + .Lx01103_4]
 jmp rax
.Lx01103_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01103_2
.Lx01103_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01103_2
.Lx01103_1:
 call rt_faildescr@PLT
.Lx01103_2:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain00839_n00039_α
 jmp xchain00839_n00039_α
 xchain00839_n01102_β:
 jmp xchain00839_n00039_α
.Lx01103_0:
 .quad .Lx01103_0_s
.Lx01103_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00039_α:
 mov rdi, qword ptr [rip + .Lx01104_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00839_n00040_α
 xchain00839_n00039_β:
 jmp xchain00839_n01105_α
.Lx01104_0:
 .quad .Lx01104_0_s
.Lx01104_0_s:
 .string "cssize"
 xchain00839_n00040_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01106_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01106_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01106_3]
 lea rdx, [rip + .Lx01106_4]
 jmp rax
.Lx01106_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01106_2
.Lx01106_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01106_2
.Lx01106_1:
 call rt_faildescr@PLT
.Lx01106_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain00839_n01105_α
 jmp xchain00839_n01105_α
 xchain00839_n00040_β:
 jmp xchain00839_n01105_α
.Lx01106_0:
 .quad .Lx01106_0_s
.Lx01106_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01105_α:
 mov rdi, qword ptr [rip + .Lx01107_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00839_n01108_α
 xchain00839_n01105_β:
 jmp xchain00839_n01109_α
.Lx01107_0:
 .quad .Lx01107_0_s
.Lx01107_0_s:
 .string "cscompl"
 xchain00839_n01108_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01110_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01110_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01110_3]
 lea rdx, [rip + .Lx01110_4]
 jmp rax
.Lx01110_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01110_2
.Lx01110_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01110_2
.Lx01110_1:
 call rt_faildescr@PLT
.Lx01110_2:
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00839_n01109_α
 jmp xchain00839_n01109_α
 xchain00839_n01108_β:
 jmp xchain00839_n01109_α
.Lx01110_0:
 .quad .Lx01110_0_s
.Lx01110_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01109_α:
 mov rdi, qword ptr [rip + .Lx01111_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00839_n01112_α
 xchain00839_n01109_β:
 jmp xchain00839_n00041_α
.Lx01111_0:
 .quad .Lx01111_0_s
.Lx01111_0_s:
 .string "lcreate"
 xchain00839_n01112_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01113_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01113_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01113_3]
 lea rdx, [rip + .Lx01113_4]
 jmp rax
.Lx01113_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01113_2
.Lx01113_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01113_2
.Lx01113_1:
 call rt_faildescr@PLT
.Lx01113_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00839_n00041_α
 jmp xchain00839_n00041_α
 xchain00839_n01112_β:
 jmp xchain00839_n00041_α
.Lx01113_0:
 .quad .Lx01113_0_s
.Lx01113_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00041_α:
 mov rdi, qword ptr [rip + .Lx01114_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00839_n00042_α
 xchain00839_n00041_β:
 jmp xchain00839_n00043_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "lconst"
 xchain00839_n00042_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01115_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01115_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01115_3]
 lea rdx, [rip + .Lx01115_4]
 jmp rax
.Lx01115_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01115_2
.Lx01115_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01115_2
.Lx01115_1:
 call rt_faildescr@PLT
.Lx01115_2:
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain00839_n00043_α
 jmp xchain00839_n00043_α
 xchain00839_n00042_β:
 jmp xchain00839_n00043_α
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00043_α:
 mov rdi, qword ptr [rip + .Lx01116_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00839_n00044_α
 xchain00839_n00043_β:
 jmp xchain00839_n00045_α
.Lx01116_0:
 .quad .Lx01116_0_s
.Lx01116_0_s:
 .string "lcopy"
 xchain00839_n00044_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01117_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01117_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01117_3]
 lea rdx, [rip + .Lx01117_4]
 jmp rax
.Lx01117_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01117_2
.Lx01117_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01117_2
.Lx01117_1:
 call rt_faildescr@PLT
.Lx01117_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain00839_n00045_α
 jmp xchain00839_n00045_α
 xchain00839_n00044_β:
 jmp xchain00839_n00045_α
.Lx01117_0:
 .quad .Lx01117_0_s
.Lx01117_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00045_α:
 mov rdi, qword ptr [rip + .Lx01118_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00839_n01119_α
 xchain00839_n00045_β:
 jmp xchain00839_n01120_α
.Lx01118_0:
 .quad .Lx01118_0_s
.Lx01118_0_s:
 .string "lsort"
 xchain00839_n01119_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01121_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01121_3]
 lea rdx, [rip + .Lx01121_4]
 jmp rax
.Lx01121_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01121_2
.Lx01121_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01121_2
.Lx01121_1:
 call rt_faildescr@PLT
.Lx01121_2:
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain00839_n01120_α
 jmp xchain00839_n01120_α
 xchain00839_n01119_β:
 jmp xchain00839_n01120_α
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01120_α:
 mov rdi, qword ptr [rip + .Lx01122_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00839_n01123_α
 xchain00839_n01120_β:
 jmp xchain00839_n00046_α
.Lx01122_0:
 .quad .Lx01122_0_s
.Lx01122_0_s:
 .string "lsize"
 xchain00839_n01123_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01124_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01124_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01124_3]
 lea rdx, [rip + .Lx01124_4]
 jmp rax
.Lx01124_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01124_2
.Lx01124_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01124_2
.Lx01124_1:
 call rt_faildescr@PLT
.Lx01124_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain00839_n00046_α
 jmp xchain00839_n00046_α
 xchain00839_n01123_β:
 jmp xchain00839_n00046_α
.Lx01124_0:
 .quad .Lx01124_0_s
.Lx01124_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00046_α:
 mov rdi, qword ptr [rip + .Lx01125_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00839_n00047_α
 xchain00839_n00046_β:
 jmp xchain00839_n01126_α
.Lx01125_0:
 .quad .Lx01125_0_s
.Lx01125_0_s:
 .string "lpick"
 xchain00839_n00047_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01127_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01127_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01127_3]
 lea rdx, [rip + .Lx01127_4]
 jmp rax
.Lx01127_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01127_2
.Lx01127_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01127_2
.Lx01127_1:
 call rt_faildescr@PLT
.Lx01127_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain00839_n01126_α
 jmp xchain00839_n01126_α
 xchain00839_n00047_β:
 jmp xchain00839_n01126_α
.Lx01127_0:
 .quad .Lx01127_0_s
.Lx01127_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01126_α:
 mov rdi, qword ptr [rip + .Lx01128_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00839_n01129_α
 xchain00839_n01126_β:
 jmp xchain00839_n01130_α
.Lx01128_0:
 .quad .Lx01128_0_s
.Lx01128_0_s:
 .string "lbang"
 xchain00839_n01129_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01131_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01131_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01131_3]
 lea rdx, [rip + .Lx01131_4]
 jmp rax
.Lx01131_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01131_2
.Lx01131_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01131_2
.Lx01131_1:
 call rt_faildescr@PLT
.Lx01131_2:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain00839_n01130_α
 jmp xchain00839_n01130_α
 xchain00839_n01129_β:
 jmp xchain00839_n01130_α
.Lx01131_0:
 .quad .Lx01131_0_s
.Lx01131_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01130_α:
 mov rdi, qword ptr [rip + .Lx01132_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00839_n01133_α
 xchain00839_n01130_β:
 jmp xchain00839_n00048_α
.Lx01132_0:
 .quad .Lx01132_0_s
.Lx01132_0_s:
 .string "lsubscr"
 xchain00839_n01133_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2480]
 mov rdx, qword ptr [rbp + 2488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01134_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01134_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01134_3]
 lea rdx, [rip + .Lx01134_4]
 jmp rax
.Lx01134_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01134_2
.Lx01134_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01134_2
.Lx01134_1:
 call rt_faildescr@PLT
.Lx01134_2:
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain00839_n00048_α
 jmp xchain00839_n00048_α
 xchain00839_n01133_β:
 jmp xchain00839_n00048_α
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00048_α:
 mov rdi, qword ptr [rip + .Lx01135_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00839_n00049_α
 xchain00839_n00048_β:
 jmp xchain00839_n00050_α
.Lx01135_0:
 .quad .Lx01135_0_s
.Lx01135_0_s:
 .string "put1get1"
 xchain00839_n00049_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01136_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01136_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01136_3]
 lea rdx, [rip + .Lx01136_4]
 jmp rax
.Lx01136_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01136_2
.Lx01136_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01136_2
.Lx01136_1:
 call rt_faildescr@PLT
.Lx01136_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00839_n00050_α
 jmp xchain00839_n00050_α
 xchain00839_n00049_β:
 jmp xchain00839_n00050_α
.Lx01136_0:
 .quad .Lx01136_0_s
.Lx01136_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00050_α:
 mov rdi, qword ptr [rip + .Lx01137_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00839_n00051_α
 xchain00839_n00050_β:
 jmp xchain00839_n00052_α
.Lx01137_0:
 .quad .Lx01137_0_s
.Lx01137_0_s:
 .string "put2get2"
 xchain00839_n00051_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01138_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01138_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01138_3]
 lea rdx, [rip + .Lx01138_4]
 jmp rax
.Lx01138_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01138_2
.Lx01138_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01138_2
.Lx01138_1:
 call rt_faildescr@PLT
.Lx01138_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00839_n00052_α
 jmp xchain00839_n00052_α
 xchain00839_n00051_β:
 jmp xchain00839_n00052_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00052_α:
 mov rdi, qword ptr [rip + .Lx01139_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00839_n01140_α
 xchain00839_n00052_β:
 jmp xchain00839_n01141_α
.Lx01139_0:
 .quad .Lx01139_0_s
.Lx01139_0_s:
 .string "put3get3"
 xchain00839_n01140_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2240]
 mov rdx, qword ptr [rbp + 2248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01142_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01142_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01142_3]
 lea rdx, [rip + .Lx01142_4]
 jmp rax
.Lx01142_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01142_2
.Lx01142_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01142_2
.Lx01142_1:
 call rt_faildescr@PLT
.Lx01142_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain00839_n01141_α
 jmp xchain00839_n01141_α
 xchain00839_n01140_β:
 jmp xchain00839_n01141_α
.Lx01142_0:
 .quad .Lx01142_0_s
.Lx01142_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01141_α:
 mov rdi, qword ptr [rip + .Lx01143_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00839_n01144_α
 xchain00839_n01141_β:
 jmp xchain00839_n00053_α
.Lx01143_0:
 .quad .Lx01143_0_s
.Lx01143_0_s:
 .string "put4get4"
 xchain00839_n01144_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01145_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01145_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01145_3]
 lea rdx, [rip + .Lx01145_4]
 jmp rax
.Lx01145_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01145_2
.Lx01145_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01145_2
.Lx01145_1:
 call rt_faildescr@PLT
.Lx01145_2:
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain00839_n00053_α
 jmp xchain00839_n00053_α
 xchain00839_n01144_β:
 jmp xchain00839_n00053_α
.Lx01145_0:
 .quad .Lx01145_0_s
.Lx01145_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00053_α:
 mov rdi, qword ptr [rip + .Lx01146_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00839_n00054_α
 xchain00839_n00053_β:
 jmp xchain00839_n01147_α
.Lx01146_0:
 .quad .Lx01146_0_s
.Lx01146_0_s:
 .string "pushpop"
 xchain00839_n00054_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01148_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01148_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01148_3]
 lea rdx, [rip + .Lx01148_4]
 jmp rax
.Lx01148_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01148_2
.Lx01148_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01148_2
.Lx01148_1:
 call rt_faildescr@PLT
.Lx01148_2:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain00839_n01147_α
 jmp xchain00839_n01147_α
 xchain00839_n00054_β:
 jmp xchain00839_n01147_α
.Lx01148_0:
 .quad .Lx01148_0_s
.Lx01148_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01147_α:
 mov rdi, qword ptr [rip + .Lx01149_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00839_n01150_α
 xchain00839_n01147_β:
 jmp xchain00839_n01151_α
.Lx01149_0:
 .quad .Lx01149_0_s
.Lx01149_0_s:
 .string "putget12"
 xchain00839_n01150_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01152_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01152_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01152_3]
 lea rdx, [rip + .Lx01152_4]
 jmp rax
.Lx01152_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01152_2
.Lx01152_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01152_2
.Lx01152_1:
 call rt_faildescr@PLT
.Lx01152_2:
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain00839_n01151_α
 jmp xchain00839_n01151_α
 xchain00839_n01150_β:
 jmp xchain00839_n01151_α
.Lx01152_0:
 .quad .Lx01152_0_s
.Lx01152_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01151_α:
 mov rdi, qword ptr [rip + .Lx01153_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00839_n01154_α
 xchain00839_n01151_β:
 jmp xchain00839_n00055_α
.Lx01153_0:
 .quad .Lx01153_0_s
.Lx01153_0_s:
 .string "pushpop12"
 xchain00839_n01154_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01155_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01155_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01155_3]
 lea rdx, [rip + .Lx01155_4]
 jmp rax
.Lx01155_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01155_2
.Lx01155_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01155_2
.Lx01155_1:
 call rt_faildescr@PLT
.Lx01155_2:
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain00839_n00055_α
 jmp xchain00839_n00055_α
 xchain00839_n01154_β:
 jmp xchain00839_n00055_α
.Lx01155_0:
 .quad .Lx01155_0_s
.Lx01155_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00055_α:
 mov rdi, qword ptr [rip + .Lx01156_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00839_n00056_α
 xchain00839_n00055_β:
 jmp xchain00839_n00057_α
.Lx01156_0:
 .quad .Lx01156_0_s
.Lx01156_0_s:
 .string "setcreate"
 xchain00839_n00056_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01157_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01157_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01157_3]
 lea rdx, [rip + .Lx01157_4]
 jmp rax
.Lx01157_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01157_2
.Lx01157_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01157_2
.Lx01157_1:
 call rt_faildescr@PLT
.Lx01157_2:
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00839_n00057_α
 jmp xchain00839_n00057_α
 xchain00839_n00056_β:
 jmp xchain00839_n00057_α
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00057_α:
 mov rdi, qword ptr [rip + .Lx01158_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00839_n01159_α
 xchain00839_n00057_β:
 jmp xchain00839_n00058_α
.Lx01158_0:
 .quad .Lx01158_0_s
.Lx01158_0_s:
 .string "setcopy"
 xchain00839_n01159_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01160_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01160_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01160_3]
 lea rdx, [rip + .Lx01160_4]
 jmp rax
.Lx01160_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01160_2
.Lx01160_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01160_2
.Lx01160_1:
 call rt_faildescr@PLT
.Lx01160_2:
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain00839_n00058_α
 jmp xchain00839_n00058_α
 xchain00839_n01159_β:
 jmp xchain00839_n00058_α
.Lx01160_0:
 .quad .Lx01160_0_s
.Lx01160_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00058_α:
 mov rdi, qword ptr [rip + .Lx01161_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00839_n01162_α
 xchain00839_n00058_β:
 jmp xchain00839_n01163_α
.Lx01161_0:
 .quad .Lx01161_0_s
.Lx01161_0_s:
 .string "setmember"
 xchain00839_n01162_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01164_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01164_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01164_3]
 lea rdx, [rip + .Lx01164_4]
 jmp rax
.Lx01164_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01164_2
.Lx01164_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01164_2
.Lx01164_1:
 call rt_faildescr@PLT
.Lx01164_2:
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00839_n01163_α
 jmp xchain00839_n01163_α
 xchain00839_n01162_β:
 jmp xchain00839_n01163_α
.Lx01164_0:
 .quad .Lx01164_0_s
.Lx01164_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01163_α:
 mov rdi, qword ptr [rip + .Lx01165_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00839_n01166_α
 xchain00839_n01163_β:
 jmp xchain00839_n00059_α
.Lx01165_0:
 .quad .Lx01165_0_s
.Lx01165_0_s:
 .string "setinsert"
 xchain00839_n01166_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01167_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01167_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01167_3]
 lea rdx, [rip + .Lx01167_4]
 jmp rax
.Lx01167_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01167_2
.Lx01167_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01167_2
.Lx01167_1:
 call rt_faildescr@PLT
.Lx01167_2:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00839_n00059_α
 jmp xchain00839_n00059_α
 xchain00839_n01166_β:
 jmp xchain00839_n00059_α
.Lx01167_0:
 .quad .Lx01167_0_s
.Lx01167_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00059_α:
 mov rdi, qword ptr [rip + .Lx01168_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00839_n00060_α
 xchain00839_n00059_β:
 jmp xchain00839_n01169_α
.Lx01168_0:
 .quad .Lx01168_0_s
.Lx01168_0_s:
 .string "setinsdel"
 xchain00839_n00060_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01170_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01170_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01170_3]
 lea rdx, [rip + .Lx01170_4]
 jmp rax
.Lx01170_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01170_2
.Lx01170_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01170_2
.Lx01170_1:
 call rt_faildescr@PLT
.Lx01170_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00839_n01169_α
 jmp xchain00839_n01169_α
 xchain00839_n00060_β:
 jmp xchain00839_n01169_α
.Lx01170_0:
 .quad .Lx01170_0_s
.Lx01170_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01169_α:
 mov rdi, qword ptr [rip + .Lx01171_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00839_n01172_α
 xchain00839_n01169_β:
 jmp xchain00839_n01173_α
.Lx01171_0:
 .quad .Lx01171_0_s
.Lx01171_0_s:
 .string "setbang"
 xchain00839_n01172_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01174_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01174_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01174_3]
 lea rdx, [rip + .Lx01174_4]
 jmp rax
.Lx01174_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01174_2
.Lx01174_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01174_2
.Lx01174_1:
 call rt_faildescr@PLT
.Lx01174_2:
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00839_n01173_α
 jmp xchain00839_n01173_α
 xchain00839_n01172_β:
 jmp xchain00839_n01173_α
.Lx01174_0:
 .quad .Lx01174_0_s
.Lx01174_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01173_α:
 mov rdi, qword ptr [rip + .Lx01175_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00839_n01176_α
 xchain00839_n01173_β:
 jmp xchain00839_n00061_α
.Lx01175_0:
 .quad .Lx01175_0_s
.Lx01175_0_s:
 .string "setpick"
 xchain00839_n01176_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01177_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01177_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01177_3]
 lea rdx, [rip + .Lx01177_4]
 jmp rax
.Lx01177_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01177_2
.Lx01177_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01177_2
.Lx01177_1:
 call rt_faildescr@PLT
.Lx01177_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00839_n00061_α
 jmp xchain00839_n00061_α
 xchain00839_n01176_β:
 jmp xchain00839_n00061_α
.Lx01177_0:
 .quad .Lx01177_0_s
.Lx01177_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00061_α:
 mov rdi, qword ptr [rip + .Lx01178_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00839_n00062_α
 xchain00839_n00061_β:
 jmp xchain00839_n00063_α
.Lx01178_0:
 .quad .Lx01178_0_s
.Lx01178_0_s:
 .string "tblcreate"
 xchain00839_n00062_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01179_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01179_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01179_3]
 lea rdx, [rip + .Lx01179_4]
 jmp rax
.Lx01179_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01179_2
.Lx01179_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01179_2
.Lx01179_1:
 call rt_faildescr@PLT
.Lx01179_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain00839_n00063_α
 jmp xchain00839_n00063_α
 xchain00839_n00062_β:
 jmp xchain00839_n00063_α
.Lx01179_0:
 .quad .Lx01179_0_s
.Lx01179_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00063_α:
 mov rdi, qword ptr [rip + .Lx01180_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00839_n01181_α
 xchain00839_n00063_β:
 jmp xchain00839_n00064_α
.Lx01180_0:
 .quad .Lx01180_0_s
.Lx01180_0_s:
 .string "tblsub"
 xchain00839_n01181_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01182_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01182_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01182_3]
 lea rdx, [rip + .Lx01182_4]
 jmp rax
.Lx01182_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01182_2
.Lx01182_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01182_2
.Lx01182_1:
 call rt_faildescr@PLT
.Lx01182_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00839_n00064_α
 jmp xchain00839_n00064_α
 xchain00839_n01181_β:
 jmp xchain00839_n00064_α
.Lx01182_0:
 .quad .Lx01182_0_s
.Lx01182_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00064_α:
 mov rdi, qword ptr [rip + .Lx01183_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00839_n01184_α
 xchain00839_n00064_β:
 jmp xchain00839_n01185_α
.Lx01183_0:
 .quad .Lx01183_0_s
.Lx01183_0_s:
 .string "tblasgn"
 xchain00839_n01184_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01186_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01186_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01186_3]
 lea rdx, [rip + .Lx01186_4]
 jmp rax
.Lx01186_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01186_2
.Lx01186_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01186_2
.Lx01186_1:
 call rt_faildescr@PLT
.Lx01186_2:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00839_n01185_α
 jmp xchain00839_n01185_α
 xchain00839_n01184_β:
 jmp xchain00839_n01185_α
.Lx01186_0:
 .quad .Lx01186_0_s
.Lx01186_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01185_α:
 mov rdi, qword ptr [rip + .Lx01187_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00839_n01188_α
 xchain00839_n01185_β:
 jmp xchain00839_n00065_α
.Lx01187_0:
 .quad .Lx01187_0_s
.Lx01187_0_s:
 .string "recconstr"
 xchain00839_n01188_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01189_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01189_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01189_3]
 lea rdx, [rip + .Lx01189_4]
 jmp rax
.Lx01189_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01189_2
.Lx01189_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01189_2
.Lx01189_1:
 call rt_faildescr@PLT
.Lx01189_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain00839_n00065_α
 jmp xchain00839_n00065_α
 xchain00839_n01188_β:
 jmp xchain00839_n00065_α
.Lx01189_0:
 .quad .Lx01189_0_s
.Lx01189_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00065_α:
 mov rdi, qword ptr [rip + .Lx01190_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00839_n00066_α
 xchain00839_n00065_β:
 jmp xchain00839_n01191_α
.Lx01190_0:
 .quad .Lx01190_0_s
.Lx01190_0_s:
 .string "reccopy"
 xchain00839_n00066_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01192_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01192_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01192_3]
 lea rdx, [rip + .Lx01192_4]
 jmp rax
.Lx01192_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01192_2
.Lx01192_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01192_2
.Lx01192_1:
 call rt_faildescr@PLT
.Lx01192_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00839_n01191_α
 jmp xchain00839_n01191_α
 xchain00839_n00066_β:
 jmp xchain00839_n01191_α
.Lx01192_0:
 .quad .Lx01192_0_s
.Lx01192_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01191_α:
 mov rdi, qword ptr [rip + .Lx01193_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00839_n01194_α
 xchain00839_n01191_β:
 jmp xchain00839_n01195_α
.Lx01193_0:
 .quad .Lx01193_0_s
.Lx01193_0_s:
 .string "recfield"
 xchain00839_n01194_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01196_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01196_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01196_3]
 lea rdx, [rip + .Lx01196_4]
 jmp rax
.Lx01196_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01196_2
.Lx01196_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01196_2
.Lx01196_1:
 call rt_faildescr@PLT
.Lx01196_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00839_n01195_α
 jmp xchain00839_n01195_α
 xchain00839_n01194_β:
 jmp xchain00839_n01195_α
.Lx01196_0:
 .quad .Lx01196_0_s
.Lx01196_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01195_α:
 mov rdi, qword ptr [rip + .Lx01197_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00839_n01198_α
 xchain00839_n01195_β:
 jmp xchain00839_n00067_α
.Lx01197_0:
 .quad .Lx01197_0_s
.Lx01197_0_s:
 .string "bigfield"
 xchain00839_n01198_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01199_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01199_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01199_3]
 lea rdx, [rip + .Lx01199_4]
 jmp rax
.Lx01199_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01199_2
.Lx01199_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01199_2
.Lx01199_1:
 call rt_faildescr@PLT
.Lx01199_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00839_n00067_α
 jmp xchain00839_n00067_α
 xchain00839_n01198_β:
 jmp xchain00839_n00067_α
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00067_α:
 mov rdi, qword ptr [rip + .Lx01200_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00839_n00068_α
 xchain00839_n00067_β:
 jmp xchain00839_n01201_α
.Lx01200_0:
 .quad .Lx01200_0_s
.Lx01200_0_s:
 .string "readz"
 xchain00839_n00068_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01202_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01202_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01202_3]
 lea rdx, [rip + .Lx01202_4]
 jmp rax
.Lx01202_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01202_2
.Lx01202_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01202_2
.Lx01202_1:
 call rt_faildescr@PLT
.Lx01202_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00839_n01201_α
 jmp xchain00839_n01201_α
 xchain00839_n00068_β:
 jmp xchain00839_n01201_α
.Lx01202_0:
 .quad .Lx01202_0_s
.Lx01202_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01201_α:
 mov rdi, qword ptr [rip + .Lx01203_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00839_n01204_α
 xchain00839_n01201_β:
 jmp xchain00839_n00069_α
.Lx01203_0:
 .quad .Lx01203_0_s
.Lx01203_0_s:
 .string "writecon"
 xchain00839_n01204_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01205_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01205_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01205_3]
 lea rdx, [rip + .Lx01205_4]
 jmp rax
.Lx01205_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01205_2
.Lx01205_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01205_2
.Lx01205_1:
 call rt_faildescr@PLT
.Lx01205_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00839_n00069_α
 jmp xchain00839_n00069_α
 xchain00839_n01204_β:
 jmp xchain00839_n00069_α
.Lx01205_0:
 .quad .Lx01205_0_s
.Lx01205_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00069_α:
 mov rdi, qword ptr [rip + .Lx01206_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00839_n01207_α
 xchain00839_n00069_β:
 jmp xchain00839_n01208_α
.Lx01206_0:
 .quad .Lx01206_0_s
.Lx01206_0_s:
 .string "writestr"
 xchain00839_n01207_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01209_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01209_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01209_3]
 lea rdx, [rip + .Lx01209_4]
 jmp rax
.Lx01209_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01209_2
.Lx01209_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01209_2
.Lx01209_1:
 call rt_faildescr@PLT
.Lx01209_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00839_n01208_α
 jmp xchain00839_n01208_α
 xchain00839_n01207_β:
 jmp xchain00839_n01208_α
.Lx01209_0:
 .quad .Lx01209_0_s
.Lx01209_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01208_α:
 mov rdi, qword ptr [rip + .Lx01210_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00839_n01211_α
 xchain00839_n01208_β:
 jmp xchain00839_n00070_α
.Lx01210_0:
 .quad .Lx01210_0_s
.Lx01210_0_s:
 .string "cxcreate"
 xchain00839_n01211_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01212_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01212_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01212_3]
 lea rdx, [rip + .Lx01212_4]
 jmp rax
.Lx01212_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01212_2
.Lx01212_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01212_2
.Lx01212_1:
 call rt_faildescr@PLT
.Lx01212_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00839_n00070_α
 jmp xchain00839_n00070_α
 xchain00839_n01211_β:
 jmp xchain00839_n00070_α
.Lx01212_0:
 .quad .Lx01212_0_s
.Lx01212_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00070_α:
 mov rdi, qword ptr [rip + .Lx01213_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00839_n00071_α
 xchain00839_n00070_β:
 jmp xchain00839_n01214_α
.Lx01213_0:
 .quad .Lx01213_0_s
.Lx01213_0_s:
 .string "cxget"
 xchain00839_n00071_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01215_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01215_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01215_3]
 lea rdx, [rip + .Lx01215_4]
 jmp rax
.Lx01215_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01215_2
.Lx01215_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01215_2
.Lx01215_1:
 call rt_faildescr@PLT
.Lx01215_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00839_n01214_α
 jmp xchain00839_n01214_α
 xchain00839_n00071_β:
 jmp xchain00839_n01214_α
.Lx01215_0:
 .quad .Lx01215_0_s
.Lx01215_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01214_α:
 mov rdi, qword ptr [rip + .Lx01216_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00839_n01217_α
 xchain00839_n01214_β:
 jmp xchain00839_n01218_α
.Lx01216_0:
 .quad .Lx01216_0_s
.Lx01216_0_s:
 .string "nothing"
 xchain00839_n01217_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01219_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01219_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01219_3]
 lea rdx, [rip + .Lx01219_4]
 jmp rax
.Lx01219_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01219_2
.Lx01219_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01219_2
.Lx01219_1:
 call rt_faildescr@PLT
.Lx01219_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00839_n01218_α
 jmp xchain00839_n01218_α
 xchain00839_n01217_β:
 jmp xchain00839_n01218_α
.Lx01219_0:
 .quad .Lx01219_0_s
.Lx01219_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n01218_α:
 mov rdi, qword ptr [rip + .Lx01220_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00839_n01221_α
 xchain00839_n01218_β:
 jmp xchain00839_n00072_α
.Lx01220_0:
 .quad .Lx01220_0_s
.Lx01220_0_s:
 .string "nothing"
 xchain00839_n01221_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01222_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01222_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01222_3]
 lea rdx, [rip + .Lx01222_4]
 jmp rax
.Lx01222_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01222_2
.Lx01222_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01222_2
.Lx01222_1:
 call rt_faildescr@PLT
.Lx01222_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00839_n00072_α
 jmp xchain00839_n00072_α
 xchain00839_n01221_β:
 jmp xchain00839_n00072_α
.Lx01222_0:
 .quad .Lx01222_0_s
.Lx01222_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00839_n00072_α:
 mov rdi, qword ptr [rip + .Lx01223_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00839_n00073_α
 xchain00839_n00072_β:
 jmp xchain00839_n01224_α
.Lx01223_0:
 .quad .Lx01223_0_s
.Lx01223_0_s:
 .string "nothing"
 xchain00839_n00073_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01225_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01225_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01225_3]
 lea rdx, [rip + .Lx01225_4]
 jmp rax
.Lx01225_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01225_2
.Lx01225_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01225_2
.Lx01225_1:
 call rt_faildescr@PLT
.Lx01225_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00839_n01224_α
 jmp xchain00839_n01224_α
 xchain00839_n00073_β:
 jmp xchain00839_n01224_α
.Lx01225_0:
 .quad .Lx01225_0_s
.Lx01225_0_s:
 .string "report"
# KEYWORD_read
 xchain00839_n01224_α:
 mov rdi, qword ptr [rip + .Lx01226_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00839_n01227_α
 xchain00839_n01224_β:
 jmp main_ω
.Lx01226_0:
 .quad .Lx01226_0_s
.Lx01226_0_s:
 .string "&errout"
 xchain00839_n01227_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn3107: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3107]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00839_n01227_β:
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
