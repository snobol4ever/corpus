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
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain0_n1_α:
 mov qword ptr [rbp + 720], 0
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 lea rdx, [rbp + 720]
 mov ecx, 0
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx4_7
 lea rcx, [rip + .Lx4_3]
 lea rdx, [rip + .Lx4_4]
 jmp rax
.Lx4_3:
 mov qword ptr [rbp + 728], rsp
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx4_5
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx4_2
.Lx4_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx4_2
.Lx4_4:
 mov qword ptr [rbp + 728], rsp
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx4_6
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx4_2
.Lx4_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx4_2
.Lx4_7:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 lea rdx, [rbp + 720]
 mov ecx, 0
 lea r8, [rbp + 720]
 call rt_call_value_gen_h@PLT
.Lx4_2:
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n3_α
 xchain0_n1_β:
 mov rax, qword ptr [rbp + 720]
 cmp rax, 1
 jne .Lx4_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 728]
 jmp qword ptr [rsp]
.Lx4_8:
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
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain30_n3_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
 mov qword ptr [rbp + 2704], 0
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 lea rdx, [rbp + 2688]
 mov ecx, 1
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx36_7
 lea rcx, [rip + .Lx36_3]
 lea rdx, [rip + .Lx36_4]
 jmp rax
.Lx36_3:
 mov qword ptr [rbp + 2712], rsp
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx36_5
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx36_2
.Lx36_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx36_2
.Lx36_4:
 mov qword ptr [rbp + 2712], rsp
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx36_6
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx36_2
.Lx36_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx36_2
.Lx36_7:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 lea rdx, [rbp + 2688]
 mov ecx, 1
 lea r8, [rbp + 2704]
 call rt_call_value_gen_h@PLT
.Lx36_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain30_n2_α
 jmp xchain30_n2_α
 xchain30_n3_β:
 mov rax, qword ptr [rbp + 2704]
 cmp rax, 1
 jne .Lx36_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2712]
 jmp qword ptr [rsp]
.Lx36_8:
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
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain30_n18_α:
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2264], rax
 mov qword ptr [rbp + 2272], 0
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 lea rdx, [rbp + 2256]
 mov ecx, 1
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx57_7
 lea rcx, [rip + .Lx57_3]
 lea rdx, [rip + .Lx57_4]
 jmp rax
.Lx57_3:
 mov qword ptr [rbp + 2280], rsp
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx57_5
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx57_2
.Lx57_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx57_2
.Lx57_4:
 mov qword ptr [rbp + 2280], rsp
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx57_6
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx57_2
.Lx57_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx57_2
.Lx57_7:
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 lea rdx, [rbp + 2256]
 mov ecx, 1
 lea r8, [rbp + 2272]
 call rt_call_value_gen_h@PLT
.Lx57_2:
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain30_n16_α
 jmp xchain30_n16_α
 xchain30_n18_β:
 mov rax, qword ptr [rbp + 2272]
 cmp rax, 1
 jne .Lx57_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2280]
 jmp qword ptr [rsp]
.Lx57_8:
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
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain30_n56_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
 mov qword ptr [rbp + 928], 0
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 lea rdx, [rbp + 912]
 mov ecx, 1
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx00006_7
 lea rcx, [rip + .Lx00006_3]
 lea rdx, [rip + .Lx00006_4]
 jmp rax
.Lx00006_3:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00006_5
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00006_2
.Lx00006_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00006_2
.Lx00006_4:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00006_6
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00006_2
.Lx00006_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00006_2
.Lx00006_7:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 lea rdx, [rbp + 912]
 mov ecx, 1
 lea r8, [rbp + 928]
 call rt_call_value_gen_h@PLT
.Lx00006_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain30_n54_α
 jmp xchain30_n54_α
 xchain30_n56_β:
 mov rax, qword ptr [rbp + 928]
 cmp rax, 1
 jne .Lx00006_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 936]
 jmp qword ptr [rsp]
.Lx00006_8:
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
 je .Lx00007_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 100
 je .Lx00007_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00007_2
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00007_2
.Lx00007_1:
 mov rax, qword ptr [rbp + 1336]
 mov rcx, qword ptr [rbp + 1304]
 cqo
 idiv rcx
 mov qword ptr [rbp + 1264], 6
 mov qword ptr [rbp + 1272], rax
 jmp xchain30_n60_α
.Lx00007_0:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 lea r9, [rbp + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00007_3
.Lx00007_2:
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
.Lx00007_3:
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
 je .Lx00008_1
 cmp eax, 6
 jne .Lx00008_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00008_0
.Lx00008_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 728], rax
 jmp .Lx00008_2
.Lx00008_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00008_2:
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
 je .Lx00009_1
 cmp eax, 6
 jne .Lx00009_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00009_0
.Lx00009_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 696], rax
 jmp .Lx00009_2
.Lx00009_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00009_2:
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
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain30_n73_α
 xchain30_n69_β:
 jmp xchain30_n70_α
.Lx00010_0:
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
 je .Lx00011_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00011_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00011_2
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00011_2
.Lx00011_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, qword ptr [rbp + 696]
 sub rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain30_n75_α
.Lx00011_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00011_3
.Lx00011_2:
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
.Lx00011_3:
 jmp xchain30_n75_α
 xchain30_n71_β:
 jmp xchain30_n62_α
# IR_COERCE_NUMERIC
 xchain30_n72_α:
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 7
 je .Lx00012_1
 cmp eax, 6
 jne .Lx00012_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00012_0
.Lx00012_1:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00012_2
.Lx00012_0:
 lea rdi, [rbp + 2832]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00012_2:
 jmp xchain30_n76_α
 xchain30_n72_β:
 jmp xchain30_n66_α
# IR_COERCE_NUMERIC
 xchain30_n73_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00013_1
 cmp eax, 6
 jne .Lx00013_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00013_0
.Lx00013_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 248], rax
 jmp .Lx00013_2
.Lx00013_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00013_2:
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
 je .Lx00014_1
 cmp eax, 6
 jne .Lx00014_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00014_0
.Lx00014_1:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00014_2
.Lx00014_0:
 lea rdi, [rbp + 512]
 lea rsi, [rbp + 2832]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00014_2:
 jmp xchain30_n79_α
 xchain30_n76_β:
 jmp xchain30_n66_α
 xchain30_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00015_2
.Lx00015_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, 1000000
 imul rax, rcx
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain30_n80_α
.Lx00015_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 lea r9, [rbp + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00015_3
.Lx00015_2:
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
.Lx00015_3:
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
 je .Lx00016_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00016_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, qword ptr [rbp + 424]
 cqo
 idiv rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain30_n81_α
.Lx00016_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00016_3
.Lx00016_2:
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
.Lx00016_3:
 jmp xchain30_n81_α
 xchain30_n79_β:
 jmp xchain30_n66_α
# IR_LIT_REAL
 xchain30_n80_α:
 mov qword ptr [rbp + 336], 7
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain30_n82_α
 xchain30_n80_β:
 jmp xchain30_n70_α
.Lx00017_0:
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
 je .Lx00018_1
 cmp eax, 6
 jne .Lx00018_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00018_0
.Lx00018_1:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp .Lx00018_2
.Lx00018_0:
 lea rdi, [rbp + 208]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00018_2:
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
 xchain00019_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00019_n1_α
 xchain00019_n0_β:
 jmp xchain00019_n2_α
# IR_UNOP
 xchain00019_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00019_n2_α
 cmp eax, 0
 jne xchain00019_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00019_n3_α
 xchain00019_n1_β:
 jmp xchain00019_n2_α
# IR_LIT_INTEGER
 xchain00019_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00019_n4_α
 xchain00019_n2_β:
 jmp proc_nothing_ω
.Lx00020_0:
 .quad 1
# IR_LIT_STRING
 xchain00019_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00019_n5_α
 xchain00019_n3_β:
 jmp proc_nothing_ω
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "nothing"
# IR_VAR
 xchain00019_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00019_n6_α
 xchain00019_n4_β:
 jmp proc_nothing_ω
# IR_RETURN
 xchain00019_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nothing_γ
# IR_TO
 xchain00019_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00022_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nothing_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00019_n7_α
 xchain00019_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00022_0
# IR_LIT_INTEGER
 xchain00019_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00019_n6_β
 xchain00019_n7_β:
 jmp xchain00019_n6_β
.Lx00023_0:
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
 xchain00024_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00024_n1_α
 xchain00024_n0_β:
 jmp xchain00024_n2_α
# IR_UNOP
 xchain00024_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00024_n2_α
 cmp eax, 0
 jne xchain00024_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00024_n3_α
 xchain00024_n1_β:
 jmp xchain00024_n2_α
# IR_LIT_INTEGER
 xchain00024_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00024_n4_α
 xchain00024_n2_β:
 jmp proc_uplus_ω
.Lx00025_0:
 .quad 1
# IR_LIT_STRING
 xchain00024_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00024_n5_α
 xchain00024_n3_β:
 jmp proc_uplus_ω
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "+407"
# IR_VAR
 xchain00024_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00024_n6_α
 xchain00024_n4_β:
 jmp proc_uplus_ω
# IR_RETURN
 xchain00024_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplus_γ
# IR_TO
 xchain00024_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00027_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00024_n7_α
 xchain00024_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00027_0
# IR_LIT_INTEGER
 xchain00024_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00028_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00024_n6_β
 xchain00024_n7_β:
 jmp xchain00024_n6_β
.Lx00028_0:
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
 xchain00029_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00029_n1_α
 xchain00029_n0_β:
 jmp xchain00029_n2_α
# IR_UNOP
 xchain00029_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00029_n2_α
 cmp eax, 0
 jne xchain00029_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00029_n3_α
 xchain00029_n1_β:
 jmp xchain00029_n2_α
# IR_LIT_INTEGER
 xchain00029_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00029_n4_α
 xchain00029_n2_β:
 jmp proc_uplusr_ω
.Lx00030_0:
 .quad 1
# IR_LIT_STRING
 xchain00029_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00029_n5_α
 xchain00029_n3_β:
 jmp proc_uplusr_ω
.Lx00031_0:
 .quad .Lx00031_0_s
.Lx00031_0_s:
 .string "+7.25"
# IR_VAR
 xchain00029_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00029_n6_α
 xchain00029_n4_β:
 jmp proc_uplusr_ω
# IR_RETURN
 xchain00029_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplusr_γ
# IR_TO
 xchain00029_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00032_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00029_n7_α
 xchain00029_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00032_0
# IR_LIT_REAL
 xchain00029_n7_α:
 mov qword ptr [rbp + 128], 7
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00029_n6_β
 xchain00029_n7_β:
 jmp xchain00029_n6_β
.Lx00033_0:
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
 xchain00034_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00034_n1_α
 xchain00034_n0_β:
 jmp xchain00034_n2_α
# IR_UNOP
 xchain00034_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00034_n2_α
 cmp eax, 0
 jne xchain00034_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00034_n3_α
 xchain00034_n1_β:
 jmp xchain00034_n2_α
# IR_LIT_INTEGER
 xchain00034_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00034_n4_α
 xchain00034_n2_β:
 jmp proc_absf_ω
.Lx00035_0:
 .quad 1
# IR_LIT_STRING
 xchain00034_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00034_n5_α
 xchain00034_n3_β:
 jmp proc_absf_ω
.Lx00036_0:
 .quad .Lx00036_0_s
.Lx00036_0_s:
 .string "abs(-3)"
# IR_VAR
 xchain00034_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00034_n6_α
 xchain00034_n4_β:
 jmp proc_absf_ω
# IR_RETURN
 xchain00034_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_absf_γ
# IR_TO
 xchain00034_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00037_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00034_n7_α
 xchain00034_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00037_0
# IR_LIT_INTEGER
 xchain00034_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00034_n8_α
 xchain00034_n7_β:
 jmp xchain00034_n6_β
.Lx00038_0:
 .quad 18446744073709551613
 xchain00034_n8_α:
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
 je xchain00034_n6_β
 jmp xchain00034_n6_β
 xchain00034_n8_β:
 jmp xchain00034_n6_β
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
 xchain00039_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00039_n1_α
 xchain00039_n0_β:
 jmp xchain00039_n2_α
# IR_UNOP
 xchain00039_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00039_n2_α
 cmp eax, 0
 jne xchain00039_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00039_n3_α
 xchain00039_n1_β:
 jmp xchain00039_n2_α
# IR_LIT_INTEGER
 xchain00039_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00039_n4_α
 xchain00039_n2_β:
 jmp proc_intadd_ω
.Lx00040_0:
 .quad 1
# IR_LIT_STRING
 xchain00039_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00039_n5_α
 xchain00039_n3_β:
 jmp proc_intadd_ω
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "4 + 7"
# IR_VAR
 xchain00039_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00039_n6_α
 xchain00039_n4_β:
 jmp proc_intadd_ω
# IR_RETURN
 xchain00039_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intadd_γ
# IR_TO
 xchain00039_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00042_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00039_n7_α
 xchain00039_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00042_0
# IR_LIT_INTEGER
 xchain00039_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00039_n8_α
 xchain00039_n7_β:
 jmp xchain00039_n6_β
.Lx00043_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00039_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00039_n9_α
 xchain00039_n8_β:
 jmp xchain00039_n6_β
.Lx00044_0:
 .quad 7
 xchain00039_n9_α:
# IR_BINOP_ARITH
.Lx00045_1:
 mov rax, 4
 mov rcx, 7
 add rax, rcx
 mov qword ptr [rbp + 128], 6
 mov qword ptr [rbp + 136], rax
 jmp xchain00039_n6_β
.Lx00045_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 0
 lea r9, [rbp + 128]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00045_3
.Lx00045_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00039_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
.Lx00045_3:
 jmp xchain00039_n6_β
 xchain00039_n9_β:
 jmp xchain00039_n6_β
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
 xchain00046_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00046_n1_α
 xchain00046_n0_β:
 jmp xchain00046_n2_α
# IR_UNOP
 xchain00046_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00046_n2_α
 cmp eax, 0
 jne xchain00046_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00046_n3_α
 xchain00046_n1_β:
 jmp xchain00046_n2_α
# IR_LIT_INTEGER
 xchain00046_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00046_n4_α
 xchain00046_n2_β:
 jmp proc_intcmp_ω
.Lx00047_0:
 .quad 1
# IR_LIT_STRING
 xchain00046_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00046_n5_α
 xchain00046_n3_β:
 jmp proc_intcmp_ω
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "4 < 7"
# IR_VAR
 xchain00046_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00046_n6_α
 xchain00046_n4_β:
 jmp proc_intcmp_ω
# IR_RETURN
 xchain00046_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcmp_γ
# IR_TO
 xchain00046_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00049_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00046_n7_α
 xchain00046_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00049_0
# IR_LIT_INTEGER
 xchain00046_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00046_n8_α
 xchain00046_n7_β:
 jmp xchain00046_n6_β
.Lx00050_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00046_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00046_n9_α
 xchain00046_n8_β:
 jmp xchain00046_n6_β
.Lx00051_0:
 .quad 7
 xchain00046_n9_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00052_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 100
 je .Lx00052_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00052_2
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00052_2
.Lx00052_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 200]
 cmp rax, rcx
 jge xchain00046_n6_β
 mov rcx, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rcx
 mov rcx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rcx
 jmp xchain00046_n6_β
.Lx00052_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 lea r9, [rbp + 128]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00052_1
 cmp eax, 1
 je xchain00046_n6_β
 jmp xchain00046_n6_β
.Lx00052_2:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00046_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00046_n6_β
 xchain00046_n9_β:
 jmp xchain00046_n6_β
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
 xchain00053_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00053_n1_α
 xchain00053_n0_β:
 jmp xchain00053_n2_α
# IR_UNOP
 xchain00053_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00053_n2_α
 cmp eax, 0
 jne xchain00053_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00053_n3_α
 xchain00053_n1_β:
 jmp xchain00053_n2_α
# IR_LIT_INTEGER
 xchain00053_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00053_n4_α
 xchain00053_n2_β:
 jmp proc_intpow_ω
.Lx00054_0:
 .quad 1
# IR_LIT_STRING
 xchain00053_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00053_n5_α
 xchain00053_n3_β:
 jmp proc_intpow_ω
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "4 ^ 7"
# IR_VAR
 xchain00053_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00053_n6_α
 xchain00053_n4_β:
 jmp proc_intpow_ω
# IR_RETURN
 xchain00053_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intpow_γ
# IR_TO
 xchain00053_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00056_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00053_n7_α
 xchain00053_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00056_0
# IR_LIT_INTEGER
 xchain00053_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00053_n8_α
 xchain00053_n7_β:
 jmp xchain00053_n6_β
.Lx00057_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00053_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00053_n9_α
 xchain00053_n8_β:
 jmp xchain00053_n6_β
.Lx00058_0:
 .quad 7
 xchain00053_n9_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00053_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00053_n6_β
 xchain00053_n9_β:
 jmp xchain00053_n6_β
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
 xchain00059_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00059_n1_α
 xchain00059_n0_β:
 jmp xchain00059_n2_α
# IR_UNOP
 xchain00059_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00059_n2_α
 cmp eax, 0
 jne xchain00059_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00059_n3_α
 xchain00059_n1_β:
 jmp xchain00059_n2_α
# IR_LIT_INTEGER
 xchain00059_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00059_n4_α
 xchain00059_n2_β:
 jmp proc_realcmp_ω
.Lx00060_0:
 .quad 1
# IR_LIT_STRING
 xchain00059_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00059_n5_α
 xchain00059_n3_β:
 jmp proc_realcmp_ω
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "1.6 < 2.7"
# IR_VAR
 xchain00059_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00059_n6_α
 xchain00059_n4_β:
 jmp proc_realcmp_ω
# IR_RETURN
 xchain00059_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcmp_γ
# IR_TO
 xchain00059_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00062_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00059_n7_α
 xchain00059_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00062_0
# IR_LIT_REAL
 xchain00059_n7_α:
 mov qword ptr [rbp + 160], 7
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00059_n8_α
 xchain00059_n7_β:
 jmp xchain00059_n6_β
.Lx00063_0:
 .quad 4609884578576439706
# IR_LIT_REAL
 xchain00059_n8_α:
 mov qword ptr [rbp + 192], 7
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00059_n9_α
 xchain00059_n8_β:
 jmp xchain00059_n6_β
.Lx00064_0:
 .quad 4613262278296967578
 xchain00059_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00059_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00059_n6_β
 xchain00059_n9_β:
 jmp xchain00059_n6_β
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
 xchain00065_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00065_n1_α
 xchain00065_n0_β:
 jmp xchain00065_n2_α
# IR_UNOP
 xchain00065_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00065_n2_α
 cmp eax, 0
 jne xchain00065_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00065_n3_α
 xchain00065_n1_β:
 jmp xchain00065_n2_α
# IR_LIT_INTEGER
 xchain00065_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00065_n4_α
 xchain00065_n2_β:
 jmp proc_cosf_ω
.Lx00066_0:
 .quad 1
# IR_LIT_STRING
 xchain00065_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00065_n5_α
 xchain00065_n3_β:
 jmp proc_cosf_ω
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "cos(0.2)"
# IR_VAR
 xchain00065_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00065_n6_α
 xchain00065_n4_β:
 jmp proc_cosf_ω
# IR_RETURN
 xchain00065_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cosf_γ
# IR_TO
 xchain00065_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00068_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00065_n7_α
 xchain00065_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00068_0
# IR_LIT_REAL
 xchain00065_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00065_n8_α
 xchain00065_n7_β:
 jmp xchain00065_n6_β
.Lx00069_0:
 .quad 4596373779694328218
 xchain00065_n8_α:
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
 je xchain00065_n6_β
 jmp xchain00065_n6_β
 xchain00065_n8_β:
 jmp xchain00065_n6_β
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
 xchain00070_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 jmp xchain00070_n2_α
# IR_UNOP
 xchain00070_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00070_n2_α
 cmp eax, 0
 jne xchain00070_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00070_n3_α
 xchain00070_n1_β:
 jmp xchain00070_n2_α
# IR_LIT_INTEGER
 xchain00070_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00070_n4_α
 xchain00070_n2_β:
 jmp proc_sqrtf_ω
.Lx00071_0:
 .quad 1
# IR_LIT_STRING
 xchain00070_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00070_n5_α
 xchain00070_n3_β:
 jmp proc_sqrtf_ω
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "sqrt(7.4)"
# IR_VAR
 xchain00070_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00070_n6_α
 xchain00070_n4_β:
 jmp proc_sqrtf_ω
# IR_RETURN
 xchain00070_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_sqrtf_γ
# IR_TO
 xchain00070_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00073_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00070_n7_α
 xchain00070_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00073_0
# IR_LIT_REAL
 xchain00070_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00070_n8_α
 xchain00070_n7_β:
 jmp xchain00070_n6_β
.Lx00074_0:
 .quad 4620017677738023322
 xchain00070_n8_α:
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
 je xchain00070_n6_β
 jmp xchain00070_n6_β
 xchain00070_n8_β:
 jmp xchain00070_n6_β
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
 xchain00075_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00075_n1_α
 xchain00075_n0_β:
 jmp xchain00075_n2_α
# IR_UNOP
 xchain00075_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00075_n2_α
 cmp eax, 0
 jne xchain00075_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00075_n3_α
 xchain00075_n1_β:
 jmp xchain00075_n2_α
# IR_LIT_INTEGER
 xchain00075_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00075_n4_α
 xchain00075_n2_β:
 jmp proc_logf_ω
.Lx00076_0:
 .quad 1
# IR_LIT_STRING
 xchain00075_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00075_n5_α
 xchain00075_n3_β:
 jmp proc_logf_ω
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "log(25.,17.)"
# IR_VAR
 xchain00075_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00075_n6_α
 xchain00075_n4_β:
 jmp proc_logf_ω
# IR_RETURN
 xchain00075_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_logf_γ
# IR_TO
 xchain00075_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00078_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00075_n7_α
 xchain00075_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00078_0
# IR_LIT_REAL
 xchain00075_n7_α:
 mov qword ptr [rbp + 192], 7
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00075_n8_α
 xchain00075_n7_β:
 jmp xchain00075_n6_β
.Lx00079_0:
 .quad 4627730092099895296
# IR_LIT_REAL
 xchain00075_n8_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00075_n9_α
 xchain00075_n8_β:
 jmp xchain00075_n6_β
.Lx00080_0:
 .quad 4625478292286210048
 xchain00075_n9_α:
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
 je xchain00075_n6_β
 jmp xchain00075_n6_β
 xchain00075_n9_β:
 jmp xchain00075_n6_β
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
 xchain00081_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00081_n1_α
 xchain00081_n0_β:
 jmp xchain00081_n2_α
# IR_UNOP
 xchain00081_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00081_n2_α
 cmp eax, 0
 jne xchain00081_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00081_n3_α
 xchain00081_n1_β:
 jmp xchain00081_n2_α
# IR_LIT_INTEGER
 xchain00081_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00081_n4_α
 xchain00081_n2_β:
 jmp proc_nullfunc_ω
.Lx00082_0:
 .quad 1
# IR_LIT_STRING
 xchain00081_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00081_n5_α
 xchain00081_n3_β:
 jmp proc_nullfunc_ω
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "p()"
# IR_VAR
 xchain00081_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00081_n6_α
 xchain00081_n4_β:
 jmp proc_nullfunc_ω
# IR_RETURN
 xchain00081_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullfunc_γ
# IR_TO
 xchain00081_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00084_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00081_n7_α
 xchain00081_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00084_0
 xchain00081_n7_α:
 mov rdi, qword ptr [rip + .Lx00085_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00085_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00085_3]
 lea rdx, [rip + .Lx00085_4]
 jmp rax
.Lx00085_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00085_2
.Lx00085_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00085_2
.Lx00085_1:
 call rt_faildescr@PLT
.Lx00085_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00081_n6_β
 jmp xchain00081_n6_β
 xchain00081_n7_β:
 jmp xchain00081_n6_β
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
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
proc_listcall_α_body:
# IR_VAR_REF
 xchain00086_n0_α:
 mov rdi, 1879052368
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp xchain00086_n3_α
# IR_NULLTEST_VAR
 xchain00086_n1_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 99
 je xchain00086_n3_α
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00086_n3_α
 cmp eax, 0
 jne xchain00086_n3_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 504], rax
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp xchain00086_n3_α
# IR_LIT_INTEGER
 xchain00086_n2_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00086_n4_α
 xchain00086_n2_β:
 jmp xchain00086_n3_α
.Lx00087_0:
 .quad 1
# IR_VAR
 xchain00086_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00086_n5_α
 xchain00086_n3_β:
 jmp xchain00086_n6_α
# IR_ASSIGN_VAR
 xchain00086_n4_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00086_n3_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00086_n7_α
 xchain00086_n4_β:
 jmp xchain00086_n3_α
# IR_UNOP
 xchain00086_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00086_n6_α
 cmp eax, 0
 jne xchain00086_n6_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00086_n8_α
 xchain00086_n5_β:
 jmp xchain00086_n6_α
# IR_LIT_INTEGER
 xchain00086_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00086_n9_α
 xchain00086_n6_β:
 jmp proc_listcall_ω
.Lx00088_0:
 .quad 1
# IR_MAKE_LIST
 xchain00086_n7_α:
 lea rdi, [rbp + 464]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00086_n10_α
 xchain00086_n7_β:
 jmp xchain00086_n3_α
# IR_LIT_STRING
 xchain00086_n8_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00086_n11_α
 xchain00086_n8_β:
 jmp proc_listcall_ω
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "p ! L"
# IR_VAR
 xchain00086_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00086_n12_α
 xchain00086_n9_β:
 jmp proc_listcall_ω
# IR_ASSIGN gva
 xchain00086_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00086_n13_α
 xchain00086_n10_β:
 jmp xchain00086_n3_α
# IR_RETURN
 xchain00086_n11_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listcall_γ
# IR_TO
 xchain00086_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00090_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00086_n14_α
 xchain00086_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00090_0
# IR_MOVE_LABEL
 xchain00086_n13_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + xchain00086_n3_α]
 mov qword ptr [rbp + 416], rax
 jmp xchain00086_n3_α
 xchain00086_n13_β:
 jmp xchain00086_n3_α
# IR_LIT_STRING
 xchain00086_n14_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00086_n16_α
 xchain00086_n14_β:
 jmp xchain00086_n12_β
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "nullf"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n15_α:
 jmp qword ptr [rbp + 416]
 xchain00086_n15_β:
 jmp xchain00086_n3_α
# IR_VAR
 xchain00086_n16_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00086_n17_α
 xchain00086_n16_β:
 jmp xchain00086_n12_β
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00086_n17_α:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 mov qword ptr [rbp + 192], 0
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00092_7
 lea rcx, [rip + .Lx00092_3]
 lea rdx, [rip + .Lx00092_4]
 jmp rax
.Lx00092_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx00092_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00092_2
.Lx00092_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00092_2
.Lx00092_4:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx00092_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00092_2
.Lx00092_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00092_2
.Lx00092_7:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 lea r8, [rbp + 192]
 call rt_call_apply_gen_h@PLT
.Lx00092_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00086_n12_β
 jmp xchain00086_n12_β
 xchain00086_n17_β:
 mov rax, qword ptr [rbp + 192]
 cmp rax, 1
 jne .Lx00092_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx00092_8:
 lea rdi, [rbp + 192]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00086_n12_β
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00086_n12_β
 jmp xchain00086_n12_β
proc_listcall_res:
add rsp, 8
pop rbp
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 600]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
jmp rax
proc_listcall_ω:
mov rax, [rbp + 608]
lea rsp, [rbp + 624]
mov rbp, [rbp + 616]
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
 xchain00093_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00093_n1_α
 xchain00093_n0_β:
 jmp xchain00093_n2_α
# IR_UNOP
 xchain00093_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00093_n2_α
 cmp eax, 0
 jne xchain00093_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00093_n3_α
 xchain00093_n1_β:
 jmp xchain00093_n2_α
# IR_LIT_INTEGER
 xchain00093_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00093_n4_α
 xchain00093_n2_β:
 jmp proc_addfunc_ω
.Lx00094_0:
 .quad 1
# IR_LIT_STRING
 xchain00093_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00093_n5_α
 xchain00093_n3_β:
 jmp proc_addfunc_ω
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "add(4, 7)"
# IR_VAR
 xchain00093_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00093_n6_α
 xchain00093_n4_β:
 jmp proc_addfunc_ω
# IR_RETURN
 xchain00093_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_addfunc_γ
# IR_TO
 xchain00093_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00096_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00093_n7_α
 xchain00093_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00096_0
# IR_LIT_INTEGER
 xchain00093_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00093_n8_α
 xchain00093_n7_β:
 jmp xchain00093_n6_β
.Lx00097_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00093_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00093_n9_α
 xchain00093_n8_β:
 jmp xchain00093_n6_β
.Lx00098_0:
 .quad 7
 xchain00093_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00099_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00099_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00099_3]
 lea rdx, [rip + .Lx00099_4]
 jmp rax
.Lx00099_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00099_2
.Lx00099_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00099_2
.Lx00099_1:
 call rt_faildescr@PLT
.Lx00099_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00093_n6_β
 jmp xchain00093_n6_β
 xchain00093_n9_β:
 jmp xchain00093_n6_β
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
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
 xchain00100_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00100_n1_α
 xchain00100_n0_β:
 jmp proc_add_ω
# IR_VAR
 xchain00100_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 184], rax
 jmp xchain00100_n2_α
 xchain00100_n1_β:
 jmp proc_add_ω
# IR_COERCE_NUMERIC
 xchain00100_n2_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00101_1
 cmp eax, 6
 jne .Lx00101_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx00101_0
.Lx00101_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp .Lx00101_2
.Lx00101_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00101_2:
 jmp xchain00100_n3_α
 xchain00100_n2_β:
 jmp proc_add_ω
# IR_COERCE_NUMERIC
 xchain00100_n3_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx00102_1
 cmp eax, 6
 jne .Lx00102_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00102_0
.Lx00102_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 88], rax
 jmp .Lx00102_2
.Lx00102_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00102_2:
 jmp xchain00100_n4_α
 xchain00100_n3_β:
 jmp proc_add_ω
 xchain00100_n4_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 112]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00103_2
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [rbp + 120]
 mov rcx, qword ptr [rbp + 88]
 add rax, rcx
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 jmp xchain00100_n5_α
.Lx00103_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 mov r8d, 0
 lea r9, [rbp + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00103_3
.Lx00103_2:
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
.Lx00103_3:
 jmp xchain00100_n5_α
 xchain00100_n4_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00100_n5_α:
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
 xchain00104_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00104_n1_α
 xchain00104_n0_β:
 jmp xchain00104_n2_α
# IR_UNOP
 xchain00104_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00104_n2_α
 cmp eax, 0
 jne xchain00104_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00104_n3_α
 xchain00104_n1_β:
 jmp xchain00104_n2_α
# IR_LIT_INTEGER
 xchain00104_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00104_n4_α
 xchain00104_n2_β:
 jmp proc_rfact0_ω
.Lx00105_0:
 .quad 1
# IR_LIT_STRING
 xchain00104_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00104_n5_α
 xchain00104_n3_β:
 jmp proc_rfact0_ω
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "rfact(0)"
# IR_VAR
 xchain00104_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00104_n6_α
 xchain00104_n4_β:
 jmp proc_rfact0_ω
# IR_RETURN
 xchain00104_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact0_γ
# IR_TO
 xchain00104_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00107_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00104_n7_α
 xchain00104_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00107_0
# IR_LIT_INTEGER
 xchain00104_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00104_n8_α
 xchain00104_n7_β:
 jmp xchain00104_n6_β
.Lx00108_0:
 .quad 0
 xchain00104_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00109_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00109_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00109_3]
 lea rdx, [rip + .Lx00109_4]
 jmp rax
.Lx00109_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00109_2
.Lx00109_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00109_2
.Lx00109_1:
 call rt_faildescr@PLT
.Lx00109_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00104_n6_β
 jmp xchain00104_n6_β
 xchain00104_n8_β:
 jmp xchain00104_n6_β
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
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
 xchain00110_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00110_n1_α
 xchain00110_n0_β:
 jmp xchain00110_n2_α
# IR_UNOP
 xchain00110_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00110_n2_α
 cmp eax, 0
 jne xchain00110_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00110_n3_α
 xchain00110_n1_β:
 jmp xchain00110_n2_α
# IR_LIT_INTEGER
 xchain00110_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00110_n4_α
 xchain00110_n2_β:
 jmp proc_rfact10_ω
.Lx00111_0:
 .quad 1
# IR_LIT_STRING
 xchain00110_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00110_n5_α
 xchain00110_n3_β:
 jmp proc_rfact10_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "rfact(10)"
# IR_VAR
 xchain00110_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00110_n6_α
 xchain00110_n4_β:
 jmp proc_rfact10_ω
# IR_RETURN
 xchain00110_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact10_γ
# IR_TO
 xchain00110_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00113_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00110_n7_α
 xchain00110_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00113_0
# IR_LIT_INTEGER
 xchain00110_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00110_n8_α
 xchain00110_n7_β:
 jmp xchain00110_n6_β
.Lx00114_0:
 .quad 10
 xchain00110_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00115_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00115_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00115_3]
 lea rdx, [rip + .Lx00115_4]
 jmp rax
.Lx00115_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00115_2
.Lx00115_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00115_2
.Lx00115_1:
 call rt_faildescr@PLT
.Lx00115_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00110_n6_β
 jmp xchain00110_n6_β
 xchain00110_n8_β:
 jmp xchain00110_n6_β
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
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
 xchain00116_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00116_n1_α
 xchain00116_n0_β:
 jmp xchain00116_n2_α
# IR_LIT_INTEGER
 xchain00116_n1_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00116_n3_α
 xchain00116_n1_β:
 jmp xchain00116_n2_α
.Lx00117_0:
 .quad 1
# IR_VAR
 xchain00116_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain00116_n4_α
 xchain00116_n2_β:
 jmp proc_rfact_ω
 xchain00116_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00118_2
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00118_2
.Lx00118_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 472]
 cmp rax, rcx
 jge xchain00116_n2_α
 mov rcx, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rcx
 mov rcx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rcx
 jmp xchain00116_n5_α
.Lx00118_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 5
 lea r9, [rbp + 400]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00118_1
 cmp eax, 1
 je xchain00116_n2_α
 jmp xchain00116_n5_α
.Lx00118_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00116_n2_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
 jmp xchain00116_n5_α
 xchain00116_n3_β:
 jmp xchain00116_n2_α
# IR_VAR
 xchain00116_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00116_n6_α
 xchain00116_n4_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00116_n5_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00116_n7_α
 xchain00116_n5_β:
 jmp proc_rfact_ω
.Lx00119_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00116_n6_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00116_n8_α
 xchain00116_n6_β:
 jmp proc_rfact_ω
.Lx00120_0:
 .quad 1
# IR_RETURN
 xchain00116_n7_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact_γ
# IR_COERCE_NUMERIC
 xchain00116_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00121_1
 cmp eax, 6
 jne .Lx00121_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00121_0
.Lx00121_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp .Lx00121_2
.Lx00121_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 304]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00121_2:
 jmp xchain00116_n9_α
 xchain00116_n8_β:
 jmp proc_rfact_ω
 xchain00116_n9_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 304]
 cmp eax, 100
 je .Lx00122_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00122_2
.Lx00122_1:
 mov rax, qword ptr [rbp + 312]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 jmp xchain00116_n10_α
.Lx00122_0:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 mov r8d, 1
 lea r9, [rbp + 272]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00122_3
.Lx00122_2:
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
.Lx00122_3:
 jmp xchain00116_n10_α
 xchain00116_n9_β:
 jmp proc_rfact_ω
 xchain00116_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00123_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00123_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00123_3]
 lea rdx, [rip + .Lx00123_4]
 jmp rax
.Lx00123_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00123_2
.Lx00123_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00123_2
.Lx00123_1:
 call rt_faildescr@PLT
.Lx00123_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00116_n11_α
 xchain00116_n10_β:
 jmp proc_rfact_ω
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "rfact"
# IR_COERCE_NUMERIC
 xchain00116_n11_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00124_1
 cmp eax, 6
 jne .Lx00124_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00124_0
.Lx00124_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00124_2
.Lx00124_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 224]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00124_2:
 jmp xchain00116_n12_α
 xchain00116_n11_β:
 jmp proc_rfact_ω
# IR_COERCE_NUMERIC
 xchain00116_n12_α:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 7
 je .Lx00125_1
 cmp eax, 6
 jne .Lx00125_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00125_0
.Lx00125_1:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 136], rax
 jmp .Lx00125_2
.Lx00125_0:
 lea rdi, [rbp + 224]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00125_2:
 jmp xchain00116_n13_α
 xchain00116_n12_β:
 jmp proc_rfact_ω
 xchain00116_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [rbp + 128]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00126_2
 mov eax, dword ptr [rbp + 128]
 cmp eax, 6
 jne .Lx00126_2
.Lx00126_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 136]
 imul rax, rcx
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 jmp xchain00116_n14_α
.Lx00126_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 2
 lea r9, [rbp + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00126_3
.Lx00126_2:
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
.Lx00126_3:
 jmp xchain00116_n14_α
 xchain00116_n13_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00116_n14_α:
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
 xchain00127_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00127_n1_α
 xchain00127_n0_β:
 jmp xchain00127_n2_α
# IR_UNOP
 xchain00127_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00127_n2_α
 cmp eax, 0
 jne xchain00127_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00127_n3_α
 xchain00127_n1_β:
 jmp xchain00127_n2_α
# IR_LIT_INTEGER
 xchain00127_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00127_n4_α
 xchain00127_n2_β:
 jmp proc_rfib5_ω
.Lx00128_0:
 .quad 1
# IR_LIT_STRING
 xchain00127_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00127_n5_α
 xchain00127_n3_β:
 jmp proc_rfib5_ω
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "rfib(5)"
# IR_VAR
 xchain00127_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00127_n6_α
 xchain00127_n4_β:
 jmp proc_rfib5_ω
# IR_RETURN
 xchain00127_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib5_γ
# IR_TO
 xchain00127_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00130_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00127_n7_α
 xchain00127_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00130_0
# IR_LIT_INTEGER
 xchain00127_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00127_n8_α
 xchain00127_n7_β:
 jmp xchain00127_n6_β
.Lx00131_0:
 .quad 5
 xchain00127_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00132_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00132_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00132_3]
 lea rdx, [rip + .Lx00132_4]
 jmp rax
.Lx00132_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00132_2
.Lx00132_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00132_2
.Lx00132_1:
 call rt_faildescr@PLT
.Lx00132_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00127_n6_β
 jmp xchain00127_n6_β
 xchain00127_n8_β:
 jmp xchain00127_n6_β
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
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
 xchain00133_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00133_n1_α
 xchain00133_n0_β:
 jmp xchain00133_n2_α
# IR_LIT_INTEGER
 xchain00133_n1_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00133_n3_α
 xchain00133_n1_β:
 jmp xchain00133_n2_α
.Lx00134_0:
 .quad 3
# IR_VAR
 xchain00133_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00133_n4_α
 xchain00133_n2_β:
 jmp proc_rfib_ω
 xchain00133_n3_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00135_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00135_2
.Lx00135_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 616]
 cmp rax, rcx
 jge xchain00133_n2_α
 mov rcx, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rcx
 mov rcx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rcx
 jmp xchain00133_n5_α
.Lx00135_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 5
 lea r9, [rbp + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00135_1
 cmp eax, 1
 je xchain00133_n2_α
 jmp xchain00133_n5_α
.Lx00135_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00133_n2_α
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
 jmp xchain00133_n5_α
 xchain00133_n3_β:
 jmp xchain00133_n2_α
# IR_LIT_INTEGER
 xchain00133_n4_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00133_n6_α
 xchain00133_n4_β:
 jmp proc_rfib_ω
.Lx00136_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00133_n5_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00133_n7_α
 xchain00133_n5_β:
 jmp proc_rfib_ω
.Lx00137_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00133_n6_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00138_1
 cmp eax, 6
 jne .Lx00138_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00138_0
.Lx00138_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00138_2
.Lx00138_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00138_2:
 jmp xchain00133_n8_α
 xchain00133_n6_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00133_n7_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib_γ
 xchain00133_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00133_n9_α
.Lx00139_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00139_3
.Lx00139_2:
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
.Lx00139_3:
 jmp xchain00133_n9_α
 xchain00133_n8_β:
 jmp proc_rfib_ω
 xchain00133_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00140_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00140_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00140_3]
 lea rdx, [rip + .Lx00140_4]
 jmp rax
.Lx00140_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00140_2
.Lx00140_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00140_2
.Lx00140_1:
 call rt_faildescr@PLT
.Lx00140_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00133_n10_α
 xchain00133_n9_β:
 jmp proc_rfib_ω
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "rfib"
# IR_VAR
 xchain00133_n10_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00133_n11_α
 xchain00133_n10_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00133_n11_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00133_n12_α
 xchain00133_n11_β:
 jmp proc_rfib_ω
.Lx00141_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00133_n12_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00142_1
 cmp eax, 6
 jne .Lx00142_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00142_0
.Lx00142_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp .Lx00142_2
.Lx00142_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00142_2:
 jmp xchain00133_n13_α
 xchain00133_n12_β:
 jmp proc_rfib_ω
 xchain00133_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00143_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00143_2
.Lx00143_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 416], 6
 mov qword ptr [rbp + 424], rax
 jmp xchain00133_n14_α
.Lx00143_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 1
 lea r9, [rbp + 416]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00143_3
.Lx00143_2:
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
.Lx00143_3:
 jmp xchain00133_n14_α
 xchain00133_n13_β:
 jmp proc_rfib_ω
 xchain00133_n14_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00144_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00144_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00144_3]
 lea rdx, [rip + .Lx00144_4]
 jmp rax
.Lx00144_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00144_2
.Lx00144_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00144_2
.Lx00144_1:
 call rt_faildescr@PLT
.Lx00144_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00133_n15_α
 xchain00133_n14_β:
 jmp proc_rfib_ω
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "rfib"
# IR_COERCE_NUMERIC
 xchain00133_n15_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00145_1
 cmp eax, 6
 jne .Lx00145_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00145_0
.Lx00145_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00145_2
.Lx00145_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 368]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00145_2:
 jmp xchain00133_n16_α
 xchain00133_n15_β:
 jmp proc_rfib_ω
# IR_COERCE_NUMERIC
 xchain00133_n16_α:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 7
 je .Lx00146_1
 cmp eax, 6
 jne .Lx00146_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00146_0
.Lx00146_1:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 136], rax
 jmp .Lx00146_2
.Lx00146_0:
 lea rdi, [rbp + 368]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 128]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00146_2:
 jmp xchain00133_n17_α
 xchain00133_n16_β:
 jmp proc_rfib_ω
 xchain00133_n17_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 128]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00147_2
 mov eax, dword ptr [rbp + 128]
 cmp eax, 6
 jne .Lx00147_2
.Lx00147_1:
 mov rax, qword ptr [rbp + 168]
 mov rcx, qword ptr [rbp + 136]
 add rax, rcx
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 jmp xchain00133_n18_α
.Lx00147_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8d, 0
 lea r9, [rbp + 96]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00147_3
.Lx00147_2:
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
.Lx00147_3:
 jmp xchain00133_n18_α
 xchain00133_n17_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00133_n18_α:
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
 xchain00148_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 984], rax
 jmp xchain00148_n1_α
 xchain00148_n0_β:
 jmp xchain00148_n2_α
# IR_UNOP
 xchain00148_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00148_n2_α
 cmp eax, 0
 jne xchain00148_n2_α
 mov qword ptr [rbp + 944], 0
 mov qword ptr [rbp + 952], 0
 jmp xchain00148_n3_α
 xchain00148_n1_β:
 jmp xchain00148_n2_α
# IR_LIT_INTEGER
 xchain00148_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00148_n4_α
 xchain00148_n2_β:
 jmp proc_prslow_ω
.Lx00149_0:
 .quad 1
# IR_LIT_STRING
 xchain00148_n3_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00148_n5_α
 xchain00148_n3_β:
 jmp proc_prslow_ω
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "prslow(7)"
# IR_VAR
 xchain00148_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00148_n6_α
 xchain00148_n4_β:
 jmp proc_prslow_ω
# IR_RETURN
 xchain00148_n5_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_prslow_γ
# IR_TO
 xchain00148_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00151_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00148_n7_α
 xchain00148_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00151_0
# IR_LIT_INTEGER
 xchain00148_n7_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00148_n8_α
 xchain00148_n7_β:
 jmp xchain00148_n9_α
.Lx00152_0:
 .quad 0
 xchain00148_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00148_n9_α
 xchain00148_n8_β:
 jmp xchain00148_n9_α
# IR_LIT_INTEGER
 xchain00148_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00148_n10_α
 xchain00148_n9_β:
 jmp xchain00148_n6_β
.Lx00153_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00148_n10_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00148_n11_α
 xchain00148_n10_β:
 jmp xchain00148_n6_β
.Lx00154_0:
 .quad 7
# IR_TO
 xchain00148_n11_α:
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 176], rax
.Lx00155_0:
 mov rax, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 232]
 cmp rax, rcx
 jg xchain00148_n6_β
 mov qword ptr [rbp + 160], 6
 mov qword ptr [rbp + 168], rax
 jmp xchain00148_n12_α
 xchain00148_n11_β:
 inc qword ptr [rbp + 176]
 jmp .Lx00155_0
 xchain00148_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00148_n13_α
 xchain00148_n12_β:
 jmp xchain00148_n6_β
# IR_VAR
 xchain00148_n13_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 584], rax
 jmp xchain00148_n14_α
 xchain00148_n13_β:
 jmp xchain00148_n15_α
# IR_LIT_INTEGER
 xchain00148_n14_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00148_n16_α
 xchain00148_n14_β:
 jmp xchain00148_n15_α
.Lx00156_0:
 .quad 2
# IR_VAR
 xchain00148_n15_α:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 360], rax
 jmp xchain00148_n17_α
 xchain00148_n15_β:
 jmp xchain00148_n11_β
# IR_VAR
 xchain00148_n16_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 744], rax
 jmp xchain00148_n18_α
 xchain00148_n16_β:
 jmp xchain00148_n15_α
# IR_LIT_INTEGER
 xchain00148_n17_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00148_n19_α
 xchain00148_n17_β:
 jmp xchain00148_n11_β
.Lx00157_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00148_n18_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00148_n20_α
 xchain00148_n18_β:
 jmp xchain00148_n15_α
.Lx00158_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00148_n19_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx00159_1
 cmp eax, 6
 jne .Lx00159_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00159_0
.Lx00159_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 328], rax
 jmp .Lx00159_2
.Lx00159_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00159_2:
 jmp xchain00148_n21_α
 xchain00148_n19_β:
 jmp xchain00148_n11_β
# IR_COERCE_NUMERIC
 xchain00148_n20_α:
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 7
 je .Lx00160_1
 cmp eax, 6
 jne .Lx00160_0
 mov eax, dword ptr [rbp + 768]
 cmp eax, 6
 jne .Lx00160_0
.Lx00160_1:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 712], rax
 jmp .Lx00160_2
.Lx00160_0:
 lea rdi, [rbp + 1024]
 lea rsi, [rbp + 768]
 lea rdx, [rbp + 704]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00160_2:
 jmp xchain00148_n22_α
 xchain00148_n20_β:
 jmp xchain00148_n15_α
 xchain00148_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 320]
 cmp eax, 100
 je .Lx00161_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00161_2
.Lx00161_1:
 mov rax, qword ptr [rbp + 328]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain00148_n23_α
.Lx00161_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 0
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00161_3
.Lx00161_2:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n11_β
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
.Lx00161_3:
 jmp xchain00148_n23_α
 xchain00148_n21_β:
 jmp xchain00148_n11_β
 xchain00148_n22_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 704]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00162_2
.Lx00162_1:
 mov rax, qword ptr [rbp + 712]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 672], 6
 mov qword ptr [rbp + 680], rax
 jmp xchain00148_n24_α
.Lx00162_0:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 1
 lea r9, [rbp + 672]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00162_3
.Lx00162_2:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n15_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
.Lx00162_3:
 jmp xchain00148_n24_α
 xchain00148_n22_β:
 jmp xchain00148_n15_α
 xchain00148_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00148_n25_α
 xchain00148_n23_β:
 jmp xchain00148_n11_β
# IR_TO
 xchain00148_n24_α:
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 624], rax
.Lx00163_0:
 mov rax, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 680]
 cmp rax, rcx
 jg xchain00148_n15_α
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain00148_n26_α
 xchain00148_n24_β:
 inc qword ptr [rbp + 624]
 jmp .Lx00163_0
 xchain00148_n25_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00148_n11_β
xchain00148_n25_β:
 jmp xchain00148_n11_β
# IR_COERCE_NUMERIC
 xchain00148_n26_α:
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 7
 je .Lx00164_1
 cmp eax, 6
 jne .Lx00164_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00164_0
.Lx00164_1:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 552], rax
 jmp .Lx00164_2
.Lx00164_0:
 lea rdi, [rbp + 1024]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00164_2:
 jmp xchain00148_n27_α
 xchain00148_n26_β:
 jmp xchain00148_n15_α
# IR_COERCE_NUMERIC
 xchain00148_n27_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 7
 je .Lx00165_1
 cmp eax, 6
 jne .Lx00165_0
 mov eax, dword ptr [rbp + 1024]
 cmp eax, 6
 jne .Lx00165_0
.Lx00165_1:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rax
 jmp .Lx00165_2
.Lx00165_0:
 lea rdi, [rbp + 608]
 lea rsi, [rbp + 1024]
 lea rdx, [rbp + 512]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00165_2:
 jmp xchain00148_n28_α
 xchain00148_n27_β:
 jmp xchain00148_n15_α
 xchain00148_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00166_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00166_2
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00166_2
.Lx00166_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, qword ptr [rbp + 520]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 480], 6
 mov qword ptr [rbp + 488], rax
 jmp xchain00148_n29_α
.Lx00166_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 4
 lea r9, [rbp + 480]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00166_3
.Lx00166_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00148_n15_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
.Lx00166_3:
 jmp xchain00148_n29_α
 xchain00148_n28_β:
 jmp xchain00148_n15_α
# IR_LIT_INTEGER
 xchain00148_n29_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00148_n30_α
 xchain00148_n29_β:
 jmp xchain00148_n24_β
.Lx00167_0:
 .quad 0
 xchain00148_n30_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 480]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 100
 je .Lx00168_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00168_2
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00168_2
.Lx00168_1:
 mov rax, qword ptr [rbp + 488]
 mov rcx, qword ptr [rbp + 808]
 cmp rax, rcx
 jne xchain00148_n24_β
 mov rcx, qword ptr [rbp + 800]
 mov qword ptr [rbp + 448], rcx
 mov rcx, qword ptr [rbp + 808]
 mov qword ptr [rbp + 456], rcx
 jmp xchain00148_n11_β
.Lx00168_0:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 9
 lea r9, [rbp + 448]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00168_1
 cmp eax, 1
 je xchain00148_n24_β
 jmp xchain00148_n11_β
.Lx00168_2:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00148_n24_β
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 456], rax
 jmp xchain00148_n11_β
 xchain00148_n30_β:
 jmp xchain00148_n24_β
 xchain00148_n31_α:
 jmp xchain00148_n11_β
xchain00148_n31_β:
 jmp xchain00148_n11_β
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
 xchain00169_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00169_n1_α
 xchain00169_n0_β:
 jmp xchain00169_n2_α
# IR_UNOP
 xchain00169_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00169_n2_α
 cmp eax, 0
 jne xchain00169_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00169_n3_α
 xchain00169_n1_β:
 jmp xchain00169_n2_α
# IR_LIT_INTEGER
 xchain00169_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00169_n4_α
 xchain00169_n2_β:
 jmp proc_if0_ω
.Lx00170_0:
 .quad 1
# IR_LIT_STRING
 xchain00169_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00169_n5_α
 xchain00169_n3_β:
 jmp proc_if0_ω
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "if 0 then 1"
# IR_VAR
 xchain00169_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00169_n6_α
 xchain00169_n4_β:
 jmp proc_if0_ω
# IR_RETURN
 xchain00169_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_if0_γ
# IR_TO
 xchain00169_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00172_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00169_n7_α
 xchain00169_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00172_0
# IR_LIT_INTEGER
 xchain00169_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00169_n8_α
 xchain00169_n7_β:
 jmp xchain00169_n6_β
.Lx00173_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00169_n8_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00169_n9_α
 xchain00169_n8_β:
 jmp xchain00169_n6_β
.Lx00174_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00169_n9_α:
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00169_n6_β]
 mov qword ptr [rbp + 144], rax
 jmp xchain00169_n6_β
 xchain00169_n9_β:
 jmp xchain00169_n6_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00169_n10_α:
 jmp qword ptr [rbp + 144]
 xchain00169_n10_β:
 jmp xchain00169_n6_β
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
 xchain00175_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 920], rax
 jmp xchain00175_n1_α
 xchain00175_n0_β:
 jmp xchain00175_n2_α
# IR_UNOP
 xchain00175_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00175_n2_α
 cmp eax, 0
 jne xchain00175_n2_α
 mov qword ptr [rbp + 880], 0
 mov qword ptr [rbp + 888], 0
 jmp xchain00175_n3_α
 xchain00175_n1_β:
 jmp xchain00175_n2_α
# IR_LIT_INTEGER
 xchain00175_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00175_n4_α
 xchain00175_n2_β:
 jmp proc_case3_ω
.Lx00176_0:
 .quad 1
# IR_LIT_STRING
 xchain00175_n3_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00175_n5_α
 xchain00175_n3_β:
 jmp proc_case3_ω
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "case 3 of..."
# IR_VAR
 xchain00175_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00175_n6_α
 xchain00175_n4_β:
 jmp proc_case3_ω
# IR_RETURN
 xchain00175_n5_α:
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_case3_γ
# IR_TO
 xchain00175_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00178_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00175_n7_α
 xchain00175_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00178_0
# IR_LIT_INTEGER
 xchain00175_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00175_n8_α
 xchain00175_n7_β:
 jmp xchain00175_n6_β
.Lx00179_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00175_n8_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00175_n9_α
 xchain00175_n8_β:
 jmp xchain00175_n6_β
.Lx00180_0:
 .quad 1
 xchain00175_n9_α:
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
 je xchain00175_n11_α
 jmp xchain00175_n10_α
 xchain00175_n9_β:
 jmp xchain00175_n11_α
# IR_LIT_INTEGER
 xchain00175_n10_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00175_n12_α
 xchain00175_n10_β:
 jmp xchain00175_n6_β
.Lx00181_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00175_n11_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00175_n13_α
 xchain00175_n11_β:
 jmp xchain00175_n6_β
.Lx00182_0:
 .quad 2
 xchain00175_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00175_n14_α
 xchain00175_n12_β:
 jmp xchain00175_n6_β
 xchain00175_n13_α:
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
 je xchain00175_n16_α
 jmp xchain00175_n15_α
 xchain00175_n13_β:
 jmp xchain00175_n16_α
# IR_VAR
 xchain00175_n14_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 136], rax
 jmp xchain00175_n6_β
 xchain00175_n14_β:
 jmp xchain00175_n6_β
# IR_LIT_INTEGER
 xchain00175_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00175_n17_α
 xchain00175_n15_β:
 jmp xchain00175_n6_β
.Lx00183_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00175_n16_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00175_n18_α
 xchain00175_n16_β:
 jmp xchain00175_n6_β
.Lx00184_0:
 .quad 3
 xchain00175_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00175_n14_α
 xchain00175_n17_β:
 jmp xchain00175_n6_β
 xchain00175_n18_α:
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
 je xchain00175_n20_α
 jmp xchain00175_n19_α
 xchain00175_n18_β:
 jmp xchain00175_n20_α
# IR_LIT_INTEGER
 xchain00175_n19_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00175_n21_α
 xchain00175_n19_β:
 jmp xchain00175_n6_β
.Lx00185_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00175_n20_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00175_n22_α
 xchain00175_n20_β:
 jmp xchain00175_n6_β
.Lx00186_0:
 .quad 4
 xchain00175_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00175_n14_α
 xchain00175_n21_β:
 jmp xchain00175_n6_β
 xchain00175_n22_α:
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
 je xchain00175_n24_α
 jmp xchain00175_n23_α
 xchain00175_n22_β:
 jmp xchain00175_n24_α
# IR_LIT_INTEGER
 xchain00175_n23_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00175_n25_α
 xchain00175_n23_β:
 jmp xchain00175_n6_β
.Lx00187_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00175_n24_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00175_n26_α
 xchain00175_n24_β:
 jmp xchain00175_n6_β
.Lx00188_0:
 .quad 0
 xchain00175_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00175_n14_α
 xchain00175_n25_β:
 jmp xchain00175_n6_β
 xchain00175_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00175_n14_α
 xchain00175_n26_β:
 jmp xchain00175_n6_β
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
 xchain00189_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00189_n1_α
 xchain00189_n0_β:
 jmp xchain00189_n2_α
# IR_UNOP
 xchain00189_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00189_n2_α
 cmp eax, 0
 jne xchain00189_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00189_n3_α
 xchain00189_n1_β:
 jmp xchain00189_n2_α
# IR_LIT_INTEGER
 xchain00189_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00189_n4_α
 xchain00189_n2_β:
 jmp proc_nulltest_ω
.Lx00190_0:
 .quad 1
# IR_LIT_STRING
 xchain00189_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00189_n5_α
 xchain00189_n3_β:
 jmp proc_nulltest_ω
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "\\8"
# IR_VAR
 xchain00189_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00189_n6_α
 xchain00189_n4_β:
 jmp proc_nulltest_ω
# IR_RETURN
 xchain00189_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nulltest_γ
# IR_TO
 xchain00189_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00192_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00189_n7_α
 xchain00189_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00192_0
# IR_LIT_INTEGER
 xchain00189_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00189_n8_α
 xchain00189_n7_β:
 jmp xchain00189_n6_β
.Lx00193_0:
 .quad 8
# IR_UNOP
 xchain00189_n8_α:
 mov eax, dword ptr [rbp + 160]
 cmp eax, 99
 je xchain00189_n6_β
 cmp eax, 0
 je xchain00189_n6_β
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 jmp xchain00189_n6_β
 xchain00189_n8_β:
 jmp xchain00189_n6_β
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
 xchain00194_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00194_n1_α
 xchain00194_n0_β:
 jmp xchain00194_n2_α
# IR_UNOP
 xchain00194_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00194_n2_α
 cmp eax, 0
 jne xchain00194_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00194_n3_α
 xchain00194_n1_β:
 jmp xchain00194_n2_α
# IR_LIT_INTEGER
 xchain00194_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00194_n4_α
 xchain00194_n2_β:
 jmp proc_typef_ω
.Lx00195_0:
 .quad 1
# IR_LIT_STRING
 xchain00194_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00194_n5_α
 xchain00194_n3_β:
 jmp proc_typef_ω
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "type(s)"
# IR_VAR
 xchain00194_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00194_n6_α
 xchain00194_n4_β:
 jmp proc_typef_ω
# IR_RETURN
 xchain00194_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_typef_γ
# IR_TO
 xchain00194_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00197_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00194_n7_α
 xchain00194_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00197_0
# IR_LIT_STRING
 xchain00194_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00194_n8_α
 xchain00194_n7_β:
 jmp xchain00194_n6_β
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "abcde"
 xchain00194_n8_α:
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
 je xchain00194_n6_β
 jmp xchain00194_n6_β
 xchain00194_n8_β:
 jmp xchain00194_n6_β
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
 xchain00199_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00199_n1_α
 xchain00199_n0_β:
 jmp xchain00199_n2_α
# IR_UNOP
 xchain00199_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00199_n2_α
 cmp eax, 0
 jne xchain00199_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00199_n3_α
 xchain00199_n1_β:
 jmp xchain00199_n2_α
# IR_LIT_INTEGER
 xchain00199_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00199_n4_α
 xchain00199_n2_β:
 jmp proc_imagef_ω
.Lx00200_0:
 .quad 1
# IR_LIT_STRING
 xchain00199_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00199_n5_α
 xchain00199_n3_β:
 jmp proc_imagef_ω
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "image(s)"
# IR_VAR
 xchain00199_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00199_n6_α
 xchain00199_n4_β:
 jmp proc_imagef_ω
# IR_RETURN
 xchain00199_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_imagef_γ
# IR_TO
 xchain00199_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00202_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00199_n7_α
 xchain00199_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00202_0
# IR_LIT_STRING
 xchain00199_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00199_n8_α
 xchain00199_n7_β:
 jmp xchain00199_n6_β
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "ab\tcd"
 xchain00199_n8_α:
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
 je xchain00199_n6_β
 jmp xchain00199_n6_β
 xchain00199_n8_β:
 jmp xchain00199_n6_β
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
 xchain00204_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 568], rax
 jmp xchain00204_n1_α
 xchain00204_n0_β:
 jmp xchain00204_n2_α
# IR_UNOP
 xchain00204_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00204_n2_α
 cmp eax, 0
 jne xchain00204_n2_α
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain00204_n3_α
 xchain00204_n1_β:
 jmp xchain00204_n2_α
# IR_LIT_INTEGER
 xchain00204_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00204_n4_α
 xchain00204_n2_β:
 jmp proc_marshal_ω
.Lx00205_0:
 .quad 1
# IR_LIT_STRING
 xchain00204_n3_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00204_n5_α
 xchain00204_n3_β:
 jmp proc_marshal_ω
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "2(3,1,4,1,6)"
# IR_VAR
 xchain00204_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00204_n6_α
 xchain00204_n4_β:
 jmp proc_marshal_ω
# IR_RETURN
 xchain00204_n5_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_marshal_γ
# IR_TO
 xchain00204_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00207_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00204_n7_α
 xchain00204_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00207_0
# IR_LIT_INTEGER
 xchain00204_n7_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00204_n8_α
 xchain00204_n7_β:
 jmp xchain00204_n6_β
.Lx00208_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00204_n8_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00204_n9_α
 xchain00204_n8_β:
 jmp xchain00204_n6_β
.Lx00209_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00204_n9_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00204_n10_α
 xchain00204_n9_β:
 jmp xchain00204_n6_β
.Lx00210_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00204_n10_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00204_n11_α
 xchain00204_n10_β:
 jmp xchain00204_n6_β
.Lx00211_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00204_n11_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00204_n12_α
 xchain00204_n11_β:
 jmp xchain00204_n6_β
.Lx00212_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00204_n12_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00204_n13_α
 xchain00204_n12_β:
 jmp xchain00204_n6_β
.Lx00213_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00204_n13_α:
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
 mov qword ptr [rbp + 256], 0
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 lea rdx, [rbp + 176]
 mov ecx, 5
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx00214_7
 lea rcx, [rip + .Lx00214_3]
 lea rdx, [rip + .Lx00214_4]
 jmp rax
.Lx00214_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00214_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00214_2
.Lx00214_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00214_2
.Lx00214_4:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00214_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00214_2
.Lx00214_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00214_2
.Lx00214_7:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 lea rdx, [rbp + 176]
 mov ecx, 5
 lea r8, [rbp + 256]
 call rt_call_value_gen_h@PLT
.Lx00214_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain00204_n6_β
 jmp xchain00204_n6_β
 xchain00204_n13_β:
 mov rax, qword ptr [rbp + 256]
 cmp rax, 1
 jne .Lx00214_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx00214_8:
 lea rdi, [rbp + 256]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00204_n6_β
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00204_n6_β
 jmp xchain00204_n6_β
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
 xchain00215_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00215_n1_α
 xchain00215_n0_β:
 jmp xchain00215_n2_α
# IR_UNOP
 xchain00215_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00215_n2_α
 cmp eax, 0
 jne xchain00215_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00215_n3_α
 xchain00215_n1_β:
 jmp xchain00215_n2_α
# IR_LIT_INTEGER
 xchain00215_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00215_n4_α
 xchain00215_n2_β:
 jmp proc_conj5_ω
.Lx00216_0:
 .quad 1
# IR_LIT_STRING
 xchain00215_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00215_n5_α
 xchain00215_n3_β:
 jmp proc_conj5_ω
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "1&2&3&4&5"
# IR_VAR
 xchain00215_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00215_n6_α
 xchain00215_n4_β:
 jmp proc_conj5_ω
# IR_RETURN
 xchain00215_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_conj5_γ
# IR_TO
 xchain00215_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00218_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00215_n7_α
 xchain00215_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00218_0
# IR_LIT_INTEGER
 xchain00215_n7_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00215_n8_α
 xchain00215_n7_β:
 jmp xchain00215_n6_β
.Lx00219_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00215_n8_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00215_n9_α
 xchain00215_n8_β:
 jmp xchain00215_n6_β
.Lx00220_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00215_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00215_n10_α
 xchain00215_n9_β:
 jmp xchain00215_n6_β
.Lx00221_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00215_n10_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00215_n11_α
 xchain00215_n10_β:
 jmp xchain00215_n6_β
.Lx00222_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00215_n11_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00215_n12_α
 xchain00215_n11_β:
 jmp xchain00215_n6_β
.Lx00223_0:
 .quad 5
 xchain00215_n12_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00215_n6_β
xchain00215_n12_β:
 jmp xchain00215_n6_β
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
 xchain00224_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00224_n1_α
 xchain00224_n0_β:
 jmp xchain00224_n2_α
# IR_UNOP
 xchain00224_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00224_n2_α
 cmp eax, 0
 jne xchain00224_n2_α
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00224_n3_α
 xchain00224_n1_β:
 jmp xchain00224_n2_α
# IR_LIT_INTEGER
 xchain00224_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00224_n4_α
 xchain00224_n2_β:
 jmp proc_everyalt_ω
.Lx00225_0:
 .quad 1
# IR_LIT_STRING
 xchain00224_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00224_n5_α
 xchain00224_n3_β:
 jmp proc_everyalt_ω
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "1|2|3|4|5"
# IR_VAR
 xchain00224_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00224_n6_α
 xchain00224_n4_β:
 jmp proc_everyalt_ω
# IR_RETURN
 xchain00224_n5_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyalt_γ
# IR_TO
 xchain00224_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00227_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00224_n7_α
 xchain00224_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00227_0
# IR_LIT_INTEGER
 xchain00224_n7_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00224_n8_α
 xchain00224_n7_β:
 jmp xchain00224_n9_α
.Lx00228_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00224_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00224_n9_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00224_n10_α
 xchain00224_n8_β:
 jmp xchain00224_n6_β
# IR_LIT_INTEGER
 xchain00224_n9_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00224_n11_α
 xchain00224_n9_β:
 jmp xchain00224_n12_α
.Lx00229_0:
 .quad 2
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00224_n10_α:
 jmp qword ptr [rbp + 144]
 xchain00224_n10_β:
 jmp xchain00224_n6_β
# IR_MOVE_LABEL
 xchain00224_n11_α:
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00224_n12_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00224_n10_α
 xchain00224_n11_β:
 jmp xchain00224_n6_β
# IR_LIT_INTEGER
 xchain00224_n12_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00224_n13_α
 xchain00224_n12_β:
 jmp xchain00224_n14_α
.Lx00230_0:
 .quad 3
# IR_MOVE_LABEL
 xchain00224_n13_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00224_n14_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00224_n10_α
 xchain00224_n13_β:
 jmp xchain00224_n6_β
# IR_LIT_INTEGER
 xchain00224_n14_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00224_n15_α
 xchain00224_n14_β:
 jmp xchain00224_n16_α
.Lx00231_0:
 .quad 4
# IR_MOVE_LABEL
 xchain00224_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00224_n16_α]
 mov qword ptr [rbp + 144], rax
 jmp xchain00224_n10_α
 xchain00224_n15_β:
 jmp xchain00224_n6_β
# IR_LIT_INTEGER
 xchain00224_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00224_n17_α
 xchain00224_n16_β:
 jmp xchain00224_n6_β
.Lx00232_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00224_n17_α:
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
 lea rax, [rip + xchain00224_n6_β]
 mov qword ptr [rbp + 144], rax
 jmp xchain00224_n10_α
 xchain00224_n17_β:
 jmp xchain00224_n6_β
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
 xchain00233_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00233_n1_α
 xchain00233_n0_β:
 jmp xchain00233_n2_α
# IR_UNOP
 xchain00233_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00233_n2_α
 cmp eax, 0
 jne xchain00233_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00233_n3_α
 xchain00233_n1_β:
 jmp xchain00233_n2_α
# IR_LIT_INTEGER
 xchain00233_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00233_n4_α
 xchain00233_n2_β:
 jmp proc_everyto_ω
.Lx00234_0:
 .quad 1
# IR_LIT_STRING
 xchain00233_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00233_n5_α
 xchain00233_n3_β:
 jmp proc_everyto_ω
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "1 to 5"
# IR_VAR
 xchain00233_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00233_n6_α
 xchain00233_n4_β:
 jmp proc_everyto_ω
# IR_RETURN
 xchain00233_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyto_γ
# IR_TO
 xchain00233_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00236_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00233_n7_α
 xchain00233_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00236_0
# IR_LIT_INTEGER
 xchain00233_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00233_n8_α
 xchain00233_n7_β:
 jmp xchain00233_n6_β
.Lx00237_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00233_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00233_n9_α
 xchain00233_n8_β:
 jmp xchain00233_n6_β
.Lx00238_0:
 .quad 5
# IR_TO
 xchain00233_n9_α:
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 144], rax
.Lx00239_0:
 mov rax, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 200]
 cmp rax, rcx
 jg xchain00233_n6_β
 mov qword ptr [rbp + 128], 6
 mov qword ptr [rbp + 136], rax
 jmp xchain00233_n9_β
 xchain00233_n9_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00239_0
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
 xchain00240_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
 jmp xchain00240_n1_α
 xchain00240_n0_β:
 jmp xchain00240_n2_α
# IR_UNOP
 xchain00240_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00240_n2_α
 cmp eax, 0
 jne xchain00240_n2_α
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 jmp xchain00240_n3_α
 xchain00240_n1_β:
 jmp xchain00240_n2_α
# IR_VAR
 xchain00240_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00240_n4_α
 xchain00240_n2_β:
 jmp proc_evsusp_ω
# IR_LIT_STRING
 xchain00240_n3_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00240_n5_α
 xchain00240_n3_β:
 jmp proc_evsusp_ω
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "suspend i"
 xchain00240_n4_α:
 mov qword ptr [rbp + 64], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00242_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00242_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00242_3]
 lea rdx, [rip + .Lx00242_4]
 jmp rax
.Lx00242_3:
 mov qword ptr [rbp + 72], rsp
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00242_5
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00242_2
.Lx00242_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00242_2
.Lx00242_4:
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00242_6
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00242_2
.Lx00242_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00242_2
.Lx00242_1:
 call rt_faildescr@PLT
.Lx00242_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00240_n4_β
 xchain00240_n4_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 72]
 jmp qword ptr [rsp]
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "susproc"
# IR_RETURN
 xchain00240_n5_α:
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
lea rax, [rip + xchain00243_n3_β]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
 xchain00243_n0_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00243_n1_α
 xchain00243_n0_β:
 jmp proc_susproc_ω
.Lx00244_0:
 .quad 1
# IR_VAR
 xchain00243_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00243_n2_α
 xchain00243_n1_β:
 jmp proc_susproc_ω
# IR_TO
 xchain00243_n2_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00245_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00243_n3_α
 xchain00243_n2_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00245_0
# IR_SUSPEND yield+resume
 xchain00243_n3_α:
 lea rax, [rip + xchain00243_n3_β]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_susproc_γ
 xchain00243_n3_β:
 jmp xchain00243_n2_β
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
 xchain00246_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00246_n1_α
 xchain00246_n0_β:
 jmp xchain00246_n2_α
# IR_UNOP
 xchain00246_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00246_n2_α
 cmp eax, 0
 jne xchain00246_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00246_n3_α
 xchain00246_n1_β:
 jmp xchain00246_n2_α
# IR_LIT_INTEGER
 xchain00246_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00246_n4_α
 xchain00246_n2_β:
 jmp proc_intcoerce_ω
.Lx00247_0:
 .quad 1
# IR_LIT_STRING
 xchain00246_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00246_n5_α
 xchain00246_n3_β:
 jmp proc_intcoerce_ω
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "+\"407\""
# IR_VAR
 xchain00246_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00246_n6_α
 xchain00246_n4_β:
 jmp proc_intcoerce_ω
# IR_RETURN
 xchain00246_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcoerce_γ
# IR_TO
 xchain00246_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00249_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00246_n7_α
 xchain00246_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00249_0
# IR_LIT_STRING
 xchain00246_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00246_n8_α
 xchain00246_n7_β:
 jmp xchain00246_n6_β
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "407"
# IR_COERCE_NUMERIC
 xchain00246_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00251_1
 cmp eax, 6
 jne .Lx00251_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00251_0
.Lx00251_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00251_2
.Lx00251_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00251_2:
 jmp xchain00246_n9_α
 xchain00246_n8_β:
 jmp xchain00246_n6_β
# IR_UNOP
 xchain00246_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00246_n6_β
 xchain00246_n9_β:
 jmp xchain00246_n6_β
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
 xchain00252_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00252_n1_α
 xchain00252_n0_β:
 jmp xchain00252_n2_α
# IR_UNOP
 xchain00252_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00252_n2_α
 cmp eax, 0
 jne xchain00252_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00252_n3_α
 xchain00252_n1_β:
 jmp xchain00252_n2_α
# IR_LIT_INTEGER
 xchain00252_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00252_n4_α
 xchain00252_n2_β:
 jmp proc_realcoerce_ω
.Lx00253_0:
 .quad 1
# IR_LIT_STRING
 xchain00252_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00252_n5_α
 xchain00252_n3_β:
 jmp proc_realcoerce_ω
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "+\"7.25\""
# IR_VAR
 xchain00252_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00252_n6_α
 xchain00252_n4_β:
 jmp proc_realcoerce_ω
# IR_RETURN
 xchain00252_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcoerce_γ
# IR_TO
 xchain00252_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00255_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00252_n7_α
 xchain00252_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00255_0
# IR_LIT_STRING
 xchain00252_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00252_n8_α
 xchain00252_n7_β:
 jmp xchain00252_n6_β
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "7.25"
# IR_COERCE_NUMERIC
 xchain00252_n8_α:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 7
 je .Lx00257_1
 cmp eax, 6
 jne .Lx00257_0
 mov eax, dword ptr [rbp + 192]
 cmp eax, 6
 jne .Lx00257_0
.Lx00257_1:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 jmp .Lx00257_2
.Lx00257_0:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 192]
 lea rdx, [rbp + 160]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00257_2:
 jmp xchain00252_n9_α
 xchain00252_n8_β:
 jmp xchain00252_n6_β
# IR_UNOP
 xchain00252_n9_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00252_n6_β
 xchain00252_n9_β:
 jmp xchain00252_n6_β
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
 xchain00258_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00258_n1_α
 xchain00258_n0_β:
 jmp xchain00258_n2_α
# IR_UNOP
 xchain00258_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00258_n2_α
 cmp eax, 0
 jne xchain00258_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00258_n3_α
 xchain00258_n1_β:
 jmp xchain00258_n2_α
# IR_LIT_INTEGER
 xchain00258_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00258_n4_α
 xchain00258_n2_β:
 jmp proc_strcoerce_ω
.Lx00259_0:
 .quad 1
# IR_LIT_STRING
 xchain00258_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00258_n5_α
 xchain00258_n3_β:
 jmp proc_strcoerce_ω
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "*407"
# IR_VAR
 xchain00258_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00258_n6_α
 xchain00258_n4_β:
 jmp proc_strcoerce_ω
# IR_RETURN
 xchain00258_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoerce_γ
# IR_TO
 xchain00258_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00261_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00258_n7_α
 xchain00258_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00261_0
# IR_LIT_INTEGER
 xchain00258_n7_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00258_n8_α
 xchain00258_n7_β:
 jmp xchain00258_n6_β
.Lx00262_0:
 .quad 407
# IR_UNOP
 xchain00258_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00258_n6_β
 xchain00258_n8_β:
 jmp xchain00258_n6_β
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
 xchain00263_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00263_n1_α
 xchain00263_n0_β:
 jmp xchain00263_n2_α
# IR_UNOP
 xchain00263_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00263_n2_α
 cmp eax, 0
 jne xchain00263_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00263_n3_α
 xchain00263_n1_β:
 jmp xchain00263_n2_α
# IR_LIT_INTEGER
 xchain00263_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00263_n4_α
 xchain00263_n2_β:
 jmp proc_strcoercer_ω
.Lx00264_0:
 .quad 1
# IR_LIT_STRING
 xchain00263_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00263_n5_α
 xchain00263_n3_β:
 jmp proc_strcoercer_ω
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "*7.25"
# IR_VAR
 xchain00263_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00263_n6_α
 xchain00263_n4_β:
 jmp proc_strcoercer_ω
# IR_RETURN
 xchain00263_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoercer_γ
# IR_TO
 xchain00263_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00266_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00263_n7_α
 xchain00263_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00266_0
# IR_LIT_REAL
 xchain00263_n7_α:
 mov qword ptr [rbp + 160], 7
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00263_n8_α
 xchain00263_n7_β:
 jmp xchain00263_n6_β
.Lx00267_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00263_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00263_n6_β
 xchain00263_n8_β:
 jmp xchain00263_n6_β
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
 xchain00268_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00268_n1_α
 xchain00268_n0_β:
 jmp xchain00268_n2_α
# IR_UNOP
 xchain00268_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00268_n2_α
 cmp eax, 0
 jne xchain00268_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00268_n3_α
 xchain00268_n1_β:
 jmp xchain00268_n2_α
# IR_LIT_INTEGER
 xchain00268_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00268_n4_α
 xchain00268_n2_β:
 jmp proc_tointeger_ω
.Lx00269_0:
 .quad 1
# IR_LIT_STRING
 xchain00268_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00268_n5_α
 xchain00268_n3_β:
 jmp proc_tointeger_ω
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "integer(\"407\")"
# IR_VAR
 xchain00268_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00268_n6_α
 xchain00268_n4_β:
 jmp proc_tointeger_ω
# IR_RETURN
 xchain00268_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tointeger_γ
# IR_TO
 xchain00268_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00271_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00268_n7_α
 xchain00268_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00271_0
# IR_LIT_STRING
 xchain00268_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00268_n8_α
 xchain00268_n7_β:
 jmp xchain00268_n6_β
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "407"
 xchain00268_n8_α:
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
 je xchain00268_n6_β
 jmp xchain00268_n6_β
 xchain00268_n8_β:
 jmp xchain00268_n6_β
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
 xchain00273_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00273_n1_α
 xchain00273_n0_β:
 jmp xchain00273_n2_α
# IR_UNOP
 xchain00273_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00273_n2_α
 cmp eax, 0
 jne xchain00273_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00273_n3_α
 xchain00273_n1_β:
 jmp xchain00273_n2_α
# IR_LIT_INTEGER
 xchain00273_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00273_n4_α
 xchain00273_n2_β:
 jmp proc_toreal_ω
.Lx00274_0:
 .quad 1
# IR_LIT_STRING
 xchain00273_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00273_n5_α
 xchain00273_n3_β:
 jmp proc_toreal_ω
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "real(\"7.25\")"
# IR_VAR
 xchain00273_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00273_n6_α
 xchain00273_n4_β:
 jmp proc_toreal_ω
# IR_RETURN
 xchain00273_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_toreal_γ
# IR_TO
 xchain00273_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00276_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00273_n7_α
 xchain00273_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00276_0
# IR_LIT_STRING
 xchain00273_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00273_n8_α
 xchain00273_n7_β:
 jmp xchain00273_n6_β
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "407"
 xchain00273_n8_α:
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
 je xchain00273_n6_β
 jmp xchain00273_n6_β
 xchain00273_n8_β:
 jmp xchain00273_n6_β
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
 xchain00278_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00278_n1_α
 xchain00278_n0_β:
 jmp xchain00278_n2_α
# IR_UNOP
 xchain00278_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00278_n2_α
 cmp eax, 0
 jne xchain00278_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00278_n3_α
 xchain00278_n1_β:
 jmp xchain00278_n2_α
# IR_LIT_INTEGER
 xchain00278_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00278_n4_α
 xchain00278_n2_β:
 jmp proc_tostring_ω
.Lx00279_0:
 .quad 1
# IR_LIT_STRING
 xchain00278_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00278_n5_α
 xchain00278_n3_β:
 jmp proc_tostring_ω
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "string(407)"
# IR_VAR
 xchain00278_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00278_n6_α
 xchain00278_n4_β:
 jmp proc_tostring_ω
# IR_RETURN
 xchain00278_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tostring_γ
# IR_TO
 xchain00278_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00281_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00278_n7_α
 xchain00278_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00281_0
# IR_LIT_INTEGER
 xchain00278_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00278_n8_α
 xchain00278_n7_β:
 jmp xchain00278_n6_β
.Lx00282_0:
 .quad 407
 xchain00278_n8_α:
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
 je xchain00278_n6_β
 jmp xchain00278_n6_β
 xchain00278_n8_β:
 jmp xchain00278_n6_β
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
 xchain00283_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00283_n1_α
 xchain00283_n0_β:
 jmp xchain00283_n2_α
# IR_UNOP
 xchain00283_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00283_n2_α
 cmp eax, 0
 jne xchain00283_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00283_n3_α
 xchain00283_n1_β:
 jmp xchain00283_n2_α
# IR_LIT_INTEGER
 xchain00283_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00283_n4_α
 xchain00283_n2_β:
 jmp proc_rtostring_ω
.Lx00284_0:
 .quad 1
# IR_LIT_STRING
 xchain00283_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00283_n5_α
 xchain00283_n3_β:
 jmp proc_rtostring_ω
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "string(7.25)"
# IR_VAR
 xchain00283_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00283_n6_α
 xchain00283_n4_β:
 jmp proc_rtostring_ω
# IR_RETURN
 xchain00283_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rtostring_γ
# IR_TO
 xchain00283_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00286_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00283_n7_α
 xchain00283_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00286_0
# IR_LIT_REAL
 xchain00283_n7_α:
 mov qword ptr [rbp + 176], 7
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00283_n8_α
 xchain00283_n7_β:
 jmp xchain00283_n6_β
.Lx00287_0:
 .quad 4619848792751996928
 xchain00283_n8_α:
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
 je xchain00283_n6_β
 jmp xchain00283_n6_β
 xchain00283_n8_β:
 jmp xchain00283_n6_β
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
 xchain00288_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00288_n1_α
 xchain00288_n0_β:
 jmp xchain00288_n2_α
# IR_UNOP
 xchain00288_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00288_n2_α
 cmp eax, 0
 jne xchain00288_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00288_n3_α
 xchain00288_n1_β:
 jmp xchain00288_n2_α
# IR_LIT_INTEGER
 xchain00288_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00288_n4_α
 xchain00288_n2_β:
 jmp proc_tocset_ω
.Lx00289_0:
 .quad 1
# IR_LIT_STRING
 xchain00288_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00288_n5_α
 xchain00288_n3_β:
 jmp proc_tocset_ω
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "cset(\"407\")"
# IR_VAR
 xchain00288_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00288_n6_α
 xchain00288_n4_β:
 jmp proc_tocset_ω
# IR_RETURN
 xchain00288_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tocset_γ
# IR_TO
 xchain00288_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00291_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00288_n7_α
 xchain00288_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00291_0
# IR_LIT_STRING
 xchain00288_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00288_n8_α
 xchain00288_n7_β:
 jmp xchain00288_n6_β
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "407"
 xchain00288_n8_α:
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
 je xchain00288_n6_β
 jmp xchain00288_n6_β
 xchain00288_n8_β:
 jmp xchain00288_n6_β
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
 xchain00293_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00293_n1_α
 xchain00293_n0_β:
 jmp xchain00293_n2_α
# IR_UNOP
 xchain00293_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00293_n2_α
 cmp eax, 0
 jne xchain00293_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00293_n3_α
 xchain00293_n1_β:
 jmp xchain00293_n2_α
# IR_LIT_INTEGER
 xchain00293_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00293_n4_α
 xchain00293_n2_β:
 jmp proc_charf_ω
.Lx00294_0:
 .quad 1
# IR_LIT_STRING
 xchain00293_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00293_n5_α
 xchain00293_n3_β:
 jmp proc_charf_ω
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "char(65)"
# IR_VAR
 xchain00293_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00293_n6_α
 xchain00293_n4_β:
 jmp proc_charf_ω
# IR_RETURN
 xchain00293_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_charf_γ
# IR_TO
 xchain00293_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00296_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00293_n7_α
 xchain00293_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00296_0
# IR_LIT_INTEGER
 xchain00293_n7_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00293_n8_α
 xchain00293_n7_β:
 jmp xchain00293_n6_β
.Lx00297_0:
 .quad 65
 xchain00293_n8_α:
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
 je xchain00293_n6_β
 jmp xchain00293_n6_β
 xchain00293_n8_β:
 jmp xchain00293_n6_β
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
 xchain00298_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00298_n1_α
 xchain00298_n0_β:
 jmp xchain00298_n2_α
# IR_UNOP
 xchain00298_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00298_n2_α
 cmp eax, 0
 jne xchain00298_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00298_n3_α
 xchain00298_n1_β:
 jmp xchain00298_n2_α
# IR_LIT_INTEGER
 xchain00298_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00298_n4_α
 xchain00298_n2_β:
 jmp proc_ordf_ω
.Lx00299_0:
 .quad 1
# IR_LIT_STRING
 xchain00298_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00298_n5_α
 xchain00298_n3_β:
 jmp proc_ordf_ω
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "ord(\"A\")"
# IR_VAR
 xchain00298_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00298_n6_α
 xchain00298_n4_β:
 jmp proc_ordf_ω
# IR_RETURN
 xchain00298_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_ordf_γ
# IR_TO
 xchain00298_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00301_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00298_n7_α
 xchain00298_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00301_0
# IR_LIT_STRING
 xchain00298_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00298_n8_α
 xchain00298_n7_β:
 jmp xchain00298_n6_β
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "A"
 xchain00298_n8_α:
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
 je xchain00298_n6_β
 jmp xchain00298_n6_β
 xchain00298_n8_β:
 jmp xchain00298_n6_β
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
 xchain00303_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00303_n1_α
 xchain00303_n0_β:
 jmp xchain00303_n2_α
# IR_UNOP
 xchain00303_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00303_n2_α
 cmp eax, 0
 jne xchain00303_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00303_n3_α
 xchain00303_n1_β:
 jmp xchain00303_n2_α
# IR_LIT_INTEGER
 xchain00303_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00304_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00303_n4_α
 xchain00303_n2_β:
 jmp proc_strsize_ω
.Lx00304_0:
 .quad 1
# IR_LIT_STRING
 xchain00303_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00303_n5_α
 xchain00303_n3_β:
 jmp proc_strsize_ω
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "*\"abcde\""
# IR_VAR
 xchain00303_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00303_n6_α
 xchain00303_n4_β:
 jmp proc_strsize_ω
# IR_RETURN
 xchain00303_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsize_γ
# IR_TO
 xchain00303_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00306_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00303_n7_α
 xchain00303_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00306_0
# IR_LIT_STRING
 xchain00303_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00303_n8_α
 xchain00303_n7_β:
 jmp xchain00303_n6_β
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "abcde"
# IR_UNOP
 xchain00303_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00303_n6_β
 xchain00303_n8_β:
 jmp xchain00303_n6_β
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
 xchain00308_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00308_n1_α
 xchain00308_n0_β:
 jmp xchain00308_n2_α
# IR_UNOP
 xchain00308_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00308_n2_α
 cmp eax, 0
 jne xchain00308_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00308_n3_α
 xchain00308_n1_β:
 jmp xchain00308_n2_α
# IR_LIT_INTEGER
 xchain00308_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00308_n4_α
 xchain00308_n2_β:
 jmp proc_concat_ω
.Lx00309_0:
 .quad 1
# IR_LIT_STRING
 xchain00308_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00308_n5_α
 xchain00308_n3_β:
 jmp proc_concat_ω
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "\"a\" || \"b\""
# IR_VAR
 xchain00308_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00308_n6_α
 xchain00308_n4_β:
 jmp proc_concat_ω
# IR_RETURN
 xchain00308_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_concat_γ
# IR_TO
 xchain00308_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00311_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00308_n7_α
 xchain00308_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00311_0
# IR_LIT_STRING
 xchain00308_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00308_n8_α
 xchain00308_n7_β:
 jmp xchain00308_n6_β
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00308_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00308_n9_α
 xchain00308_n8_β:
 jmp xchain00308_n6_β
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "b"
 xchain00308_n9_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 call str_concat_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00308_n6_β
 xchain00308_n9_β:
 jmp xchain00308_n6_β
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
 xchain00314_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00314_n1_α
 xchain00314_n0_β:
 jmp xchain00314_n2_α
# IR_UNOP
 xchain00314_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00314_n2_α
 cmp eax, 0
 jne xchain00314_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00314_n3_α
 xchain00314_n1_β:
 jmp xchain00314_n2_α
# IR_LIT_INTEGER
 xchain00314_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00314_n4_α
 xchain00314_n2_β:
 jmp proc_strpick_ω
.Lx00315_0:
 .quad 1
# IR_LIT_STRING
 xchain00314_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00314_n5_α
 xchain00314_n3_β:
 jmp proc_strpick_ω
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string "?\"abcde\""
# IR_VAR
 xchain00314_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00314_n6_α
 xchain00314_n4_β:
 jmp proc_strpick_ω
# IR_RETURN
 xchain00314_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strpick_γ
# IR_TO
 xchain00314_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00317_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00314_n7_α
 xchain00314_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00317_0
# IR_LIT_STRING
 xchain00314_n7_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00314_n8_α
 xchain00314_n7_β:
 jmp xchain00314_n6_β
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "abcde"
# IR_RANDOM
 xchain00314_n8_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00314_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00314_n9_α
 xchain00314_n8_β:
 jmp xchain00314_n6_β
# IR_DEREF variable -> value
 xchain00314_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00314_n6_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00314_n6_β
 xchain00314_n9_β:
 jmp xchain00314_n6_β
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
 xchain00319_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00319_n1_α
 xchain00319_n0_β:
 jmp xchain00319_n2_α
# IR_UNOP
 xchain00319_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00319_n2_α
 cmp eax, 0
 jne xchain00319_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00319_n3_α
 xchain00319_n1_β:
 jmp xchain00319_n2_α
# IR_LIT_INTEGER
 xchain00319_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00320_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00319_n4_α
 xchain00319_n2_β:
 jmp proc_strbang_ω
.Lx00320_0:
 .quad 1
# IR_LIT_STRING
 xchain00319_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00321_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00319_n5_α
 xchain00319_n3_β:
 jmp proc_strbang_ω
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "!\"12345\""
# IR_VAR
 xchain00319_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00319_n6_α
 xchain00319_n4_β:
 jmp proc_strbang_ω
# IR_RETURN
 xchain00319_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strbang_γ
# IR_TO
 xchain00319_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00322_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00319_n7_α
 xchain00319_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00322_0
# IR_LIT_STRING
 xchain00319_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00319_n8_α
 xchain00319_n7_β:
 jmp xchain00319_n6_β
.Lx00323_0:
 .quad .Lx00323_0_s
.Lx00323_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00319_n8_α:
 mov qword ptr [rbp + 144], 0
.Lx00324_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00319_n6_β
 jmp xchain00319_n8_β
 xchain00319_n8_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00324_0
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
 xchain00325_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00325_n1_α
 xchain00325_n0_β:
 jmp xchain00325_n2_α
# IR_UNOP
 xchain00325_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00325_n2_α
 cmp eax, 0
 jne xchain00325_n2_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00325_n3_α
 xchain00325_n1_β:
 jmp xchain00325_n2_α
# IR_LIT_INTEGER
 xchain00325_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00325_n4_α
 xchain00325_n2_β:
 jmp proc_strsub_ω
.Lx00326_0:
 .quad 1
# IR_LIT_STRING
 xchain00325_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00327_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00325_n5_α
 xchain00325_n3_β:
 jmp proc_strsub_ω
.Lx00327_0:
 .quad .Lx00327_0_s
.Lx00327_0_s:
 .string "\"abcde\"[3]"
# IR_VAR
 xchain00325_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00325_n6_α
 xchain00325_n4_β:
 jmp proc_strsub_ω
# IR_RETURN
 xchain00325_n5_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsub_γ
# IR_TO
 xchain00325_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00328_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00325_n7_α
 xchain00325_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00328_0
# IR_LIT_STRING
 xchain00325_n7_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00325_n8_α
 xchain00325_n7_β:
 jmp xchain00325_n6_β
.Lx00329_0:
 .quad .Lx00329_0_s
.Lx00329_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00325_n8_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00330_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00325_n9_α
 xchain00325_n8_β:
 jmp xchain00325_n6_β
.Lx00330_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00325_n9_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00325_n6_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00325_n10_α
 xchain00325_n9_β:
 jmp xchain00325_n6_β
# IR_DEREF variable -> value
 xchain00325_n10_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00325_n6_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00325_n6_β
 xchain00325_n10_β:
 jmp xchain00325_n6_β
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
 xchain00331_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00331_n1_α
 xchain00331_n0_β:
 jmp xchain00331_n2_α
# IR_UNOP
 xchain00331_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00331_n2_α
 cmp eax, 0
 jne xchain00331_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00331_n3_α
 xchain00331_n1_β:
 jmp xchain00331_n2_α
# IR_LIT_INTEGER
 xchain00331_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00331_n4_α
 xchain00331_n2_β:
 jmp proc_substr_ω
.Lx00332_0:
 .quad 1
# IR_LIT_STRING
 xchain00331_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00331_n5_α
 xchain00331_n3_β:
 jmp proc_substr_ω
.Lx00333_0:
 .quad .Lx00333_0_s
.Lx00333_0_s:
 .string "\"abcde\"[2:5]"
# IR_VAR
 xchain00331_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00331_n6_α
 xchain00331_n4_β:
 jmp proc_substr_ω
# IR_RETURN
 xchain00331_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_substr_γ
# IR_TO
 xchain00331_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00334_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00331_n7_α
 xchain00331_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00334_0
# IR_LIT_STRING
 xchain00331_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00331_n8_α
 xchain00331_n7_β:
 jmp xchain00331_n6_β
.Lx00335_0:
 .quad .Lx00335_0_s
.Lx00335_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00331_n8_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00331_n9_α
 xchain00331_n8_β:
 jmp xchain00331_n6_β
.Lx00336_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00331_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00331_n10_α
 xchain00331_n9_β:
 jmp xchain00331_n6_β
.Lx00337_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00331_n10_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8, qword ptr [rbp + 224]
 mov r9, qword ptr [rbp + 232]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00331_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00331_n6_β
 xchain00331_n10_β:
 jmp xchain00331_n6_β
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
 xchain00338_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00338_n1_α
 xchain00338_n0_β:
 jmp xchain00338_n2_α
# IR_UNOP
 xchain00338_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00338_n2_α
 cmp eax, 0
 jne xchain00338_n2_α
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00338_n3_α
 xchain00338_n1_β:
 jmp xchain00338_n2_α
# IR_LIT_INTEGER
 xchain00338_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00338_n4_α
 xchain00338_n2_β:
 jmp proc_subsasg_ω
.Lx00339_0:
 .quad 1
# IR_LIT_STRING
 xchain00338_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00338_n5_α
 xchain00338_n3_β:
 jmp proc_subsasg_ω
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "s[2:5] := \"x\""
# IR_VAR
 xchain00338_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00338_n6_α
 xchain00338_n4_β:
 jmp proc_subsasg_ω
# IR_RETURN
 xchain00338_n5_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_subsasg_γ
# IR_TO
 xchain00338_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00341_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00338_n7_α
 xchain00338_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00341_0
# IR_LIT_STRING
 xchain00338_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00338_n8_α
 xchain00338_n7_β:
 jmp xchain00338_n6_β
.Lx00342_0:
 .quad .Lx00342_0_s
.Lx00342_0_s:
 .string "abcde"
 xchain00338_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00338_n9_α
 xchain00338_n8_β:
 jmp xchain00338_n6_β
# IR_LIT_INTEGER
 xchain00338_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00338_n10_α
 xchain00338_n9_β:
 jmp xchain00338_n6_β
.Lx00343_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00338_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00338_n11_α
 xchain00338_n10_β:
 jmp xchain00338_n6_β
.Lx00344_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00338_n11_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 mov r8, qword ptr [rbp + 240]
 mov r9, qword ptr [rbp + 248]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00338_n6_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00338_n12_α
 xchain00338_n11_β:
 jmp xchain00338_n6_β
# IR_LIT_STRING
 xchain00338_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00345_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00338_n13_α
 xchain00338_n12_β:
 jmp xchain00338_n6_β
.Lx00345_0:
 .quad .Lx00345_0_s
.Lx00345_0_s:
 .string "x"
# IR_ASSIGN_VAR
 xchain00338_n13_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00338_n6_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00338_n6_β
 xchain00338_n13_β:
 jmp xchain00338_n6_β
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
 xchain00346_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00346_n1_α
 xchain00346_n0_β:
 jmp xchain00346_n2_α
# IR_UNOP
 xchain00346_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00346_n2_α
 cmp eax, 0
 jne xchain00346_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00346_n3_α
 xchain00346_n1_β:
 jmp xchain00346_n2_α
# IR_LIT_INTEGER
 xchain00346_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00346_n4_α
 xchain00346_n2_β:
 jmp proc_strcmp_ω
.Lx00347_0:
 .quad 1
# IR_LIT_STRING
 xchain00346_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00348_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00346_n5_α
 xchain00346_n3_β:
 jmp proc_strcmp_ω
.Lx00348_0:
 .quad .Lx00348_0_s
.Lx00348_0_s:
 .string "\"abc\">>\"aaa\""
# IR_VAR
 xchain00346_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00346_n6_α
 xchain00346_n4_β:
 jmp proc_strcmp_ω
# IR_RETURN
 xchain00346_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcmp_γ
# IR_TO
 xchain00346_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00349_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00346_n7_α
 xchain00346_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00349_0
# IR_LIT_STRING
 xchain00346_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00350_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00346_n8_α
 xchain00346_n7_β:
 jmp xchain00346_n6_β
.Lx00350_0:
 .quad .Lx00350_0_s
.Lx00350_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00346_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00346_n9_α
 xchain00346_n8_β:
 jmp xchain00346_n6_β
.Lx00351_0:
 .quad .Lx00351_0_s
.Lx00351_0_s:
 .string "aaa"
 xchain00346_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00346_n6_β
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00346_n6_β
 xchain00346_n9_β:
 jmp xchain00346_n6_β
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
 xchain00352_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00352_n1_α
 xchain00352_n0_β:
 jmp xchain00352_n2_α
# IR_UNOP
 xchain00352_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00352_n2_α
 cmp eax, 0
 jne xchain00352_n2_α
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00352_n3_α
 xchain00352_n1_β:
 jmp xchain00352_n2_α
# IR_LIT_INTEGER
 xchain00352_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00352_n4_α
 xchain00352_n2_β:
 jmp proc_strident_ω
.Lx00353_0:
 .quad 1
# IR_LIT_STRING
 xchain00352_n3_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00352_n5_α
 xchain00352_n3_β:
 jmp proc_strident_ω
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "\"abc\"===\"aaa\""
# IR_VAR
 xchain00352_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00352_n6_α
 xchain00352_n4_β:
 jmp proc_strident_ω
# IR_RETURN
 xchain00352_n5_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strident_γ
# IR_TO
 xchain00352_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00355_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00352_n7_α
 xchain00352_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00355_0
# IR_LIT_STRING
 xchain00352_n7_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00356_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00352_n8_α
 xchain00352_n7_β:
 jmp xchain00352_n6_β
.Lx00356_0:
 .quad .Lx00356_0_s
.Lx00356_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00352_n8_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00357_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00352_n9_α
 xchain00352_n8_β:
 jmp xchain00352_n6_β
.Lx00357_0:
 .quad .Lx00357_0_s
.Lx00357_0_s:
 .string "aaa"
 xchain00352_n9_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 200]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00352_n6_β
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
 jmp xchain00352_n6_β
 xchain00352_n9_β:
 jmp xchain00352_n6_β
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
 xchain00358_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00358_n1_α
 xchain00358_n0_β:
 jmp xchain00358_n2_α
# IR_UNOP
 xchain00358_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00358_n2_α
 cmp eax, 0
 jne xchain00358_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00358_n3_α
 xchain00358_n1_β:
 jmp xchain00358_n2_α
# IR_LIT_INTEGER
 xchain00358_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00359_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00358_n4_α
 xchain00358_n2_β:
 jmp proc_replf_ω
.Lx00359_0:
 .quad 1
# IR_LIT_STRING
 xchain00358_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00358_n5_α
 xchain00358_n3_β:
 jmp proc_replf_ω
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "repl(\"-\",20)"
# IR_VAR
 xchain00358_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00358_n6_α
 xchain00358_n4_β:
 jmp proc_replf_ω
# IR_RETURN
 xchain00358_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_replf_γ
# IR_TO
 xchain00358_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00361_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00358_n7_α
 xchain00358_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00361_0
# IR_LIT_STRING
 xchain00358_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00362_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00358_n8_α
 xchain00358_n7_β:
 jmp xchain00358_n6_β
.Lx00362_0:
 .quad .Lx00362_0_s
.Lx00362_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00358_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00363_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00358_n9_α
 xchain00358_n8_β:
 jmp xchain00358_n6_β
.Lx00363_0:
 .quad 20
 xchain00358_n9_α:
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
 je xchain00358_n6_β
 jmp xchain00358_n6_β
 xchain00358_n9_β:
 jmp xchain00358_n6_β
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
 xchain00364_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00364_n1_α
 xchain00364_n0_β:
 jmp xchain00364_n2_α
# IR_UNOP
 xchain00364_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00364_n2_α
 cmp eax, 0
 jne xchain00364_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00364_n3_α
 xchain00364_n1_β:
 jmp xchain00364_n2_α
# IR_LIT_INTEGER
 xchain00364_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00364_n4_α
 xchain00364_n2_β:
 jmp proc_reversef_ω
.Lx00365_0:
 .quad 1
# IR_LIT_STRING
 xchain00364_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00366_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00364_n5_α
 xchain00364_n3_β:
 jmp proc_reversef_ω
.Lx00366_0:
 .quad .Lx00366_0_s
.Lx00366_0_s:
 .string "reverse(\"a...z\")"
# IR_VAR
 xchain00364_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00364_n6_α
 xchain00364_n4_β:
 jmp proc_reversef_ω
# IR_RETURN
 xchain00364_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reversef_γ
# IR_TO
 xchain00364_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00367_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00364_n7_α
 xchain00364_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00367_0
# IR_LIT_STRING
 xchain00364_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00364_n8_α
 xchain00364_n7_β:
 jmp xchain00364_n6_β
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00364_n8_α:
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
 je xchain00364_n6_β
 jmp xchain00364_n6_β
 xchain00364_n8_β:
 jmp xchain00364_n6_β
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
 xchain00369_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00369_n1_α
 xchain00369_n0_β:
 jmp xchain00369_n2_α
# IR_UNOP
 xchain00369_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00369_n2_α
 cmp eax, 0
 jne xchain00369_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00369_n3_α
 xchain00369_n1_β:
 jmp xchain00369_n2_α
# IR_LIT_INTEGER
 xchain00369_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00370_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00369_n4_α
 xchain00369_n2_β:
 jmp proc_leftf_ω
.Lx00370_0:
 .quad 1
# IR_LIT_STRING
 xchain00369_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00371_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00369_n5_α
 xchain00369_n3_β:
 jmp proc_leftf_ω
.Lx00371_0:
 .quad .Lx00371_0_s
.Lx00371_0_s:
 .string "left(\"a\",10)"
# IR_VAR
 xchain00369_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00369_n6_α
 xchain00369_n4_β:
 jmp proc_leftf_ω
# IR_RETURN
 xchain00369_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_leftf_γ
# IR_TO
 xchain00369_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00372_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00369_n7_α
 xchain00369_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00372_0
# IR_LIT_STRING
 xchain00369_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00373_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00369_n8_α
 xchain00369_n7_β:
 jmp xchain00369_n6_β
.Lx00373_0:
 .quad .Lx00373_0_s
.Lx00373_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00369_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00369_n9_α
 xchain00369_n8_β:
 jmp xchain00369_n6_β
.Lx00374_0:
 .quad 10
 xchain00369_n9_α:
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
 je xchain00369_n6_β
 jmp xchain00369_n6_β
 xchain00369_n9_β:
 jmp xchain00369_n6_β
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
 xchain00375_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00375_n1_α
 xchain00375_n0_β:
 jmp xchain00375_n2_α
# IR_UNOP
 xchain00375_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00375_n2_α
 cmp eax, 0
 jne xchain00375_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00375_n3_α
 xchain00375_n1_β:
 jmp xchain00375_n2_α
# IR_LIT_INTEGER
 xchain00375_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00375_n4_α
 xchain00375_n2_β:
 jmp proc_centerf_ω
.Lx00376_0:
 .quad 1
# IR_LIT_STRING
 xchain00375_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00375_n5_α
 xchain00375_n3_β:
 jmp proc_centerf_ω
.Lx00377_0:
 .quad .Lx00377_0_s
.Lx00377_0_s:
 .string "center(\"a\",10)"
# IR_VAR
 xchain00375_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00375_n6_α
 xchain00375_n4_β:
 jmp proc_centerf_ω
# IR_RETURN
 xchain00375_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_centerf_γ
# IR_TO
 xchain00375_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00378_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00375_n7_α
 xchain00375_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00378_0
# IR_LIT_STRING
 xchain00375_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00375_n8_α
 xchain00375_n7_β:
 jmp xchain00375_n6_β
.Lx00379_0:
 .quad .Lx00379_0_s
.Lx00379_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00375_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00375_n9_α
 xchain00375_n8_β:
 jmp xchain00375_n6_β
.Lx00380_0:
 .quad 10
 xchain00375_n9_α:
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
 je xchain00375_n6_β
 jmp xchain00375_n6_β
 xchain00375_n9_β:
 jmp xchain00375_n6_β
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
 xchain00381_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00381_n1_α
 xchain00381_n0_β:
 jmp xchain00381_n2_α
# IR_UNOP
 xchain00381_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00381_n2_α
 cmp eax, 0
 jne xchain00381_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00381_n3_α
 xchain00381_n1_β:
 jmp xchain00381_n2_α
# IR_LIT_INTEGER
 xchain00381_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00381_n4_α
 xchain00381_n2_β:
 jmp proc_rightf_ω
.Lx00382_0:
 .quad 1
# IR_LIT_STRING
 xchain00381_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00381_n5_α
 xchain00381_n3_β:
 jmp proc_rightf_ω
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string "right(\"a\",10)"
# IR_VAR
 xchain00381_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00381_n6_α
 xchain00381_n4_β:
 jmp proc_rightf_ω
# IR_RETURN
 xchain00381_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rightf_γ
# IR_TO
 xchain00381_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00384_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00381_n7_α
 xchain00381_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00384_0
# IR_LIT_STRING
 xchain00381_n7_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00381_n8_α
 xchain00381_n7_β:
 jmp xchain00381_n6_β
.Lx00385_0:
 .quad .Lx00385_0_s
.Lx00385_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00381_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00381_n9_α
 xchain00381_n8_β:
 jmp xchain00381_n6_β
.Lx00386_0:
 .quad 10
 xchain00381_n9_α:
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
 je xchain00381_n6_β
 jmp xchain00381_n6_β
 xchain00381_n9_β:
 jmp xchain00381_n6_β
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
 xchain00387_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00387_n1_α
 xchain00387_n0_β:
 jmp xchain00387_n2_α
# IR_UNOP
 xchain00387_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00387_n2_α
 cmp eax, 0
 jne xchain00387_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00387_n3_α
 xchain00387_n1_β:
 jmp xchain00387_n2_α
# IR_LIT_INTEGER
 xchain00387_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00387_n4_α
 xchain00387_n2_β:
 jmp proc_trimf_ω
.Lx00388_0:
 .quad 1
# IR_LIT_STRING
 xchain00387_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00387_n5_α
 xchain00387_n3_β:
 jmp proc_trimf_ω
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "trim(\"a  ...\")"
# IR_VAR
 xchain00387_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00387_n6_α
 xchain00387_n4_β:
 jmp proc_trimf_ω
# IR_RETURN
 xchain00387_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_trimf_γ
# IR_TO
 xchain00387_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00390_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00387_n7_α
 xchain00387_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00390_0
# IR_LIT_STRING
 xchain00387_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00387_n8_α
 xchain00387_n7_β:
 jmp xchain00387_n6_β
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "a         "
 xchain00387_n8_α:
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
 je xchain00387_n6_β
 jmp xchain00387_n6_β
 xchain00387_n8_β:
 jmp xchain00387_n6_β
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
 xchain00392_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00392_n1_α
 xchain00392_n0_β:
 jmp xchain00392_n2_α
# IR_UNOP
 xchain00392_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00392_n2_α
 cmp eax, 0
 jne xchain00392_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00392_n3_α
 xchain00392_n1_β:
 jmp xchain00392_n2_α
# IR_LIT_INTEGER
 xchain00392_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00392_n4_α
 xchain00392_n2_β:
 jmp proc_entabf_ω
.Lx00393_0:
 .quad 1
# IR_LIT_STRING
 xchain00392_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00394_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00392_n5_α
 xchain00392_n3_β:
 jmp proc_entabf_ω
.Lx00394_0:
 .quad .Lx00394_0_s
.Lx00394_0_s:
 .string "entab(\"a  ...\")"
# IR_VAR
 xchain00392_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00392_n6_α
 xchain00392_n4_β:
 jmp proc_entabf_ω
# IR_RETURN
 xchain00392_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_entabf_γ
# IR_TO
 xchain00392_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00395_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00392_n7_α
 xchain00392_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00395_0
# IR_LIT_STRING
 xchain00392_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00392_n8_α
 xchain00392_n7_β:
 jmp xchain00392_n6_β
.Lx00396_0:
 .quad .Lx00396_0_s
.Lx00396_0_s:
 .string "a         "
 xchain00392_n8_α:
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
 je xchain00392_n6_β
 jmp xchain00392_n6_β
 xchain00392_n8_β:
 jmp xchain00392_n6_β
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
 xchain00397_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00397_n1_α
 xchain00397_n0_β:
 jmp xchain00397_n2_α
# IR_UNOP
 xchain00397_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00397_n2_α
 cmp eax, 0
 jne xchain00397_n2_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00397_n3_α
 xchain00397_n1_β:
 jmp xchain00397_n2_α
# IR_LIT_INTEGER
 xchain00397_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00397_n4_α
 xchain00397_n2_β:
 jmp proc_detabf_ω
.Lx00398_0:
 .quad 1
# IR_LIT_STRING
 xchain00397_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00397_n5_α
 xchain00397_n3_β:
 jmp proc_detabf_ω
.Lx00399_0:
 .quad .Lx00399_0_s
.Lx00399_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_VAR
 xchain00397_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00397_n6_α
 xchain00397_n4_β:
 jmp proc_detabf_ω
# IR_RETURN
 xchain00397_n5_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_detabf_γ
# IR_TO
 xchain00397_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00400_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00397_n7_α
 xchain00397_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00400_0
# IR_LIT_STRING
 xchain00397_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00397_n8_α
 xchain00397_n7_β:
 jmp xchain00397_n6_β
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string "a\tb\tc"
 xchain00397_n8_α:
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
 je xchain00397_n6_β
 jmp xchain00397_n6_β
 xchain00397_n8_β:
 jmp xchain00397_n6_β
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
 xchain00402_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00402_n1_α
 xchain00402_n0_β:
 jmp xchain00402_n2_α
# IR_UNOP
 xchain00402_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00402_n2_α
 cmp eax, 0
 jne xchain00402_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00402_n3_α
 xchain00402_n1_β:
 jmp xchain00402_n2_α
# IR_LIT_INTEGER
 xchain00402_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00402_n4_α
 xchain00402_n2_β:
 jmp proc_mapf_ω
.Lx00403_0:
 .quad 1
# IR_LIT_STRING
 xchain00402_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00404_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00402_n5_α
 xchain00402_n3_β:
 jmp proc_mapf_ω
.Lx00404_0:
 .quad .Lx00404_0_s
.Lx00404_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_VAR
 xchain00402_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00402_n6_α
 xchain00402_n4_β:
 jmp proc_mapf_ω
# IR_RETURN
 xchain00402_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mapf_γ
# IR_TO
 xchain00402_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00405_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00402_n7_α
 xchain00402_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00405_0
# IR_LIT_STRING
 xchain00402_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00402_n8_α
 xchain00402_n7_β:
 jmp xchain00402_n6_β
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00402_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00402_n9_α
 xchain00402_n8_β:
 jmp xchain00402_n6_β
.Lx00407_0:
 .quad .Lx00407_0_s
.Lx00407_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00402_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00402_n10_α
 xchain00402_n9_β:
 jmp xchain00402_n6_β
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00402_n10_α:
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
 je xchain00402_n6_β
 jmp xchain00402_n6_β
 xchain00402_n10_β:
 jmp xchain00402_n6_β
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
 xchain00409_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00409_n1_α
 xchain00409_n0_β:
 jmp xchain00409_n2_α
# IR_UNOP
 xchain00409_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00409_n2_α
 cmp eax, 0
 jne xchain00409_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00409_n3_α
 xchain00409_n1_β:
 jmp xchain00409_n2_α
# IR_LIT_INTEGER
 xchain00409_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00409_n4_α
 xchain00409_n2_β:
 jmp proc_map1_ω
.Lx00410_0:
 .quad 1
# IR_LIT_STRING
 xchain00409_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00411_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00409_n5_α
 xchain00409_n3_β:
 jmp proc_map1_ω
.Lx00411_0:
 .quad .Lx00411_0_s
.Lx00411_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_VAR
 xchain00409_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00409_n6_α
 xchain00409_n4_β:
 jmp proc_map1_ω
# IR_RETURN
 xchain00409_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map1_γ
# IR_TO
 xchain00409_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00412_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00409_n7_α
 xchain00409_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00412_0
# IR_LIT_STRING
 xchain00409_n7_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00409_n8_α
 xchain00409_n7_β:
 jmp xchain00409_n6_β
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00409_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00409_n9_α
 xchain00409_n8_β:
 jmp xchain00409_n6_β
.Lx00414_0:
 .quad .Lx00414_0_s
.Lx00414_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00409_n9_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00415_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00409_n10_α
 xchain00409_n9_β:
 jmp xchain00409_n6_β
.Lx00415_0:
 .quad .Lx00415_0_s
.Lx00415_0_s:
 .string "ba"
 xchain00409_n10_α:
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
 je xchain00409_n6_β
 jmp xchain00409_n6_β
 xchain00409_n10_β:
 jmp xchain00409_n6_β
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
 xchain00416_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 600], rax
 jmp xchain00416_n1_α
 xchain00416_n0_β:
 jmp xchain00416_n2_α
# IR_UNOP
 xchain00416_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00416_n2_α
 cmp eax, 0
 jne xchain00416_n2_α
 mov qword ptr [rbp + 560], 0
 mov qword ptr [rbp + 568], 0
 jmp xchain00416_n3_α
 xchain00416_n1_β:
 jmp xchain00416_n2_α
# IR_LIT_INTEGER
 xchain00416_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00416_n4_α
 xchain00416_n2_β:
 jmp proc_map2_ω
.Lx00417_0:
 .quad 1
# IR_LIT_STRING
 xchain00416_n3_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00416_n5_α
 xchain00416_n3_β:
 jmp proc_map2_ω
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_VAR
 xchain00416_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00416_n6_α
 xchain00416_n4_β:
 jmp proc_map2_ω
# IR_RETURN
 xchain00416_n5_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map2_γ
# IR_TO
 xchain00416_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00419_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00416_n7_α
 xchain00416_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00419_0
# IR_LIT_STRING
 xchain00416_n7_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00416_n8_α
 xchain00416_n7_β:
 jmp xchain00416_n6_β
.Lx00420_0:
 .quad .Lx00420_0_s
.Lx00420_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00416_n8_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00421_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00416_n9_α
 xchain00416_n8_β:
 jmp xchain00416_n6_β
.Lx00421_0:
 .quad .Lx00421_0_s
.Lx00421_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00416_n9_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00416_n10_α
 xchain00416_n9_β:
 jmp xchain00416_n6_β
.Lx00422_0:
 .quad .Lx00422_0_s
.Lx00422_0_s:
 .string "ba"
 xchain00416_n10_α:
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
 je xchain00416_n6_β
 jmp xchain00416_n11_α
 xchain00416_n10_β:
 jmp xchain00416_n6_β
# IR_LIT_STRING
 xchain00416_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00416_n12_α
 xchain00416_n11_β:
 jmp xchain00416_n6_β
.Lx00423_0:
 .quad .Lx00423_0_s
.Lx00423_0_s:
 .string "c"
# IR_LIT_STRING
 xchain00416_n12_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00416_n13_α
 xchain00416_n12_β:
 jmp xchain00416_n6_β
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00416_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00416_n14_α
 xchain00416_n13_β:
 jmp xchain00416_n6_β
.Lx00425_0:
 .quad .Lx00425_0_s
.Lx00425_0_s:
 .string "cd"
 xchain00416_n14_α:
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
 je xchain00416_n6_β
 jmp xchain00416_n15_α
 xchain00416_n14_β:
 jmp xchain00416_n6_β
 xchain00416_n15_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00416_n6_β
xchain00416_n15_β:
 jmp xchain00416_n6_β
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
 xchain00426_n0_α:
 mov rdi, 1879052400
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00426_n1_α
 xchain00426_n0_β:
 jmp xchain00426_n3_α
# IR_NULLTEST_VAR
 xchain00426_n1_α:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 99
 je xchain00426_n3_α
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00426_n3_α
 cmp eax, 0
 jne xchain00426_n3_α
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 792], rax
 jmp xchain00426_n2_α
 xchain00426_n1_β:
 jmp xchain00426_n3_α
# IR_LIT_INTEGER
 xchain00426_n2_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00426_n4_α
 xchain00426_n2_β:
 jmp xchain00426_n3_α
.Lx00427_0:
 .quad 1
# IR_VAR
 xchain00426_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00426_n5_α
 xchain00426_n3_β:
 jmp xchain00426_n6_α
# IR_ASSIGN_VAR
 xchain00426_n4_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00426_n3_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00426_n7_α
 xchain00426_n4_β:
 jmp xchain00426_n3_α
# IR_UNOP
 xchain00426_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00426_n6_α
 cmp eax, 0
 jne xchain00426_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00426_n8_α
 xchain00426_n5_β:
 jmp xchain00426_n6_α
# IR_LIT_INTEGER
 xchain00426_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00428_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00426_n9_α
 xchain00426_n6_β:
 jmp proc_tablemap_ω
.Lx00428_0:
 .quad 1
 xchain00426_n7_α:
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
 je xchain00426_n11_α
 jmp xchain00426_n10_α
 xchain00426_n7_β:
 jmp xchain00426_n11_α
# IR_LIT_STRING
 xchain00426_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00429_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00426_n12_α
 xchain00426_n8_β:
 jmp proc_tablemap_ω
.Lx00429_0:
 .quad .Lx00429_0_s
.Lx00429_0_s:
 .string "T[\"b\"]"
# IR_VAR
 xchain00426_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00426_n13_α
 xchain00426_n9_β:
 jmp proc_tablemap_ω
# IR_ASSIGN gva
 xchain00426_n10_α:
 mov rax, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00426_n11_α
 xchain00426_n10_β:
 jmp xchain00426_n11_α
# IR_VAR_REF
 xchain00426_n11_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00426_n14_α
 xchain00426_n11_β:
 jmp xchain00426_n19_α
# IR_RETURN
 xchain00426_n12_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tablemap_γ
# IR_TO
 xchain00426_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00430_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00426_n15_α
 xchain00426_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00430_0
# IR_LIT_STRING
 xchain00426_n14_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00426_n16_α
 xchain00426_n14_β:
 jmp xchain00426_n19_α
.Lx00431_0:
 .quad .Lx00431_0_s
.Lx00431_0_s:
 .string "a"
# IR_VAR_REF
 xchain00426_n15_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00426_n17_α
 xchain00426_n15_β:
 jmp xchain00426_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00426_n16_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00426_n19_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00426_n18_α
 xchain00426_n16_β:
 jmp xchain00426_n19_α
# IR_LIT_STRING
 xchain00426_n17_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00426_n20_α
 xchain00426_n17_β:
 jmp xchain00426_n13_β
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00426_n18_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00426_n21_α
 xchain00426_n18_β:
 jmp xchain00426_n19_α
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "b"
# IR_VAR_REF
 xchain00426_n19_α:
 mov rdi, 1879052384
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00426_n22_α
 xchain00426_n19_β:
 jmp xchain00426_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00426_n20_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00426_n13_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00426_n23_α
 xchain00426_n20_β:
 jmp xchain00426_n13_β
# IR_ASSIGN_VAR
 xchain00426_n21_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00426_n19_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00426_n19_α
 xchain00426_n21_β:
 jmp xchain00426_n19_α
# IR_LIT_STRING
 xchain00426_n22_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00426_n24_α
 xchain00426_n22_β:
 jmp xchain00426_n3_α
.Lx00434_0:
 .quad .Lx00434_0_s
.Lx00434_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00426_n23_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00426_n13_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00426_n13_β
 xchain00426_n23_β:
 jmp xchain00426_n13_β
# IR_SUBSCRIPT x[i] variable
 xchain00426_n24_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00426_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00426_n25_α
 xchain00426_n24_β:
 jmp xchain00426_n3_α
# IR_LIT_STRING
 xchain00426_n25_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00426_n26_α
 xchain00426_n25_β:
 jmp xchain00426_n3_α
.Lx00435_0:
 .quad .Lx00435_0_s
.Lx00435_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00426_n26_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00426_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00426_n27_α
 xchain00426_n26_β:
 jmp xchain00426_n3_α
 xchain00426_n27_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 408], rax
 jmp xchain00426_n28_α
xchain00426_n27_β:
 jmp xchain00426_n3_α
# IR_MOVE_LABEL
 xchain00426_n28_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00426_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00426_n3_α
 xchain00426_n28_β:
 jmp xchain00426_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00426_n29_α:
 jmp qword ptr [rbp + 384]
 xchain00426_n29_β:
 jmp xchain00426_n3_α
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
 xchain00436_n0_α:
 mov rdi, 1879052432
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00436_n1_α
 xchain00436_n0_β:
 jmp xchain00436_n3_α
# IR_NULLTEST_VAR
 xchain00436_n1_α:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 99
 je xchain00436_n3_α
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00436_n3_α
 cmp eax, 0
 jne xchain00436_n3_α
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 984], rax
 jmp xchain00436_n2_α
 xchain00436_n1_β:
 jmp xchain00436_n3_α
# IR_LIT_INTEGER
 xchain00436_n2_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00436_n4_α
 xchain00436_n2_β:
 jmp xchain00436_n3_α
.Lx00437_0:
 .quad 1
# IR_VAR
 xchain00436_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00436_n5_α
 xchain00436_n3_β:
 jmp xchain00436_n6_α
# IR_ASSIGN_VAR
 xchain00436_n4_α:
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00436_n3_α
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00436_n7_α
 xchain00436_n4_β:
 jmp xchain00436_n3_α
# IR_UNOP
 xchain00436_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00436_n6_α
 cmp eax, 0
 jne xchain00436_n6_α
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00436_n8_α
 xchain00436_n5_β:
 jmp xchain00436_n6_α
# IR_LIT_INTEGER
 xchain00436_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00438_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00436_n9_α
 xchain00436_n6_β:
 jmp proc_listmap_ω
.Lx00438_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00436_n7_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00436_n10_α
 xchain00436_n7_β:
 jmp xchain00436_n14_α
.Lx00439_0:
 .quad 256
# IR_LIT_STRING
 xchain00436_n8_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00436_n11_α
 xchain00436_n8_β:
 jmp proc_listmap_ω
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "L[ord(\"b\")]"
# IR_VAR
 xchain00436_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00436_n12_α
 xchain00436_n9_β:
 jmp proc_listmap_ω
 xchain00436_n10_α:
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
 je xchain00436_n14_α
 jmp xchain00436_n13_α
 xchain00436_n10_β:
 jmp xchain00436_n14_α
# IR_RETURN
 xchain00436_n11_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listmap_γ
# IR_TO
 xchain00436_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00441_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00436_n15_α
 xchain00436_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00441_0
# IR_ASSIGN gva
 xchain00436_n13_α:
 mov rax, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00436_n14_α
 xchain00436_n13_β:
 jmp xchain00436_n14_α
# IR_VAR_REF
 xchain00436_n14_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00436_n16_α
 xchain00436_n14_β:
 jmp xchain00436_n21_α
# IR_VAR_REF
 xchain00436_n15_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00436_n17_α
 xchain00436_n15_β:
 jmp xchain00436_n12_β
# IR_LIT_STRING
 xchain00436_n16_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx00442_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00436_n18_α
 xchain00436_n16_β:
 jmp xchain00436_n21_α
.Lx00442_0:
 .quad .Lx00442_0_s
.Lx00442_0_s:
 .string "a"
# IR_LIT_STRING
 xchain00436_n17_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00436_n19_α
 xchain00436_n17_β:
 jmp xchain00436_n12_β
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "b"
 xchain00436_n18_α:
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
 je xchain00436_n21_α
 jmp xchain00436_n20_α
 xchain00436_n18_β:
 jmp xchain00436_n21_α
 xchain00436_n19_α:
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
 je xchain00436_n12_β
 jmp xchain00436_n22_α
 xchain00436_n19_β:
 jmp xchain00436_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00436_n20_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00436_n21_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00436_n23_α
 xchain00436_n20_β:
 jmp xchain00436_n21_α
# IR_VAR_REF
 xchain00436_n21_α:
 mov rdi, 1879052416
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00436_n24_α
 xchain00436_n21_β:
 jmp xchain00436_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00436_n22_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00436_n12_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00436_n25_α
 xchain00436_n22_β:
 jmp xchain00436_n12_β
# IR_LIT_STRING
 xchain00436_n23_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00436_n26_α
 xchain00436_n23_β:
 jmp xchain00436_n21_α
.Lx00444_0:
 .quad .Lx00444_0_s
.Lx00444_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00436_n24_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00436_n27_α
 xchain00436_n24_β:
 jmp xchain00436_n3_α
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "b"
# IR_DEREF variable -> value
 xchain00436_n25_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00436_n12_β
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00436_n12_β
 xchain00436_n25_β:
 jmp xchain00436_n12_β
# IR_ASSIGN_VAR
 xchain00436_n26_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00436_n21_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00436_n21_α
 xchain00436_n26_β:
 jmp xchain00436_n21_α
 xchain00436_n27_α:
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
 je xchain00436_n3_α
 jmp xchain00436_n28_α
 xchain00436_n27_β:
 jmp xchain00436_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00436_n28_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00436_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00436_n29_α
 xchain00436_n28_β:
 jmp xchain00436_n3_α
# IR_LIT_STRING
 xchain00436_n29_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00436_n30_α
 xchain00436_n29_β:
 jmp xchain00436_n3_α
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00436_n30_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00436_n3_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00436_n31_α
 xchain00436_n30_β:
 jmp xchain00436_n3_α
 xchain00436_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 456], rax
 jmp xchain00436_n32_α
xchain00436_n31_β:
 jmp xchain00436_n3_α
# IR_MOVE_LABEL
 xchain00436_n32_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + xchain00436_n3_α]
 mov qword ptr [rbp + 432], rax
 jmp xchain00436_n3_α
 xchain00436_n32_β:
 jmp xchain00436_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00436_n33_α:
 jmp qword ptr [rbp + 432]
 xchain00436_n33_β:
 jmp xchain00436_n3_α
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
 xchain00447_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00447_n1_α
 xchain00447_n0_β:
 jmp xchain00447_n2_α
# IR_UNOP
 xchain00447_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00447_n2_α
 cmp eax, 0
 jne xchain00447_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00447_n3_α
 xchain00447_n1_β:
 jmp xchain00447_n2_α
# IR_LIT_INTEGER
 xchain00447_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00448_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00447_n4_α
 xchain00447_n2_β:
 jmp proc_nullscan_ω
.Lx00448_0:
 .quad 1
# IR_LIT_STRING
 xchain00447_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00447_n5_α
 xchain00447_n3_β:
 jmp proc_nullscan_ω
.Lx00449_0:
 .quad .Lx00449_0_s
.Lx00449_0_s:
 .string "s ? 0"
# IR_VAR
 xchain00447_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00447_n6_α
 xchain00447_n4_β:
 jmp proc_nullscan_ω
# IR_RETURN
 xchain00447_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullscan_γ
# IR_TO
 xchain00447_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00450_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00447_n7_α
 xchain00447_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00450_0
# IR_LIT_STRING
 xchain00447_n7_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00447_n8_α
 xchain00447_n7_β:
 jmp xchain00447_n6_β
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00447_n8_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00447_n9_α
 xchain00447_n8_β:
 jmp xchain00447_n6_β
# IR_LIT_INTEGER
 xchain00447_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00447_n10_α
 xchain00447_n9_β:
 jmp proc_nullscan_ω
.Lx00452_0:
 .quad 0
# IR_GEN_SCAN
 xchain00447_n10_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 lea rdi, [rbp + 144]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 144]
 mov r14, qword ptr [rbp + 152]
 mov r15, qword ptr [rbp + 160]
 jmp xchain00447_n6_β
 xchain00447_n10_β:
 jmp xchain00447_n6_β
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
 xchain00453_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00453_n1_α
 xchain00453_n0_β:
 jmp xchain00453_n2_α
# IR_UNOP
 xchain00453_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00453_n2_α
 cmp eax, 0
 jne xchain00453_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00453_n3_α
 xchain00453_n1_β:
 jmp xchain00453_n2_α
# IR_LIT_STRING
 xchain00453_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00454_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00453_n4_α
 xchain00453_n2_β:
 jmp proc_movef_ω
.Lx00454_0:
 .quad .Lx00454_0_s
.Lx00454_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00453_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00453_n5_α
 xchain00453_n3_β:
 jmp proc_movef_ω
.Lx00455_0:
 .quad .Lx00455_0_s
.Lx00455_0_s:
 .string "move(0)"
# IR_GEN_SCAN
 xchain00453_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00453_n6_α
 xchain00453_n4_β:
 jmp proc_movef_ω
# IR_RETURN
 xchain00453_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_movef_γ
# IR_LIT_INTEGER
 xchain00453_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00456_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00453_n7_α
 xchain00453_n6_β:
 jmp xchain00453_n9_α
.Lx00456_0:
 .quad 1
# IR_VAR
 xchain00453_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00453_n8_α
 xchain00453_n7_β:
 jmp xchain00453_n9_α
# IR_TO
 xchain00453_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00457_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00453_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00453_n10_α
 xchain00453_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00457_0
# IR_GEN_SCAN
 xchain00453_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_movef_ω
 xchain00453_n9_β:
 jmp proc_movef_ω
# IR_LIT_INTEGER
 xchain00453_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00453_n11_α
 xchain00453_n10_β:
 jmp xchain00453_n8_β
.Lx00458_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00453_n11_α:
 sub rsp, 16
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00459_239
 add rsp, 16
 jmp xchain00453_n8_β
.Lx00459_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00459_240
 add rsp, 16
 jmp xchain00453_n8_β
.Lx00459_240:
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
 jmp xchain00453_n8_β
 xchain00453_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00453_n8_β
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
 xchain00460_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00460_n1_α
 xchain00460_n0_β:
 jmp xchain00460_n2_α
# IR_UNOP
 xchain00460_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00460_n2_α
 cmp eax, 0
 jne xchain00460_n2_α
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 jmp xchain00460_n3_α
 xchain00460_n1_β:
 jmp xchain00460_n2_α
# IR_LIT_STRING
 xchain00460_n2_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00461_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00460_n4_α
 xchain00460_n2_β:
 jmp proc_mov11_ω
.Lx00461_0:
 .quad .Lx00461_0_s
.Lx00461_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00460_n3_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00462_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00460_n5_α
 xchain00460_n3_β:
 jmp proc_mov11_ω
.Lx00462_0:
 .quad .Lx00462_0_s
.Lx00462_0_s:
 .string "move(1) & move(-1)"
# IR_GEN_SCAN
 xchain00460_n4_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00460_n6_α
 xchain00460_n4_β:
 jmp proc_mov11_ω
# IR_RETURN
 xchain00460_n5_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mov11_γ
# IR_LIT_INTEGER
 xchain00460_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00463_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00460_n7_α
 xchain00460_n6_β:
 jmp xchain00460_n9_α
.Lx00463_0:
 .quad 1
# IR_VAR
 xchain00460_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00460_n8_α
 xchain00460_n7_β:
 jmp xchain00460_n9_α
# IR_TO
 xchain00460_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00464_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00460_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00460_n10_α
 xchain00460_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00464_0
# IR_GEN_SCAN
 xchain00460_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_mov11_ω
 xchain00460_n9_β:
 jmp proc_mov11_ω
# IR_LIT_INTEGER
 xchain00460_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00460_n11_α
 xchain00460_n10_β:
 jmp xchain00460_n8_β
.Lx00465_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00460_n11_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00466_239
 add rsp, 16
 jmp xchain00460_n8_β
.Lx00466_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00466_240
 add rsp, 16
 jmp xchain00460_n8_β
.Lx00466_240:
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
 jmp xchain00460_n12_α
 xchain00460_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00460_n8_β
# IR_LIT_INTEGER
 xchain00460_n12_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00467_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00460_n13_α
 xchain00460_n12_β:
 jmp xchain00460_n8_β
.Lx00467_0:
 .quad 18446744073709551615
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00460_n13_α:
 sub rsp, 16
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00468_239
 add rsp, 16
 jmp xchain00460_n8_β
.Lx00468_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00468_240
 add rsp, 16
 jmp xchain00460_n8_β
.Lx00468_240:
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
 jmp xchain00460_n14_α
 xchain00460_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00460_n8_β
 xchain00460_n14_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00460_n8_β
xchain00460_n14_β:
 jmp xchain00460_n8_β
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
 xchain00469_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain00469_n1_α
 xchain00469_n0_β:
 jmp xchain00469_n2_α
# IR_UNOP
 xchain00469_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00469_n2_α
 cmp eax, 0
 jne xchain00469_n2_α
 mov qword ptr [rbp + 608], 0
 mov qword ptr [rbp + 616], 0
 jmp xchain00469_n3_α
 xchain00469_n1_β:
 jmp xchain00469_n2_α
# IR_LIT_STRING
 xchain00469_n2_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00470_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00469_n4_α
 xchain00469_n2_β:
 jmp proc_pos11_ω
.Lx00470_0:
 .quad .Lx00470_0_s
.Lx00470_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00469_n3_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00469_n5_α
 xchain00469_n3_β:
 jmp proc_pos11_ω
.Lx00471_0:
 .quad .Lx00471_0_s
.Lx00471_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_GEN_SCAN
 xchain00469_n4_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00469_n6_α
 xchain00469_n4_β:
 jmp proc_pos11_ω
# IR_RETURN
 xchain00469_n5_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pos11_γ
# IR_LIT_INTEGER
 xchain00469_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00472_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00469_n7_α
 xchain00469_n6_β:
 jmp xchain00469_n9_α
.Lx00472_0:
 .quad 1
# IR_VAR
 xchain00469_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00469_n8_α
 xchain00469_n7_β:
 jmp xchain00469_n9_α
# IR_TO
 xchain00469_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00473_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00469_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00469_n10_α
 xchain00469_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00473_0
# IR_GEN_SCAN
 xchain00469_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_pos11_ω
 xchain00469_n9_β:
 jmp proc_pos11_ω
# KEYWORD_pos_call
 xchain00469_n10_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00469_n11_α
 xchain00469_n10_β:
 jmp xchain00469_n8_β
# IR_LIT_INTEGER
 xchain00469_n11_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00474_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00469_n12_α
 xchain00469_n11_β:
 jmp xchain00469_n8_β
.Lx00474_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00469_n12_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 7
 je .Lx00475_1
 cmp eax, 6
 jne .Lx00475_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00475_0
.Lx00475_1:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp .Lx00475_2
.Lx00475_0:
 lea rdi, [rbp + 448]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00475_2:
 jmp xchain00469_n13_α
 xchain00469_n12_β:
 jmp xchain00469_n8_β
 xchain00469_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00476_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00476_2
.Lx00476_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00469_n14_α
.Lx00476_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00476_3
.Lx00476_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00469_n8_β
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
.Lx00476_3:
 jmp xchain00469_n14_α
 xchain00469_n13_β:
 jmp xchain00469_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00469_n14_α:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00469_n8_β
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00469_n15_α
 xchain00469_n14_β:
 jmp xchain00469_n8_β
# KEYWORD_pos_call
 xchain00469_n15_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00469_n16_α
 xchain00469_n15_β:
 jmp xchain00469_n8_β
# IR_LIT_INTEGER
 xchain00469_n16_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00469_n17_α
 xchain00469_n16_β:
 jmp xchain00469_n8_β
.Lx00477_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00469_n17_α:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 7
 je .Lx00478_1
 cmp eax, 6
 jne .Lx00478_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00478_0
.Lx00478_1:
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 280], rax
 jmp .Lx00478_2
.Lx00478_0:
 lea rdi, [rbp + 304]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 272]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00478_2:
 jmp xchain00469_n18_α
 xchain00469_n17_β:
 jmp xchain00469_n8_β
 xchain00469_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx00479_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx00479_2
.Lx00479_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain00469_n19_α
.Lx00479_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00479_3
.Lx00479_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00469_n8_β
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx00479_3:
 jmp xchain00469_n19_α
 xchain00469_n18_β:
 jmp xchain00469_n8_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00469_n19_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00469_n8_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00469_n20_α
 xchain00469_n19_β:
 jmp xchain00469_n8_β
 xchain00469_n20_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 216], rax
 jmp xchain00469_n8_β
xchain00469_n20_β:
 jmp xchain00469_n8_β
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
 xchain00480_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00480_n1_α
 xchain00480_n0_β:
 jmp xchain00480_n2_α
# IR_UNOP
 xchain00480_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00480_n2_α
 cmp eax, 0
 jne xchain00480_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00480_n3_α
 xchain00480_n1_β:
 jmp xchain00480_n2_α
# IR_LIT_STRING
 xchain00480_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00481_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00480_n4_α
 xchain00480_n2_β:
 jmp proc_tabf_ω
.Lx00481_0:
 .quad .Lx00481_0_s
.Lx00481_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00480_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00482_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00480_n5_α
 xchain00480_n3_β:
 jmp proc_tabf_ω
.Lx00482_0:
 .quad .Lx00482_0_s
.Lx00482_0_s:
 .string "tab(3)"
# IR_GEN_SCAN
 xchain00480_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00480_n6_α
 xchain00480_n4_β:
 jmp proc_tabf_ω
# IR_RETURN
 xchain00480_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabf_γ
# IR_LIT_INTEGER
 xchain00480_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00483_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00480_n7_α
 xchain00480_n6_β:
 jmp xchain00480_n9_α
.Lx00483_0:
 .quad 1
# IR_VAR
 xchain00480_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00480_n8_α
 xchain00480_n7_β:
 jmp xchain00480_n9_α
# IR_TO
 xchain00480_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00484_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00480_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00480_n10_α
 xchain00480_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00484_0
# IR_GEN_SCAN
 xchain00480_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabf_ω
 xchain00480_n9_β:
 jmp proc_tabf_ω
# IR_LIT_INTEGER
 xchain00480_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00485_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00480_n11_α
 xchain00480_n10_β:
 jmp xchain00480_n8_β
.Lx00485_0:
 .quad 3
# IR_SCAN_TAB
 xchain00480_n11_α:
 sub rsp, 16
 mov rax, 3
 cmp rax, 1
 jge .Lx00486_0
 add rax, r15
 add rax, 1
.Lx00486_0:
 cmp rax, 1
 jge .Lx00486_239
 add rsp, 16
 jmp xchain00480_n8_β
.Lx00486_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00486_240
 add rsp, 16
 jmp xchain00480_n8_β
.Lx00486_240:
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
 jmp xchain00480_n8_β
 xchain00480_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00480_n8_β
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
 xchain00487_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00487_n1_α
 xchain00487_n0_β:
 jmp xchain00487_n2_α
# IR_UNOP
 xchain00487_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00487_n2_α
 cmp eax, 0
 jne xchain00487_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00487_n3_α
 xchain00487_n1_β:
 jmp xchain00487_n2_α
# IR_LIT_STRING
 xchain00487_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00488_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00487_n4_α
 xchain00487_n2_β:
 jmp proc_matchf_ω
.Lx00488_0:
 .quad .Lx00488_0_s
.Lx00488_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00487_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00489_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00487_n5_α
 xchain00487_n3_β:
 jmp proc_matchf_ω
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "match(\"abc\")"
# IR_GEN_SCAN
 xchain00487_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00487_n6_α
 xchain00487_n4_β:
 jmp proc_matchf_ω
# IR_RETURN
 xchain00487_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_matchf_γ
# IR_LIT_INTEGER
 xchain00487_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00490_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00487_n7_α
 xchain00487_n6_β:
 jmp xchain00487_n9_α
.Lx00490_0:
 .quad 1
# IR_VAR
 xchain00487_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00487_n8_α
 xchain00487_n7_β:
 jmp xchain00487_n9_α
# IR_TO
 xchain00487_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00491_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00487_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00487_n10_α
 xchain00487_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00491_0
# IR_GEN_SCAN
 xchain00487_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_matchf_ω
 xchain00487_n9_β:
 jmp proc_matchf_ω
# IR_LIT_STRING
 xchain00487_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00487_n11_α
 xchain00487_n10_β:
 jmp xchain00487_n8_β
.Lx00492_0:
 .quad .Lx00492_0_s
.Lx00492_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00487_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00493_239
 add rsp, 16
 jmp xchain00487_n8_β
.Lx00493_239:
 mov rdi, qword ptr [rip + .Lx00493_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00493_240
 add rsp, 16
 jmp xchain00487_n8_β
.Lx00493_240:
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 216], rax
 jmp xchain00487_n8_β
 xchain00487_n11_β:
 add rsp, 16
 jmp xchain00487_n8_β
.Lx00493_0:
 .quad .Lx00493_0_s
.Lx00493_0_s:
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
 xchain00494_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00494_n1_α
 xchain00494_n0_β:
 jmp xchain00494_n2_α
# IR_UNOP
 xchain00494_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00494_n2_α
 cmp eax, 0
 jne xchain00494_n2_α
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain00494_n3_α
 xchain00494_n1_β:
 jmp xchain00494_n2_α
# IR_LIT_STRING
 xchain00494_n2_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00495_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00494_n4_α
 xchain00494_n2_β:
 jmp proc_tabmat_ω
.Lx00495_0:
 .quad .Lx00495_0_s
.Lx00495_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00494_n3_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00494_n5_α
 xchain00494_n3_β:
 jmp proc_tabmat_ω
.Lx00496_0:
 .quad .Lx00496_0_s
.Lx00496_0_s:
 .string "s1 ? =s2"
# IR_GEN_SCAN
 xchain00494_n4_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00494_n6_α
 xchain00494_n4_β:
 jmp proc_tabmat_ω
# IR_RETURN
 xchain00494_n5_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabmat_γ
# IR_LIT_INTEGER
 xchain00494_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00497_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00494_n7_α
 xchain00494_n6_β:
 jmp xchain00494_n9_α
.Lx00497_0:
 .quad 1
# IR_VAR
 xchain00494_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00494_n8_α
 xchain00494_n7_β:
 jmp xchain00494_n9_α
# IR_TO
 xchain00494_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00498_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00494_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00494_n10_α
 xchain00494_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00498_0
# IR_GEN_SCAN
 xchain00494_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabmat_ω
 xchain00494_n9_β:
 jmp proc_tabmat_ω
# IR_LIT_STRING
 xchain00494_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00494_n11_α
 xchain00494_n10_β:
 jmp xchain00494_n8_β
.Lx00499_0:
 .quad .Lx00499_0_s
.Lx00499_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00494_n11_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00500_239
 add rsp, 16
 jmp xchain00494_n8_β
.Lx00500_239:
 mov rdi, qword ptr [rip + .Lx00500_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00500_240
 add rsp, 16
 jmp xchain00494_n8_β
.Lx00500_240:
 mov qword ptr [rbp + 240], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 248], rax
 jmp xchain00494_n12_α
 xchain00494_n11_β:
 add rsp, 16
 jmp xchain00494_n8_β
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00494_n12_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 248]
 cmp rax, 1
 jge .Lx00501_0
 add rax, r15
 add rax, 1
.Lx00501_0:
 cmp rax, 1
 jge .Lx00501_239
 add rsp, 16
 jmp xchain00494_n8_β
.Lx00501_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00501_240
 add rsp, 16
 jmp xchain00494_n8_β
.Lx00501_240:
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
 jmp xchain00494_n8_β
 xchain00494_n12_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00494_n8_β
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
 xchain00502_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00502_n1_α
 xchain00502_n0_β:
 jmp xchain00502_n2_α
# IR_UNOP
 xchain00502_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00502_n2_α
 cmp eax, 0
 jne xchain00502_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00502_n3_α
 xchain00502_n1_β:
 jmp xchain00502_n2_α
# IR_LIT_STRING
 xchain00502_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00502_n4_α
 xchain00502_n2_β:
 jmp proc_posf_ω
.Lx00503_0:
 .quad .Lx00503_0_s
.Lx00503_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00502_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00504_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00502_n5_α
 xchain00502_n3_β:
 jmp proc_posf_ω
.Lx00504_0:
 .quad .Lx00504_0_s
.Lx00504_0_s:
 .string "pos(-1)"
# IR_GEN_SCAN
 xchain00502_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00502_n6_α
 xchain00502_n4_β:
 jmp proc_posf_ω
# IR_RETURN
 xchain00502_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_posf_γ
# IR_LIT_INTEGER
 xchain00502_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00505_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00502_n7_α
 xchain00502_n6_β:
 jmp xchain00502_n9_α
.Lx00505_0:
 .quad 1
# IR_VAR
 xchain00502_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00502_n8_α
 xchain00502_n7_β:
 jmp xchain00502_n9_α
# IR_TO
 xchain00502_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00506_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00502_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00502_n10_α
 xchain00502_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00506_0
# IR_GEN_SCAN
 xchain00502_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_posf_ω
 xchain00502_n9_β:
 jmp proc_posf_ω
# IR_LIT_INTEGER
 xchain00502_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00502_n11_α
 xchain00502_n10_β:
 jmp xchain00502_n8_β
.Lx00507_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00502_n11_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00508_0
 add rax, r15
 add rax, 1
.Lx00508_0:
 cmp rax, 1
 jl xchain00502_n8_β
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00502_n8_β
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00502_n8_β
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00502_n8_β
 xchain00502_n11_β:
 jmp xchain00502_n8_β
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
 xchain00509_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00509_n1_α
 xchain00509_n0_β:
 jmp xchain00509_n2_α
# IR_UNOP
 xchain00509_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00509_n2_α
 cmp eax, 0
 jne xchain00509_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00509_n3_α
 xchain00509_n1_β:
 jmp xchain00509_n2_α
# IR_LIT_STRING
 xchain00509_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00510_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00509_n4_α
 xchain00509_n2_β:
 jmp proc_anyf_ω
.Lx00510_0:
 .quad .Lx00510_0_s
.Lx00510_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00509_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00511_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00509_n5_α
 xchain00509_n3_β:
 jmp proc_anyf_ω
.Lx00511_0:
 .quad .Lx00511_0_s
.Lx00511_0_s:
 .string "any('aeiou')"
# IR_GEN_SCAN
 xchain00509_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00509_n6_α
 xchain00509_n4_β:
 jmp proc_anyf_ω
# IR_RETURN
 xchain00509_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_anyf_γ
# IR_LIT_INTEGER
 xchain00509_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00512_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00509_n7_α
 xchain00509_n6_β:
 jmp xchain00509_n9_α
.Lx00512_0:
 .quad 1
# IR_VAR
 xchain00509_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00509_n8_α
 xchain00509_n7_β:
 jmp xchain00509_n9_α
# IR_TO
 xchain00509_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00513_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00509_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00509_n10_α
 xchain00509_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00513_0
# IR_GEN_SCAN
 xchain00509_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_anyf_ω
 xchain00509_n9_β:
 jmp proc_anyf_ω
# IR_LIT_CHARSET
 xchain00509_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00509_n11_α
 xchain00509_n10_β:
 jmp xchain00509_n8_β
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00509_n11_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00509_n8_β
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00515_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00509_n8_β
 mov qword ptr [rbp + 208], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 216], rax
 jmp xchain00509_n8_β
 xchain00509_n11_β:
 jmp xchain00509_n8_β
.Lx00515_0:
 .quad .Lx00515_0_s
.Lx00515_0_s:
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
 xchain00516_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00516_n1_α
 xchain00516_n0_β:
 jmp xchain00516_n2_α
# IR_UNOP
 xchain00516_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00516_n2_α
 cmp eax, 0
 jne xchain00516_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00516_n3_α
 xchain00516_n1_β:
 jmp xchain00516_n2_α
# IR_LIT_STRING
 xchain00516_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00516_n4_α
 xchain00516_n2_β:
 jmp proc_manyf_ω
.Lx00517_0:
 .quad .Lx00517_0_s
.Lx00517_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00516_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00518_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00516_n5_α
 xchain00516_n3_β:
 jmp proc_manyf_ω
.Lx00518_0:
 .quad .Lx00518_0_s
.Lx00518_0_s:
 .string "many(&lcase)"
# IR_GEN_SCAN
 xchain00516_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00516_n6_α
 xchain00516_n4_β:
 jmp proc_manyf_ω
# IR_RETURN
 xchain00516_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_manyf_γ
# IR_LIT_INTEGER
 xchain00516_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00519_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00516_n7_α
 xchain00516_n6_β:
 jmp xchain00516_n9_α
.Lx00519_0:
 .quad 1
# IR_VAR
 xchain00516_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00516_n8_α
 xchain00516_n7_β:
 jmp xchain00516_n9_α
# IR_TO
 xchain00516_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00520_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00516_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00516_n10_α
 xchain00516_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00520_0
# IR_GEN_SCAN
 xchain00516_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_manyf_ω
 xchain00516_n9_β:
 jmp proc_manyf_ω
# IR_LIT_CHARSET
 xchain00516_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00516_n11_α
 xchain00516_n10_β:
 jmp xchain00516_n8_β
.Lx00521_0:
 .quad .Lx00521_0_s
.Lx00521_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00516_n11_α:
 mov eax, r14d
.Lx00522_0:
 cmp eax, r15d
 jge .Lx00522_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00522_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00522_1
 add eax, 1
 jmp .Lx00522_0
.Lx00522_1:
 cmp eax, r14d
 je xchain00516_n8_β
 mov qword ptr [rbp + 208], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 216], rcx
 jmp xchain00516_n8_β
 xchain00516_n11_β:
 jmp xchain00516_n8_β
.Lx00522_2:
 .quad .Lx00522_2_s
.Lx00522_2_s:
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
 xchain00523_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00523_n1_α
 xchain00523_n0_β:
 jmp xchain00523_n2_α
# IR_UNOP
 xchain00523_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00523_n2_α
 cmp eax, 0
 jne xchain00523_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00523_n3_α
 xchain00523_n1_β:
 jmp xchain00523_n2_α
# IR_LIT_STRING
 xchain00523_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00524_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00523_n4_α
 xchain00523_n2_β:
 jmp proc_uptof_ω
.Lx00524_0:
 .quad .Lx00524_0_s
.Lx00524_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00523_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00525_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00523_n5_α
 xchain00523_n3_β:
 jmp proc_uptof_ω
.Lx00525_0:
 .quad .Lx00525_0_s
.Lx00525_0_s:
 .string "upto('d')"
# IR_GEN_SCAN
 xchain00523_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00523_n6_α
 xchain00523_n4_β:
 jmp proc_uptof_ω
# IR_RETURN
 xchain00523_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uptof_γ
# IR_LIT_INTEGER
 xchain00523_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00526_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00523_n7_α
 xchain00523_n6_β:
 jmp xchain00523_n9_α
.Lx00526_0:
 .quad 1
# IR_VAR
 xchain00523_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00523_n8_α
 xchain00523_n7_β:
 jmp xchain00523_n9_α
# IR_TO
 xchain00523_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00527_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00523_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00523_n10_α
 xchain00523_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00527_0
# IR_GEN_SCAN
 xchain00523_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_uptof_ω
 xchain00523_n9_β:
 jmp proc_uptof_ω
# IR_LIT_CHARSET
 xchain00523_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00523_n11_α
 xchain00523_n10_β:
 jmp xchain00523_n8_β
.Lx00528_0:
 .quad .Lx00528_0_s
.Lx00528_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00523_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00529_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00523_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00529_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00529_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00523_n8_β
.Lx00529_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00529_0
 xchain00523_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00529_0
.Lx00529_2:
 .quad .Lx00529_2_s
.Lx00529_2_s:
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
 xchain00530_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00530_n1_α
 xchain00530_n0_β:
 jmp xchain00530_n2_α
# IR_UNOP
 xchain00530_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00530_n2_α
 cmp eax, 0
 jne xchain00530_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00530_n3_α
 xchain00530_n1_β:
 jmp xchain00530_n2_α
# IR_LIT_STRING
 xchain00530_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00531_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00530_n4_α
 xchain00530_n2_β:
 jmp proc_findf_ω
.Lx00531_0:
 .quad .Lx00531_0_s
.Lx00531_0_s:
 .string "abcde"
# IR_LIT_STRING
 xchain00530_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00530_n5_α
 xchain00530_n3_β:
 jmp proc_findf_ω
.Lx00532_0:
 .quad .Lx00532_0_s
.Lx00532_0_s:
 .string "find(\"de\")"
# IR_GEN_SCAN
 xchain00530_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00530_n6_α
 xchain00530_n4_β:
 jmp proc_findf_ω
# IR_RETURN
 xchain00530_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_findf_γ
# IR_LIT_INTEGER
 xchain00530_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00533_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00530_n7_α
 xchain00530_n6_β:
 jmp xchain00530_n9_α
.Lx00533_0:
 .quad 1
# IR_VAR
 xchain00530_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00530_n8_α
 xchain00530_n7_β:
 jmp xchain00530_n9_α
# IR_TO
 xchain00530_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00534_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00530_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00530_n10_α
 xchain00530_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00534_0
# IR_GEN_SCAN
 xchain00530_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_findf_ω
 xchain00530_n9_β:
 jmp proc_findf_ω
# IR_LIT_STRING
 xchain00530_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00530_n11_α
 xchain00530_n10_β:
 jmp xchain00530_n8_β
.Lx00535_0:
 .quad .Lx00535_0_s
.Lx00535_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00530_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00536_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00530_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00536_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00536_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00530_n8_β
.Lx00536_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00536_0
 xchain00530_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00536_0
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
 xchain00537_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00537_n1_α
 xchain00537_n0_β:
 jmp xchain00537_n2_α
# IR_UNOP
 xchain00537_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00537_n2_α
 cmp eax, 0
 jne xchain00537_n2_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00537_n3_α
 xchain00537_n1_β:
 jmp xchain00537_n2_α
# IR_LIT_STRING
 xchain00537_n2_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00537_n4_α
 xchain00537_n2_β:
 jmp proc_balf_ω
.Lx00538_0:
 .quad .Lx00538_0_s
.Lx00538_0_s:
 .string "(a*b)+(c/d)"
# IR_LIT_STRING
 xchain00537_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00537_n5_α
 xchain00537_n3_β:
 jmp proc_balf_ω
.Lx00539_0:
 .quad .Lx00539_0_s
.Lx00539_0_s:
 .string "bal('+')"
# IR_GEN_SCAN
 xchain00537_n4_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00537_n6_α
 xchain00537_n4_β:
 jmp proc_balf_ω
# IR_RETURN
 xchain00537_n5_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_balf_γ
# IR_LIT_INTEGER
 xchain00537_n6_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00540_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00537_n7_α
 xchain00537_n6_β:
 jmp xchain00537_n9_α
.Lx00540_0:
 .quad 1
# IR_VAR
 xchain00537_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00537_n8_α
 xchain00537_n7_β:
 jmp xchain00537_n9_α
# IR_TO
 xchain00537_n8_α:
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00541_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00537_n9_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00537_n10_α
 xchain00537_n8_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00541_0
# IR_GEN_SCAN
 xchain00537_n9_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_balf_ω
 xchain00537_n9_β:
 jmp proc_balf_ω
# IR_LIT_CHARSET
 xchain00537_n10_α:
 mov qword ptr [rbp + 240], 1
 mov dword ptr [rbp + 244], -1
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00537_n11_α
 xchain00537_n10_β:
 jmp xchain00537_n8_β
.Lx00542_0:
 .quad .Lx00542_0_s
.Lx00542_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00537_n11_α:
 mov qword ptr [rbp + 224], r14
.Lx00543_0:
 mov rax, qword ptr [rbp + 224]
 cmp rax, r15
 jge xchain00537_n8_β
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00543_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00543_1
 mov qword ptr [rbp + 208], 6
 add rax, 1
 mov qword ptr [rbp + 216], rax
 jmp xchain00537_n8_β
.Lx00543_1:
 inc qword ptr [rbp + 224]
 jmp .Lx00543_0
 xchain00537_n11_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00543_0
.Lx00543_2:
 .quad .Lx00543_2_s
.Lx00543_2_s:
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
 xchain00544_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00544_n1_α
 xchain00544_n0_β:
 jmp xchain00544_n2_α
# IR_UNOP
 xchain00544_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00544_n2_α
 cmp eax, 0
 jne xchain00544_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00544_n3_α
 xchain00544_n1_β:
 jmp xchain00544_n2_α
# IR_LIT_INTEGER
 xchain00544_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00545_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00544_n4_α
 xchain00544_n2_β:
 jmp proc_cssize_ω
.Lx00545_0:
 .quad 1
# IR_LIT_STRING
 xchain00544_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00546_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00544_n5_α
 xchain00544_n3_β:
 jmp proc_cssize_ω
.Lx00546_0:
 .quad .Lx00546_0_s
.Lx00546_0_s:
 .string "*&digits"
# IR_VAR
 xchain00544_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00544_n6_α
 xchain00544_n4_β:
 jmp proc_cssize_ω
# IR_RETURN
 xchain00544_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cssize_γ
# IR_TO
 xchain00544_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00547_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00544_n7_α
 xchain00544_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00547_0
# IR_LIT_CHARSET
 xchain00544_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00544_n8_α
 xchain00544_n7_β:
 jmp xchain00544_n6_β
.Lx00548_0:
 .quad .Lx00548_0_s
.Lx00548_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00544_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00544_n6_β
 xchain00544_n8_β:
 jmp xchain00544_n6_β
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
 xchain00549_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00549_n1_α
 xchain00549_n0_β:
 jmp xchain00549_n2_α
# IR_UNOP
 xchain00549_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00549_n2_α
 cmp eax, 0
 jne xchain00549_n2_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00549_n3_α
 xchain00549_n1_β:
 jmp xchain00549_n2_α
# IR_LIT_INTEGER
 xchain00549_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00550_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00549_n4_α
 xchain00549_n2_β:
 jmp proc_cscompl_ω
.Lx00550_0:
 .quad 1
# IR_LIT_STRING
 xchain00549_n3_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00549_n5_α
 xchain00549_n3_β:
 jmp proc_cscompl_ω
.Lx00551_0:
 .quad .Lx00551_0_s
.Lx00551_0_s:
 .string "~&digits"
# IR_VAR
 xchain00549_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00549_n6_α
 xchain00549_n4_β:
 jmp proc_cscompl_ω
# IR_RETURN
 xchain00549_n5_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cscompl_γ
# IR_TO
 xchain00549_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00552_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00549_n7_α
 xchain00549_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00552_0
# IR_LIT_CHARSET
 xchain00549_n7_α:
 mov qword ptr [rbp + 160], 1
 mov dword ptr [rbp + 164], -1
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00549_n8_α
 xchain00549_n7_β:
 jmp xchain00549_n6_β
.Lx00553_0:
 .quad .Lx00553_0_s
.Lx00553_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00549_n8_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00549_n6_β
 xchain00549_n8_β:
 jmp xchain00549_n6_β
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
 xchain00554_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00554_n1_α
 xchain00554_n0_β:
 jmp xchain00554_n2_α
# IR_UNOP
 xchain00554_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00554_n2_α
 cmp eax, 0
 jne xchain00554_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00554_n3_α
 xchain00554_n1_β:
 jmp xchain00554_n2_α
# IR_LIT_INTEGER
 xchain00554_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00554_n4_α
 xchain00554_n2_β:
 jmp proc_lcreate_ω
.Lx00555_0:
 .quad 1
# IR_LIT_STRING
 xchain00554_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00554_n5_α
 xchain00554_n3_β:
 jmp proc_lcreate_ω
.Lx00556_0:
 .quad .Lx00556_0_s
.Lx00556_0_s:
 .string "list(5,0)"
# IR_VAR
 xchain00554_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00554_n6_α
 xchain00554_n4_β:
 jmp proc_lcreate_ω
# IR_RETURN
 xchain00554_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcreate_γ
# IR_TO
 xchain00554_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00557_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00554_n7_α
 xchain00554_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00557_0
# IR_LIT_INTEGER
 xchain00554_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00558_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00554_n8_α
 xchain00554_n7_β:
 jmp xchain00554_n6_β
.Lx00558_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00554_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00559_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00554_n9_α
 xchain00554_n8_β:
 jmp xchain00554_n6_β
.Lx00559_0:
 .quad 0
 xchain00554_n9_α:
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
 je xchain00554_n6_β
 jmp xchain00554_n6_β
 xchain00554_n9_β:
 jmp xchain00554_n6_β
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
 xchain00560_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00560_n1_α
 xchain00560_n0_β:
 jmp xchain00560_n2_α
# IR_UNOP
 xchain00560_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00560_n2_α
 cmp eax, 0
 jne xchain00560_n2_α
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain00560_n3_α
 xchain00560_n1_β:
 jmp xchain00560_n2_α
# IR_LIT_INTEGER
 xchain00560_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00560_n4_α
 xchain00560_n2_β:
 jmp proc_lconst_ω
.Lx00561_0:
 .quad 1
# IR_LIT_STRING
 xchain00560_n3_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00560_n5_α
 xchain00560_n3_β:
 jmp proc_lconst_ω
.Lx00562_0:
 .quad .Lx00562_0_s
.Lx00562_0_s:
 .string "[1,2,3,4,5]"
# IR_VAR
 xchain00560_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00560_n6_α
 xchain00560_n4_β:
 jmp proc_lconst_ω
# IR_RETURN
 xchain00560_n5_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lconst_γ
# IR_TO
 xchain00560_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00563_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00560_n7_α
 xchain00560_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00563_0
# IR_LIT_INTEGER
 xchain00560_n7_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00560_n8_α
 xchain00560_n7_β:
 jmp xchain00560_n6_β
.Lx00564_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00560_n8_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00565_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00560_n9_α
 xchain00560_n8_β:
 jmp xchain00560_n6_β
.Lx00565_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00560_n9_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00566_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00560_n10_α
 xchain00560_n9_β:
 jmp xchain00560_n6_β
.Lx00566_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00560_n10_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00567_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00560_n11_α
 xchain00560_n10_β:
 jmp xchain00560_n6_β
.Lx00567_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00560_n11_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00560_n12_α
 xchain00560_n11_β:
 jmp xchain00560_n6_β
.Lx00568_0:
 .quad 5
# IR_MAKE_LIST
 xchain00560_n12_α:
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
 jmp xchain00560_n13_α
 xchain00560_n12_β:
 jmp xchain00560_n6_β
 xchain00560_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00560_n6_β
 xchain00560_n13_β:
 jmp xchain00560_n6_β
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
 xchain00569_n0_α:
 mov rdi, 1879052464
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00569_n1_α
 xchain00569_n0_β:
 jmp xchain00569_n3_α
# IR_NULLTEST_VAR
 xchain00569_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00569_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00569_n3_α
 cmp eax, 0
 jne xchain00569_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00569_n2_α
 xchain00569_n1_β:
 jmp xchain00569_n3_α
# IR_LIT_INTEGER
 xchain00569_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00569_n4_α
 xchain00569_n2_β:
 jmp xchain00569_n3_α
.Lx00570_0:
 .quad 1
# IR_VAR
 xchain00569_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00569_n5_α
 xchain00569_n3_β:
 jmp xchain00569_n6_α
# IR_ASSIGN_VAR
 xchain00569_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00569_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00569_n7_α
 xchain00569_n4_β:
 jmp xchain00569_n3_α
# IR_UNOP
 xchain00569_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00569_n6_α
 cmp eax, 0
 jne xchain00569_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00569_n8_α
 xchain00569_n5_β:
 jmp xchain00569_n6_α
# IR_LIT_INTEGER
 xchain00569_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00569_n9_α
 xchain00569_n6_β:
 jmp proc_lcopy_ω
.Lx00571_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00569_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00572_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00569_n10_α
 xchain00569_n7_β:
 jmp xchain00569_n3_α
.Lx00572_0:
 .quad 1
# IR_LIT_STRING
 xchain00569_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00569_n11_α
 xchain00569_n8_β:
 jmp proc_lcopy_ω
.Lx00573_0:
 .quad .Lx00573_0_s
.Lx00573_0_s:
 .string "copy(L)"
# IR_VAR
 xchain00569_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00569_n12_α
 xchain00569_n9_β:
 jmp proc_lcopy_ω
# IR_LIT_INTEGER
 xchain00569_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00569_n13_α
 xchain00569_n10_β:
 jmp xchain00569_n3_α
.Lx00574_0:
 .quad 2
# IR_RETURN
 xchain00569_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcopy_γ
# IR_TO
 xchain00569_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00575_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00569_n14_α
 xchain00569_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00575_0
# IR_LIT_INTEGER
 xchain00569_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00576_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00569_n15_α
 xchain00569_n13_β:
 jmp xchain00569_n3_α
.Lx00576_0:
 .quad 3
# IR_VAR
 xchain00569_n14_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00569_n16_α
 xchain00569_n14_β:
 jmp xchain00569_n12_β
# IR_LIT_INTEGER
 xchain00569_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00569_n17_α
 xchain00569_n15_β:
 jmp xchain00569_n3_α
.Lx00577_0:
 .quad 4
 xchain00569_n16_α:
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
 je xchain00569_n12_β
 jmp xchain00569_n12_β
 xchain00569_n16_β:
 jmp xchain00569_n12_β
# IR_LIT_INTEGER
 xchain00569_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00569_n18_α
 xchain00569_n17_β:
 jmp xchain00569_n3_α
.Lx00578_0:
 .quad 5
# IR_MAKE_LIST
 xchain00569_n18_α:
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
 jmp xchain00569_n19_α
 xchain00569_n18_β:
 jmp xchain00569_n3_α
# IR_ASSIGN gva
 xchain00569_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00569_n20_α
 xchain00569_n19_β:
 jmp xchain00569_n3_α
# IR_MOVE_LABEL
 xchain00569_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00569_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00569_n3_α
 xchain00569_n20_β:
 jmp xchain00569_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00569_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00569_n21_β:
 jmp xchain00569_n3_α
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
 xchain00579_n0_α:
 mov rdi, 1879052496
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00579_n1_α
 xchain00579_n0_β:
 jmp xchain00579_n3_α
# IR_NULLTEST_VAR
 xchain00579_n1_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00579_n3_α
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00579_n3_α
 cmp eax, 0
 jne xchain00579_n3_α
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00579_n2_α
 xchain00579_n1_β:
 jmp xchain00579_n3_α
# IR_LIT_INTEGER
 xchain00579_n2_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00580_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00579_n4_α
 xchain00579_n2_β:
 jmp xchain00579_n3_α
.Lx00580_0:
 .quad 1
# IR_VAR
 xchain00579_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00579_n5_α
 xchain00579_n3_β:
 jmp xchain00579_n6_α
# IR_ASSIGN_VAR
 xchain00579_n4_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00579_n3_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00579_n7_α
 xchain00579_n4_β:
 jmp xchain00579_n3_α
# IR_UNOP
 xchain00579_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00579_n6_α
 cmp eax, 0
 jne xchain00579_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00579_n8_α
 xchain00579_n5_β:
 jmp xchain00579_n6_α
# IR_LIT_INTEGER
 xchain00579_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00581_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00579_n9_α
 xchain00579_n6_β:
 jmp proc_lsort_ω
.Lx00581_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00579_n7_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00582_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00579_n10_α
 xchain00579_n7_β:
 jmp xchain00579_n3_α
.Lx00582_0:
 .quad 2
# IR_LIT_STRING
 xchain00579_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00579_n11_α
 xchain00579_n8_β:
 jmp proc_lsort_ω
.Lx00583_0:
 .quad .Lx00583_0_s
.Lx00583_0_s:
 .string "sort(L)"
# IR_VAR
 xchain00579_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00579_n12_α
 xchain00579_n9_β:
 jmp proc_lsort_ω
# IR_LIT_INTEGER
 xchain00579_n10_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00579_n13_α
 xchain00579_n10_β:
 jmp xchain00579_n3_α
.Lx00584_0:
 .quad 7
# IR_RETURN
 xchain00579_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsort_γ
# IR_TO
 xchain00579_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00585_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00579_n14_α
 xchain00579_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00585_0
# IR_LIT_INTEGER
 xchain00579_n13_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00579_n15_α
 xchain00579_n13_β:
 jmp xchain00579_n3_α
.Lx00586_0:
 .quad 1
# IR_VAR
 xchain00579_n14_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00579_n16_α
 xchain00579_n14_β:
 jmp xchain00579_n12_β
# IR_LIT_INTEGER
 xchain00579_n15_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00587_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00579_n17_α
 xchain00579_n15_β:
 jmp xchain00579_n3_α
.Lx00587_0:
 .quad 8
 xchain00579_n16_α:
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
 je xchain00579_n12_β
 jmp xchain00579_n12_β
 xchain00579_n16_β:
 jmp xchain00579_n12_β
# IR_LIT_INTEGER
 xchain00579_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00588_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00579_n18_α
 xchain00579_n17_β:
 jmp xchain00579_n3_α
.Lx00588_0:
 .quad 3
# IR_MAKE_LIST
 xchain00579_n18_α:
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
 jmp xchain00579_n19_α
 xchain00579_n18_β:
 jmp xchain00579_n3_α
# IR_ASSIGN gva
 xchain00579_n19_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00579_n20_α
 xchain00579_n19_β:
 jmp xchain00579_n3_α
# IR_MOVE_LABEL
 xchain00579_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00579_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00579_n3_α
 xchain00579_n20_β:
 jmp xchain00579_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00579_n21_α:
 jmp qword ptr [rbp + 352]
 xchain00579_n21_β:
 jmp xchain00579_n3_α
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
 xchain00589_n0_α:
 mov rdi, 1879052528
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00589_n1_α
 xchain00589_n0_β:
 jmp xchain00589_n3_α
# IR_NULLTEST_VAR
 xchain00589_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00589_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00589_n3_α
 cmp eax, 0
 jne xchain00589_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00589_n2_α
 xchain00589_n1_β:
 jmp xchain00589_n3_α
# IR_LIT_INTEGER
 xchain00589_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00590_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00589_n4_α
 xchain00589_n2_β:
 jmp xchain00589_n3_α
.Lx00590_0:
 .quad 1
# IR_VAR
 xchain00589_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00589_n5_α
 xchain00589_n3_β:
 jmp xchain00589_n6_α
# IR_ASSIGN_VAR
 xchain00589_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00589_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00589_n7_α
 xchain00589_n4_β:
 jmp xchain00589_n3_α
# IR_UNOP
 xchain00589_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00589_n6_α
 cmp eax, 0
 jne xchain00589_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00589_n8_α
 xchain00589_n5_β:
 jmp xchain00589_n6_α
# IR_LIT_INTEGER
 xchain00589_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00589_n9_α
 xchain00589_n6_β:
 jmp proc_lsize_ω
.Lx00591_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00589_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00589_n10_α
 xchain00589_n7_β:
 jmp xchain00589_n3_α
.Lx00592_0:
 .quad 1
# IR_LIT_STRING
 xchain00589_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00589_n11_α
 xchain00589_n8_β:
 jmp proc_lsize_ω
.Lx00593_0:
 .quad .Lx00593_0_s
.Lx00593_0_s:
 .string "*L"
# IR_VAR
 xchain00589_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00589_n12_α
 xchain00589_n9_β:
 jmp proc_lsize_ω
# IR_LIT_INTEGER
 xchain00589_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00589_n13_α
 xchain00589_n10_β:
 jmp xchain00589_n3_α
.Lx00594_0:
 .quad 2
# IR_RETURN
 xchain00589_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsize_γ
# IR_TO
 xchain00589_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00595_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00589_n14_α
 xchain00589_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00595_0
# IR_LIT_INTEGER
 xchain00589_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00596_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00589_n15_α
 xchain00589_n13_β:
 jmp xchain00589_n3_α
.Lx00596_0:
 .quad 3
# IR_VAR
 xchain00589_n14_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00589_n16_α
 xchain00589_n14_β:
 jmp xchain00589_n12_β
# IR_LIT_INTEGER
 xchain00589_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00589_n17_α
 xchain00589_n15_β:
 jmp xchain00589_n3_α
.Lx00597_0:
 .quad 4
# IR_UNOP
 xchain00589_n16_α:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 call rt_size_d@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00589_n12_β
 xchain00589_n16_β:
 jmp xchain00589_n12_β
# IR_LIT_INTEGER
 xchain00589_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00598_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00589_n18_α
 xchain00589_n17_β:
 jmp xchain00589_n3_α
.Lx00598_0:
 .quad 5
# IR_MAKE_LIST
 xchain00589_n18_α:
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
 jmp xchain00589_n19_α
 xchain00589_n18_β:
 jmp xchain00589_n3_α
# IR_ASSIGN gva
 xchain00589_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00589_n20_α
 xchain00589_n19_β:
 jmp xchain00589_n3_α
# IR_MOVE_LABEL
 xchain00589_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00589_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00589_n3_α
 xchain00589_n20_β:
 jmp xchain00589_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00589_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00589_n21_β:
 jmp xchain00589_n3_α
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
 xchain00599_n0_α:
 mov rdi, 1879052560
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00599_n1_α
 xchain00599_n0_β:
 jmp xchain00599_n3_α
# IR_NULLTEST_VAR
 xchain00599_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00599_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00599_n3_α
 cmp eax, 0
 jne xchain00599_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00599_n2_α
 xchain00599_n1_β:
 jmp xchain00599_n3_α
# IR_LIT_INTEGER
 xchain00599_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00600_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00599_n4_α
 xchain00599_n2_β:
 jmp xchain00599_n3_α
.Lx00600_0:
 .quad 1
# IR_VAR
 xchain00599_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00599_n5_α
 xchain00599_n3_β:
 jmp xchain00599_n6_α
# IR_ASSIGN_VAR
 xchain00599_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00599_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00599_n7_α
 xchain00599_n4_β:
 jmp xchain00599_n3_α
# IR_UNOP
 xchain00599_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00599_n6_α
 cmp eax, 0
 jne xchain00599_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00599_n8_α
 xchain00599_n5_β:
 jmp xchain00599_n6_α
# IR_LIT_INTEGER
 xchain00599_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00599_n9_α
 xchain00599_n6_β:
 jmp proc_lpick_ω
.Lx00601_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00599_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00602_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00599_n10_α
 xchain00599_n7_β:
 jmp xchain00599_n3_α
.Lx00602_0:
 .quad 1
# IR_LIT_STRING
 xchain00599_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00599_n11_α
 xchain00599_n8_β:
 jmp proc_lpick_ω
.Lx00603_0:
 .quad .Lx00603_0_s
.Lx00603_0_s:
 .string "?L"
# IR_VAR
 xchain00599_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00599_n12_α
 xchain00599_n9_β:
 jmp proc_lpick_ω
# IR_LIT_INTEGER
 xchain00599_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00599_n13_α
 xchain00599_n10_β:
 jmp xchain00599_n3_α
.Lx00604_0:
 .quad 2
# IR_RETURN
 xchain00599_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lpick_γ
# IR_TO
 xchain00599_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00605_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00599_n14_α
 xchain00599_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00605_0
# IR_LIT_INTEGER
 xchain00599_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00599_n15_α
 xchain00599_n13_β:
 jmp xchain00599_n3_α
.Lx00606_0:
 .quad 3
# IR_VAR_REF
 xchain00599_n14_α:
 mov rdi, 1879052544
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00599_n16_α
 xchain00599_n14_β:
 jmp xchain00599_n12_β
# IR_LIT_INTEGER
 xchain00599_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00607_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00599_n17_α
 xchain00599_n15_β:
 jmp xchain00599_n3_α
.Lx00607_0:
 .quad 4
# IR_RANDOM
 xchain00599_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00599_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00599_n18_α
 xchain00599_n16_β:
 jmp xchain00599_n12_β
# IR_LIT_INTEGER
 xchain00599_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00608_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00599_n19_α
 xchain00599_n17_β:
 jmp xchain00599_n3_α
.Lx00608_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00599_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00599_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00599_n12_β
 xchain00599_n18_β:
 jmp xchain00599_n12_β
# IR_MAKE_LIST
 xchain00599_n19_α:
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
 jmp xchain00599_n20_α
 xchain00599_n19_β:
 jmp xchain00599_n3_α
# IR_ASSIGN gva
 xchain00599_n20_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00599_n21_α
 xchain00599_n20_β:
 jmp xchain00599_n3_α
# IR_MOVE_LABEL
 xchain00599_n21_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00599_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00599_n3_α
 xchain00599_n21_β:
 jmp xchain00599_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00599_n22_α:
 jmp qword ptr [rbp + 336]
 xchain00599_n22_β:
 jmp xchain00599_n3_α
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
 xchain00609_n0_α:
 mov rdi, 1879052592
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00609_n1_α
 xchain00609_n0_β:
 jmp xchain00609_n3_α
# IR_NULLTEST_VAR
 xchain00609_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00609_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00609_n3_α
 cmp eax, 0
 jne xchain00609_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00609_n2_α
 xchain00609_n1_β:
 jmp xchain00609_n3_α
# IR_LIT_INTEGER
 xchain00609_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00609_n4_α
 xchain00609_n2_β:
 jmp xchain00609_n3_α
.Lx00610_0:
 .quad 1
# IR_VAR
 xchain00609_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00609_n5_α
 xchain00609_n3_β:
 jmp xchain00609_n6_α
# IR_ASSIGN_VAR
 xchain00609_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00609_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00609_n7_α
 xchain00609_n4_β:
 jmp xchain00609_n3_α
# IR_UNOP
 xchain00609_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00609_n6_α
 cmp eax, 0
 jne xchain00609_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00609_n8_α
 xchain00609_n5_β:
 jmp xchain00609_n6_α
# IR_LIT_INTEGER
 xchain00609_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00611_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00609_n9_α
 xchain00609_n6_β:
 jmp proc_lsubscr_ω
.Lx00611_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00609_n7_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00612_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00609_n10_α
 xchain00609_n7_β:
 jmp xchain00609_n3_α
.Lx00612_0:
 .quad 1
# IR_LIT_STRING
 xchain00609_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00609_n11_α
 xchain00609_n8_β:
 jmp proc_lsubscr_ω
.Lx00613_0:
 .quad .Lx00613_0_s
.Lx00613_0_s:
 .string "L[3]"
# IR_VAR
 xchain00609_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00609_n12_α
 xchain00609_n9_β:
 jmp proc_lsubscr_ω
# IR_LIT_INTEGER
 xchain00609_n10_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00614_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00609_n13_α
 xchain00609_n10_β:
 jmp xchain00609_n3_α
.Lx00614_0:
 .quad 2
# IR_RETURN
 xchain00609_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsubscr_γ
# IR_TO
 xchain00609_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00615_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00609_n14_α
 xchain00609_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00615_0
# IR_LIT_INTEGER
 xchain00609_n13_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00609_n15_α
 xchain00609_n13_β:
 jmp xchain00609_n3_α
.Lx00616_0:
 .quad 3
# IR_VAR_REF
 xchain00609_n14_α:
 mov rdi, 1879052576
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00609_n16_α
 xchain00609_n14_β:
 jmp xchain00609_n12_β
# IR_LIT_INTEGER
 xchain00609_n15_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00617_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00609_n17_α
 xchain00609_n15_β:
 jmp xchain00609_n3_α
.Lx00617_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00609_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00618_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00609_n18_α
 xchain00609_n16_β:
 jmp xchain00609_n12_β
.Lx00618_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00609_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00609_n19_α
 xchain00609_n17_β:
 jmp xchain00609_n3_α
.Lx00619_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00609_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00609_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00609_n20_α
 xchain00609_n18_β:
 jmp xchain00609_n12_β
# IR_MAKE_LIST
 xchain00609_n19_α:
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
 jmp xchain00609_n21_α
 xchain00609_n19_β:
 jmp xchain00609_n3_α
# IR_DEREF variable -> value
 xchain00609_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00609_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00609_n12_β
 xchain00609_n20_β:
 jmp xchain00609_n12_β
# IR_ASSIGN gva
 xchain00609_n21_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00609_n22_α
 xchain00609_n21_β:
 jmp xchain00609_n3_α
# IR_MOVE_LABEL
 xchain00609_n22_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00609_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00609_n3_α
 xchain00609_n22_β:
 jmp xchain00609_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00609_n23_α:
 jmp qword ptr [rbp + 384]
 xchain00609_n23_β:
 jmp xchain00609_n3_α
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
 xchain00620_n0_α:
 mov rdi, 1879052624
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00620_n1_α
 xchain00620_n0_β:
 jmp xchain00620_n3_α
# IR_NULLTEST_VAR
 xchain00620_n1_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 99
 je xchain00620_n3_α
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00620_n3_α
 cmp eax, 0
 jne xchain00620_n3_α
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 664], rax
 jmp xchain00620_n2_α
 xchain00620_n1_β:
 jmp xchain00620_n3_α
# IR_LIT_INTEGER
 xchain00620_n2_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00621_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00620_n4_α
 xchain00620_n2_β:
 jmp xchain00620_n3_α
.Lx00621_0:
 .quad 1
# IR_VAR
 xchain00620_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00620_n5_α
 xchain00620_n3_β:
 jmp xchain00620_n6_α
# IR_ASSIGN_VAR
 xchain00620_n4_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00620_n3_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00620_n7_α
 xchain00620_n4_β:
 jmp xchain00620_n3_α
# IR_UNOP
 xchain00620_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00620_n6_α
 cmp eax, 0
 jne xchain00620_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00620_n8_α
 xchain00620_n5_β:
 jmp xchain00620_n6_α
# IR_LIT_INTEGER
 xchain00620_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00622_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00620_n9_α
 xchain00620_n6_β:
 jmp proc_lbang_ω
.Lx00622_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00620_n7_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00623_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00620_n10_α
 xchain00620_n7_β:
 jmp xchain00620_n3_α
.Lx00623_0:
 .quad 1
# IR_LIT_STRING
 xchain00620_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00620_n11_α
 xchain00620_n8_β:
 jmp proc_lbang_ω
.Lx00624_0:
 .quad .Lx00624_0_s
.Lx00624_0_s:
 .string "!L"
# IR_VAR
 xchain00620_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00620_n12_α
 xchain00620_n9_β:
 jmp proc_lbang_ω
# IR_LIT_INTEGER
 xchain00620_n10_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00620_n13_α
 xchain00620_n10_β:
 jmp xchain00620_n3_α
.Lx00625_0:
 .quad 2
# IR_RETURN
 xchain00620_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lbang_γ
# IR_TO
 xchain00620_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00626_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00620_n14_α
 xchain00620_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00626_0
# IR_LIT_INTEGER
 xchain00620_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00627_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00620_n15_α
 xchain00620_n13_β:
 jmp xchain00620_n3_α
.Lx00627_0:
 .quad 3
# IR_VAR
 xchain00620_n14_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00620_n16_α
 xchain00620_n14_β:
 jmp xchain00620_n12_β
# IR_LIT_INTEGER
 xchain00620_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00628_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00620_n17_α
 xchain00620_n15_β:
 jmp xchain00620_n3_α
.Lx00628_0:
 .quad 4
# IR_LIST_BANG
 xchain00620_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00629_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00620_n12_β
 jmp xchain00620_n16_β
 xchain00620_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00629_0
# IR_LIT_INTEGER
 xchain00620_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00630_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00620_n18_α
 xchain00620_n17_β:
 jmp xchain00620_n3_α
.Lx00630_0:
 .quad 5
# IR_MAKE_LIST
 xchain00620_n18_α:
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
 jmp xchain00620_n19_α
 xchain00620_n18_β:
 jmp xchain00620_n3_α
# IR_ASSIGN gva
 xchain00620_n19_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00620_n20_α
 xchain00620_n19_β:
 jmp xchain00620_n3_α
# IR_MOVE_LABEL
 xchain00620_n20_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00620_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00620_n3_α
 xchain00620_n20_β:
 jmp xchain00620_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00620_n21_α:
 jmp qword ptr [rbp + 336]
 xchain00620_n21_β:
 jmp xchain00620_n3_α
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
 xchain00631_n0_α:
 mov rdi, 1879052656
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00631_n1_α
 xchain00631_n0_β:
 jmp xchain00631_n3_α
# IR_NULLTEST_VAR
 xchain00631_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00631_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00631_n3_α
 cmp eax, 0
 jne xchain00631_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00631_n2_α
 xchain00631_n1_β:
 jmp xchain00631_n3_α
# IR_LIT_INTEGER
 xchain00631_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00632_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00631_n4_α
 xchain00631_n2_β:
 jmp xchain00631_n3_α
.Lx00632_0:
 .quad 1
# IR_VAR
 xchain00631_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00631_n5_α
 xchain00631_n3_β:
 jmp xchain00631_n6_α
# IR_ASSIGN_VAR
 xchain00631_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00631_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00631_n7_α
 xchain00631_n4_β:
 jmp xchain00631_n3_α
# IR_UNOP
 xchain00631_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00631_n6_α
 cmp eax, 0
 jne xchain00631_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00631_n8_α
 xchain00631_n5_β:
 jmp xchain00631_n6_α
# IR_LIT_INTEGER
 xchain00631_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00631_n9_α
 xchain00631_n6_β:
 jmp proc_put1get1_ω
.Lx00633_0:
 .quad 1
# IR_MAKE_LIST
 xchain00631_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00631_n10_α
 xchain00631_n7_β:
 jmp xchain00631_n3_α
# IR_LIT_STRING
 xchain00631_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00634_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00631_n11_α
 xchain00631_n8_β:
 jmp proc_put1get1_ω
.Lx00634_0:
 .quad .Lx00634_0_s
.Lx00634_0_s:
 .string "get(put(L,0))"
# IR_VAR
 xchain00631_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00631_n12_α
 xchain00631_n9_β:
 jmp proc_put1get1_ω
# IR_ASSIGN gva
 xchain00631_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00631_n13_α
 xchain00631_n10_β:
 jmp xchain00631_n3_α
# IR_RETURN
 xchain00631_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put1get1_γ
# IR_TO
 xchain00631_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00635_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00631_n14_α
 xchain00631_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00635_0
# IR_MOVE_LABEL
 xchain00631_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00631_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00631_n3_α
 xchain00631_n13_β:
 jmp xchain00631_n3_α
# IR_VAR
 xchain00631_n14_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00631_n16_α
 xchain00631_n14_β:
 jmp xchain00631_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00631_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00631_n15_β:
 jmp xchain00631_n3_α
# IR_LIT_INTEGER
 xchain00631_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00631_n17_α
 xchain00631_n16_β:
 jmp xchain00631_n12_β
.Lx00636_0:
 .quad 0
 xchain00631_n17_α:
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
 je xchain00631_n12_β
 jmp xchain00631_n18_α
 xchain00631_n17_β:
 jmp xchain00631_n12_β
 xchain00631_n18_α:
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
 je xchain00631_n12_β
 jmp xchain00631_n12_β
 xchain00631_n18_β:
 jmp xchain00631_n12_β
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
 xchain00637_n0_α:
 mov rdi, 1879052688
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00637_n1_α
 xchain00637_n0_β:
 jmp xchain00637_n3_α
# IR_NULLTEST_VAR
 xchain00637_n1_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00637_n3_α
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00637_n3_α
 cmp eax, 0
 jne xchain00637_n3_α
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00637_n2_α
 xchain00637_n1_β:
 jmp xchain00637_n3_α
# IR_LIT_INTEGER
 xchain00637_n2_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00638_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00637_n4_α
 xchain00637_n2_β:
 jmp xchain00637_n3_α
.Lx00638_0:
 .quad 1
# IR_VAR
 xchain00637_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00637_n5_α
 xchain00637_n3_β:
 jmp xchain00637_n6_α
# IR_ASSIGN_VAR
 xchain00637_n4_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00637_n3_α
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00637_n7_α
 xchain00637_n4_β:
 jmp xchain00637_n3_α
# IR_UNOP
 xchain00637_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00637_n6_α
 cmp eax, 0
 jne xchain00637_n6_α
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 jmp xchain00637_n8_α
 xchain00637_n5_β:
 jmp xchain00637_n6_α
# IR_LIT_INTEGER
 xchain00637_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00637_n9_α
 xchain00637_n6_β:
 jmp proc_put2get2_ω
.Lx00639_0:
 .quad 1
# IR_MAKE_LIST
 xchain00637_n7_α:
 lea rdi, [rbp + 672]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00637_n10_α
 xchain00637_n7_β:
 jmp xchain00637_n3_α
# IR_LIT_STRING
 xchain00637_n8_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00637_n11_α
 xchain00637_n8_β:
 jmp proc_put2get2_ω
.Lx00640_0:
 .quad .Lx00640_0_s
.Lx00640_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_VAR
 xchain00637_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00637_n12_α
 xchain00637_n9_β:
 jmp proc_put2get2_ω
# IR_ASSIGN gva
 xchain00637_n10_α:
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00637_n13_α
 xchain00637_n10_β:
 jmp xchain00637_n3_α
# IR_RETURN
 xchain00637_n11_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put2get2_γ
# IR_TO
 xchain00637_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00641_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00637_n14_α
 xchain00637_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00641_0
# IR_MOVE_LABEL
 xchain00637_n13_α:
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
 lea rax, [rip + xchain00637_n3_α]
 mov qword ptr [rbp + 624], rax
 jmp xchain00637_n3_α
 xchain00637_n13_β:
 jmp xchain00637_n3_α
# IR_VAR
 xchain00637_n14_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00637_n16_α
 xchain00637_n14_β:
 jmp xchain00637_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00637_n15_α:
 jmp qword ptr [rbp + 624]
 xchain00637_n15_β:
 jmp xchain00637_n3_α
# IR_LIT_INTEGER
 xchain00637_n16_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00637_n17_α
 xchain00637_n16_β:
 jmp xchain00637_n12_β
.Lx00642_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00637_n17_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00637_n18_α
 xchain00637_n17_β:
 jmp xchain00637_n12_β
.Lx00643_0:
 .quad 2
 xchain00637_n18_α:
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
 je xchain00637_n12_β
 jmp xchain00637_n19_α
 xchain00637_n18_β:
 jmp xchain00637_n12_β
# IR_VAR
 xchain00637_n19_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00637_n20_α
 xchain00637_n19_β:
 jmp xchain00637_n12_β
 xchain00637_n20_α:
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
 je xchain00637_n12_β
 jmp xchain00637_n21_α
 xchain00637_n20_β:
 jmp xchain00637_n12_β
# IR_VAR
 xchain00637_n21_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00637_n22_α
 xchain00637_n21_β:
 jmp xchain00637_n12_β
 xchain00637_n22_α:
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
 je xchain00637_n12_β
 jmp xchain00637_n23_α
 xchain00637_n22_β:
 jmp xchain00637_n12_β
 xchain00637_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00637_n12_β
xchain00637_n23_β:
 jmp xchain00637_n12_β
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
 xchain00644_n0_α:
 mov rdi, 1879052720
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00644_n1_α
 xchain00644_n0_β:
 jmp xchain00644_n3_α
# IR_NULLTEST_VAR
 xchain00644_n1_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 99
 je xchain00644_n3_α
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00644_n3_α
 cmp eax, 0
 jne xchain00644_n3_α
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 840], rax
 jmp xchain00644_n2_α
 xchain00644_n1_β:
 jmp xchain00644_n3_α
# IR_LIT_INTEGER
 xchain00644_n2_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00644_n4_α
 xchain00644_n2_β:
 jmp xchain00644_n3_α
.Lx00645_0:
 .quad 1
# IR_VAR
 xchain00644_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 712], rax
 jmp xchain00644_n5_α
 xchain00644_n3_β:
 jmp xchain00644_n6_α
# IR_ASSIGN_VAR
 xchain00644_n4_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00644_n3_α
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00644_n7_α
 xchain00644_n4_β:
 jmp xchain00644_n3_α
# IR_UNOP
 xchain00644_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00644_n6_α
 cmp eax, 0
 jne xchain00644_n6_α
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 jmp xchain00644_n8_α
 xchain00644_n5_β:
 jmp xchain00644_n6_α
# IR_LIT_INTEGER
 xchain00644_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00646_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00644_n9_α
 xchain00644_n6_β:
 jmp proc_put3get3_ω
.Lx00646_0:
 .quad 1
# IR_MAKE_LIST
 xchain00644_n7_α:
 lea rdi, [rbp + 800]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00644_n10_α
 xchain00644_n7_β:
 jmp xchain00644_n3_α
# IR_LIT_STRING
 xchain00644_n8_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00644_n11_α
 xchain00644_n8_β:
 jmp proc_put3get3_ω
.Lx00647_0:
 .quad .Lx00647_0_s
.Lx00647_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_VAR
 xchain00644_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00644_n12_α
 xchain00644_n9_β:
 jmp proc_put3get3_ω
# IR_ASSIGN gva
 xchain00644_n10_α:
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00644_n13_α
 xchain00644_n10_β:
 jmp xchain00644_n3_α
# IR_RETURN
 xchain00644_n11_α:
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put3get3_γ
# IR_TO
 xchain00644_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00648_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00644_n14_α
 xchain00644_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00648_0
# IR_MOVE_LABEL
 xchain00644_n13_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + xchain00644_n3_α]
 mov qword ptr [rbp + 752], rax
 jmp xchain00644_n3_α
 xchain00644_n13_β:
 jmp xchain00644_n3_α
# IR_VAR
 xchain00644_n14_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00644_n16_α
 xchain00644_n14_β:
 jmp xchain00644_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00644_n15_α:
 jmp qword ptr [rbp + 752]
 xchain00644_n15_β:
 jmp xchain00644_n3_α
# IR_LIT_INTEGER
 xchain00644_n16_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00649_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00644_n17_α
 xchain00644_n16_β:
 jmp xchain00644_n12_β
.Lx00649_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00644_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00644_n18_α
 xchain00644_n17_β:
 jmp xchain00644_n12_β
.Lx00650_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00644_n18_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00644_n19_α
 xchain00644_n18_β:
 jmp xchain00644_n12_β
.Lx00651_0:
 .quad 3
 xchain00644_n19_α:
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
 je xchain00644_n12_β
 jmp xchain00644_n20_α
 xchain00644_n19_β:
 jmp xchain00644_n12_β
# IR_VAR
 xchain00644_n20_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00644_n21_α
 xchain00644_n20_β:
 jmp xchain00644_n12_β
 xchain00644_n21_α:
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
 je xchain00644_n12_β
 jmp xchain00644_n22_α
 xchain00644_n21_β:
 jmp xchain00644_n12_β
# IR_VAR
 xchain00644_n22_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00644_n23_α
 xchain00644_n22_β:
 jmp xchain00644_n12_β
 xchain00644_n23_α:
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
 je xchain00644_n12_β
 jmp xchain00644_n24_α
 xchain00644_n23_β:
 jmp xchain00644_n12_β
# IR_VAR
 xchain00644_n24_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00644_n25_α
 xchain00644_n24_β:
 jmp xchain00644_n12_β
 xchain00644_n25_α:
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
 je xchain00644_n12_β
 jmp xchain00644_n26_α
 xchain00644_n25_β:
 jmp xchain00644_n12_β
 xchain00644_n26_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00644_n12_β
xchain00644_n26_β:
 jmp xchain00644_n12_β
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
 xchain00652_n0_α:
 mov rdi, 1879052752
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00652_n1_α
 xchain00652_n0_β:
 jmp xchain00652_n3_α
# IR_NULLTEST_VAR
 xchain00652_n1_α:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 99
 je xchain00652_n3_α
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00652_n3_α
 cmp eax, 0
 jne xchain00652_n3_α
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 968], rax
 jmp xchain00652_n2_α
 xchain00652_n1_β:
 jmp xchain00652_n3_α
# IR_LIT_INTEGER
 xchain00652_n2_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00652_n4_α
 xchain00652_n2_β:
 jmp xchain00652_n3_α
.Lx00653_0:
 .quad 1
# IR_VAR
 xchain00652_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 840], rax
 jmp xchain00652_n5_α
 xchain00652_n3_β:
 jmp xchain00652_n6_α
# IR_ASSIGN_VAR
 xchain00652_n4_α:
 mov rdi, qword ptr [rbp + 960]
 mov rsi, qword ptr [rbp + 968]
 mov rdx, qword ptr [rbp + 1008]
 mov rcx, qword ptr [rbp + 1016]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00652_n3_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00652_n7_α
 xchain00652_n4_β:
 jmp xchain00652_n3_α
# IR_UNOP
 xchain00652_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00652_n6_α
 cmp eax, 0
 jne xchain00652_n6_α
 mov qword ptr [rbp + 800], 0
 mov qword ptr [rbp + 808], 0
 jmp xchain00652_n8_α
 xchain00652_n5_β:
 jmp xchain00652_n6_α
# IR_LIT_INTEGER
 xchain00652_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00652_n9_α
 xchain00652_n6_β:
 jmp proc_put4get4_ω
.Lx00654_0:
 .quad 1
# IR_MAKE_LIST
 xchain00652_n7_α:
 lea rdi, [rbp + 928]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00652_n10_α
 xchain00652_n7_β:
 jmp xchain00652_n3_α
# IR_LIT_STRING
 xchain00652_n8_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00652_n11_α
 xchain00652_n8_β:
 jmp proc_put4get4_ω
.Lx00655_0:
 .quad .Lx00655_0_s
.Lx00655_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_VAR
 xchain00652_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00652_n12_α
 xchain00652_n9_β:
 jmp proc_put4get4_ω
# IR_ASSIGN gva
 xchain00652_n10_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [1879052736], rax
 mov qword ptr [1879052744], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00652_n13_α
 xchain00652_n10_β:
 jmp xchain00652_n3_α
# IR_RETURN
 xchain00652_n11_α:
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put4get4_γ
# IR_TO
 xchain00652_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00656_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00652_n14_α
 xchain00652_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00656_0
# IR_MOVE_LABEL
 xchain00652_n13_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
 lea rax, [rip + xchain00652_n3_α]
 mov qword ptr [rbp + 880], rax
 jmp xchain00652_n3_α
 xchain00652_n13_β:
 jmp xchain00652_n3_α
# IR_VAR
 xchain00652_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00652_n16_α
 xchain00652_n14_β:
 jmp xchain00652_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00652_n15_α:
 jmp qword ptr [rbp + 880]
 xchain00652_n15_β:
 jmp xchain00652_n3_α
# IR_LIT_INTEGER
 xchain00652_n16_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00657_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00652_n17_α
 xchain00652_n16_β:
 jmp xchain00652_n12_β
.Lx00657_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00652_n17_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00658_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00652_n18_α
 xchain00652_n17_β:
 jmp xchain00652_n12_β
.Lx00658_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00652_n18_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00652_n19_α
 xchain00652_n18_β:
 jmp xchain00652_n12_β
.Lx00659_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00652_n19_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00652_n20_α
 xchain00652_n19_β:
 jmp xchain00652_n12_β
.Lx00660_0:
 .quad 4
 xchain00652_n20_α:
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
 je xchain00652_n12_β
 jmp xchain00652_n21_α
 xchain00652_n20_β:
 jmp xchain00652_n12_β
# IR_VAR
 xchain00652_n21_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00652_n22_α
 xchain00652_n21_β:
 jmp xchain00652_n12_β
 xchain00652_n22_α:
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
 je xchain00652_n12_β
 jmp xchain00652_n23_α
 xchain00652_n22_β:
 jmp xchain00652_n12_β
# IR_VAR
 xchain00652_n23_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00652_n24_α
 xchain00652_n23_β:
 jmp xchain00652_n12_β
 xchain00652_n24_α:
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
 je xchain00652_n12_β
 jmp xchain00652_n25_α
 xchain00652_n24_β:
 jmp xchain00652_n12_β
# IR_VAR
 xchain00652_n25_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00652_n26_α
 xchain00652_n25_β:
 jmp xchain00652_n12_β
 xchain00652_n26_α:
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
 je xchain00652_n12_β
 jmp xchain00652_n27_α
 xchain00652_n26_β:
 jmp xchain00652_n12_β
# IR_VAR
 xchain00652_n27_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00652_n28_α
 xchain00652_n27_β:
 jmp xchain00652_n12_β
 xchain00652_n28_α:
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
 je xchain00652_n12_β
 jmp xchain00652_n29_α
 xchain00652_n28_β:
 jmp xchain00652_n12_β
 xchain00652_n29_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
 jmp xchain00652_n12_β
xchain00652_n29_β:
 jmp xchain00652_n12_β
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
 xchain00661_n0_α:
 mov rdi, 1879052784
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00661_n1_α
 xchain00661_n0_β:
 jmp xchain00661_n3_α
# IR_NULLTEST_VAR
 xchain00661_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00661_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00661_n3_α
 cmp eax, 0
 jne xchain00661_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00661_n2_α
 xchain00661_n1_β:
 jmp xchain00661_n3_α
# IR_LIT_INTEGER
 xchain00661_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00661_n4_α
 xchain00661_n2_β:
 jmp xchain00661_n3_α
.Lx00662_0:
 .quad 1
# IR_VAR
 xchain00661_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00661_n5_α
 xchain00661_n3_β:
 jmp xchain00661_n6_α
# IR_ASSIGN_VAR
 xchain00661_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00661_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00661_n7_α
 xchain00661_n4_β:
 jmp xchain00661_n3_α
# IR_UNOP
 xchain00661_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00661_n6_α
 cmp eax, 0
 jne xchain00661_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00661_n8_α
 xchain00661_n5_β:
 jmp xchain00661_n6_α
# IR_LIT_INTEGER
 xchain00661_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00661_n9_α
 xchain00661_n6_β:
 jmp proc_pushpop_ω
.Lx00663_0:
 .quad 1
# IR_MAKE_LIST
 xchain00661_n7_α:
 lea rdi, [rbp + 496]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00661_n10_α
 xchain00661_n7_β:
 jmp xchain00661_n3_α
# IR_LIT_STRING
 xchain00661_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00664_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00661_n11_α
 xchain00661_n8_β:
 jmp proc_pushpop_ω
.Lx00664_0:
 .quad .Lx00664_0_s
.Lx00664_0_s:
 .string "pop(push(L,0))"
# IR_VAR
 xchain00661_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00661_n12_α
 xchain00661_n9_β:
 jmp proc_pushpop_ω
# IR_ASSIGN gva
 xchain00661_n10_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00661_n13_α
 xchain00661_n10_β:
 jmp xchain00661_n3_α
# IR_RETURN
 xchain00661_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop_γ
# IR_TO
 xchain00661_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00665_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00661_n14_α
 xchain00661_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00665_0
# IR_MOVE_LABEL
 xchain00661_n13_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00661_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00661_n3_α
 xchain00661_n13_β:
 jmp xchain00661_n3_α
# IR_VAR
 xchain00661_n14_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00661_n16_α
 xchain00661_n14_β:
 jmp xchain00661_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00661_n15_α:
 jmp qword ptr [rbp + 448]
 xchain00661_n15_β:
 jmp xchain00661_n3_α
# IR_LIT_INTEGER
 xchain00661_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00661_n17_α
 xchain00661_n16_β:
 jmp xchain00661_n12_β
.Lx00666_0:
 .quad 0
 xchain00661_n17_α:
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
 je xchain00661_n12_β
 jmp xchain00661_n18_α
 xchain00661_n17_β:
 jmp xchain00661_n12_β
 xchain00661_n18_α:
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
 je xchain00661_n12_β
 jmp xchain00661_n12_β
 xchain00661_n18_β:
 jmp xchain00661_n12_β
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
 xchain00667_n0_α:
 mov rdi, 1879052816
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00667_n1_α
 xchain00667_n0_β:
 jmp xchain00667_n3_α
# IR_NULLTEST_VAR
 xchain00667_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00667_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00667_n3_α
 cmp eax, 0
 jne xchain00667_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00667_n2_α
 xchain00667_n1_β:
 jmp xchain00667_n3_α
# IR_LIT_INTEGER
 xchain00667_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00668_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00667_n4_α
 xchain00667_n2_β:
 jmp xchain00667_n3_α
.Lx00668_0:
 .quad 1
# IR_VAR
 xchain00667_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00667_n5_α
 xchain00667_n3_β:
 jmp xchain00667_n6_α
# IR_ASSIGN_VAR
 xchain00667_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00667_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00667_n7_α
 xchain00667_n4_β:
 jmp xchain00667_n3_α
# IR_UNOP
 xchain00667_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00667_n6_α
 cmp eax, 0
 jne xchain00667_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00667_n8_α
 xchain00667_n5_β:
 jmp xchain00667_n6_α
# IR_LIT_INTEGER
 xchain00667_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00669_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00667_n9_α
 xchain00667_n6_β:
 jmp proc_putget12_ω
.Lx00669_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00667_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00667_n10_α
 xchain00667_n7_β:
 jmp xchain00667_n3_α
.Lx00670_0:
 .quad 3
# IR_LIT_STRING
 xchain00667_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00667_n11_α
 xchain00667_n8_β:
 jmp proc_putget12_ω
.Lx00671_0:
 .quad .Lx00671_0_s
.Lx00671_0_s:
 .string "get(put(L12,0))"
# IR_VAR
 xchain00667_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00667_n12_α
 xchain00667_n9_β:
 jmp proc_putget12_ω
# IR_LIT_INTEGER
 xchain00667_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00667_n13_α
 xchain00667_n10_β:
 jmp xchain00667_n3_α
.Lx00672_0:
 .quad 1
# IR_RETURN
 xchain00667_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putget12_γ
# IR_TO
 xchain00667_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00673_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00667_n14_α
 xchain00667_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00673_0
# IR_LIT_INTEGER
 xchain00667_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00667_n15_α
 xchain00667_n13_β:
 jmp xchain00667_n3_α
.Lx00674_0:
 .quad 4
# IR_VAR
 xchain00667_n14_α:
 mov rax, qword ptr [1879052800]
 mov rdx, qword ptr [1879052808]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00667_n16_α
 xchain00667_n14_β:
 jmp xchain00667_n12_β
# IR_LIT_INTEGER
 xchain00667_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00667_n17_α
 xchain00667_n15_β:
 jmp xchain00667_n3_α
.Lx00675_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00667_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00667_n18_α
 xchain00667_n16_β:
 jmp xchain00667_n12_β
.Lx00676_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00667_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00667_n19_α
 xchain00667_n17_β:
 jmp xchain00667_n3_α
.Lx00677_0:
 .quad 5
 xchain00667_n18_α:
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
 je xchain00667_n12_β
 jmp xchain00667_n20_α
 xchain00667_n18_β:
 jmp xchain00667_n12_β
# IR_LIT_INTEGER
 xchain00667_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00667_n21_α
 xchain00667_n19_β:
 jmp xchain00667_n3_α
.Lx00678_0:
 .quad 9
 xchain00667_n20_α:
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
 je xchain00667_n12_β
 jmp xchain00667_n12_β
 xchain00667_n20_β:
 jmp xchain00667_n12_β
# IR_LIT_INTEGER
 xchain00667_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00667_n22_α
 xchain00667_n21_β:
 jmp xchain00667_n3_α
.Lx00679_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00667_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00667_n23_α
 xchain00667_n22_β:
 jmp xchain00667_n3_α
.Lx00680_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00667_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00681_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00667_n24_α
 xchain00667_n23_β:
 jmp xchain00667_n3_α
.Lx00681_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00667_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00682_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00667_n25_α
 xchain00667_n24_β:
 jmp xchain00667_n3_α
.Lx00682_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00667_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00667_n26_α
 xchain00667_n25_β:
 jmp xchain00667_n3_α
.Lx00683_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00667_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00667_n27_α
 xchain00667_n26_β:
 jmp xchain00667_n3_α
.Lx00684_0:
 .quad 8
# IR_MAKE_LIST
 xchain00667_n27_α:
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
 jmp xchain00667_n28_α
 xchain00667_n27_β:
 jmp xchain00667_n3_α
# IR_ASSIGN gva
 xchain00667_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00667_n29_α
 xchain00667_n28_β:
 jmp xchain00667_n3_α
# IR_MOVE_LABEL
 xchain00667_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00667_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00667_n3_α
 xchain00667_n29_β:
 jmp xchain00667_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00667_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00667_n30_β:
 jmp xchain00667_n3_α
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
 xchain00685_n0_α:
 mov rdi, 1879052848
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain00685_n1_α
 xchain00685_n0_β:
 jmp xchain00685_n3_α
# IR_NULLTEST_VAR
 xchain00685_n1_α:
 mov eax, dword ptr [rbp + 1072]
 cmp eax, 99
 je xchain00685_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00685_n3_α
 cmp eax, 0
 jne xchain00685_n3_α
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00685_n2_α
 xchain00685_n1_β:
 jmp xchain00685_n3_α
# IR_LIT_INTEGER
 xchain00685_n2_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00685_n4_α
 xchain00685_n2_β:
 jmp xchain00685_n3_α
.Lx00686_0:
 .quad 1
# IR_VAR
 xchain00685_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00685_n5_α
 xchain00685_n3_β:
 jmp xchain00685_n6_α
# IR_ASSIGN_VAR
 xchain00685_n4_α:
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00685_n3_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00685_n7_α
 xchain00685_n4_β:
 jmp xchain00685_n3_α
# IR_UNOP
 xchain00685_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00685_n6_α
 cmp eax, 0
 jne xchain00685_n6_α
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00685_n8_α
 xchain00685_n5_β:
 jmp xchain00685_n6_α
# IR_LIT_INTEGER
 xchain00685_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00685_n9_α
 xchain00685_n6_β:
 jmp proc_pushpop12_ω
.Lx00687_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00685_n7_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00688_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00685_n10_α
 xchain00685_n7_β:
 jmp xchain00685_n3_α
.Lx00688_0:
 .quad 3
# IR_LIT_STRING
 xchain00685_n8_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00685_n11_α
 xchain00685_n8_β:
 jmp proc_pushpop12_ω
.Lx00689_0:
 .quad .Lx00689_0_s
.Lx00689_0_s:
 .string "pop(push(L12,0))"
# IR_VAR
 xchain00685_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00685_n12_α
 xchain00685_n9_β:
 jmp proc_pushpop12_ω
# IR_LIT_INTEGER
 xchain00685_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00685_n13_α
 xchain00685_n10_β:
 jmp xchain00685_n3_α
.Lx00690_0:
 .quad 1
# IR_RETURN
 xchain00685_n11_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop12_γ
# IR_TO
 xchain00685_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00691_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00685_n14_α
 xchain00685_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00691_0
# IR_LIT_INTEGER
 xchain00685_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00692_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00685_n15_α
 xchain00685_n13_β:
 jmp xchain00685_n3_α
.Lx00692_0:
 .quad 4
# IR_VAR
 xchain00685_n14_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00685_n16_α
 xchain00685_n14_β:
 jmp xchain00685_n12_β
# IR_LIT_INTEGER
 xchain00685_n15_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx00693_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00685_n17_α
 xchain00685_n15_β:
 jmp xchain00685_n3_α
.Lx00693_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00685_n16_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00694_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00685_n18_α
 xchain00685_n16_β:
 jmp xchain00685_n12_β
.Lx00694_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00685_n17_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00685_n19_α
 xchain00685_n17_β:
 jmp xchain00685_n3_α
.Lx00695_0:
 .quad 5
 xchain00685_n18_α:
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
 je xchain00685_n12_β
 jmp xchain00685_n20_α
 xchain00685_n18_β:
 jmp xchain00685_n12_β
# IR_LIT_INTEGER
 xchain00685_n19_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx00696_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain00685_n21_α
 xchain00685_n19_β:
 jmp xchain00685_n3_α
.Lx00696_0:
 .quad 9
 xchain00685_n20_α:
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
 je xchain00685_n12_β
 jmp xchain00685_n12_β
 xchain00685_n20_β:
 jmp xchain00685_n12_β
# IR_LIT_INTEGER
 xchain00685_n21_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00685_n22_α
 xchain00685_n21_β:
 jmp xchain00685_n3_α
.Lx00697_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00685_n22_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00698_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00685_n23_α
 xchain00685_n22_β:
 jmp xchain00685_n3_α
.Lx00698_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00685_n23_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00685_n24_α
 xchain00685_n23_β:
 jmp xchain00685_n3_α
.Lx00699_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00685_n24_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00685_n25_α
 xchain00685_n24_β:
 jmp xchain00685_n3_α
.Lx00700_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00685_n25_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00685_n26_α
 xchain00685_n25_β:
 jmp xchain00685_n3_α
.Lx00701_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00685_n26_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx00702_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00685_n27_α
 xchain00685_n26_β:
 jmp xchain00685_n3_α
.Lx00702_0:
 .quad 8
# IR_MAKE_LIST
 xchain00685_n27_α:
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
 jmp xchain00685_n28_α
 xchain00685_n27_β:
 jmp xchain00685_n3_α
# IR_ASSIGN gva
 xchain00685_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00685_n29_α
 xchain00685_n28_β:
 jmp xchain00685_n3_α
# IR_MOVE_LABEL
 xchain00685_n29_α:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + xchain00685_n3_α]
 mov qword ptr [rbp + 448], rax
 jmp xchain00685_n3_α
 xchain00685_n29_β:
 jmp xchain00685_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00685_n30_α:
 jmp qword ptr [rbp + 448]
 xchain00685_n30_β:
 jmp xchain00685_n3_α
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
 xchain00703_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00703_n1_α
 xchain00703_n0_β:
 jmp xchain00703_n2_α
# IR_UNOP
 xchain00703_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00703_n2_α
 cmp eax, 0
 jne xchain00703_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00703_n3_α
 xchain00703_n1_β:
 jmp xchain00703_n2_α
# IR_LIT_INTEGER
 xchain00703_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00703_n4_α
 xchain00703_n2_β:
 jmp proc_setcreate_ω
.Lx00704_0:
 .quad 1
# IR_LIT_STRING
 xchain00703_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00705_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00703_n5_α
 xchain00703_n3_β:
 jmp proc_setcreate_ω
.Lx00705_0:
 .quad .Lx00705_0_s
.Lx00705_0_s:
 .string "set()"
# IR_VAR
 xchain00703_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00703_n6_α
 xchain00703_n4_β:
 jmp proc_setcreate_ω
# IR_RETURN
 xchain00703_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcreate_γ
# IR_TO
 xchain00703_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00706_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00703_n7_α
 xchain00703_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00706_0
 xchain00703_n7_α:
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
 je xchain00703_n6_β
 jmp xchain00703_n6_β
 xchain00703_n7_β:
 jmp xchain00703_n6_β
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
 xchain00707_n0_α:
 mov rdi, 1879052880
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00707_n1_α
 xchain00707_n0_β:
 jmp xchain00707_n3_α
# IR_NULLTEST_VAR
 xchain00707_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00707_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00707_n3_α
 cmp eax, 0
 jne xchain00707_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00707_n2_α
 xchain00707_n1_β:
 jmp xchain00707_n3_α
# IR_LIT_INTEGER
 xchain00707_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00708_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00707_n4_α
 xchain00707_n2_β:
 jmp xchain00707_n3_α
.Lx00708_0:
 .quad 1
# IR_VAR
 xchain00707_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00707_n5_α
 xchain00707_n3_β:
 jmp xchain00707_n6_α
# IR_ASSIGN_VAR
 xchain00707_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00707_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00707_n7_α
 xchain00707_n4_β:
 jmp xchain00707_n3_α
# IR_UNOP
 xchain00707_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00707_n6_α
 cmp eax, 0
 jne xchain00707_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00707_n8_α
 xchain00707_n5_β:
 jmp xchain00707_n6_α
# IR_LIT_INTEGER
 xchain00707_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00709_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00707_n9_α
 xchain00707_n6_β:
 jmp proc_setcopy_ω
.Lx00709_0:
 .quad 1
 xchain00707_n7_α:
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
 je xchain00707_n3_α
 jmp xchain00707_n10_α
 xchain00707_n7_β:
 jmp xchain00707_n3_α
# IR_LIT_STRING
 xchain00707_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00710_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00707_n11_α
 xchain00707_n8_β:
 jmp proc_setcopy_ω
.Lx00710_0:
 .quad .Lx00710_0_s
.Lx00710_0_s:
 .string "copy(S)"
# IR_VAR
 xchain00707_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00707_n12_α
 xchain00707_n9_β:
 jmp proc_setcopy_ω
# IR_ASSIGN gva
 xchain00707_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00707_n13_α
 xchain00707_n10_β:
 jmp xchain00707_n3_α
# IR_RETURN
 xchain00707_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcopy_γ
# IR_TO
 xchain00707_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00711_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00707_n14_α
 xchain00707_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00711_0
# IR_LIT_INTEGER
 xchain00707_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00707_n15_α
 xchain00707_n13_β:
 jmp xchain00707_n3_α
.Lx00712_0:
 .quad 5
# IR_VAR
 xchain00707_n14_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00707_n16_α
 xchain00707_n14_β:
 jmp xchain00707_n12_β
 xchain00707_n15_α:
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
 je xchain00707_n3_α
 jmp xchain00707_n17_α
 xchain00707_n15_β:
 jmp xchain00707_n3_α
 xchain00707_n16_α:
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
 je xchain00707_n12_β
 jmp xchain00707_n12_β
 xchain00707_n16_β:
 jmp xchain00707_n12_β
# IR_MOVE_LABEL
 xchain00707_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00707_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00707_n3_α
 xchain00707_n17_β:
 jmp xchain00707_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00707_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00707_n18_β:
 jmp xchain00707_n3_α
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
 xchain00713_n0_α:
 mov rdi, 1879052912
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00713_n1_α
 xchain00713_n0_β:
 jmp xchain00713_n3_α
# IR_NULLTEST_VAR
 xchain00713_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00713_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00713_n3_α
 cmp eax, 0
 jne xchain00713_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00713_n2_α
 xchain00713_n1_β:
 jmp xchain00713_n3_α
# IR_LIT_INTEGER
 xchain00713_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00714_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00713_n4_α
 xchain00713_n2_β:
 jmp xchain00713_n3_α
.Lx00714_0:
 .quad 1
# IR_VAR
 xchain00713_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00713_n5_α
 xchain00713_n3_β:
 jmp xchain00713_n6_α
# IR_ASSIGN_VAR
 xchain00713_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00713_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00713_n7_α
 xchain00713_n4_β:
 jmp xchain00713_n3_α
# IR_UNOP
 xchain00713_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00713_n6_α
 cmp eax, 0
 jne xchain00713_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00713_n8_α
 xchain00713_n5_β:
 jmp xchain00713_n6_α
# IR_LIT_INTEGER
 xchain00713_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00713_n9_α
 xchain00713_n6_β:
 jmp proc_setinsert_ω
.Lx00715_0:
 .quad 1
 xchain00713_n7_α:
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
 je xchain00713_n3_α
 jmp xchain00713_n10_α
 xchain00713_n7_β:
 jmp xchain00713_n3_α
# IR_LIT_STRING
 xchain00713_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00716_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00713_n11_α
 xchain00713_n8_β:
 jmp proc_setinsert_ω
.Lx00716_0:
 .quad .Lx00716_0_s
.Lx00716_0_s:
 .string "insert(S,5)"
# IR_VAR
 xchain00713_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00713_n12_α
 xchain00713_n9_β:
 jmp proc_setinsert_ω
# IR_ASSIGN gva
 xchain00713_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00713_n13_α
 xchain00713_n10_β:
 jmp xchain00713_n3_α
# IR_RETURN
 xchain00713_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsert_γ
# IR_TO
 xchain00713_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00717_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00713_n14_α
 xchain00713_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00717_0
# IR_LIT_INTEGER
 xchain00713_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00718_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00713_n15_α
 xchain00713_n13_β:
 jmp xchain00713_n3_α
.Lx00718_0:
 .quad 5
# IR_VAR
 xchain00713_n14_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00713_n16_α
 xchain00713_n14_β:
 jmp xchain00713_n12_β
 xchain00713_n15_α:
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
 je xchain00713_n3_α
 jmp xchain00713_n17_α
 xchain00713_n15_β:
 jmp xchain00713_n3_α
# IR_LIT_INTEGER
 xchain00713_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00713_n18_α
 xchain00713_n16_β:
 jmp xchain00713_n12_β
.Lx00719_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00713_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00713_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00713_n3_α
 xchain00713_n17_β:
 jmp xchain00713_n3_α
 xchain00713_n18_α:
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
 je xchain00713_n12_β
 jmp xchain00713_n12_β
 xchain00713_n18_β:
 jmp xchain00713_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00713_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00713_n19_β:
 jmp xchain00713_n3_α
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
 xchain00720_n0_α:
 mov rdi, 1879052944
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00720_n1_α
 xchain00720_n0_β:
 jmp xchain00720_n3_α
# IR_NULLTEST_VAR
 xchain00720_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00720_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00720_n3_α
 cmp eax, 0
 jne xchain00720_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00720_n2_α
 xchain00720_n1_β:
 jmp xchain00720_n3_α
# IR_LIT_INTEGER
 xchain00720_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00720_n4_α
 xchain00720_n2_β:
 jmp xchain00720_n3_α
.Lx00721_0:
 .quad 1
# IR_VAR
 xchain00720_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00720_n5_α
 xchain00720_n3_β:
 jmp xchain00720_n6_α
# IR_ASSIGN_VAR
 xchain00720_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00720_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00720_n7_α
 xchain00720_n4_β:
 jmp xchain00720_n3_α
# IR_UNOP
 xchain00720_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00720_n6_α
 cmp eax, 0
 jne xchain00720_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00720_n8_α
 xchain00720_n5_β:
 jmp xchain00720_n6_α
# IR_LIT_INTEGER
 xchain00720_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00720_n9_α
 xchain00720_n6_β:
 jmp proc_setmember_ω
.Lx00722_0:
 .quad 1
 xchain00720_n7_α:
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
 je xchain00720_n3_α
 jmp xchain00720_n10_α
 xchain00720_n7_β:
 jmp xchain00720_n3_α
# IR_LIT_STRING
 xchain00720_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00723_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00720_n11_α
 xchain00720_n8_β:
 jmp proc_setmember_ω
.Lx00723_0:
 .quad .Lx00723_0_s
.Lx00723_0_s:
 .string "member(S,5)"
# IR_VAR
 xchain00720_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00720_n12_α
 xchain00720_n9_β:
 jmp proc_setmember_ω
# IR_ASSIGN gva
 xchain00720_n10_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052928], rax
 mov qword ptr [1879052936], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00720_n13_α
 xchain00720_n10_β:
 jmp xchain00720_n3_α
# IR_RETURN
 xchain00720_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setmember_γ
# IR_TO
 xchain00720_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00724_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00720_n14_α
 xchain00720_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00724_0
# IR_LIT_INTEGER
 xchain00720_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00720_n15_α
 xchain00720_n13_β:
 jmp xchain00720_n3_α
.Lx00725_0:
 .quad 5
# IR_VAR
 xchain00720_n14_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00720_n16_α
 xchain00720_n14_β:
 jmp xchain00720_n12_β
 xchain00720_n15_α:
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
 je xchain00720_n3_α
 jmp xchain00720_n17_α
 xchain00720_n15_β:
 jmp xchain00720_n3_α
# IR_LIT_INTEGER
 xchain00720_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00720_n18_α
 xchain00720_n16_β:
 jmp xchain00720_n12_β
.Lx00726_0:
 .quad 5
# IR_MOVE_LABEL
 xchain00720_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00720_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00720_n3_α
 xchain00720_n17_β:
 jmp xchain00720_n3_α
 xchain00720_n18_α:
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
 je xchain00720_n12_β
 jmp xchain00720_n12_β
 xchain00720_n18_β:
 jmp xchain00720_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00720_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00720_n19_β:
 jmp xchain00720_n3_α
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
 xchain00727_n0_α:
 mov rdi, 1879052976
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00727_n1_α
 xchain00727_n0_β:
 jmp xchain00727_n3_α
# IR_NULLTEST_VAR
 xchain00727_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00727_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00727_n3_α
 cmp eax, 0
 jne xchain00727_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00727_n2_α
 xchain00727_n1_β:
 jmp xchain00727_n3_α
# IR_LIT_INTEGER
 xchain00727_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00728_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00727_n4_α
 xchain00727_n2_β:
 jmp xchain00727_n3_α
.Lx00728_0:
 .quad 1
# IR_VAR
 xchain00727_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00727_n5_α
 xchain00727_n3_β:
 jmp xchain00727_n6_α
# IR_ASSIGN_VAR
 xchain00727_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00727_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00727_n7_α
 xchain00727_n4_β:
 jmp xchain00727_n3_α
# IR_UNOP
 xchain00727_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00727_n6_α
 cmp eax, 0
 jne xchain00727_n6_α
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00727_n8_α
 xchain00727_n5_β:
 jmp xchain00727_n6_α
# IR_LIT_INTEGER
 xchain00727_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00727_n9_α
 xchain00727_n6_β:
 jmp proc_setinsdel_ω
.Lx00729_0:
 .quad 1
 xchain00727_n7_α:
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
 je xchain00727_n3_α
 jmp xchain00727_n10_α
 xchain00727_n7_β:
 jmp xchain00727_n3_α
# IR_LIT_STRING
 xchain00727_n8_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00730_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00727_n11_α
 xchain00727_n8_β:
 jmp proc_setinsdel_ω
.Lx00730_0:
 .quad .Lx00730_0_s
.Lx00730_0_s:
 .string "insert+delete"
# IR_VAR
 xchain00727_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00727_n12_α
 xchain00727_n9_β:
 jmp proc_setinsdel_ω
# IR_ASSIGN gva
 xchain00727_n10_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00727_n13_α
 xchain00727_n10_β:
 jmp xchain00727_n3_α
# IR_RETURN
 xchain00727_n11_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsdel_γ
# IR_TO
 xchain00727_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00731_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00727_n14_α
 xchain00727_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00731_0
# IR_MOVE_LABEL
 xchain00727_n13_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 lea rax, [rip + xchain00727_n3_α]
 mov qword ptr [rbp + 496], rax
 jmp xchain00727_n3_α
 xchain00727_n13_β:
 jmp xchain00727_n3_α
# IR_VAR
 xchain00727_n14_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00727_n16_α
 xchain00727_n14_β:
 jmp xchain00727_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00727_n15_α:
 jmp qword ptr [rbp + 496]
 xchain00727_n15_β:
 jmp xchain00727_n3_α
# IR_LIT_INTEGER
 xchain00727_n16_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00727_n17_α
 xchain00727_n16_β:
 jmp xchain00727_n12_β
.Lx00732_0:
 .quad 5
 xchain00727_n17_α:
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
 je xchain00727_n12_β
 jmp xchain00727_n18_α
 xchain00727_n17_β:
 jmp xchain00727_n12_β
# IR_LIT_INTEGER
 xchain00727_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00727_n19_α
 xchain00727_n18_β:
 jmp xchain00727_n12_β
.Lx00733_0:
 .quad 5
 xchain00727_n19_α:
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
 je xchain00727_n12_β
 jmp xchain00727_n12_β
 xchain00727_n19_β:
 jmp xchain00727_n12_β
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
 xchain00734_n0_α:
 mov rdi, 1879053008
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00734_n1_α
 xchain00734_n0_β:
 jmp xchain00734_n3_α
# IR_NULLTEST_VAR
 xchain00734_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00734_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00734_n3_α
 cmp eax, 0
 jne xchain00734_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00734_n2_α
 xchain00734_n1_β:
 jmp xchain00734_n3_α
# IR_LIT_INTEGER
 xchain00734_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00734_n4_α
 xchain00734_n2_β:
 jmp xchain00734_n3_α
.Lx00735_0:
 .quad 1
# IR_VAR
 xchain00734_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00734_n5_α
 xchain00734_n3_β:
 jmp xchain00734_n6_α
# IR_ASSIGN_VAR
 xchain00734_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00734_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00734_n7_α
 xchain00734_n4_β:
 jmp xchain00734_n3_α
# IR_UNOP
 xchain00734_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00734_n6_α
 cmp eax, 0
 jne xchain00734_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00734_n8_α
 xchain00734_n5_β:
 jmp xchain00734_n6_α
# IR_LIT_INTEGER
 xchain00734_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00734_n9_α
 xchain00734_n6_β:
 jmp proc_setpick_ω
.Lx00736_0:
 .quad 1
 xchain00734_n7_α:
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
 je xchain00734_n3_α
 jmp xchain00734_n10_α
 xchain00734_n7_β:
 jmp xchain00734_n3_α
# IR_LIT_STRING
 xchain00734_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00737_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00734_n11_α
 xchain00734_n8_β:
 jmp proc_setpick_ω
.Lx00737_0:
 .quad .Lx00737_0_s
.Lx00737_0_s:
 .string "?S"
# IR_VAR
 xchain00734_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00734_n12_α
 xchain00734_n9_β:
 jmp proc_setpick_ω
# IR_ASSIGN gva
 xchain00734_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00734_n13_α
 xchain00734_n10_β:
 jmp xchain00734_n3_α
# IR_RETURN
 xchain00734_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setpick_γ
# IR_TO
 xchain00734_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00738_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00734_n14_α
 xchain00734_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00738_0
# IR_LIT_INTEGER
 xchain00734_n13_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00734_n15_α
 xchain00734_n13_β:
 jmp xchain00734_n3_α
.Lx00739_0:
 .quad 5
# IR_VAR_REF
 xchain00734_n14_α:
 mov rdi, 1879052992
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00734_n16_α
 xchain00734_n14_β:
 jmp xchain00734_n12_β
 xchain00734_n15_α:
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
 je xchain00734_n3_α
 jmp xchain00734_n17_α
 xchain00734_n15_β:
 jmp xchain00734_n3_α
# IR_RANDOM
 xchain00734_n16_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00734_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00734_n18_α
 xchain00734_n16_β:
 jmp xchain00734_n12_β
# IR_MOVE_LABEL
 xchain00734_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00734_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00734_n3_α
 xchain00734_n17_β:
 jmp xchain00734_n3_α
# IR_DEREF variable -> value
 xchain00734_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00734_n12_β
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00734_n12_β
 xchain00734_n18_β:
 jmp xchain00734_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00734_n19_α:
 jmp qword ptr [rbp + 336]
 xchain00734_n19_β:
 jmp xchain00734_n3_α
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
 xchain00740_n0_α:
 mov rdi, 1879053040
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00740_n1_α
 xchain00740_n0_β:
 jmp xchain00740_n3_α
# IR_NULLTEST_VAR
 xchain00740_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00740_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00740_n3_α
 cmp eax, 0
 jne xchain00740_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00740_n2_α
 xchain00740_n1_β:
 jmp xchain00740_n3_α
# IR_LIT_INTEGER
 xchain00740_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00741_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00740_n4_α
 xchain00740_n2_β:
 jmp xchain00740_n3_α
.Lx00741_0:
 .quad 1
# IR_VAR
 xchain00740_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00740_n5_α
 xchain00740_n3_β:
 jmp xchain00740_n6_α
# IR_ASSIGN_VAR
 xchain00740_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00740_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00740_n7_α
 xchain00740_n4_β:
 jmp xchain00740_n3_α
# IR_UNOP
 xchain00740_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00740_n6_α
 cmp eax, 0
 jne xchain00740_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00740_n8_α
 xchain00740_n5_β:
 jmp xchain00740_n6_α
# IR_LIT_INTEGER
 xchain00740_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00740_n9_α
 xchain00740_n6_β:
 jmp proc_setbang_ω
.Lx00742_0:
 .quad 1
 xchain00740_n7_α:
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
 je xchain00740_n3_α
 jmp xchain00740_n10_α
 xchain00740_n7_β:
 jmp xchain00740_n3_α
# IR_LIT_STRING
 xchain00740_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00743_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00740_n11_α
 xchain00740_n8_β:
 jmp proc_setbang_ω
.Lx00743_0:
 .quad .Lx00743_0_s
.Lx00743_0_s:
 .string "!S"
# IR_VAR
 xchain00740_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00740_n12_α
 xchain00740_n9_β:
 jmp proc_setbang_ω
# IR_ASSIGN gva
 xchain00740_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00740_n13_α
 xchain00740_n10_β:
 jmp xchain00740_n3_α
# IR_RETURN
 xchain00740_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setbang_γ
# IR_TO
 xchain00740_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00744_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00740_n14_α
 xchain00740_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00744_0
# IR_LIT_INTEGER
 xchain00740_n13_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00745_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00740_n15_α
 xchain00740_n13_β:
 jmp xchain00740_n3_α
.Lx00745_0:
 .quad 1
# IR_VAR
 xchain00740_n14_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00740_n16_α
 xchain00740_n14_β:
 jmp xchain00740_n12_β
# IR_LIT_INTEGER
 xchain00740_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00746_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00740_n17_α
 xchain00740_n15_β:
 jmp xchain00740_n3_α
.Lx00746_0:
 .quad 5
# IR_LIST_BANG
 xchain00740_n16_α:
 mov qword ptr [rbp + 144], 0
.Lx00747_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je xchain00740_n12_β
 jmp xchain00740_n16_β
 xchain00740_n16_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00747_0
# IR_TO
 xchain00740_n17_α:
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 480], rax
.Lx00748_0:
 mov rax, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 536]
 cmp rax, rcx
 jg xchain00740_n3_α
 mov qword ptr [rbp + 464], 6
 mov qword ptr [rbp + 472], rax
 jmp xchain00740_n18_α
 xchain00740_n17_β:
 inc qword ptr [rbp + 480]
 jmp .Lx00748_0
 xchain00740_n18_α:
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
 je xchain00740_n3_α
 jmp xchain00740_n17_β
 xchain00740_n18_β:
 jmp xchain00740_n3_α
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
 xchain00749_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00749_n1_α
 xchain00749_n0_β:
 jmp xchain00749_n2_α
# IR_UNOP
 xchain00749_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00749_n2_α
 cmp eax, 0
 jne xchain00749_n2_α
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 jmp xchain00749_n3_α
 xchain00749_n1_β:
 jmp xchain00749_n2_α
# IR_LIT_INTEGER
 xchain00749_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00750_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00749_n4_α
 xchain00749_n2_β:
 jmp proc_tblcreate_ω
.Lx00750_0:
 .quad 1
# IR_LIT_STRING
 xchain00749_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00749_n5_α
 xchain00749_n3_β:
 jmp proc_tblcreate_ω
.Lx00751_0:
 .quad .Lx00751_0_s
.Lx00751_0_s:
 .string "table()"
# IR_VAR
 xchain00749_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00749_n6_α
 xchain00749_n4_β:
 jmp proc_tblcreate_ω
# IR_RETURN
 xchain00749_n5_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblcreate_γ
# IR_TO
 xchain00749_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00752_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00749_n7_α
 xchain00749_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00752_0
 xchain00749_n7_α:
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
 je xchain00749_n6_β
 jmp xchain00749_n6_β
 xchain00749_n7_β:
 jmp xchain00749_n6_β
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
 xchain00753_n0_α:
 mov rdi, 1879053072
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00753_n1_α
 xchain00753_n0_β:
 jmp xchain00753_n3_α
# IR_NULLTEST_VAR
 xchain00753_n1_α:
 mov eax, dword ptr [rbp + 592]
 cmp eax, 99
 je xchain00753_n3_α
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00753_n3_α
 cmp eax, 0
 jne xchain00753_n3_α
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 632], rax
 jmp xchain00753_n2_α
 xchain00753_n1_β:
 jmp xchain00753_n3_α
# IR_LIT_INTEGER
 xchain00753_n2_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx00754_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00753_n4_α
 xchain00753_n2_β:
 jmp xchain00753_n3_α
.Lx00754_0:
 .quad 1
# IR_VAR
 xchain00753_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00753_n5_α
 xchain00753_n3_β:
 jmp xchain00753_n6_α
# IR_ASSIGN_VAR
 xchain00753_n4_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00753_n3_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00753_n7_α
 xchain00753_n4_β:
 jmp xchain00753_n3_α
# IR_UNOP
 xchain00753_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00753_n6_α
 cmp eax, 0
 jne xchain00753_n6_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00753_n8_α
 xchain00753_n5_β:
 jmp xchain00753_n6_α
# IR_LIT_INTEGER
 xchain00753_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00753_n9_α
 xchain00753_n6_β:
 jmp proc_tblasgn_ω
.Lx00755_0:
 .quad 1
 xchain00753_n7_α:
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
 je xchain00753_n3_α
 jmp xchain00753_n10_α
 xchain00753_n7_β:
 jmp xchain00753_n3_α
# IR_LIT_STRING
 xchain00753_n8_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00756_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00753_n11_α
 xchain00753_n8_β:
 jmp proc_tblasgn_ω
.Lx00756_0:
 .quad .Lx00756_0_s
.Lx00756_0_s:
 .string "T[5] := 1"
# IR_VAR
 xchain00753_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00753_n12_α
 xchain00753_n9_β:
 jmp proc_tblasgn_ω
# IR_ASSIGN gva
 xchain00753_n10_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00753_n13_α
 xchain00753_n10_β:
 jmp xchain00753_n3_α
# IR_RETURN
 xchain00753_n11_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblasgn_γ
# IR_TO
 xchain00753_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00757_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00753_n14_α
 xchain00753_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00757_0
# IR_LIT_INTEGER
 xchain00753_n13_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00758_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00753_n15_α
 xchain00753_n13_β:
 jmp xchain00753_n3_α
.Lx00758_0:
 .quad 5
# IR_VAR_REF
 xchain00753_n14_α:
 mov rdi, 1879053056
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00753_n16_α
 xchain00753_n14_β:
 jmp xchain00753_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00753_n15_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00753_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00753_n17_α
 xchain00753_n15_β:
 jmp xchain00753_n3_α
# IR_LIT_INTEGER
 xchain00753_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00759_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00753_n18_α
 xchain00753_n16_β:
 jmp xchain00753_n12_β
.Lx00759_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00753_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00753_n19_α
 xchain00753_n17_β:
 jmp xchain00753_n3_α
.Lx00760_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00753_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00753_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00753_n20_α
 xchain00753_n18_β:
 jmp xchain00753_n12_β
# IR_ASSIGN_VAR
 xchain00753_n19_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00753_n3_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00753_n21_α
 xchain00753_n19_β:
 jmp xchain00753_n3_α
# IR_LIT_INTEGER
 xchain00753_n20_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00753_n22_α
 xchain00753_n20_β:
 jmp xchain00753_n12_β
.Lx00761_0:
 .quad 1
# IR_MOVE_LABEL
 xchain00753_n21_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + xchain00753_n3_α]
 mov qword ptr [rbp + 416], rax
 jmp xchain00753_n3_α
 xchain00753_n21_β:
 jmp xchain00753_n3_α
# IR_ASSIGN_VAR
 xchain00753_n22_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00753_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00753_n12_β
 xchain00753_n22_β:
 jmp xchain00753_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00753_n23_α:
 jmp qword ptr [rbp + 416]
 xchain00753_n23_β:
 jmp xchain00753_n3_α
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
 xchain00762_n0_α:
 mov rdi, 1879053104
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00762_n1_α
 xchain00762_n0_β:
 jmp xchain00762_n3_α
# IR_NULLTEST_VAR
 xchain00762_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00762_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00762_n3_α
 cmp eax, 0
 jne xchain00762_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00762_n2_α
 xchain00762_n1_β:
 jmp xchain00762_n3_α
# IR_LIT_INTEGER
 xchain00762_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00762_n4_α
 xchain00762_n2_β:
 jmp xchain00762_n3_α
.Lx00763_0:
 .quad 1
# IR_VAR
 xchain00762_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00762_n5_α
 xchain00762_n3_β:
 jmp xchain00762_n6_α
# IR_ASSIGN_VAR
 xchain00762_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00762_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00762_n7_α
 xchain00762_n4_β:
 jmp xchain00762_n3_α
# IR_UNOP
 xchain00762_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00762_n6_α
 cmp eax, 0
 jne xchain00762_n6_α
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00762_n8_α
 xchain00762_n5_β:
 jmp xchain00762_n6_α
# IR_LIT_INTEGER
 xchain00762_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00762_n9_α
 xchain00762_n6_β:
 jmp proc_tblsub_ω
.Lx00764_0:
 .quad 1
 xchain00762_n7_α:
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
 je xchain00762_n3_α
 jmp xchain00762_n10_α
 xchain00762_n7_β:
 jmp xchain00762_n3_α
# IR_LIT_STRING
 xchain00762_n8_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00762_n11_α
 xchain00762_n8_β:
 jmp proc_tblsub_ω
.Lx00765_0:
 .quad .Lx00765_0_s
.Lx00765_0_s:
 .string "T[5]"
# IR_VAR
 xchain00762_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00762_n12_α
 xchain00762_n9_β:
 jmp proc_tblsub_ω
# IR_ASSIGN gva
 xchain00762_n10_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00762_n13_α
 xchain00762_n10_β:
 jmp xchain00762_n3_α
# IR_RETURN
 xchain00762_n11_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblsub_γ
# IR_TO
 xchain00762_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00766_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00762_n14_α
 xchain00762_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00766_0
# IR_LIT_INTEGER
 xchain00762_n13_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00762_n15_α
 xchain00762_n13_β:
 jmp xchain00762_n3_α
.Lx00767_0:
 .quad 5
# IR_VAR_REF
 xchain00762_n14_α:
 mov rdi, 1879053088
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00762_n16_α
 xchain00762_n14_β:
 jmp xchain00762_n12_β
# IR_SUBSCRIPT x[i] variable
 xchain00762_n15_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00762_n3_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00762_n17_α
 xchain00762_n15_β:
 jmp xchain00762_n3_α
# IR_LIT_INTEGER
 xchain00762_n16_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00768_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00762_n18_α
 xchain00762_n16_β:
 jmp xchain00762_n12_β
.Lx00768_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00762_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00769_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00762_n19_α
 xchain00762_n17_β:
 jmp xchain00762_n3_α
.Lx00769_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00762_n18_α:
 mov rdi, qword ptr [rbp + 128]
 mov rsi, qword ptr [rbp + 136]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00762_n12_β
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00762_n20_α
 xchain00762_n18_β:
 jmp xchain00762_n12_β
# IR_ASSIGN_VAR
 xchain00762_n19_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00762_n3_α
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00762_n21_α
 xchain00762_n19_β:
 jmp xchain00762_n3_α
# IR_DEREF variable -> value
 xchain00762_n20_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00762_n12_β
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00762_n12_β
 xchain00762_n20_β:
 jmp xchain00762_n12_β
# IR_MOVE_LABEL
 xchain00762_n21_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + xchain00762_n3_α]
 mov qword ptr [rbp + 384], rax
 jmp xchain00762_n3_α
 xchain00762_n21_β:
 jmp xchain00762_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00762_n22_α:
 jmp qword ptr [rbp + 384]
 xchain00762_n22_β:
 jmp xchain00762_n3_α
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
 xchain00770_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00770_n1_α
 xchain00770_n0_β:
 jmp xchain00770_n2_α
# IR_UNOP
 xchain00770_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00770_n2_α
 cmp eax, 0
 jne xchain00770_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00770_n3_α
 xchain00770_n1_β:
 jmp xchain00770_n2_α
# IR_LIT_INTEGER
 xchain00770_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00770_n4_α
 xchain00770_n2_β:
 jmp proc_recconstr_ω
.Lx00771_0:
 .quad 1
# IR_LIT_STRING
 xchain00770_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00772_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00770_n5_α
 xchain00770_n3_β:
 jmp proc_recconstr_ω
.Lx00772_0:
 .quad .Lx00772_0_s
.Lx00772_0_s:
 .string "record(4,7)"
# IR_VAR
 xchain00770_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00770_n6_α
 xchain00770_n4_β:
 jmp proc_recconstr_ω
# IR_RETURN
 xchain00770_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recconstr_γ
# IR_TO
 xchain00770_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00773_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00770_n7_α
 xchain00770_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00773_0
# IR_LIT_INTEGER
 xchain00770_n7_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00770_n8_α
 xchain00770_n7_β:
 jmp xchain00770_n6_β
.Lx00774_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00770_n8_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00770_n9_α
 xchain00770_n8_β:
 jmp xchain00770_n6_β
.Lx00775_0:
 .quad 7
 xchain00770_n9_α:
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
 je xchain00770_n6_β
 jmp xchain00770_n6_β
 xchain00770_n9_β:
 jmp xchain00770_n6_β
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
 xchain00776_n0_α:
 mov rdi, 1879053136
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00776_n1_α
 xchain00776_n0_β:
 jmp xchain00776_n3_α
# IR_NULLTEST_VAR
 xchain00776_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00776_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00776_n3_α
 cmp eax, 0
 jne xchain00776_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00776_n2_α
 xchain00776_n1_β:
 jmp xchain00776_n3_α
# IR_LIT_INTEGER
 xchain00776_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00776_n4_α
 xchain00776_n2_β:
 jmp xchain00776_n3_α
.Lx00777_0:
 .quad 1
# IR_VAR
 xchain00776_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00776_n5_α
 xchain00776_n3_β:
 jmp xchain00776_n6_α
# IR_ASSIGN_VAR
 xchain00776_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00776_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00776_n7_α
 xchain00776_n4_β:
 jmp xchain00776_n3_α
# IR_UNOP
 xchain00776_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00776_n6_α
 cmp eax, 0
 jne xchain00776_n6_α
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00776_n8_α
 xchain00776_n5_β:
 jmp xchain00776_n6_α
# IR_LIT_INTEGER
 xchain00776_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00776_n9_α
 xchain00776_n6_β:
 jmp proc_reccopy_ω
.Lx00778_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00776_n7_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00779_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00776_n10_α
 xchain00776_n7_β:
 jmp xchain00776_n3_α
.Lx00779_0:
 .quad 4
# IR_LIT_STRING
 xchain00776_n8_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00776_n11_α
 xchain00776_n8_β:
 jmp proc_reccopy_ω
.Lx00780_0:
 .quad .Lx00780_0_s
.Lx00780_0_s:
 .string "copy(R)"
# IR_VAR
 xchain00776_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00776_n12_α
 xchain00776_n9_β:
 jmp proc_reccopy_ω
# IR_LIT_INTEGER
 xchain00776_n10_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00781_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00776_n13_α
 xchain00776_n10_β:
 jmp xchain00776_n3_α
.Lx00781_0:
 .quad 7
# IR_RETURN
 xchain00776_n11_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reccopy_γ
# IR_TO
 xchain00776_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00782_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00776_n14_α
 xchain00776_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00782_0
 xchain00776_n13_α:
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
 je xchain00776_n3_α
 jmp xchain00776_n15_α
 xchain00776_n13_β:
 jmp xchain00776_n3_α
# IR_VAR
 xchain00776_n14_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00776_n16_α
 xchain00776_n14_β:
 jmp xchain00776_n12_β
# IR_ASSIGN gva
 xchain00776_n15_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00776_n17_α
 xchain00776_n15_β:
 jmp xchain00776_n3_α
 xchain00776_n16_α:
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
 je xchain00776_n12_β
 jmp xchain00776_n12_β
 xchain00776_n16_β:
 jmp xchain00776_n12_β
# IR_MOVE_LABEL
 xchain00776_n17_α:
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
 lea rax, [rip + xchain00776_n3_α]
 mov qword ptr [rbp + 352], rax
 jmp xchain00776_n3_α
 xchain00776_n17_β:
 jmp xchain00776_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00776_n18_α:
 jmp qword ptr [rbp + 352]
 xchain00776_n18_β:
 jmp xchain00776_n3_α
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
 xchain00783_n0_α:
 mov rdi, 1879053168
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00783_n1_α
 xchain00783_n0_β:
 jmp xchain00783_n3_α
# IR_NULLTEST_VAR
 xchain00783_n1_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 99
 je xchain00783_n3_α
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00783_n3_α
 cmp eax, 0
 jne xchain00783_n3_α
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 536], rax
 jmp xchain00783_n2_α
 xchain00783_n1_β:
 jmp xchain00783_n3_α
# IR_LIT_INTEGER
 xchain00783_n2_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00783_n4_α
 xchain00783_n2_β:
 jmp xchain00783_n3_α
.Lx00784_0:
 .quad 1
# IR_VAR
 xchain00783_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00783_n5_α
 xchain00783_n3_β:
 jmp xchain00783_n6_α
# IR_ASSIGN_VAR
 xchain00783_n4_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00783_n3_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00783_n7_α
 xchain00783_n4_β:
 jmp xchain00783_n3_α
# IR_UNOP
 xchain00783_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00783_n6_α
 cmp eax, 0
 jne xchain00783_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00783_n8_α
 xchain00783_n5_β:
 jmp xchain00783_n6_α
# IR_LIT_INTEGER
 xchain00783_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00785_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00783_n9_α
 xchain00783_n6_β:
 jmp proc_recfield_ω
.Lx00785_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00783_n7_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00786_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00783_n10_α
 xchain00783_n7_β:
 jmp xchain00783_n3_α
.Lx00786_0:
 .quad 4
# IR_LIT_STRING
 xchain00783_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00787_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00783_n11_α
 xchain00783_n8_β:
 jmp proc_recfield_ω
.Lx00787_0:
 .quad .Lx00787_0_s
.Lx00787_0_s:
 .string "R.f"
# IR_VAR
 xchain00783_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00783_n12_α
 xchain00783_n9_β:
 jmp proc_recfield_ω
# IR_LIT_INTEGER
 xchain00783_n10_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00783_n13_α
 xchain00783_n10_β:
 jmp xchain00783_n3_α
.Lx00788_0:
 .quad 7
# IR_RETURN
 xchain00783_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recfield_γ
# IR_TO
 xchain00783_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00789_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00783_n14_α
 xchain00783_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00789_0
 xchain00783_n13_α:
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
 je xchain00783_n3_α
 jmp xchain00783_n15_α
 xchain00783_n13_β:
 jmp xchain00783_n3_α
# IR_VAR
 xchain00783_n14_α:
 mov rax, qword ptr [1879053152]
 mov rdx, qword ptr [1879053160]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00783_n16_α
 xchain00783_n14_β:
 jmp xchain00783_n12_β
# IR_ASSIGN gva
 xchain00783_n15_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00783_n17_α
 xchain00783_n15_β:
 jmp xchain00783_n3_α
# IR_FIELD_GET
 xchain00783_n16_α:
 mov rdi, qword ptr [rip + .Lx00790_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00783_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00783_n12_β
 xchain00783_n16_β:
 jmp xchain00783_n12_β
.Lx00790_0:
 .quad .Lx00790_0_s
.Lx00790_0_s:
 .string "y"
# IR_MOVE_LABEL
 xchain00783_n17_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00783_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00783_n3_α
 xchain00783_n17_β:
 jmp xchain00783_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00783_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00783_n18_β:
 jmp xchain00783_n3_α
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
 xchain00791_n0_α:
 mov rdi, 1879053200
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00791_n1_α
 xchain00791_n0_β:
 jmp xchain00791_n3_α
# IR_NULLTEST_VAR
 xchain00791_n1_α:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 99
 je xchain00791_n3_α
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00791_n3_α
 cmp eax, 0
 jne xchain00791_n3_α
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 440], rax
 jmp xchain00791_n2_α
 xchain00791_n1_β:
 jmp xchain00791_n3_α
# IR_LIT_INTEGER
 xchain00791_n2_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00792_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00791_n4_α
 xchain00791_n2_β:
 jmp xchain00791_n3_α
.Lx00792_0:
 .quad 1
# IR_VAR
 xchain00791_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00791_n5_α
 xchain00791_n3_β:
 jmp xchain00791_n6_α
# IR_ASSIGN_VAR
 xchain00791_n4_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00791_n3_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00791_n7_α
 xchain00791_n4_β:
 jmp xchain00791_n3_α
# IR_UNOP
 xchain00791_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00791_n6_α
 cmp eax, 0
 jne xchain00791_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00791_n8_α
 xchain00791_n5_β:
 jmp xchain00791_n6_α
# IR_LIT_INTEGER
 xchain00791_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00791_n9_α
 xchain00791_n6_β:
 jmp proc_bigfield_ω
.Lx00793_0:
 .quad 1
 xchain00791_n7_α:
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
 je xchain00791_n3_α
 jmp xchain00791_n10_α
 xchain00791_n7_β:
 jmp xchain00791_n3_α
# IR_LIT_STRING
 xchain00791_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00794_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00791_n11_α
 xchain00791_n8_β:
 jmp proc_bigfield_ω
.Lx00794_0:
 .quad .Lx00794_0_s
.Lx00794_0_s:
 .string "R2.f"
# IR_VAR
 xchain00791_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00791_n12_α
 xchain00791_n9_β:
 jmp proc_bigfield_ω
# IR_ASSIGN gva
 xchain00791_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00791_n13_α
 xchain00791_n10_β:
 jmp xchain00791_n3_α
# IR_RETURN
 xchain00791_n11_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_bigfield_γ
# IR_TO
 xchain00791_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00795_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00791_n14_α
 xchain00791_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00795_0
# IR_MOVE_LABEL
 xchain00791_n13_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00791_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00791_n3_α
 xchain00791_n13_β:
 jmp xchain00791_n3_α
# IR_VAR
 xchain00791_n14_α:
 mov rax, qword ptr [1879053184]
 mov rdx, qword ptr [1879053192]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00791_n16_α
 xchain00791_n14_β:
 jmp xchain00791_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00791_n15_α:
 jmp qword ptr [rbp + 336]
 xchain00791_n15_β:
 jmp xchain00791_n3_α
# IR_FIELD_GET
 xchain00791_n16_α:
 mov rdi, qword ptr [rip + .Lx00796_0]
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00791_n12_β
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00791_n12_β
 xchain00791_n16_β:
 jmp xchain00791_n12_β
.Lx00796_0:
 .quad .Lx00796_0_s
.Lx00796_0_s:
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
 xchain00797_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00797_n1_α
 xchain00797_n0_β:
 jmp xchain00797_n2_α
# IR_UNOP
 xchain00797_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00797_n2_α
 cmp eax, 0
 jne xchain00797_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00797_n3_α
 xchain00797_n1_β:
 jmp xchain00797_n2_α
# IR_LIT_INTEGER
 xchain00797_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00797_n4_α
 xchain00797_n2_β:
 jmp proc_globasgn_ω
.Lx00798_0:
 .quad 1
# IR_LIT_STRING
 xchain00797_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00799_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00797_n5_α
 xchain00797_n3_β:
 jmp proc_globasgn_ω
.Lx00799_0:
 .quad .Lx00799_0_s
.Lx00799_0_s:
 .string "global := 1"
# IR_VAR
 xchain00797_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00797_n6_α
 xchain00797_n4_β:
 jmp proc_globasgn_ω
# IR_RETURN
 xchain00797_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_globasgn_γ
# IR_TO
 xchain00797_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00800_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00797_n7_α
 xchain00797_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00800_0
# IR_LIT_INTEGER
 xchain00797_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00801_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00797_n8_α
 xchain00797_n7_β:
 jmp xchain00797_n6_β
.Lx00801_0:
 .quad 1
# IR_ASSIGN gva
 xchain00797_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00797_n6_β
 xchain00797_n8_β:
 jmp xchain00797_n6_β
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
 xchain00802_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00802_n1_α
 xchain00802_n0_β:
 jmp xchain00802_n2_α
# IR_UNOP
 xchain00802_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00802_n2_α
 cmp eax, 0
 jne xchain00802_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00802_n3_α
 xchain00802_n1_β:
 jmp xchain00802_n2_α
# IR_LIT_INTEGER
 xchain00802_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00803_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00802_n4_α
 xchain00802_n2_β:
 jmp proc_loclasgn_ω
.Lx00803_0:
 .quad 1
# IR_LIT_STRING
 xchain00802_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00804_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00802_n5_α
 xchain00802_n3_β:
 jmp proc_loclasgn_ω
.Lx00804_0:
 .quad .Lx00804_0_s
.Lx00804_0_s:
 .string "local := 1"
# IR_VAR
 xchain00802_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00802_n6_α
 xchain00802_n4_β:
 jmp proc_loclasgn_ω
# IR_RETURN
 xchain00802_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_loclasgn_γ
# IR_TO
 xchain00802_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00805_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00802_n7_α
 xchain00802_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00805_0
# IR_LIT_INTEGER
 xchain00802_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00802_n8_α
 xchain00802_n7_β:
 jmp xchain00802_n6_β
.Lx00806_0:
 .quad 1
 xchain00802_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00802_n6_β
 xchain00802_n8_β:
 jmp xchain00802_n6_β
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
 xchain00807_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00807_n1_α
 xchain00807_n0_β:
 jmp xchain00807_n2_α
# IR_UNOP
 xchain00807_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00807_n2_α
 cmp eax, 0
 jne xchain00807_n2_α
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00807_n3_α
 xchain00807_n1_β:
 jmp xchain00807_n2_α
# IR_LIT_INTEGER
 xchain00807_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00808_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00807_n4_α
 xchain00807_n2_β:
 jmp proc_statasgn_ω
.Lx00808_0:
 .quad 1
# IR_LIT_STRING
 xchain00807_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00809_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00807_n5_α
 xchain00807_n3_β:
 jmp proc_statasgn_ω
.Lx00809_0:
 .quad .Lx00809_0_s
.Lx00809_0_s:
 .string "static := 1"
# IR_VAR
 xchain00807_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00807_n6_α
 xchain00807_n4_β:
 jmp proc_statasgn_ω
# IR_RETURN
 xchain00807_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_statasgn_γ
# IR_TO
 xchain00807_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00810_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00807_n7_α
 xchain00807_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00810_0
# IR_LIT_INTEGER
 xchain00807_n7_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00811_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00807_n8_α
 xchain00807_n7_β:
 jmp xchain00807_n6_β
.Lx00811_0:
 .quad 1
# IR_ASSIGN gva
 xchain00807_n8_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00807_n6_β
 xchain00807_n8_β:
 jmp xchain00807_n6_β
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
 xchain00812_n0_α:
 mov rdi, 1879053248
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00812_n1_α
 xchain00812_n0_β:
 jmp xchain00812_n3_α
# IR_NULLTEST_VAR
 xchain00812_n1_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00812_n3_α
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00812_n3_α
 cmp eax, 0
 jne xchain00812_n3_α
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00812_n2_α
 xchain00812_n1_β:
 jmp xchain00812_n3_α
# IR_LIT_INTEGER
 xchain00812_n2_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00812_n4_α
 xchain00812_n2_β:
 jmp xchain00812_n3_α
.Lx00813_0:
 .quad 1
# IR_VAR
 xchain00812_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00812_n5_α
 xchain00812_n3_β:
 jmp xchain00812_n6_α
# IR_ASSIGN_VAR
 xchain00812_n4_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00812_n3_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00812_n7_α
 xchain00812_n4_β:
 jmp xchain00812_n3_α
# IR_UNOP
 xchain00812_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00812_n6_α
 cmp eax, 0
 jne xchain00812_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00812_n8_α
 xchain00812_n5_β:
 jmp xchain00812_n6_α
# IR_LIT_INTEGER
 xchain00812_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00814_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00812_n9_α
 xchain00812_n6_β:
 jmp proc_readz_ω
.Lx00814_0:
 .quad 1
# IR_LIT_STRING
 xchain00812_n7_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00815_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00812_n10_α
 xchain00812_n7_β:
 jmp xchain00812_n3_α
.Lx00815_0:
 .quad .Lx00815_0_s
.Lx00815_0_s:
 .string "/dev/zero"
# IR_LIT_STRING
 xchain00812_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00816_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00812_n11_α
 xchain00812_n8_β:
 jmp proc_readz_ω
.Lx00816_0:
 .quad .Lx00816_0_s
.Lx00816_0_s:
 .string "reads(zero,8)"
# IR_VAR
 xchain00812_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00812_n12_α
 xchain00812_n9_β:
 jmp proc_readz_ω
# IR_LIT_STRING
 xchain00812_n10_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00817_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00812_n13_α
 xchain00812_n10_β:
 jmp xchain00812_n3_α
.Lx00817_0:
 .quad .Lx00817_0_s
.Lx00817_0_s:
 .string "ru"
# IR_RETURN
 xchain00812_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_readz_γ
# IR_TO
 xchain00812_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00818_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00812_n14_α
 xchain00812_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00818_0
 xchain00812_n13_α:
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
 je xchain00812_n3_α
 jmp xchain00812_n15_α
 xchain00812_n13_β:
 jmp xchain00812_n3_α
# IR_VAR
 xchain00812_n14_α:
 mov rax, qword ptr [1879053232]
 mov rdx, qword ptr [1879053240]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00812_n16_α
 xchain00812_n14_β:
 jmp xchain00812_n12_β
# IR_ASSIGN gva
 xchain00812_n15_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00812_n17_α
 xchain00812_n15_β:
 jmp xchain00812_n3_α
# IR_LIT_INTEGER
 xchain00812_n16_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00819_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00812_n18_α
 xchain00812_n16_β:
 jmp xchain00812_n12_β
.Lx00819_0:
 .quad 8
# IR_MOVE_LABEL
 xchain00812_n17_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00812_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00812_n3_α
 xchain00812_n17_β:
 jmp xchain00812_n3_α
 xchain00812_n18_α:
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
 je xchain00812_n12_β
 jmp xchain00812_n12_β
 xchain00812_n18_β:
 jmp xchain00812_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00812_n19_α:
 jmp qword ptr [rbp + 400]
 xchain00812_n19_β:
 jmp xchain00812_n3_α
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
 xchain00820_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00820_n1_α
 xchain00820_n0_β:
 jmp xchain00820_n2_α
# IR_UNOP
 xchain00820_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00820_n2_α
 cmp eax, 0
 jne xchain00820_n2_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00820_n3_α
 xchain00820_n1_β:
 jmp xchain00820_n2_α
# IR_LIT_INTEGER
 xchain00820_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00821_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00820_n4_α
 xchain00820_n2_β:
 jmp proc_writecon_ω
.Lx00821_0:
 .quad 1
# IR_LIT_STRING
 xchain00820_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00822_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00820_n5_α
 xchain00820_n3_β:
 jmp proc_writecon_ω
.Lx00822_0:
 .quad .Lx00822_0_s
.Lx00822_0_s:
 .string "write(\"a...z\")"
# IR_VAR
 xchain00820_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00820_n6_α
 xchain00820_n4_β:
 jmp proc_writecon_ω
# IR_RETURN
 xchain00820_n5_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writecon_γ
# IR_TO
 xchain00820_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00823_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00820_n7_α
 xchain00820_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00823_0
# IR_VAR
 xchain00820_n7_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00820_n8_α
 xchain00820_n7_β:
 jmp xchain00820_n6_β
# IR_LIT_STRING
 xchain00820_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00820_n9_α
 xchain00820_n8_β:
 jmp xchain00820_n6_β
.Lx00824_0:
 .quad .Lx00824_0_s
.Lx00824_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00820_n9_α:
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
 je xchain00820_n6_β
 jmp xchain00820_n6_β
 xchain00820_n9_β:
 jmp xchain00820_n6_β
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
 xchain00825_n0_α:
 mov rdi, 1879053280
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00825_n1_α
 xchain00825_n0_β:
 jmp xchain00825_n3_α
# IR_NULLTEST_VAR
 xchain00825_n1_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 99
 je xchain00825_n3_α
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00825_n3_α
 cmp eax, 0
 jne xchain00825_n3_α
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 504], rax
 jmp xchain00825_n2_α
 xchain00825_n1_β:
 jmp xchain00825_n3_α
# IR_LIT_INTEGER
 xchain00825_n2_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00826_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00825_n4_α
 xchain00825_n2_β:
 jmp xchain00825_n3_α
.Lx00826_0:
 .quad 1
# IR_VAR
 xchain00825_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00825_n5_α
 xchain00825_n3_β:
 jmp xchain00825_n6_α
# IR_ASSIGN_VAR
 xchain00825_n4_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00825_n3_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00825_n7_α
 xchain00825_n4_β:
 jmp xchain00825_n3_α
# IR_UNOP
 xchain00825_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00825_n6_α
 cmp eax, 0
 jne xchain00825_n6_α
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00825_n8_α
 xchain00825_n5_β:
 jmp xchain00825_n6_α
# IR_LIT_INTEGER
 xchain00825_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00827_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00825_n9_α
 xchain00825_n6_β:
 jmp proc_writestr_ω
.Lx00827_0:
 .quad 1
# IR_LIT_STRING
 xchain00825_n7_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00828_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00825_n10_α
 xchain00825_n7_β:
 jmp xchain00825_n3_α
.Lx00828_0:
 .quad .Lx00828_0_s
.Lx00828_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00825_n8_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00829_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00825_n11_α
 xchain00825_n8_β:
 jmp proc_writestr_ω
.Lx00829_0:
 .quad .Lx00829_0_s
.Lx00829_0_s:
 .string "write(s)"
# IR_VAR
 xchain00825_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00825_n12_α
 xchain00825_n9_β:
 jmp proc_writestr_ω
# IR_ASSIGN gva
 xchain00825_n10_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00825_n13_α
 xchain00825_n10_β:
 jmp xchain00825_n3_α
# IR_RETURN
 xchain00825_n11_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writestr_γ
# IR_TO
 xchain00825_n12_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00830_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00825_n14_α
 xchain00825_n12_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00830_0
# IR_MOVE_LABEL
 xchain00825_n13_α:
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + xchain00825_n3_α]
 mov qword ptr [rbp + 400], rax
 jmp xchain00825_n3_α
 xchain00825_n13_β:
 jmp xchain00825_n3_α
# IR_VAR
 xchain00825_n14_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00825_n16_α
 xchain00825_n14_β:
 jmp xchain00825_n12_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00825_n15_α:
 jmp qword ptr [rbp + 400]
 xchain00825_n15_β:
 jmp xchain00825_n3_α
# IR_VAR
 xchain00825_n16_α:
 mov rax, qword ptr [1879053264]
 mov rdx, qword ptr [1879053272]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00825_n17_α
 xchain00825_n16_β:
 jmp xchain00825_n12_β
 xchain00825_n17_α:
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
 je xchain00825_n12_β
 jmp xchain00825_n12_β
 xchain00825_n17_β:
 jmp xchain00825_n12_β
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
 xchain00831_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00831_n1_α
 xchain00831_n0_β:
 jmp xchain00831_n2_α
# IR_UNOP
 xchain00831_n1_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00831_n2_α
 cmp eax, 0
 jne xchain00831_n2_α
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00831_n3_α
 xchain00831_n1_β:
 jmp xchain00831_n2_α
# IR_LIT_INTEGER
 xchain00831_n2_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00832_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00831_n4_α
 xchain00831_n2_β:
 jmp proc_cxcreate_ω
.Lx00832_0:
 .quad 1
# IR_LIT_STRING
 xchain00831_n3_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00833_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00831_n5_α
 xchain00831_n3_β:
 jmp proc_cxcreate_ω
.Lx00833_0:
 .quad .Lx00833_0_s
.Lx00833_0_s:
 .string "create |\"a\""
# IR_VAR
 xchain00831_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00831_n6_α
 xchain00831_n4_β:
 jmp proc_cxcreate_ω
# IR_RETURN
 xchain00831_n5_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxcreate_γ
# IR_TO
 xchain00831_n6_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00834_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00831_n7_α
 xchain00831_n6_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00834_0
# IR_CREATE
 xchain00831_n7_α:
 mov qword ptr [rsp + 144], r12
 mov qword ptr [rsp + 152], r13
 mov qword ptr [rsp + 160], r14
 mov qword ptr [rsp + 168], r15
 mov qword ptr [rsp + 176], rbx
 mov qword ptr [rsp + 184], rbp
 lea rdi, [rip + xchain00831_n8_α]
 lea rsi, [rbp + 144]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 128], rax
 jmp xchain00831_n6_β
 xchain00831_n7_β:
 jmp xchain00831_n6_β
 xchain00831_n8_α:
# IR_REPALT clear
 mov qword ptr [rbp + 224], 0
jmp xchain00831_n10_α
xchain00831_n8_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 mov qword ptr [rbp + 224], 1
jmp xchain00831_n9_α
xchain00831_n8_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 224]
 cmp rax, 1
je xchain00831_n8_α
jmp xchain00831_n11_α
xchain00831_n8_β:
jmp xchain00831_n8_rt
# IR_CORET yield
 xchain00831_n9_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00831_n8_β
# IR_LIT_STRING
 xchain00831_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00835_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00831_n8_ry
 xchain00831_n10_β:
 jmp xchain00831_n8_rt
.Lx00835_0:
 .quad .Lx00835_0_s
.Lx00835_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00831_n11_α:
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
 xchain00836_n0_α:
 mov rdi, 1879053312
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00836_n1_α
 xchain00836_n0_β:
 jmp xchain00836_n3_α
# IR_NULLTEST_VAR
 xchain00836_n1_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00836_n3_α
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00836_n3_α
 cmp eax, 0
 jne xchain00836_n3_α
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00836_n2_α
 xchain00836_n1_β:
 jmp xchain00836_n3_α
# IR_LIT_INTEGER
 xchain00836_n2_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00837_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00836_n4_α
 xchain00836_n2_β:
 jmp xchain00836_n3_α
.Lx00837_0:
 .quad 1
# IR_VAR
 xchain00836_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00836_n5_α
 xchain00836_n3_β:
 jmp xchain00836_n6_α
# IR_ASSIGN_VAR
 xchain00836_n4_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00836_n3_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00836_n7_α
 xchain00836_n4_β:
 jmp xchain00836_n3_α
# IR_UNOP
 xchain00836_n5_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00836_n6_α
 cmp eax, 0
 jne xchain00836_n6_α
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 jmp xchain00836_n8_α
 xchain00836_n5_β:
 jmp xchain00836_n6_α
# IR_LIT_INTEGER
 xchain00836_n6_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00838_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00836_n9_α
 xchain00836_n6_β:
 jmp proc_cxget_ω
.Lx00838_0:
 .quad 1
# IR_CREATE
 xchain00836_n7_α:
 mov qword ptr [rsp + 384], r12
 mov qword ptr [rsp + 392], r13
 mov qword ptr [rsp + 400], r14
 mov qword ptr [rsp + 408], r15
 mov qword ptr [rsp + 416], rbx
 mov qword ptr [rsp + 424], rbp
 lea rdi, [rip + xchain00836_n11_α]
 lea rsi, [rbp + 384]
 call scrip_coexpr_create@PLT
 mov qword ptr [rsp + 368], rax
 jmp xchain00836_n10_α
 xchain00836_n7_β:
 jmp xchain00836_n3_α
# IR_LIT_STRING
 xchain00836_n8_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00839_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00836_n12_α
 xchain00836_n8_β:
 jmp proc_cxget_ω
.Lx00839_0:
 .quad .Lx00839_0_s
.Lx00839_0_s:
 .string "@C"
# IR_VAR
 xchain00836_n9_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00836_n13_α
 xchain00836_n9_β:
 jmp proc_cxget_ω
# IR_ASSIGN gva
 xchain00836_n10_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00836_n14_α
 xchain00836_n10_β:
 jmp xchain00836_n3_α
 xchain00836_n11_α:
# IR_REPALT clear
 mov qword ptr [rbp + 464], 0
jmp xchain00836_n16_α
xchain00836_n11_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 mov qword ptr [rbp + 464], 1
jmp xchain00836_n15_α
xchain00836_n11_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 464]
 cmp rax, 1
je xchain00836_n11_α
jmp xchain00836_n20_α
xchain00836_n11_β:
jmp xchain00836_n11_rt
# IR_RETURN
 xchain00836_n12_α:
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxget_γ
# IR_TO
 xchain00836_n13_α:
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00840_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00836_n17_α
 xchain00836_n13_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00840_0
# IR_MOVE_LABEL
 xchain00836_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + xchain00836_n3_α]
 mov qword ptr [rbp + 336], rax
 jmp xchain00836_n3_α
 xchain00836_n14_β:
 jmp xchain00836_n3_α
# IR_CORET yield
 xchain00836_n15_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00836_n11_β
# IR_LIT_STRING
 xchain00836_n16_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00841_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00836_n11_ry
 xchain00836_n16_β:
 jmp xchain00836_n11_rt
.Lx00841_0:
 .quad .Lx00841_0_s
.Lx00841_0_s:
 .string "a"
# IR_VAR
 xchain00836_n17_α:
 mov rax, qword ptr [1879053296]
 mov rdx, qword ptr [1879053304]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00836_n19_α
 xchain00836_n17_β:
 jmp xchain00836_n13_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00836_n18_α:
 jmp qword ptr [rbp + 336]
 xchain00836_n18_β:
 jmp xchain00836_n3_α
# IR_ACTIVATE
 xchain00836_n19_α:
 mov rdi, qword ptr [rbp + 160]
 xor esi, esi
 xor edx, edx
 lea rcx, [rbp + 128]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00836_n13_β
 jmp xchain00836_n13_β
 xchain00836_n19_β:
 jmp xchain00836_n13_β
# IR_COFAIL exhausted
 xchain00836_n20_α:
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
  mov esi, 592
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
  mov rdi, qword ptr [rsp]
  add rdi, 8
  mov esi, dword ptr [rsp + 8]
  sub esi, 1
  call rt_main_args_stage@PLT
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
  push rsi
  sub rsp, 8
  call rt_main_args_fetch@PLT
  add rsp, 8
  pop rsi
  mov [rbp + 16], rax
  mov [rbp + 24], rdx
main_α_body:
# IR_LIT_INTEGER
 xchain00842_n0_α:
 mov qword ptr [rbp + 11264], 6
 mov rax, qword ptr [rip + .Lx00843_0]
 mov qword ptr [rbp + 11272], rax
 jmp xchain00842_n1_α
 xchain00842_n0_β:
 jmp xchain00842_n10_α
.Lx00843_0:
 .quad 1000
# IR_VAR_REF
 xchain00842_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain00842_n2_α
 xchain00842_n1_β:
 jmp xchain00842_n5_α
# IR_LIT_INTEGER
 xchain00842_n2_α:
 mov qword ptr [rbp + 11392], 6
 mov rax, qword ptr [rip + .Lx00844_0]
 mov qword ptr [rbp + 11400], rax
 jmp xchain00842_n3_α
 xchain00842_n2_β:
 jmp xchain00842_n5_α
.Lx00844_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain00842_n3_α:
 mov rdi, qword ptr [rbp + 11360]
 mov rsi, qword ptr [rbp + 11368]
 mov rdx, qword ptr [rbp + 11392]
 mov rcx, qword ptr [rbp + 11400]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00842_n5_α
 mov qword ptr [rbp + 11424], rax
 mov qword ptr [rbp + 11432], rdx
 jmp xchain00842_n4_α
 xchain00842_n3_β:
 jmp xchain00842_n5_α
# IR_DEREF variable -> value
 xchain00842_n4_α:
 mov rdi, qword ptr [rbp + 11424]
 mov rsi, qword ptr [rbp + 11432]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00842_n5_α
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 jmp xchain00842_n6_α
 xchain00842_n4_β:
 jmp xchain00842_n5_α
# IR_LIT_REAL
 xchain00842_n5_α:
 mov qword ptr [rbp + 11328], 7
 mov rax, qword ptr [rip + .Lx00845_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain00842_n7_α
 xchain00842_n5_β:
 jmp xchain00842_n10_α
.Lx00845_0:
 .quad 4607182418800017408
# IR_MOVE_LABEL
 xchain00842_n6_α:
 mov rax, qword ptr [rbp + 11456]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11464]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00842_n5_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00842_n8_α
 xchain00842_n6_β:
 jmp xchain00842_n10_α
# IR_MOVE_LABEL
 xchain00842_n7_α:
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
 lea rax, [rip + xchain00842_n10_α]
 mov qword ptr [rbp + 11312], rax
 jmp xchain00842_n8_α
 xchain00842_n7_β:
 jmp xchain00842_n10_α
# IR_COERCE_NUMERIC
 xchain00842_n8_α:
 mov eax, dword ptr [rbp + 11296]
 cmp eax, 7
 je .Lx00846_1
 cmp eax, 6
 jne .Lx00846_0
 mov eax, dword ptr [rbp + 11264]
 cmp eax, 6
 jne .Lx00846_0
.Lx00846_1:
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11232], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11240], rax
 jmp .Lx00846_2
.Lx00846_0:
 lea rdi, [rbp + 11296]
 lea rsi, [rbp + 11264]
 lea rdx, [rbp + 11232]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00846_2:
 jmp xchain00842_n11_α
 xchain00842_n8_β:
 jmp xchain00842_n10_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00842_n9_α:
 jmp qword ptr [rbp + 11312]
 xchain00842_n9_β:
 jmp xchain00842_n10_α
# IR_LIT_STRING
 xchain00842_n10_α:
 mov qword ptr [rbp + 11072], 1
 mov rax, qword ptr [rip + .Lx00847_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain00842_n12_α
 xchain00842_n10_β:
 jmp xchain00842_n17_α
.Lx00847_0:
 .quad .Lx00847_0_s
.Lx00847_0_s:
 .string "/dev/null"
 xchain00842_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 100
 je .Lx00848_0
 mov eax, dword ptr [rbp + 11232]
 cmp eax, 6
 jne .Lx00848_2
.Lx00848_1:
 mov rax, 1000
 mov rcx, qword ptr [rbp + 11240]
 imul rax, rcx
 mov qword ptr [rbp + 11200], 6
 mov qword ptr [rbp + 11208], rax
 jmp xchain00842_n13_α
.Lx00848_0:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 lea r9, [rbp + 11200]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00848_3
.Lx00848_2:
 mov rdi, qword ptr [rbp + 11264]
 mov rsi, qword ptr [rbp + 11272]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00842_n10_α
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
.Lx00848_3:
 jmp xchain00842_n13_α
 xchain00842_n11_β:
 jmp xchain00842_n10_α
# IR_LIT_STRING
 xchain00842_n12_α:
 mov qword ptr [rbp + 11104], 1
 mov rax, qword ptr [rip + .Lx00849_0]
 mov qword ptr [rbp + 11112], rax
 jmp xchain00842_n14_α
 xchain00842_n12_β:
 jmp xchain00842_n17_α
.Lx00849_0:
 .quad .Lx00849_0_s
.Lx00849_0_s:
 .string "w"
 xchain00842_n13_α:
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
 je xchain00842_n10_α
 jmp xchain00842_n15_α
 xchain00842_n13_β:
 jmp xchain00842_n10_α
 xchain00842_n14_α:
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
 je xchain00842_n17_α
 jmp xchain00842_n16_α
 xchain00842_n14_β:
 jmp xchain00842_n17_α
# IR_ASSIGN gva
 xchain00842_n15_α:
 mov rax, qword ptr [rbp + 11152]
 mov rdx, qword ptr [rbp + 11160]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 11136], rax
 mov qword ptr [rbp + 11144], rdx
 jmp xchain00842_n10_α
 xchain00842_n15_β:
 jmp xchain00842_n10_α
# IR_ASSIGN gva
 xchain00842_n16_α:
 mov rax, qword ptr [rbp + 11008]
 mov rdx, qword ptr [rbp + 11016]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain00842_n17_α
 xchain00842_n16_β:
 jmp xchain00842_n17_α
# IR_VAR
 xchain00842_n17_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 jmp xchain00842_n18_α
 xchain00842_n17_β:
 jmp xchain00842_n19_α
 xchain00842_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10960]
 mov rdx, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10944], rax
 mov qword ptr [rbp + 10952], rdx
 jmp xchain00842_n19_α
 xchain00842_n18_β:
 jmp xchain00842_n19_α
# IR_VAR
 xchain00842_n19_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10832], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10840], rax
 jmp xchain00842_n20_α
 xchain00842_n19_β:
 jmp xchain00842_n21_α
# IR_LIT_REAL
 xchain00842_n20_α:
 mov qword ptr [rbp + 10912], 7
 mov rax, qword ptr [rip + .Lx00850_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain00842_n22_α
 xchain00842_n20_β:
 jmp xchain00842_n21_α
.Lx00850_0:
 .quad 4652007308841189376
 xchain00842_n21_α:
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
 je xchain00842_n24_α
 jmp xchain00842_n23_α
 xchain00842_n21_β:
 jmp xchain00842_n24_α
 xchain00842_n22_α:
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
 je xchain00842_n21_α
 jmp xchain00842_n25_α
 xchain00842_n22_β:
 jmp xchain00842_n21_α
 xchain00842_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10752]
 mov rdx, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain00842_n24_α
 xchain00842_n23_β:
 jmp xchain00842_n24_α
# IR_LIT_INTEGER
 xchain00842_n24_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx00851_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain00842_n26_α
 xchain00842_n24_β:
 jmp xchain00842_n38_α
.Lx00851_0:
 .quad 1
 xchain00842_n25_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 100
 je .Lx00852_0
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 100
 je .Lx00852_0
 mov eax, dword ptr [rbp + 11504]
 cmp eax, 6
 jne .Lx00852_2
 mov eax, dword ptr [rbp + 10864]
 cmp eax, 6
 jne .Lx00852_2
.Lx00852_1:
 mov rax, qword ptr [rbp + 11512]
 mov rcx, qword ptr [rbp + 10872]
 cmp rax, rcx
 jge xchain00842_n21_α
 mov rcx, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rcx
 mov rcx, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rcx
 jmp xchain00842_n27_α
.Lx00852_0:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 lea r9, [rbp + 10800]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00852_1
 cmp eax, 1
 je xchain00842_n21_α
 jmp xchain00842_n27_α
.Lx00852_2:
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00842_n21_α
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10808], rax
 jmp xchain00842_n27_α
 xchain00842_n25_β:
 jmp xchain00842_n21_α
# IR_LIT_INTEGER
 xchain00842_n26_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx00853_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain00842_n28_α
 xchain00842_n26_β:
 jmp xchain00842_n38_α
.Lx00853_0:
 .quad 5
 xchain00842_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain00842_n21_α
 xchain00842_n27_β:
 jmp xchain00842_n21_α
# IR_TO
 xchain00842_n28_α:
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10288], rax
.Lx00854_0:
 mov rax, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10344]
 cmp rax, rcx
 jg xchain00842_n38_α
 mov qword ptr [rbp + 10272], 6
 mov qword ptr [rbp + 10280], rax
 jmp xchain00842_n29_α
 xchain00842_n28_β:
 inc qword ptr [rbp + 10288]
 jmp .Lx00854_0
# KEYWORD_read
 xchain00842_n29_α:
 mov rdi, qword ptr [rip + .Lx00855_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 jmp xchain00842_n30_α
 xchain00842_n29_β:
 jmp xchain00842_n32_α
.Lx00855_0:
 .quad .Lx00855_0_s
.Lx00855_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00842_n30_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain00842_n31_α
 xchain00842_n30_β:
 jmp xchain00842_n32_α
.Lx00856_0:
 .quad .Lx00856_0_s
.Lx00856_0_s:
 .string "."
 xchain00842_n31_α:
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
 je xchain00842_n32_α
 jmp xchain00842_n32_α
 xchain00842_n31_β:
 jmp xchain00842_n32_α
# IR_VAR
 xchain00842_n32_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10456], rax
 jmp xchain00842_n33_α
 xchain00842_n32_β:
 jmp xchain00842_n28_β
# IR_PROC_VALUE
 xchain00842_n33_α:
 mov rdi, qword ptr [rip + .Lx00857_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 jmp xchain00842_n34_α
 xchain00842_n33_β:
 jmp xchain00842_n28_β
.Lx00857_0:
 .quad .Lx00857_0_s
.Lx00857_0_s:
 .string "nothing"
# IR_VAR
 xchain00842_n34_α:
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 10584], rax
 jmp xchain00842_n35_α
 xchain00842_n34_β:
 jmp xchain00842_n28_β
 xchain00842_n35_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 10544]
 mov rdx, qword ptr [rbp + 10552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10576]
 mov rdx, qword ptr [rbp + 10584]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00858_0]
 mov esi, 2
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
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 cmp eax, 99
 je xchain00842_n28_β
 jmp xchain00842_n36_α
 xchain00842_n35_β:
 jmp xchain00842_n28_β
.Lx00858_0:
 .quad .Lx00858_0_s
.Lx00858_0_s:
 .string "measure"
 xchain00842_n36_α:
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
 je xchain00842_n28_β
 jmp xchain00842_n37_α
 xchain00842_n36_β:
 jmp xchain00842_n28_β
 xchain00842_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10368], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10376], rax
 jmp xchain00842_n28_β
xchain00842_n37_β:
 jmp xchain00842_n28_β
# IR_VAR
 xchain00842_n38_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 9848], rax
 jmp xchain00842_n39_α
 xchain00842_n38_β:
 jmp xchain00842_n40_α
 xchain00842_n39_α:
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
 je xchain00842_n40_α
 jmp xchain00842_n41_α
 xchain00842_n39_β:
 jmp xchain00842_n40_α
# IR_VAR
 xchain00842_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain00842_n42_α
 xchain00842_n40_β:
 jmp xchain00842_n43_α
# IR_LIT_INTEGER
 xchain00842_n41_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx00859_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain00842_n44_α
 xchain00842_n41_β:
 jmp xchain00842_n40_α
.Lx00859_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00842_n42_α:
 mov qword ptr [rbp + 9712], 6
 mov rax, qword ptr [rip + .Lx00860_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain00842_n45_α
 xchain00842_n42_β:
 jmp xchain00842_n43_α
.Lx00860_0:
 .quad 10
# IR_PROC_VALUE
 xchain00842_n43_α:
 mov rdi, qword ptr [rip + .Lx00861_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain00842_n46_α
 xchain00842_n43_β:
 jmp xchain00842_n49_α
.Lx00861_0:
 .quad .Lx00861_0_s
.Lx00861_0_s:
 .string "nothing"
# IR_VAR
 xchain00842_n44_α:
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 10136], rax
 jmp xchain00842_n47_α
 xchain00842_n44_β:
 jmp xchain00842_n40_α
 xchain00842_n45_α:
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
 je xchain00842_n43_α
 jmp xchain00842_n48_α
 xchain00842_n45_β:
 jmp xchain00842_n43_α
 xchain00842_n46_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
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
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 cmp eax, 99
 je xchain00842_n49_α
 jmp xchain00842_n49_α
 xchain00842_n46_β:
 jmp xchain00842_n49_α
.Lx00862_0:
 .quad .Lx00862_0_s
.Lx00862_0_s:
 .string "report"
# IR_UNOP
 xchain00842_n47_α:
 mov rdi, qword ptr [rbp + 11488]
 mov rsi, qword ptr [rbp + 11496]
 call rt_size_d@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain00842_n50_α
 xchain00842_n47_β:
 jmp xchain00842_n40_α
# IR_LIT_STRING
 xchain00842_n48_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx00863_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain00842_n51_α
 xchain00842_n48_β:
 jmp xchain00842_n43_α
.Lx00863_0:
 .quad .Lx00863_0_s
.Lx00863_0_s:
 .string "  overhead"
# IR_PROC_VALUE
 xchain00842_n49_α:
 mov rdi, qword ptr [rip + .Lx00864_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain00842_n52_α
 xchain00842_n49_β:
 jmp xchain00842_n54_α
.Lx00864_0:
 .quad .Lx00864_0_s
.Lx00864_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00842_n50_α:
 mov qword ptr [rbp + 10160], 6
 mov rax, qword ptr [rip + .Lx00865_0]
 mov qword ptr [rbp + 10168], rax
 jmp xchain00842_n53_α
 xchain00842_n50_β:
 jmp xchain00842_n40_α
.Lx00865_0:
 .quad 1
 xchain00842_n51_α:
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
 je xchain00842_n43_α
 jmp xchain00842_n43_α
 xchain00842_n51_β:
 jmp xchain00842_n43_α
 xchain00842_n52_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9440]
 mov rdx, qword ptr [rbp + 9448]
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
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain00842_n54_α
 jmp xchain00842_n54_α
 xchain00842_n52_β:
 jmp xchain00842_n54_α
.Lx00866_0:
 .quad .Lx00866_0_s
.Lx00866_0_s:
 .string "report"
# IR_COERCE_NUMERIC
 xchain00842_n53_α:
 mov eax, dword ptr [rbp + 10096]
 cmp eax, 7
 je .Lx00867_1
 cmp eax, 6
 jne .Lx00867_0
 mov eax, dword ptr [rbp + 10160]
 cmp eax, 6
 jne .Lx00867_0
.Lx00867_1:
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
 jmp .Lx00867_2
.Lx00867_0:
 lea rdi, [rbp + 10096]
 lea rsi, [rbp + 10160]
 lea rdx, [rbp + 10064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00867_2:
 jmp xchain00842_n55_α
 xchain00842_n53_β:
 jmp xchain00842_n40_α
# IR_PROC_VALUE
 xchain00842_n54_α:
 mov rdi, qword ptr [rip + .Lx00868_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain00842_n56_α
 xchain00842_n54_β:
 jmp xchain00842_n58_α
.Lx00868_0:
 .quad .Lx00868_0_s
.Lx00868_0_s:
 .string "nothing"
 xchain00842_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 100
 je .Lx00869_0
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 6
 jne .Lx00869_2
.Lx00869_1:
 mov rax, qword ptr [rbp + 10072]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 10032], 6
 mov qword ptr [rbp + 10040], rax
 jmp xchain00842_n57_α
.Lx00869_0:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 lea r9, [rbp + 10032]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00869_3
.Lx00869_2:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00842_n40_α
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
.Lx00869_3:
 jmp xchain00842_n57_α
 xchain00842_n55_β:
 jmp xchain00842_n40_α
 xchain00842_n56_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9360]
 mov rdx, qword ptr [rbp + 9368]
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
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain00842_n58_α
 jmp xchain00842_n58_α
 xchain00842_n56_β:
 jmp xchain00842_n58_α
.Lx00870_0:
 .quad .Lx00870_0_s
.Lx00870_0_s:
 .string "report"
# IR_LIT_INTEGER
 xchain00842_n57_α:
 mov qword ptr [rbp + 10192], 6
 mov rax, qword ptr [rip + .Lx00871_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain00842_n59_α
 xchain00842_n57_β:
 jmp xchain00842_n40_α
.Lx00871_0:
 .quad 2
# IR_PROC_VALUE
 xchain00842_n58_α:
 mov rdi, qword ptr [rip + .Lx00872_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain00842_n60_α
 xchain00842_n58_β:
 jmp xchain00842_n62_α
.Lx00872_0:
 .quad .Lx00872_0_s
.Lx00872_0_s:
 .string "globasgn"
# IR_COERCE_NUMERIC
 xchain00842_n59_α:
 mov eax, dword ptr [rbp + 10032]
 cmp eax, 7
 je .Lx00873_1
 cmp eax, 6
 jne .Lx00873_0
 mov eax, dword ptr [rbp + 10192]
 cmp eax, 6
 jne .Lx00873_0
.Lx00873_1:
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10008], rax
 jmp .Lx00873_2
.Lx00873_0:
 lea rdi, [rbp + 10032]
 lea rsi, [rbp + 10192]
 lea rdx, [rbp + 10000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00873_2:
 jmp xchain00842_n61_α
 xchain00842_n59_β:
 jmp xchain00842_n40_α
 xchain00842_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9280]
 mov rdx, qword ptr [rbp + 9288]
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
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain00842_n62_α
 jmp xchain00842_n62_α
 xchain00842_n60_β:
 jmp xchain00842_n62_α
.Lx00874_0:
 .quad .Lx00874_0_s
.Lx00874_0_s:
 .string "report"
 xchain00842_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 100
 je .Lx00875_0
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 6
 jne .Lx00875_2
.Lx00875_1:
 mov rax, qword ptr [rbp + 10008]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [rbp + 9968], 6
 mov qword ptr [rbp + 9976], rax
 jmp xchain00842_n63_α
.Lx00875_0:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 lea r9, [rbp + 9968]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00875_3
.Lx00875_2:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00842_n40_α
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
.Lx00875_3:
 jmp xchain00842_n63_α
 xchain00842_n61_β:
 jmp xchain00842_n40_α
# IR_PROC_VALUE
 xchain00842_n62_α:
 mov rdi, qword ptr [rip + .Lx00876_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain00842_n64_α
 xchain00842_n62_β:
 jmp xchain00842_n66_α
.Lx00876_0:
 .quad .Lx00876_0_s
.Lx00876_0_s:
 .string "statasgn"
# IR_COERCE_NUMERIC
 xchain00842_n63_α:
 mov eax, dword ptr [rbp + 9968]
 cmp eax, 7
 je .Lx00877_1
 cmp eax, 6
 jne .Lx00877_0
 mov eax, dword ptr [rbp + 9936]
 cmp eax, 6
 jne .Lx00877_0
.Lx00877_1:
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
 jmp .Lx00877_2
.Lx00877_0:
 lea rdi, [rbp + 9968]
 lea rsi, [rbp + 9936]
 lea rdx, [rbp + 9904]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00877_2:
 jmp xchain00842_n65_α
 xchain00842_n63_β:
 jmp xchain00842_n40_α
 xchain00842_n64_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
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
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain00842_n66_α
 jmp xchain00842_n66_α
 xchain00842_n64_β:
 jmp xchain00842_n66_α
.Lx00878_0:
 .quad .Lx00878_0_s
.Lx00878_0_s:
 .string "report"
 xchain00842_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 100
 je .Lx00879_0
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 6
 jne .Lx00879_2
.Lx00879_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 9912]
 add rax, rcx
 mov qword ptr [rbp + 9872], 6
 mov qword ptr [rbp + 9880], rax
 jmp xchain00842_n67_α
.Lx00879_0:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9872]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00879_3
.Lx00879_2:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00842_n40_α
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
.Lx00879_3:
 jmp xchain00842_n67_α
 xchain00842_n65_β:
 jmp xchain00842_n40_α
# IR_PROC_VALUE
 xchain00842_n66_α:
 mov rdi, qword ptr [rip + .Lx00880_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 jmp xchain00842_n68_α
 xchain00842_n66_β:
 jmp xchain00842_n70_α
.Lx00880_0:
 .quad .Lx00880_0_s
.Lx00880_0_s:
 .string "loclasgn"
# IR_SUBSCRIPT x[i] variable
 xchain00842_n67_α:
 mov rdi, qword ptr [rbp + 9792]
 mov rsi, qword ptr [rbp + 9800]
 mov rdx, qword ptr [rbp + 9872]
 mov rcx, qword ptr [rbp + 9880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00842_n40_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain00842_n69_α
 xchain00842_n67_β:
 jmp xchain00842_n40_α
 xchain00842_n68_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9120]
 mov rdx, qword ptr [rbp + 9128]
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
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain00842_n70_α
 jmp xchain00842_n70_α
 xchain00842_n68_β:
 jmp xchain00842_n70_α
.Lx00881_0:
 .quad .Lx00881_0_s
.Lx00881_0_s:
 .string "report"
# IR_DEREF variable -> value
 xchain00842_n69_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00842_n40_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain00842_n71_α
 xchain00842_n69_β:
 jmp xchain00842_n40_α
# IR_PROC_VALUE
 xchain00842_n70_α:
 mov rdi, qword ptr [rip + .Lx00882_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain00842_n72_α
 xchain00842_n70_β:
 jmp xchain00842_n73_α
.Lx00882_0:
 .quad .Lx00882_0_s
.Lx00882_0_s:
 .string "if0"
# IR_ASSIGN gva
 xchain00842_n71_α:
 mov rax, qword ptr [rbp + 10256]
 mov rdx, qword ptr [rbp + 10264]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain00842_n40_α
 xchain00842_n71_β:
 jmp xchain00842_n40_α
 xchain00842_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
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
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain00842_n73_α
 jmp xchain00842_n73_α
 xchain00842_n72_β:
 jmp xchain00842_n73_α
.Lx00883_0:
 .quad .Lx00883_0_s
.Lx00883_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n73_α:
 mov rdi, qword ptr [rip + .Lx00884_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain00842_n74_α
 xchain00842_n73_β:
 jmp xchain00842_n75_α
.Lx00884_0:
 .quad .Lx00884_0_s
.Lx00884_0_s:
 .string "case3"
 xchain00842_n74_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8960]
 mov rdx, qword ptr [rbp + 8968]
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
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain00842_n75_α
 jmp xchain00842_n75_α
 xchain00842_n74_β:
 jmp xchain00842_n75_α
.Lx00885_0:
 .quad .Lx00885_0_s
.Lx00885_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n75_α:
 mov rdi, qword ptr [rip + .Lx00886_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain00842_n76_α
 xchain00842_n75_β:
 jmp xchain00842_n77_α
.Lx00886_0:
 .quad .Lx00886_0_s
.Lx00886_0_s:
 .string "nulltest"
 xchain00842_n76_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8880]
 mov rdx, qword ptr [rbp + 8888]
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
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 cmp eax, 99
 je xchain00842_n77_α
 jmp xchain00842_n77_α
 xchain00842_n76_β:
 jmp xchain00842_n77_α
.Lx00887_0:
 .quad .Lx00887_0_s
.Lx00887_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n77_α:
 mov rdi, qword ptr [rip + .Lx00888_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain00842_n78_α
 xchain00842_n77_β:
 jmp xchain00842_n79_α
.Lx00888_0:
 .quad .Lx00888_0_s
.Lx00888_0_s:
 .string "typef"
 xchain00842_n78_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
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
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain00842_n79_α
 jmp xchain00842_n79_α
 xchain00842_n78_β:
 jmp xchain00842_n79_α
.Lx00889_0:
 .quad .Lx00889_0_s
.Lx00889_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n79_α:
 mov rdi, qword ptr [rip + .Lx00890_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8720], rax
 mov qword ptr [rbp + 8728], rdx
 jmp xchain00842_n80_α
 xchain00842_n79_β:
 jmp xchain00842_n81_α
.Lx00890_0:
 .quad .Lx00890_0_s
.Lx00890_0_s:
 .string "imagef"
 xchain00842_n80_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8720]
 mov rdx, qword ptr [rbp + 8728]
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
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je xchain00842_n81_α
 jmp xchain00842_n81_α
 xchain00842_n80_β:
 jmp xchain00842_n81_α
.Lx00891_0:
 .quad .Lx00891_0_s
.Lx00891_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n81_α:
 mov rdi, qword ptr [rip + .Lx00892_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain00842_n82_α
 xchain00842_n81_β:
 jmp xchain00842_n83_α
.Lx00892_0:
 .quad .Lx00892_0_s
.Lx00892_0_s:
 .string "everyto"
 xchain00842_n82_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8640]
 mov rdx, qword ptr [rbp + 8648]
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
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 cmp eax, 99
 je xchain00842_n83_α
 jmp xchain00842_n83_α
 xchain00842_n82_β:
 jmp xchain00842_n83_α
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n83_α:
 mov rdi, qword ptr [rip + .Lx00894_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 jmp xchain00842_n84_α
 xchain00842_n83_β:
 jmp xchain00842_n85_α
.Lx00894_0:
 .quad .Lx00894_0_s
.Lx00894_0_s:
 .string "everyalt"
 xchain00842_n84_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8560]
 mov rdx, qword ptr [rbp + 8568]
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
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain00842_n85_α
 jmp xchain00842_n85_α
 xchain00842_n84_β:
 jmp xchain00842_n85_α
.Lx00895_0:
 .quad .Lx00895_0_s
.Lx00895_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n85_α:
 mov rdi, qword ptr [rip + .Lx00896_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain00842_n86_α
 xchain00842_n85_β:
 jmp xchain00842_n87_α
.Lx00896_0:
 .quad .Lx00896_0_s
.Lx00896_0_s:
 .string "conj5"
 xchain00842_n86_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8480]
 mov rdx, qword ptr [rbp + 8488]
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
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 cmp eax, 99
 je xchain00842_n87_α
 jmp xchain00842_n87_α
 xchain00842_n86_β:
 jmp xchain00842_n87_α
.Lx00897_0:
 .quad .Lx00897_0_s
.Lx00897_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n87_α:
 mov rdi, qword ptr [rip + .Lx00898_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain00842_n88_α
 xchain00842_n87_β:
 jmp xchain00842_n89_α
.Lx00898_0:
 .quad .Lx00898_0_s
.Lx00898_0_s:
 .string "nullfunc"
 xchain00842_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8400]
 mov rdx, qword ptr [rbp + 8408]
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
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain00842_n89_α
 jmp xchain00842_n89_α
 xchain00842_n88_β:
 jmp xchain00842_n89_α
.Lx00899_0:
 .quad .Lx00899_0_s
.Lx00899_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n89_α:
 mov rdi, qword ptr [rip + .Lx00900_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain00842_n90_α
 xchain00842_n89_β:
 jmp xchain00842_n91_α
.Lx00900_0:
 .quad .Lx00900_0_s
.Lx00900_0_s:
 .string "listcall"
 xchain00842_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8320]
 mov rdx, qword ptr [rbp + 8328]
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
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je xchain00842_n91_α
 jmp xchain00842_n91_α
 xchain00842_n90_β:
 jmp xchain00842_n91_α
.Lx00901_0:
 .quad .Lx00901_0_s
.Lx00901_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n91_α:
 mov rdi, qword ptr [rip + .Lx00902_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain00842_n92_α
 xchain00842_n91_β:
 jmp xchain00842_n93_α
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "marshal"
 xchain00842_n92_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8240]
 mov rdx, qword ptr [rbp + 8248]
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
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je xchain00842_n93_α
 jmp xchain00842_n93_α
 xchain00842_n92_β:
 jmp xchain00842_n93_α
.Lx00903_0:
 .quad .Lx00903_0_s
.Lx00903_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n93_α:
 mov rdi, qword ptr [rip + .Lx00904_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain00842_n94_α
 xchain00842_n93_β:
 jmp xchain00842_n95_α
.Lx00904_0:
 .quad .Lx00904_0_s
.Lx00904_0_s:
 .string "evsusp"
 xchain00842_n94_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8160]
 mov rdx, qword ptr [rbp + 8168]
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
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 cmp eax, 99
 je xchain00842_n95_α
 jmp xchain00842_n95_α
 xchain00842_n94_β:
 jmp xchain00842_n95_α
.Lx00905_0:
 .quad .Lx00905_0_s
.Lx00905_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n95_α:
 mov rdi, qword ptr [rip + .Lx00906_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain00842_n96_α
 xchain00842_n95_β:
 jmp xchain00842_n97_α
.Lx00906_0:
 .quad .Lx00906_0_s
.Lx00906_0_s:
 .string "tointeger"
 xchain00842_n96_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8080]
 mov rdx, qword ptr [rbp + 8088]
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
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain00842_n97_α
 jmp xchain00842_n97_α
 xchain00842_n96_β:
 jmp xchain00842_n97_α
.Lx00907_0:
 .quad .Lx00907_0_s
.Lx00907_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n97_α:
 mov rdi, qword ptr [rip + .Lx00908_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain00842_n98_α
 xchain00842_n97_β:
 jmp xchain00842_n99_α
.Lx00908_0:
 .quad .Lx00908_0_s
.Lx00908_0_s:
 .string "intcoerce"
 xchain00842_n98_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00909_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00909_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00909_3]
 lea rdx, [rip + .Lx00909_4]
 jmp rax
.Lx00909_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00909_2
.Lx00909_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00909_2
.Lx00909_1:
 call rt_faildescr@PLT
.Lx00909_2:
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain00842_n99_α
 jmp xchain00842_n99_α
 xchain00842_n98_β:
 jmp xchain00842_n99_α
.Lx00909_0:
 .quad .Lx00909_0_s
.Lx00909_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n99_α:
 mov rdi, qword ptr [rip + .Lx00910_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain00842_n00001_α
 xchain00842_n99_β:
 jmp xchain00842_n00002_α
.Lx00910_0:
 .quad .Lx00910_0_s
.Lx00910_0_s:
 .string "uplus"
 xchain00842_n00001_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7920]
 mov rdx, qword ptr [rbp + 7928]
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
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 cmp eax, 99
 je xchain00842_n00002_α
 jmp xchain00842_n00002_α
 xchain00842_n00001_β:
 jmp xchain00842_n00002_α
.Lx00911_0:
 .quad .Lx00911_0_s
.Lx00911_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00002_α:
 mov rdi, qword ptr [rip + .Lx00912_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00842_n00913_α
 xchain00842_n00002_β:
 jmp xchain00842_n00914_α
.Lx00912_0:
 .quad .Lx00912_0_s
.Lx00912_0_s:
 .string "tostring"
 xchain00842_n00913_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7840]
 mov rdx, qword ptr [rbp + 7848]
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
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain00842_n00914_α
 jmp xchain00842_n00914_α
 xchain00842_n00913_β:
 jmp xchain00842_n00914_α
.Lx00915_0:
 .quad .Lx00915_0_s
.Lx00915_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00914_α:
 mov rdi, qword ptr [rip + .Lx00916_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain00842_n00917_α
 xchain00842_n00914_β:
 jmp xchain00842_n00918_α
.Lx00916_0:
 .quad .Lx00916_0_s
.Lx00916_0_s:
 .string "strcoerce"
 xchain00842_n00917_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
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
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain00842_n00918_α
 jmp xchain00842_n00918_α
 xchain00842_n00917_β:
 jmp xchain00842_n00918_α
.Lx00919_0:
 .quad .Lx00919_0_s
.Lx00919_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00918_α:
 mov rdi, qword ptr [rip + .Lx00920_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain00842_n00921_α
 xchain00842_n00918_β:
 jmp xchain00842_n00922_α
.Lx00920_0:
 .quad .Lx00920_0_s
.Lx00920_0_s:
 .string "absf"
 xchain00842_n00921_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7680]
 mov rdx, qword ptr [rbp + 7688]
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
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain00842_n00922_α
 jmp xchain00842_n00922_α
 xchain00842_n00921_β:
 jmp xchain00842_n00922_α
.Lx00923_0:
 .quad .Lx00923_0_s
.Lx00923_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00922_α:
 mov rdi, qword ptr [rip + .Lx00924_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain00842_n00925_α
 xchain00842_n00922_β:
 jmp xchain00842_n00926_α
.Lx00924_0:
 .quad .Lx00924_0_s
.Lx00924_0_s:
 .string "intadd"
 xchain00842_n00925_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
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
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain00842_n00926_α
 jmp xchain00842_n00926_α
 xchain00842_n00925_β:
 jmp xchain00842_n00926_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00926_α:
 mov rdi, qword ptr [rip + .Lx00928_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00842_n00003_α
 xchain00842_n00926_β:
 jmp xchain00842_n00929_α
.Lx00928_0:
 .quad .Lx00928_0_s
.Lx00928_0_s:
 .string "addfunc"
 xchain00842_n00003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7520]
 mov rdx, qword ptr [rbp + 7528]
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
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain00842_n00929_α
 jmp xchain00842_n00929_α
 xchain00842_n00003_β:
 jmp xchain00842_n00929_α
.Lx00930_0:
 .quad .Lx00930_0_s
.Lx00930_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00929_α:
 mov rdi, qword ptr [rip + .Lx00931_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain00842_n00932_α
 xchain00842_n00929_β:
 jmp xchain00842_n00004_α
.Lx00931_0:
 .quad .Lx00931_0_s
.Lx00931_0_s:
 .string "intpow"
 xchain00842_n00932_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7440]
 mov rdx, qword ptr [rbp + 7448]
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
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain00842_n00004_α
 jmp xchain00842_n00004_α
 xchain00842_n00932_β:
 jmp xchain00842_n00004_α
.Lx00933_0:
 .quad .Lx00933_0_s
.Lx00933_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00004_α:
 mov rdi, qword ptr [rip + .Lx00934_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain00842_n00935_α
 xchain00842_n00004_β:
 jmp xchain00842_n00005_α
.Lx00934_0:
 .quad .Lx00934_0_s
.Lx00934_0_s:
 .string "intcmp"
 xchain00842_n00935_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7360]
 mov rdx, qword ptr [rbp + 7368]
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
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain00842_n00005_α
 jmp xchain00842_n00005_α
 xchain00842_n00935_β:
 jmp xchain00842_n00005_α
.Lx00936_0:
 .quad .Lx00936_0_s
.Lx00936_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00005_α:
 mov rdi, qword ptr [rip + .Lx00937_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain00842_n00938_α
 xchain00842_n00005_β:
 jmp xchain00842_n00006_α
.Lx00937_0:
 .quad .Lx00937_0_s
.Lx00937_0_s:
 .string "rfact0"
 xchain00842_n00938_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7280]
 mov rdx, qword ptr [rbp + 7288]
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
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain00842_n00006_α
 jmp xchain00842_n00006_α
 xchain00842_n00938_β:
 jmp xchain00842_n00006_α
.Lx00939_0:
 .quad .Lx00939_0_s
.Lx00939_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00006_α:
 mov rdi, qword ptr [rip + .Lx00940_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain00842_n00941_α
 xchain00842_n00006_β:
 jmp xchain00842_n00007_α
.Lx00940_0:
 .quad .Lx00940_0_s
.Lx00940_0_s:
 .string "rfact10"
 xchain00842_n00941_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7200]
 mov rdx, qword ptr [rbp + 7208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00942_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00942_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00942_3]
 lea rdx, [rip + .Lx00942_4]
 jmp rax
.Lx00942_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00942_2
.Lx00942_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00942_2
.Lx00942_1:
 call rt_faildescr@PLT
.Lx00942_2:
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain00842_n00007_α
 jmp xchain00842_n00007_α
 xchain00842_n00941_β:
 jmp xchain00842_n00007_α
.Lx00942_0:
 .quad .Lx00942_0_s
.Lx00942_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00007_α:
 mov rdi, qword ptr [rip + .Lx00943_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain00842_n00944_α
 xchain00842_n00007_β:
 jmp xchain00842_n00945_α
.Lx00943_0:
 .quad .Lx00943_0_s
.Lx00943_0_s:
 .string "rfib5"
 xchain00842_n00944_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7120]
 mov rdx, qword ptr [rbp + 7128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00946_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00946_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00946_3]
 lea rdx, [rip + .Lx00946_4]
 jmp rax
.Lx00946_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00946_2
.Lx00946_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00946_2
.Lx00946_1:
 call rt_faildescr@PLT
.Lx00946_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain00842_n00945_α
 jmp xchain00842_n00945_α
 xchain00842_n00944_β:
 jmp xchain00842_n00945_α
.Lx00946_0:
 .quad .Lx00946_0_s
.Lx00946_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00945_α:
 mov rdi, qword ptr [rip + .Lx00947_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain00842_n00948_α
 xchain00842_n00945_β:
 jmp xchain00842_n00949_α
.Lx00947_0:
 .quad .Lx00947_0_s
.Lx00947_0_s:
 .string "prslow"
 xchain00842_n00948_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7040]
 mov rdx, qword ptr [rbp + 7048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00950_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00950_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00950_3]
 lea rdx, [rip + .Lx00950_4]
 jmp rax
.Lx00950_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00950_2
.Lx00950_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00950_2
.Lx00950_1:
 call rt_faildescr@PLT
.Lx00950_2:
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain00842_n00949_α
 jmp xchain00842_n00949_α
 xchain00842_n00948_β:
 jmp xchain00842_n00949_α
.Lx00950_0:
 .quad .Lx00950_0_s
.Lx00950_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00949_α:
 mov rdi, qword ptr [rip + .Lx00951_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain00842_n00952_α
 xchain00842_n00949_β:
 jmp xchain00842_n00953_α
.Lx00951_0:
 .quad .Lx00951_0_s
.Lx00951_0_s:
 .string "toreal"
 xchain00842_n00952_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6960]
 mov rdx, qword ptr [rbp + 6968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00954_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00954_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00954_3]
 lea rdx, [rip + .Lx00954_4]
 jmp rax
.Lx00954_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00954_2
.Lx00954_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00954_2
.Lx00954_1:
 call rt_faildescr@PLT
.Lx00954_2:
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain00842_n00953_α
 jmp xchain00842_n00953_α
 xchain00842_n00952_β:
 jmp xchain00842_n00953_α
.Lx00954_0:
 .quad .Lx00954_0_s
.Lx00954_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00953_α:
 mov rdi, qword ptr [rip + .Lx00955_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain00842_n00956_α
 xchain00842_n00953_β:
 jmp xchain00842_n00957_α
.Lx00955_0:
 .quad .Lx00955_0_s
.Lx00955_0_s:
 .string "realcoerce"
 xchain00842_n00956_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6880]
 mov rdx, qword ptr [rbp + 6888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00958_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00958_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00958_3]
 lea rdx, [rip + .Lx00958_4]
 jmp rax
.Lx00958_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00958_2
.Lx00958_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00958_2
.Lx00958_1:
 call rt_faildescr@PLT
.Lx00958_2:
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je xchain00842_n00957_α
 jmp xchain00842_n00957_α
 xchain00842_n00956_β:
 jmp xchain00842_n00957_α
.Lx00958_0:
 .quad .Lx00958_0_s
.Lx00958_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00957_α:
 mov rdi, qword ptr [rip + .Lx00959_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain00842_n00960_α
 xchain00842_n00957_β:
 jmp xchain00842_n00961_α
.Lx00959_0:
 .quad .Lx00959_0_s
.Lx00959_0_s:
 .string "uplusr"
 xchain00842_n00960_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6800]
 mov rdx, qword ptr [rbp + 6808]
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
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain00842_n00961_α
 jmp xchain00842_n00961_α
 xchain00842_n00960_β:
 jmp xchain00842_n00961_α
.Lx00962_0:
 .quad .Lx00962_0_s
.Lx00962_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00961_α:
 mov rdi, qword ptr [rip + .Lx00963_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00842_n00008_α
 xchain00842_n00961_β:
 jmp xchain00842_n00964_α
.Lx00963_0:
 .quad .Lx00963_0_s
.Lx00963_0_s:
 .string "rtostring"
 xchain00842_n00008_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6720]
 mov rdx, qword ptr [rbp + 6728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00965_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00965_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00965_3]
 lea rdx, [rip + .Lx00965_4]
 jmp rax
.Lx00965_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00965_2
.Lx00965_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00965_2
.Lx00965_1:
 call rt_faildescr@PLT
.Lx00965_2:
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain00842_n00964_α
 jmp xchain00842_n00964_α
 xchain00842_n00008_β:
 jmp xchain00842_n00964_α
.Lx00965_0:
 .quad .Lx00965_0_s
.Lx00965_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00964_α:
 mov rdi, qword ptr [rip + .Lx00966_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain00842_n00967_α
 xchain00842_n00964_β:
 jmp xchain00842_n00968_α
.Lx00966_0:
 .quad .Lx00966_0_s
.Lx00966_0_s:
 .string "strcoercer"
 xchain00842_n00967_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6640]
 mov rdx, qword ptr [rbp + 6648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00969_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00969_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00969_3]
 lea rdx, [rip + .Lx00969_4]
 jmp rax
.Lx00969_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00969_2
.Lx00969_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00969_2
.Lx00969_1:
 call rt_faildescr@PLT
.Lx00969_2:
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain00842_n00968_α
 jmp xchain00842_n00968_α
 xchain00842_n00967_β:
 jmp xchain00842_n00968_α
.Lx00969_0:
 .quad .Lx00969_0_s
.Lx00969_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00968_α:
 mov rdi, qword ptr [rip + .Lx00970_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00842_n00971_α
 xchain00842_n00968_β:
 jmp xchain00842_n00972_α
.Lx00970_0:
 .quad .Lx00970_0_s
.Lx00970_0_s:
 .string "realcmp"
 xchain00842_n00971_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
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
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain00842_n00972_α
 jmp xchain00842_n00972_α
 xchain00842_n00971_β:
 jmp xchain00842_n00972_α
.Lx00973_0:
 .quad .Lx00973_0_s
.Lx00973_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00972_α:
 mov rdi, qword ptr [rip + .Lx00974_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain00842_n00009_α
 xchain00842_n00972_β:
 jmp xchain00842_n00975_α
.Lx00974_0:
 .quad .Lx00974_0_s
.Lx00974_0_s:
 .string "sqrtf"
 xchain00842_n00009_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6480]
 mov rdx, qword ptr [rbp + 6488]
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
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain00842_n00975_α
 jmp xchain00842_n00975_α
 xchain00842_n00009_β:
 jmp xchain00842_n00975_α
.Lx00976_0:
 .quad .Lx00976_0_s
.Lx00976_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00975_α:
 mov rdi, qword ptr [rip + .Lx00977_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00842_n00978_α
 xchain00842_n00975_β:
 jmp xchain00842_n00010_α
.Lx00977_0:
 .quad .Lx00977_0_s
.Lx00977_0_s:
 .string "cosf"
 xchain00842_n00978_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6400]
 mov rdx, qword ptr [rbp + 6408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00979_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00979_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00979_3]
 lea rdx, [rip + .Lx00979_4]
 jmp rax
.Lx00979_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00979_2
.Lx00979_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00979_2
.Lx00979_1:
 call rt_faildescr@PLT
.Lx00979_2:
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain00842_n00010_α
 jmp xchain00842_n00010_α
 xchain00842_n00978_β:
 jmp xchain00842_n00010_α
.Lx00979_0:
 .quad .Lx00979_0_s
.Lx00979_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00010_α:
 mov rdi, qword ptr [rip + .Lx00980_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00842_n00981_α
 xchain00842_n00010_β:
 jmp xchain00842_n00982_α
.Lx00980_0:
 .quad .Lx00980_0_s
.Lx00980_0_s:
 .string "logf"
 xchain00842_n00981_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6320]
 mov rdx, qword ptr [rbp + 6328]
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
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain00842_n00982_α
 jmp xchain00842_n00982_α
 xchain00842_n00981_β:
 jmp xchain00842_n00982_α
.Lx00983_0:
 .quad .Lx00983_0_s
.Lx00983_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00982_α:
 mov rdi, qword ptr [rip + .Lx00984_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00842_n00011_α
 xchain00842_n00982_β:
 jmp xchain00842_n00985_α
.Lx00984_0:
 .quad .Lx00984_0_s
.Lx00984_0_s:
 .string "charf"
 xchain00842_n00011_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
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
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00842_n00985_α
 jmp xchain00842_n00985_α
 xchain00842_n00011_β:
 jmp xchain00842_n00985_α
.Lx00986_0:
 .quad .Lx00986_0_s
.Lx00986_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00985_α:
 mov rdi, qword ptr [rip + .Lx00987_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain00842_n00012_α
 xchain00842_n00985_β:
 jmp xchain00842_n00988_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "ordf"
 xchain00842_n00012_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
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
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain00842_n00988_α
 jmp xchain00842_n00988_α
 xchain00842_n00012_β:
 jmp xchain00842_n00988_α
.Lx00989_0:
 .quad .Lx00989_0_s
.Lx00989_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00988_α:
 mov rdi, qword ptr [rip + .Lx00990_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00842_n00013_α
 xchain00842_n00988_β:
 jmp xchain00842_n00991_α
.Lx00990_0:
 .quad .Lx00990_0_s
.Lx00990_0_s:
 .string "strsize"
 xchain00842_n00013_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6080]
 mov rdx, qword ptr [rbp + 6088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00992_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00992_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00992_3]
 lea rdx, [rip + .Lx00992_4]
 jmp rax
.Lx00992_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00992_2
.Lx00992_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00992_2
.Lx00992_1:
 call rt_faildescr@PLT
.Lx00992_2:
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 cmp eax, 99
 je xchain00842_n00991_α
 jmp xchain00842_n00991_α
 xchain00842_n00013_β:
 jmp xchain00842_n00991_α
.Lx00992_0:
 .quad .Lx00992_0_s
.Lx00992_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00991_α:
 mov rdi, qword ptr [rip + .Lx00993_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00842_n00994_α
 xchain00842_n00991_β:
 jmp xchain00842_n00995_α
.Lx00993_0:
 .quad .Lx00993_0_s
.Lx00993_0_s:
 .string "strpick"
 xchain00842_n00994_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6000]
 mov rdx, qword ptr [rbp + 6008]
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
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 cmp eax, 99
 je xchain00842_n00995_α
 jmp xchain00842_n00995_α
 xchain00842_n00994_β:
 jmp xchain00842_n00995_α
.Lx00996_0:
 .quad .Lx00996_0_s
.Lx00996_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00995_α:
 mov rdi, qword ptr [rip + .Lx00997_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain00842_n00998_α
 xchain00842_n00995_β:
 jmp xchain00842_n00014_α
.Lx00997_0:
 .quad .Lx00997_0_s
.Lx00997_0_s:
 .string "strbang"
 xchain00842_n00998_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5920]
 mov rdx, qword ptr [rbp + 5928]
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
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain00842_n00014_α
 jmp xchain00842_n00014_α
 xchain00842_n00998_β:
 jmp xchain00842_n00014_α
.Lx00999_0:
 .quad .Lx00999_0_s
.Lx00999_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00014_α:
 mov rdi, qword ptr [rip + .Lx01000_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00842_n00015_α
 xchain00842_n00014_β:
 jmp xchain00842_n01001_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "strsub"
 xchain00842_n00015_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
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
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain00842_n01001_α
 jmp xchain00842_n01001_α
 xchain00842_n00015_β:
 jmp xchain00842_n01001_α
.Lx01002_0:
 .quad .Lx01002_0_s
.Lx01002_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01001_α:
 mov rdi, qword ptr [rip + .Lx01003_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain00842_n00016_α
 xchain00842_n01001_β:
 jmp xchain00842_n00017_α
.Lx01003_0:
 .quad .Lx01003_0_s
.Lx01003_0_s:
 .string "substr"
 xchain00842_n00016_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5760]
 mov rdx, qword ptr [rbp + 5768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01004_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01004_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01004_3]
 lea rdx, [rip + .Lx01004_4]
 jmp rax
.Lx01004_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01004_2
.Lx01004_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01004_2
.Lx01004_1:
 call rt_faildescr@PLT
.Lx01004_2:
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain00842_n00017_α
 jmp xchain00842_n00017_α
 xchain00842_n00016_β:
 jmp xchain00842_n00017_α
.Lx01004_0:
 .quad .Lx01004_0_s
.Lx01004_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00017_α:
 mov rdi, qword ptr [rip + .Lx01005_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain00842_n01006_α
 xchain00842_n00017_β:
 jmp xchain00842_n01007_α
.Lx01005_0:
 .quad .Lx01005_0_s
.Lx01005_0_s:
 .string "subsasg"
 xchain00842_n01006_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5680]
 mov rdx, qword ptr [rbp + 5688]
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
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain00842_n01007_α
 jmp xchain00842_n01007_α
 xchain00842_n01006_β:
 jmp xchain00842_n01007_α
.Lx01008_0:
 .quad .Lx01008_0_s
.Lx01008_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01007_α:
 mov rdi, qword ptr [rip + .Lx01009_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00842_n00018_α
 xchain00842_n01007_β:
 jmp xchain00842_n01010_α
.Lx01009_0:
 .quad .Lx01009_0_s
.Lx01009_0_s:
 .string "strcmp"
 xchain00842_n00018_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5600]
 mov rdx, qword ptr [rbp + 5608]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01011_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01011_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01011_3]
 lea rdx, [rip + .Lx01011_4]
 jmp rax
.Lx01011_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01011_2
.Lx01011_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01011_2
.Lx01011_1:
 call rt_faildescr@PLT
.Lx01011_2:
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain00842_n01010_α
 jmp xchain00842_n01010_α
 xchain00842_n00018_β:
 jmp xchain00842_n01010_α
.Lx01011_0:
 .quad .Lx01011_0_s
.Lx01011_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01010_α:
 mov rdi, qword ptr [rip + .Lx01012_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain00842_n01013_α
 xchain00842_n01010_β:
 jmp xchain00842_n01014_α
.Lx01012_0:
 .quad .Lx01012_0_s
.Lx01012_0_s:
 .string "strident"
 xchain00842_n01013_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5520]
 mov rdx, qword ptr [rbp + 5528]
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
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain00842_n01014_α
 jmp xchain00842_n01014_α
 xchain00842_n01013_β:
 jmp xchain00842_n01014_α
.Lx01015_0:
 .quad .Lx01015_0_s
.Lx01015_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01014_α:
 mov rdi, qword ptr [rip + .Lx01016_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain00842_n01017_α
 xchain00842_n01014_β:
 jmp xchain00842_n00019_α
.Lx01016_0:
 .quad .Lx01016_0_s
.Lx01016_0_s:
 .string "concat"
 xchain00842_n01017_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5440]
 mov rdx, qword ptr [rbp + 5448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01018_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01018_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01018_3]
 lea rdx, [rip + .Lx01018_4]
 jmp rax
.Lx01018_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01018_2
.Lx01018_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01018_2
.Lx01018_1:
 call rt_faildescr@PLT
.Lx01018_2:
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain00842_n00019_α
 jmp xchain00842_n00019_α
 xchain00842_n01017_β:
 jmp xchain00842_n00019_α
.Lx01018_0:
 .quad .Lx01018_0_s
.Lx01018_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00019_α:
 mov rdi, qword ptr [rip + .Lx01019_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain00842_n01020_α
 xchain00842_n00019_β:
 jmp xchain00842_n01021_α
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "reversef"
 xchain00842_n01020_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
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
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain00842_n01021_α
 jmp xchain00842_n01021_α
 xchain00842_n01020_β:
 jmp xchain00842_n01021_α
.Lx01022_0:
 .quad .Lx01022_0_s
.Lx01022_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01021_α:
 mov rdi, qword ptr [rip + .Lx01023_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain00842_n01024_α
 xchain00842_n01021_β:
 jmp xchain00842_n00020_α
.Lx01023_0:
 .quad .Lx01023_0_s
.Lx01023_0_s:
 .string "trimf"
 xchain00842_n01024_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
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
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain00842_n00020_α
 jmp xchain00842_n00020_α
 xchain00842_n01024_β:
 jmp xchain00842_n00020_α
.Lx01025_0:
 .quad .Lx01025_0_s
.Lx01025_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00020_α:
 mov rdi, qword ptr [rip + .Lx01026_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain00842_n00021_α
 xchain00842_n00020_β:
 jmp xchain00842_n01027_α
.Lx01026_0:
 .quad .Lx01026_0_s
.Lx01026_0_s:
 .string "replf"
 xchain00842_n00021_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5200]
 mov rdx, qword ptr [rbp + 5208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01028_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01028_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01028_3]
 lea rdx, [rip + .Lx01028_4]
 jmp rax
.Lx01028_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01028_2
.Lx01028_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01028_2
.Lx01028_1:
 call rt_faildescr@PLT
.Lx01028_2:
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain00842_n01027_α
 jmp xchain00842_n01027_α
 xchain00842_n00021_β:
 jmp xchain00842_n01027_α
.Lx01028_0:
 .quad .Lx01028_0_s
.Lx01028_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01027_α:
 mov rdi, qword ptr [rip + .Lx01029_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain00842_n01030_α
 xchain00842_n01027_β:
 jmp xchain00842_n01031_α
.Lx01029_0:
 .quad .Lx01029_0_s
.Lx01029_0_s:
 .string "leftf"
 xchain00842_n01030_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
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
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain00842_n01031_α
 jmp xchain00842_n01031_α
 xchain00842_n01030_β:
 jmp xchain00842_n01031_α
.Lx01032_0:
 .quad .Lx01032_0_s
.Lx01032_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01031_α:
 mov rdi, qword ptr [rip + .Lx01033_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain00842_n01034_α
 xchain00842_n01031_β:
 jmp xchain00842_n00022_α
.Lx01033_0:
 .quad .Lx01033_0_s
.Lx01033_0_s:
 .string "centerf"
 xchain00842_n01034_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
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
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain00842_n00022_α
 jmp xchain00842_n00022_α
 xchain00842_n01034_β:
 jmp xchain00842_n00022_α
.Lx01035_0:
 .quad .Lx01035_0_s
.Lx01035_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00022_α:
 mov rdi, qword ptr [rip + .Lx01036_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain00842_n00023_α
 xchain00842_n00022_β:
 jmp xchain00842_n00024_α
.Lx01036_0:
 .quad .Lx01036_0_s
.Lx01036_0_s:
 .string "rightf"
 xchain00842_n00023_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01037_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01037_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01037_3]
 lea rdx, [rip + .Lx01037_4]
 jmp rax
.Lx01037_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01037_2
.Lx01037_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01037_2
.Lx01037_1:
 call rt_faildescr@PLT
.Lx01037_2:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain00842_n00024_α
 jmp xchain00842_n00024_α
 xchain00842_n00023_β:
 jmp xchain00842_n00024_α
.Lx01037_0:
 .quad .Lx01037_0_s
.Lx01037_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00024_α:
 mov rdi, qword ptr [rip + .Lx01038_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain00842_n01039_α
 xchain00842_n00024_β:
 jmp xchain00842_n01040_α
.Lx01038_0:
 .quad .Lx01038_0_s
.Lx01038_0_s:
 .string "entabf"
 xchain00842_n01039_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
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
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp eax, 99
 je xchain00842_n01040_α
 jmp xchain00842_n01040_α
 xchain00842_n01039_β:
 jmp xchain00842_n01040_α
.Lx01041_0:
 .quad .Lx01041_0_s
.Lx01041_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01040_α:
 mov rdi, qword ptr [rip + .Lx01042_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00842_n01043_α
 xchain00842_n01040_β:
 jmp xchain00842_n00025_α
.Lx01042_0:
 .quad .Lx01042_0_s
.Lx01042_0_s:
 .string "detabf"
 xchain00842_n01043_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
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
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain00842_n00025_α
 jmp xchain00842_n00025_α
 xchain00842_n01043_β:
 jmp xchain00842_n00025_α
.Lx01044_0:
 .quad .Lx01044_0_s
.Lx01044_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00025_α:
 mov rdi, qword ptr [rip + .Lx01045_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00842_n00026_α
 xchain00842_n00025_β:
 jmp xchain00842_n01046_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "mapf"
 xchain00842_n00026_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01047_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01047_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01047_3]
 lea rdx, [rip + .Lx01047_4]
 jmp rax
.Lx01047_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01047_2
.Lx01047_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01047_2
.Lx01047_1:
 call rt_faildescr@PLT
.Lx01047_2:
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain00842_n01046_α
 jmp xchain00842_n01046_α
 xchain00842_n00026_β:
 jmp xchain00842_n01046_α
.Lx01047_0:
 .quad .Lx01047_0_s
.Lx01047_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01046_α:
 mov rdi, qword ptr [rip + .Lx01048_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00842_n01049_α
 xchain00842_n01046_β:
 jmp xchain00842_n01050_α
.Lx01048_0:
 .quad .Lx01048_0_s
.Lx01048_0_s:
 .string "map1"
 xchain00842_n01049_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
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
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain00842_n01050_α
 jmp xchain00842_n01050_α
 xchain00842_n01049_β:
 jmp xchain00842_n01050_α
.Lx01051_0:
 .quad .Lx01051_0_s
.Lx01051_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01050_α:
 mov rdi, qword ptr [rip + .Lx01052_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00842_n01053_α
 xchain00842_n01050_β:
 jmp xchain00842_n00027_α
.Lx01052_0:
 .quad .Lx01052_0_s
.Lx01052_0_s:
 .string "map2"
 xchain00842_n01053_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
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
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain00842_n00027_α
 jmp xchain00842_n00027_α
 xchain00842_n01053_β:
 jmp xchain00842_n00027_α
.Lx01054_0:
 .quad .Lx01054_0_s
.Lx01054_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00027_α:
 mov rdi, qword ptr [rip + .Lx01055_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00842_n00028_α
 xchain00842_n00027_β:
 jmp xchain00842_n00029_α
.Lx01055_0:
 .quad .Lx01055_0_s
.Lx01055_0_s:
 .string "tablemap"
 xchain00842_n00028_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01056_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01056_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01056_3]
 lea rdx, [rip + .Lx01056_4]
 jmp rax
.Lx01056_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01056_2
.Lx01056_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01056_2
.Lx01056_1:
 call rt_faildescr@PLT
.Lx01056_2:
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain00842_n00029_α
 jmp xchain00842_n00029_α
 xchain00842_n00028_β:
 jmp xchain00842_n00029_α
.Lx01056_0:
 .quad .Lx01056_0_s
.Lx01056_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00029_α:
 mov rdi, qword ptr [rip + .Lx01057_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00842_n01058_α
 xchain00842_n00029_β:
 jmp xchain00842_n01059_α
.Lx01057_0:
 .quad .Lx01057_0_s
.Lx01057_0_s:
 .string "listmap"
 xchain00842_n01058_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
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
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain00842_n01059_α
 jmp xchain00842_n01059_α
 xchain00842_n01058_β:
 jmp xchain00842_n01059_α
.Lx01060_0:
 .quad .Lx01060_0_s
.Lx01060_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01059_α:
 mov rdi, qword ptr [rip + .Lx01061_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain00842_n01062_α
 xchain00842_n01059_β:
 jmp xchain00842_n00030_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "nullscan"
 xchain00842_n01062_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
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
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je xchain00842_n00030_α
 jmp xchain00842_n00030_α
 xchain00842_n01062_β:
 jmp xchain00842_n00030_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00030_α:
 mov rdi, qword ptr [rip + .Lx01064_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00842_n00031_α
 xchain00842_n00030_β:
 jmp xchain00842_n01065_α
.Lx01064_0:
 .quad .Lx01064_0_s
.Lx01064_0_s:
 .string "movef"
 xchain00842_n00031_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01066_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01066_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01066_3]
 lea rdx, [rip + .Lx01066_4]
 jmp rax
.Lx01066_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01066_2
.Lx01066_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01066_2
.Lx01066_1:
 call rt_faildescr@PLT
.Lx01066_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain00842_n01065_α
 jmp xchain00842_n01065_α
 xchain00842_n00031_β:
 jmp xchain00842_n01065_α
.Lx01066_0:
 .quad .Lx01066_0_s
.Lx01066_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01065_α:
 mov rdi, qword ptr [rip + .Lx01067_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00842_n01068_α
 xchain00842_n01065_β:
 jmp xchain00842_n01069_α
.Lx01067_0:
 .quad .Lx01067_0_s
.Lx01067_0_s:
 .string "mov11"
 xchain00842_n01068_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4160]
 mov rdx, qword ptr [rbp + 4168]
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
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00842_n01069_α
 jmp xchain00842_n01069_α
 xchain00842_n01068_β:
 jmp xchain00842_n01069_α
.Lx01070_0:
 .quad .Lx01070_0_s
.Lx01070_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01069_α:
 mov rdi, qword ptr [rip + .Lx01071_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00842_n01072_α
 xchain00842_n01069_β:
 jmp xchain00842_n00032_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "pos11"
 xchain00842_n01072_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
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
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain00842_n00032_α
 jmp xchain00842_n00032_α
 xchain00842_n01072_β:
 jmp xchain00842_n00032_α
.Lx01073_0:
 .quad .Lx01073_0_s
.Lx01073_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00032_α:
 mov rdi, qword ptr [rip + .Lx01074_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00842_n00033_α
 xchain00842_n00032_β:
 jmp xchain00842_n00034_α
.Lx01074_0:
 .quad .Lx01074_0_s
.Lx01074_0_s:
 .string "tabf"
 xchain00842_n00033_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01075_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01075_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01075_3]
 lea rdx, [rip + .Lx01075_4]
 jmp rax
.Lx01075_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01075_2
.Lx01075_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01075_2
.Lx01075_1:
 call rt_faildescr@PLT
.Lx01075_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00842_n00034_α
 jmp xchain00842_n00034_α
 xchain00842_n00033_β:
 jmp xchain00842_n00034_α
.Lx01075_0:
 .quad .Lx01075_0_s
.Lx01075_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00034_α:
 mov rdi, qword ptr [rip + .Lx01076_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain00842_n01077_α
 xchain00842_n00034_β:
 jmp xchain00842_n01078_α
.Lx01076_0:
 .quad .Lx01076_0_s
.Lx01076_0_s:
 .string "matchf"
 xchain00842_n01077_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
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
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain00842_n01078_α
 jmp xchain00842_n01078_α
 xchain00842_n01077_β:
 jmp xchain00842_n01078_α
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01078_α:
 mov rdi, qword ptr [rip + .Lx01080_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00842_n01081_α
 xchain00842_n01078_β:
 jmp xchain00842_n00035_α
.Lx01080_0:
 .quad .Lx01080_0_s
.Lx01080_0_s:
 .string "tabmat"
 xchain00842_n01081_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3840]
 mov rdx, qword ptr [rbp + 3848]
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
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je xchain00842_n00035_α
 jmp xchain00842_n00035_α
 xchain00842_n01081_β:
 jmp xchain00842_n00035_α
.Lx01082_0:
 .quad .Lx01082_0_s
.Lx01082_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00035_α:
 mov rdi, qword ptr [rip + .Lx01083_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00842_n00036_α
 xchain00842_n00035_β:
 jmp xchain00842_n01084_α
.Lx01083_0:
 .quad .Lx01083_0_s
.Lx01083_0_s:
 .string "posf"
 xchain00842_n00036_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01085_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01085_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01085_3]
 lea rdx, [rip + .Lx01085_4]
 jmp rax
.Lx01085_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01085_2
.Lx01085_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01085_2
.Lx01085_1:
 call rt_faildescr@PLT
.Lx01085_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain00842_n01084_α
 jmp xchain00842_n01084_α
 xchain00842_n00036_β:
 jmp xchain00842_n01084_α
.Lx01085_0:
 .quad .Lx01085_0_s
.Lx01085_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01084_α:
 mov rdi, qword ptr [rip + .Lx01086_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain00842_n01087_α
 xchain00842_n01084_β:
 jmp xchain00842_n01088_α
.Lx01086_0:
 .quad .Lx01086_0_s
.Lx01086_0_s:
 .string "anyf"
 xchain00842_n01087_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
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
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain00842_n01088_α
 jmp xchain00842_n01088_α
 xchain00842_n01087_β:
 jmp xchain00842_n01088_α
.Lx01089_0:
 .quad .Lx01089_0_s
.Lx01089_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01088_α:
 mov rdi, qword ptr [rip + .Lx01090_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00842_n01091_α
 xchain00842_n01088_β:
 jmp xchain00842_n00037_α
.Lx01090_0:
 .quad .Lx01090_0_s
.Lx01090_0_s:
 .string "manyf"
 xchain00842_n01091_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
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
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain00842_n00037_α
 jmp xchain00842_n00037_α
 xchain00842_n01091_β:
 jmp xchain00842_n00037_α
.Lx01092_0:
 .quad .Lx01092_0_s
.Lx01092_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00037_α:
 mov rdi, qword ptr [rip + .Lx01093_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain00842_n00038_α
 xchain00842_n00037_β:
 jmp xchain00842_n01094_α
.Lx01093_0:
 .quad .Lx01093_0_s
.Lx01093_0_s:
 .string "uptof"
 xchain00842_n00038_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3520]
 mov rdx, qword ptr [rbp + 3528]
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
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain00842_n01094_α
 jmp xchain00842_n01094_α
 xchain00842_n00038_β:
 jmp xchain00842_n01094_α
.Lx01095_0:
 .quad .Lx01095_0_s
.Lx01095_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01094_α:
 mov rdi, qword ptr [rip + .Lx01096_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00842_n01097_α
 xchain00842_n01094_β:
 jmp xchain00842_n00039_α
.Lx01096_0:
 .quad .Lx01096_0_s
.Lx01096_0_s:
 .string "findf"
 xchain00842_n01097_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01098_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01098_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01098_3]
 lea rdx, [rip + .Lx01098_4]
 jmp rax
.Lx01098_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01098_2
.Lx01098_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01098_2
.Lx01098_1:
 call rt_faildescr@PLT
.Lx01098_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00842_n00039_α
 jmp xchain00842_n00039_α
 xchain00842_n01097_β:
 jmp xchain00842_n00039_α
.Lx01098_0:
 .quad .Lx01098_0_s
.Lx01098_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00039_α:
 mov rdi, qword ptr [rip + .Lx01099_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00842_n01100_α
 xchain00842_n00039_β:
 jmp xchain00842_n01101_α
.Lx01099_0:
 .quad .Lx01099_0_s
.Lx01099_0_s:
 .string "balf"
 xchain00842_n01100_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
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
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain00842_n01101_α
 jmp xchain00842_n01101_α
 xchain00842_n01100_β:
 jmp xchain00842_n01101_α
.Lx01102_0:
 .quad .Lx01102_0_s
.Lx01102_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01101_α:
 mov rdi, qword ptr [rip + .Lx01103_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00842_n01104_α
 xchain00842_n01101_β:
 jmp xchain00842_n00040_α
.Lx01103_0:
 .quad .Lx01103_0_s
.Lx01103_0_s:
 .string "tocset"
 xchain00842_n01104_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
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
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain00842_n00040_α
 jmp xchain00842_n00040_α
 xchain00842_n01104_β:
 jmp xchain00842_n00040_α
.Lx01105_0:
 .quad .Lx01105_0_s
.Lx01105_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00040_α:
 mov rdi, qword ptr [rip + .Lx01106_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00842_n00041_α
 xchain00842_n00040_β:
 jmp xchain00842_n01107_α
.Lx01106_0:
 .quad .Lx01106_0_s
.Lx01106_0_s:
 .string "cssize"
 xchain00842_n00041_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01108_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01108_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01108_3]
 lea rdx, [rip + .Lx01108_4]
 jmp rax
.Lx01108_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01108_2
.Lx01108_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01108_2
.Lx01108_1:
 call rt_faildescr@PLT
.Lx01108_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain00842_n01107_α
 jmp xchain00842_n01107_α
 xchain00842_n00041_β:
 jmp xchain00842_n01107_α
.Lx01108_0:
 .quad .Lx01108_0_s
.Lx01108_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01107_α:
 mov rdi, qword ptr [rip + .Lx01109_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00842_n01110_α
 xchain00842_n01107_β:
 jmp xchain00842_n01111_α
.Lx01109_0:
 .quad .Lx01109_0_s
.Lx01109_0_s:
 .string "cscompl"
 xchain00842_n01110_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
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
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00842_n01111_α
 jmp xchain00842_n01111_α
 xchain00842_n01110_β:
 jmp xchain00842_n01111_α
.Lx01112_0:
 .quad .Lx01112_0_s
.Lx01112_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01111_α:
 mov rdi, qword ptr [rip + .Lx01113_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00842_n01114_α
 xchain00842_n01111_β:
 jmp xchain00842_n00042_α
.Lx01113_0:
 .quad .Lx01113_0_s
.Lx01113_0_s:
 .string "lcreate"
 xchain00842_n01114_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
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
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00842_n00042_α
 jmp xchain00842_n00042_α
 xchain00842_n01114_β:
 jmp xchain00842_n00042_α
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00042_α:
 mov rdi, qword ptr [rip + .Lx01116_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00842_n00043_α
 xchain00842_n00042_β:
 jmp xchain00842_n00044_α
.Lx01116_0:
 .quad .Lx01116_0_s
.Lx01116_0_s:
 .string "lconst"
 xchain00842_n00043_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
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
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain00842_n00044_α
 jmp xchain00842_n00044_α
 xchain00842_n00043_β:
 jmp xchain00842_n00044_α
.Lx01117_0:
 .quad .Lx01117_0_s
.Lx01117_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00044_α:
 mov rdi, qword ptr [rip + .Lx01118_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00842_n00045_α
 xchain00842_n00044_β:
 jmp xchain00842_n00046_α
.Lx01118_0:
 .quad .Lx01118_0_s
.Lx01118_0_s:
 .string "lcopy"
 xchain00842_n00045_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01119_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01119_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01119_3]
 lea rdx, [rip + .Lx01119_4]
 jmp rax
.Lx01119_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01119_2
.Lx01119_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01119_2
.Lx01119_1:
 call rt_faildescr@PLT
.Lx01119_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain00842_n00046_α
 jmp xchain00842_n00046_α
 xchain00842_n00045_β:
 jmp xchain00842_n00046_α
.Lx01119_0:
 .quad .Lx01119_0_s
.Lx01119_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00046_α:
 mov rdi, qword ptr [rip + .Lx01120_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00842_n01121_α
 xchain00842_n00046_β:
 jmp xchain00842_n01122_α
.Lx01120_0:
 .quad .Lx01120_0_s
.Lx01120_0_s:
 .string "lsort"
 xchain00842_n01121_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
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
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain00842_n01122_α
 jmp xchain00842_n01122_α
 xchain00842_n01121_β:
 jmp xchain00842_n01122_α
.Lx01123_0:
 .quad .Lx01123_0_s
.Lx01123_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01122_α:
 mov rdi, qword ptr [rip + .Lx01124_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00842_n01125_α
 xchain00842_n01122_β:
 jmp xchain00842_n00047_α
.Lx01124_0:
 .quad .Lx01124_0_s
.Lx01124_0_s:
 .string "lsize"
 xchain00842_n01125_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
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
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain00842_n00047_α
 jmp xchain00842_n00047_α
 xchain00842_n01125_β:
 jmp xchain00842_n00047_α
.Lx01126_0:
 .quad .Lx01126_0_s
.Lx01126_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00047_α:
 mov rdi, qword ptr [rip + .Lx01127_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00842_n00048_α
 xchain00842_n00047_β:
 jmp xchain00842_n01128_α
.Lx01127_0:
 .quad .Lx01127_0_s
.Lx01127_0_s:
 .string "lpick"
 xchain00842_n00048_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01129_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01129_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01129_3]
 lea rdx, [rip + .Lx01129_4]
 jmp rax
.Lx01129_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01129_2
.Lx01129_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01129_2
.Lx01129_1:
 call rt_faildescr@PLT
.Lx01129_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain00842_n01128_α
 jmp xchain00842_n01128_α
 xchain00842_n00048_β:
 jmp xchain00842_n01128_α
.Lx01129_0:
 .quad .Lx01129_0_s
.Lx01129_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01128_α:
 mov rdi, qword ptr [rip + .Lx01130_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00842_n01131_α
 xchain00842_n01128_β:
 jmp xchain00842_n01132_α
.Lx01130_0:
 .quad .Lx01130_0_s
.Lx01130_0_s:
 .string "lbang"
 xchain00842_n01131_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
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
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain00842_n01132_α
 jmp xchain00842_n01132_α
 xchain00842_n01131_β:
 jmp xchain00842_n01132_α
.Lx01133_0:
 .quad .Lx01133_0_s
.Lx01133_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01132_α:
 mov rdi, qword ptr [rip + .Lx01134_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00842_n01135_α
 xchain00842_n01132_β:
 jmp xchain00842_n00049_α
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "lsubscr"
 xchain00842_n01135_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2480]
 mov rdx, qword ptr [rbp + 2488]
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
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain00842_n00049_α
 jmp xchain00842_n00049_α
 xchain00842_n01135_β:
 jmp xchain00842_n00049_α
.Lx01136_0:
 .quad .Lx01136_0_s
.Lx01136_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00049_α:
 mov rdi, qword ptr [rip + .Lx01137_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00842_n00050_α
 xchain00842_n00049_β:
 jmp xchain00842_n00051_α
.Lx01137_0:
 .quad .Lx01137_0_s
.Lx01137_0_s:
 .string "put1get1"
 xchain00842_n00050_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
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
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00842_n00051_α
 jmp xchain00842_n00051_α
 xchain00842_n00050_β:
 jmp xchain00842_n00051_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00051_α:
 mov rdi, qword ptr [rip + .Lx01139_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00842_n00052_α
 xchain00842_n00051_β:
 jmp xchain00842_n00053_α
.Lx01139_0:
 .quad .Lx01139_0_s
.Lx01139_0_s:
 .string "put2get2"
 xchain00842_n00052_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01140_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01140_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01140_3]
 lea rdx, [rip + .Lx01140_4]
 jmp rax
.Lx01140_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01140_2
.Lx01140_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01140_2
.Lx01140_1:
 call rt_faildescr@PLT
.Lx01140_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00842_n00053_α
 jmp xchain00842_n00053_α
 xchain00842_n00052_β:
 jmp xchain00842_n00053_α
.Lx01140_0:
 .quad .Lx01140_0_s
.Lx01140_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00053_α:
 mov rdi, qword ptr [rip + .Lx01141_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00842_n01142_α
 xchain00842_n00053_β:
 jmp xchain00842_n01143_α
.Lx01141_0:
 .quad .Lx01141_0_s
.Lx01141_0_s:
 .string "put3get3"
 xchain00842_n01142_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2240]
 mov rdx, qword ptr [rbp + 2248]
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
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain00842_n01143_α
 jmp xchain00842_n01143_α
 xchain00842_n01142_β:
 jmp xchain00842_n01143_α
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01143_α:
 mov rdi, qword ptr [rip + .Lx01145_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00842_n01146_α
 xchain00842_n01143_β:
 jmp xchain00842_n00054_α
.Lx01145_0:
 .quad .Lx01145_0_s
.Lx01145_0_s:
 .string "put4get4"
 xchain00842_n01146_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
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
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain00842_n00054_α
 jmp xchain00842_n00054_α
 xchain00842_n01146_β:
 jmp xchain00842_n00054_α
.Lx01147_0:
 .quad .Lx01147_0_s
.Lx01147_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00054_α:
 mov rdi, qword ptr [rip + .Lx01148_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00842_n00055_α
 xchain00842_n00054_β:
 jmp xchain00842_n01149_α
.Lx01148_0:
 .quad .Lx01148_0_s
.Lx01148_0_s:
 .string "pushpop"
 xchain00842_n00055_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01150_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01150_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01150_3]
 lea rdx, [rip + .Lx01150_4]
 jmp rax
.Lx01150_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01150_2
.Lx01150_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01150_2
.Lx01150_1:
 call rt_faildescr@PLT
.Lx01150_2:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain00842_n01149_α
 jmp xchain00842_n01149_α
 xchain00842_n00055_β:
 jmp xchain00842_n01149_α
.Lx01150_0:
 .quad .Lx01150_0_s
.Lx01150_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01149_α:
 mov rdi, qword ptr [rip + .Lx01151_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00842_n01152_α
 xchain00842_n01149_β:
 jmp xchain00842_n01153_α
.Lx01151_0:
 .quad .Lx01151_0_s
.Lx01151_0_s:
 .string "putget12"
 xchain00842_n01152_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
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
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain00842_n01153_α
 jmp xchain00842_n01153_α
 xchain00842_n01152_β:
 jmp xchain00842_n01153_α
.Lx01154_0:
 .quad .Lx01154_0_s
.Lx01154_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01153_α:
 mov rdi, qword ptr [rip + .Lx01155_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00842_n01156_α
 xchain00842_n01153_β:
 jmp xchain00842_n00056_α
.Lx01155_0:
 .quad .Lx01155_0_s
.Lx01155_0_s:
 .string "pushpop12"
 xchain00842_n01156_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
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
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain00842_n00056_α
 jmp xchain00842_n00056_α
 xchain00842_n01156_β:
 jmp xchain00842_n00056_α
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00056_α:
 mov rdi, qword ptr [rip + .Lx01158_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00842_n00057_α
 xchain00842_n00056_β:
 jmp xchain00842_n00058_α
.Lx01158_0:
 .quad .Lx01158_0_s
.Lx01158_0_s:
 .string "setcreate"
 xchain00842_n00057_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
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
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00842_n00058_α
 jmp xchain00842_n00058_α
 xchain00842_n00057_β:
 jmp xchain00842_n00058_α
.Lx01159_0:
 .quad .Lx01159_0_s
.Lx01159_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00058_α:
 mov rdi, qword ptr [rip + .Lx01160_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00842_n01161_α
 xchain00842_n00058_β:
 jmp xchain00842_n00059_α
.Lx01160_0:
 .quad .Lx01160_0_s
.Lx01160_0_s:
 .string "setcopy"
 xchain00842_n01161_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01162_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01162_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01162_3]
 lea rdx, [rip + .Lx01162_4]
 jmp rax
.Lx01162_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01162_2
.Lx01162_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01162_2
.Lx01162_1:
 call rt_faildescr@PLT
.Lx01162_2:
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain00842_n00059_α
 jmp xchain00842_n00059_α
 xchain00842_n01161_β:
 jmp xchain00842_n00059_α
.Lx01162_0:
 .quad .Lx01162_0_s
.Lx01162_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00059_α:
 mov rdi, qword ptr [rip + .Lx01163_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00842_n01164_α
 xchain00842_n00059_β:
 jmp xchain00842_n01165_α
.Lx01163_0:
 .quad .Lx01163_0_s
.Lx01163_0_s:
 .string "setmember"
 xchain00842_n01164_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
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
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00842_n01165_α
 jmp xchain00842_n01165_α
 xchain00842_n01164_β:
 jmp xchain00842_n01165_α
.Lx01166_0:
 .quad .Lx01166_0_s
.Lx01166_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01165_α:
 mov rdi, qword ptr [rip + .Lx01167_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00842_n01168_α
 xchain00842_n01165_β:
 jmp xchain00842_n00060_α
.Lx01167_0:
 .quad .Lx01167_0_s
.Lx01167_0_s:
 .string "setinsert"
 xchain00842_n01168_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
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
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00842_n00060_α
 jmp xchain00842_n00060_α
 xchain00842_n01168_β:
 jmp xchain00842_n00060_α
.Lx01169_0:
 .quad .Lx01169_0_s
.Lx01169_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00060_α:
 mov rdi, qword ptr [rip + .Lx01170_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00842_n00061_α
 xchain00842_n00060_β:
 jmp xchain00842_n01171_α
.Lx01170_0:
 .quad .Lx01170_0_s
.Lx01170_0_s:
 .string "setinsdel"
 xchain00842_n00061_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01172_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01172_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01172_3]
 lea rdx, [rip + .Lx01172_4]
 jmp rax
.Lx01172_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01172_2
.Lx01172_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01172_2
.Lx01172_1:
 call rt_faildescr@PLT
.Lx01172_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00842_n01171_α
 jmp xchain00842_n01171_α
 xchain00842_n00061_β:
 jmp xchain00842_n01171_α
.Lx01172_0:
 .quad .Lx01172_0_s
.Lx01172_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01171_α:
 mov rdi, qword ptr [rip + .Lx01173_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00842_n01174_α
 xchain00842_n01171_β:
 jmp xchain00842_n01175_α
.Lx01173_0:
 .quad .Lx01173_0_s
.Lx01173_0_s:
 .string "setbang"
 xchain00842_n01174_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
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
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00842_n01175_α
 jmp xchain00842_n01175_α
 xchain00842_n01174_β:
 jmp xchain00842_n01175_α
.Lx01176_0:
 .quad .Lx01176_0_s
.Lx01176_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01175_α:
 mov rdi, qword ptr [rip + .Lx01177_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00842_n01178_α
 xchain00842_n01175_β:
 jmp xchain00842_n00062_α
.Lx01177_0:
 .quad .Lx01177_0_s
.Lx01177_0_s:
 .string "setpick"
 xchain00842_n01178_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
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
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00842_n00062_α
 jmp xchain00842_n00062_α
 xchain00842_n01178_β:
 jmp xchain00842_n00062_α
.Lx01179_0:
 .quad .Lx01179_0_s
.Lx01179_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00062_α:
 mov rdi, qword ptr [rip + .Lx01180_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00842_n00063_α
 xchain00842_n00062_β:
 jmp xchain00842_n00064_α
.Lx01180_0:
 .quad .Lx01180_0_s
.Lx01180_0_s:
 .string "tblcreate"
 xchain00842_n00063_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
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
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain00842_n00064_α
 jmp xchain00842_n00064_α
 xchain00842_n00063_β:
 jmp xchain00842_n00064_α
.Lx01181_0:
 .quad .Lx01181_0_s
.Lx01181_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00064_α:
 mov rdi, qword ptr [rip + .Lx01182_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00842_n01183_α
 xchain00842_n00064_β:
 jmp xchain00842_n00065_α
.Lx01182_0:
 .quad .Lx01182_0_s
.Lx01182_0_s:
 .string "tblsub"
 xchain00842_n01183_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01184_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01184_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01184_3]
 lea rdx, [rip + .Lx01184_4]
 jmp rax
.Lx01184_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01184_2
.Lx01184_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01184_2
.Lx01184_1:
 call rt_faildescr@PLT
.Lx01184_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00842_n00065_α
 jmp xchain00842_n00065_α
 xchain00842_n01183_β:
 jmp xchain00842_n00065_α
.Lx01184_0:
 .quad .Lx01184_0_s
.Lx01184_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00065_α:
 mov rdi, qword ptr [rip + .Lx01185_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00842_n01186_α
 xchain00842_n00065_β:
 jmp xchain00842_n01187_α
.Lx01185_0:
 .quad .Lx01185_0_s
.Lx01185_0_s:
 .string "tblasgn"
 xchain00842_n01186_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
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
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00842_n01187_α
 jmp xchain00842_n01187_α
 xchain00842_n01186_β:
 jmp xchain00842_n01187_α
.Lx01188_0:
 .quad .Lx01188_0_s
.Lx01188_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01187_α:
 mov rdi, qword ptr [rip + .Lx01189_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00842_n01190_α
 xchain00842_n01187_β:
 jmp xchain00842_n00066_α
.Lx01189_0:
 .quad .Lx01189_0_s
.Lx01189_0_s:
 .string "recconstr"
 xchain00842_n01190_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
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
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain00842_n00066_α
 jmp xchain00842_n00066_α
 xchain00842_n01190_β:
 jmp xchain00842_n00066_α
.Lx01191_0:
 .quad .Lx01191_0_s
.Lx01191_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00066_α:
 mov rdi, qword ptr [rip + .Lx01192_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00842_n00067_α
 xchain00842_n00066_β:
 jmp xchain00842_n01193_α
.Lx01192_0:
 .quad .Lx01192_0_s
.Lx01192_0_s:
 .string "reccopy"
 xchain00842_n00067_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01194_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01194_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01194_3]
 lea rdx, [rip + .Lx01194_4]
 jmp rax
.Lx01194_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01194_2
.Lx01194_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01194_2
.Lx01194_1:
 call rt_faildescr@PLT
.Lx01194_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00842_n01193_α
 jmp xchain00842_n01193_α
 xchain00842_n00067_β:
 jmp xchain00842_n01193_α
.Lx01194_0:
 .quad .Lx01194_0_s
.Lx01194_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01193_α:
 mov rdi, qword ptr [rip + .Lx01195_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00842_n01196_α
 xchain00842_n01193_β:
 jmp xchain00842_n01197_α
.Lx01195_0:
 .quad .Lx01195_0_s
.Lx01195_0_s:
 .string "recfield"
 xchain00842_n01196_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
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
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00842_n01197_α
 jmp xchain00842_n01197_α
 xchain00842_n01196_β:
 jmp xchain00842_n01197_α
.Lx01198_0:
 .quad .Lx01198_0_s
.Lx01198_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01197_α:
 mov rdi, qword ptr [rip + .Lx01199_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00842_n01200_α
 xchain00842_n01197_β:
 jmp xchain00842_n00068_α
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "bigfield"
 xchain00842_n01200_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
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
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00842_n00068_α
 jmp xchain00842_n00068_α
 xchain00842_n01200_β:
 jmp xchain00842_n00068_α
.Lx01201_0:
 .quad .Lx01201_0_s
.Lx01201_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00068_α:
 mov rdi, qword ptr [rip + .Lx01202_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00842_n00069_α
 xchain00842_n00068_β:
 jmp xchain00842_n01203_α
.Lx01202_0:
 .quad .Lx01202_0_s
.Lx01202_0_s:
 .string "readz"
 xchain00842_n00069_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
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
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00842_n01203_α
 jmp xchain00842_n01203_α
 xchain00842_n00069_β:
 jmp xchain00842_n01203_α
.Lx01204_0:
 .quad .Lx01204_0_s
.Lx01204_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01203_α:
 mov rdi, qword ptr [rip + .Lx01205_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00842_n01206_α
 xchain00842_n01203_β:
 jmp xchain00842_n00070_α
.Lx01205_0:
 .quad .Lx01205_0_s
.Lx01205_0_s:
 .string "writecon"
 xchain00842_n01206_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01207_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01207_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01207_3]
 lea rdx, [rip + .Lx01207_4]
 jmp rax
.Lx01207_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01207_2
.Lx01207_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01207_2
.Lx01207_1:
 call rt_faildescr@PLT
.Lx01207_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00842_n00070_α
 jmp xchain00842_n00070_α
 xchain00842_n01206_β:
 jmp xchain00842_n00070_α
.Lx01207_0:
 .quad .Lx01207_0_s
.Lx01207_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00070_α:
 mov rdi, qword ptr [rip + .Lx01208_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00842_n01209_α
 xchain00842_n00070_β:
 jmp xchain00842_n01210_α
.Lx01208_0:
 .quad .Lx01208_0_s
.Lx01208_0_s:
 .string "writestr"
 xchain00842_n01209_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
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
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00842_n01210_α
 jmp xchain00842_n01210_α
 xchain00842_n01209_β:
 jmp xchain00842_n01210_α
.Lx01211_0:
 .quad .Lx01211_0_s
.Lx01211_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01210_α:
 mov rdi, qword ptr [rip + .Lx01212_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00842_n01213_α
 xchain00842_n01210_β:
 jmp xchain00842_n00071_α
.Lx01212_0:
 .quad .Lx01212_0_s
.Lx01212_0_s:
 .string "cxcreate"
 xchain00842_n01213_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
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
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00842_n00071_α
 jmp xchain00842_n00071_α
 xchain00842_n01213_β:
 jmp xchain00842_n00071_α
.Lx01214_0:
 .quad .Lx01214_0_s
.Lx01214_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00071_α:
 mov rdi, qword ptr [rip + .Lx01215_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00842_n00072_α
 xchain00842_n00071_β:
 jmp xchain00842_n01216_α
.Lx01215_0:
 .quad .Lx01215_0_s
.Lx01215_0_s:
 .string "cxget"
 xchain00842_n00072_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01217_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01217_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01217_3]
 lea rdx, [rip + .Lx01217_4]
 jmp rax
.Lx01217_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01217_2
.Lx01217_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01217_2
.Lx01217_1:
 call rt_faildescr@PLT
.Lx01217_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00842_n01216_α
 jmp xchain00842_n01216_α
 xchain00842_n00072_β:
 jmp xchain00842_n01216_α
.Lx01217_0:
 .quad .Lx01217_0_s
.Lx01217_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01216_α:
 mov rdi, qword ptr [rip + .Lx01218_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00842_n01219_α
 xchain00842_n01216_β:
 jmp xchain00842_n01220_α
.Lx01218_0:
 .quad .Lx01218_0_s
.Lx01218_0_s:
 .string "nothing"
 xchain00842_n01219_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
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
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00842_n01220_α
 jmp xchain00842_n01220_α
 xchain00842_n01219_β:
 jmp xchain00842_n01220_α
.Lx01221_0:
 .quad .Lx01221_0_s
.Lx01221_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n01220_α:
 mov rdi, qword ptr [rip + .Lx01222_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00842_n01223_α
 xchain00842_n01220_β:
 jmp xchain00842_n00073_α
.Lx01222_0:
 .quad .Lx01222_0_s
.Lx01222_0_s:
 .string "nothing"
 xchain00842_n01223_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
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
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00842_n00073_α
 jmp xchain00842_n00073_α
 xchain00842_n01223_β:
 jmp xchain00842_n00073_α
.Lx01224_0:
 .quad .Lx01224_0_s
.Lx01224_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00842_n00073_α:
 mov rdi, qword ptr [rip + .Lx01225_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00842_n00074_α
 xchain00842_n00073_β:
 jmp xchain00842_n01226_α
.Lx01225_0:
 .quad .Lx01225_0_s
.Lx01225_0_s:
 .string "nothing"
 xchain00842_n00074_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx01227_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx01227_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx01227_3]
 lea rdx, [rip + .Lx01227_4]
 jmp rax
.Lx01227_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01227_2
.Lx01227_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01227_2
.Lx01227_1:
 call rt_faildescr@PLT
.Lx01227_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00842_n01226_α
 jmp xchain00842_n01226_α
 xchain00842_n00074_β:
 jmp xchain00842_n01226_α
.Lx01227_0:
 .quad .Lx01227_0_s
.Lx01227_0_s:
 .string "report"
# KEYWORD_read
 xchain00842_n01226_α:
 mov rdi, qword ptr [rip + .Lx01228_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00842_n01229_α
 xchain00842_n01226_β:
 jmp main_ω
.Lx01228_0:
 .quad .Lx01228_0_s
.Lx01228_0_s:
 .string "&errout"
 xchain00842_n01229_α:
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
 xchain00842_n01229_β:
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
