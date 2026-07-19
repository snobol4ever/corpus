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
 cmp eax, 99
 je xchain0_n6_α
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
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n5_α
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
# IR_VAR
 xchain0_n7_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n9_α
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
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx15_1
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
 jmp xchain0_n12_α
.Lx18_0:
 lea rdi, [rbp + 272]
 lea rsi, [rbp + 400]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n12_α
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
 jmp xchain0_n13_α
.Lx20_0:
 lea rdi, [rbp + 400]
 lea rsi, [rbp + 272]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain0_n13_α
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
 jne xchain0_n14_α
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
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n15_α
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
# IR_LIT_INTEGER
 xchain30_n1_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain30_n3_α
.Lx33_0:
 .quad 1
# IR_LIT_INTEGER
 xchain30_n2_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain30_n4_α
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
# KEYWORD_read
 xchain30_n5_α:
 mov rdi, qword ptr [rip + .Lx38_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain30_n7_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain30_n6_α
 xchain30_n5_β:
 jmp xchain30_n7_α
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
 jmp xchain30_n7_α
# IR_VAR
 xchain30_n7_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2488], rax
 jmp xchain30_n8_α
# IR_LIT_INTEGER
 xchain30_n8_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain30_n10_α
.Lx42_0:
 .quad 10
# IR_VAR
 xchain30_n9_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2376], rax
 jmp xchain30_n11_α
# IR_COERCE_NUMERIC
 xchain30_n10_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx46_1
 cmp eax, 6
 jne .Lx46_0
 mov eax, dword ptr [rbp + 2512]
 cmp eax, 6
 jne .Lx46_0
.Lx46_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2456], rax
 jmp xchain30_n13_α
.Lx46_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2512]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n13_α
 xchain30_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain30_n12_α
# IR_VAR
 xchain30_n12_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2216], rax
 jmp xchain30_n14_α
 xchain30_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [rbp + 2448]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [rbp + 2456]
 mov rcx, 10
 imul rax, rcx
 mov qword ptr [rbp + 2416], 6
 mov qword ptr [rbp + 2424], rax
 jmp xchain30_n16_α
.Lx50_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n16_α
.Lx50_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n9_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain30_n16_α
 xchain30_n13_β:
 jmp xchain30_n9_α
# IR_VAR
 xchain30_n14_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2328], rax
 jmp xchain30_n17_α
# KEYWORD_read
 xchain30_n15_α:
 mov rdi, qword ptr [rip + .Lx53_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain30_n19_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain30_n18_α
 xchain30_n15_β:
 jmp xchain30_n19_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "&time"
 xchain30_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain30_n9_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain30_n17_α:
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
 je .Lx56_7
 lea rcx, [rip + .Lx56_3]
 lea rdx, [rip + .Lx56_4]
 jmp rax
.Lx56_3:
 mov qword ptr [rbp + 2280], rsp
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx56_5
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx56_2
.Lx56_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx56_2
.Lx56_4:
 mov qword ptr [rbp + 2280], rsp
 mov rax, qword ptr [rbp + 2272]
 test rax, rax
 jne .Lx56_6
 mov qword ptr [rbp + 2272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx56_2
.Lx56_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx56_2
.Lx56_7:
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 lea rdx, [rbp + 2256]
 mov ecx, 1
 lea r8, [rbp + 2272]
 call rt_call_value_gen_h@PLT
.Lx56_2:
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain30_n15_α
 jmp xchain30_n15_α
 xchain30_n17_β:
 mov rax, qword ptr [rbp + 2272]
 cmp rax, 1
 jne .Lx56_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2280]
 jmp qword ptr [rsp]
.Lx56_8:
 lea rdi, [rbp + 2272]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain30_n15_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain30_n15_α
 jmp xchain30_n15_α
 xchain30_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain30_n19_α
# IR_VAR
 xchain30_n19_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2104], rax
 jmp xchain30_n20_α
# IR_VAR
 xchain30_n20_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2136], rax
 jmp xchain30_n22_α
# IR_DISJUNCTION_NARY
 xchain30_n21_α:
 mov qword ptr [rbp + 1712], 0
 mov qword ptr [rbp + 1720], 0
 mov dword ptr [rbp + 1728], 0
 jmp xchain30_n24_α
xchain30_n21_as:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 0
 jne .Lx63_0
 jmp xchain30_n23_α
.Lx63_0:
 jmp xchain30_n23_α
 xchain30_n21_β:
 mov eax, dword ptr [rbp + 1728]
 jmp xchain30_n7_α
xchain30_n21_af:
 add dword ptr [rbp + 1728], 1
 mov eax, dword ptr [rbp + 1728]
 jmp xchain30_n7_α
# IR_COERCE_NUMERIC
 xchain30_n22_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 7
 je .Lx65_1
 cmp eax, 6
 jne .Lx65_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx65_0
.Lx65_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2072], rax
 jmp xchain30_n25_α
.Lx65_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 2064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n25_α
 xchain30_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1704], rax
 jmp xchain30_n7_α
xchain30_n23_β:
 jmp xchain30_n7_α
# IR_VAR
 xchain30_n24_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1784], rax
 jmp xchain30_n26_α
 xchain30_n24_β:
 jmp xchain30_n21_af
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
 jmp xchain30_n27_α
.Lx70_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n27_α
# IR_VAR
 xchain30_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1880], rax
 jmp xchain30_n28_α
 xchain30_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx73_0
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 6
 jne .Lx73_2
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx73_2
.Lx73_1:
 mov rax, qword ptr [rbp + 2072]
 mov rcx, qword ptr [rbp + 2040]
 sub rax, rcx
 mov qword ptr [rbp + 2000], 6
 mov qword ptr [rbp + 2008], rax
 jmp xchain30_n29_α
.Lx73_0:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 lea r9, [rbp + 2000]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n29_α
.Lx73_2:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n21_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain30_n29_α
 xchain30_n27_β:
 jmp xchain30_n21_α
# IR_LIT_INTEGER
 xchain30_n28_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain30_n30_α
.Lx74_0:
 .quad 20
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
 je xchain30_n21_α
 jmp xchain30_n31_α
 xchain30_n29_β:
 jmp xchain30_n21_α
# IR_COERCE_NUMERIC
 xchain30_n30_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx78_1
 cmp eax, 6
 jne .Lx78_0
 mov eax, dword ptr [rbp + 1904]
 cmp eax, 6
 jne .Lx78_0
.Lx78_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1848], rax
 jmp xchain30_n32_α
.Lx78_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1904]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n32_α
 xchain30_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain30_n21_α
 xchain30_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx80_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx80_2
.Lx80_1:
 mov rax, qword ptr [rbp + 1848]
 mov rcx, 20
 cqo
 idiv rcx
 mov qword ptr [rbp + 1808], 6
 mov qword ptr [rbp + 1816], rax
 jmp xchain30_n33_α
.Lx80_0:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 lea r9, [rbp + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n33_α
.Lx80_2:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n21_af
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain30_n33_α
 xchain30_n32_β:
 jmp xchain30_n21_af
 xchain30_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx81_2
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [rbp + 2840]
 mov rcx, qword ptr [rbp + 1816]
 cmp rax, rcx
 jl xchain30_n21_af
 mov rcx, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rcx
 mov rcx, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rcx
 jmp xchain30_n34_α
.Lx81_0:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 lea r9, [rbp + 1744]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx81_1
 cmp eax, 1
 je xchain30_n21_af
 jmp xchain30_n34_α
.Lx81_2:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain30_n21_af
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
 jmp xchain30_n34_α
# IR_LIT_REAL
 xchain30_n34_α:
 mov qword ptr [rbp + 1520], 7
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain30_n35_α
.Lx82_0:
 .quad 4607632778762754458
# IR_VAR
 xchain30_n35_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1560], rax
 jmp xchain30_n36_α
# IR_COERCE_NUMERIC
 xchain30_n36_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx86_1
 cmp eax, 6
 jne .Lx86_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx86_0
.Lx86_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1496], rax
 jmp xchain30_n38_α
.Lx86_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1488]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n38_α
 xchain30_n37_α:
# BOX IR_CALL collect(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn88: .string "collect"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn88]
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
# KEYWORD_read
 xchain30_n39_α:
 mov rdi, qword ptr [rip + .Lx90_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain30_n43_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain30_n41_α
 xchain30_n39_β:
 jmp xchain30_n43_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "&time"
# IR_VAR
 xchain30_n40_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1592], rax
 jmp xchain30_n42_α
 xchain30_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain30_n43_α
# IR_COERCE_NUMERIC
 xchain30_n42_α:
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 7
 je .Lx95_1
 cmp eax, 6
 jne .Lx95_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx95_0
.Lx95_1:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
 jmp xchain30_n44_α
.Lx95_0:
 lea rdi, [rbp + 1456]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 1424]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n44_α
# IR_VAR
 xchain30_n43_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 1064], rax
 jmp xchain30_n45_α
# IR_COERCE_NUMERIC
 xchain30_n44_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx99_1
 cmp eax, 6
 jne .Lx99_0
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 6
 jne .Lx99_0
.Lx99_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1400], rax
 jmp xchain30_n46_α
.Lx99_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1456]
 lea rdx, [rbp + 1392]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n46_α
# KEYWORD_read
 xchain30_n45_α:
 mov rdi, qword ptr [rip + .Lx00001_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain30_n43_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain30_n47_α
 xchain30_n45_β:
 jmp xchain30_n43_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "&time"
 xchain30_n46_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 100
 je .Lx00002_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx00002_2
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx00002_2
.Lx00002_1:
 mov rax, qword ptr [rbp + 1432]
 mov rcx, qword ptr [rbp + 1400]
 imul rax, rcx
 mov qword ptr [rbp + 1360], 6
 mov qword ptr [rbp + 1368], rax
 jmp xchain30_n48_α
.Lx00002_0:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 mov r8d, 2
 lea r9, [rbp + 1360]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n48_α
.Lx00002_2:
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
 jmp xchain30_n48_α
 xchain30_n46_β:
 jmp xchain30_n37_α
 xchain30_n47_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [rbp + 2824]
 mov rcx, qword ptr [rbp + 1096]
 cmp rax, rcx
 je xchain30_n43_α
 mov rcx, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rcx
 mov rcx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rcx
 jmp xchain30_n49_α
.Lx00003_0:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 10
 lea r9, [rbp + 1024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00003_1
 cmp eax, 1
 je xchain30_n43_α
 jmp xchain30_n49_α
.Lx00003_2:
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
# IR_VAR
 xchain30_n48_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1672], rax
 jmp xchain30_n50_α
 xchain30_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain30_n51_α
 xchain30_n50_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn107: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
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
# IR_COERCE_NUMERIC
 xchain30_n52_α:
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 7
 je .Lx00004_1
 cmp eax, 6
 jne .Lx00004_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx00004_0
.Lx00004_1:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1336], rax
 jmp xchain30_n55_α
.Lx00004_0:
 lea rdi, [rbp + 1360]
 lea rsi, [rbp + 1616]
 lea rdx, [rbp + 1328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n55_α
# IR_VAR
 xchain30_n53_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 984], rax
 jmp xchain30_n56_α
# KEYWORD_read
 xchain30_n54_α:
 mov rdi, qword ptr [rip + .Lx00005_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain30_n59_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain30_n57_α
 xchain30_n54_β:
 jmp xchain30_n59_α
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain30_n55_α:
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 7
 je .Lx00006_1
 cmp eax, 6
 jne .Lx00006_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00006_0
.Lx00006_1:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1304], rax
 jmp xchain30_n58_α
.Lx00006_0:
 lea rdi, [rbp + 1616]
 lea rsi, [rbp + 1360]
 lea rdx, [rbp + 1296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n58_α
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
 je .Lx00007_7
 lea rcx, [rip + .Lx00007_3]
 lea rdx, [rip + .Lx00007_4]
 jmp rax
.Lx00007_3:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00007_5
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00007_2
.Lx00007_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00007_2
.Lx00007_4:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00007_6
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00007_2
.Lx00007_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00007_2
.Lx00007_7:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 lea rdx, [rbp + 912]
 mov ecx, 1
 lea r8, [rbp + 928]
 call rt_call_value_gen_h@PLT
.Lx00007_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain30_n54_α
 jmp xchain30_n54_α
 xchain30_n56_β:
 mov rax, qword ptr [rbp + 928]
 cmp rax, 1
 jne .Lx00007_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 936]
 jmp qword ptr [rsp]
.Lx00007_8:
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
 xchain30_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00008_2
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00008_2
.Lx00008_1:
 mov rax, qword ptr [rbp + 1336]
 mov rcx, qword ptr [rbp + 1304]
 cqo
 idiv rcx
 mov qword ptr [rbp + 1264], 6
 mov qword ptr [rbp + 1272], rax
 jmp xchain30_n60_α
.Lx00008_0:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 lea r9, [rbp + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n60_α
.Lx00008_2:
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
 xchain30_n60_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn124: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn124]
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
# IR_VAR
 xchain30_n62_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 488], rax
 jmp xchain30_n65_α
 xchain30_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain30_n37_α
# IR_COERCE_NUMERIC
 xchain30_n64_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 7
 je .Lx00009_1
 cmp eax, 6
 jne .Lx00009_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00009_0
.Lx00009_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 728], rax
 jmp xchain30_n67_α
.Lx00009_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n67_α
# IR_VAR
 xchain30_n65_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 568], rax
 jmp xchain30_n68_α
# IR_VAR
 xchain30_n66_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 280], rax
 jmp xchain30_n69_α
# IR_COERCE_NUMERIC
 xchain30_n67_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00010_1
 cmp eax, 6
 jne .Lx00010_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00010_0
.Lx00010_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 696], rax
 jmp xchain30_n71_α
.Lx00010_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n71_α
 xchain30_n68_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn139: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn139]
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
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain30_n73_α
.Lx00011_0:
 .quad 1000000
# IR_VAR
 xchain30_n70_α:
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 56], rax
 jmp xchain30_n74_α
 xchain30_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00012_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00012_2
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00012_2
.Lx00012_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, qword ptr [rbp + 696]
 sub rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain30_n75_α
.Lx00012_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n75_α
.Lx00012_2:
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
 jmp xchain30_n75_α
 xchain30_n71_β:
 jmp xchain30_n62_α
# IR_COERCE_NUMERIC
 xchain30_n72_α:
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 7
 je .Lx00013_1
 cmp eax, 6
 jne .Lx00013_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00013_0
.Lx00013_1:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 456], rax
 jmp xchain30_n76_α
.Lx00013_0:
 lea rdi, [rbp + 2832]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n76_α
# IR_COERCE_NUMERIC
 xchain30_n73_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00014_1
 cmp eax, 6
 jne .Lx00014_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00014_0
.Lx00014_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 248], rax
 jmp xchain30_n77_α
.Lx00014_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n77_α
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
  .Lrkfn150: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
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
 je .Lx00015_1
 cmp eax, 6
 jne .Lx00015_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 jmp xchain30_n79_α
.Lx00015_0:
 lea rdi, [rbp + 512]
 lea rsi, [rbp + 2832]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n79_α
 xchain30_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00016_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00016_2
.Lx00016_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, 1000000
 imul rax, rcx
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain30_n80_α
.Lx00016_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 lea r9, [rbp + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n80_α
.Lx00016_2:
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
 xchain30_n79_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00017_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, qword ptr [rbp + 424]
 cqo
 idiv rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain30_n81_α
.Lx00017_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n81_α
.Lx00017_2:
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
 jmp xchain30_n81_α
 xchain30_n79_β:
 jmp xchain30_n66_α
# IR_LIT_REAL
 xchain30_n80_α:
 mov qword ptr [rbp + 336], 7
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain30_n82_α
.Lx00018_0:
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
# IR_COERCE_NUMERIC
 xchain30_n82_α:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 7
 je .Lx00019_1
 cmp eax, 6
 jne .Lx00019_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00019_0
.Lx00019_1:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain30_n83_α
.Lx00019_0:
 lea rdi, [rbp + 208]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain30_n83_α
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
 xchain30_n84_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn162: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
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
proc_nothing_α_body:
# IR_DISJUNCTION_NARY
 xchain00020_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00020_n2_α
xchain00020_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00021_0
 jmp xchain00020_n1_α
.Lx00021_0:
 jmp xchain00020_n1_α
 xchain00020_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00020_n1_α
xchain00020_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00020_n1_α
# IR_LIT_INTEGER
 xchain00020_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00022_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00020_n3_α
.Lx00022_0:
 .quad 1
# IR_VAR
 xchain00020_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00020_n4_α
 xchain00020_n2_β:
 jmp xchain00020_n0_af
# IR_VAR
 xchain00020_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00020_n5_α
# IR_UNOP
 xchain00020_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00020_n0_af
 cmp eax, 0
 jne xchain00020_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00020_n6_α
# IR_TO
 xchain00020_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00023_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nothing_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00020_n7_α
 xchain00020_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00023_0
# IR_LIT_STRING
 xchain00020_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00020_n8_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "nothing"
# IR_BOUND
 xchain00020_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00020_n9_α
# IR_RETURN
 xchain00020_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nothing_γ
# IR_UNMARK
 xchain00020_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00020_n5_β
proc_nothing_res:
add rsp, 8
pop rbp
proc_nothing_β:
jmp proc_nothing_ω
proc_nothing_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_nothing_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_uplus_α
proc_uplus_α:
#=======================================================================================================================
    .global proc_uplus_α
    .global proc_uplus_β
    .global proc_uplus_γ
    .global proc_uplus_ω
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
proc_uplus_α_body:
# IR_DISJUNCTION_NARY
 xchain00025_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00025_n2_α
xchain00025_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00026_0
 jmp xchain00025_n1_α
.Lx00026_0:
 jmp xchain00025_n1_α
 xchain00025_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00025_n1_α
xchain00025_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00025_n1_α
# IR_LIT_INTEGER
 xchain00025_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00025_n3_α
.Lx00027_0:
 .quad 1
# IR_VAR
 xchain00025_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00025_n4_α
 xchain00025_n2_β:
 jmp xchain00025_n0_af
# IR_VAR
 xchain00025_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00025_n5_α
# IR_UNOP
 xchain00025_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00025_n0_af
 cmp eax, 0
 jne xchain00025_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00025_n6_α
# IR_TO
 xchain00025_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00028_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00025_n7_α
 xchain00025_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00028_0
# IR_LIT_STRING
 xchain00025_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00025_n8_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "+407"
# IR_BOUND
 xchain00025_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00025_n9_α
# IR_RETURN
 xchain00025_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplus_γ
# IR_UNMARK
 xchain00025_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00025_n5_β
proc_uplus_res:
add rsp, 8
pop rbp
proc_uplus_β:
jmp proc_uplus_ω
proc_uplus_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_uplus_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_uplusr_α
proc_uplusr_α:
#=======================================================================================================================
    .global proc_uplusr_α
    .global proc_uplusr_β
    .global proc_uplusr_γ
    .global proc_uplusr_ω
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
proc_uplusr_α_body:
# IR_DISJUNCTION_NARY
 xchain00030_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00030_n2_α
xchain00030_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00031_0
 jmp xchain00030_n1_α
.Lx00031_0:
 jmp xchain00030_n1_α
 xchain00030_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00030_n1_α
xchain00030_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00030_n1_α
# IR_LIT_INTEGER
 xchain00030_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00030_n3_α
.Lx00032_0:
 .quad 1
# IR_VAR
 xchain00030_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00030_n4_α
 xchain00030_n2_β:
 jmp xchain00030_n0_af
# IR_VAR
 xchain00030_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00030_n5_α
# IR_UNOP
 xchain00030_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00030_n0_af
 cmp eax, 0
 jne xchain00030_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00030_n6_α
# IR_TO
 xchain00030_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00033_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00030_n7_α
 xchain00030_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00033_0
# IR_LIT_STRING
 xchain00030_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00030_n8_α
.Lx00034_0:
 .quad .Lx00034_0_s
.Lx00034_0_s:
 .string "+7.25"
# IR_BOUND
 xchain00030_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00030_n9_α
# IR_RETURN
 xchain00030_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplusr_γ
# IR_UNMARK
 xchain00030_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00030_n5_β
proc_uplusr_res:
add rsp, 8
pop rbp
proc_uplusr_β:
jmp proc_uplusr_ω
proc_uplusr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_uplusr_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_absf_α
proc_absf_α:
#=======================================================================================================================
    .global proc_absf_α
    .global proc_absf_β
    .global proc_absf_γ
    .global proc_absf_ω
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
proc_absf_α_body:
# IR_DISJUNCTION_NARY
 xchain00035_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00035_n2_α
xchain00035_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00036_0
 jmp xchain00035_n1_α
.Lx00036_0:
 jmp xchain00035_n1_α
 xchain00035_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00035_n1_α
xchain00035_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00035_n1_α
# IR_LIT_INTEGER
 xchain00035_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00035_n3_α
.Lx00037_0:
 .quad 1
# IR_VAR
 xchain00035_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00035_n4_α
 xchain00035_n2_β:
 jmp xchain00035_n0_af
# IR_VAR
 xchain00035_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00035_n5_α
# IR_UNOP
 xchain00035_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00035_n0_af
 cmp eax, 0
 jne xchain00035_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00035_n6_α
# IR_TO
 xchain00035_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00038_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00035_n7_α
 xchain00035_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00038_0
# IR_LIT_STRING
 xchain00035_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00035_n8_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "abs(-3)"
# IR_BOUND
 xchain00035_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00035_n9_α
# IR_RETURN
 xchain00035_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_absf_γ
# IR_LIT_INTEGER
 xchain00035_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00035_n10_α
.Lx00040_0:
 .quad 18446744073709551613
 xchain00035_n10_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn232: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn232]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00035_n11_α
 jmp xchain00035_n11_α
 xchain00035_n10_β:
 jmp xchain00035_n11_α
# IR_UNMARK
 xchain00035_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00035_n5_β
proc_absf_res:
add rsp, 8
pop rbp
proc_absf_β:
jmp proc_absf_ω
proc_absf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_absf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_intadd_α
proc_intadd_α:
#=======================================================================================================================
    .global proc_intadd_α
    .global proc_intadd_β
    .global proc_intadd_γ
    .global proc_intadd_ω
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
proc_intadd_α_body:
# IR_DISJUNCTION_NARY
 xchain00041_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00041_n2_α
xchain00041_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00042_0
 jmp xchain00041_n1_α
.Lx00042_0:
 jmp xchain00041_n1_α
 xchain00041_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00041_n1_α
xchain00041_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00041_n1_α
# IR_LIT_INTEGER
 xchain00041_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00041_n3_α
.Lx00043_0:
 .quad 1
# IR_VAR
 xchain00041_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00041_n4_α
 xchain00041_n2_β:
 jmp xchain00041_n0_af
# IR_VAR
 xchain00041_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00041_n5_α
# IR_UNOP
 xchain00041_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00041_n0_af
 cmp eax, 0
 jne xchain00041_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00041_n6_α
# IR_TO
 xchain00041_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00044_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00041_n7_α
 xchain00041_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00044_0
# IR_LIT_STRING
 xchain00041_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00041_n8_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "4 + 7"
# IR_BOUND
 xchain00041_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00041_n9_α
# IR_RETURN
 xchain00041_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intadd_γ
# IR_UNMARK
 xchain00041_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00041_n5_β
proc_intadd_res:
add rsp, 8
pop rbp
proc_intadd_β:
jmp proc_intadd_ω
proc_intadd_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_intadd_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_intcmp_α
proc_intcmp_α:
#=======================================================================================================================
    .global proc_intcmp_α
    .global proc_intcmp_β
    .global proc_intcmp_γ
    .global proc_intcmp_ω
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
proc_intcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00046_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00046_n2_α
xchain00046_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00047_0
 jmp xchain00046_n1_α
.Lx00047_0:
 jmp xchain00046_n1_α
 xchain00046_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00046_n1_α
xchain00046_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00046_n1_α
# IR_LIT_INTEGER
 xchain00046_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00046_n3_α
.Lx00048_0:
 .quad 1
# IR_VAR
 xchain00046_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00046_n4_α
 xchain00046_n2_β:
 jmp xchain00046_n0_af
# IR_VAR
 xchain00046_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00046_n5_α
# IR_UNOP
 xchain00046_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00046_n0_af
 cmp eax, 0
 jne xchain00046_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00046_n6_α
# IR_TO
 xchain00046_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
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
 xchain00046_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00049_0
# IR_LIT_STRING
 xchain00046_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00046_n8_α
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "4 < 7"
# IR_BOUND
 xchain00046_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00046_n9_α
# IR_RETURN
 xchain00046_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcmp_γ
# IR_LIT_INTEGER
 xchain00046_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00046_n10_α
.Lx00051_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00046_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00046_n11_α
.Lx00052_0:
 .quad 7
 xchain00046_n11_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 208]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00053_0
 mov eax, dword ptr [rbp + 208]
 cmp eax, 6
 jne .Lx00053_2
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00053_2
.Lx00053_1:
 mov rax, qword ptr [rbp + 216]
 mov rcx, qword ptr [rbp + 248]
 cmp rax, rcx
 jge xchain00046_n12_α
 mov rcx, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rcx
 mov rcx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rcx
 jmp xchain00046_n12_α
.Lx00053_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 lea r9, [rbp + 176]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00053_1
 cmp eax, 1
 je xchain00046_n12_α
 jmp xchain00046_n12_α
.Lx00053_2:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00046_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00046_n12_α
# IR_UNMARK
 xchain00046_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00046_n5_β
proc_intcmp_res:
add rsp, 8
pop rbp
proc_intcmp_β:
jmp proc_intcmp_ω
proc_intcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_intcmp_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_intpow_α
proc_intpow_α:
#=======================================================================================================================
    .global proc_intpow_α
    .global proc_intpow_β
    .global proc_intpow_γ
    .global proc_intpow_ω
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
proc_intpow_α_body:
# IR_DISJUNCTION_NARY
 xchain00054_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00054_n2_α
xchain00054_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00055_0
 jmp xchain00054_n1_α
.Lx00055_0:
 jmp xchain00054_n1_α
 xchain00054_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00054_n1_α
xchain00054_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00054_n1_α
# IR_LIT_INTEGER
 xchain00054_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00056_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00054_n3_α
.Lx00056_0:
 .quad 1
# IR_VAR
 xchain00054_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00054_n4_α
 xchain00054_n2_β:
 jmp xchain00054_n0_af
# IR_VAR
 xchain00054_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00054_n5_α
# IR_UNOP
 xchain00054_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00054_n0_af
 cmp eax, 0
 jne xchain00054_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00054_n6_α
# IR_TO
 xchain00054_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00057_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00054_n7_α
 xchain00054_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00057_0
# IR_LIT_STRING
 xchain00054_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00054_n8_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "4 ^ 7"
# IR_BOUND
 xchain00054_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00054_n9_α
# IR_RETURN
 xchain00054_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intpow_γ
# IR_LIT_INTEGER
 xchain00054_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00054_n10_α
.Lx00059_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00054_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00060_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00054_n11_α
.Lx00060_0:
 .quad 7
 xchain00054_n11_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00054_n12_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00054_n12_α
# IR_UNMARK
 xchain00054_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00054_n5_β
proc_intpow_res:
add rsp, 8
pop rbp
proc_intpow_β:
jmp proc_intpow_ω
proc_intpow_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_intpow_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_realcmp_α
proc_realcmp_α:
#=======================================================================================================================
    .global proc_realcmp_α
    .global proc_realcmp_β
    .global proc_realcmp_γ
    .global proc_realcmp_ω
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
proc_realcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00061_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00061_n2_α
xchain00061_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00062_0
 jmp xchain00061_n1_α
.Lx00062_0:
 jmp xchain00061_n1_α
 xchain00061_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00061_n1_α
xchain00061_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00061_n1_α
# IR_LIT_INTEGER
 xchain00061_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00061_n3_α
.Lx00063_0:
 .quad 1
# IR_VAR
 xchain00061_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00061_n4_α
 xchain00061_n2_β:
 jmp xchain00061_n0_af
# IR_VAR
 xchain00061_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00061_n5_α
# IR_UNOP
 xchain00061_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00061_n0_af
 cmp eax, 0
 jne xchain00061_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00061_n6_α
# IR_TO
 xchain00061_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00064_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00061_n7_α
 xchain00061_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00064_0
# IR_LIT_STRING
 xchain00061_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00061_n8_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "1.6 < 2.7"
# IR_BOUND
 xchain00061_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00061_n9_α
# IR_RETURN
 xchain00061_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcmp_γ
# IR_LIT_REAL
 xchain00061_n9_α:
 mov qword ptr [rbp + 208], 7
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00061_n10_α
.Lx00066_0:
 .quad 4609884578576439706
# IR_LIT_REAL
 xchain00061_n10_α:
 mov qword ptr [rbp + 240], 7
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00061_n11_α
.Lx00067_0:
 .quad 4613262278296967578
 xchain00061_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00061_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00061_n12_α
# IR_UNMARK
 xchain00061_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00061_n5_β
proc_realcmp_res:
add rsp, 8
pop rbp
proc_realcmp_β:
jmp proc_realcmp_ω
proc_realcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_realcmp_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_cosf_α
proc_cosf_α:
#=======================================================================================================================
    .global proc_cosf_α
    .global proc_cosf_β
    .global proc_cosf_γ
    .global proc_cosf_ω
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
proc_cosf_α_body:
# IR_DISJUNCTION_NARY
 xchain00068_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00068_n2_α
xchain00068_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00069_0
 jmp xchain00068_n1_α
.Lx00069_0:
 jmp xchain00068_n1_α
 xchain00068_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00068_n1_α
xchain00068_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00068_n1_α
# IR_LIT_INTEGER
 xchain00068_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00068_n3_α
.Lx00070_0:
 .quad 1
# IR_VAR
 xchain00068_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00068_n4_α
 xchain00068_n2_β:
 jmp xchain00068_n0_af
# IR_VAR
 xchain00068_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00068_n5_α
# IR_UNOP
 xchain00068_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00068_n0_af
 cmp eax, 0
 jne xchain00068_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00068_n6_α
# IR_TO
 xchain00068_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00071_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00068_n7_α
 xchain00068_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00071_0
# IR_LIT_STRING
 xchain00068_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00068_n8_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "cos(0.2)"
# IR_BOUND
 xchain00068_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00068_n9_α
# IR_RETURN
 xchain00068_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cosf_γ
# IR_LIT_REAL
 xchain00068_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00068_n10_α
.Lx00073_0:
 .quad 4596373779694328218
 xchain00068_n10_α:
# BOX IR_CALL cos(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn329: .string "cos"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00068_n11_α
 jmp xchain00068_n11_α
 xchain00068_n10_β:
 jmp xchain00068_n11_α
# IR_UNMARK
 xchain00068_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00068_n5_β
proc_cosf_res:
add rsp, 8
pop rbp
proc_cosf_β:
jmp proc_cosf_ω
proc_cosf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_cosf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_sqrtf_α
proc_sqrtf_α:
#=======================================================================================================================
    .global proc_sqrtf_α
    .global proc_sqrtf_β
    .global proc_sqrtf_γ
    .global proc_sqrtf_ω
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
proc_sqrtf_α_body:
# IR_DISJUNCTION_NARY
 xchain00074_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00074_n2_α
xchain00074_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00075_0
 jmp xchain00074_n1_α
.Lx00075_0:
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00074_n1_α
xchain00074_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00074_n1_α
# IR_LIT_INTEGER
 xchain00074_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00074_n3_α
.Lx00076_0:
 .quad 1
# IR_VAR
 xchain00074_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00074_n4_α
 xchain00074_n2_β:
 jmp xchain00074_n0_af
# IR_VAR
 xchain00074_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00074_n5_α
# IR_UNOP
 xchain00074_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00074_n0_af
 cmp eax, 0
 jne xchain00074_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00074_n6_α
# IR_TO
 xchain00074_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00077_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00074_n7_α
 xchain00074_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00077_0
# IR_LIT_STRING
 xchain00074_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00074_n8_α
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string "sqrt(7.4)"
# IR_BOUND
 xchain00074_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00074_n9_α
# IR_RETURN
 xchain00074_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_sqrtf_γ
# IR_LIT_REAL
 xchain00074_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00074_n10_α
.Lx00079_0:
 .quad 4620017677738023322
 xchain00074_n10_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn349: .string "sqrt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn349]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00074_n11_α
 jmp xchain00074_n11_α
 xchain00074_n10_β:
 jmp xchain00074_n11_α
# IR_UNMARK
 xchain00074_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00074_n5_β
proc_sqrtf_res:
add rsp, 8
pop rbp
proc_sqrtf_β:
jmp proc_sqrtf_ω
proc_sqrtf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_sqrtf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_logf_α
proc_logf_α:
#=======================================================================================================================
    .global proc_logf_α
    .global proc_logf_β
    .global proc_logf_γ
    .global proc_logf_ω
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
proc_logf_α_body:
# IR_DISJUNCTION_NARY
 xchain00080_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00080_n2_α
xchain00080_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00081_0
 jmp xchain00080_n1_α
.Lx00081_0:
 jmp xchain00080_n1_α
 xchain00080_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00080_n1_α
xchain00080_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00080_n1_α
# IR_LIT_INTEGER
 xchain00080_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00080_n3_α
.Lx00082_0:
 .quad 1
# IR_VAR
 xchain00080_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00080_n4_α
 xchain00080_n2_β:
 jmp xchain00080_n0_af
# IR_VAR
 xchain00080_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00080_n5_α
# IR_UNOP
 xchain00080_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00080_n0_af
 cmp eax, 0
 jne xchain00080_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00080_n6_α
# IR_TO
 xchain00080_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00083_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00080_n7_α
 xchain00080_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00083_0
# IR_LIT_STRING
 xchain00080_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00080_n8_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "log(25.,17.)"
# IR_BOUND
 xchain00080_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00080_n9_α
# IR_RETURN
 xchain00080_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_logf_γ
# IR_LIT_REAL
 xchain00080_n9_α:
 mov qword ptr [rbp + 240], 7
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00080_n10_α
.Lx00085_0:
 .quad 4627730092099895296
# IR_LIT_REAL
 xchain00080_n10_α:
 mov qword ptr [rbp + 272], 7
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00080_n11_α
.Lx00086_0:
 .quad 4625478292286210048
 xchain00080_n11_α:
# BOX IR_CALL log(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn370: .string "log"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn370]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00080_n12_α
 jmp xchain00080_n12_α
 xchain00080_n11_β:
 jmp xchain00080_n12_α
# IR_UNMARK
 xchain00080_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00080_n5_β
proc_logf_res:
add rsp, 8
pop rbp
proc_logf_β:
jmp proc_logf_ω
proc_logf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_logf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_nullfunc_α
proc_nullfunc_α:
#=======================================================================================================================
    .global proc_nullfunc_α
    .global proc_nullfunc_β
    .global proc_nullfunc_γ
    .global proc_nullfunc_ω
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
proc_nullfunc_α_body:
# IR_DISJUNCTION_NARY
 xchain00087_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00087_n2_α
xchain00087_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00088_0
 jmp xchain00087_n1_α
.Lx00088_0:
 jmp xchain00087_n1_α
 xchain00087_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00087_n1_α
xchain00087_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00087_n1_α
# IR_LIT_INTEGER
 xchain00087_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00087_n3_α
.Lx00089_0:
 .quad 1
# IR_VAR
 xchain00087_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00087_n4_α
 xchain00087_n2_β:
 jmp xchain00087_n0_af
# IR_VAR
 xchain00087_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00087_n5_α
# IR_UNOP
 xchain00087_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00087_n0_af
 cmp eax, 0
 jne xchain00087_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00087_n6_α
# IR_TO
 xchain00087_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00090_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00087_n7_α
 xchain00087_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00090_0
# IR_LIT_STRING
 xchain00087_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00087_n8_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "p()"
# IR_BOUND
 xchain00087_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00087_n9_α
# IR_RETURN
 xchain00087_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullfunc_γ
 xchain00087_n9_α:
 mov edi, 14
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00092_1
 lea rcx, [rip + .Lx00092_3]
 lea rdx, [rip + .Lx00092_4]
 jmp rax
.Lx00092_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00092_2
.Lx00092_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00092_2
.Lx00092_1:
 call rt_faildescr@PLT
.Lx00092_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00087_n10_α
 jmp xchain00087_n10_α
 xchain00087_n9_β:
 jmp xchain00087_n10_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "nullf"
# IR_UNMARK
 xchain00087_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00087_n5_β
proc_nullfunc_res:
add rsp, 8
pop rbp
proc_nullfunc_β:
jmp proc_nullfunc_ω
proc_nullfunc_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_nullfunc_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
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
proc_listcall_α_body:
# IR_DISJUNCTION_NARY
 xchain00093_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00093_n2_α
xchain00093_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00094_0
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 jmp xchain00093_n1_α
.Lx00094_0:
 jmp xchain00093_n1_α
 xchain00093_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00093_n1_α
xchain00093_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00093_n1_α
# IR_DISJUNCTION_NARY
 xchain00093_n1_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00093_n5_α
xchain00093_n1_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00095_0
 jmp xchain00093_n4_α
.Lx00095_0:
 jmp xchain00093_n4_α
 xchain00093_n1_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00093_n4_α
xchain00093_n1_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00093_n4_α
# IR_VAR_REF
 xchain00093_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052368
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00093_n6_α
 xchain00093_n2_β:
 jmp xchain00093_n0_af
# IR_ASSIGN gva
 xchain00093_n3_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00093_n0_as
 xchain00093_n3_β:
 jmp xchain00093_n1_α
# IR_LIT_INTEGER
 xchain00093_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00093_n7_α
.Lx00096_0:
 .quad 1
# IR_VAR
 xchain00093_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00093_n8_α
 xchain00093_n5_β:
 jmp xchain00093_n1_af
# IR_NULLTEST_VAR
 xchain00093_n6_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00093_n0_af
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00093_n0_af
 cmp eax, 0
 jne xchain00093_n0_af
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00093_n9_α
# IR_VAR
 xchain00093_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00093_n10_α
# IR_UNOP
 xchain00093_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00093_n1_af
 cmp eax, 0
 jne xchain00093_n1_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00093_n11_α
# IR_LIT_INTEGER
 xchain00093_n9_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00093_n12_α
.Lx00097_0:
 .quad 1
# IR_TO
 xchain00093_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00098_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00093_n13_α
 xchain00093_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00098_0
# IR_LIT_STRING
 xchain00093_n11_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00093_n14_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "p ! L"
# IR_ASSIGN_VAR
 xchain00093_n12_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00093_n0_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00093_n15_α
# IR_BOUND
 xchain00093_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00093_n16_α
# IR_RETURN
 xchain00093_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listcall_γ
# IR_MAKE_LIST
 xchain00093_n15_α:
 lea rdi, [rbp + 512]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00093_n3_α
# IR_LIT_STRING
 xchain00093_n16_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00093_n17_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "nullf"
# IR_VAR
 xchain00093_n17_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00093_n18_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00093_n18_α:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 232], rax
 mov qword ptr [rbp + 240], 0
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00101_7
 lea rcx, [rip + .Lx00101_3]
 lea rdx, [rip + .Lx00101_4]
 jmp rax
.Lx00101_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx00101_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00101_2
.Lx00101_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00101_2
.Lx00101_4:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx00101_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00101_2
.Lx00101_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00101_2
.Lx00101_7:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 lea r8, [rbp + 240]
 call rt_call_apply_gen_h@PLT
.Lx00101_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00093_n19_α
 jmp xchain00093_n19_α
 xchain00093_n18_β:
 mov rax, qword ptr [rbp + 240]
 cmp rax, 1
 jne .Lx00101_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx00101_8:
 lea rdi, [rbp + 240]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00093_n19_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00093_n19_α
 jmp xchain00093_n19_α
# IR_UNMARK
 xchain00093_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00093_n10_β
proc_listcall_res:
add rsp, 8
pop rbp
proc_listcall_β:
jmp proc_listcall_ω
proc_listcall_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_listcall_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_addfunc_α
proc_addfunc_α:
#=======================================================================================================================
    .global proc_addfunc_α
    .global proc_addfunc_β
    .global proc_addfunc_γ
    .global proc_addfunc_ω
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
proc_addfunc_α_body:
# IR_DISJUNCTION_NARY
 xchain00102_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00102_n2_α
xchain00102_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00103_0
 jmp xchain00102_n1_α
.Lx00103_0:
 jmp xchain00102_n1_α
 xchain00102_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00102_n1_α
xchain00102_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00102_n1_α
# IR_LIT_INTEGER
 xchain00102_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00102_n3_α
.Lx00104_0:
 .quad 1
# IR_VAR
 xchain00102_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00102_n4_α
 xchain00102_n2_β:
 jmp xchain00102_n0_af
# IR_VAR
 xchain00102_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00102_n5_α
# IR_UNOP
 xchain00102_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00102_n0_af
 cmp eax, 0
 jne xchain00102_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00102_n6_α
# IR_TO
 xchain00102_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00105_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00102_n7_α
 xchain00102_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00105_0
# IR_LIT_STRING
 xchain00102_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00102_n8_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "add(4, 7)"
# IR_BOUND
 xchain00102_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00102_n9_α
# IR_RETURN
 xchain00102_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_addfunc_γ
# IR_LIT_INTEGER
 xchain00102_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00102_n10_α
.Lx00107_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00102_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00102_n11_α
.Lx00108_0:
 .quad 7
 xchain00102_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 17
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00109_1
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
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00102_n12_α
 jmp xchain00102_n12_α
 xchain00102_n11_β:
 jmp xchain00102_n12_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "add"
# IR_UNMARK
 xchain00102_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00102_n5_β
proc_addfunc_res:
add rsp, 8
pop rbp
proc_addfunc_β:
jmp proc_addfunc_ω
proc_addfunc_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_addfunc_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
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
 xchain00110_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00110_n1_α
# IR_VAR
 xchain00110_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 184], rax
 jmp xchain00110_n2_α
# IR_COERCE_NUMERIC
 xchain00110_n2_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00111_1
 cmp eax, 6
 jne .Lx00111_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx00111_0
.Lx00111_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00110_n3_α
.Lx00111_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00110_n3_α
# IR_COERCE_NUMERIC
 xchain00110_n3_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx00112_1
 cmp eax, 6
 jne .Lx00112_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00112_0
.Lx00112_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 88], rax
 jmp xchain00110_n4_α
.Lx00112_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00110_n4_α
 xchain00110_n4_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 112]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00113_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00113_2
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00113_2
.Lx00113_1:
 mov rax, qword ptr [rbp + 120]
 mov rcx, qword ptr [rbp + 88]
 add rax, rcx
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 jmp xchain00110_n5_α
.Lx00113_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 mov r8d, 0
 lea r9, [rbp + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00110_n5_α
.Lx00113_2:
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
 jmp xchain00110_n5_α
 xchain00110_n4_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00110_n5_α:
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
proc_rfact0_α_body:
# IR_DISJUNCTION_NARY
 xchain00114_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00114_n2_α
xchain00114_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00115_0
 jmp xchain00114_n1_α
.Lx00115_0:
 jmp xchain00114_n1_α
 xchain00114_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00114_n1_α
xchain00114_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00114_n1_α
# IR_LIT_INTEGER
 xchain00114_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00114_n3_α
.Lx00116_0:
 .quad 1
# IR_VAR
 xchain00114_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00114_n4_α
 xchain00114_n2_β:
 jmp xchain00114_n0_af
# IR_VAR
 xchain00114_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00114_n5_α
# IR_UNOP
 xchain00114_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00114_n0_af
 cmp eax, 0
 jne xchain00114_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00114_n6_α
# IR_TO
 xchain00114_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00117_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00114_n7_α
 xchain00114_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00117_0
# IR_LIT_STRING
 xchain00114_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00118_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00114_n8_α
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "rfact(0)"
# IR_BOUND
 xchain00114_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00114_n9_α
# IR_RETURN
 xchain00114_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact0_γ
# IR_LIT_INTEGER
 xchain00114_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00114_n10_α
.Lx00119_0:
 .quad 0
 xchain00114_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 20
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00120_1
 lea rcx, [rip + .Lx00120_3]
 lea rdx, [rip + .Lx00120_4]
 jmp rax
.Lx00120_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00120_2
.Lx00120_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00120_2
.Lx00120_1:
 call rt_faildescr@PLT
.Lx00120_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00114_n11_α
 jmp xchain00114_n11_α
 xchain00114_n10_β:
 jmp xchain00114_n11_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "rfact"
# IR_UNMARK
 xchain00114_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00114_n5_β
proc_rfact0_res:
add rsp, 8
pop rbp
proc_rfact0_β:
jmp proc_rfact0_ω
proc_rfact0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_rfact0_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_rfact10_α
proc_rfact10_α:
#=======================================================================================================================
    .global proc_rfact10_α
    .global proc_rfact10_β
    .global proc_rfact10_γ
    .global proc_rfact10_ω
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
proc_rfact10_α_body:
# IR_DISJUNCTION_NARY
 xchain00121_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00121_n2_α
xchain00121_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00122_0
 jmp xchain00121_n1_α
.Lx00122_0:
 jmp xchain00121_n1_α
 xchain00121_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00121_n1_α
xchain00121_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00121_n1_α
# IR_LIT_INTEGER
 xchain00121_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00121_n3_α
.Lx00123_0:
 .quad 1
# IR_VAR
 xchain00121_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00121_n4_α
 xchain00121_n2_β:
 jmp xchain00121_n0_af
# IR_VAR
 xchain00121_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00121_n5_α
# IR_UNOP
 xchain00121_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00121_n0_af
 cmp eax, 0
 jne xchain00121_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00121_n6_α
# IR_TO
 xchain00121_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00124_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact10_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00121_n7_α
 xchain00121_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00124_0
# IR_LIT_STRING
 xchain00121_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00121_n8_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "rfact(10)"
# IR_BOUND
 xchain00121_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00121_n9_α
# IR_RETURN
 xchain00121_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact10_γ
# IR_LIT_INTEGER
 xchain00121_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00121_n10_α
.Lx00126_0:
 .quad 10
 xchain00121_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 20
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00127_1
 lea rcx, [rip + .Lx00127_3]
 lea rdx, [rip + .Lx00127_4]
 jmp rax
.Lx00127_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00127_2
.Lx00127_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00127_2
.Lx00127_1:
 call rt_faildescr@PLT
.Lx00127_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00121_n11_α
 jmp xchain00121_n11_α
 xchain00121_n10_β:
 jmp xchain00121_n11_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "rfact"
# IR_UNMARK
 xchain00121_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00121_n5_β
proc_rfact10_res:
add rsp, 8
pop rbp
proc_rfact10_β:
jmp proc_rfact10_ω
proc_rfact10_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_rfact10_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
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
# IR_DISJUNCTION_NARY
 xchain00128_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00128_n1_α
xchain00128_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00129_0
 jmp proc_rfact_ω
.Lx00129_0:
 cmp eax, 1
 jne .Lx00129_1
 jmp proc_rfact_ω
.Lx00129_1:
 jmp proc_rfact_ω
 xchain00128_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_rfact_ω
 jmp proc_rfact_ω
xchain00128_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00128_n2_α
 jmp proc_rfact_ω
# IR_VAR
 xchain00128_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00128_n3_α
 xchain00128_n1_β:
 jmp xchain00128_n0_af
# IR_VAR
 xchain00128_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00128_n4_α
 xchain00128_n2_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00128_n3_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00128_n5_α
.Lx00130_0:
 .quad 1
# IR_VAR
 xchain00128_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00128_n6_α
 xchain00128_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00131_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00131_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00131_2
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00131_2
.Lx00131_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 168]
 cmp rax, rcx
 jge xchain00128_n0_af
 mov rcx, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rcx
 mov rcx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rcx
 jmp xchain00128_n7_α
.Lx00131_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 lea r9, [rbp + 96]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00131_1
 cmp eax, 1
 je xchain00128_n0_af
 jmp xchain00128_n7_α
.Lx00131_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00128_n0_af
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
 jmp xchain00128_n7_α
# IR_LIT_INTEGER
 xchain00128_n6_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00128_n8_α
.Lx00132_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00128_n7_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00128_n9_α
.Lx00133_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00128_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00134_1
 cmp eax, 6
 jne .Lx00134_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00134_0
.Lx00134_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00128_n10_α
.Lx00134_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 464]
 lea rdx, [rbp + 400]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00128_n10_α
# IR_RETURN
 xchain00128_n9_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact_γ
 xchain00128_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 400]
 cmp eax, 100
 je .Lx00135_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00135_2
.Lx00135_1:
 mov rax, qword ptr [rbp + 408]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 368], 6
 mov qword ptr [rbp + 376], rax
 jmp xchain00128_n11_α
.Lx00135_0:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 1
 lea r9, [rbp + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00128_n11_α
.Lx00135_2:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00128_n11_α
 xchain00128_n10_β:
 jmp proc_rfact_ω
 xchain00128_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 20
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00136_1
 lea rcx, [rip + .Lx00136_3]
 lea rdx, [rip + .Lx00136_4]
 jmp rax
.Lx00136_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00136_2
.Lx00136_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00136_2
.Lx00136_1:
 call rt_faildescr@PLT
.Lx00136_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00128_n12_α
 xchain00128_n11_β:
 jmp proc_rfact_ω
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "rfact"
# IR_COERCE_NUMERIC
 xchain00128_n12_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00137_1
 cmp eax, 6
 jne .Lx00137_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00137_0
.Lx00137_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00128_n13_α
.Lx00137_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 320]
 lea rdx, [rbp + 256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00128_n13_α
# IR_COERCE_NUMERIC
 xchain00128_n13_α:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 7
 je .Lx00138_1
 cmp eax, 6
 jne .Lx00138_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00138_0
.Lx00138_1:
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
 jmp xchain00128_n14_α
.Lx00138_0:
 lea rdi, [rbp + 320]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 224]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00128_n14_α
 xchain00128_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 256]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 256]
 cmp eax, 6
 jne .Lx00139_2
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [rbp + 264]
 mov rcx, qword ptr [rbp + 232]
 imul rax, rcx
 mov qword ptr [rbp + 192], 6
 mov qword ptr [rbp + 200], rax
 jmp xchain00128_n15_α
.Lx00139_0:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 2
 lea r9, [rbp + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00128_n15_α
.Lx00139_2:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfact_ω
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00128_n15_α
 xchain00128_n14_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00128_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
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
proc_rfib5_α_body:
# IR_DISJUNCTION_NARY
 xchain00140_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00140_n2_α
xchain00140_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00141_0
 jmp xchain00140_n1_α
.Lx00141_0:
 jmp xchain00140_n1_α
 xchain00140_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00140_n1_α
xchain00140_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00140_n1_α
# IR_LIT_INTEGER
 xchain00140_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00140_n3_α
.Lx00142_0:
 .quad 1
# IR_VAR
 xchain00140_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00140_n4_α
 xchain00140_n2_β:
 jmp xchain00140_n0_af
# IR_VAR
 xchain00140_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00140_n5_α
# IR_UNOP
 xchain00140_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00140_n0_af
 cmp eax, 0
 jne xchain00140_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00140_n6_α
# IR_TO
 xchain00140_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00143_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00140_n7_α
 xchain00140_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00143_0
# IR_LIT_STRING
 xchain00140_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00140_n8_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "rfib(5)"
# IR_BOUND
 xchain00140_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00140_n9_α
# IR_RETURN
 xchain00140_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib5_γ
# IR_LIT_INTEGER
 xchain00140_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00140_n10_α
.Lx00145_0:
 .quad 5
 xchain00140_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 22
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00146_1
 lea rcx, [rip + .Lx00146_3]
 lea rdx, [rip + .Lx00146_4]
 jmp rax
.Lx00146_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00146_2
.Lx00146_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00146_2
.Lx00146_1:
 call rt_faildescr@PLT
.Lx00146_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00140_n11_α
 jmp xchain00140_n11_α
 xchain00140_n10_β:
 jmp xchain00140_n11_α
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "rfib"
# IR_UNMARK
 xchain00140_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00140_n5_β
proc_rfib5_res:
add rsp, 8
pop rbp
proc_rfib5_β:
jmp proc_rfib5_ω
proc_rfib5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_rfib5_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
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
# IR_DISJUNCTION_NARY
 xchain00147_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00147_n1_α
xchain00147_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00148_0
 jmp proc_rfib_ω
.Lx00148_0:
 cmp eax, 1
 jne .Lx00148_1
 jmp proc_rfib_ω
.Lx00148_1:
 jmp proc_rfib_ω
 xchain00147_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_rfib_ω
 jmp proc_rfib_ω
xchain00147_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00147_n2_α
 jmp proc_rfib_ω
# IR_VAR
 xchain00147_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00147_n3_α
 xchain00147_n1_β:
 jmp xchain00147_n0_af
# IR_VAR
 xchain00147_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00147_n4_α
 xchain00147_n2_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00147_n3_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00147_n5_α
.Lx00149_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00147_n4_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00147_n6_α
.Lx00150_0:
 .quad 2
 xchain00147_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00151_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00151_2
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00151_2
.Lx00151_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 168]
 cmp rax, rcx
 jge xchain00147_n0_af
 mov rcx, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rcx
 mov rcx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rcx
 jmp xchain00147_n7_α
.Lx00151_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 lea r9, [rbp + 96]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00151_1
 cmp eax, 1
 je xchain00147_n0_af
 jmp xchain00147_n7_α
.Lx00151_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00147_n0_af
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
 jmp xchain00147_n7_α
# IR_COERCE_NUMERIC
 xchain00147_n6_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00152_1
 cmp eax, 6
 jne .Lx00152_0
 mov eax, dword ptr [rbp + 432]
 cmp eax, 6
 jne .Lx00152_0
.Lx00152_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00147_n8_α
.Lx00152_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 432]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00147_n8_α
# IR_LIT_INTEGER
 xchain00147_n7_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00147_n9_α
.Lx00153_0:
 .quad 1
 xchain00147_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00154_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00154_2
.Lx00154_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [rbp + 336], 6
 mov qword ptr [rbp + 344], rax
 jmp xchain00147_n10_α
.Lx00154_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 1
 lea r9, [rbp + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00147_n10_α
.Lx00154_2:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00147_n10_α
 xchain00147_n8_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00147_n9_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib_γ
 xchain00147_n10_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 22
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00155_1
 lea rcx, [rip + .Lx00155_3]
 lea rdx, [rip + .Lx00155_4]
 jmp rax
.Lx00155_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00155_2
.Lx00155_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00155_2
.Lx00155_1:
 call rt_faildescr@PLT
.Lx00155_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00147_n11_α
 xchain00147_n10_β:
 jmp proc_rfib_ω
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "rfib"
# IR_VAR
 xchain00147_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00147_n12_α
# IR_LIT_INTEGER
 xchain00147_n12_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00147_n13_α
.Lx00156_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00147_n13_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00157_1
 cmp eax, 6
 jne .Lx00157_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00157_0
.Lx00157_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain00147_n14_α
.Lx00157_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00147_n14_α
 xchain00147_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00158_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00158_2
.Lx00158_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00147_n15_α
.Lx00158_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 lea r9, [rbp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00147_n15_α
.Lx00158_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00147_n15_α
 xchain00147_n14_β:
 jmp proc_rfib_ω
 xchain00147_n15_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov edi, 22
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00159_1
 lea rcx, [rip + .Lx00159_3]
 lea rdx, [rip + .Lx00159_4]
 jmp rax
.Lx00159_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00159_2
.Lx00159_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00159_2
.Lx00159_1:
 call rt_faildescr@PLT
.Lx00159_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00147_n16_α
 xchain00147_n15_β:
 jmp proc_rfib_ω
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "rfib"
# IR_COERCE_NUMERIC
 xchain00147_n16_α:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 7
 je .Lx00160_1
 cmp eax, 6
 jne .Lx00160_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00160_0
.Lx00160_1:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
 jmp xchain00147_n17_α
.Lx00160_0:
 lea rdi, [rbp + 288]
 lea rsi, [rbp + 464]
 lea rdx, [rbp + 256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00147_n17_α
# IR_COERCE_NUMERIC
 xchain00147_n17_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 7
 je .Lx00161_1
 cmp eax, 6
 jne .Lx00161_0
 mov eax, dword ptr [rbp + 288]
 cmp eax, 6
 jne .Lx00161_0
.Lx00161_1:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 232], rax
 jmp xchain00147_n18_α
.Lx00161_0:
 lea rdi, [rbp + 464]
 lea rsi, [rbp + 288]
 lea rdx, [rbp + 224]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00147_n18_α
 xchain00147_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 256]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00162_0
 mov eax, dword ptr [rbp + 256]
 cmp eax, 6
 jne .Lx00162_2
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00162_2
.Lx00162_1:
 mov rax, qword ptr [rbp + 264]
 mov rcx, qword ptr [rbp + 232]
 add rax, rcx
 mov qword ptr [rbp + 192], 6
 mov qword ptr [rbp + 200], rax
 jmp xchain00147_n19_α
.Lx00162_0:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 0
 lea r9, [rbp + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00147_n19_α
.Lx00162_2:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_rfib_ω
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00147_n19_α
 xchain00147_n18_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00147_n19_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
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
  sub rsp, 1184
  mov [rsp + 1160], rcx
  mov [rsp + 1168], rdx
  mov [rsp + 1176], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1152
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1152
  call rt_jmp_frame_lexprep@PLT
proc_prslow_α_body:
# IR_DISJUNCTION_NARY
 xchain00163_n0_α:
 mov qword ptr [rbp + 976], 0
 mov qword ptr [rbp + 984], 0
 mov dword ptr [rbp + 992], 0
 jmp xchain00163_n2_α
xchain00163_n0_as:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 0
 jne .Lx00164_0
 jmp xchain00163_n1_α
.Lx00164_0:
 jmp xchain00163_n1_α
 xchain00163_n0_β:
 mov eax, dword ptr [rbp + 992]
 jmp xchain00163_n1_α
xchain00163_n0_af:
 add dword ptr [rbp + 992], 1
 mov eax, dword ptr [rbp + 992]
 jmp xchain00163_n1_α
# IR_LIT_INTEGER
 xchain00163_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00163_n3_α
.Lx00165_0:
 .quad 1
# IR_VAR
 xchain00163_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00163_n4_α
 xchain00163_n2_β:
 jmp xchain00163_n0_af
# IR_VAR
 xchain00163_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00163_n5_α
# IR_UNOP
 xchain00163_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00163_n0_af
 cmp eax, 0
 jne xchain00163_n0_af
 mov qword ptr [rbp + 1040], 0
 mov qword ptr [rbp + 1048], 0
 jmp xchain00163_n6_α
# IR_TO
 xchain00163_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00166_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_prslow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00163_n7_α
 xchain00163_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00166_0
# IR_LIT_STRING
 xchain00163_n6_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00163_n8_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "prslow(7)"
# IR_BOUND
 xchain00163_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00163_n9_α
# IR_RETURN
 xchain00163_n8_α:
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_prslow_γ
# IR_LIT_INTEGER
 xchain00163_n9_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00163_n10_α
.Lx00168_0:
 .quad 0
 xchain00163_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00163_n11_α
# IR_LIT_INTEGER
 xchain00163_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00163_n12_α
.Lx00169_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00163_n12_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00163_n13_α
.Lx00170_0:
 .quad 7
# IR_TO
 xchain00163_n13_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call to_int@PLT
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 call to_int@PLT
 mov qword ptr [rbp + 272], 6
 mov qword ptr [rbp + 280], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 224], rax
.Lx00171_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 280]
 cmp rax, rcx
 jg xchain00163_n36_α
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00163_n14_α
 xchain00163_n13_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00171_0
 xchain00163_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00163_n15_α
# IR_BOUND
 xchain00163_n15_α:
 mov qword ptr [rbp + 304], rsp
 jmp xchain00163_n16_α
# IR_DISJUNCTION_NARY
 xchain00163_n16_α:
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 mov dword ptr [rbp + 528], 0
 jmp xchain00163_n18_α
xchain00163_n16_as:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 0
 jne .Lx00172_0
 jmp xchain00163_n17_α
.Lx00172_0:
 jmp xchain00163_n17_α
 xchain00163_n16_β:
 mov eax, dword ptr [rbp + 528]
 jmp xchain00163_n17_α
xchain00163_n16_af:
 add dword ptr [rbp + 528], 1
 mov eax, dword ptr [rbp + 528]
 jmp xchain00163_n17_α
# IR_VAR
 xchain00163_n17_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 456], rax
 jmp xchain00163_n19_α
# IR_VAR
 xchain00163_n18_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 680], rax
 jmp xchain00163_n21_α
 xchain00163_n18_β:
 jmp xchain00163_n16_af
# IR_LIT_INTEGER
 xchain00163_n19_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00163_n22_α
.Lx00173_0:
 .quad 1
# IR_UNMARK
 xchain00163_n20_α:
 mov rsp, qword ptr [rbp + 304]
 jmp xchain00163_n13_β
# IR_LIT_INTEGER
 xchain00163_n21_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00163_n23_α
.Lx00174_0:
 .quad 2
# IR_COERCE_NUMERIC
 xchain00163_n22_α:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 7
 je .Lx00175_1
 cmp eax, 6
 jne .Lx00175_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00175_0
.Lx00175_1:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 424], rax
 jmp xchain00163_n24_α
.Lx00175_0:
 lea rdi, [rbp + 1136]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00163_n24_α
# IR_VAR
 xchain00163_n23_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 840], rax
 jmp xchain00163_n25_α
 xchain00163_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00176_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00176_2
.Lx00176_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00163_n26_α
.Lx00176_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00163_n26_α
.Lx00176_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00163_n20_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00163_n26_α
 xchain00163_n24_β:
 jmp xchain00163_n20_α
# IR_LIT_INTEGER
 xchain00163_n25_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00163_n27_α
.Lx00177_0:
 .quad 1
 xchain00163_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00163_n28_α
# IR_COERCE_NUMERIC
 xchain00163_n27_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 7
 je .Lx00178_1
 cmp eax, 6
 jne .Lx00178_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx00178_0
.Lx00178_1:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 808], rax
 jmp xchain00163_n29_α
.Lx00178_0:
 lea rdi, [rbp + 1120]
 lea rsi, [rbp + 864]
 lea rdx, [rbp + 800]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00163_n29_α
 xchain00163_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 360], rax
 jmp xchain00163_n20_α
xchain00163_n28_β:
 jmp xchain00163_n20_α
 xchain00163_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 800]
 cmp eax, 100
 je .Lx00179_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00179_2
.Lx00179_1:
 mov rax, qword ptr [rbp + 808]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 768], 6
 mov qword ptr [rbp + 776], rax
 jmp xchain00163_n30_α
.Lx00179_0:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 1
 lea r9, [rbp + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00163_n30_α
.Lx00179_2:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00163_n16_af
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00163_n30_α
 xchain00163_n29_β:
 jmp xchain00163_n16_af
# IR_TO
 xchain00163_n30_α:
 mov rdi, qword ptr [rbp + 736]
 mov rsi, qword ptr [rbp + 744]
 call to_int@PLT
 mov qword ptr [rbp + 736], 6
 mov qword ptr [rbp + 744], rax
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call to_int@PLT
 mov qword ptr [rbp + 768], 6
 mov qword ptr [rbp + 776], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 720], rax
.Lx00180_0:
 mov rax, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 776]
 cmp rax, rcx
 jg xchain00163_n16_af
 mov qword ptr [rbp + 704], 6
 mov qword ptr [rbp + 712], rax
 jmp xchain00163_n31_α
 xchain00163_n30_β:
 inc qword ptr [rbp + 720]
 jmp .Lx00180_0
# IR_COERCE_NUMERIC
 xchain00163_n31_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 7
 je .Lx00181_1
 cmp eax, 6
 jne .Lx00181_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00181_0
.Lx00181_1:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 648], rax
 jmp xchain00163_n32_α
.Lx00181_0:
 lea rdi, [rbp + 1120]
 lea rsi, [rbp + 704]
 lea rdx, [rbp + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00163_n32_α
# IR_COERCE_NUMERIC
 xchain00163_n32_α:
 mov eax, dword ptr [rbp + 704]
 cmp eax, 7
 je .Lx00182_1
 cmp eax, 6
 jne .Lx00182_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx00182_0
.Lx00182_1:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
 jmp xchain00163_n33_α
.Lx00182_0:
 lea rdi, [rbp + 704]
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 608]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00163_n33_α
 xchain00163_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00183_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00183_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00183_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00183_2
.Lx00183_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 616]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 576], 6
 mov qword ptr [rbp + 584], rax
 jmp xchain00163_n34_α
.Lx00183_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 4
 lea r9, [rbp + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00163_n34_α
.Lx00183_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00163_n16_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00163_n34_α
 xchain00163_n33_β:
 jmp xchain00163_n16_af
# IR_LIT_INTEGER
 xchain00163_n34_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00163_n35_α
.Lx00184_0:
 .quad 0
 xchain00163_n35_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [rbp + 896]
 cmp eax, 100
 je .Lx00185_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00185_2
 mov eax, dword ptr [rbp + 896]
 cmp eax, 6
 jne .Lx00185_2
.Lx00185_1:
 mov rax, qword ptr [rbp + 584]
 mov rcx, qword ptr [rbp + 904]
 cmp rax, rcx
 jne xchain00163_n30_β
 mov rcx, qword ptr [rbp + 896]
 mov qword ptr [rbp + 544], rcx
 mov rcx, qword ptr [rbp + 904]
 mov qword ptr [rbp + 552], rcx
 jmp xchain00163_n20_α
.Lx00185_0:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 lea r9, [rbp + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00185_1
 cmp eax, 1
 je xchain00163_n30_β
 jmp xchain00163_n20_α
.Lx00185_2:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00163_n30_β
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 552], rax
 jmp xchain00163_n20_α
# IR_UNMARK
 xchain00163_n36_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00163_n5_β
proc_prslow_res:
add rsp, 8
pop rbp
proc_prslow_β:
jmp proc_prslow_ω
proc_prslow_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1160]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
proc_prslow_ω:
mov rax, [rbp + 1168]
lea rsp, [rbp + 1184]
mov rbp, [rbp + 1176]
jmp rax
  .globl proc_if0_α
proc_if0_α:
#=======================================================================================================================
    .global proc_if0_α
    .global proc_if0_β
    .global proc_if0_γ
    .global proc_if0_ω
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
proc_if0_α_body:
# IR_DISJUNCTION_NARY
 xchain00186_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00186_n2_α
xchain00186_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00187_0
 jmp xchain00186_n1_α
.Lx00187_0:
 jmp xchain00186_n1_α
 xchain00186_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00186_n1_α
xchain00186_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00186_n1_α
# IR_LIT_INTEGER
 xchain00186_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00186_n3_α
.Lx00188_0:
 .quad 1
# IR_VAR
 xchain00186_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00186_n4_α
 xchain00186_n2_β:
 jmp xchain00186_n0_af
# IR_VAR
 xchain00186_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00186_n5_α
# IR_UNOP
 xchain00186_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00186_n0_af
 cmp eax, 0
 jne xchain00186_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00186_n6_α
# IR_TO
 xchain00186_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00189_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00186_n7_α
 xchain00186_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00189_0
# IR_LIT_STRING
 xchain00186_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00186_n8_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "if 0 then 1"
# IR_BOUND
 xchain00186_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00186_n9_α
# IR_RETURN
 xchain00186_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_if0_γ
# IR_DISJUNCTION_NARY
 xchain00186_n9_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00186_n11_α
xchain00186_n9_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00191_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00186_n10_α
.Lx00191_0:
 jmp xchain00186_n10_α
 xchain00186_n9_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00186_n10_α
xchain00186_n9_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00186_n10_α
# IR_UNMARK
 xchain00186_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00186_n5_β
# IR_LIT_INTEGER
 xchain00186_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00186_n12_α
 xchain00186_n11_β:
 jmp xchain00186_n9_af
.Lx00192_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00186_n12_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00186_n9_as
 xchain00186_n12_β:
 jmp xchain00186_n10_α
.Lx00193_0:
 .quad 1
proc_if0_res:
add rsp, 8
pop rbp
proc_if0_β:
jmp proc_if0_ω
proc_if0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_if0_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_case3_α
proc_case3_α:
#=======================================================================================================================
    .global proc_case3_α
    .global proc_case3_β
    .global proc_case3_γ
    .global proc_case3_ω
  sub rsp, 1056
  mov [rsp + 1032], rcx
  mov [rsp + 1040], rdx
  mov [rsp + 1048], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1024
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 1024
  call rt_jmp_frame_lexprep@PLT
proc_case3_α_body:
# IR_DISJUNCTION_NARY
 xchain00194_n0_α:
 mov qword ptr [rbp + 864], 0
 mov qword ptr [rbp + 872], 0
 mov dword ptr [rbp + 880], 0
 jmp xchain00194_n2_α
xchain00194_n0_as:
 mov eax, dword ptr [rbp + 880]
 cmp eax, 0
 jne .Lx00195_0
 jmp xchain00194_n1_α
.Lx00195_0:
 jmp xchain00194_n1_α
 xchain00194_n0_β:
 mov eax, dword ptr [rbp + 880]
 jmp xchain00194_n1_α
xchain00194_n0_af:
 add dword ptr [rbp + 880], 1
 mov eax, dword ptr [rbp + 880]
 jmp xchain00194_n1_α
# IR_LIT_INTEGER
 xchain00194_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00194_n3_α
.Lx00196_0:
 .quad 1
# IR_VAR
 xchain00194_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 968], rax
 jmp xchain00194_n4_α
 xchain00194_n2_β:
 jmp xchain00194_n0_af
# IR_VAR
 xchain00194_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00194_n5_α
# IR_UNOP
 xchain00194_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00194_n0_af
 cmp eax, 0
 jne xchain00194_n0_af
 mov qword ptr [rbp + 928], 0
 mov qword ptr [rbp + 936], 0
 jmp xchain00194_n6_α
# IR_TO
 xchain00194_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00197_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00194_n7_α
 xchain00194_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00197_0
# IR_LIT_STRING
 xchain00194_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00194_n8_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "case 3 of..."
# IR_BOUND
 xchain00194_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00194_n9_α
# IR_RETURN
 xchain00194_n8_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_case3_γ
# IR_LIT_INTEGER
 xchain00194_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00194_n10_α
.Lx00199_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00194_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00194_n11_α
.Lx00200_0:
 .quad 1
 xchain00194_n11_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+816]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+832]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn667: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn667]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain00194_n13_α
 jmp xchain00194_n12_α
 xchain00194_n11_β:
 jmp xchain00194_n13_α
# IR_LIT_INTEGER
 xchain00194_n12_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00194_n14_α
.Lx00201_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00194_n13_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00194_n15_α
.Lx00202_0:
 .quad 2
 xchain00194_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00194_n16_α
 xchain00194_n15_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+672]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+688]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn672: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn672]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00194_n18_α
 jmp xchain00194_n17_α
 xchain00194_n15_β:
 jmp xchain00194_n18_α
# IR_VAR
 xchain00194_n16_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 184], rax
 jmp xchain00194_n19_α
# IR_LIT_INTEGER
 xchain00194_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00194_n20_α
.Lx00203_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00194_n18_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00204_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00194_n21_α
.Lx00204_0:
 .quad 3
# IR_UNMARK
 xchain00194_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00194_n5_β
 xchain00194_n20_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00194_n16_α
 xchain00194_n21_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+528]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+544]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn681: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn681]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00194_n23_α
 jmp xchain00194_n22_α
 xchain00194_n21_β:
 jmp xchain00194_n23_α
# IR_LIT_INTEGER
 xchain00194_n22_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00194_n24_α
.Lx00205_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00194_n23_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00194_n25_α
.Lx00206_0:
 .quad 4
 xchain00194_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00194_n16_α
 xchain00194_n25_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+384]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+400]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn686: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn686]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00194_n27_α
 jmp xchain00194_n26_α
 xchain00194_n25_β:
 jmp xchain00194_n27_α
# IR_LIT_INTEGER
 xchain00194_n26_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00194_n28_α
.Lx00207_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00194_n27_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00194_n29_α
.Lx00208_0:
 .quad 0
 xchain00194_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00194_n16_α
 xchain00194_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00194_n16_α
proc_case3_res:
add rsp, 8
pop rbp
proc_case3_β:
jmp proc_case3_ω
proc_case3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1032]
lea rsp, [rbp + 1056]
mov rbp, [rbp + 1048]
jmp rax
proc_case3_ω:
mov rax, [rbp + 1040]
lea rsp, [rbp + 1056]
mov rbp, [rbp + 1048]
jmp rax
  .globl proc_nulltest_α
proc_nulltest_α:
#=======================================================================================================================
    .global proc_nulltest_α
    .global proc_nulltest_β
    .global proc_nulltest_γ
    .global proc_nulltest_ω
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
proc_nulltest_α_body:
# IR_DISJUNCTION_NARY
 xchain00209_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00209_n2_α
xchain00209_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00210_0
 jmp xchain00209_n1_α
.Lx00210_0:
 jmp xchain00209_n1_α
 xchain00209_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00209_n1_α
xchain00209_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00209_n1_α
# IR_LIT_INTEGER
 xchain00209_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00209_n3_α
.Lx00211_0:
 .quad 1
# IR_VAR
 xchain00209_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00209_n4_α
 xchain00209_n2_β:
 jmp xchain00209_n0_af
# IR_VAR
 xchain00209_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00209_n5_α
# IR_UNOP
 xchain00209_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00209_n0_af
 cmp eax, 0
 jne xchain00209_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00209_n6_α
# IR_TO
 xchain00209_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00212_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00209_n7_α
 xchain00209_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00212_0
# IR_LIT_STRING
 xchain00209_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00209_n8_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "\\8"
# IR_BOUND
 xchain00209_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00209_n9_α
# IR_RETURN
 xchain00209_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nulltest_γ
# IR_LIT_INTEGER
 xchain00209_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00209_n10_α
.Lx00214_0:
 .quad 8
# IR_UNOP
 xchain00209_n10_α:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 99
 je xchain00209_n11_α
 cmp eax, 0
 je xchain00209_n11_α
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00209_n11_α
# IR_UNMARK
 xchain00209_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00209_n5_β
proc_nulltest_res:
add rsp, 8
pop rbp
proc_nulltest_β:
jmp proc_nulltest_ω
proc_nulltest_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_nulltest_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_typef_α
proc_typef_α:
#=======================================================================================================================
    .global proc_typef_α
    .global proc_typef_β
    .global proc_typef_γ
    .global proc_typef_ω
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
proc_typef_α_body:
# IR_DISJUNCTION_NARY
 xchain00215_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00215_n2_α
xchain00215_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00216_0
 jmp xchain00215_n1_α
.Lx00216_0:
 jmp xchain00215_n1_α
 xchain00215_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00215_n1_α
xchain00215_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00215_n1_α
# IR_LIT_INTEGER
 xchain00215_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00215_n3_α
.Lx00217_0:
 .quad 1
# IR_VAR
 xchain00215_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00215_n4_α
 xchain00215_n2_β:
 jmp xchain00215_n0_af
# IR_VAR
 xchain00215_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00215_n5_α
# IR_UNOP
 xchain00215_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00215_n0_af
 cmp eax, 0
 jne xchain00215_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00215_n6_α
# IR_TO
 xchain00215_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00218_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00215_n7_α
 xchain00215_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00218_0
# IR_LIT_STRING
 xchain00215_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00215_n8_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "type(s)"
# IR_BOUND
 xchain00215_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00215_n9_α
# IR_RETURN
 xchain00215_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_typef_γ
# IR_LIT_STRING
 xchain00215_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00215_n10_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "abcde"
 xchain00215_n10_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn727: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn727]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00215_n11_α
 jmp xchain00215_n11_α
 xchain00215_n10_β:
 jmp xchain00215_n11_α
# IR_UNMARK
 xchain00215_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00215_n5_β
proc_typef_res:
add rsp, 8
pop rbp
proc_typef_β:
jmp proc_typef_ω
proc_typef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_typef_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_imagef_α
proc_imagef_α:
#=======================================================================================================================
    .global proc_imagef_α
    .global proc_imagef_β
    .global proc_imagef_γ
    .global proc_imagef_ω
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
proc_imagef_α_body:
# IR_DISJUNCTION_NARY
 xchain00221_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00221_n2_α
xchain00221_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00222_0
 jmp xchain00221_n1_α
.Lx00222_0:
 jmp xchain00221_n1_α
 xchain00221_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00221_n1_α
xchain00221_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00221_n1_α
# IR_LIT_INTEGER
 xchain00221_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00221_n3_α
.Lx00223_0:
 .quad 1
# IR_VAR
 xchain00221_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00221_n4_α
 xchain00221_n2_β:
 jmp xchain00221_n0_af
# IR_VAR
 xchain00221_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00221_n5_α
# IR_UNOP
 xchain00221_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00221_n0_af
 cmp eax, 0
 jne xchain00221_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00221_n6_α
# IR_TO
 xchain00221_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00224_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00221_n7_α
 xchain00221_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00224_0
# IR_LIT_STRING
 xchain00221_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00221_n8_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "image(s)"
# IR_BOUND
 xchain00221_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00221_n9_α
# IR_RETURN
 xchain00221_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_imagef_γ
# IR_LIT_STRING
 xchain00221_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00221_n10_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "ab\tcd"
 xchain00221_n10_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn747: .string "image"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn747]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00221_n11_α
 jmp xchain00221_n11_α
 xchain00221_n10_β:
 jmp xchain00221_n11_α
# IR_UNMARK
 xchain00221_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00221_n5_β
proc_imagef_res:
add rsp, 8
pop rbp
proc_imagef_β:
jmp proc_imagef_ω
proc_imagef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_imagef_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_marshal_α
proc_marshal_α:
#=======================================================================================================================
    .global proc_marshal_α
    .global proc_marshal_β
    .global proc_marshal_γ
    .global proc_marshal_ω
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
proc_marshal_α_body:
# IR_DISJUNCTION_NARY
 xchain00227_n0_α:
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 mov dword ptr [rbp + 528], 0
 jmp xchain00227_n2_α
xchain00227_n0_as:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 0
 jne .Lx00228_0
 jmp xchain00227_n1_α
.Lx00228_0:
 jmp xchain00227_n1_α
 xchain00227_n0_β:
 mov eax, dword ptr [rbp + 528]
 jmp xchain00227_n1_α
xchain00227_n0_af:
 add dword ptr [rbp + 528], 1
 mov eax, dword ptr [rbp + 528]
 jmp xchain00227_n1_α
# IR_LIT_INTEGER
 xchain00227_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00227_n3_α
.Lx00229_0:
 .quad 1
# IR_VAR
 xchain00227_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 616], rax
 jmp xchain00227_n4_α
 xchain00227_n2_β:
 jmp xchain00227_n0_af
# IR_VAR
 xchain00227_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00227_n5_α
# IR_UNOP
 xchain00227_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00227_n0_af
 cmp eax, 0
 jne xchain00227_n0_af
 mov qword ptr [rbp + 576], 0
 mov qword ptr [rbp + 584], 0
 jmp xchain00227_n6_α
# IR_TO
 xchain00227_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00230_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_marshal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00227_n7_α
 xchain00227_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00230_0
# IR_LIT_STRING
 xchain00227_n6_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00227_n8_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "2(3,1,4,1,6)"
# IR_BOUND
 xchain00227_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00227_n9_α
# IR_RETURN
 xchain00227_n8_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_marshal_γ
# IR_LIT_INTEGER
 xchain00227_n9_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00227_n10_α
.Lx00232_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00227_n10_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00227_n11_α
.Lx00233_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00227_n11_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00227_n12_α
.Lx00234_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00227_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00227_n13_α
.Lx00235_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00227_n13_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00227_n14_α
.Lx00236_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00227_n14_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00227_n15_α
.Lx00237_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00227_n15_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 232], rax
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 248], rax
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 264], rax
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 280], rax
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 296], rax
 mov qword ptr [rbp + 304], 0
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 lea rdx, [rbp + 224]
 mov ecx, 5
 call rt_call_value_spine_prep@PLT
 test rax, rax
 je .Lx00238_7
 lea rcx, [rip + .Lx00238_3]
 lea rdx, [rip + .Lx00238_4]
 jmp rax
.Lx00238_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00238_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00238_2
.Lx00238_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00238_2
.Lx00238_4:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00238_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00238_2
.Lx00238_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00238_2
.Lx00238_7:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 lea rdx, [rbp + 224]
 mov ecx, 5
 lea r8, [rbp + 304]
 call rt_call_value_gen_h@PLT
.Lx00238_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00227_n16_α
 jmp xchain00227_n16_α
 xchain00227_n15_β:
 mov rax, qword ptr [rbp + 304]
 cmp rax, 1
 jne .Lx00238_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx00238_8:
 lea rdi, [rbp + 304]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00227_n16_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00227_n16_α
 jmp xchain00227_n16_α
# IR_UNMARK
 xchain00227_n16_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00227_n5_β
proc_marshal_res:
add rsp, 8
pop rbp
proc_marshal_β:
jmp proc_marshal_ω
proc_marshal_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 664]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
proc_marshal_ω:
mov rax, [rbp + 672]
lea rsp, [rbp + 688]
mov rbp, [rbp + 680]
jmp rax
  .globl proc_conj5_α
proc_conj5_α:
#=======================================================================================================================
    .global proc_conj5_α
    .global proc_conj5_β
    .global proc_conj5_γ
    .global proc_conj5_ω
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
proc_conj5_α_body:
# IR_DISJUNCTION_NARY
 xchain00239_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00239_n2_α
xchain00239_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00240_0
 jmp xchain00239_n1_α
.Lx00240_0:
 jmp xchain00239_n1_α
 xchain00239_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00239_n1_α
xchain00239_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00239_n1_α
# IR_LIT_INTEGER
 xchain00239_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00241_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00239_n3_α
.Lx00241_0:
 .quad 1
# IR_VAR
 xchain00239_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00239_n4_α
 xchain00239_n2_β:
 jmp xchain00239_n0_af
# IR_VAR
 xchain00239_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00239_n5_α
# IR_UNOP
 xchain00239_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00239_n0_af
 cmp eax, 0
 jne xchain00239_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00239_n6_α
# IR_TO
 xchain00239_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00242_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00239_n7_α
 xchain00239_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00242_0
# IR_LIT_STRING
 xchain00239_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00239_n8_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "1&2&3&4&5"
# IR_BOUND
 xchain00239_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00239_n9_α
# IR_RETURN
 xchain00239_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_conj5_γ
# IR_LIT_INTEGER
 xchain00239_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00239_n10_α
.Lx00244_0:
 .quad 5
 xchain00239_n10_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00239_n11_α
xchain00239_n10_β:
 jmp xchain00239_n11_α
# IR_UNMARK
 xchain00239_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00239_n5_β
proc_conj5_res:
add rsp, 8
pop rbp
proc_conj5_β:
jmp proc_conj5_ω
proc_conj5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_conj5_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_everyalt_α
proc_everyalt_α:
#=======================================================================================================================
    .global proc_everyalt_α
    .global proc_everyalt_β
    .global proc_everyalt_γ
    .global proc_everyalt_ω
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
proc_everyalt_α_body:
# IR_DISJUNCTION_NARY
 xchain00245_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00245_n2_α
xchain00245_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00246_0
 jmp xchain00245_n1_α
.Lx00246_0:
 jmp xchain00245_n1_α
 xchain00245_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00245_n1_α
xchain00245_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00245_n1_α
# IR_LIT_INTEGER
 xchain00245_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00245_n3_α
.Lx00247_0:
 .quad 1
# IR_VAR
 xchain00245_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain00245_n4_α
 xchain00245_n2_β:
 jmp xchain00245_n0_af
# IR_VAR
 xchain00245_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00245_n5_α
# IR_UNOP
 xchain00245_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00245_n0_af
 cmp eax, 0
 jne xchain00245_n0_af
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00245_n6_α
# IR_TO
 xchain00245_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00248_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00245_n7_α
 xchain00245_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00248_0
# IR_LIT_STRING
 xchain00245_n6_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00245_n8_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "1|2|3|4|5"
# IR_BOUND
 xchain00245_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00245_n9_α
# IR_RETURN
 xchain00245_n8_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyalt_γ
# IR_DISJUNCTION_NARY
 xchain00245_n9_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00245_n10_α
xchain00245_n9_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00250_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00245_n9_β
.Lx00250_0:
 cmp eax, 1
 jne .Lx00250_1
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00245_n9_β
.Lx00250_1:
 cmp eax, 2
 jne .Lx00250_2
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 184], rax
 jmp xchain00245_n9_β
.Lx00250_2:
 cmp eax, 3
 jne .Lx00250_3
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 184], rax
 jmp xchain00245_n9_β
.Lx00250_3:
 cmp eax, 4
 jne .Lx00250_4
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 184], rax
 jmp xchain00245_n9_β
.Lx00250_4:
 jmp xchain00245_n9_β
 xchain00245_n9_β:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 je xchain00245_n9_af
 cmp eax, 1
 je xchain00245_n9_af
 cmp eax, 2
 je xchain00245_n9_af
 cmp eax, 3
 je xchain00245_n9_af
 jmp xchain00245_n9_af
xchain00245_n9_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 cmp eax, 1
 je xchain00245_n11_α
 cmp eax, 2
 je xchain00245_n12_α
 cmp eax, 3
 je xchain00245_n13_α
 cmp eax, 4
 je xchain00245_n14_α
 jmp xchain00245_n15_α
# IR_LIT_INTEGER
 xchain00245_n10_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00245_n9_as
 xchain00245_n10_β:
 jmp xchain00245_n9_af
.Lx00251_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00245_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00245_n9_as
 xchain00245_n11_β:
 jmp xchain00245_n9_af
.Lx00252_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00245_n12_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00245_n9_as
 xchain00245_n12_β:
 jmp xchain00245_n9_af
.Lx00253_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00245_n13_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00245_n9_as
 xchain00245_n13_β:
 jmp xchain00245_n9_af
.Lx00254_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00245_n14_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00245_n9_as
 xchain00245_n14_β:
 jmp xchain00245_n9_af
.Lx00255_0:
 .quad 5
# IR_UNMARK
 xchain00245_n15_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00245_n5_β
proc_everyalt_res:
add rsp, 8
pop rbp
proc_everyalt_β:
jmp proc_everyalt_ω
proc_everyalt_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 520]
lea rsp, [rbp + 544]
mov rbp, [rbp + 536]
jmp rax
proc_everyalt_ω:
mov rax, [rbp + 528]
lea rsp, [rbp + 544]
mov rbp, [rbp + 536]
jmp rax
  .globl proc_everyto_α
proc_everyto_α:
#=======================================================================================================================
    .global proc_everyto_α
    .global proc_everyto_β
    .global proc_everyto_γ
    .global proc_everyto_ω
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
proc_everyto_α_body:
# IR_DISJUNCTION_NARY
 xchain00256_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00256_n2_α
xchain00256_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00257_0
 jmp xchain00256_n1_α
.Lx00257_0:
 jmp xchain00256_n1_α
 xchain00256_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00256_n1_α
xchain00256_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00256_n1_α
# IR_LIT_INTEGER
 xchain00256_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00256_n3_α
.Lx00258_0:
 .quad 1
# IR_VAR
 xchain00256_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00256_n4_α
 xchain00256_n2_β:
 jmp xchain00256_n0_af
# IR_VAR
 xchain00256_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00256_n5_α
# IR_UNOP
 xchain00256_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00256_n0_af
 cmp eax, 0
 jne xchain00256_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00256_n6_α
# IR_TO
 xchain00256_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00259_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00256_n7_α
 xchain00256_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00259_0
# IR_LIT_STRING
 xchain00256_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00256_n8_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "1 to 5"
# IR_BOUND
 xchain00256_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00256_n9_α
# IR_RETURN
 xchain00256_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyto_γ
# IR_LIT_INTEGER
 xchain00256_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00256_n10_α
.Lx00261_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00256_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00256_n11_α
.Lx00262_0:
 .quad 5
# IR_TO
 xchain00256_n11_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call to_int@PLT
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call to_int@PLT
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 192], rax
.Lx00263_0:
 mov rax, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 248]
 cmp rax, rcx
 jg xchain00256_n12_α
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 jmp xchain00256_n11_β
 xchain00256_n11_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00263_0
# IR_UNMARK
 xchain00256_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00256_n5_β
proc_everyto_res:
add rsp, 8
pop rbp
proc_everyto_β:
jmp proc_everyto_ω
proc_everyto_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_everyto_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
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
# IR_DISJUNCTION_NARY
 xchain00264_n0_α:
 mov qword ptr [rbp + 128], 0
 mov qword ptr [rbp + 136], 0
 mov dword ptr [rbp + 144], 0
 jmp xchain00264_n2_α
xchain00264_n0_as:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 0
 jne .Lx00265_0
 jmp xchain00264_n1_α
.Lx00265_0:
 jmp xchain00264_n1_α
 xchain00264_n0_β:
 mov eax, dword ptr [rbp + 144]
 jmp xchain00264_n1_α
xchain00264_n0_af:
 add dword ptr [rbp + 144], 1
 mov eax, dword ptr [rbp + 144]
 jmp xchain00264_n1_α
# IR_VAR
 xchain00264_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00264_n3_α
# IR_VAR
 xchain00264_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
 jmp xchain00264_n4_α
 xchain00264_n2_β:
 jmp xchain00264_n0_af
 xchain00264_n3_α:
 mov qword ptr [rbp + 64], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00266_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00266_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00266_3]
 lea rdx, [rip + .Lx00266_4]
 jmp rax
.Lx00266_3:
 mov qword ptr [rbp + 72], rsp
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00266_5
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00266_2
.Lx00266_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00266_2
.Lx00266_4:
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00266_6
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00266_2
.Lx00266_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00266_2
.Lx00266_1:
 call rt_faildescr@PLT
.Lx00266_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00264_n3_β
 xchain00264_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 72]
 jmp qword ptr [rsp]
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "susproc"
# IR_UNOP
 xchain00264_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00264_n0_af
 cmp eax, 0
 jne xchain00264_n0_af
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 jmp xchain00264_n5_α
# IR_LIT_STRING
 xchain00264_n5_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00264_n6_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "suspend i"
# IR_RETURN
 xchain00264_n6_α:
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
lea rax, [rip + xchain00268_n3_β]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
 xchain00268_n0_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00268_n1_α
.Lx00269_0:
 .quad 1
# IR_VAR
 xchain00268_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00268_n2_α
# IR_TO
 xchain00268_n2_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00270_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00268_n3_α
 xchain00268_n2_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00270_0
# IR_SUSPEND yield+resume
 xchain00268_n3_α:
 lea rax, [rip + xchain00268_n3_β]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_susproc_γ
 xchain00268_n3_β:
 jmp xchain00268_n2_β
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
proc_intcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00271_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00271_n2_α
xchain00271_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00272_0
 jmp xchain00271_n1_α
.Lx00272_0:
 jmp xchain00271_n1_α
 xchain00271_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00271_n1_α
xchain00271_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00271_n1_α
# IR_LIT_INTEGER
 xchain00271_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00271_n3_α
.Lx00273_0:
 .quad 1
# IR_VAR
 xchain00271_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00271_n4_α
 xchain00271_n2_β:
 jmp xchain00271_n0_af
# IR_VAR
 xchain00271_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00271_n5_α
# IR_UNOP
 xchain00271_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00271_n0_af
 cmp eax, 0
 jne xchain00271_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00271_n6_α
# IR_TO
 xchain00271_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00274_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00271_n7_α
 xchain00271_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00274_0
# IR_LIT_STRING
 xchain00271_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00271_n8_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "+\"407\""
# IR_BOUND
 xchain00271_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00271_n9_α
# IR_RETURN
 xchain00271_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcoerce_γ
# IR_LIT_STRING
 xchain00271_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00271_n10_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "407"
# IR_COERCE_NUMERIC
 xchain00271_n10_α:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 7
 je .Lx00277_1
 cmp eax, 6
 jne .Lx00277_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00277_0
.Lx00277_1:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 jmp xchain00271_n11_α
.Lx00277_0:
 lea rdi, [rbp + 240]
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00271_n11_α
# IR_UNOP
 xchain00271_n11_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00271_n12_α
# IR_UNMARK
 xchain00271_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00271_n5_β
proc_intcoerce_res:
add rsp, 8
pop rbp
proc_intcoerce_β:
jmp proc_intcoerce_ω
proc_intcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_intcoerce_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_realcoerce_α
proc_realcoerce_α:
#=======================================================================================================================
    .global proc_realcoerce_α
    .global proc_realcoerce_β
    .global proc_realcoerce_γ
    .global proc_realcoerce_ω
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
proc_realcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00278_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00278_n2_α
xchain00278_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00279_0
 jmp xchain00278_n1_α
.Lx00279_0:
 jmp xchain00278_n1_α
 xchain00278_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00278_n1_α
xchain00278_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00278_n1_α
# IR_LIT_INTEGER
 xchain00278_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00278_n3_α
.Lx00280_0:
 .quad 1
# IR_VAR
 xchain00278_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00278_n4_α
 xchain00278_n2_β:
 jmp xchain00278_n0_af
# IR_VAR
 xchain00278_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00278_n5_α
# IR_UNOP
 xchain00278_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00278_n0_af
 cmp eax, 0
 jne xchain00278_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00278_n6_α
# IR_TO
 xchain00278_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00281_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00278_n7_α
 xchain00278_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00281_0
# IR_LIT_STRING
 xchain00278_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00278_n8_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "+\"7.25\""
# IR_BOUND
 xchain00278_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00278_n9_α
# IR_RETURN
 xchain00278_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcoerce_γ
# IR_LIT_STRING
 xchain00278_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00278_n10_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "7.25"
# IR_COERCE_NUMERIC
 xchain00278_n10_α:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 7
 je .Lx00284_1
 cmp eax, 6
 jne .Lx00284_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00284_0
.Lx00284_1:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 jmp xchain00278_n11_α
.Lx00284_0:
 lea rdi, [rbp + 240]
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00278_n11_α
# IR_UNOP
 xchain00278_n11_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00278_n12_α
# IR_UNMARK
 xchain00278_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00278_n5_β
proc_realcoerce_res:
add rsp, 8
pop rbp
proc_realcoerce_β:
jmp proc_realcoerce_ω
proc_realcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_realcoerce_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_strcoerce_α
proc_strcoerce_α:
#=======================================================================================================================
    .global proc_strcoerce_α
    .global proc_strcoerce_β
    .global proc_strcoerce_γ
    .global proc_strcoerce_ω
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
proc_strcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00285_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00285_n2_α
xchain00285_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00286_0
 jmp xchain00285_n1_α
.Lx00286_0:
 jmp xchain00285_n1_α
 xchain00285_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00285_n1_α
xchain00285_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00285_n1_α
# IR_LIT_INTEGER
 xchain00285_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00285_n3_α
.Lx00287_0:
 .quad 1
# IR_VAR
 xchain00285_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00285_n4_α
 xchain00285_n2_β:
 jmp xchain00285_n0_af
# IR_VAR
 xchain00285_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00285_n5_α
# IR_UNOP
 xchain00285_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00285_n0_af
 cmp eax, 0
 jne xchain00285_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00285_n6_α
# IR_TO
 xchain00285_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00288_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00285_n7_α
 xchain00285_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00288_0
# IR_LIT_STRING
 xchain00285_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00285_n8_α
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "*407"
# IR_BOUND
 xchain00285_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00285_n9_α
# IR_RETURN
 xchain00285_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoerce_γ
# IR_LIT_INTEGER
 xchain00285_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00285_n10_α
.Lx00290_0:
 .quad 407
# IR_UNOP
 xchain00285_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00285_n11_α
# IR_UNMARK
 xchain00285_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00285_n5_β
proc_strcoerce_res:
add rsp, 8
pop rbp
proc_strcoerce_β:
jmp proc_strcoerce_ω
proc_strcoerce_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strcoerce_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_strcoercer_α
proc_strcoercer_α:
#=======================================================================================================================
    .global proc_strcoercer_α
    .global proc_strcoercer_β
    .global proc_strcoercer_γ
    .global proc_strcoercer_ω
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
proc_strcoercer_α_body:
# IR_DISJUNCTION_NARY
 xchain00291_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00291_n2_α
xchain00291_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00292_0
 jmp xchain00291_n1_α
.Lx00292_0:
 jmp xchain00291_n1_α
 xchain00291_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00291_n1_α
xchain00291_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00291_n1_α
# IR_LIT_INTEGER
 xchain00291_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00291_n3_α
.Lx00293_0:
 .quad 1
# IR_VAR
 xchain00291_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00291_n4_α
 xchain00291_n2_β:
 jmp xchain00291_n0_af
# IR_VAR
 xchain00291_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00291_n5_α
# IR_UNOP
 xchain00291_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00291_n0_af
 cmp eax, 0
 jne xchain00291_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00291_n6_α
# IR_TO
 xchain00291_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00294_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00291_n7_α
 xchain00291_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00294_0
# IR_LIT_STRING
 xchain00291_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00291_n8_α
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "*7.25"
# IR_BOUND
 xchain00291_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00291_n9_α
# IR_RETURN
 xchain00291_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoercer_γ
# IR_LIT_REAL
 xchain00291_n9_α:
 mov qword ptr [rbp + 208], 7
 mov rax, qword ptr [rip + .Lx00296_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00291_n10_α
.Lx00296_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00291_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00291_n11_α
# IR_UNMARK
 xchain00291_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00291_n5_β
proc_strcoercer_res:
add rsp, 8
pop rbp
proc_strcoercer_β:
jmp proc_strcoercer_ω
proc_strcoercer_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strcoercer_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_tointeger_α
proc_tointeger_α:
#=======================================================================================================================
    .global proc_tointeger_α
    .global proc_tointeger_β
    .global proc_tointeger_γ
    .global proc_tointeger_ω
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
proc_tointeger_α_body:
# IR_DISJUNCTION_NARY
 xchain00297_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00297_n2_α
xchain00297_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00298_0
 jmp xchain00297_n1_α
.Lx00298_0:
 jmp xchain00297_n1_α
 xchain00297_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00297_n1_α
xchain00297_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00297_n1_α
# IR_LIT_INTEGER
 xchain00297_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00299_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00297_n3_α
.Lx00299_0:
 .quad 1
# IR_VAR
 xchain00297_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00297_n4_α
 xchain00297_n2_β:
 jmp xchain00297_n0_af
# IR_VAR
 xchain00297_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00297_n5_α
# IR_UNOP
 xchain00297_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00297_n0_af
 cmp eax, 0
 jne xchain00297_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00297_n6_α
# IR_TO
 xchain00297_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00300_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00297_n7_α
 xchain00297_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00300_0
# IR_LIT_STRING
 xchain00297_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00301_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00297_n8_α
.Lx00301_0:
 .quad .Lx00301_0_s
.Lx00301_0_s:
 .string "integer(\"407\")"
# IR_BOUND
 xchain00297_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00297_n9_α
# IR_RETURN
 xchain00297_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tointeger_γ
# IR_LIT_STRING
 xchain00297_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00302_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00297_n10_α
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "407"
 xchain00297_n10_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn956: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn956]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00297_n11_α
 jmp xchain00297_n11_α
 xchain00297_n10_β:
 jmp xchain00297_n11_α
# IR_UNMARK
 xchain00297_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00297_n5_β
proc_tointeger_res:
add rsp, 8
pop rbp
proc_tointeger_β:
jmp proc_tointeger_ω
proc_tointeger_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_tointeger_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_toreal_α
proc_toreal_α:
#=======================================================================================================================
    .global proc_toreal_α
    .global proc_toreal_β
    .global proc_toreal_γ
    .global proc_toreal_ω
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
proc_toreal_α_body:
# IR_DISJUNCTION_NARY
 xchain00303_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00303_n2_α
xchain00303_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00304_0
 jmp xchain00303_n1_α
.Lx00304_0:
 jmp xchain00303_n1_α
 xchain00303_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00303_n1_α
xchain00303_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00303_n1_α
# IR_LIT_INTEGER
 xchain00303_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00303_n3_α
.Lx00305_0:
 .quad 1
# IR_VAR
 xchain00303_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00303_n4_α
 xchain00303_n2_β:
 jmp xchain00303_n0_af
# IR_VAR
 xchain00303_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00303_n5_α
# IR_UNOP
 xchain00303_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00303_n0_af
 cmp eax, 0
 jne xchain00303_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00303_n6_α
# IR_TO
 xchain00303_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00306_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00303_n7_α
 xchain00303_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00306_0
# IR_LIT_STRING
 xchain00303_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00303_n8_α
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "real(\"7.25\")"
# IR_BOUND
 xchain00303_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00303_n9_α
# IR_RETURN
 xchain00303_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_toreal_γ
# IR_LIT_STRING
 xchain00303_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00308_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00303_n10_α
.Lx00308_0:
 .quad .Lx00308_0_s
.Lx00308_0_s:
 .string "407"
 xchain00303_n10_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn976: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn976]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00303_n11_α
 jmp xchain00303_n11_α
 xchain00303_n10_β:
 jmp xchain00303_n11_α
# IR_UNMARK
 xchain00303_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00303_n5_β
proc_toreal_res:
add rsp, 8
pop rbp
proc_toreal_β:
jmp proc_toreal_ω
proc_toreal_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_toreal_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_tostring_α
proc_tostring_α:
#=======================================================================================================================
    .global proc_tostring_α
    .global proc_tostring_β
    .global proc_tostring_γ
    .global proc_tostring_ω
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
proc_tostring_α_body:
# IR_DISJUNCTION_NARY
 xchain00309_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00309_n2_α
xchain00309_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00310_0
 jmp xchain00309_n1_α
.Lx00310_0:
 jmp xchain00309_n1_α
 xchain00309_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00309_n1_α
xchain00309_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00309_n1_α
# IR_LIT_INTEGER
 xchain00309_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00309_n3_α
.Lx00311_0:
 .quad 1
# IR_VAR
 xchain00309_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00309_n4_α
 xchain00309_n2_β:
 jmp xchain00309_n0_af
# IR_VAR
 xchain00309_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00309_n5_α
# IR_UNOP
 xchain00309_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00309_n0_af
 cmp eax, 0
 jne xchain00309_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00309_n6_α
# IR_TO
 xchain00309_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00312_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00309_n7_α
 xchain00309_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00312_0
# IR_LIT_STRING
 xchain00309_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00309_n8_α
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "string(407)"
# IR_BOUND
 xchain00309_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00309_n9_α
# IR_RETURN
 xchain00309_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tostring_γ
# IR_LIT_INTEGER
 xchain00309_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00309_n10_α
.Lx00314_0:
 .quad 407
 xchain00309_n10_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn996: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn996]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00309_n11_α
 jmp xchain00309_n11_α
 xchain00309_n10_β:
 jmp xchain00309_n11_α
# IR_UNMARK
 xchain00309_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00309_n5_β
proc_tostring_res:
add rsp, 8
pop rbp
proc_tostring_β:
jmp proc_tostring_ω
proc_tostring_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_tostring_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_rtostring_α
proc_rtostring_α:
#=======================================================================================================================
    .global proc_rtostring_α
    .global proc_rtostring_β
    .global proc_rtostring_γ
    .global proc_rtostring_ω
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
proc_rtostring_α_body:
# IR_DISJUNCTION_NARY
 xchain00315_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00315_n2_α
xchain00315_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00316_0
 jmp xchain00315_n1_α
.Lx00316_0:
 jmp xchain00315_n1_α
 xchain00315_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00315_n1_α
xchain00315_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00315_n1_α
# IR_LIT_INTEGER
 xchain00315_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00315_n3_α
.Lx00317_0:
 .quad 1
# IR_VAR
 xchain00315_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00315_n4_α
 xchain00315_n2_β:
 jmp xchain00315_n0_af
# IR_VAR
 xchain00315_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00315_n5_α
# IR_UNOP
 xchain00315_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00315_n0_af
 cmp eax, 0
 jne xchain00315_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00315_n6_α
# IR_TO
 xchain00315_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00318_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rtostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00315_n7_α
 xchain00315_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00318_0
# IR_LIT_STRING
 xchain00315_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00319_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00315_n8_α
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "string(7.25)"
# IR_BOUND
 xchain00315_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00315_n9_α
# IR_RETURN
 xchain00315_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rtostring_γ
# IR_LIT_REAL
 xchain00315_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00320_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00315_n10_α
.Lx00320_0:
 .quad 4619848792751996928
 xchain00315_n10_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1016: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1016]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00315_n11_α
 jmp xchain00315_n11_α
 xchain00315_n10_β:
 jmp xchain00315_n11_α
# IR_UNMARK
 xchain00315_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00315_n5_β
proc_rtostring_res:
add rsp, 8
pop rbp
proc_rtostring_β:
jmp proc_rtostring_ω
proc_rtostring_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_rtostring_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_tocset_α
proc_tocset_α:
#=======================================================================================================================
    .global proc_tocset_α
    .global proc_tocset_β
    .global proc_tocset_γ
    .global proc_tocset_ω
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
proc_tocset_α_body:
# IR_DISJUNCTION_NARY
 xchain00321_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00321_n2_α
xchain00321_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00322_0
 jmp xchain00321_n1_α
.Lx00322_0:
 jmp xchain00321_n1_α
 xchain00321_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00321_n1_α
xchain00321_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00321_n1_α
# IR_LIT_INTEGER
 xchain00321_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00323_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00321_n3_α
.Lx00323_0:
 .quad 1
# IR_VAR
 xchain00321_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00321_n4_α
 xchain00321_n2_β:
 jmp xchain00321_n0_af
# IR_VAR
 xchain00321_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00321_n5_α
# IR_UNOP
 xchain00321_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00321_n0_af
 cmp eax, 0
 jne xchain00321_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00321_n6_α
# IR_TO
 xchain00321_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00324_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tocset_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00321_n7_α
 xchain00321_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00324_0
# IR_LIT_STRING
 xchain00321_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00321_n8_α
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "cset(\"407\")"
# IR_BOUND
 xchain00321_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00321_n9_α
# IR_RETURN
 xchain00321_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tocset_γ
# IR_LIT_STRING
 xchain00321_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00321_n10_α
.Lx00326_0:
 .quad .Lx00326_0_s
.Lx00326_0_s:
 .string "407"
 xchain00321_n10_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1036: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1036]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00321_n11_α
 jmp xchain00321_n11_α
 xchain00321_n10_β:
 jmp xchain00321_n11_α
# IR_UNMARK
 xchain00321_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00321_n5_β
proc_tocset_res:
add rsp, 8
pop rbp
proc_tocset_β:
jmp proc_tocset_ω
proc_tocset_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_tocset_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_charf_α
proc_charf_α:
#=======================================================================================================================
    .global proc_charf_α
    .global proc_charf_β
    .global proc_charf_γ
    .global proc_charf_ω
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
proc_charf_α_body:
# IR_DISJUNCTION_NARY
 xchain00327_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00327_n2_α
xchain00327_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00328_0
 jmp xchain00327_n1_α
.Lx00328_0:
 jmp xchain00327_n1_α
 xchain00327_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00327_n1_α
xchain00327_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00327_n1_α
# IR_LIT_INTEGER
 xchain00327_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00329_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00327_n3_α
.Lx00329_0:
 .quad 1
# IR_VAR
 xchain00327_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00327_n4_α
 xchain00327_n2_β:
 jmp xchain00327_n0_af
# IR_VAR
 xchain00327_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00327_n5_α
# IR_UNOP
 xchain00327_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00327_n0_af
 cmp eax, 0
 jne xchain00327_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00327_n6_α
# IR_TO
 xchain00327_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00330_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_charf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00327_n7_α
 xchain00327_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00330_0
# IR_LIT_STRING
 xchain00327_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00331_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00327_n8_α
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "char(65)"
# IR_BOUND
 xchain00327_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00327_n9_α
# IR_RETURN
 xchain00327_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_charf_γ
# IR_LIT_INTEGER
 xchain00327_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00327_n10_α
.Lx00332_0:
 .quad 65
 xchain00327_n10_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1056: .string "char"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1056]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00327_n11_α
 jmp xchain00327_n11_α
 xchain00327_n10_β:
 jmp xchain00327_n11_α
# IR_UNMARK
 xchain00327_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00327_n5_β
proc_charf_res:
add rsp, 8
pop rbp
proc_charf_β:
jmp proc_charf_ω
proc_charf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_charf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_ordf_α
proc_ordf_α:
#=======================================================================================================================
    .global proc_ordf_α
    .global proc_ordf_β
    .global proc_ordf_γ
    .global proc_ordf_ω
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
proc_ordf_α_body:
# IR_DISJUNCTION_NARY
 xchain00333_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00333_n2_α
xchain00333_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00334_0
 jmp xchain00333_n1_α
.Lx00334_0:
 jmp xchain00333_n1_α
 xchain00333_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00333_n1_α
xchain00333_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00333_n1_α
# IR_LIT_INTEGER
 xchain00333_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00335_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00333_n3_α
.Lx00335_0:
 .quad 1
# IR_VAR
 xchain00333_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00333_n4_α
 xchain00333_n2_β:
 jmp xchain00333_n0_af
# IR_VAR
 xchain00333_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00333_n5_α
# IR_UNOP
 xchain00333_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00333_n0_af
 cmp eax, 0
 jne xchain00333_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00333_n6_α
# IR_TO
 xchain00333_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00336_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00333_n7_α
 xchain00333_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00336_0
# IR_LIT_STRING
 xchain00333_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00333_n8_α
.Lx00337_0:
 .quad .Lx00337_0_s
.Lx00337_0_s:
 .string "ord(\"A\")"
# IR_BOUND
 xchain00333_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00333_n9_α
# IR_RETURN
 xchain00333_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_ordf_γ
# IR_LIT_STRING
 xchain00333_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00338_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00333_n10_α
.Lx00338_0:
 .quad .Lx00338_0_s
.Lx00338_0_s:
 .string "A"
 xchain00333_n10_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1076: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1076]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00333_n11_α
 jmp xchain00333_n11_α
 xchain00333_n10_β:
 jmp xchain00333_n11_α
# IR_UNMARK
 xchain00333_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00333_n5_β
proc_ordf_res:
add rsp, 8
pop rbp
proc_ordf_β:
jmp proc_ordf_ω
proc_ordf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_ordf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_strsize_α
proc_strsize_α:
#=======================================================================================================================
    .global proc_strsize_α
    .global proc_strsize_β
    .global proc_strsize_γ
    .global proc_strsize_ω
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
proc_strsize_α_body:
# IR_DISJUNCTION_NARY
 xchain00339_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00339_n2_α
xchain00339_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00340_0
 jmp xchain00339_n1_α
.Lx00340_0:
 jmp xchain00339_n1_α
 xchain00339_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00339_n1_α
xchain00339_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00339_n1_α
# IR_LIT_INTEGER
 xchain00339_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00341_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00339_n3_α
.Lx00341_0:
 .quad 1
# IR_VAR
 xchain00339_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00339_n4_α
 xchain00339_n2_β:
 jmp xchain00339_n0_af
# IR_VAR
 xchain00339_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00339_n5_α
# IR_UNOP
 xchain00339_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00339_n0_af
 cmp eax, 0
 jne xchain00339_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00339_n6_α
# IR_TO
 xchain00339_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00342_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00339_n7_α
 xchain00339_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00342_0
# IR_LIT_STRING
 xchain00339_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00339_n8_α
.Lx00343_0:
 .quad .Lx00343_0_s
.Lx00343_0_s:
 .string "*\"abcde\""
# IR_BOUND
 xchain00339_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00339_n9_α
# IR_RETURN
 xchain00339_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsize_γ
# IR_LIT_STRING
 xchain00339_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00339_n10_α
.Lx00344_0:
 .quad .Lx00344_0_s
.Lx00344_0_s:
 .string "abcde"
# IR_UNOP
 xchain00339_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00339_n11_α
# IR_UNMARK
 xchain00339_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00339_n5_β
proc_strsize_res:
add rsp, 8
pop rbp
proc_strsize_β:
jmp proc_strsize_ω
proc_strsize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strsize_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_concat_α
proc_concat_α:
#=======================================================================================================================
    .global proc_concat_α
    .global proc_concat_β
    .global proc_concat_γ
    .global proc_concat_ω
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
proc_concat_α_body:
# IR_DISJUNCTION_NARY
 xchain00345_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00345_n2_α
xchain00345_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00346_0
 jmp xchain00345_n1_α
.Lx00346_0:
 jmp xchain00345_n1_α
 xchain00345_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00345_n1_α
xchain00345_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00345_n1_α
# IR_LIT_INTEGER
 xchain00345_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00345_n3_α
.Lx00347_0:
 .quad 1
# IR_VAR
 xchain00345_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00345_n4_α
 xchain00345_n2_β:
 jmp xchain00345_n0_af
# IR_VAR
 xchain00345_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00345_n5_α
# IR_UNOP
 xchain00345_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00345_n0_af
 cmp eax, 0
 jne xchain00345_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00345_n6_α
# IR_TO
 xchain00345_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00348_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00345_n7_α
 xchain00345_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00348_0
# IR_LIT_STRING
 xchain00345_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00349_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00345_n8_α
.Lx00349_0:
 .quad .Lx00349_0_s
.Lx00349_0_s:
 .string "\"a\" || \"b\""
# IR_BOUND
 xchain00345_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00345_n9_α
# IR_RETURN
 xchain00345_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_concat_γ
# IR_UNMARK
 xchain00345_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00345_n5_β
proc_concat_res:
add rsp, 8
pop rbp
proc_concat_β:
jmp proc_concat_ω
proc_concat_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 328]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
proc_concat_ω:
mov rax, [rbp + 336]
lea rsp, [rbp + 352]
mov rbp, [rbp + 344]
jmp rax
  .globl proc_strpick_α
proc_strpick_α:
#=======================================================================================================================
    .global proc_strpick_α
    .global proc_strpick_β
    .global proc_strpick_γ
    .global proc_strpick_ω
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
proc_strpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00350_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00350_n2_α
xchain00350_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00351_0
 jmp xchain00350_n1_α
.Lx00351_0:
 jmp xchain00350_n1_α
 xchain00350_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00350_n1_α
xchain00350_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00350_n1_α
# IR_LIT_INTEGER
 xchain00350_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00352_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00350_n3_α
.Lx00352_0:
 .quad 1
# IR_VAR
 xchain00350_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00350_n4_α
 xchain00350_n2_β:
 jmp xchain00350_n0_af
# IR_VAR
 xchain00350_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00350_n5_α
# IR_UNOP
 xchain00350_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00350_n0_af
 cmp eax, 0
 jne xchain00350_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00350_n6_α
# IR_TO
 xchain00350_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00353_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00350_n7_α
 xchain00350_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00353_0
# IR_LIT_STRING
 xchain00350_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00350_n8_α
.Lx00354_0:
 .quad .Lx00354_0_s
.Lx00354_0_s:
 .string "?\"abcde\""
# IR_BOUND
 xchain00350_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00350_n9_α
# IR_RETURN
 xchain00350_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strpick_γ
# IR_LIT_STRING
 xchain00350_n9_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00355_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00350_n10_α
.Lx00355_0:
 .quad .Lx00355_0_s
.Lx00355_0_s:
 .string "abcde"
# IR_RANDOM
 xchain00350_n10_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00350_n12_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00350_n11_α
# IR_DEREF variable -> value
 xchain00350_n11_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00350_n12_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00350_n12_α
# IR_UNMARK
 xchain00350_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00350_n5_β
proc_strpick_res:
add rsp, 8
pop rbp
proc_strpick_β:
jmp proc_strpick_ω
proc_strpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strpick_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_strbang_α
proc_strbang_α:
#=======================================================================================================================
    .global proc_strbang_α
    .global proc_strbang_β
    .global proc_strbang_γ
    .global proc_strbang_ω
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
proc_strbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00356_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00356_n2_α
xchain00356_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00357_0
 jmp xchain00356_n1_α
.Lx00357_0:
 jmp xchain00356_n1_α
 xchain00356_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00356_n1_α
xchain00356_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00356_n1_α
# IR_LIT_INTEGER
 xchain00356_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00358_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00356_n3_α
.Lx00358_0:
 .quad 1
# IR_VAR
 xchain00356_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00356_n4_α
 xchain00356_n2_β:
 jmp xchain00356_n0_af
# IR_VAR
 xchain00356_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00356_n5_α
# IR_UNOP
 xchain00356_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00356_n0_af
 cmp eax, 0
 jne xchain00356_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00356_n6_α
# IR_TO
 xchain00356_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00359_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00356_n7_α
 xchain00356_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00359_0
# IR_LIT_STRING
 xchain00356_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00356_n8_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "!\"12345\""
# IR_BOUND
 xchain00356_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00356_n9_α
# IR_RETURN
 xchain00356_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strbang_γ
# IR_LIT_STRING
 xchain00356_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00356_n10_α
.Lx00361_0:
 .quad .Lx00361_0_s
.Lx00361_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00356_n10_α:
 mov qword ptr [rbp + 192], 0
.Lx00362_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00356_n11_α
 jmp xchain00356_n10_β
 xchain00356_n10_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00362_0
# IR_UNMARK
 xchain00356_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00356_n5_β
proc_strbang_res:
add rsp, 8
pop rbp
proc_strbang_β:
jmp proc_strbang_ω
proc_strbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_strbang_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_strsub_α
proc_strsub_α:
#=======================================================================================================================
    .global proc_strsub_α
    .global proc_strsub_β
    .global proc_strsub_γ
    .global proc_strsub_ω
  sub rsp, 464
  mov [rsp + 440], rcx
  mov [rsp + 448], rdx
  mov [rsp + 456], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 432
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 424], rsp
  mov rdi, rsp
  mov esi, 432
  call rt_jmp_frame_lexprep@PLT
proc_strsub_α_body:
# IR_DISJUNCTION_NARY
 xchain00363_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00363_n2_α
xchain00363_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00364_0
 jmp xchain00363_n1_α
.Lx00364_0:
 jmp xchain00363_n1_α
 xchain00363_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00363_n1_α
xchain00363_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00363_n1_α
# IR_LIT_INTEGER
 xchain00363_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00365_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00363_n3_α
.Lx00365_0:
 .quad 1
# IR_VAR
 xchain00363_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00363_n4_α
 xchain00363_n2_β:
 jmp xchain00363_n0_af
# IR_VAR
 xchain00363_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00363_n5_α
# IR_UNOP
 xchain00363_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00363_n0_af
 cmp eax, 0
 jne xchain00363_n0_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00363_n6_α
# IR_TO
 xchain00363_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00366_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00363_n7_α
 xchain00363_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00366_0
# IR_LIT_STRING
 xchain00363_n6_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00363_n8_α
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "\"abcde\"[3]"
# IR_BOUND
 xchain00363_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00363_n9_α
# IR_RETURN
 xchain00363_n8_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsub_γ
# IR_LIT_STRING
 xchain00363_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00363_n10_α
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00363_n10_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00369_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00363_n11_α
.Lx00369_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00363_n11_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00363_n13_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00363_n12_α
# IR_DEREF variable -> value
 xchain00363_n12_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00363_n13_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00363_n13_α
# IR_UNMARK
 xchain00363_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00363_n5_β
proc_strsub_res:
add rsp, 8
pop rbp
proc_strsub_β:
jmp proc_strsub_ω
proc_strsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 440]
lea rsp, [rbp + 464]
mov rbp, [rbp + 456]
jmp rax
proc_strsub_ω:
mov rax, [rbp + 448]
lea rsp, [rbp + 464]
mov rbp, [rbp + 456]
jmp rax
  .globl proc_substr_α
proc_substr_α:
#=======================================================================================================================
    .global proc_substr_α
    .global proc_substr_β
    .global proc_substr_γ
    .global proc_substr_ω
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
proc_substr_α_body:
# IR_DISJUNCTION_NARY
 xchain00370_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00370_n2_α
xchain00370_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00371_0
 jmp xchain00370_n1_α
.Lx00371_0:
 jmp xchain00370_n1_α
 xchain00370_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00370_n1_α
xchain00370_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00370_n1_α
# IR_LIT_INTEGER
 xchain00370_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00372_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00370_n3_α
.Lx00372_0:
 .quad 1
# IR_VAR
 xchain00370_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00370_n4_α
 xchain00370_n2_β:
 jmp xchain00370_n0_af
# IR_VAR
 xchain00370_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00370_n5_α
# IR_UNOP
 xchain00370_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00370_n0_af
 cmp eax, 0
 jne xchain00370_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00370_n6_α
# IR_TO
 xchain00370_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00373_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00370_n7_α
 xchain00370_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00373_0
# IR_LIT_STRING
 xchain00370_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00370_n8_α
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "\"abcde\"[2:5]"
# IR_BOUND
 xchain00370_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00370_n9_α
# IR_RETURN
 xchain00370_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_substr_γ
# IR_LIT_STRING
 xchain00370_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00375_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00370_n10_α
.Lx00375_0:
 .quad .Lx00375_0_s
.Lx00375_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00370_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00376_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00370_n11_α
.Lx00376_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00370_n11_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00377_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00370_n12_α
.Lx00377_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00370_n12_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8, qword ptr [rbp + 272]
 mov r9, qword ptr [rbp + 280]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00370_n13_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00370_n13_α
# IR_UNMARK
 xchain00370_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00370_n5_β
proc_substr_res:
add rsp, 8
pop rbp
proc_substr_β:
jmp proc_substr_ω
proc_substr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_substr_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_subsasg_α
proc_subsasg_α:
#=======================================================================================================================
    .global proc_subsasg_α
    .global proc_subsasg_β
    .global proc_subsasg_γ
    .global proc_subsasg_ω
  sub rsp, 560
  mov [rsp + 536], rcx
  mov [rsp + 544], rdx
  mov [rsp + 552], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 528
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 504], rsp
  mov rdi, rsp
  mov esi, 528
  call rt_jmp_frame_lexprep@PLT
proc_subsasg_α_body:
# IR_DISJUNCTION_NARY
 xchain00378_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00378_n2_α
xchain00378_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00379_0
 jmp xchain00378_n1_α
.Lx00379_0:
 jmp xchain00378_n1_α
 xchain00378_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00378_n1_α
xchain00378_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00378_n1_α
# IR_LIT_INTEGER
 xchain00378_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00380_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00378_n3_α
.Lx00380_0:
 .quad 1
# IR_VAR
 xchain00378_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain00378_n4_α
 xchain00378_n2_β:
 jmp xchain00378_n0_af
# IR_VAR
 xchain00378_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00378_n5_α
# IR_UNOP
 xchain00378_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00378_n0_af
 cmp eax, 0
 jne xchain00378_n0_af
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00378_n6_α
# IR_TO
 xchain00378_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00381_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00378_n7_α
 xchain00378_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00381_0
# IR_LIT_STRING
 xchain00378_n6_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00378_n8_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "s[2:5] := \"x\""
# IR_BOUND
 xchain00378_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00378_n9_α
# IR_RETURN
 xchain00378_n8_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_subsasg_γ
# IR_LIT_STRING
 xchain00378_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00383_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00378_n10_α
.Lx00383_0:
 .quad .Lx00383_0_s
.Lx00383_0_s:
 .string "abcde"
 xchain00378_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00378_n11_α
# IR_LIT_INTEGER
 xchain00378_n11_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00384_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00378_n12_α
.Lx00384_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00378_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00385_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00378_n13_α
.Lx00385_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00378_n13_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 mov r8, qword ptr [rbp + 288]
 mov r9, qword ptr [rbp + 296]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00378_n15_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00378_n14_α
# IR_LIT_STRING
 xchain00378_n14_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00378_n16_α
.Lx00386_0:
 .quad .Lx00386_0_s
.Lx00386_0_s:
 .string "x"
# IR_UNMARK
 xchain00378_n15_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00378_n5_β
# IR_ASSIGN_VAR
 xchain00378_n16_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00378_n15_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00378_n15_α
proc_subsasg_res:
add rsp, 8
pop rbp
proc_subsasg_β:
jmp proc_subsasg_ω
proc_subsasg_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 536]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
proc_subsasg_ω:
mov rax, [rbp + 544]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
  .globl proc_strcmp_α
proc_strcmp_α:
#=======================================================================================================================
    .global proc_strcmp_α
    .global proc_strcmp_β
    .global proc_strcmp_γ
    .global proc_strcmp_ω
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
proc_strcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00387_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00387_n2_α
xchain00387_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00388_0
 jmp xchain00387_n1_α
.Lx00388_0:
 jmp xchain00387_n1_α
 xchain00387_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00387_n1_α
xchain00387_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00387_n1_α
# IR_LIT_INTEGER
 xchain00387_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00387_n3_α
.Lx00389_0:
 .quad 1
# IR_VAR
 xchain00387_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00387_n4_α
 xchain00387_n2_β:
 jmp xchain00387_n0_af
# IR_VAR
 xchain00387_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00387_n5_α
# IR_UNOP
 xchain00387_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00387_n0_af
 cmp eax, 0
 jne xchain00387_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00387_n6_α
# IR_TO
 xchain00387_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00390_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00387_n7_α
 xchain00387_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00390_0
# IR_LIT_STRING
 xchain00387_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00391_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00387_n8_α
.Lx00391_0:
 .quad .Lx00391_0_s
.Lx00391_0_s:
 .string "\"abc\">>\"aaa\""
# IR_BOUND
 xchain00387_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00387_n9_α
# IR_RETURN
 xchain00387_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcmp_γ
# IR_LIT_STRING
 xchain00387_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00392_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00387_n10_α
.Lx00392_0:
 .quad .Lx00392_0_s
.Lx00392_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00387_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00387_n11_α
.Lx00393_0:
 .quad .Lx00393_0_s
.Lx00393_0_s:
 .string "aaa"
 xchain00387_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00387_n12_α
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00387_n12_α
# IR_UNMARK
 xchain00387_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00387_n5_β
proc_strcmp_res:
add rsp, 8
pop rbp
proc_strcmp_β:
jmp proc_strcmp_ω
proc_strcmp_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_strcmp_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_strident_α
proc_strident_α:
#=======================================================================================================================
    .global proc_strident_α
    .global proc_strident_β
    .global proc_strident_γ
    .global proc_strident_ω
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
proc_strident_α_body:
# IR_DISJUNCTION_NARY
 xchain00394_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00394_n2_α
xchain00394_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00395_0
 jmp xchain00394_n1_α
.Lx00395_0:
 jmp xchain00394_n1_α
 xchain00394_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00394_n1_α
xchain00394_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00394_n1_α
# IR_LIT_INTEGER
 xchain00394_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00396_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00394_n3_α
.Lx00396_0:
 .quad 1
# IR_VAR
 xchain00394_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00394_n4_α
 xchain00394_n2_β:
 jmp xchain00394_n0_af
# IR_VAR
 xchain00394_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00394_n5_α
# IR_UNOP
 xchain00394_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00394_n0_af
 cmp eax, 0
 jne xchain00394_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00394_n6_α
# IR_TO
 xchain00394_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00397_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strident_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00394_n7_α
 xchain00394_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00397_0
# IR_LIT_STRING
 xchain00394_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00398_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00394_n8_α
.Lx00398_0:
 .quad .Lx00398_0_s
.Lx00398_0_s:
 .string "\"abc\"===\"aaa\""
# IR_BOUND
 xchain00394_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00394_n9_α
# IR_RETURN
 xchain00394_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strident_γ
# IR_LIT_STRING
 xchain00394_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00394_n10_α
.Lx00399_0:
 .quad .Lx00399_0_s
.Lx00399_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00394_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00400_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00394_n11_α
.Lx00400_0:
 .quad .Lx00400_0_s
.Lx00400_0_s:
 .string "aaa"
 xchain00394_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00394_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00394_n12_α
# IR_UNMARK
 xchain00394_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00394_n5_β
proc_strident_res:
add rsp, 8
pop rbp
proc_strident_β:
jmp proc_strident_ω
proc_strident_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 424]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
proc_strident_ω:
mov rax, [rbp + 432]
lea rsp, [rbp + 448]
mov rbp, [rbp + 440]
jmp rax
  .globl proc_replf_α
proc_replf_α:
#=======================================================================================================================
    .global proc_replf_α
    .global proc_replf_β
    .global proc_replf_γ
    .global proc_replf_ω
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
proc_replf_α_body:
# IR_DISJUNCTION_NARY
 xchain00401_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00401_n2_α
xchain00401_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00402_0
 jmp xchain00401_n1_α
.Lx00402_0:
 jmp xchain00401_n1_α
 xchain00401_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00401_n1_α
xchain00401_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00401_n1_α
# IR_LIT_INTEGER
 xchain00401_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00403_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00401_n3_α
.Lx00403_0:
 .quad 1
# IR_VAR
 xchain00401_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00401_n4_α
 xchain00401_n2_β:
 jmp xchain00401_n0_af
# IR_VAR
 xchain00401_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00401_n5_α
# IR_UNOP
 xchain00401_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00401_n0_af
 cmp eax, 0
 jne xchain00401_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00401_n6_α
# IR_TO
 xchain00401_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00404_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00401_n7_α
 xchain00401_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00404_0
# IR_LIT_STRING
 xchain00401_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00405_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00401_n8_α
.Lx00405_0:
 .quad .Lx00405_0_s
.Lx00405_0_s:
 .string "repl(\"-\",20)"
# IR_BOUND
 xchain00401_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00401_n9_α
# IR_RETURN
 xchain00401_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_replf_γ
# IR_LIT_STRING
 xchain00401_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00401_n10_α
.Lx00406_0:
 .quad .Lx00406_0_s
.Lx00406_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00401_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00407_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00401_n11_α
.Lx00407_0:
 .quad 20
 xchain00401_n11_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1279: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1279]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00401_n12_α
 jmp xchain00401_n12_α
 xchain00401_n11_β:
 jmp xchain00401_n12_α
# IR_UNMARK
 xchain00401_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00401_n5_β
proc_replf_res:
add rsp, 8
pop rbp
proc_replf_β:
jmp proc_replf_ω
proc_replf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_replf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_reversef_α
proc_reversef_α:
#=======================================================================================================================
    .global proc_reversef_α
    .global proc_reversef_β
    .global proc_reversef_γ
    .global proc_reversef_ω
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
proc_reversef_α_body:
# IR_DISJUNCTION_NARY
 xchain00408_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00408_n2_α
xchain00408_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00409_0
 jmp xchain00408_n1_α
.Lx00409_0:
 jmp xchain00408_n1_α
 xchain00408_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00408_n1_α
xchain00408_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00408_n1_α
# IR_LIT_INTEGER
 xchain00408_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00410_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00408_n3_α
.Lx00410_0:
 .quad 1
# IR_VAR
 xchain00408_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00408_n4_α
 xchain00408_n2_β:
 jmp xchain00408_n0_af
# IR_VAR
 xchain00408_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00408_n5_α
# IR_UNOP
 xchain00408_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00408_n0_af
 cmp eax, 0
 jne xchain00408_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00408_n6_α
# IR_TO
 xchain00408_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00411_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00408_n7_α
 xchain00408_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00411_0
# IR_LIT_STRING
 xchain00408_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00412_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00408_n8_α
.Lx00412_0:
 .quad .Lx00412_0_s
.Lx00412_0_s:
 .string "reverse(\"a...z\")"
# IR_BOUND
 xchain00408_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00408_n9_α
# IR_RETURN
 xchain00408_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reversef_γ
# IR_LIT_STRING
 xchain00408_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00413_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00408_n10_α
.Lx00413_0:
 .quad .Lx00413_0_s
.Lx00413_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00408_n10_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1299: .string "reverse"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1299]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00408_n11_α
 jmp xchain00408_n11_α
 xchain00408_n10_β:
 jmp xchain00408_n11_α
# IR_UNMARK
 xchain00408_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00408_n5_β
proc_reversef_res:
add rsp, 8
pop rbp
proc_reversef_β:
jmp proc_reversef_ω
proc_reversef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_reversef_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_leftf_α
proc_leftf_α:
#=======================================================================================================================
    .global proc_leftf_α
    .global proc_leftf_β
    .global proc_leftf_γ
    .global proc_leftf_ω
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
proc_leftf_α_body:
# IR_DISJUNCTION_NARY
 xchain00414_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00414_n2_α
xchain00414_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00415_0
 jmp xchain00414_n1_α
.Lx00415_0:
 jmp xchain00414_n1_α
 xchain00414_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00414_n1_α
xchain00414_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00414_n1_α
# IR_LIT_INTEGER
 xchain00414_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00416_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00414_n3_α
.Lx00416_0:
 .quad 1
# IR_VAR
 xchain00414_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00414_n4_α
 xchain00414_n2_β:
 jmp xchain00414_n0_af
# IR_VAR
 xchain00414_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00414_n5_α
# IR_UNOP
 xchain00414_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00414_n0_af
 cmp eax, 0
 jne xchain00414_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00414_n6_α
# IR_TO
 xchain00414_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00417_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00414_n7_α
 xchain00414_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00417_0
# IR_LIT_STRING
 xchain00414_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00414_n8_α
.Lx00418_0:
 .quad .Lx00418_0_s
.Lx00418_0_s:
 .string "left(\"a\",10)"
# IR_BOUND
 xchain00414_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00414_n9_α
# IR_RETURN
 xchain00414_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_leftf_γ
# IR_LIT_STRING
 xchain00414_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00419_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00414_n10_α
.Lx00419_0:
 .quad .Lx00419_0_s
.Lx00419_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00414_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00420_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00414_n11_α
.Lx00420_0:
 .quad 10
 xchain00414_n11_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1320: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1320]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00414_n12_α
 jmp xchain00414_n12_α
 xchain00414_n11_β:
 jmp xchain00414_n12_α
# IR_UNMARK
 xchain00414_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00414_n5_β
proc_leftf_res:
add rsp, 8
pop rbp
proc_leftf_β:
jmp proc_leftf_ω
proc_leftf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_leftf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_centerf_α
proc_centerf_α:
#=======================================================================================================================
    .global proc_centerf_α
    .global proc_centerf_β
    .global proc_centerf_γ
    .global proc_centerf_ω
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
proc_centerf_α_body:
# IR_DISJUNCTION_NARY
 xchain00421_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00421_n2_α
xchain00421_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00422_0
 jmp xchain00421_n1_α
.Lx00422_0:
 jmp xchain00421_n1_α
 xchain00421_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00421_n1_α
xchain00421_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00421_n1_α
# IR_LIT_INTEGER
 xchain00421_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00423_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00421_n3_α
.Lx00423_0:
 .quad 1
# IR_VAR
 xchain00421_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00421_n4_α
 xchain00421_n2_β:
 jmp xchain00421_n0_af
# IR_VAR
 xchain00421_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00421_n5_α
# IR_UNOP
 xchain00421_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00421_n0_af
 cmp eax, 0
 jne xchain00421_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00421_n6_α
# IR_TO
 xchain00421_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00424_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00421_n7_α
 xchain00421_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00424_0
# IR_LIT_STRING
 xchain00421_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00421_n8_α
.Lx00425_0:
 .quad .Lx00425_0_s
.Lx00425_0_s:
 .string "center(\"a\",10)"
# IR_BOUND
 xchain00421_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00421_n9_α
# IR_RETURN
 xchain00421_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_centerf_γ
# IR_LIT_STRING
 xchain00421_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00421_n10_α
.Lx00426_0:
 .quad .Lx00426_0_s
.Lx00426_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00421_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00421_n11_α
.Lx00427_0:
 .quad 10
 xchain00421_n11_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1341: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1341]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00421_n12_α
 jmp xchain00421_n12_α
 xchain00421_n11_β:
 jmp xchain00421_n12_α
# IR_UNMARK
 xchain00421_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00421_n5_β
proc_centerf_res:
add rsp, 8
pop rbp
proc_centerf_β:
jmp proc_centerf_ω
proc_centerf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_centerf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_rightf_α
proc_rightf_α:
#=======================================================================================================================
    .global proc_rightf_α
    .global proc_rightf_β
    .global proc_rightf_γ
    .global proc_rightf_ω
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
proc_rightf_α_body:
# IR_DISJUNCTION_NARY
 xchain00428_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00428_n2_α
xchain00428_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00429_0
 jmp xchain00428_n1_α
.Lx00429_0:
 jmp xchain00428_n1_α
 xchain00428_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00428_n1_α
xchain00428_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00428_n1_α
# IR_LIT_INTEGER
 xchain00428_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00430_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00428_n3_α
.Lx00430_0:
 .quad 1
# IR_VAR
 xchain00428_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00428_n4_α
 xchain00428_n2_β:
 jmp xchain00428_n0_af
# IR_VAR
 xchain00428_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00428_n5_α
# IR_UNOP
 xchain00428_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00428_n0_af
 cmp eax, 0
 jne xchain00428_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00428_n6_α
# IR_TO
 xchain00428_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00431_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00428_n7_α
 xchain00428_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00431_0
# IR_LIT_STRING
 xchain00428_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00432_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00428_n8_α
.Lx00432_0:
 .quad .Lx00432_0_s
.Lx00432_0_s:
 .string "right(\"a\",10)"
# IR_BOUND
 xchain00428_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00428_n9_α
# IR_RETURN
 xchain00428_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rightf_γ
# IR_LIT_STRING
 xchain00428_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00428_n10_α
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00428_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00428_n11_α
.Lx00434_0:
 .quad 10
 xchain00428_n11_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1362: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1362]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00428_n12_α
 jmp xchain00428_n12_α
 xchain00428_n11_β:
 jmp xchain00428_n12_α
# IR_UNMARK
 xchain00428_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00428_n5_β
proc_rightf_res:
add rsp, 8
pop rbp
proc_rightf_β:
jmp proc_rightf_ω
proc_rightf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_rightf_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_trimf_α
proc_trimf_α:
#=======================================================================================================================
    .global proc_trimf_α
    .global proc_trimf_β
    .global proc_trimf_γ
    .global proc_trimf_ω
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
proc_trimf_α_body:
# IR_DISJUNCTION_NARY
 xchain00435_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00435_n2_α
xchain00435_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00436_0
 jmp xchain00435_n1_α
.Lx00436_0:
 jmp xchain00435_n1_α
 xchain00435_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00435_n1_α
xchain00435_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00435_n1_α
# IR_LIT_INTEGER
 xchain00435_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00435_n3_α
.Lx00437_0:
 .quad 1
# IR_VAR
 xchain00435_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00435_n4_α
 xchain00435_n2_β:
 jmp xchain00435_n0_af
# IR_VAR
 xchain00435_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00435_n5_α
# IR_UNOP
 xchain00435_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00435_n0_af
 cmp eax, 0
 jne xchain00435_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00435_n6_α
# IR_TO
 xchain00435_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00438_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_trimf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00435_n7_α
 xchain00435_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00438_0
# IR_LIT_STRING
 xchain00435_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00439_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00435_n8_α
.Lx00439_0:
 .quad .Lx00439_0_s
.Lx00439_0_s:
 .string "trim(\"a  ...\")"
# IR_BOUND
 xchain00435_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00435_n9_α
# IR_RETURN
 xchain00435_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_trimf_γ
# IR_LIT_STRING
 xchain00435_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00440_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00435_n10_α
.Lx00440_0:
 .quad .Lx00440_0_s
.Lx00440_0_s:
 .string "a         "
 xchain00435_n10_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1382: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1382]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00435_n11_α
 jmp xchain00435_n11_α
 xchain00435_n10_β:
 jmp xchain00435_n11_α
# IR_UNMARK
 xchain00435_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00435_n5_β
proc_trimf_res:
add rsp, 8
pop rbp
proc_trimf_β:
jmp proc_trimf_ω
proc_trimf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_trimf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_entabf_α
proc_entabf_α:
#=======================================================================================================================
    .global proc_entabf_α
    .global proc_entabf_β
    .global proc_entabf_γ
    .global proc_entabf_ω
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
proc_entabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00441_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00441_n2_α
xchain00441_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00442_0
 jmp xchain00441_n1_α
.Lx00442_0:
 jmp xchain00441_n1_α
 xchain00441_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00441_n1_α
xchain00441_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00441_n1_α
# IR_LIT_INTEGER
 xchain00441_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00441_n3_α
.Lx00443_0:
 .quad 1
# IR_VAR
 xchain00441_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00441_n4_α
 xchain00441_n2_β:
 jmp xchain00441_n0_af
# IR_VAR
 xchain00441_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00441_n5_α
# IR_UNOP
 xchain00441_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00441_n0_af
 cmp eax, 0
 jne xchain00441_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00441_n6_α
# IR_TO
 xchain00441_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00444_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00441_n7_α
 xchain00441_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00444_0
# IR_LIT_STRING
 xchain00441_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00441_n8_α
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "entab(\"a  ...\")"
# IR_BOUND
 xchain00441_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00441_n9_α
# IR_RETURN
 xchain00441_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_entabf_γ
# IR_LIT_STRING
 xchain00441_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00446_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00441_n10_α
.Lx00446_0:
 .quad .Lx00446_0_s
.Lx00446_0_s:
 .string "a         "
 xchain00441_n10_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1402: .string "entab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1402]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00441_n11_α
 jmp xchain00441_n11_α
 xchain00441_n10_β:
 jmp xchain00441_n11_α
# IR_UNMARK
 xchain00441_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00441_n5_β
proc_entabf_res:
add rsp, 8
pop rbp
proc_entabf_β:
jmp proc_entabf_ω
proc_entabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_entabf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_detabf_α
proc_detabf_α:
#=======================================================================================================================
    .global proc_detabf_α
    .global proc_detabf_β
    .global proc_detabf_γ
    .global proc_detabf_ω
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
proc_detabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00447_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00447_n2_α
xchain00447_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00448_0
 jmp xchain00447_n1_α
.Lx00448_0:
 jmp xchain00447_n1_α
 xchain00447_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00447_n1_α
xchain00447_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00447_n1_α
# IR_LIT_INTEGER
 xchain00447_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00449_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00447_n3_α
.Lx00449_0:
 .quad 1
# IR_VAR
 xchain00447_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00447_n4_α
 xchain00447_n2_β:
 jmp xchain00447_n0_af
# IR_VAR
 xchain00447_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00447_n5_α
# IR_UNOP
 xchain00447_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00447_n0_af
 cmp eax, 0
 jne xchain00447_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00447_n6_α
# IR_TO
 xchain00447_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00450_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00447_n7_α
 xchain00447_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00450_0
# IR_LIT_STRING
 xchain00447_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00447_n8_α
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_BOUND
 xchain00447_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00447_n9_α
# IR_RETURN
 xchain00447_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_detabf_γ
# IR_LIT_STRING
 xchain00447_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00447_n10_α
.Lx00452_0:
 .quad .Lx00452_0_s
.Lx00452_0_s:
 .string "a\tb\tc"
 xchain00447_n10_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1422: .string "detab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1422]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00447_n11_α
 jmp xchain00447_n11_α
 xchain00447_n10_β:
 jmp xchain00447_n11_α
# IR_UNMARK
 xchain00447_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00447_n5_β
proc_detabf_res:
add rsp, 8
pop rbp
proc_detabf_β:
jmp proc_detabf_ω
proc_detabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 408]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
proc_detabf_ω:
mov rax, [rbp + 416]
lea rsp, [rbp + 432]
mov rbp, [rbp + 424]
jmp rax
  .globl proc_mapf_α
proc_mapf_α:
#=======================================================================================================================
    .global proc_mapf_α
    .global proc_mapf_β
    .global proc_mapf_γ
    .global proc_mapf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_mapf_α_body:
# IR_DISJUNCTION_NARY
 xchain00453_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00453_n2_α
xchain00453_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00454_0
 jmp xchain00453_n1_α
.Lx00454_0:
 jmp xchain00453_n1_α
 xchain00453_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00453_n1_α
xchain00453_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00453_n1_α
# IR_LIT_INTEGER
 xchain00453_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00455_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00453_n3_α
.Lx00455_0:
 .quad 1
# IR_VAR
 xchain00453_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00453_n4_α
 xchain00453_n2_β:
 jmp xchain00453_n0_af
# IR_VAR
 xchain00453_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00453_n5_α
# IR_UNOP
 xchain00453_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00453_n0_af
 cmp eax, 0
 jne xchain00453_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00453_n6_α
# IR_TO
 xchain00453_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00456_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00453_n7_α
 xchain00453_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00456_0
# IR_LIT_STRING
 xchain00453_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00457_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00453_n8_α
.Lx00457_0:
 .quad .Lx00457_0_s
.Lx00457_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_BOUND
 xchain00453_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00453_n9_α
# IR_RETURN
 xchain00453_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mapf_γ
# IR_LIT_STRING
 xchain00453_n9_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00458_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00453_n10_α
.Lx00458_0:
 .quad .Lx00458_0_s
.Lx00458_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00453_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00459_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00453_n11_α
.Lx00459_0:
 .quad .Lx00459_0_s
.Lx00459_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00453_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00453_n12_α
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00453_n12_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+208]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 216], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+224]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1444: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1444]
 lea rsi, [rbp + 192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00453_n13_α
 jmp xchain00453_n13_α
 xchain00453_n12_β:
 jmp xchain00453_n13_α
# IR_UNMARK
 xchain00453_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00453_n5_β
proc_mapf_res:
add rsp, 8
pop rbp
proc_mapf_β:
jmp proc_mapf_ω
proc_mapf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_mapf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_map1_α
proc_map1_α:
#=======================================================================================================================
    .global proc_map1_α
    .global proc_map1_β
    .global proc_map1_γ
    .global proc_map1_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_map1_α_body:
# IR_DISJUNCTION_NARY
 xchain00461_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00461_n2_α
xchain00461_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00462_0
 jmp xchain00461_n1_α
.Lx00462_0:
 jmp xchain00461_n1_α
 xchain00461_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00461_n1_α
xchain00461_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00461_n1_α
# IR_LIT_INTEGER
 xchain00461_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00463_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00461_n3_α
.Lx00463_0:
 .quad 1
# IR_VAR
 xchain00461_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00461_n4_α
 xchain00461_n2_β:
 jmp xchain00461_n0_af
# IR_VAR
 xchain00461_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00461_n5_α
# IR_UNOP
 xchain00461_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00461_n0_af
 cmp eax, 0
 jne xchain00461_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00461_n6_α
# IR_TO
 xchain00461_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00464_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00461_n7_α
 xchain00461_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00464_0
# IR_LIT_STRING
 xchain00461_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00461_n8_α
.Lx00465_0:
 .quad .Lx00465_0_s
.Lx00465_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_BOUND
 xchain00461_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00461_n9_α
# IR_RETURN
 xchain00461_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map1_γ
# IR_LIT_STRING
 xchain00461_n9_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00466_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00461_n10_α
.Lx00466_0:
 .quad .Lx00466_0_s
.Lx00466_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00461_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00467_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00461_n11_α
.Lx00467_0:
 .quad .Lx00467_0_s
.Lx00467_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00461_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00461_n12_α
.Lx00468_0:
 .quad .Lx00468_0_s
.Lx00468_0_s:
 .string "ba"
 xchain00461_n12_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+208]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 216], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+224]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1466: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1466]
 lea rsi, [rbp + 192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00461_n13_α
 jmp xchain00461_n13_α
 xchain00461_n12_β:
 jmp xchain00461_n13_α
# IR_UNMARK
 xchain00461_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00461_n5_β
proc_map1_res:
add rsp, 8
pop rbp
proc_map1_β:
jmp proc_map1_ω
proc_map1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_map1_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_map2_α
proc_map2_α:
#=======================================================================================================================
    .global proc_map2_α
    .global proc_map2_β
    .global proc_map2_γ
    .global proc_map2_ω
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
proc_map2_α_body:
# IR_DISJUNCTION_NARY
 xchain00469_n0_α:
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 mov dword ptr [rbp + 560], 0
 jmp xchain00469_n2_α
xchain00469_n0_as:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 0
 jne .Lx00470_0
 jmp xchain00469_n1_α
.Lx00470_0:
 jmp xchain00469_n1_α
 xchain00469_n0_β:
 mov eax, dword ptr [rbp + 560]
 jmp xchain00469_n1_α
xchain00469_n0_af:
 add dword ptr [rbp + 560], 1
 mov eax, dword ptr [rbp + 560]
 jmp xchain00469_n1_α
# IR_LIT_INTEGER
 xchain00469_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00471_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00469_n3_α
.Lx00471_0:
 .quad 1
# IR_VAR
 xchain00469_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain00469_n4_α
 xchain00469_n2_β:
 jmp xchain00469_n0_af
# IR_VAR
 xchain00469_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00469_n5_α
# IR_UNOP
 xchain00469_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00469_n0_af
 cmp eax, 0
 jne xchain00469_n0_af
 mov qword ptr [rbp + 608], 0
 mov qword ptr [rbp + 616], 0
 jmp xchain00469_n6_α
# IR_TO
 xchain00469_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00472_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00469_n7_α
 xchain00469_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00472_0
# IR_LIT_STRING
 xchain00469_n6_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00473_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00469_n8_α
.Lx00473_0:
 .quad .Lx00473_0_s
.Lx00473_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_BOUND
 xchain00469_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00469_n9_α
# IR_RETURN
 xchain00469_n8_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map2_γ
# IR_LIT_STRING
 xchain00469_n9_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00474_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00469_n10_α
.Lx00474_0:
 .quad .Lx00474_0_s
.Lx00474_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00469_n10_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00469_n11_α
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00469_n11_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00476_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00469_n12_α
.Lx00476_0:
 .quad .Lx00476_0_s
.Lx00476_0_s:
 .string "ba"
 xchain00469_n12_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+400]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+416]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn1488: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1488]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00469_n14_α
 jmp xchain00469_n13_α
 xchain00469_n12_β:
 jmp xchain00469_n14_α
# IR_LIT_STRING
 xchain00469_n13_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00477_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00469_n15_α
.Lx00477_0:
 .quad .Lx00477_0_s
.Lx00477_0_s:
 .string "c"
# IR_UNMARK
 xchain00469_n14_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00469_n5_β
# IR_LIT_STRING
 xchain00469_n15_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00478_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00469_n16_α
.Lx00478_0:
 .quad .Lx00478_0_s
.Lx00478_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00469_n16_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00479_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00469_n17_α
.Lx00479_0:
 .quad .Lx00479_0_s
.Lx00479_0_s:
 .string "cd"
 xchain00469_n17_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+224]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 232], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+240]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn1495: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1495]
 lea rsi, [rbp + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00469_n14_α
 jmp xchain00469_n18_α
 xchain00469_n17_β:
 jmp xchain00469_n14_α
 xchain00469_n18_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00469_n14_α
xchain00469_n18_β:
 jmp xchain00469_n14_α
proc_map2_res:
add rsp, 8
pop rbp
proc_map2_β:
jmp proc_map2_ω
proc_map2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_map2_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_tablemap_α
proc_tablemap_α:
#=======================================================================================================================
    .global proc_tablemap_α
    .global proc_tablemap_β
    .global proc_tablemap_γ
    .global proc_tablemap_ω
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
proc_tablemap_α_body:
# IR_DISJUNCTION_NARY
 xchain00480_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00480_n2_α
xchain00480_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00481_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 jmp xchain00480_n1_α
.Lx00481_0:
 jmp xchain00480_n1_α
 xchain00480_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00480_n1_α
xchain00480_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00480_n1_α
# IR_DISJUNCTION_NARY
 xchain00480_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00480_n5_α
xchain00480_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00482_0
 jmp xchain00480_n4_α
.Lx00482_0:
 jmp xchain00480_n4_α
 xchain00480_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00480_n4_α
xchain00480_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00480_n4_α
# IR_VAR_REF
 xchain00480_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00480_n6_α
 xchain00480_n2_β:
 jmp xchain00480_n0_af
 xchain00480_n3_α:
 jmp xchain00480_n0_as
xchain00480_n3_β:
 jmp xchain00480_n1_α
# IR_LIT_INTEGER
 xchain00480_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00483_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00480_n7_α
.Lx00483_0:
 .quad 1
# IR_VAR
 xchain00480_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00480_n8_α
 xchain00480_n5_β:
 jmp xchain00480_n1_af
# IR_NULLTEST_VAR
 xchain00480_n6_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 99
 je xchain00480_n0_af
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00480_n0_af
 cmp eax, 0
 jne xchain00480_n0_af
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 840], rax
 jmp xchain00480_n9_α
# IR_VAR
 xchain00480_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00480_n10_α
# IR_UNOP
 xchain00480_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00480_n1_af
 cmp eax, 0
 jne xchain00480_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00480_n11_α
# IR_LIT_INTEGER
 xchain00480_n9_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00484_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00480_n12_α
.Lx00484_0:
 .quad 1
# IR_TO
 xchain00480_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00485_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00480_n13_α
 xchain00480_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00485_0
# IR_LIT_STRING
 xchain00480_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00486_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00480_n14_α
.Lx00486_0:
 .quad .Lx00486_0_s
.Lx00486_0_s:
 .string "T[\"b\"]"
# IR_ASSIGN_VAR
 xchain00480_n12_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00480_n0_af
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00480_n15_α
# IR_BOUND
 xchain00480_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00480_n16_α
# IR_RETURN
 xchain00480_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tablemap_γ
 xchain00480_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1521: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1521]
 lea rsi, [rbp + 784]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain00480_n18_α
 jmp xchain00480_n17_α
 xchain00480_n15_β:
 jmp xchain00480_n18_α
# IR_VAR_REF
 xchain00480_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00480_n19_α
# IR_ASSIGN gva
 xchain00480_n17_α:
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00480_n18_α
# IR_VAR_REF
 xchain00480_n18_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00480_n20_α
# IR_LIT_STRING
 xchain00480_n19_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00487_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00480_n21_α
.Lx00487_0:
 .quad .Lx00487_0_s
.Lx00487_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00480_n20_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00488_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00480_n22_α
.Lx00488_0:
 .quad .Lx00488_0_s
.Lx00488_0_s:
 .string "a"
# IR_SUBSCRIPT x[i] variable
 xchain00480_n21_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n24_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00480_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00480_n22_α:
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n26_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00480_n25_α
# IR_DEREF variable -> value
 xchain00480_n23_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00480_n24_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00480_n24_α
# IR_UNMARK
 xchain00480_n24_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00480_n10_β
# IR_LIT_STRING
 xchain00480_n25_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx00489_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00480_n27_α
.Lx00489_0:
 .quad .Lx00489_0_s
.Lx00489_0_s:
 .string "b"
# IR_VAR_REF
 xchain00480_n26_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00480_n28_α
# IR_ASSIGN_VAR
 xchain00480_n27_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00480_n26_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00480_n26_α
# IR_LIT_STRING
 xchain00480_n28_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00490_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00480_n29_α
.Lx00490_0:
 .quad .Lx00490_0_s
.Lx00490_0_s:
 .string "b"
# IR_SUBSCRIPT x[i] variable
 xchain00480_n29_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00480_n1_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00480_n30_α
# IR_LIT_STRING
 xchain00480_n30_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00480_n31_α
.Lx00491_0:
 .quad .Lx00491_0_s
.Lx00491_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00480_n31_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00480_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00480_n3_α
proc_tablemap_res:
add rsp, 8
pop rbp
proc_tablemap_β:
jmp proc_tablemap_ω
proc_tablemap_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 936]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
proc_tablemap_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
  .globl proc_listmap_α
proc_listmap_α:
#=======================================================================================================================
    .global proc_listmap_α
    .global proc_listmap_β
    .global proc_listmap_γ
    .global proc_listmap_ω
  sub rsp, 1152
  mov [rsp + 1128], rcx
  mov [rsp + 1136], rdx
  mov [rsp + 1144], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1120
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1120
  call rt_jmp_frame_lexprep@PLT
proc_listmap_α_body:
# IR_DISJUNCTION_NARY
 xchain00492_n0_α:
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 mov dword ptr [rbp + 480], 0
 jmp xchain00492_n2_α
xchain00492_n0_as:
 mov eax, dword ptr [rbp + 480]
 cmp eax, 0
 jne .Lx00493_0
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 472], rax
 jmp xchain00492_n1_α
.Lx00493_0:
 jmp xchain00492_n1_α
 xchain00492_n0_β:
 mov eax, dword ptr [rbp + 480]
 jmp xchain00492_n1_α
xchain00492_n0_af:
 add dword ptr [rbp + 480], 1
 mov eax, dword ptr [rbp + 480]
 jmp xchain00492_n1_α
# IR_DISJUNCTION_NARY
 xchain00492_n1_α:
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 mov dword ptr [rbp + 352], 0
 jmp xchain00492_n5_α
xchain00492_n1_as:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 0
 jne .Lx00494_0
 jmp xchain00492_n4_α
.Lx00494_0:
 jmp xchain00492_n4_α
 xchain00492_n1_β:
 mov eax, dword ptr [rbp + 352]
 jmp xchain00492_n4_α
xchain00492_n1_af:
 add dword ptr [rbp + 352], 1
 mov eax, dword ptr [rbp + 352]
 jmp xchain00492_n4_α
# IR_VAR_REF
 xchain00492_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052432
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00492_n6_α
 xchain00492_n2_β:
 jmp xchain00492_n0_af
 xchain00492_n3_α:
 jmp xchain00492_n0_as
xchain00492_n3_β:
 jmp xchain00492_n1_α
# IR_LIT_INTEGER
 xchain00492_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00495_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00492_n7_α
.Lx00495_0:
 .quad 1
# IR_VAR
 xchain00492_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00492_n8_α
 xchain00492_n5_β:
 jmp xchain00492_n1_af
# IR_NULLTEST_VAR
 xchain00492_n6_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00492_n0_af
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00492_n0_af
 cmp eax, 0
 jne xchain00492_n0_af
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00492_n9_α
# IR_VAR
 xchain00492_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00492_n10_α
# IR_UNOP
 xchain00492_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00492_n1_af
 cmp eax, 0
 jne xchain00492_n1_af
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain00492_n11_α
# IR_LIT_INTEGER
 xchain00492_n9_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00492_n12_α
.Lx00496_0:
 .quad 1
# IR_TO
 xchain00492_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00497_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00492_n13_α
 xchain00492_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00497_0
# IR_LIT_STRING
 xchain00492_n11_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00498_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00492_n14_α
.Lx00498_0:
 .quad .Lx00498_0_s
.Lx00498_0_s:
 .string "L[ord(\"b\")]"
# IR_ASSIGN_VAR
 xchain00492_n12_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00492_n0_af
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00492_n15_α
# IR_BOUND
 xchain00492_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00492_n16_α
# IR_RETURN
 xchain00492_n14_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listmap_γ
# IR_LIT_INTEGER
 xchain00492_n15_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00492_n17_α
.Lx00499_0:
 .quad 256
# IR_VAR_REF
 xchain00492_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00492_n18_α
 xchain00492_n17_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn1569: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1569]
 lea rsi, [rbp + 928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00492_n20_α
 jmp xchain00492_n19_α
 xchain00492_n17_β:
 jmp xchain00492_n20_α
# IR_LIT_STRING
 xchain00492_n18_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00500_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00492_n21_α
.Lx00500_0:
 .quad .Lx00500_0_s
.Lx00500_0_s:
 .string "b"
# IR_ASSIGN gva
 xchain00492_n19_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00492_n20_α
# IR_VAR_REF
 xchain00492_n20_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00492_n22_α
 xchain00492_n21_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1575: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1575]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00492_n24_α
 jmp xchain00492_n23_α
 xchain00492_n21_β:
 jmp xchain00492_n24_α
# IR_LIT_STRING
 xchain00492_n22_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00501_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00492_n25_α
.Lx00501_0:
 .quad .Lx00501_0_s
.Lx00501_0_s:
 .string "a"
# IR_SUBSCRIPT x[i] variable
 xchain00492_n23_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00492_n24_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00492_n26_α
# IR_UNMARK
 xchain00492_n24_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00492_n10_β
 xchain00492_n25_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
  .section .rodata
  .Lrkfn1581: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1581]
 lea rsi, [rbp + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain00492_n28_α
 jmp xchain00492_n27_α
 xchain00492_n25_β:
 jmp xchain00492_n28_α
# IR_DEREF variable -> value
 xchain00492_n26_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00492_n24_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00492_n24_α
# IR_SUBSCRIPT x[i] variable
 xchain00492_n27_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00492_n28_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00492_n29_α
# IR_VAR_REF
 xchain00492_n28_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00492_n30_α
# IR_LIT_STRING
 xchain00492_n29_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00502_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00492_n31_α
.Lx00502_0:
 .quad .Lx00502_0_s
.Lx00502_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00492_n30_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00492_n32_α
.Lx00503_0:
 .quad .Lx00503_0_s
.Lx00503_0_s:
 .string "b"
# IR_ASSIGN_VAR
 xchain00492_n31_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00492_n28_α
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00492_n28_α
 xchain00492_n32_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn1590: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1590]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00492_n1_α
 jmp xchain00492_n33_α
 xchain00492_n32_β:
 jmp xchain00492_n1_α
# IR_SUBSCRIPT x[i] variable
 xchain00492_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00492_n1_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00492_n34_α
# IR_LIT_STRING
 xchain00492_n34_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00504_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00492_n35_α
.Lx00504_0:
 .quad .Lx00504_0_s
.Lx00504_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00492_n35_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00492_n1_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00492_n3_α
proc_listmap_res:
add rsp, 8
pop rbp
proc_listmap_β:
jmp proc_listmap_ω
proc_listmap_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1128]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
proc_listmap_ω:
mov rax, [rbp + 1136]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
  .globl proc_nullscan_α
proc_nullscan_α:
#=======================================================================================================================
    .global proc_nullscan_α
    .global proc_nullscan_β
    .global proc_nullscan_γ
    .global proc_nullscan_ω
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
proc_nullscan_α_body:
# IR_DISJUNCTION_NARY
 xchain00505_n0_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00505_n2_α
xchain00505_n0_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00506_0
 jmp xchain00505_n1_α
.Lx00506_0:
 jmp xchain00505_n1_α
 xchain00505_n0_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00505_n1_α
xchain00505_n0_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00505_n1_α
# IR_LIT_INTEGER
 xchain00505_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00507_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00505_n3_α
.Lx00507_0:
 .quad 1
# IR_VAR
 xchain00505_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00505_n4_α
 xchain00505_n2_β:
 jmp xchain00505_n0_af
# IR_VAR
 xchain00505_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00505_n5_α
# IR_UNOP
 xchain00505_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00505_n0_af
 cmp eax, 0
 jne xchain00505_n0_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00505_n6_α
# IR_TO
 xchain00505_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00508_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00505_n7_α
 xchain00505_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00508_0
# IR_LIT_STRING
 xchain00505_n6_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00509_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00505_n8_α
.Lx00509_0:
 .quad .Lx00509_0_s
.Lx00509_0_s:
 .string "s ? 0"
# IR_BOUND
 xchain00505_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00505_n9_α
# IR_RETURN
 xchain00505_n8_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullscan_γ
# IR_LIT_STRING
 xchain00505_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00510_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00505_n10_α
.Lx00510_0:
 .quad .Lx00510_0_s
.Lx00510_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00505_n10_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00505_n11_α
# IR_LIT_INTEGER
 xchain00505_n11_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00511_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00505_n12_α
.Lx00511_0:
 .quad 0
# IR_GEN_SCAN
 xchain00505_n12_α:
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
 lea rdi, [rbp + 192]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 192]
 mov r14, qword ptr [rbp + 200]
 mov r15, qword ptr [rbp + 208]
 jmp xchain00505_n13_α
 xchain00505_n12_β:
 jmp xchain00505_n13_α
# IR_UNMARK
 xchain00505_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00505_n5_β
proc_nullscan_res:
add rsp, 8
pop rbp
proc_nullscan_β:
jmp proc_nullscan_ω
proc_nullscan_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 472]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
proc_nullscan_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
  .globl proc_movef_α
proc_movef_α:
#=======================================================================================================================
    .global proc_movef_α
    .global proc_movef_β
    .global proc_movef_γ
    .global proc_movef_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_movef_α_body:
# IR_DISJUNCTION_NARY
 xchain00512_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00512_n2_α
xchain00512_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00513_0
 jmp xchain00512_n1_α
.Lx00513_0:
 jmp xchain00512_n1_α
 xchain00512_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00512_n1_α
xchain00512_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00512_n1_α
# IR_LIT_STRING
 xchain00512_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00514_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00512_n3_α
.Lx00514_0:
 .quad .Lx00514_0_s
.Lx00514_0_s:
 .string "abcde"
# IR_VAR
 xchain00512_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00512_n4_α
 xchain00512_n2_β:
 jmp xchain00512_n0_af
# IR_GEN_SCAN
 xchain00512_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00512_n5_α
# IR_UNOP
 xchain00512_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00512_n0_af
 cmp eax, 0
 jne xchain00512_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00512_n6_α
# IR_LIT_INTEGER
 xchain00512_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00515_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00512_n7_α
.Lx00515_0:
 .quad 1
# IR_LIT_STRING
 xchain00512_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00516_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00512_n8_α
.Lx00516_0:
 .quad .Lx00516_0_s
.Lx00516_0_s:
 .string "move(0)"
# IR_VAR
 xchain00512_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00512_n9_α
# IR_RETURN
 xchain00512_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_movef_γ
# IR_TO
 xchain00512_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00517_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00512_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00512_n11_α
 xchain00512_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00517_0
# IR_GEN_SCAN
 xchain00512_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_movef_ω
 xchain00512_n10_β:
 jmp proc_movef_ω
# IR_BOUND
 xchain00512_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00512_n12_α
# IR_LIT_INTEGER
 xchain00512_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00518_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00512_n13_α
.Lx00518_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00512_n13_α:
 sub rsp, 16
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00519_239
 add rsp, 16
 jmp xchain00512_n14_α
.Lx00519_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00519_240
 add rsp, 16
 jmp xchain00512_n14_α
.Lx00519_240:
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
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00512_n14_α
 xchain00512_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00512_n14_α
# IR_UNMARK
 xchain00512_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00512_n9_β
proc_movef_res:
add rsp, 8
pop rbp
proc_movef_β:
jmp proc_movef_ω
proc_movef_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_movef_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_mov11_α
proc_mov11_α:
#=======================================================================================================================
    .global proc_mov11_α
    .global proc_mov11_β
    .global proc_mov11_γ
    .global proc_mov11_ω
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
proc_mov11_α_body:
# IR_DISJUNCTION_NARY
 xchain00520_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00520_n2_α
xchain00520_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00521_0
 jmp xchain00520_n1_α
.Lx00521_0:
 jmp xchain00520_n1_α
 xchain00520_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00520_n1_α
xchain00520_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00520_n1_α
# IR_LIT_STRING
 xchain00520_n1_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00520_n3_α
.Lx00522_0:
 .quad .Lx00522_0_s
.Lx00522_0_s:
 .string "abcde"
# IR_VAR
 xchain00520_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 536], rax
 jmp xchain00520_n4_α
 xchain00520_n2_β:
 jmp xchain00520_n0_af
# IR_GEN_SCAN
 xchain00520_n3_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00520_n5_α
# IR_UNOP
 xchain00520_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00520_n0_af
 cmp eax, 0
 jne xchain00520_n0_af
 mov qword ptr [rbp + 496], 0
 mov qword ptr [rbp + 504], 0
 jmp xchain00520_n6_α
# IR_LIT_INTEGER
 xchain00520_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00523_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00520_n7_α
.Lx00523_0:
 .quad 1
# IR_LIT_STRING
 xchain00520_n6_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00524_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00520_n8_α
.Lx00524_0:
 .quad .Lx00524_0_s
.Lx00524_0_s:
 .string "move(1) & move(-1)"
# IR_VAR
 xchain00520_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00520_n9_α
# IR_RETURN
 xchain00520_n8_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mov11_γ
# IR_TO
 xchain00520_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00525_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00520_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00520_n11_α
 xchain00520_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00525_0
# IR_GEN_SCAN
 xchain00520_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_mov11_ω
 xchain00520_n10_β:
 jmp proc_mov11_ω
# IR_BOUND
 xchain00520_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00520_n12_α
# IR_LIT_INTEGER
 xchain00520_n12_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00526_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00520_n13_α
.Lx00526_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00520_n13_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00527_239
 add rsp, 16
 jmp xchain00520_n15_α
.Lx00527_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00527_240
 add rsp, 16
 jmp xchain00520_n15_α
.Lx00527_240:
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
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00520_n14_α
 xchain00520_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00520_n15_α
# IR_LIT_INTEGER
 xchain00520_n14_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00520_n16_α
.Lx00528_0:
 .quad 18446744073709551615
# IR_UNMARK
 xchain00520_n15_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00520_n9_β
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00520_n16_α:
 sub rsp, 16
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00529_239
 add rsp, 16
 jmp xchain00520_n15_α
.Lx00529_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00529_240
 add rsp, 16
 jmp xchain00520_n15_α
.Lx00529_240:
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
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00520_n17_α
 xchain00520_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00520_n15_α
 xchain00520_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00520_n15_α
xchain00520_n17_β:
 jmp xchain00520_n15_α
proc_mov11_res:
add rsp, 8
pop rbp
proc_mov11_β:
jmp proc_mov11_ω
proc_mov11_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 584]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
proc_mov11_ω:
mov rax, [rbp + 592]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
  .globl proc_pos11_α
proc_pos11_α:
#=======================================================================================================================
    .global proc_pos11_α
    .global proc_pos11_β
    .global proc_pos11_γ
    .global proc_pos11_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_pos11_α_body:
# IR_DISJUNCTION_NARY
 xchain00530_n0_α:
 mov qword ptr [rbp + 592], 0
 mov qword ptr [rbp + 600], 0
 mov dword ptr [rbp + 608], 0
 jmp xchain00530_n2_α
xchain00530_n0_as:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 0
 jne .Lx00531_0
 jmp xchain00530_n1_α
.Lx00531_0:
 jmp xchain00530_n1_α
 xchain00530_n0_β:
 mov eax, dword ptr [rbp + 608]
 jmp xchain00530_n1_α
xchain00530_n0_af:
 add dword ptr [rbp + 608], 1
 mov eax, dword ptr [rbp + 608]
 jmp xchain00530_n1_α
# IR_LIT_STRING
 xchain00530_n1_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00532_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00530_n3_α
.Lx00532_0:
 .quad .Lx00532_0_s
.Lx00532_0_s:
 .string "abcde"
# IR_VAR
 xchain00530_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 696], rax
 jmp xchain00530_n4_α
 xchain00530_n2_β:
 jmp xchain00530_n0_af
# IR_GEN_SCAN
 xchain00530_n3_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00530_n5_α
# IR_UNOP
 xchain00530_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00530_n0_af
 cmp eax, 0
 jne xchain00530_n0_af
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 jmp xchain00530_n6_α
# IR_LIT_INTEGER
 xchain00530_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00533_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00530_n7_α
.Lx00533_0:
 .quad 1
# IR_LIT_STRING
 xchain00530_n6_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00534_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00530_n8_α
.Lx00534_0:
 .quad .Lx00534_0_s
.Lx00534_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_VAR
 xchain00530_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00530_n9_α
# IR_RETURN
 xchain00530_n8_α:
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pos11_γ
# IR_TO
 xchain00530_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00535_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00530_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00530_n11_α
 xchain00530_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00535_0
# IR_GEN_SCAN
 xchain00530_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_pos11_ω
 xchain00530_n10_β:
 jmp proc_pos11_ω
# IR_BOUND
 xchain00530_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00530_n12_α
# KEYWORD_pos_call
 xchain00530_n12_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00530_n13_α
 xchain00530_n12_β:
 jmp xchain00530_n16_α
# IR_LIT_INTEGER
 xchain00530_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00536_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00530_n14_α
.Lx00536_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00530_n14_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 7
 je .Lx00537_1
 cmp eax, 6
 jne .Lx00537_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00537_0
.Lx00537_1:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
 jmp xchain00530_n15_α
.Lx00537_0:
 lea rdi, [rbp + 496]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00530_n15_α
 xchain00530_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00538_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00538_2
.Lx00538_1:
 mov rax, qword ptr [rbp + 472]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00530_n17_α
.Lx00538_0:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00530_n17_α
.Lx00538_2:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00530_n16_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00530_n17_α
 xchain00530_n15_β:
 jmp xchain00530_n16_α
# IR_UNMARK
 xchain00530_n16_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00530_n9_β
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00530_n17_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00530_n16_α
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00530_n18_α
# KEYWORD_pos_call
 xchain00530_n18_α:
 call rt_keyword_pos@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00530_n19_α
 xchain00530_n18_β:
 jmp xchain00530_n16_α
# IR_LIT_INTEGER
 xchain00530_n19_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00530_n20_α
.Lx00539_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00530_n20_α:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 7
 je .Lx00540_1
 cmp eax, 6
 jne .Lx00540_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00540_0
.Lx00540_1:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 jmp xchain00530_n21_α
.Lx00540_0:
 lea rdi, [rbp + 352]
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00530_n21_α
 xchain00530_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 320]
 cmp eax, 100
 je .Lx00541_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00541_2
.Lx00541_1:
 mov rax, qword ptr [rbp + 328]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain00530_n22_α
.Lx00541_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00530_n22_α
.Lx00541_2:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00530_n16_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00530_n22_α
 xchain00530_n21_β:
 jmp xchain00530_n16_α
# BOX ICN IR_KEYWORD_ASSIGN pos call [non-scan: rt_keyword_pos_set cvpos vs strlen(scan_subj), set scan_pos, fail->omega]
 xchain00530_n22_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00530_n16_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00530_n23_α
 xchain00530_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00530_n16_α
xchain00530_n23_β:
 jmp xchain00530_n16_α
proc_pos11_res:
add rsp, 8
pop rbp
proc_pos11_β:
jmp proc_pos11_ω
proc_pos11_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_pos11_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_tabf_α
proc_tabf_α:
#=======================================================================================================================
    .global proc_tabf_α
    .global proc_tabf_β
    .global proc_tabf_γ
    .global proc_tabf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_tabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00542_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00542_n2_α
xchain00542_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00543_0
 jmp xchain00542_n1_α
.Lx00543_0:
 jmp xchain00542_n1_α
 xchain00542_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00542_n1_α
xchain00542_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00542_n1_α
# IR_LIT_STRING
 xchain00542_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00544_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00542_n3_α
.Lx00544_0:
 .quad .Lx00544_0_s
.Lx00544_0_s:
 .string "abcde"
# IR_VAR
 xchain00542_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00542_n4_α
 xchain00542_n2_β:
 jmp xchain00542_n0_af
# IR_GEN_SCAN
 xchain00542_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00542_n5_α
# IR_UNOP
 xchain00542_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00542_n0_af
 cmp eax, 0
 jne xchain00542_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00542_n6_α
# IR_LIT_INTEGER
 xchain00542_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00545_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00542_n7_α
.Lx00545_0:
 .quad 1
# IR_LIT_STRING
 xchain00542_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00546_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00542_n8_α
.Lx00546_0:
 .quad .Lx00546_0_s
.Lx00546_0_s:
 .string "tab(3)"
# IR_VAR
 xchain00542_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00542_n9_α
# IR_RETURN
 xchain00542_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabf_γ
# IR_TO
 xchain00542_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00547_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00542_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00542_n11_α
 xchain00542_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00547_0
# IR_GEN_SCAN
 xchain00542_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabf_ω
 xchain00542_n10_β:
 jmp proc_tabf_ω
# IR_BOUND
 xchain00542_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00542_n12_α
# IR_LIT_INTEGER
 xchain00542_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00542_n13_α
.Lx00548_0:
 .quad 3
# IR_SCAN_TAB
 xchain00542_n13_α:
 sub rsp, 16
 mov rax, 3
 cmp rax, 1
 jge .Lx00549_0
 add rax, r15
 add rax, 1
.Lx00549_0:
 cmp rax, 1
 jge .Lx00549_239
 add rsp, 16
 jmp xchain00542_n14_α
.Lx00549_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00549_240
 add rsp, 16
 jmp xchain00542_n14_α
.Lx00549_240:
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
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00542_n14_α
 xchain00542_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00542_n14_α
# IR_UNMARK
 xchain00542_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00542_n9_β
proc_tabf_res:
add rsp, 8
pop rbp
proc_tabf_β:
jmp proc_tabf_ω
proc_tabf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_tabf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_matchf_α
proc_matchf_α:
#=======================================================================================================================
    .global proc_matchf_α
    .global proc_matchf_β
    .global proc_matchf_γ
    .global proc_matchf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_matchf_α_body:
# IR_DISJUNCTION_NARY
 xchain00550_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00550_n2_α
xchain00550_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00551_0
 jmp xchain00550_n1_α
.Lx00551_0:
 jmp xchain00550_n1_α
 xchain00550_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00550_n1_α
xchain00550_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00550_n1_α
# IR_LIT_STRING
 xchain00550_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00550_n3_α
.Lx00552_0:
 .quad .Lx00552_0_s
.Lx00552_0_s:
 .string "abcde"
# IR_VAR
 xchain00550_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00550_n4_α
 xchain00550_n2_β:
 jmp xchain00550_n0_af
# IR_GEN_SCAN
 xchain00550_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00550_n5_α
# IR_UNOP
 xchain00550_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00550_n0_af
 cmp eax, 0
 jne xchain00550_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00550_n6_α
# IR_LIT_INTEGER
 xchain00550_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00550_n7_α
.Lx00553_0:
 .quad 1
# IR_LIT_STRING
 xchain00550_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00550_n8_α
.Lx00554_0:
 .quad .Lx00554_0_s
.Lx00554_0_s:
 .string "match(\"abc\")"
# IR_VAR
 xchain00550_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00550_n9_α
# IR_RETURN
 xchain00550_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_matchf_γ
# IR_TO
 xchain00550_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00555_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00550_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00550_n11_α
 xchain00550_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00555_0
# IR_GEN_SCAN
 xchain00550_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_matchf_ω
 xchain00550_n10_β:
 jmp proc_matchf_ω
# IR_BOUND
 xchain00550_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00550_n12_α
# IR_LIT_STRING
 xchain00550_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00550_n13_α
.Lx00556_0:
 .quad .Lx00556_0_s
.Lx00556_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00550_n13_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00557_239
 add rsp, 16
 jmp xchain00550_n14_α
.Lx00557_239:
 mov rdi, qword ptr [rip + .Lx00557_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00557_240
 add rsp, 16
 jmp xchain00550_n14_α
.Lx00557_240:
 mov qword ptr [rbp + 256], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 264], rax
 jmp xchain00550_n14_α
.Lx00557_0:
 .quad .Lx00557_0_s
.Lx00557_0_s:
 .string "abc"
# IR_UNMARK
 xchain00550_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00550_n9_β
proc_matchf_res:
add rsp, 8
pop rbp
proc_matchf_β:
jmp proc_matchf_ω
proc_matchf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_matchf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_tabmat_α
proc_tabmat_α:
#=======================================================================================================================
    .global proc_tabmat_α
    .global proc_tabmat_β
    .global proc_tabmat_γ
    .global proc_tabmat_ω
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
proc_tabmat_α_body:
# IR_DISJUNCTION_NARY
 xchain00558_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00558_n2_α
xchain00558_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00559_0
 jmp xchain00558_n1_α
.Lx00559_0:
 jmp xchain00558_n1_α
 xchain00558_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00558_n1_α
xchain00558_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00558_n1_α
# IR_LIT_STRING
 xchain00558_n1_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00560_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00558_n3_α
.Lx00560_0:
 .quad .Lx00560_0_s
.Lx00560_0_s:
 .string "abcde"
# IR_VAR
 xchain00558_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00558_n4_α
 xchain00558_n2_β:
 jmp xchain00558_n0_af
# IR_GEN_SCAN
 xchain00558_n3_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00558_n5_α
# IR_UNOP
 xchain00558_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00558_n0_af
 cmp eax, 0
 jne xchain00558_n0_af
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 jmp xchain00558_n6_α
# IR_LIT_INTEGER
 xchain00558_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00558_n7_α
.Lx00561_0:
 .quad 1
# IR_LIT_STRING
 xchain00558_n6_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00558_n8_α
.Lx00562_0:
 .quad .Lx00562_0_s
.Lx00562_0_s:
 .string "s1 ? =s2"
# IR_VAR
 xchain00558_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00558_n9_α
# IR_RETURN
 xchain00558_n8_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabmat_γ
# IR_TO
 xchain00558_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00563_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00558_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00558_n11_α
 xchain00558_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00563_0
# IR_GEN_SCAN
 xchain00558_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabmat_ω
 xchain00558_n10_β:
 jmp proc_tabmat_ω
# IR_BOUND
 xchain00558_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00558_n12_α
# IR_LIT_STRING
 xchain00558_n12_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00558_n13_α
.Lx00564_0:
 .quad .Lx00564_0_s
.Lx00564_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00558_n13_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00565_239
 add rsp, 16
 jmp xchain00558_n15_α
.Lx00565_239:
 mov rdi, qword ptr [rip + .Lx00565_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00565_240
 add rsp, 16
 jmp xchain00558_n15_α
.Lx00565_240:
 mov qword ptr [rbp + 288], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 296], rax
 jmp xchain00558_n14_α
.Lx00565_0:
 .quad .Lx00565_0_s
.Lx00565_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00558_n14_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 296]
 cmp rax, 1
 jge .Lx00566_0
 add rax, r15
 add rax, 1
.Lx00566_0:
 cmp rax, 1
 jge .Lx00566_239
 add rsp, 16
 jmp xchain00558_n15_α
.Lx00566_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00566_240
 add rsp, 16
 jmp xchain00558_n15_α
.Lx00566_240:
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
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00558_n15_α
 xchain00558_n14_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00558_n15_α
# IR_UNMARK
 xchain00558_n15_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00558_n9_β
proc_tabmat_res:
add rsp, 8
pop rbp
proc_tabmat_β:
jmp proc_tabmat_ω
proc_tabmat_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 536]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
proc_tabmat_ω:
mov rax, [rbp + 544]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
  .globl proc_posf_α
proc_posf_α:
#=======================================================================================================================
    .global proc_posf_α
    .global proc_posf_β
    .global proc_posf_γ
    .global proc_posf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_posf_α_body:
# IR_DISJUNCTION_NARY
 xchain00567_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00567_n2_α
xchain00567_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00568_0
 jmp xchain00567_n1_α
.Lx00568_0:
 jmp xchain00567_n1_α
 xchain00567_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00567_n1_α
xchain00567_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00567_n1_α
# IR_LIT_STRING
 xchain00567_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00567_n3_α
.Lx00569_0:
 .quad .Lx00569_0_s
.Lx00569_0_s:
 .string "abcde"
# IR_VAR
 xchain00567_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00567_n4_α
 xchain00567_n2_β:
 jmp xchain00567_n0_af
# IR_GEN_SCAN
 xchain00567_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00567_n5_α
# IR_UNOP
 xchain00567_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00567_n0_af
 cmp eax, 0
 jne xchain00567_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00567_n6_α
# IR_LIT_INTEGER
 xchain00567_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00567_n7_α
.Lx00570_0:
 .quad 1
# IR_LIT_STRING
 xchain00567_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00571_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00567_n8_α
.Lx00571_0:
 .quad .Lx00571_0_s
.Lx00571_0_s:
 .string "pos(-1)"
# IR_VAR
 xchain00567_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00567_n9_α
# IR_RETURN
 xchain00567_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_posf_γ
# IR_TO
 xchain00567_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00572_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00567_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00567_n11_α
 xchain00567_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00572_0
# IR_GEN_SCAN
 xchain00567_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_posf_ω
 xchain00567_n10_β:
 jmp proc_posf_ω
# IR_BOUND
 xchain00567_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00567_n12_α
# IR_LIT_INTEGER
 xchain00567_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00573_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00567_n13_α
.Lx00573_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00567_n13_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00574_0
 add rax, r15
 add rax, 1
.Lx00574_0:
 cmp rax, 1
 jl xchain00567_n14_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00567_n14_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00567_n14_α
 mov qword ptr [rbp + 256], 6
 mov qword ptr [rbp + 264], rax
 jmp xchain00567_n14_α
# IR_UNMARK
 xchain00567_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00567_n9_β
proc_posf_res:
add rsp, 8
pop rbp
proc_posf_β:
jmp proc_posf_ω
proc_posf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_posf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_anyf_α
proc_anyf_α:
#=======================================================================================================================
    .global proc_anyf_α
    .global proc_anyf_β
    .global proc_anyf_γ
    .global proc_anyf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_anyf_α_body:
# IR_DISJUNCTION_NARY
 xchain00575_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00575_n2_α
xchain00575_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00576_0
 jmp xchain00575_n1_α
.Lx00576_0:
 jmp xchain00575_n1_α
 xchain00575_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00575_n1_α
xchain00575_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00575_n1_α
# IR_LIT_STRING
 xchain00575_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00575_n3_α
.Lx00577_0:
 .quad .Lx00577_0_s
.Lx00577_0_s:
 .string "abcde"
# IR_VAR
 xchain00575_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00575_n4_α
 xchain00575_n2_β:
 jmp xchain00575_n0_af
# IR_GEN_SCAN
 xchain00575_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00575_n5_α
# IR_UNOP
 xchain00575_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00575_n0_af
 cmp eax, 0
 jne xchain00575_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00575_n6_α
# IR_LIT_INTEGER
 xchain00575_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00575_n7_α
.Lx00578_0:
 .quad 1
# IR_LIT_STRING
 xchain00575_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00579_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00575_n8_α
.Lx00579_0:
 .quad .Lx00579_0_s
.Lx00579_0_s:
 .string "any('aeiou')"
# IR_VAR
 xchain00575_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00575_n9_α
# IR_RETURN
 xchain00575_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_anyf_γ
# IR_TO
 xchain00575_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00580_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00575_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00575_n11_α
 xchain00575_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00580_0
# IR_GEN_SCAN
 xchain00575_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_anyf_ω
 xchain00575_n10_β:
 jmp proc_anyf_ω
# IR_BOUND
 xchain00575_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00575_n12_α
# IR_LIT_CHARSET
 xchain00575_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00581_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00575_n13_α
.Lx00581_0:
 .quad .Lx00581_0_s
.Lx00581_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00575_n13_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00575_n14_α
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00582_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00575_n14_α
 mov qword ptr [rbp + 256], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 264], rax
 jmp xchain00575_n14_α
.Lx00582_0:
 .quad .Lx00582_0_s
.Lx00582_0_s:
 .string "aeiou"
# IR_UNMARK
 xchain00575_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00575_n9_β
proc_anyf_res:
add rsp, 8
pop rbp
proc_anyf_β:
jmp proc_anyf_ω
proc_anyf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_anyf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_manyf_α
proc_manyf_α:
#=======================================================================================================================
    .global proc_manyf_α
    .global proc_manyf_β
    .global proc_manyf_γ
    .global proc_manyf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_manyf_α_body:
# IR_DISJUNCTION_NARY
 xchain00583_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00583_n2_α
xchain00583_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00584_0
 jmp xchain00583_n1_α
.Lx00584_0:
 jmp xchain00583_n1_α
 xchain00583_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00583_n1_α
xchain00583_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00583_n1_α
# IR_LIT_STRING
 xchain00583_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00585_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00583_n3_α
.Lx00585_0:
 .quad .Lx00585_0_s
.Lx00585_0_s:
 .string "abcde"
# IR_VAR
 xchain00583_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00583_n4_α
 xchain00583_n2_β:
 jmp xchain00583_n0_af
# IR_GEN_SCAN
 xchain00583_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00583_n5_α
# IR_UNOP
 xchain00583_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00583_n0_af
 cmp eax, 0
 jne xchain00583_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00583_n6_α
# IR_LIT_INTEGER
 xchain00583_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00583_n7_α
.Lx00586_0:
 .quad 1
# IR_LIT_STRING
 xchain00583_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00587_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00583_n8_α
.Lx00587_0:
 .quad .Lx00587_0_s
.Lx00587_0_s:
 .string "many(&lcase)"
# IR_VAR
 xchain00583_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00583_n9_α
# IR_RETURN
 xchain00583_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_manyf_γ
# IR_TO
 xchain00583_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00588_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00583_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00583_n11_α
 xchain00583_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00588_0
# IR_GEN_SCAN
 xchain00583_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_manyf_ω
 xchain00583_n10_β:
 jmp proc_manyf_ω
# IR_BOUND
 xchain00583_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00583_n12_α
# IR_LIT_CHARSET
 xchain00583_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00589_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00583_n13_α
.Lx00589_0:
 .quad .Lx00589_0_s
.Lx00589_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00583_n13_α:
 mov eax, r14d
.Lx00590_0:
 cmp eax, r15d
 jge .Lx00590_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00590_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00590_1
 add eax, 1
 jmp .Lx00590_0
.Lx00590_1:
 cmp eax, r14d
 je xchain00583_n14_α
 mov qword ptr [rbp + 256], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 264], rcx
 jmp xchain00583_n14_α
 xchain00583_n13_β:
 jmp xchain00583_n14_α
.Lx00590_2:
 .quad .Lx00590_2_s
.Lx00590_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_UNMARK
 xchain00583_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00583_n9_β
proc_manyf_res:
add rsp, 8
pop rbp
proc_manyf_β:
jmp proc_manyf_ω
proc_manyf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_manyf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_uptof_α
proc_uptof_α:
#=======================================================================================================================
    .global proc_uptof_α
    .global proc_uptof_β
    .global proc_uptof_γ
    .global proc_uptof_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_uptof_α_body:
# IR_DISJUNCTION_NARY
 xchain00591_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00591_n2_α
xchain00591_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00592_0
 jmp xchain00591_n1_α
.Lx00592_0:
 jmp xchain00591_n1_α
 xchain00591_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00591_n1_α
xchain00591_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00591_n1_α
# IR_LIT_STRING
 xchain00591_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00591_n3_α
.Lx00593_0:
 .quad .Lx00593_0_s
.Lx00593_0_s:
 .string "abcde"
# IR_VAR
 xchain00591_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00591_n4_α
 xchain00591_n2_β:
 jmp xchain00591_n0_af
# IR_GEN_SCAN
 xchain00591_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00591_n5_α
# IR_UNOP
 xchain00591_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00591_n0_af
 cmp eax, 0
 jne xchain00591_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00591_n6_α
# IR_LIT_INTEGER
 xchain00591_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00594_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00591_n7_α
.Lx00594_0:
 .quad 1
# IR_LIT_STRING
 xchain00591_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00595_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00591_n8_α
.Lx00595_0:
 .quad .Lx00595_0_s
.Lx00595_0_s:
 .string "upto('d')"
# IR_VAR
 xchain00591_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00591_n9_α
# IR_RETURN
 xchain00591_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uptof_γ
# IR_TO
 xchain00591_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00596_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00591_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00591_n11_α
 xchain00591_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00596_0
# IR_GEN_SCAN
 xchain00591_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_uptof_ω
 xchain00591_n10_β:
 jmp proc_uptof_ω
# IR_BOUND
 xchain00591_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00591_n12_α
# IR_LIT_CHARSET
 xchain00591_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00591_n13_α
.Lx00597_0:
 .quad .Lx00597_0_s
.Lx00597_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00591_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00598_0:
 mov rax, qword ptr [rbp + 272]
 cmp rax, r15
 jge xchain00591_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00598_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00598_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00591_n14_α
.Lx00598_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00598_0
 xchain00591_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00598_0
.Lx00598_2:
 .quad .Lx00598_2_s
.Lx00598_2_s:
 .string "d"
# IR_UNMARK
 xchain00591_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00591_n9_β
proc_uptof_res:
add rsp, 8
pop rbp
proc_uptof_β:
jmp proc_uptof_ω
proc_uptof_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_uptof_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_findf_α
proc_findf_α:
#=======================================================================================================================
    .global proc_findf_α
    .global proc_findf_β
    .global proc_findf_γ
    .global proc_findf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_findf_α_body:
# IR_DISJUNCTION_NARY
 xchain00599_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00599_n2_α
xchain00599_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00600_0
 jmp xchain00599_n1_α
.Lx00600_0:
 jmp xchain00599_n1_α
 xchain00599_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00599_n1_α
xchain00599_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00599_n1_α
# IR_LIT_STRING
 xchain00599_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00601_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00599_n3_α
.Lx00601_0:
 .quad .Lx00601_0_s
.Lx00601_0_s:
 .string "abcde"
# IR_VAR
 xchain00599_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00599_n4_α
 xchain00599_n2_β:
 jmp xchain00599_n0_af
# IR_GEN_SCAN
 xchain00599_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00599_n5_α
# IR_UNOP
 xchain00599_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00599_n0_af
 cmp eax, 0
 jne xchain00599_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00599_n6_α
# IR_LIT_INTEGER
 xchain00599_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00602_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00599_n7_α
.Lx00602_0:
 .quad 1
# IR_LIT_STRING
 xchain00599_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00599_n8_α
.Lx00603_0:
 .quad .Lx00603_0_s
.Lx00603_0_s:
 .string "find(\"de\")"
# IR_VAR
 xchain00599_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00599_n9_α
# IR_RETURN
 xchain00599_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_findf_γ
# IR_TO
 xchain00599_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00604_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00599_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00599_n11_α
 xchain00599_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00604_0
# IR_GEN_SCAN
 xchain00599_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_findf_ω
 xchain00599_n10_β:
 jmp proc_findf_ω
# IR_BOUND
 xchain00599_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00599_n12_α
# IR_LIT_STRING
 xchain00599_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00605_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00599_n13_α
.Lx00605_0:
 .quad .Lx00605_0_s
.Lx00605_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00599_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00606_0:
 mov rax, qword ptr [rbp + 272]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00599_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00606_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00606_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00599_n14_α
.Lx00606_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00606_0
 xchain00599_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00606_0
# IR_UNMARK
 xchain00599_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00599_n9_β
proc_findf_res:
add rsp, 8
pop rbp
proc_findf_β:
jmp proc_findf_ω
proc_findf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_findf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_balf_α
proc_balf_α:
#=======================================================================================================================
    .global proc_balf_α
    .global proc_balf_β
    .global proc_balf_γ
    .global proc_balf_ω
  sub rsp, 528
  mov [rsp + 504], rcx
  mov [rsp + 512], rdx
  mov [rsp + 520], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 496
  call rt_jmp_frame_lexprep@PLT
proc_balf_α_body:
# IR_DISJUNCTION_NARY
 xchain00607_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00607_n2_α
xchain00607_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00608_0
 jmp xchain00607_n1_α
.Lx00608_0:
 jmp xchain00607_n1_α
 xchain00607_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00607_n1_α
xchain00607_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00607_n1_α
# IR_LIT_STRING
 xchain00607_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00607_n3_α
.Lx00609_0:
 .quad .Lx00609_0_s
.Lx00609_0_s:
 .string "(a*b)+(c/d)"
# IR_VAR
 xchain00607_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00607_n4_α
 xchain00607_n2_β:
 jmp xchain00607_n0_af
# IR_GEN_SCAN
 xchain00607_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00607_n5_α
# IR_UNOP
 xchain00607_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00607_n0_af
 cmp eax, 0
 jne xchain00607_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00607_n6_α
# IR_LIT_INTEGER
 xchain00607_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00610_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00607_n7_α
.Lx00610_0:
 .quad 1
# IR_LIT_STRING
 xchain00607_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00611_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00607_n8_α
.Lx00611_0:
 .quad .Lx00611_0_s
.Lx00611_0_s:
 .string "bal('+')"
# IR_VAR
 xchain00607_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00607_n9_α
# IR_RETURN
 xchain00607_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_balf_γ
# IR_TO
 xchain00607_n9_α:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 call to_int@PLT
 mov qword ptr [rbp + 144], 6
 mov qword ptr [rbp + 152], rax
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call to_int@PLT
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 128], rax
.Lx00612_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00607_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00607_n11_α
 xchain00607_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00612_0
# IR_GEN_SCAN
 xchain00607_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_balf_ω
 xchain00607_n10_β:
 jmp proc_balf_ω
# IR_BOUND
 xchain00607_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00607_n12_α
# IR_LIT_CHARSET
 xchain00607_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00613_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00607_n13_α
.Lx00613_0:
 .quad .Lx00613_0_s
.Lx00613_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00607_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00614_0:
 mov rax, qword ptr [rbp + 272]
 cmp rax, r15
 jge xchain00607_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00614_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00614_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00607_n14_α
.Lx00614_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00614_0
 xchain00607_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00614_0
.Lx00614_2:
 .quad .Lx00614_2_s
.Lx00614_2_s:
 .string "+"
# IR_UNMARK
 xchain00607_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00607_n9_β
proc_balf_res:
add rsp, 8
pop rbp
proc_balf_β:
jmp proc_balf_ω
proc_balf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 504]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
proc_balf_ω:
mov rax, [rbp + 512]
lea rsp, [rbp + 528]
mov rbp, [rbp + 520]
jmp rax
  .globl proc_cssize_α
proc_cssize_α:
#=======================================================================================================================
    .global proc_cssize_α
    .global proc_cssize_β
    .global proc_cssize_γ
    .global proc_cssize_ω
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
proc_cssize_α_body:
# IR_DISJUNCTION_NARY
 xchain00615_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00615_n2_α
xchain00615_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00616_0
 jmp xchain00615_n1_α
.Lx00616_0:
 jmp xchain00615_n1_α
 xchain00615_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00615_n1_α
xchain00615_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00615_n1_α
# IR_LIT_INTEGER
 xchain00615_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00617_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00615_n3_α
.Lx00617_0:
 .quad 1
# IR_VAR
 xchain00615_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00615_n4_α
 xchain00615_n2_β:
 jmp xchain00615_n0_af
# IR_VAR
 xchain00615_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00615_n5_α
# IR_UNOP
 xchain00615_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00615_n0_af
 cmp eax, 0
 jne xchain00615_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00615_n6_α
# IR_TO
 xchain00615_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00618_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00615_n7_α
 xchain00615_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00618_0
# IR_LIT_STRING
 xchain00615_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00615_n8_α
.Lx00619_0:
 .quad .Lx00619_0_s
.Lx00619_0_s:
 .string "*&digits"
# IR_BOUND
 xchain00615_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00615_n9_α
# IR_RETURN
 xchain00615_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cssize_γ
# IR_LIT_CHARSET
 xchain00615_n9_α:
 mov qword ptr [rbp + 208], 1
 mov dword ptr [rbp + 212], -1
 mov rax, qword ptr [rip + .Lx00620_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00615_n10_α
.Lx00620_0:
 .quad .Lx00620_0_s
.Lx00620_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00615_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00615_n11_α
# IR_UNMARK
 xchain00615_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00615_n5_β
proc_cssize_res:
add rsp, 8
pop rbp
proc_cssize_β:
jmp proc_cssize_ω
proc_cssize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_cssize_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_cscompl_α
proc_cscompl_α:
#=======================================================================================================================
    .global proc_cscompl_α
    .global proc_cscompl_β
    .global proc_cscompl_γ
    .global proc_cscompl_ω
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
proc_cscompl_α_body:
# IR_DISJUNCTION_NARY
 xchain00621_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00621_n2_α
xchain00621_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00622_0
 jmp xchain00621_n1_α
.Lx00622_0:
 jmp xchain00621_n1_α
 xchain00621_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00621_n1_α
xchain00621_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00621_n1_α
# IR_LIT_INTEGER
 xchain00621_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00623_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00621_n3_α
.Lx00623_0:
 .quad 1
# IR_VAR
 xchain00621_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00621_n4_α
 xchain00621_n2_β:
 jmp xchain00621_n0_af
# IR_VAR
 xchain00621_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00621_n5_α
# IR_UNOP
 xchain00621_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00621_n0_af
 cmp eax, 0
 jne xchain00621_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00621_n6_α
# IR_TO
 xchain00621_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00624_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00621_n7_α
 xchain00621_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00624_0
# IR_LIT_STRING
 xchain00621_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00621_n8_α
.Lx00625_0:
 .quad .Lx00625_0_s
.Lx00625_0_s:
 .string "~&digits"
# IR_BOUND
 xchain00621_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00621_n9_α
# IR_RETURN
 xchain00621_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cscompl_γ
# IR_LIT_CHARSET
 xchain00621_n9_α:
 mov qword ptr [rbp + 208], 1
 mov dword ptr [rbp + 212], -1
 mov rax, qword ptr [rip + .Lx00626_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00621_n10_α
.Lx00626_0:
 .quad .Lx00626_0_s
.Lx00626_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00621_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00621_n11_α
# IR_UNMARK
 xchain00621_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00621_n5_β
proc_cscompl_res:
add rsp, 8
pop rbp
proc_cscompl_β:
jmp proc_cscompl_ω
proc_cscompl_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_cscompl_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_lcreate_α
proc_lcreate_α:
#=======================================================================================================================
    .global proc_lcreate_α
    .global proc_lcreate_β
    .global proc_lcreate_γ
    .global proc_lcreate_ω
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
proc_lcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00627_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00627_n2_α
xchain00627_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00628_0
 jmp xchain00627_n1_α
.Lx00628_0:
 jmp xchain00627_n1_α
 xchain00627_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00627_n1_α
xchain00627_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00627_n1_α
# IR_LIT_INTEGER
 xchain00627_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00629_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00627_n3_α
.Lx00629_0:
 .quad 1
# IR_VAR
 xchain00627_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00627_n4_α
 xchain00627_n2_β:
 jmp xchain00627_n0_af
# IR_VAR
 xchain00627_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00627_n5_α
# IR_UNOP
 xchain00627_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00627_n0_af
 cmp eax, 0
 jne xchain00627_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00627_n6_α
# IR_TO
 xchain00627_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00630_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00627_n7_α
 xchain00627_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00630_0
# IR_LIT_STRING
 xchain00627_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00631_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00627_n8_α
.Lx00631_0:
 .quad .Lx00631_0_s
.Lx00631_0_s:
 .string "list(5,0)"
# IR_BOUND
 xchain00627_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00627_n9_α
# IR_RETURN
 xchain00627_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcreate_γ
# IR_LIT_INTEGER
 xchain00627_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00632_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00627_n10_α
.Lx00632_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00627_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00627_n11_α
.Lx00633_0:
 .quad 0
 xchain00627_n11_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn1989: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1989]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00627_n12_α
 jmp xchain00627_n12_α
 xchain00627_n11_β:
 jmp xchain00627_n12_α
# IR_UNMARK
 xchain00627_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00627_n5_β
proc_lcreate_res:
add rsp, 8
pop rbp
proc_lcreate_β:
jmp proc_lcreate_ω
proc_lcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_lcreate_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_lconst_α
proc_lconst_α:
#=======================================================================================================================
    .global proc_lconst_α
    .global proc_lconst_β
    .global proc_lconst_γ
    .global proc_lconst_ω
  sub rsp, 640
  mov [rsp + 616], rcx
  mov [rsp + 624], rdx
  mov [rsp + 632], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 608
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 584], rsp
  mov rdi, rsp
  mov esi, 608
  call rt_jmp_frame_lexprep@PLT
proc_lconst_α_body:
# IR_DISJUNCTION_NARY
 xchain00634_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00634_n2_α
xchain00634_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00635_0
 jmp xchain00634_n1_α
.Lx00635_0:
 jmp xchain00634_n1_α
 xchain00634_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00634_n1_α
xchain00634_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00634_n1_α
# IR_LIT_INTEGER
 xchain00634_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00636_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00634_n3_α
.Lx00636_0:
 .quad 1
# IR_VAR
 xchain00634_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain00634_n4_α
 xchain00634_n2_β:
 jmp xchain00634_n0_af
# IR_VAR
 xchain00634_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00634_n5_α
# IR_UNOP
 xchain00634_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00634_n0_af
 cmp eax, 0
 jne xchain00634_n0_af
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 jmp xchain00634_n6_α
# IR_TO
 xchain00634_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00637_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00634_n7_α
 xchain00634_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00637_0
# IR_LIT_STRING
 xchain00634_n6_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00638_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00634_n8_α
.Lx00638_0:
 .quad .Lx00638_0_s
.Lx00638_0_s:
 .string "[1,2,3,4,5]"
# IR_BOUND
 xchain00634_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00634_n9_α
# IR_RETURN
 xchain00634_n8_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lconst_γ
# IR_LIT_INTEGER
 xchain00634_n9_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00639_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00634_n10_α
.Lx00639_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00634_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00640_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00634_n11_α
.Lx00640_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00634_n11_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx00641_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00634_n12_α
.Lx00641_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00634_n12_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00642_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00634_n13_α
.Lx00642_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00634_n13_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00634_n14_α
.Lx00643_0:
 .quad 5
# IR_MAKE_LIST
 xchain00634_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 216], rax
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 248], rax
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 264], rax
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 280], rax
 lea rdi, [rbp + 208]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00634_n15_α
 xchain00634_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00634_n16_α
# IR_UNMARK
 xchain00634_n16_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00634_n5_β
proc_lconst_res:
add rsp, 8
pop rbp
proc_lconst_β:
jmp proc_lconst_ω
proc_lconst_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 616]
lea rsp, [rbp + 640]
mov rbp, [rbp + 632]
jmp rax
proc_lconst_ω:
mov rax, [rbp + 624]
lea rsp, [rbp + 640]
mov rbp, [rbp + 632]
jmp rax
  .globl proc_lcopy_α
proc_lcopy_α:
#=======================================================================================================================
    .global proc_lcopy_α
    .global proc_lcopy_β
    .global proc_lcopy_γ
    .global proc_lcopy_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
  mov rdi, rsp
  mov esi, 816
  call rt_jmp_frame_lexprep@PLT
proc_lcopy_α_body:
# IR_DISJUNCTION_NARY
 xchain00644_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00644_n2_α
xchain00644_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00645_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00644_n1_α
.Lx00645_0:
 jmp xchain00644_n1_α
 xchain00644_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00644_n1_α
xchain00644_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00644_n1_α
# IR_DISJUNCTION_NARY
 xchain00644_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00644_n5_α
xchain00644_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00646_0
 jmp xchain00644_n4_α
.Lx00646_0:
 jmp xchain00644_n4_α
 xchain00644_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00644_n4_α
xchain00644_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00644_n4_α
# IR_VAR_REF
 xchain00644_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052464
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00644_n6_α
 xchain00644_n2_β:
 jmp xchain00644_n0_af
# IR_ASSIGN gva
 xchain00644_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00644_n0_as
 xchain00644_n3_β:
 jmp xchain00644_n1_α
# IR_LIT_INTEGER
 xchain00644_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00644_n7_α
.Lx00647_0:
 .quad 1
# IR_VAR
 xchain00644_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00644_n8_α
 xchain00644_n5_β:
 jmp xchain00644_n1_af
# IR_NULLTEST_VAR
 xchain00644_n6_α:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 99
 je xchain00644_n0_af
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00644_n0_af
 cmp eax, 0
 jne xchain00644_n0_af
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 728], rax
 jmp xchain00644_n9_α
# IR_VAR
 xchain00644_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00644_n10_α
# IR_UNOP
 xchain00644_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00644_n1_af
 cmp eax, 0
 jne xchain00644_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00644_n11_α
# IR_LIT_INTEGER
 xchain00644_n9_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00648_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00644_n12_α
.Lx00648_0:
 .quad 1
# IR_TO
 xchain00644_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00649_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00644_n13_α
 xchain00644_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00649_0
# IR_LIT_STRING
 xchain00644_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00650_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00644_n14_α
.Lx00650_0:
 .quad .Lx00650_0_s
.Lx00650_0_s:
 .string "copy(L)"
# IR_ASSIGN_VAR
 xchain00644_n12_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00644_n0_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00644_n15_α
# IR_BOUND
 xchain00644_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00644_n16_α
# IR_RETURN
 xchain00644_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcopy_γ
# IR_LIT_INTEGER
 xchain00644_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00651_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00644_n17_α
.Lx00651_0:
 .quad 1
# IR_VAR
 xchain00644_n16_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00644_n18_α
# IR_LIT_INTEGER
 xchain00644_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00652_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00644_n20_α
.Lx00652_0:
 .quad 2
 xchain00644_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2044: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2044]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00644_n19_α
 jmp xchain00644_n19_α
 xchain00644_n18_β:
 jmp xchain00644_n19_α
# IR_UNMARK
 xchain00644_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00644_n10_β
# IR_LIT_INTEGER
 xchain00644_n20_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00644_n21_α
.Lx00653_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00644_n21_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00644_n22_α
.Lx00654_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00644_n22_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00655_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00644_n23_α
.Lx00655_0:
 .quad 5
# IR_MAKE_LIST
 xchain00644_n23_α:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 488], rax
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 504], rax
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 520], rax
 lea rdi, [rbp + 448]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00644_n3_α
proc_lcopy_res:
add rsp, 8
pop rbp
proc_lcopy_β:
jmp proc_lcopy_ω
proc_lcopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 824]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
proc_lcopy_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_lsort_α
proc_lsort_α:
#=======================================================================================================================
    .global proc_lsort_α
    .global proc_lsort_β
    .global proc_lsort_γ
    .global proc_lsort_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
  mov rdi, rsp
  mov esi, 816
  call rt_jmp_frame_lexprep@PLT
proc_lsort_α_body:
# IR_DISJUNCTION_NARY
 xchain00656_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00656_n2_α
xchain00656_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00657_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00656_n1_α
.Lx00657_0:
 jmp xchain00656_n1_α
 xchain00656_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00656_n1_α
xchain00656_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00656_n1_α
# IR_DISJUNCTION_NARY
 xchain00656_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00656_n5_α
xchain00656_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00658_0
 jmp xchain00656_n4_α
.Lx00658_0:
 jmp xchain00656_n4_α
 xchain00656_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00656_n4_α
xchain00656_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00656_n4_α
# IR_VAR_REF
 xchain00656_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00656_n6_α
 xchain00656_n2_β:
 jmp xchain00656_n0_af
# IR_ASSIGN gva
 xchain00656_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00656_n0_as
 xchain00656_n3_β:
 jmp xchain00656_n1_α
# IR_LIT_INTEGER
 xchain00656_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00659_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00656_n7_α
.Lx00659_0:
 .quad 1
# IR_VAR
 xchain00656_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00656_n8_α
 xchain00656_n5_β:
 jmp xchain00656_n1_af
# IR_NULLTEST_VAR
 xchain00656_n6_α:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 99
 je xchain00656_n0_af
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00656_n0_af
 cmp eax, 0
 jne xchain00656_n0_af
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 728], rax
 jmp xchain00656_n9_α
# IR_VAR
 xchain00656_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00656_n10_α
# IR_UNOP
 xchain00656_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00656_n1_af
 cmp eax, 0
 jne xchain00656_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00656_n11_α
# IR_LIT_INTEGER
 xchain00656_n9_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00660_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00656_n12_α
.Lx00660_0:
 .quad 1
# IR_TO
 xchain00656_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00661_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00656_n13_α
 xchain00656_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00661_0
# IR_LIT_STRING
 xchain00656_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00656_n14_α
.Lx00662_0:
 .quad .Lx00662_0_s
.Lx00662_0_s:
 .string "sort(L)"
# IR_ASSIGN_VAR
 xchain00656_n12_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00656_n0_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00656_n15_α
# IR_BOUND
 xchain00656_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00656_n16_α
# IR_RETURN
 xchain00656_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsort_γ
# IR_LIT_INTEGER
 xchain00656_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00656_n17_α
.Lx00663_0:
 .quad 2
# IR_VAR
 xchain00656_n16_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00656_n18_α
# IR_LIT_INTEGER
 xchain00656_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00664_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00656_n20_α
.Lx00664_0:
 .quad 7
 xchain00656_n18_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2079: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2079]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00656_n19_α
 jmp xchain00656_n19_α
 xchain00656_n18_β:
 jmp xchain00656_n19_α
# IR_UNMARK
 xchain00656_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00656_n10_β
# IR_LIT_INTEGER
 xchain00656_n20_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00656_n21_α
.Lx00665_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00656_n21_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00666_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00656_n22_α
.Lx00666_0:
 .quad 8
# IR_LIT_INTEGER
 xchain00656_n22_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00667_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00656_n23_α
.Lx00667_0:
 .quad 3
# IR_MAKE_LIST
 xchain00656_n23_α:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 488], rax
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 504], rax
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 520], rax
 lea rdi, [rbp + 448]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00656_n3_α
proc_lsort_res:
add rsp, 8
pop rbp
proc_lsort_β:
jmp proc_lsort_ω
proc_lsort_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 824]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
proc_lsort_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_lsize_α
proc_lsize_α:
#=======================================================================================================================
    .global proc_lsize_α
    .global proc_lsize_β
    .global proc_lsize_γ
    .global proc_lsize_ω
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
proc_lsize_α_body:
# IR_DISJUNCTION_NARY
 xchain00668_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00668_n2_α
xchain00668_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00669_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00668_n1_α
.Lx00669_0:
 jmp xchain00668_n1_α
 xchain00668_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00668_n1_α
xchain00668_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00668_n1_α
# IR_DISJUNCTION_NARY
 xchain00668_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00668_n5_α
xchain00668_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00670_0
 jmp xchain00668_n4_α
.Lx00670_0:
 jmp xchain00668_n4_α
 xchain00668_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00668_n4_α
xchain00668_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00668_n4_α
# IR_VAR_REF
 xchain00668_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052528
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00668_n6_α
 xchain00668_n2_β:
 jmp xchain00668_n0_af
# IR_ASSIGN gva
 xchain00668_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00668_n0_as
 xchain00668_n3_β:
 jmp xchain00668_n1_α
# IR_LIT_INTEGER
 xchain00668_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00668_n7_α
.Lx00671_0:
 .quad 1
# IR_VAR
 xchain00668_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00668_n8_α
 xchain00668_n5_β:
 jmp xchain00668_n1_af
# IR_NULLTEST_VAR
 xchain00668_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00668_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00668_n0_af
 cmp eax, 0
 jne xchain00668_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00668_n9_α
# IR_VAR
 xchain00668_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00668_n10_α
# IR_UNOP
 xchain00668_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00668_n1_af
 cmp eax, 0
 jne xchain00668_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00668_n11_α
# IR_LIT_INTEGER
 xchain00668_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00668_n12_α
.Lx00672_0:
 .quad 1
# IR_TO
 xchain00668_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00673_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00668_n13_α
 xchain00668_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00673_0
# IR_LIT_STRING
 xchain00668_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00668_n14_α
.Lx00674_0:
 .quad .Lx00674_0_s
.Lx00674_0_s:
 .string "*L"
# IR_ASSIGN_VAR
 xchain00668_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00668_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00668_n15_α
# IR_BOUND
 xchain00668_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00668_n16_α
# IR_RETURN
 xchain00668_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsize_γ
# IR_LIT_INTEGER
 xchain00668_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00675_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00668_n17_α
.Lx00675_0:
 .quad 1
# IR_VAR
 xchain00668_n16_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00668_n18_α
# IR_LIT_INTEGER
 xchain00668_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00676_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00668_n20_α
.Lx00676_0:
 .quad 2
# IR_UNOP
 xchain00668_n18_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00668_n19_α
# IR_UNMARK
 xchain00668_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00668_n10_β
# IR_LIT_INTEGER
 xchain00668_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00677_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00668_n21_α
.Lx00677_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00668_n21_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00678_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00668_n22_α
.Lx00678_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00668_n22_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00668_n23_α
.Lx00679_0:
 .quad 5
# IR_MAKE_LIST
 xchain00668_n23_α:
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
 jmp xchain00668_n3_α
proc_lsize_res:
add rsp, 8
pop rbp
proc_lsize_β:
jmp proc_lsize_ω
proc_lsize_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_lsize_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_lpick_α
proc_lpick_α:
#=======================================================================================================================
    .global proc_lpick_α
    .global proc_lpick_β
    .global proc_lpick_γ
    .global proc_lpick_ω
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
proc_lpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00680_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00680_n2_α
xchain00680_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00681_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00680_n1_α
.Lx00681_0:
 jmp xchain00680_n1_α
 xchain00680_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00680_n1_α
xchain00680_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00680_n1_α
# IR_DISJUNCTION_NARY
 xchain00680_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00680_n5_α
xchain00680_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00682_0
 jmp xchain00680_n4_α
.Lx00682_0:
 jmp xchain00680_n4_α
 xchain00680_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00680_n4_α
xchain00680_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00680_n4_α
# IR_VAR_REF
 xchain00680_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052560
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00680_n6_α
 xchain00680_n2_β:
 jmp xchain00680_n0_af
# IR_ASSIGN gva
 xchain00680_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00680_n0_as
 xchain00680_n3_β:
 jmp xchain00680_n1_α
# IR_LIT_INTEGER
 xchain00680_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00680_n7_α
.Lx00683_0:
 .quad 1
# IR_VAR
 xchain00680_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00680_n8_α
 xchain00680_n5_β:
 jmp xchain00680_n1_af
# IR_NULLTEST_VAR
 xchain00680_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00680_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00680_n0_af
 cmp eax, 0
 jne xchain00680_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00680_n9_α
# IR_VAR
 xchain00680_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00680_n10_α
# IR_UNOP
 xchain00680_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00680_n1_af
 cmp eax, 0
 jne xchain00680_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00680_n11_α
# IR_LIT_INTEGER
 xchain00680_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00684_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00680_n12_α
.Lx00684_0:
 .quad 1
# IR_TO
 xchain00680_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00685_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00680_n13_α
 xchain00680_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00685_0
# IR_LIT_STRING
 xchain00680_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00686_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00680_n14_α
.Lx00686_0:
 .quad .Lx00686_0_s
.Lx00686_0_s:
 .string "?L"
# IR_ASSIGN_VAR
 xchain00680_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00680_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00680_n15_α
# IR_BOUND
 xchain00680_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00680_n16_α
# IR_RETURN
 xchain00680_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lpick_γ
# IR_LIT_INTEGER
 xchain00680_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00687_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00680_n17_α
.Lx00687_0:
 .quad 1
# IR_VAR_REF
 xchain00680_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052544
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00680_n18_α
# IR_LIT_INTEGER
 xchain00680_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00688_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00680_n19_α
.Lx00688_0:
 .quad 2
# IR_RANDOM
 xchain00680_n18_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00680_n21_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00680_n20_α
# IR_LIT_INTEGER
 xchain00680_n19_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00680_n22_α
.Lx00689_0:
 .quad 3
# IR_DEREF variable -> value
 xchain00680_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00680_n21_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00680_n21_α
# IR_UNMARK
 xchain00680_n21_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00680_n10_β
# IR_LIT_INTEGER
 xchain00680_n22_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00680_n23_α
.Lx00690_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00680_n23_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00691_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00680_n24_α
.Lx00691_0:
 .quad 5
# IR_MAKE_LIST
 xchain00680_n24_α:
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
 jmp xchain00680_n3_α
proc_lpick_res:
add rsp, 8
pop rbp
proc_lpick_β:
jmp proc_lpick_ω
proc_lpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_lpick_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_lsubscr_α
proc_lsubscr_α:
#=======================================================================================================================
    .global proc_lsubscr_α
    .global proc_lsubscr_β
    .global proc_lsubscr_γ
    .global proc_lsubscr_ω
  sub rsp, 880
  mov [rsp + 856], rcx
  mov [rsp + 864], rdx
  mov [rsp + 872], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 848
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 840], rsp
  mov rdi, rsp
  mov esi, 848
  call rt_jmp_frame_lexprep@PLT
proc_lsubscr_α_body:
# IR_DISJUNCTION_NARY
 xchain00692_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00692_n2_α
xchain00692_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00693_0
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp xchain00692_n1_α
.Lx00693_0:
 jmp xchain00692_n1_α
 xchain00692_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00692_n1_α
xchain00692_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00692_n1_α
# IR_DISJUNCTION_NARY
 xchain00692_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00692_n5_α
xchain00692_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00694_0
 jmp xchain00692_n4_α
.Lx00694_0:
 jmp xchain00692_n4_α
 xchain00692_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00692_n4_α
xchain00692_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00692_n4_α
# IR_VAR_REF
 xchain00692_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052592
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00692_n6_α
 xchain00692_n2_β:
 jmp xchain00692_n0_af
# IR_ASSIGN gva
 xchain00692_n3_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00692_n0_as
 xchain00692_n3_β:
 jmp xchain00692_n1_α
# IR_LIT_INTEGER
 xchain00692_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00695_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00692_n7_α
.Lx00695_0:
 .quad 1
# IR_VAR
 xchain00692_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00692_n8_α
 xchain00692_n5_β:
 jmp xchain00692_n1_af
# IR_NULLTEST_VAR
 xchain00692_n6_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 99
 je xchain00692_n0_af
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00692_n0_af
 cmp eax, 0
 jne xchain00692_n0_af
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 760], rax
 jmp xchain00692_n9_α
# IR_VAR
 xchain00692_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00692_n10_α
# IR_UNOP
 xchain00692_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00692_n1_af
 cmp eax, 0
 jne xchain00692_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00692_n11_α
# IR_LIT_INTEGER
 xchain00692_n9_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00696_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00692_n12_α
.Lx00696_0:
 .quad 1
# IR_TO
 xchain00692_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00697_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00692_n13_α
 xchain00692_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00697_0
# IR_LIT_STRING
 xchain00692_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00698_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00692_n14_α
.Lx00698_0:
 .quad .Lx00698_0_s
.Lx00698_0_s:
 .string "L[3]"
# IR_ASSIGN_VAR
 xchain00692_n12_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00692_n0_af
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00692_n15_α
# IR_BOUND
 xchain00692_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00692_n16_α
# IR_RETURN
 xchain00692_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsubscr_γ
# IR_LIT_INTEGER
 xchain00692_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00692_n17_α
.Lx00699_0:
 .quad 1
# IR_VAR_REF
 xchain00692_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052576
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00692_n18_α
# IR_LIT_INTEGER
 xchain00692_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00692_n19_α
.Lx00700_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00692_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00701_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00692_n20_α
.Lx00701_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00692_n19_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00702_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00692_n21_α
.Lx00702_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00692_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00692_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00692_n22_α
# IR_LIT_INTEGER
 xchain00692_n21_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00703_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00692_n24_α
.Lx00703_0:
 .quad 4
# IR_DEREF variable -> value
 xchain00692_n22_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00692_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00692_n23_α
# IR_UNMARK
 xchain00692_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00692_n10_β
# IR_LIT_INTEGER
 xchain00692_n24_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00692_n25_α
.Lx00704_0:
 .quad 5
# IR_MAKE_LIST
 xchain00692_n25_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 488], rax
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 504], rax
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 520], rax
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 536], rax
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 552], rax
 lea rdi, [rbp + 480]
 mov esi, 5
 call rt_make_list@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00692_n3_α
proc_lsubscr_res:
add rsp, 8
pop rbp
proc_lsubscr_β:
jmp proc_lsubscr_ω
proc_lsubscr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 856]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
proc_lsubscr_ω:
mov rax, [rbp + 864]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
  .globl proc_lbang_α
proc_lbang_α:
#=======================================================================================================================
    .global proc_lbang_α
    .global proc_lbang_β
    .global proc_lbang_γ
    .global proc_lbang_ω
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
proc_lbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00705_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00705_n2_α
xchain00705_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00706_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00705_n1_α
.Lx00706_0:
 jmp xchain00705_n1_α
 xchain00705_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00705_n1_α
xchain00705_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00705_n1_α
# IR_DISJUNCTION_NARY
 xchain00705_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00705_n5_α
xchain00705_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00707_0
 jmp xchain00705_n4_α
.Lx00707_0:
 jmp xchain00705_n4_α
 xchain00705_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00705_n4_α
xchain00705_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00705_n4_α
# IR_VAR_REF
 xchain00705_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052624
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00705_n6_α
 xchain00705_n2_β:
 jmp xchain00705_n0_af
# IR_ASSIGN gva
 xchain00705_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00705_n0_as
 xchain00705_n3_β:
 jmp xchain00705_n1_α
# IR_LIT_INTEGER
 xchain00705_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00708_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00705_n7_α
.Lx00708_0:
 .quad 1
# IR_VAR
 xchain00705_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00705_n8_α
 xchain00705_n5_β:
 jmp xchain00705_n1_af
# IR_NULLTEST_VAR
 xchain00705_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00705_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00705_n0_af
 cmp eax, 0
 jne xchain00705_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00705_n9_α
# IR_VAR
 xchain00705_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00705_n10_α
# IR_UNOP
 xchain00705_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00705_n1_af
 cmp eax, 0
 jne xchain00705_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00705_n11_α
# IR_LIT_INTEGER
 xchain00705_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00709_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00705_n12_α
.Lx00709_0:
 .quad 1
# IR_TO
 xchain00705_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00710_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00705_n13_α
 xchain00705_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00710_0
# IR_LIT_STRING
 xchain00705_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00711_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00705_n14_α
.Lx00711_0:
 .quad .Lx00711_0_s
.Lx00711_0_s:
 .string "!L"
# IR_ASSIGN_VAR
 xchain00705_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00705_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00705_n15_α
# IR_BOUND
 xchain00705_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00705_n16_α
# IR_RETURN
 xchain00705_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lbang_γ
# IR_LIT_INTEGER
 xchain00705_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00712_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00705_n17_α
.Lx00712_0:
 .quad 1
# IR_VAR
 xchain00705_n16_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00705_n18_α
# IR_LIT_INTEGER
 xchain00705_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00713_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00705_n20_α
.Lx00713_0:
 .quad 2
# IR_LIST_BANG
 xchain00705_n18_α:
 mov qword ptr [rbp + 192], 0
.Lx00714_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00705_n19_α
 jmp xchain00705_n18_β
 xchain00705_n18_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00714_0
# IR_UNMARK
 xchain00705_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00705_n10_β
# IR_LIT_INTEGER
 xchain00705_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00705_n21_α
.Lx00715_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00705_n21_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00716_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00705_n22_α
.Lx00716_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00705_n22_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00717_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00705_n23_α
.Lx00717_0:
 .quad 5
# IR_MAKE_LIST
 xchain00705_n23_α:
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
 jmp xchain00705_n3_α
proc_lbang_res:
add rsp, 8
pop rbp
proc_lbang_β:
jmp proc_lbang_ω
proc_lbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 808]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
proc_lbang_ω:
mov rax, [rbp + 816]
lea rsp, [rbp + 832]
mov rbp, [rbp + 824]
jmp rax
  .globl proc_put1get1_α
proc_put1get1_α:
#=======================================================================================================================
    .global proc_put1get1_α
    .global proc_put1get1_β
    .global proc_put1get1_γ
    .global proc_put1get1_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_put1get1_α_body:
# IR_DISJUNCTION_NARY
 xchain00718_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00718_n2_α
xchain00718_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00719_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00718_n1_α
.Lx00719_0:
 jmp xchain00718_n1_α
 xchain00718_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00718_n1_α
xchain00718_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00718_n1_α
# IR_DISJUNCTION_NARY
 xchain00718_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00718_n5_α
xchain00718_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00720_0
 jmp xchain00718_n4_α
.Lx00720_0:
 jmp xchain00718_n4_α
 xchain00718_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00718_n4_α
xchain00718_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00718_n4_α
# IR_VAR_REF
 xchain00718_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052656
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00718_n6_α
 xchain00718_n2_β:
 jmp xchain00718_n0_af
# IR_ASSIGN gva
 xchain00718_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00718_n0_as
 xchain00718_n3_β:
 jmp xchain00718_n1_α
# IR_LIT_INTEGER
 xchain00718_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00718_n7_α
.Lx00721_0:
 .quad 1
# IR_VAR
 xchain00718_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00718_n8_α
 xchain00718_n5_β:
 jmp xchain00718_n1_af
# IR_NULLTEST_VAR
 xchain00718_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00718_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00718_n0_af
 cmp eax, 0
 jne xchain00718_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00718_n9_α
# IR_VAR
 xchain00718_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00718_n10_α
# IR_UNOP
 xchain00718_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00718_n1_af
 cmp eax, 0
 jne xchain00718_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00718_n11_α
# IR_LIT_INTEGER
 xchain00718_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00718_n12_α
.Lx00722_0:
 .quad 1
# IR_TO
 xchain00718_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00723_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00718_n13_α
 xchain00718_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00723_0
# IR_LIT_STRING
 xchain00718_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00718_n14_α
.Lx00724_0:
 .quad .Lx00724_0_s
.Lx00724_0_s:
 .string "get(put(L,0))"
# IR_ASSIGN_VAR
 xchain00718_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00718_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00718_n15_α
# IR_BOUND
 xchain00718_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00718_n16_α
# IR_RETURN
 xchain00718_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put1get1_γ
# IR_MAKE_LIST
 xchain00718_n15_α:
 lea rdi, [rbp + 544]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00718_n3_α
# IR_VAR
 xchain00718_n16_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00718_n17_α
# IR_LIT_INTEGER
 xchain00718_n17_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00718_n19_α
.Lx00725_0:
 .quad 0
# IR_UNMARK
 xchain00718_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00718_n10_β
 xchain00718_n19_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2259: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2259]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00718_n18_α
 jmp xchain00718_n20_α
 xchain00718_n19_β:
 jmp xchain00718_n18_α
 xchain00718_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2261: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2261]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00718_n18_α
 jmp xchain00718_n18_α
 xchain00718_n20_β:
 jmp xchain00718_n18_α
proc_put1get1_res:
add rsp, 8
pop rbp
proc_put1get1_β:
jmp proc_put1get1_ω
proc_put1get1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 680]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
proc_put1get1_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_put2get2_α
proc_put2get2_α:
#=======================================================================================================================
    .global proc_put2get2_α
    .global proc_put2get2_β
    .global proc_put2get2_γ
    .global proc_put2get2_ω
  sub rsp, 880
  mov [rsp + 856], rcx
  mov [rsp + 864], rdx
  mov [rsp + 872], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 848
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 840], rsp
  mov rdi, rsp
  mov esi, 848
  call rt_jmp_frame_lexprep@PLT
proc_put2get2_α_body:
# IR_DISJUNCTION_NARY
 xchain00726_n0_α:
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 mov dword ptr [rbp + 672], 0
 jmp xchain00726_n2_α
xchain00726_n0_as:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 0
 jne .Lx00727_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
 jmp xchain00726_n1_α
.Lx00727_0:
 jmp xchain00726_n1_α
 xchain00726_n0_β:
 mov eax, dword ptr [rbp + 672]
 jmp xchain00726_n1_α
xchain00726_n0_af:
 add dword ptr [rbp + 672], 1
 mov eax, dword ptr [rbp + 672]
 jmp xchain00726_n1_α
# IR_DISJUNCTION_NARY
 xchain00726_n1_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 mov dword ptr [rbp + 544], 0
 jmp xchain00726_n5_α
xchain00726_n1_as:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 0
 jne .Lx00728_0
 jmp xchain00726_n4_α
.Lx00728_0:
 jmp xchain00726_n4_α
 xchain00726_n1_β:
 mov eax, dword ptr [rbp + 544]
 jmp xchain00726_n4_α
xchain00726_n1_af:
 add dword ptr [rbp + 544], 1
 mov eax, dword ptr [rbp + 544]
 jmp xchain00726_n4_α
# IR_VAR_REF
 xchain00726_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052688
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00726_n6_α
 xchain00726_n2_β:
 jmp xchain00726_n0_af
# IR_ASSIGN gva
 xchain00726_n3_α:
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00726_n0_as
 xchain00726_n3_β:
 jmp xchain00726_n1_α
# IR_LIT_INTEGER
 xchain00726_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00729_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00726_n7_α
.Lx00729_0:
 .quad 1
# IR_VAR
 xchain00726_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 632], rax
 jmp xchain00726_n8_α
 xchain00726_n5_β:
 jmp xchain00726_n1_af
# IR_NULLTEST_VAR
 xchain00726_n6_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 99
 je xchain00726_n0_af
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00726_n0_af
 cmp eax, 0
 jne xchain00726_n0_af
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 760], rax
 jmp xchain00726_n9_α
# IR_VAR
 xchain00726_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00726_n10_α
# IR_UNOP
 xchain00726_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00726_n1_af
 cmp eax, 0
 jne xchain00726_n1_af
 mov qword ptr [rbp + 592], 0
 mov qword ptr [rbp + 600], 0
 jmp xchain00726_n11_α
# IR_LIT_INTEGER
 xchain00726_n9_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00730_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00726_n12_α
.Lx00730_0:
 .quad 1
# IR_TO
 xchain00726_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00731_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put2get2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00726_n13_α
 xchain00726_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00731_0
# IR_LIT_STRING
 xchain00726_n11_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00726_n14_α
.Lx00732_0:
 .quad .Lx00732_0_s
.Lx00732_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_ASSIGN_VAR
 xchain00726_n12_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00726_n0_af
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00726_n15_α
# IR_BOUND
 xchain00726_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00726_n16_α
# IR_RETURN
 xchain00726_n14_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put2get2_γ
# IR_MAKE_LIST
 xchain00726_n15_α:
 lea rdi, [rbp + 720]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00726_n3_α
# IR_VAR
 xchain00726_n16_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00726_n17_α
# IR_LIT_INTEGER
 xchain00726_n17_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00733_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00726_n19_α
.Lx00733_0:
 .quad 1
# IR_UNMARK
 xchain00726_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00726_n10_β
# IR_LIT_INTEGER
 xchain00726_n19_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00734_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00726_n20_α
.Lx00734_0:
 .quad 2
 xchain00726_n20_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+384]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 392], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+400]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn2293: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2293]
 lea rsi, [rbp + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00726_n18_α
 jmp xchain00726_n21_α
 xchain00726_n20_β:
 jmp xchain00726_n18_α
# IR_VAR
 xchain00726_n21_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00726_n22_α
 xchain00726_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2296: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2296]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00726_n18_α
 jmp xchain00726_n23_α
 xchain00726_n22_β:
 jmp xchain00726_n18_α
# IR_VAR
 xchain00726_n23_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00726_n24_α
 xchain00726_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2299: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2299]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00726_n18_α
 jmp xchain00726_n25_α
 xchain00726_n24_β:
 jmp xchain00726_n18_α
 xchain00726_n25_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00726_n18_α
xchain00726_n25_β:
 jmp xchain00726_n18_α
proc_put2get2_res:
add rsp, 8
pop rbp
proc_put2get2_β:
jmp proc_put2get2_ω
proc_put2get2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 856]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
proc_put2get2_ω:
mov rax, [rbp + 864]
lea rsp, [rbp + 880]
mov rbp, [rbp + 872]
jmp rax
  .globl proc_put3get3_α
proc_put3get3_α:
#=======================================================================================================================
    .global proc_put3get3_α
    .global proc_put3get3_β
    .global proc_put3get3_γ
    .global proc_put3get3_ω
  sub rsp, 1008
  mov [rsp + 984], rcx
  mov [rsp + 992], rdx
  mov [rsp + 1000], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 976
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 968], rsp
  mov rdi, rsp
  mov esi, 976
  call rt_jmp_frame_lexprep@PLT
proc_put3get3_α_body:
# IR_DISJUNCTION_NARY
 xchain00735_n0_α:
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 mov dword ptr [rbp + 800], 0
 jmp xchain00735_n2_α
xchain00735_n0_as:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 jne .Lx00736_0
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 jmp xchain00735_n1_α
.Lx00736_0:
 jmp xchain00735_n1_α
 xchain00735_n0_β:
 mov eax, dword ptr [rbp + 800]
 jmp xchain00735_n1_α
xchain00735_n0_af:
 add dword ptr [rbp + 800], 1
 mov eax, dword ptr [rbp + 800]
 jmp xchain00735_n1_α
# IR_DISJUNCTION_NARY
 xchain00735_n1_α:
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 mov dword ptr [rbp + 672], 0
 jmp xchain00735_n5_α
xchain00735_n1_as:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 0
 jne .Lx00737_0
 jmp xchain00735_n4_α
.Lx00737_0:
 jmp xchain00735_n4_α
 xchain00735_n1_β:
 mov eax, dword ptr [rbp + 672]
 jmp xchain00735_n4_α
xchain00735_n1_af:
 add dword ptr [rbp + 672], 1
 mov eax, dword ptr [rbp + 672]
 jmp xchain00735_n4_α
# IR_VAR_REF
 xchain00735_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052720
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00735_n6_α
 xchain00735_n2_β:
 jmp xchain00735_n0_af
# IR_ASSIGN gva
 xchain00735_n3_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00735_n0_as
 xchain00735_n3_β:
 jmp xchain00735_n1_α
# IR_LIT_INTEGER
 xchain00735_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00735_n7_α
.Lx00738_0:
 .quad 1
# IR_VAR
 xchain00735_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 760], rax
 jmp xchain00735_n8_α
 xchain00735_n5_β:
 jmp xchain00735_n1_af
# IR_NULLTEST_VAR
 xchain00735_n6_α:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 99
 je xchain00735_n0_af
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00735_n0_af
 cmp eax, 0
 jne xchain00735_n0_af
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 888], rax
 jmp xchain00735_n9_α
# IR_VAR
 xchain00735_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00735_n10_α
# IR_UNOP
 xchain00735_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00735_n1_af
 cmp eax, 0
 jne xchain00735_n1_af
 mov qword ptr [rbp + 720], 0
 mov qword ptr [rbp + 728], 0
 jmp xchain00735_n11_α
# IR_LIT_INTEGER
 xchain00735_n9_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00735_n12_α
.Lx00739_0:
 .quad 1
# IR_TO
 xchain00735_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00740_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00735_n13_α
 xchain00735_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00740_0
# IR_LIT_STRING
 xchain00735_n11_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx00741_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00735_n14_α
.Lx00741_0:
 .quad .Lx00741_0_s
.Lx00741_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_ASSIGN_VAR
 xchain00735_n12_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00735_n0_af
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00735_n15_α
# IR_BOUND
 xchain00735_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00735_n16_α
# IR_RETURN
 xchain00735_n14_α:
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put3get3_γ
# IR_MAKE_LIST
 xchain00735_n15_α:
 lea rdi, [rbp + 848]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00735_n3_α
# IR_VAR
 xchain00735_n16_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00735_n17_α
# IR_LIT_INTEGER
 xchain00735_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00742_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00735_n19_α
.Lx00742_0:
 .quad 1
# IR_UNMARK
 xchain00735_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00735_n10_β
# IR_LIT_INTEGER
 xchain00735_n19_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00743_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00735_n20_α
.Lx00743_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00735_n20_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00744_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00735_n21_α
.Lx00744_0:
 .quad 3
 xchain00735_n21_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+480]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 488], rax
# marshal arg3 = producer-box slot [zr+624] -> [zr+496]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn2333: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2333]
 lea rsi, [rbp + 448]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00735_n18_α
 jmp xchain00735_n22_α
 xchain00735_n21_β:
 jmp xchain00735_n18_α
# IR_VAR
 xchain00735_n22_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00735_n23_α
 xchain00735_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn2336: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2336]
 lea rsi, [rbp + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00735_n18_α
 jmp xchain00735_n24_α
 xchain00735_n23_β:
 jmp xchain00735_n18_α
# IR_VAR
 xchain00735_n24_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00735_n25_α
 xchain00735_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2339: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2339]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00735_n18_α
 jmp xchain00735_n26_α
 xchain00735_n25_β:
 jmp xchain00735_n18_α
# IR_VAR
 xchain00735_n26_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00735_n27_α
 xchain00735_n27_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2342: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2342]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00735_n18_α
 jmp xchain00735_n28_α
 xchain00735_n27_β:
 jmp xchain00735_n18_α
 xchain00735_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00735_n18_α
xchain00735_n28_β:
 jmp xchain00735_n18_α
proc_put3get3_res:
add rsp, 8
pop rbp
proc_put3get3_β:
jmp proc_put3get3_ω
proc_put3get3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 984]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
jmp rax
proc_put3get3_ω:
mov rax, [rbp + 992]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
jmp rax
  .globl proc_put4get4_α
proc_put4get4_α:
#=======================================================================================================================
    .global proc_put4get4_α
    .global proc_put4get4_β
    .global proc_put4get4_γ
    .global proc_put4get4_ω
  sub rsp, 1136
  mov [rsp + 1112], rcx
  mov [rsp + 1120], rdx
  mov [rsp + 1128], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1104
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1096], rsp
  mov rdi, rsp
  mov esi, 1104
  call rt_jmp_frame_lexprep@PLT
proc_put4get4_α_body:
# IR_DISJUNCTION_NARY
 xchain00745_n0_α:
 mov qword ptr [rbp + 912], 0
 mov qword ptr [rbp + 920], 0
 mov dword ptr [rbp + 928], 0
 jmp xchain00745_n2_α
xchain00745_n0_as:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 0
 jne .Lx00746_0
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
 jmp xchain00745_n1_α
.Lx00746_0:
 jmp xchain00745_n1_α
 xchain00745_n0_β:
 mov eax, dword ptr [rbp + 928]
 jmp xchain00745_n1_α
xchain00745_n0_af:
 add dword ptr [rbp + 928], 1
 mov eax, dword ptr [rbp + 928]
 jmp xchain00745_n1_α
# IR_DISJUNCTION_NARY
 xchain00745_n1_α:
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 mov dword ptr [rbp + 800], 0
 jmp xchain00745_n5_α
xchain00745_n1_as:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 jne .Lx00747_0
 jmp xchain00745_n4_α
.Lx00747_0:
 jmp xchain00745_n4_α
 xchain00745_n1_β:
 mov eax, dword ptr [rbp + 800]
 jmp xchain00745_n4_α
xchain00745_n1_af:
 add dword ptr [rbp + 800], 1
 mov eax, dword ptr [rbp + 800]
 jmp xchain00745_n4_α
# IR_VAR_REF
 xchain00745_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052752
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00745_n6_α
 xchain00745_n2_β:
 jmp xchain00745_n0_af
# IR_ASSIGN gva
 xchain00745_n3_α:
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [1879052736], rax
 mov qword ptr [1879052744], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00745_n0_as
 xchain00745_n3_β:
 jmp xchain00745_n1_α
# IR_LIT_INTEGER
 xchain00745_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00748_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00745_n7_α
.Lx00748_0:
 .quad 1
# IR_VAR
 xchain00745_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 888], rax
 jmp xchain00745_n8_α
 xchain00745_n5_β:
 jmp xchain00745_n1_af
# IR_NULLTEST_VAR
 xchain00745_n6_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain00745_n0_af
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00745_n0_af
 cmp eax, 0
 jne xchain00745_n0_af
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00745_n9_α
# IR_VAR
 xchain00745_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00745_n10_α
# IR_UNOP
 xchain00745_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00745_n1_af
 cmp eax, 0
 jne xchain00745_n1_af
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 jmp xchain00745_n11_α
# IR_LIT_INTEGER
 xchain00745_n9_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00749_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00745_n12_α
.Lx00749_0:
 .quad 1
# IR_TO
 xchain00745_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00750_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00745_n13_α
 xchain00745_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00750_0
# IR_LIT_STRING
 xchain00745_n11_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00745_n14_α
.Lx00751_0:
 .quad .Lx00751_0_s
.Lx00751_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_ASSIGN_VAR
 xchain00745_n12_α:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1056]
 mov rcx, qword ptr [rbp + 1064]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00745_n0_af
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00745_n15_α
# IR_BOUND
 xchain00745_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00745_n16_α
# IR_RETURN
 xchain00745_n14_α:
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put4get4_γ
# IR_MAKE_LIST
 xchain00745_n15_α:
 lea rdi, [rbp + 976]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00745_n3_α
# IR_VAR
 xchain00745_n16_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00745_n17_α
# IR_LIT_INTEGER
 xchain00745_n17_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00745_n19_α
.Lx00752_0:
 .quad 1
# IR_UNMARK
 xchain00745_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00745_n10_β
# IR_LIT_INTEGER
 xchain00745_n19_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00753_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00745_n20_α
.Lx00753_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00745_n20_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00754_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00745_n21_α
.Lx00754_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00745_n21_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00755_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00745_n22_α
.Lx00755_0:
 .quad 4
 xchain00745_n22_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+528]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+544]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+560]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 568], rax
# marshal arg3 = producer-box slot [zr+720] -> [zr+576]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 584], rax
# marshal arg4 = producer-box slot [zr+752] -> [zr+592]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn2377: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2377]
 lea rsi, [rbp + 528]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00745_n18_α
 jmp xchain00745_n23_α
 xchain00745_n22_β:
 jmp xchain00745_n18_α
# IR_VAR
 xchain00745_n23_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00745_n24_α
 xchain00745_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn2380: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2380]
 lea rsi, [rbp + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00745_n18_α
 jmp xchain00745_n25_α
 xchain00745_n24_β:
 jmp xchain00745_n18_α
# IR_VAR
 xchain00745_n25_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00745_n26_α
 xchain00745_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn2383: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2383]
 lea rsi, [rbp + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00745_n18_α
 jmp xchain00745_n27_α
 xchain00745_n26_β:
 jmp xchain00745_n18_α
# IR_VAR
 xchain00745_n27_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00745_n28_α
 xchain00745_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2386: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2386]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00745_n18_α
 jmp xchain00745_n29_α
 xchain00745_n28_β:
 jmp xchain00745_n18_α
# IR_VAR
 xchain00745_n29_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00745_n30_α
 xchain00745_n30_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2389: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2389]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00745_n18_α
 jmp xchain00745_n31_α
 xchain00745_n30_β:
 jmp xchain00745_n18_α
 xchain00745_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00745_n18_α
xchain00745_n31_β:
 jmp xchain00745_n18_α
proc_put4get4_res:
add rsp, 8
pop rbp
proc_put4get4_β:
jmp proc_put4get4_ω
proc_put4get4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1112]
lea rsp, [rbp + 1136]
mov rbp, [rbp + 1128]
jmp rax
proc_put4get4_ω:
mov rax, [rbp + 1120]
lea rsp, [rbp + 1136]
mov rbp, [rbp + 1128]
jmp rax
  .globl proc_pushpop_α
proc_pushpop_α:
#=======================================================================================================================
    .global proc_pushpop_α
    .global proc_pushpop_β
    .global proc_pushpop_γ
    .global proc_pushpop_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_pushpop_α_body:
# IR_DISJUNCTION_NARY
 xchain00756_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00756_n2_α
xchain00756_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00757_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00756_n1_α
.Lx00757_0:
 jmp xchain00756_n1_α
 xchain00756_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00756_n1_α
xchain00756_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00756_n1_α
# IR_DISJUNCTION_NARY
 xchain00756_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00756_n5_α
xchain00756_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00758_0
 jmp xchain00756_n4_α
.Lx00758_0:
 jmp xchain00756_n4_α
 xchain00756_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00756_n4_α
xchain00756_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00756_n4_α
# IR_VAR_REF
 xchain00756_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052784
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00756_n6_α
 xchain00756_n2_β:
 jmp xchain00756_n0_af
# IR_ASSIGN gva
 xchain00756_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00756_n0_as
 xchain00756_n3_β:
 jmp xchain00756_n1_α
# IR_LIT_INTEGER
 xchain00756_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00759_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00756_n7_α
.Lx00759_0:
 .quad 1
# IR_VAR
 xchain00756_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00756_n8_α
 xchain00756_n5_β:
 jmp xchain00756_n1_af
# IR_NULLTEST_VAR
 xchain00756_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00756_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00756_n0_af
 cmp eax, 0
 jne xchain00756_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00756_n9_α
# IR_VAR
 xchain00756_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00756_n10_α
# IR_UNOP
 xchain00756_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00756_n1_af
 cmp eax, 0
 jne xchain00756_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00756_n11_α
# IR_LIT_INTEGER
 xchain00756_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00756_n12_α
.Lx00760_0:
 .quad 1
# IR_TO
 xchain00756_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00761_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00756_n13_α
 xchain00756_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00761_0
# IR_LIT_STRING
 xchain00756_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00756_n14_α
.Lx00762_0:
 .quad .Lx00762_0_s
.Lx00762_0_s:
 .string "pop(push(L,0))"
# IR_ASSIGN_VAR
 xchain00756_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00756_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00756_n15_α
# IR_BOUND
 xchain00756_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00756_n16_α
# IR_RETURN
 xchain00756_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop_γ
# IR_MAKE_LIST
 xchain00756_n15_α:
 lea rdi, [rbp + 544]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00756_n3_α
# IR_VAR
 xchain00756_n16_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00756_n17_α
# IR_LIT_INTEGER
 xchain00756_n17_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00756_n19_α
.Lx00763_0:
 .quad 0
# IR_UNMARK
 xchain00756_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00756_n10_β
 xchain00756_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2421: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2421]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00756_n18_α
 jmp xchain00756_n20_α
 xchain00756_n19_β:
 jmp xchain00756_n18_α
 xchain00756_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2423: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2423]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00756_n18_α
 jmp xchain00756_n18_α
 xchain00756_n20_β:
 jmp xchain00756_n18_α
proc_pushpop_res:
add rsp, 8
pop rbp
proc_pushpop_β:
jmp proc_pushpop_ω
proc_pushpop_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 680]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
proc_pushpop_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_putget12_α
proc_putget12_α:
#=======================================================================================================================
    .global proc_putget12_α
    .global proc_putget12_β
    .global proc_putget12_γ
    .global proc_putget12_ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_putget12_α_body:
# IR_DISJUNCTION_NARY
 xchain00764_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00764_n2_α
xchain00764_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00765_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00764_n1_α
.Lx00765_0:
 jmp xchain00764_n1_α
 xchain00764_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00764_n1_α
xchain00764_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00764_n1_α
# IR_DISJUNCTION_NARY
 xchain00764_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00764_n5_α
xchain00764_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00766_0
 jmp xchain00764_n4_α
.Lx00766_0:
 jmp xchain00764_n4_α
 xchain00764_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00764_n4_α
xchain00764_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00764_n4_α
# IR_VAR_REF
 xchain00764_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052816
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00764_n6_α
 xchain00764_n2_β:
 jmp xchain00764_n0_af
# IR_ASSIGN gva
 xchain00764_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00764_n0_as
 xchain00764_n3_β:
 jmp xchain00764_n1_α
# IR_LIT_INTEGER
 xchain00764_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00767_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00764_n7_α
.Lx00767_0:
 .quad 1
# IR_VAR
 xchain00764_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00764_n8_α
 xchain00764_n5_β:
 jmp xchain00764_n1_af
# IR_NULLTEST_VAR
 xchain00764_n6_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 99
 je xchain00764_n0_af
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00764_n0_af
 cmp eax, 0
 jne xchain00764_n0_af
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00764_n9_α
# IR_VAR
 xchain00764_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00764_n10_α
# IR_UNOP
 xchain00764_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00764_n1_af
 cmp eax, 0
 jne xchain00764_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00764_n11_α
# IR_LIT_INTEGER
 xchain00764_n9_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00768_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00764_n12_α
.Lx00768_0:
 .quad 1
# IR_TO
 xchain00764_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00769_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00764_n13_α
 xchain00764_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00769_0
# IR_LIT_STRING
 xchain00764_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00770_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00764_n14_α
.Lx00770_0:
 .quad .Lx00770_0_s
.Lx00770_0_s:
 .string "get(put(L12,0))"
# IR_ASSIGN_VAR
 xchain00764_n12_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00764_n0_af
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00764_n15_α
# IR_BOUND
 xchain00764_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00764_n16_α
# IR_RETURN
 xchain00764_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putget12_γ
# IR_LIT_INTEGER
 xchain00764_n15_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00764_n17_α
.Lx00771_0:
 .quad 3
# IR_VAR
 xchain00764_n16_α:
 mov rax, qword ptr [1879052800]
 mov rdx, qword ptr [1879052808]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00764_n18_α
# IR_LIT_INTEGER
 xchain00764_n17_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00772_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00764_n20_α
.Lx00772_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00764_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00773_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00764_n21_α
.Lx00773_0:
 .quad 0
# IR_UNMARK
 xchain00764_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00764_n10_β
# IR_LIT_INTEGER
 xchain00764_n20_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00764_n22_α
.Lx00774_0:
 .quad 4
 xchain00764_n21_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2455: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2455]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00764_n19_α
 jmp xchain00764_n23_α
 xchain00764_n21_β:
 jmp xchain00764_n19_α
# IR_LIT_INTEGER
 xchain00764_n22_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00764_n24_α
.Lx00775_0:
 .quad 1
 xchain00764_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2458: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2458]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00764_n19_α
 jmp xchain00764_n19_α
 xchain00764_n23_β:
 jmp xchain00764_n19_α
# IR_LIT_INTEGER
 xchain00764_n24_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00764_n25_α
.Lx00776_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00764_n25_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00764_n26_α
.Lx00777_0:
 .quad 9
# IR_LIT_INTEGER
 xchain00764_n26_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00764_n27_α
.Lx00778_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00764_n27_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00779_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00764_n28_α
.Lx00779_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00764_n28_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00780_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00764_n29_α
.Lx00780_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00764_n29_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00781_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00764_n30_α
.Lx00781_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00764_n30_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00782_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00764_n31_α
.Lx00782_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00764_n31_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx00783_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00764_n32_α
.Lx00783_0:
 .quad 8
# IR_MAKE_LIST
 xchain00764_n32_α:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 552], rax
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 568], rax
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 584], rax
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 600], rax
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 616], rax
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 632], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 648], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 664], rax
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 680], rax
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 696], rax
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 712], rax
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 728], rax
 lea rdi, [rbp + 544]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00764_n3_α
proc_putget12_res:
add rsp, 8
pop rbp
proc_putget12_β:
jmp proc_putget12_ω
proc_putget12_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_putget12_ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
  .globl proc_pushpop12_α
proc_pushpop12_α:
#=======================================================================================================================
    .global proc_pushpop12_α
    .global proc_pushpop12_β
    .global proc_pushpop12_γ
    .global proc_pushpop12_ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_pushpop12_α_body:
# IR_DISJUNCTION_NARY
 xchain00784_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00784_n2_α
xchain00784_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00785_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00784_n1_α
.Lx00785_0:
 jmp xchain00784_n1_α
 xchain00784_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00784_n1_α
xchain00784_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00784_n1_α
# IR_DISJUNCTION_NARY
 xchain00784_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00784_n5_α
xchain00784_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00786_0
 jmp xchain00784_n4_α
.Lx00786_0:
 jmp xchain00784_n4_α
 xchain00784_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00784_n4_α
xchain00784_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00784_n4_α
# IR_VAR_REF
 xchain00784_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052848
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00784_n6_α
 xchain00784_n2_β:
 jmp xchain00784_n0_af
# IR_ASSIGN gva
 xchain00784_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00784_n0_as
 xchain00784_n3_β:
 jmp xchain00784_n1_α
# IR_LIT_INTEGER
 xchain00784_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00787_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00784_n7_α
.Lx00787_0:
 .quad 1
# IR_VAR
 xchain00784_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00784_n8_α
 xchain00784_n5_β:
 jmp xchain00784_n1_af
# IR_NULLTEST_VAR
 xchain00784_n6_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 99
 je xchain00784_n0_af
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00784_n0_af
 cmp eax, 0
 jne xchain00784_n0_af
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00784_n9_α
# IR_VAR
 xchain00784_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00784_n10_α
# IR_UNOP
 xchain00784_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00784_n1_af
 cmp eax, 0
 jne xchain00784_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00784_n11_α
# IR_LIT_INTEGER
 xchain00784_n9_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00784_n12_α
.Lx00788_0:
 .quad 1
# IR_TO
 xchain00784_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00789_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00784_n13_α
 xchain00784_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00789_0
# IR_LIT_STRING
 xchain00784_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00784_n14_α
.Lx00790_0:
 .quad .Lx00790_0_s
.Lx00790_0_s:
 .string "pop(push(L12,0))"
# IR_ASSIGN_VAR
 xchain00784_n12_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00784_n0_af
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00784_n15_α
# IR_BOUND
 xchain00784_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00784_n16_α
# IR_RETURN
 xchain00784_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop12_γ
# IR_LIT_INTEGER
 xchain00784_n15_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00791_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00784_n17_α
.Lx00791_0:
 .quad 3
# IR_VAR
 xchain00784_n16_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00784_n18_α
# IR_LIT_INTEGER
 xchain00784_n17_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00792_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00784_n20_α
.Lx00792_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00784_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00793_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00784_n21_α
.Lx00793_0:
 .quad 0
# IR_UNMARK
 xchain00784_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00784_n10_β
# IR_LIT_INTEGER
 xchain00784_n20_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00794_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00784_n22_α
.Lx00794_0:
 .quad 4
 xchain00784_n21_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2500: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2500]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00784_n19_α
 jmp xchain00784_n23_α
 xchain00784_n21_β:
 jmp xchain00784_n19_α
# IR_LIT_INTEGER
 xchain00784_n22_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00795_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00784_n24_α
.Lx00795_0:
 .quad 1
 xchain00784_n23_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2503: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2503]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00784_n19_α
 jmp xchain00784_n19_α
 xchain00784_n23_β:
 jmp xchain00784_n19_α
# IR_LIT_INTEGER
 xchain00784_n24_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00796_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00784_n25_α
.Lx00796_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00784_n25_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00797_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00784_n26_α
.Lx00797_0:
 .quad 9
# IR_LIT_INTEGER
 xchain00784_n26_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00784_n27_α
.Lx00798_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00784_n27_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00799_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00784_n28_α
.Lx00799_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00784_n28_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00784_n29_α
.Lx00800_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00784_n29_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00801_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00784_n30_α
.Lx00801_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00784_n30_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00802_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00784_n31_α
.Lx00802_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00784_n31_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx00803_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00784_n32_α
.Lx00803_0:
 .quad 8
# IR_MAKE_LIST
 xchain00784_n32_α:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 552], rax
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 568], rax
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 584], rax
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 600], rax
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 616], rax
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 632], rax
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 648], rax
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 664], rax
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 680], rax
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 696], rax
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 712], rax
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 728], rax
 lea rdi, [rbp + 544]
 mov esi, 12
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00784_n3_α
proc_pushpop12_res:
add rsp, 8
pop rbp
proc_pushpop12_β:
jmp proc_pushpop12_ω
proc_pushpop12_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_pushpop12_ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
  .globl proc_setcreate_α
proc_setcreate_α:
#=======================================================================================================================
    .global proc_setcreate_α
    .global proc_setcreate_β
    .global proc_setcreate_γ
    .global proc_setcreate_ω
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
proc_setcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00804_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00804_n2_α
xchain00804_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00805_0
 jmp xchain00804_n1_α
.Lx00805_0:
 jmp xchain00804_n1_α
 xchain00804_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00804_n1_α
xchain00804_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00804_n1_α
# IR_LIT_INTEGER
 xchain00804_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00804_n3_α
.Lx00806_0:
 .quad 1
# IR_VAR
 xchain00804_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00804_n4_α
 xchain00804_n2_β:
 jmp xchain00804_n0_af
# IR_VAR
 xchain00804_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00804_n5_α
# IR_UNOP
 xchain00804_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00804_n0_af
 cmp eax, 0
 jne xchain00804_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00804_n6_α
# IR_TO
 xchain00804_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00807_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00804_n7_α
 xchain00804_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00807_0
# IR_LIT_STRING
 xchain00804_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00808_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00804_n8_α
.Lx00808_0:
 .quad .Lx00808_0_s
.Lx00808_0_s:
 .string "set()"
# IR_BOUND
 xchain00804_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00804_n9_α
# IR_RETURN
 xchain00804_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcreate_γ
 xchain00804_n9_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2530: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2530]
 lea rsi, [rbp + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00804_n10_α
 jmp xchain00804_n10_α
 xchain00804_n9_β:
 jmp xchain00804_n10_α
# IR_UNMARK
 xchain00804_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00804_n5_β
proc_setcreate_res:
add rsp, 8
pop rbp
proc_setcreate_β:
jmp proc_setcreate_ω
proc_setcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_setcreate_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_setcopy_α
proc_setcopy_α:
#=======================================================================================================================
    .global proc_setcopy_α
    .global proc_setcopy_β
    .global proc_setcopy_γ
    .global proc_setcopy_ω
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
proc_setcopy_α_body:
# IR_DISJUNCTION_NARY
 xchain00809_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00809_n2_α
xchain00809_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00810_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00809_n1_α
.Lx00810_0:
 jmp xchain00809_n1_α
 xchain00809_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00809_n1_α
xchain00809_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00809_n1_α
# IR_DISJUNCTION_NARY
 xchain00809_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00809_n5_α
xchain00809_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00811_0
 jmp xchain00809_n4_α
.Lx00811_0:
 jmp xchain00809_n4_α
 xchain00809_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00809_n4_α
xchain00809_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00809_n4_α
# IR_VAR_REF
 xchain00809_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052880
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00809_n6_α
 xchain00809_n2_β:
 jmp xchain00809_n0_af
 xchain00809_n3_α:
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
  .Lrkfn2541: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2541]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00809_n1_α
 jmp xchain00809_n0_as
 xchain00809_n3_β:
 jmp xchain00809_n1_α
# IR_LIT_INTEGER
 xchain00809_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00809_n7_α
.Lx00812_0:
 .quad 1
# IR_VAR
 xchain00809_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00809_n8_α
 xchain00809_n5_β:
 jmp xchain00809_n1_af
# IR_NULLTEST_VAR
 xchain00809_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00809_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00809_n0_af
 cmp eax, 0
 jne xchain00809_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00809_n9_α
# IR_VAR
 xchain00809_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00809_n10_α
# IR_UNOP
 xchain00809_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00809_n1_af
 cmp eax, 0
 jne xchain00809_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00809_n11_α
# IR_LIT_INTEGER
 xchain00809_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00813_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00809_n12_α
.Lx00813_0:
 .quad 1
# IR_TO
 xchain00809_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00814_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00809_n13_α
 xchain00809_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00814_0
# IR_LIT_STRING
 xchain00809_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00815_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00809_n14_α
.Lx00815_0:
 .quad .Lx00815_0_s
.Lx00815_0_s:
 .string "copy(S)"
# IR_ASSIGN_VAR
 xchain00809_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00809_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00809_n15_α
# IR_BOUND
 xchain00809_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00809_n16_α
# IR_RETURN
 xchain00809_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcopy_γ
 xchain00809_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2558: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2558]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00809_n1_α
 jmp xchain00809_n17_α
 xchain00809_n15_β:
 jmp xchain00809_n1_α
# IR_VAR
 xchain00809_n16_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00809_n18_α
# IR_ASSIGN gva
 xchain00809_n17_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00809_n20_α
 xchain00809_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2562: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2562]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00809_n19_α
 jmp xchain00809_n19_α
 xchain00809_n18_β:
 jmp xchain00809_n19_α
# IR_UNMARK
 xchain00809_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00809_n10_β
# IR_LIT_INTEGER
 xchain00809_n20_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00816_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00809_n3_α
.Lx00816_0:
 .quad 5
proc_setcopy_res:
add rsp, 8
pop rbp
proc_setcopy_β:
jmp proc_setcopy_ω
proc_setcopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_setcopy_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_setinsert_α
proc_setinsert_α:
#=======================================================================================================================
    .global proc_setinsert_α
    .global proc_setinsert_β
    .global proc_setinsert_γ
    .global proc_setinsert_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_setinsert_α_body:
# IR_DISJUNCTION_NARY
 xchain00817_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00817_n2_α
xchain00817_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00818_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00817_n1_α
.Lx00818_0:
 jmp xchain00817_n1_α
 xchain00817_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00817_n1_α
xchain00817_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00817_n1_α
# IR_DISJUNCTION_NARY
 xchain00817_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00817_n5_α
xchain00817_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00819_0
 jmp xchain00817_n4_α
.Lx00819_0:
 jmp xchain00817_n4_α
 xchain00817_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00817_n4_α
xchain00817_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00817_n4_α
# IR_VAR_REF
 xchain00817_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052912
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00817_n6_α
 xchain00817_n2_β:
 jmp xchain00817_n0_af
 xchain00817_n3_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+496]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn2574: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2574]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00817_n1_α
 jmp xchain00817_n0_as
 xchain00817_n3_β:
 jmp xchain00817_n1_α
# IR_LIT_INTEGER
 xchain00817_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00820_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00817_n7_α
.Lx00820_0:
 .quad 1
# IR_VAR
 xchain00817_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00817_n8_α
 xchain00817_n5_β:
 jmp xchain00817_n1_af
# IR_NULLTEST_VAR
 xchain00817_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00817_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00817_n0_af
 cmp eax, 0
 jne xchain00817_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00817_n9_α
# IR_VAR
 xchain00817_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00817_n10_α
# IR_UNOP
 xchain00817_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00817_n1_af
 cmp eax, 0
 jne xchain00817_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00817_n11_α
# IR_LIT_INTEGER
 xchain00817_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00821_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00817_n12_α
.Lx00821_0:
 .quad 1
# IR_TO
 xchain00817_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00822_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00817_n13_α
 xchain00817_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00822_0
# IR_LIT_STRING
 xchain00817_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00823_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00817_n14_α
.Lx00823_0:
 .quad .Lx00823_0_s
.Lx00823_0_s:
 .string "insert(S,5)"
# IR_ASSIGN_VAR
 xchain00817_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00817_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00817_n15_α
# IR_BOUND
 xchain00817_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00817_n16_α
# IR_RETURN
 xchain00817_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsert_γ
 xchain00817_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2591: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2591]
 lea rsi, [rbp + 560]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00817_n1_α
 jmp xchain00817_n17_α
 xchain00817_n15_β:
 jmp xchain00817_n1_α
# IR_VAR
 xchain00817_n16_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00817_n18_α
# IR_ASSIGN gva
 xchain00817_n17_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00817_n20_α
# IR_LIT_INTEGER
 xchain00817_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00817_n21_α
.Lx00824_0:
 .quad 5
# IR_UNMARK
 xchain00817_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00817_n10_β
# IR_LIT_INTEGER
 xchain00817_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00825_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00817_n3_α
.Lx00825_0:
 .quad 5
 xchain00817_n21_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2599: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2599]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00817_n19_α
 jmp xchain00817_n19_α
 xchain00817_n21_β:
 jmp xchain00817_n19_α
proc_setinsert_res:
add rsp, 8
pop rbp
proc_setinsert_β:
jmp proc_setinsert_ω
proc_setinsert_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_setinsert_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_setmember_α
proc_setmember_α:
#=======================================================================================================================
    .global proc_setmember_α
    .global proc_setmember_β
    .global proc_setmember_γ
    .global proc_setmember_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_setmember_α_body:
# IR_DISJUNCTION_NARY
 xchain00826_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00826_n2_α
xchain00826_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00827_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00826_n1_α
.Lx00827_0:
 jmp xchain00826_n1_α
 xchain00826_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00826_n1_α
xchain00826_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00826_n1_α
# IR_DISJUNCTION_NARY
 xchain00826_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00826_n5_α
xchain00826_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00828_0
 jmp xchain00826_n4_α
.Lx00828_0:
 jmp xchain00826_n4_α
 xchain00826_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00826_n4_α
xchain00826_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00826_n4_α
# IR_VAR_REF
 xchain00826_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052944
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00826_n6_α
 xchain00826_n2_β:
 jmp xchain00826_n0_af
 xchain00826_n3_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+496]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn2608: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2608]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00826_n1_α
 jmp xchain00826_n0_as
 xchain00826_n3_β:
 jmp xchain00826_n1_α
# IR_LIT_INTEGER
 xchain00826_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00829_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00826_n7_α
.Lx00829_0:
 .quad 1
# IR_VAR
 xchain00826_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00826_n8_α
 xchain00826_n5_β:
 jmp xchain00826_n1_af
# IR_NULLTEST_VAR
 xchain00826_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00826_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00826_n0_af
 cmp eax, 0
 jne xchain00826_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00826_n9_α
# IR_VAR
 xchain00826_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00826_n10_α
# IR_UNOP
 xchain00826_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00826_n1_af
 cmp eax, 0
 jne xchain00826_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00826_n11_α
# IR_LIT_INTEGER
 xchain00826_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00830_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00826_n12_α
.Lx00830_0:
 .quad 1
# IR_TO
 xchain00826_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00831_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00826_n13_α
 xchain00826_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00831_0
# IR_LIT_STRING
 xchain00826_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00832_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00826_n14_α
.Lx00832_0:
 .quad .Lx00832_0_s
.Lx00832_0_s:
 .string "member(S,5)"
# IR_ASSIGN_VAR
 xchain00826_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00826_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00826_n15_α
# IR_BOUND
 xchain00826_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00826_n16_α
# IR_RETURN
 xchain00826_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setmember_γ
 xchain00826_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2625: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2625]
 lea rsi, [rbp + 560]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00826_n1_α
 jmp xchain00826_n17_α
 xchain00826_n15_β:
 jmp xchain00826_n1_α
# IR_VAR
 xchain00826_n16_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00826_n18_α
# IR_ASSIGN gva
 xchain00826_n17_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [1879052928], rax
 mov qword ptr [1879052936], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00826_n20_α
# IR_LIT_INTEGER
 xchain00826_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00833_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00826_n21_α
.Lx00833_0:
 .quad 5
# IR_UNMARK
 xchain00826_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00826_n10_β
# IR_LIT_INTEGER
 xchain00826_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00834_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00826_n3_α
.Lx00834_0:
 .quad 5
 xchain00826_n21_α:
# BOX IR_CALL member(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2633: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2633]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00826_n19_α
 jmp xchain00826_n19_α
 xchain00826_n21_β:
 jmp xchain00826_n19_α
proc_setmember_res:
add rsp, 8
pop rbp
proc_setmember_β:
jmp proc_setmember_ω
proc_setmember_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_setmember_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_setinsdel_α
proc_setinsdel_α:
#=======================================================================================================================
    .global proc_setinsdel_α
    .global proc_setinsdel_β
    .global proc_setinsdel_γ
    .global proc_setinsdel_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_setinsdel_α_body:
# IR_DISJUNCTION_NARY
 xchain00835_n0_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 mov dword ptr [rbp + 544], 0
 jmp xchain00835_n2_α
xchain00835_n0_as:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 0
 jne .Lx00836_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
 jmp xchain00835_n1_α
.Lx00836_0:
 jmp xchain00835_n1_α
 xchain00835_n0_β:
 mov eax, dword ptr [rbp + 544]
 jmp xchain00835_n1_α
xchain00835_n0_af:
 add dword ptr [rbp + 544], 1
 mov eax, dword ptr [rbp + 544]
 jmp xchain00835_n1_α
# IR_DISJUNCTION_NARY
 xchain00835_n1_α:
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 mov dword ptr [rbp + 416], 0
 jmp xchain00835_n5_α
xchain00835_n1_as:
 mov eax, dword ptr [rbp + 416]
 cmp eax, 0
 jne .Lx00837_0
 jmp xchain00835_n4_α
.Lx00837_0:
 jmp xchain00835_n4_α
 xchain00835_n1_β:
 mov eax, dword ptr [rbp + 416]
 jmp xchain00835_n4_α
xchain00835_n1_af:
 add dword ptr [rbp + 416], 1
 mov eax, dword ptr [rbp + 416]
 jmp xchain00835_n4_α
# IR_VAR_REF
 xchain00835_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052976
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00835_n6_α
 xchain00835_n2_β:
 jmp xchain00835_n0_af
# IR_ASSIGN gva
 xchain00835_n3_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00835_n0_as
 xchain00835_n3_β:
 jmp xchain00835_n1_α
# IR_LIT_INTEGER
 xchain00835_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00838_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00835_n7_α
.Lx00838_0:
 .quad 1
# IR_VAR
 xchain00835_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00835_n8_α
 xchain00835_n5_β:
 jmp xchain00835_n1_af
# IR_NULLTEST_VAR
 xchain00835_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00835_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00835_n0_af
 cmp eax, 0
 jne xchain00835_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00835_n9_α
# IR_VAR
 xchain00835_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00835_n10_α
# IR_UNOP
 xchain00835_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00835_n1_af
 cmp eax, 0
 jne xchain00835_n1_af
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain00835_n11_α
# IR_LIT_INTEGER
 xchain00835_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00839_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00835_n12_α
.Lx00839_0:
 .quad 1
# IR_TO
 xchain00835_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00840_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00835_n13_α
 xchain00835_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00840_0
# IR_LIT_STRING
 xchain00835_n11_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00841_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00835_n14_α
.Lx00841_0:
 .quad .Lx00841_0_s
.Lx00841_0_s:
 .string "insert+delete"
# IR_ASSIGN_VAR
 xchain00835_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00835_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00835_n15_α
# IR_BOUND
 xchain00835_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00835_n16_α
# IR_RETURN
 xchain00835_n14_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsdel_γ
 xchain00835_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2658: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2658]
 lea rsi, [rbp + 592]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain00835_n1_α
 jmp xchain00835_n3_α
 xchain00835_n15_β:
 jmp xchain00835_n1_α
# IR_VAR
 xchain00835_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00835_n17_α
# IR_LIT_INTEGER
 xchain00835_n17_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00842_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00835_n19_α
.Lx00842_0:
 .quad 5
# IR_UNMARK
 xchain00835_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00835_n10_β
 xchain00835_n19_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 264], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+272]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
  .section .rodata
  .Lrkfn2664: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2664]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00835_n18_α
 jmp xchain00835_n20_α
 xchain00835_n19_β:
 jmp xchain00835_n18_α
# IR_LIT_INTEGER
 xchain00835_n20_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00843_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00835_n21_α
.Lx00843_0:
 .quad 5
 xchain00835_n21_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+208]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2667: .string "delete"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2667]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00835_n18_α
 jmp xchain00835_n18_α
 xchain00835_n21_β:
 jmp xchain00835_n18_α
proc_setinsdel_res:
add rsp, 8
pop rbp
proc_setinsdel_β:
jmp proc_setinsdel_ω
proc_setinsdel_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_setinsdel_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_setpick_α
proc_setpick_α:
#=======================================================================================================================
    .global proc_setpick_α
    .global proc_setpick_β
    .global proc_setpick_γ
    .global proc_setpick_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_setpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00844_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00844_n2_α
xchain00844_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00845_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00844_n1_α
.Lx00845_0:
 jmp xchain00844_n1_α
 xchain00844_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00844_n1_α
xchain00844_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00844_n1_α
# IR_DISJUNCTION_NARY
 xchain00844_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00844_n5_α
xchain00844_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00846_0
 jmp xchain00844_n4_α
.Lx00846_0:
 jmp xchain00844_n4_α
 xchain00844_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00844_n4_α
xchain00844_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00844_n4_α
# IR_VAR_REF
 xchain00844_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053008
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00844_n6_α
 xchain00844_n2_β:
 jmp xchain00844_n0_af
 xchain00844_n3_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+432]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn2676: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2676]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00844_n1_α
 jmp xchain00844_n0_as
 xchain00844_n3_β:
 jmp xchain00844_n1_α
# IR_LIT_INTEGER
 xchain00844_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00847_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00844_n7_α
.Lx00847_0:
 .quad 1
# IR_VAR
 xchain00844_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00844_n8_α
 xchain00844_n5_β:
 jmp xchain00844_n1_af
# IR_NULLTEST_VAR
 xchain00844_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00844_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00844_n0_af
 cmp eax, 0
 jne xchain00844_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00844_n9_α
# IR_VAR
 xchain00844_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00844_n10_α
# IR_UNOP
 xchain00844_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00844_n1_af
 cmp eax, 0
 jne xchain00844_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00844_n11_α
# IR_LIT_INTEGER
 xchain00844_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00848_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00844_n12_α
.Lx00848_0:
 .quad 1
# IR_TO
 xchain00844_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00849_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00844_n13_α
 xchain00844_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00849_0
# IR_LIT_STRING
 xchain00844_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00850_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00844_n14_α
.Lx00850_0:
 .quad .Lx00850_0_s
.Lx00850_0_s:
 .string "?S"
# IR_ASSIGN_VAR
 xchain00844_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00844_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00844_n15_α
# IR_BOUND
 xchain00844_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00844_n16_α
# IR_RETURN
 xchain00844_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setpick_γ
 xchain00844_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2693: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2693]
 lea rsi, [rbp + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00844_n1_α
 jmp xchain00844_n17_α
 xchain00844_n15_β:
 jmp xchain00844_n1_α
# IR_VAR_REF
 xchain00844_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052992
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00844_n18_α
# IR_ASSIGN gva
 xchain00844_n17_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00844_n19_α
# IR_RANDOM
 xchain00844_n18_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00844_n21_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00844_n20_α
# IR_LIT_INTEGER
 xchain00844_n19_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00851_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00844_n3_α
.Lx00851_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00844_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00844_n21_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00844_n21_α
# IR_UNMARK
 xchain00844_n21_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00844_n10_β
proc_setpick_res:
add rsp, 8
pop rbp
proc_setpick_β:
jmp proc_setpick_ω
proc_setpick_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 680]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
proc_setpick_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_setbang_α
proc_setbang_α:
#=======================================================================================================================
    .global proc_setbang_α
    .global proc_setbang_β
    .global proc_setbang_γ
    .global proc_setbang_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_setbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00852_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00852_n2_α
xchain00852_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00853_0
 jmp xchain00852_n1_α
.Lx00853_0:
 jmp xchain00852_n1_α
 xchain00852_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00852_n1_α
xchain00852_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00852_n1_α
# IR_DISJUNCTION_NARY
 xchain00852_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00852_n4_α
xchain00852_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00854_0
 jmp xchain00852_n3_α
.Lx00854_0:
 jmp xchain00852_n3_α
 xchain00852_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00852_n3_α
xchain00852_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00852_n3_α
# IR_VAR_REF
 xchain00852_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053040
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00852_n5_α
 xchain00852_n2_β:
 jmp xchain00852_n0_af
# IR_LIT_INTEGER
 xchain00852_n3_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00855_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00852_n6_α
.Lx00855_0:
 .quad 1
# IR_VAR
 xchain00852_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00852_n7_α
 xchain00852_n4_β:
 jmp xchain00852_n1_af
# IR_NULLTEST_VAR
 xchain00852_n5_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00852_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00852_n0_af
 cmp eax, 0
 jne xchain00852_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00852_n8_α
# IR_VAR
 xchain00852_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00852_n9_α
# IR_UNOP
 xchain00852_n7_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00852_n1_af
 cmp eax, 0
 jne xchain00852_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00852_n10_α
# IR_LIT_INTEGER
 xchain00852_n8_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00852_n11_α
.Lx00856_0:
 .quad 1
# IR_TO
 xchain00852_n9_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00857_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00852_n12_α
 xchain00852_n9_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00857_0
# IR_LIT_STRING
 xchain00852_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00858_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00852_n13_α
.Lx00858_0:
 .quad .Lx00858_0_s
.Lx00858_0_s:
 .string "!S"
# IR_ASSIGN_VAR
 xchain00852_n11_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00852_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00852_n14_α
# IR_BOUND
 xchain00852_n12_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00852_n15_α
# IR_RETURN
 xchain00852_n13_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setbang_γ
 xchain00852_n14_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2725: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2725]
 lea rsi, [rbp + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00852_n1_α
 jmp xchain00852_n16_α
 xchain00852_n14_β:
 jmp xchain00852_n1_α
# IR_VAR
 xchain00852_n15_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00852_n17_α
# IR_ASSIGN gva
 xchain00852_n16_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00852_n19_α
# IR_LIST_BANG
 xchain00852_n17_α:
 mov qword ptr [rbp + 192], 0
.Lx00859_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00852_n18_α
 jmp xchain00852_n17_β
 xchain00852_n17_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00859_0
# IR_UNMARK
 xchain00852_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00852_n9_β
# IR_LIT_INTEGER
 xchain00852_n19_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00860_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00852_n20_α
.Lx00860_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00852_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00861_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00852_n21_α
.Lx00861_0:
 .quad 5
# IR_TO
 xchain00852_n21_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call to_int@PLT
 mov qword ptr [rbp + 544], 6
 mov qword ptr [rbp + 552], rax
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 call to_int@PLT
 mov qword ptr [rbp + 576], 6
 mov qword ptr [rbp + 584], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 528], rax
.Lx00862_0:
 mov rax, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 584]
 cmp rax, rcx
 jg xchain00852_n1_α
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00852_n22_α
 xchain00852_n21_β:
 inc qword ptr [rbp + 528]
 jmp .Lx00862_0
 xchain00852_n22_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+432]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn2737: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2737]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00852_n21_β
 jmp xchain00852_n21_β
 xchain00852_n22_β:
 jmp xchain00852_n21_β
proc_setbang_res:
add rsp, 8
pop rbp
proc_setbang_β:
jmp proc_setbang_ω
proc_setbang_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_setbang_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_tblcreate_α
proc_tblcreate_α:
#=======================================================================================================================
    .global proc_tblcreate_α
    .global proc_tblcreate_β
    .global proc_tblcreate_γ
    .global proc_tblcreate_ω
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
proc_tblcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00863_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00863_n2_α
xchain00863_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00864_0
 jmp xchain00863_n1_α
.Lx00864_0:
 jmp xchain00863_n1_α
 xchain00863_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00863_n1_α
xchain00863_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00863_n1_α
# IR_LIT_INTEGER
 xchain00863_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00865_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00863_n3_α
.Lx00865_0:
 .quad 1
# IR_VAR
 xchain00863_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00863_n4_α
 xchain00863_n2_β:
 jmp xchain00863_n0_af
# IR_VAR
 xchain00863_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00863_n5_α
# IR_UNOP
 xchain00863_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00863_n0_af
 cmp eax, 0
 jne xchain00863_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00863_n6_α
# IR_TO
 xchain00863_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00866_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00863_n7_α
 xchain00863_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00866_0
# IR_LIT_STRING
 xchain00863_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00867_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00863_n8_α
.Lx00867_0:
 .quad .Lx00867_0_s
.Lx00867_0_s:
 .string "table()"
# IR_BOUND
 xchain00863_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00863_n9_α
# IR_RETURN
 xchain00863_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblcreate_γ
 xchain00863_n9_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2754: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2754]
 lea rsi, [rbp + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00863_n10_α
 jmp xchain00863_n10_α
 xchain00863_n9_β:
 jmp xchain00863_n10_α
# IR_UNMARK
 xchain00863_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00863_n5_β
proc_tblcreate_res:
add rsp, 8
pop rbp
proc_tblcreate_β:
jmp proc_tblcreate_ω
proc_tblcreate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 360]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_tblcreate_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
  .globl proc_tblasgn_α
proc_tblasgn_α:
#=======================================================================================================================
    .global proc_tblasgn_α
    .global proc_tblasgn_β
    .global proc_tblasgn_γ
    .global proc_tblasgn_ω
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
proc_tblasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain00868_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00868_n2_α
xchain00868_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00869_0
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
 jmp xchain00868_n1_α
.Lx00869_0:
 jmp xchain00868_n1_α
 xchain00868_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00868_n1_α
xchain00868_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00868_n1_α
# IR_DISJUNCTION_NARY
 xchain00868_n1_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00868_n5_α
xchain00868_n1_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00870_0
 jmp xchain00868_n4_α
.Lx00870_0:
 jmp xchain00868_n4_α
 xchain00868_n1_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00868_n4_α
xchain00868_n1_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00868_n4_α
# IR_VAR_REF
 xchain00868_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053072
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00868_n6_α
 xchain00868_n2_β:
 jmp xchain00868_n0_af
# IR_ASSIGN_VAR
 xchain00868_n3_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00868_n1_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00868_n0_as
 xchain00868_n3_β:
 jmp xchain00868_n1_α
# IR_LIT_INTEGER
 xchain00868_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00871_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00868_n7_α
.Lx00871_0:
 .quad 1
# IR_VAR
 xchain00868_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00868_n8_α
 xchain00868_n5_β:
 jmp xchain00868_n1_af
# IR_NULLTEST_VAR
 xchain00868_n6_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00868_n0_af
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00868_n0_af
 cmp eax, 0
 jne xchain00868_n0_af
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00868_n9_α
# IR_VAR
 xchain00868_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00868_n10_α
# IR_UNOP
 xchain00868_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00868_n1_af
 cmp eax, 0
 jne xchain00868_n1_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00868_n11_α
# IR_LIT_INTEGER
 xchain00868_n9_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00872_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00868_n12_α
.Lx00872_0:
 .quad 1
# IR_TO
 xchain00868_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00873_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00868_n13_α
 xchain00868_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00873_0
# IR_LIT_STRING
 xchain00868_n11_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00874_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00868_n14_α
.Lx00874_0:
 .quad .Lx00874_0_s
.Lx00874_0_s:
 .string "T[5] := 1"
# IR_ASSIGN_VAR
 xchain00868_n12_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00868_n0_af
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00868_n15_α
# IR_BOUND
 xchain00868_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00868_n16_α
# IR_RETURN
 xchain00868_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblasgn_γ
 xchain00868_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2781: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2781]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00868_n1_α
 jmp xchain00868_n17_α
 xchain00868_n15_β:
 jmp xchain00868_n1_α
# IR_VAR_REF
 xchain00868_n16_α:
 mov rax, 4294967305
 mov rdx, 1879053056
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00868_n18_α
# IR_ASSIGN gva
 xchain00868_n17_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00868_n19_α
# IR_LIT_INTEGER
 xchain00868_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00875_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00868_n20_α
.Lx00875_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00868_n19_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00876_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00868_n21_α
.Lx00876_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00868_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00868_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00868_n22_α
# IR_SUBSCRIPT x[i] variable
 xchain00868_n21_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00868_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00868_n24_α
# IR_LIT_INTEGER
 xchain00868_n22_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00877_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00868_n25_α
.Lx00877_0:
 .quad 1
# IR_UNMARK
 xchain00868_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00868_n10_β
# IR_LIT_INTEGER
 xchain00868_n24_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00878_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00868_n3_α
.Lx00878_0:
 .quad 1
# IR_ASSIGN_VAR
 xchain00868_n25_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00868_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00868_n23_α
proc_tblasgn_res:
add rsp, 8
pop rbp
proc_tblasgn_β:
jmp proc_tblasgn_ω
proc_tblasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 776]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
proc_tblasgn_ω:
mov rax, [rbp + 784]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
  .globl proc_tblsub_α
proc_tblsub_α:
#=======================================================================================================================
    .global proc_tblsub_α
    .global proc_tblsub_β
    .global proc_tblsub_γ
    .global proc_tblsub_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_tblsub_α_body:
# IR_DISJUNCTION_NARY
 xchain00879_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00879_n2_α
xchain00879_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00880_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 jmp xchain00879_n1_α
.Lx00880_0:
 jmp xchain00879_n1_α
 xchain00879_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00879_n1_α
xchain00879_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00879_n1_α
# IR_DISJUNCTION_NARY
 xchain00879_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00879_n5_α
xchain00879_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00881_0
 jmp xchain00879_n4_α
.Lx00881_0:
 jmp xchain00879_n4_α
 xchain00879_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00879_n4_α
xchain00879_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00879_n4_α
# IR_VAR_REF
 xchain00879_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053104
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00879_n6_α
 xchain00879_n2_β:
 jmp xchain00879_n0_af
# IR_ASSIGN_VAR
 xchain00879_n3_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00879_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00879_n0_as
 xchain00879_n3_β:
 jmp xchain00879_n1_α
# IR_LIT_INTEGER
 xchain00879_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00882_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00879_n7_α
.Lx00882_0:
 .quad 1
# IR_VAR
 xchain00879_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00879_n8_α
 xchain00879_n5_β:
 jmp xchain00879_n1_af
# IR_NULLTEST_VAR
 xchain00879_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00879_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00879_n0_af
 cmp eax, 0
 jne xchain00879_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00879_n9_α
# IR_VAR
 xchain00879_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00879_n10_α
# IR_UNOP
 xchain00879_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00879_n1_af
 cmp eax, 0
 jne xchain00879_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00879_n11_α
# IR_LIT_INTEGER
 xchain00879_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00883_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00879_n12_α
.Lx00883_0:
 .quad 1
# IR_TO
 xchain00879_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00884_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00879_n13_α
 xchain00879_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00884_0
# IR_LIT_STRING
 xchain00879_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00885_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00879_n14_α
.Lx00885_0:
 .quad .Lx00885_0_s
.Lx00885_0_s:
 .string "T[5]"
# IR_ASSIGN_VAR
 xchain00879_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00879_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00879_n15_α
# IR_BOUND
 xchain00879_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00879_n16_α
# IR_RETURN
 xchain00879_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblsub_γ
 xchain00879_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2818: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2818]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00879_n1_α
 jmp xchain00879_n17_α
 xchain00879_n15_β:
 jmp xchain00879_n1_α
# IR_VAR_REF
 xchain00879_n16_α:
 mov rax, 4294967305
 mov rdx, 1879053088
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00879_n18_α
# IR_ASSIGN gva
 xchain00879_n17_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00879_n19_α
# IR_LIT_INTEGER
 xchain00879_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00886_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00879_n20_α
.Lx00886_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00879_n19_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00887_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00879_n21_α
.Lx00887_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00879_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00879_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00879_n22_α
# IR_SUBSCRIPT x[i] variable
 xchain00879_n21_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00879_n1_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00879_n24_α
# IR_DEREF variable -> value
 xchain00879_n22_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00879_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00879_n23_α
# IR_UNMARK
 xchain00879_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00879_n10_β
# IR_LIT_INTEGER
 xchain00879_n24_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00888_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00879_n3_α
.Lx00888_0:
 .quad 1
proc_tblsub_res:
add rsp, 8
pop rbp
proc_tblsub_β:
jmp proc_tblsub_ω
proc_tblsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_tblsub_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_recconstr_α
proc_recconstr_α:
#=======================================================================================================================
    .global proc_recconstr_α
    .global proc_recconstr_β
    .global proc_recconstr_γ
    .global proc_recconstr_ω
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
proc_recconstr_α_body:
# IR_DISJUNCTION_NARY
 xchain00889_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00889_n2_α
xchain00889_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00890_0
 jmp xchain00889_n1_α
.Lx00890_0:
 jmp xchain00889_n1_α
 xchain00889_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00889_n1_α
xchain00889_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00889_n1_α
# IR_LIT_INTEGER
 xchain00889_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00891_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00889_n3_α
.Lx00891_0:
 .quad 1
# IR_VAR
 xchain00889_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00889_n4_α
 xchain00889_n2_β:
 jmp xchain00889_n0_af
# IR_VAR
 xchain00889_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00889_n5_α
# IR_UNOP
 xchain00889_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00889_n0_af
 cmp eax, 0
 jne xchain00889_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00889_n6_α
# IR_TO
 xchain00889_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00892_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00889_n7_α
 xchain00889_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00892_0
# IR_LIT_STRING
 xchain00889_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00893_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00889_n8_α
.Lx00893_0:
 .quad .Lx00893_0_s
.Lx00893_0_s:
 .string "record(4,7)"
# IR_BOUND
 xchain00889_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00889_n9_α
# IR_RETURN
 xchain00889_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recconstr_γ
# IR_LIT_INTEGER
 xchain00889_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00894_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00889_n10_α
.Lx00894_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00889_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00895_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00889_n11_α
.Lx00895_0:
 .quad 7
 xchain00889_n11_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2848: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2848]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00889_n12_α
 jmp xchain00889_n12_α
 xchain00889_n11_β:
 jmp xchain00889_n12_α
# IR_UNMARK
 xchain00889_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00889_n5_β
proc_recconstr_res:
add rsp, 8
pop rbp
proc_recconstr_β:
jmp proc_recconstr_ω
proc_recconstr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_recconstr_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_reccopy_α
proc_reccopy_α:
#=======================================================================================================================
    .global proc_reccopy_α
    .global proc_reccopy_β
    .global proc_reccopy_γ
    .global proc_reccopy_ω
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
proc_reccopy_α_body:
# IR_DISJUNCTION_NARY
 xchain00896_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00896_n2_α
xchain00896_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00897_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00896_n1_α
.Lx00897_0:
 jmp xchain00896_n1_α
 xchain00896_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00896_n1_α
xchain00896_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00896_n1_α
# IR_DISJUNCTION_NARY
 xchain00896_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00896_n5_α
xchain00896_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00898_0
 jmp xchain00896_n4_α
.Lx00898_0:
 jmp xchain00896_n4_α
 xchain00896_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00896_n4_α
xchain00896_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00896_n4_α
# IR_VAR_REF
 xchain00896_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053136
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00896_n6_α
 xchain00896_n2_β:
 jmp xchain00896_n0_af
# IR_ASSIGN gva
 xchain00896_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00896_n0_as
 xchain00896_n3_β:
 jmp xchain00896_n1_α
# IR_LIT_INTEGER
 xchain00896_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00899_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00896_n7_α
.Lx00899_0:
 .quad 1
# IR_VAR
 xchain00896_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00896_n8_α
 xchain00896_n5_β:
 jmp xchain00896_n1_af
# IR_NULLTEST_VAR
 xchain00896_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00896_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00896_n0_af
 cmp eax, 0
 jne xchain00896_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00896_n9_α
# IR_VAR
 xchain00896_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00896_n10_α
# IR_UNOP
 xchain00896_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00896_n1_af
 cmp eax, 0
 jne xchain00896_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00896_n11_α
# IR_LIT_INTEGER
 xchain00896_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00900_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00896_n12_α
.Lx00900_0:
 .quad 1
# IR_TO
 xchain00896_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00901_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00896_n13_α
 xchain00896_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00901_0
# IR_LIT_STRING
 xchain00896_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00902_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00896_n14_α
.Lx00902_0:
 .quad .Lx00902_0_s
.Lx00902_0_s:
 .string "copy(R)"
# IR_ASSIGN_VAR
 xchain00896_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00896_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00896_n15_α
# IR_BOUND
 xchain00896_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00896_n16_α
# IR_RETURN
 xchain00896_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reccopy_γ
# IR_LIT_INTEGER
 xchain00896_n15_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00903_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00896_n17_α
.Lx00903_0:
 .quad 4
# IR_VAR
 xchain00896_n16_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00896_n18_α
# IR_LIT_INTEGER
 xchain00896_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00904_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00896_n20_α
.Lx00904_0:
 .quad 7
 xchain00896_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2878: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2878]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00896_n19_α
 jmp xchain00896_n19_α
 xchain00896_n18_β:
 jmp xchain00896_n19_α
# IR_UNMARK
 xchain00896_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00896_n10_β
 xchain00896_n20_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn2882: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2882]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00896_n1_α
 jmp xchain00896_n3_α
 xchain00896_n20_β:
 jmp xchain00896_n1_α
proc_reccopy_res:
add rsp, 8
pop rbp
proc_reccopy_β:
jmp proc_reccopy_ω
proc_reccopy_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_reccopy_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
  .globl proc_recfield_α
proc_recfield_α:
#=======================================================================================================================
    .global proc_recfield_α
    .global proc_recfield_β
    .global proc_recfield_γ
    .global proc_recfield_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_recfield_α_body:
# IR_DISJUNCTION_NARY
 xchain00905_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00905_n2_α
xchain00905_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00906_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00905_n1_α
.Lx00906_0:
 jmp xchain00905_n1_α
 xchain00905_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00905_n1_α
xchain00905_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00905_n1_α
# IR_DISJUNCTION_NARY
 xchain00905_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00905_n5_α
xchain00905_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00907_0
 jmp xchain00905_n4_α
.Lx00907_0:
 jmp xchain00905_n4_α
 xchain00905_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00905_n4_α
xchain00905_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00905_n4_α
# IR_VAR_REF
 xchain00905_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053168
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00905_n6_α
 xchain00905_n2_β:
 jmp xchain00905_n0_af
# IR_ASSIGN gva
 xchain00905_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00905_n0_as
 xchain00905_n3_β:
 jmp xchain00905_n1_α
# IR_LIT_INTEGER
 xchain00905_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00908_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00905_n7_α
.Lx00908_0:
 .quad 1
# IR_VAR
 xchain00905_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00905_n8_α
 xchain00905_n5_β:
 jmp xchain00905_n1_af
# IR_NULLTEST_VAR
 xchain00905_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00905_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00905_n0_af
 cmp eax, 0
 jne xchain00905_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00905_n9_α
# IR_VAR
 xchain00905_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00905_n10_α
# IR_UNOP
 xchain00905_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00905_n1_af
 cmp eax, 0
 jne xchain00905_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00905_n11_α
# IR_LIT_INTEGER
 xchain00905_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00909_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00905_n12_α
.Lx00909_0:
 .quad 1
# IR_TO
 xchain00905_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00910_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00905_n13_α
 xchain00905_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00910_0
# IR_LIT_STRING
 xchain00905_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00911_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00905_n14_α
.Lx00911_0:
 .quad .Lx00911_0_s
.Lx00911_0_s:
 .string "R.f"
# IR_ASSIGN_VAR
 xchain00905_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00905_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00905_n15_α
# IR_BOUND
 xchain00905_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00905_n16_α
# IR_RETURN
 xchain00905_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recfield_γ
# IR_LIT_INTEGER
 xchain00905_n15_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00912_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00905_n17_α
.Lx00912_0:
 .quad 4
# IR_VAR
 xchain00905_n16_α:
 mov rax, qword ptr [1879053152]
 mov rdx, qword ptr [1879053160]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00905_n18_α
# IR_LIT_INTEGER
 xchain00905_n17_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00913_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00905_n20_α
.Lx00913_0:
 .quad 7
# IR_FIELD_GET
 xchain00905_n18_α:
 mov rdi, qword ptr [rip + .Lx00914_0]
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00905_n19_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00905_n19_α
.Lx00914_0:
 .quad .Lx00914_0_s
.Lx00914_0_s:
 .string "y"
# IR_UNMARK
 xchain00905_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00905_n10_β
 xchain00905_n20_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn2913: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2913]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00905_n1_α
 jmp xchain00905_n3_α
 xchain00905_n20_β:
 jmp xchain00905_n1_α
proc_recfield_res:
add rsp, 8
pop rbp
proc_recfield_β:
jmp proc_recfield_ω
proc_recfield_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 680]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
proc_recfield_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_bigfield_α
proc_bigfield_α:
#=======================================================================================================================
    .global proc_bigfield_α
    .global proc_bigfield_β
    .global proc_bigfield_γ
    .global proc_bigfield_ω
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
proc_bigfield_α_body:
# IR_DISJUNCTION_NARY
 xchain00915_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00915_n2_α
xchain00915_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00916_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00915_n1_α
.Lx00916_0:
 jmp xchain00915_n1_α
 xchain00915_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00915_n1_α
xchain00915_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00915_n1_α
# IR_DISJUNCTION_NARY
 xchain00915_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00915_n5_α
xchain00915_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00917_0
 jmp xchain00915_n4_α
.Lx00917_0:
 jmp xchain00915_n4_α
 xchain00915_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00915_n4_α
xchain00915_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00915_n4_α
# IR_VAR_REF
 xchain00915_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053200
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00915_n6_α
 xchain00915_n2_β:
 jmp xchain00915_n0_af
# IR_ASSIGN gva
 xchain00915_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00915_n0_as
 xchain00915_n3_β:
 jmp xchain00915_n1_α
# IR_LIT_INTEGER
 xchain00915_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00918_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00915_n7_α
.Lx00918_0:
 .quad 1
# IR_VAR
 xchain00915_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00915_n8_α
 xchain00915_n5_β:
 jmp xchain00915_n1_af
# IR_NULLTEST_VAR
 xchain00915_n6_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 99
 je xchain00915_n0_af
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00915_n0_af
 cmp eax, 0
 jne xchain00915_n0_af
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 488], rax
 jmp xchain00915_n9_α
# IR_VAR
 xchain00915_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00915_n10_α
# IR_UNOP
 xchain00915_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00915_n1_af
 cmp eax, 0
 jne xchain00915_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00915_n11_α
# IR_LIT_INTEGER
 xchain00915_n9_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00919_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00915_n12_α
.Lx00919_0:
 .quad 1
# IR_TO
 xchain00915_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00920_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00915_n13_α
 xchain00915_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00920_0
# IR_LIT_STRING
 xchain00915_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00921_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00915_n14_α
.Lx00921_0:
 .quad .Lx00921_0_s
.Lx00921_0_s:
 .string "R2.f"
# IR_ASSIGN_VAR
 xchain00915_n12_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00915_n0_af
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00915_n15_α
# IR_BOUND
 xchain00915_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00915_n16_α
# IR_RETURN
 xchain00915_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_bigfield_γ
 xchain00915_n15_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2938: .string "bigrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2938]
 lea rsi, [rbp + 432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00915_n1_α
 jmp xchain00915_n3_α
 xchain00915_n15_β:
 jmp xchain00915_n1_α
# IR_VAR
 xchain00915_n16_α:
 mov rax, qword ptr [1879053184]
 mov rdx, qword ptr [1879053192]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00915_n17_α
# IR_FIELD_GET
 xchain00915_n17_α:
 mov rdi, qword ptr [rip + .Lx00922_0]
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00915_n18_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00915_n18_α
.Lx00922_0:
 .quad .Lx00922_0_s
.Lx00922_0_s:
 .string "horatio"
# IR_UNMARK
 xchain00915_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00915_n10_β
proc_bigfield_res:
add rsp, 8
pop rbp
proc_bigfield_β:
jmp proc_bigfield_ω
proc_bigfield_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 584]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
proc_bigfield_ω:
mov rax, [rbp + 592]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
  .globl proc_globasgn_α
proc_globasgn_α:
#=======================================================================================================================
    .global proc_globasgn_α
    .global proc_globasgn_β
    .global proc_globasgn_γ
    .global proc_globasgn_ω
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
proc_globasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain00923_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00923_n2_α
xchain00923_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00924_0
 jmp xchain00923_n1_α
.Lx00924_0:
 jmp xchain00923_n1_α
 xchain00923_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00923_n1_α
xchain00923_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00923_n1_α
# IR_LIT_INTEGER
 xchain00923_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00925_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00923_n3_α
.Lx00925_0:
 .quad 1
# IR_VAR
 xchain00923_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00923_n4_α
 xchain00923_n2_β:
 jmp xchain00923_n0_af
# IR_VAR
 xchain00923_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00923_n5_α
# IR_UNOP
 xchain00923_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00923_n0_af
 cmp eax, 0
 jne xchain00923_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00923_n6_α
# IR_TO
 xchain00923_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00926_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00923_n7_α
 xchain00923_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00926_0
# IR_LIT_STRING
 xchain00923_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00927_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00923_n8_α
.Lx00927_0:
 .quad .Lx00927_0_s
.Lx00927_0_s:
 .string "global := 1"
# IR_BOUND
 xchain00923_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00923_n9_α
# IR_RETURN
 xchain00923_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_globasgn_γ
# IR_LIT_INTEGER
 xchain00923_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00928_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00923_n10_α
.Lx00928_0:
 .quad 1
# IR_ASSIGN gva
 xchain00923_n10_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00923_n11_α
# IR_UNMARK
 xchain00923_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00923_n5_β
proc_globasgn_res:
add rsp, 8
pop rbp
proc_globasgn_β:
jmp proc_globasgn_ω
proc_globasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_globasgn_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_loclasgn_α
proc_loclasgn_α:
#=======================================================================================================================
    .global proc_loclasgn_α
    .global proc_loclasgn_β
    .global proc_loclasgn_γ
    .global proc_loclasgn_ω
  sub rsp, 416
  mov [rsp + 392], rcx
  mov [rsp + 400], rdx
  mov [rsp + 408], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 384
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 384
  call rt_jmp_frame_lexprep@PLT
proc_loclasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain00929_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00929_n2_α
xchain00929_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00930_0
 jmp xchain00929_n1_α
.Lx00930_0:
 jmp xchain00929_n1_α
 xchain00929_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00929_n1_α
xchain00929_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00929_n1_α
# IR_LIT_INTEGER
 xchain00929_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00931_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00929_n3_α
.Lx00931_0:
 .quad 1
# IR_VAR
 xchain00929_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00929_n4_α
 xchain00929_n2_β:
 jmp xchain00929_n0_af
# IR_VAR
 xchain00929_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00929_n5_α
# IR_UNOP
 xchain00929_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00929_n0_af
 cmp eax, 0
 jne xchain00929_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00929_n6_α
# IR_TO
 xchain00929_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00932_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00929_n7_α
 xchain00929_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00932_0
# IR_LIT_STRING
 xchain00929_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00933_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00929_n8_α
.Lx00933_0:
 .quad .Lx00933_0_s
.Lx00933_0_s:
 .string "local := 1"
# IR_BOUND
 xchain00929_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00929_n9_α
# IR_RETURN
 xchain00929_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_loclasgn_γ
# IR_LIT_INTEGER
 xchain00929_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00934_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00929_n10_α
.Lx00934_0:
 .quad 1
 xchain00929_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00929_n11_α
# IR_UNMARK
 xchain00929_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00929_n5_β
proc_loclasgn_res:
add rsp, 8
pop rbp
proc_loclasgn_β:
jmp proc_loclasgn_ω
proc_loclasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_loclasgn_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
  .globl proc_statasgn_α
proc_statasgn_α:
#=======================================================================================================================
    .global proc_statasgn_α
    .global proc_statasgn_β
    .global proc_statasgn_γ
    .global proc_statasgn_ω
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
proc_statasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain00935_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00935_n2_α
xchain00935_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00936_0
 jmp xchain00935_n1_α
.Lx00936_0:
 jmp xchain00935_n1_α
 xchain00935_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00935_n1_α
xchain00935_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00935_n1_α
# IR_LIT_INTEGER
 xchain00935_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00937_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00935_n3_α
.Lx00937_0:
 .quad 1
# IR_VAR
 xchain00935_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00935_n4_α
 xchain00935_n2_β:
 jmp xchain00935_n0_af
# IR_VAR
 xchain00935_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00935_n5_α
# IR_UNOP
 xchain00935_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00935_n0_af
 cmp eax, 0
 jne xchain00935_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00935_n6_α
# IR_TO
 xchain00935_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00938_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00935_n7_α
 xchain00935_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00938_0
# IR_LIT_STRING
 xchain00935_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00939_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00935_n8_α
.Lx00939_0:
 .quad .Lx00939_0_s
.Lx00939_0_s:
 .string "static := 1"
# IR_BOUND
 xchain00935_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00935_n9_α
# IR_RETURN
 xchain00935_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_statasgn_γ
# IR_LIT_INTEGER
 xchain00935_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00940_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00935_n10_α
.Lx00940_0:
 .quad 1
# IR_ASSIGN gva
 xchain00935_n10_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00935_n11_α
# IR_UNMARK
 xchain00935_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00935_n5_β
proc_statasgn_res:
add rsp, 8
pop rbp
proc_statasgn_β:
jmp proc_statasgn_ω
proc_statasgn_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 376]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
proc_statasgn_ω:
mov rax, [rbp + 384]
lea rsp, [rbp + 400]
mov rbp, [rbp + 392]
jmp rax
  .globl proc_readz_α
proc_readz_α:
#=======================================================================================================================
    .global proc_readz_α
    .global proc_readz_β
    .global proc_readz_γ
    .global proc_readz_ω
  sub rsp, 768
  mov [rsp + 744], rcx
  mov [rsp + 752], rdx
  mov [rsp + 760], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 736
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 736
  call rt_jmp_frame_lexprep@PLT
proc_readz_α_body:
# IR_DISJUNCTION_NARY
 xchain00941_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00941_n2_α
xchain00941_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00942_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00941_n1_α
.Lx00942_0:
 jmp xchain00941_n1_α
 xchain00941_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00941_n1_α
xchain00941_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00941_n1_α
# IR_DISJUNCTION_NARY
 xchain00941_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00941_n5_α
xchain00941_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00943_0
 jmp xchain00941_n4_α
.Lx00943_0:
 jmp xchain00941_n4_α
 xchain00941_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00941_n4_α
xchain00941_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00941_n4_α
# IR_VAR_REF
 xchain00941_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053248
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00941_n6_α
 xchain00941_n2_β:
 jmp xchain00941_n0_af
# IR_ASSIGN gva
 xchain00941_n3_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00941_n0_as
 xchain00941_n3_β:
 jmp xchain00941_n1_α
# IR_LIT_INTEGER
 xchain00941_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00944_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00941_n7_α
.Lx00944_0:
 .quad 1
# IR_VAR
 xchain00941_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00941_n8_α
 xchain00941_n5_β:
 jmp xchain00941_n1_af
# IR_NULLTEST_VAR
 xchain00941_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00941_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00941_n0_af
 cmp eax, 0
 jne xchain00941_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00941_n9_α
# IR_VAR
 xchain00941_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00941_n10_α
# IR_UNOP
 xchain00941_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00941_n1_af
 cmp eax, 0
 jne xchain00941_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00941_n11_α
# IR_LIT_INTEGER
 xchain00941_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00945_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00941_n12_α
.Lx00945_0:
 .quad 1
# IR_TO
 xchain00941_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00946_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00941_n13_α
 xchain00941_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00946_0
# IR_LIT_STRING
 xchain00941_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00947_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00941_n14_α
.Lx00947_0:
 .quad .Lx00947_0_s
.Lx00947_0_s:
 .string "reads(zero,8)"
# IR_ASSIGN_VAR
 xchain00941_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00941_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00941_n15_α
# IR_BOUND
 xchain00941_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00941_n16_α
# IR_RETURN
 xchain00941_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_readz_γ
# IR_LIT_STRING
 xchain00941_n15_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00948_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00941_n17_α
.Lx00948_0:
 .quad .Lx00948_0_s
.Lx00948_0_s:
 .string "/dev/zero"
# IR_VAR
 xchain00941_n16_α:
 mov rax, qword ptr [1879053232]
 mov rdx, qword ptr [1879053240]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00941_n18_α
# IR_LIT_STRING
 xchain00941_n17_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00949_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00941_n20_α
.Lx00949_0:
 .quad .Lx00949_0_s
.Lx00949_0_s:
 .string "ru"
# IR_LIT_INTEGER
 xchain00941_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00950_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00941_n21_α
.Lx00950_0:
 .quad 8
# IR_UNMARK
 xchain00941_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00941_n10_β
 xchain00941_n20_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn3030: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3030]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00941_n1_α
 jmp xchain00941_n3_α
 xchain00941_n20_β:
 jmp xchain00941_n1_α
 xchain00941_n21_α:
# BOX IR_CALL reads(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn3032: .string "reads"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3032]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00941_n19_α
 jmp xchain00941_n19_α
 xchain00941_n21_β:
 jmp xchain00941_n19_α
proc_readz_res:
add rsp, 8
pop rbp
proc_readz_β:
jmp proc_readz_ω
proc_readz_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 744]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
proc_readz_ω:
mov rax, [rbp + 752]
lea rsp, [rbp + 768]
mov rbp, [rbp + 760]
jmp rax
  .globl proc_writecon_α
proc_writecon_α:
#=======================================================================================================================
    .global proc_writecon_α
    .global proc_writecon_β
    .global proc_writecon_γ
    .global proc_writecon_ω
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
proc_writecon_α_body:
# IR_DISJUNCTION_NARY
 xchain00951_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00951_n2_α
xchain00951_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00952_0
 jmp xchain00951_n1_α
.Lx00952_0:
 jmp xchain00951_n1_α
 xchain00951_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00951_n1_α
xchain00951_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00951_n1_α
# IR_LIT_INTEGER
 xchain00951_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00953_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00951_n3_α
.Lx00953_0:
 .quad 1
# IR_VAR
 xchain00951_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00951_n4_α
 xchain00951_n2_β:
 jmp xchain00951_n0_af
# IR_VAR
 xchain00951_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00951_n5_α
# IR_UNOP
 xchain00951_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00951_n0_af
 cmp eax, 0
 jne xchain00951_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00951_n6_α
# IR_TO
 xchain00951_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00954_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00951_n7_α
 xchain00951_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00954_0
# IR_LIT_STRING
 xchain00951_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00955_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00951_n8_α
.Lx00955_0:
 .quad .Lx00955_0_s
.Lx00955_0_s:
 .string "write(\"a...z\")"
# IR_BOUND
 xchain00951_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00951_n9_α
# IR_RETURN
 xchain00951_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writecon_γ
# IR_VAR
 xchain00951_n9_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00951_n10_α
# IR_LIT_STRING
 xchain00951_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00956_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00951_n12_α
.Lx00956_0:
 .quad .Lx00956_0_s
.Lx00956_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_UNMARK
 xchain00951_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00951_n5_β
 xchain00951_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn3053: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3053]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00951_n11_α
 jmp xchain00951_n11_α
 xchain00951_n12_β:
 jmp xchain00951_n11_α
proc_writecon_res:
add rsp, 8
pop rbp
proc_writecon_β:
jmp proc_writecon_ω
proc_writecon_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 456]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
proc_writecon_ω:
mov rax, [rbp + 464]
lea rsp, [rbp + 480]
mov rbp, [rbp + 472]
jmp rax
  .globl proc_writestr_α
proc_writestr_α:
#=======================================================================================================================
    .global proc_writestr_α
    .global proc_writestr_β
    .global proc_writestr_γ
    .global proc_writestr_ω
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
proc_writestr_α_body:
# IR_DISJUNCTION_NARY
 xchain00957_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00957_n2_α
xchain00957_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00958_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00957_n1_α
.Lx00958_0:
 jmp xchain00957_n1_α
 xchain00957_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00957_n1_α
xchain00957_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00957_n1_α
# IR_DISJUNCTION_NARY
 xchain00957_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00957_n5_α
xchain00957_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00959_0
 jmp xchain00957_n4_α
.Lx00959_0:
 jmp xchain00957_n4_α
 xchain00957_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00957_n4_α
xchain00957_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00957_n4_α
# IR_VAR_REF
 xchain00957_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053280
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00957_n6_α
 xchain00957_n2_β:
 jmp xchain00957_n0_af
# IR_ASSIGN gva
 xchain00957_n3_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00957_n0_as
 xchain00957_n3_β:
 jmp xchain00957_n1_α
# IR_LIT_INTEGER
 xchain00957_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00960_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00957_n7_α
.Lx00960_0:
 .quad 1
# IR_VAR
 xchain00957_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00957_n8_α
 xchain00957_n5_β:
 jmp xchain00957_n1_af
# IR_NULLTEST_VAR
 xchain00957_n6_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00957_n0_af
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00957_n0_af
 cmp eax, 0
 jne xchain00957_n0_af
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00957_n9_α
# IR_VAR
 xchain00957_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00957_n10_α
# IR_UNOP
 xchain00957_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00957_n1_af
 cmp eax, 0
 jne xchain00957_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00957_n11_α
# IR_LIT_INTEGER
 xchain00957_n9_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00961_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00957_n12_α
.Lx00961_0:
 .quad 1
# IR_TO
 xchain00957_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00962_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00957_n13_α
 xchain00957_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00962_0
# IR_LIT_STRING
 xchain00957_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00963_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00957_n14_α
.Lx00963_0:
 .quad .Lx00963_0_s
.Lx00963_0_s:
 .string "write(s)"
# IR_ASSIGN_VAR
 xchain00957_n12_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00957_n0_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00957_n15_α
# IR_BOUND
 xchain00957_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00957_n16_α
# IR_RETURN
 xchain00957_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writestr_γ
# IR_LIT_STRING
 xchain00957_n15_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00964_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00957_n3_α
.Lx00964_0:
 .quad .Lx00964_0_s
.Lx00964_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR
 xchain00957_n16_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00957_n17_α
# IR_VAR
 xchain00957_n17_α:
 mov rax, qword ptr [1879053264]
 mov rdx, qword ptr [1879053272]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00957_n19_α
# IR_UNMARK
 xchain00957_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00957_n10_β
 xchain00957_n19_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn3083: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3083]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00957_n18_α
 jmp xchain00957_n18_α
 xchain00957_n19_β:
 jmp xchain00957_n18_α
proc_writestr_res:
add rsp, 8
pop rbp
proc_writestr_β:
jmp proc_writestr_ω
proc_writestr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_writestr_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_cxcreate_α
proc_cxcreate_α:
#=======================================================================================================================
    .global proc_cxcreate_α
    .global proc_cxcreate_β
    .global proc_cxcreate_γ
    .global proc_cxcreate_ω
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
proc_cxcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00965_n0_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00965_n2_α
xchain00965_n0_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00966_0
 jmp xchain00965_n1_α
.Lx00966_0:
 jmp xchain00965_n1_α
 xchain00965_n0_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00965_n1_α
xchain00965_n0_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00965_n1_α
# IR_LIT_INTEGER
 xchain00965_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00967_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00965_n3_α
.Lx00967_0:
 .quad 1
# IR_VAR
 xchain00965_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00965_n4_α
 xchain00965_n2_β:
 jmp xchain00965_n0_af
# IR_VAR
 xchain00965_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00965_n5_α
# IR_UNOP
 xchain00965_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00965_n0_af
 cmp eax, 0
 jne xchain00965_n0_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00965_n6_α
# IR_TO
 xchain00965_n5_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00968_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00965_n7_α
 xchain00965_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00968_0
# IR_LIT_STRING
 xchain00965_n6_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00969_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00965_n8_α
.Lx00969_0:
 .quad .Lx00969_0_s
.Lx00969_0_s:
 .string "create |\"a\""
# IR_BOUND
 xchain00965_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00965_n9_α
# IR_RETURN
 xchain00965_n8_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxcreate_γ
# IR_CREATE
 xchain00965_n9_α:
 mov qword ptr [rbp + 192], r12
 mov qword ptr [rbp + 200], r13
 mov qword ptr [rbp + 208], r14
 mov qword ptr [rbp + 216], r15
 mov qword ptr [rbp + 224], rbx
 mov qword ptr [rbp + 232], rbp
 lea rdi, [rip + xchain00965_n11_α]
 lea rsi, [rbp + 192]
 mov edx, 496
 call scrip_coexpr_create@PLT
 mov qword ptr [rbp + 176], rax
 jmp xchain00965_n10_α
# IR_UNMARK
 xchain00965_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00965_n5_β
 xchain00965_n11_α:
# IR_REPALT clear
 mov qword ptr [rbp + 272], 0
jmp xchain00965_n13_α
xchain00965_n11_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
 mov qword ptr [rbp + 272], 1
jmp xchain00965_n12_α
xchain00965_n11_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 272]
 cmp rax, 1
je xchain00965_n11_α
jmp xchain00965_n14_α
xchain00965_n11_β:
jmp xchain00965_n11_rt
# IR_CORET yield
 xchain00965_n12_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00965_n11_β
# IR_LIT_STRING
 xchain00965_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00970_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00965_n11_ry
 xchain00965_n13_β:
 jmp xchain00965_n11_rt
.Lx00970_0:
 .quad .Lx00970_0_s
.Lx00970_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00965_n14_α:
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
mov rax, [rbp + 472]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
proc_cxcreate_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
  .globl proc_cxget_α
proc_cxget_α:
#=======================================================================================================================
    .global proc_cxget_α
    .global proc_cxget_β
    .global proc_cxget_γ
    .global proc_cxget_ω
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
proc_cxget_α_body:
# IR_DISJUNCTION_NARY
 xchain00971_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00971_n2_α
xchain00971_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00972_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00971_n1_α
.Lx00972_0:
 jmp xchain00971_n1_α
 xchain00971_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00971_n1_α
xchain00971_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00971_n1_α
# IR_DISJUNCTION_NARY
 xchain00971_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00971_n5_α
xchain00971_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00973_0
 jmp xchain00971_n4_α
.Lx00973_0:
 jmp xchain00971_n4_α
 xchain00971_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00971_n4_α
xchain00971_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00971_n4_α
# IR_VAR_REF
 xchain00971_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053312
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00971_n6_α
 xchain00971_n2_β:
 jmp xchain00971_n0_af
# IR_ASSIGN gva
 xchain00971_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00971_n0_as
 xchain00971_n3_β:
 jmp xchain00971_n1_α
# IR_LIT_INTEGER
 xchain00971_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00974_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00971_n7_α
.Lx00974_0:
 .quad 1
# IR_VAR
 xchain00971_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00971_n8_α
 xchain00971_n5_β:
 jmp xchain00971_n1_af
# IR_NULLTEST_VAR
 xchain00971_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00971_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00971_n0_af
 cmp eax, 0
 jne xchain00971_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00971_n9_α
# IR_VAR
 xchain00971_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00971_n10_α
# IR_UNOP
 xchain00971_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00971_n1_af
 cmp eax, 0
 jne xchain00971_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00971_n11_α
# IR_LIT_INTEGER
 xchain00971_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00975_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00971_n12_α
.Lx00975_0:
 .quad 1
# IR_TO
 xchain00971_n10_α:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 call to_int@PLT
 mov qword ptr [rbp + 64], 6
 mov qword ptr [rbp + 72], rax
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 call to_int@PLT
 mov qword ptr [rbp + 96], 6
 mov qword ptr [rbp + 104], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 48], rax
.Lx00976_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00971_n13_α
 xchain00971_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00976_0
# IR_LIT_STRING
 xchain00971_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00977_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00971_n14_α
.Lx00977_0:
 .quad .Lx00977_0_s
.Lx00977_0_s:
 .string "@C"
# IR_ASSIGN_VAR
 xchain00971_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00971_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00971_n15_α
# IR_BOUND
 xchain00971_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00971_n16_α
# IR_RETURN
 xchain00971_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxget_γ
# IR_CREATE
 xchain00971_n15_α:
 mov qword ptr [rbp + 432], r12
 mov qword ptr [rbp + 440], r13
 mov qword ptr [rbp + 448], r14
 mov qword ptr [rbp + 456], r15
 mov qword ptr [rbp + 464], rbx
 mov qword ptr [rbp + 472], rbp
 lea rdi, [rip + xchain00971_n17_α]
 lea rsi, [rbp + 432]
 mov edx, 720
 call scrip_coexpr_create@PLT
 mov qword ptr [rbp + 416], rax
 jmp xchain00971_n3_α
# IR_VAR
 xchain00971_n16_α:
 mov rax, qword ptr [1879053296]
 mov rdx, qword ptr [1879053304]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00971_n18_α
 xchain00971_n17_α:
# IR_REPALT clear
 mov qword ptr [rbp + 512], 0
jmp xchain00971_n21_α
xchain00971_n17_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 504], rax
 mov qword ptr [rbp + 512], 1
jmp xchain00971_n20_α
xchain00971_n17_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 512]
 cmp rax, 1
je xchain00971_n17_α
jmp xchain00971_n22_α
xchain00971_n17_β:
jmp xchain00971_n17_rt
# IR_ACTIVATE
 xchain00971_n18_α:
 mov rdi, qword ptr [rbp + 208]
 xor esi, esi
 xor edx, edx
 lea rcx, [rbp + 176]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain00971_n19_α
 jmp xchain00971_n19_α
# IR_UNMARK
 xchain00971_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00971_n10_β
# IR_CORET yield
 xchain00971_n20_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain00971_n17_β
# IR_LIT_STRING
 xchain00971_n21_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx00978_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00971_n17_ry
 xchain00971_n21_β:
 jmp xchain00971_n17_rt
.Lx00978_0:
 .quad .Lx00978_0_s
.Lx00978_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain00971_n22_α:
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
mov rax, [rbp + 696]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
jmp rax
proc_cxget_ω:
mov rax, [rbp + 704]
lea rsp, [rbp + 720]
mov rbp, [rbp + 712]
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
  mov esi, 320
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
  mov esi, 320
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
  mov esi, 320
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
  mov esi, 400
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
  mov esi, 320
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
  mov esi, 416
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
  mov esi, 416
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
  mov esi, 416
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 448
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
  mov esi, 352
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
  mov esi, 640
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
  mov esi, 448
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 1152
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
  mov esi, 416
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
  mov esi, 1024
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
  mov esi, 384
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 656
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
  mov esi, 368
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
  mov esi, 512
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
  mov esi, 416
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
  mov esi, 416
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
  mov esi, 416
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
  mov esi, 384
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
  mov esi, 384
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 384
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
  mov esi, 320
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
  mov esi, 384
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
  mov esi, 384
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
  mov esi, 432
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
  mov esi, 448
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
  mov esi, 528
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
  mov esi, 416
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
  mov esi, 416
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
  mov esi, 448
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
  mov esi, 400
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
  mov esi, 448
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
  mov esi, 448
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
  mov esi, 448
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 400
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 688
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
  mov esi, 928
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
  mov esi, 1120
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
  mov esi, 464
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
  mov esi, 496
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
  mov esi, 576
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
  mov esi, 736
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 528
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 496
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
  mov esi, 384
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
  mov esi, 384
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
  mov esi, 448
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
  mov esi, 608
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
  mov esi, 816
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
  mov esi, 816
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
  mov esi, 800
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
  mov esi, 800
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
  mov esi, 848
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
  mov esi, 800
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
  mov esi, 672
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
  mov esi, 848
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
  mov esi, 976
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
  mov esi, 1104
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
  mov esi, 672
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
  mov esi, 1248
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
  mov esi, 1248
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
  mov esi, 352
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
  mov esi, 688
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
  mov esi, 736
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
  mov esi, 736
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
  mov esi, 736
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
  mov esi, 672
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
  mov esi, 736
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
  mov esi, 352
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
  mov esi, 768
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
  mov esi, 736
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
  mov esi, 448
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
  mov esi, 688
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
  mov esi, 672
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
  mov esi, 576
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
  mov esi, 368
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
  mov esi, 384
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
  mov esi, 368
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
  mov esi, 736
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
  mov esi, 448
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
  mov esi, 640
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
  mov esi, 464
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
  mov esi, 688
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
  mov qword ptr [rsp + 11528], rsp
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
 xchain00979_n0_α:
 mov qword ptr [rbp + 11312], 6
 mov rax, qword ptr [rip + .Lx00980_0]
 mov qword ptr [rbp + 11320], rax
 jmp xchain00979_n1_α
.Lx00980_0:
 .quad 1000
# IR_DISJUNCTION_NARY
 xchain00979_n1_α:
 mov qword ptr [rbp + 11344], 0
 mov qword ptr [rbp + 11352], 0
 mov dword ptr [rbp + 11360], 0
 jmp xchain00979_n3_α
xchain00979_n1_as:
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 0
 jne .Lx00981_0
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11344], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11352], rax
 jmp xchain00979_n2_α
.Lx00981_0:
 cmp eax, 1
 jne .Lx00981_1
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 11344], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 11352], rax
 jmp xchain00979_n2_α
.Lx00981_1:
 jmp xchain00979_n2_α
 xchain00979_n1_β:
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 0
 je xchain00979_n1_af
 jmp xchain00979_n1_af
xchain00979_n1_af:
 add dword ptr [rbp + 11360], 1
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 1
 je xchain00979_n4_α
 jmp xchain00979_n7_α
# IR_COERCE_NUMERIC
 xchain00979_n2_α:
 mov eax, dword ptr [rbp + 11344]
 cmp eax, 7
 je .Lx00982_1
 cmp eax, 6
 jne .Lx00982_0
 mov eax, dword ptr [rbp + 11312]
 cmp eax, 6
 jne .Lx00982_0
.Lx00982_1:
 mov rax, qword ptr [rbp + 11344]
 mov qword ptr [rbp + 11280], rax
 mov rax, qword ptr [rbp + 11352]
 mov qword ptr [rbp + 11288], rax
 jmp xchain00979_n6_α
.Lx00982_0:
 lea rdi, [rbp + 11344]
 lea rsi, [rbp + 11312]
 lea rdx, [rbp + 11280]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00979_n6_α
# IR_VAR_REF
 xchain00979_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 jmp xchain00979_n8_α
 xchain00979_n3_β:
 jmp xchain00979_n1_af
# IR_LIT_REAL
 xchain00979_n4_α:
 mov qword ptr [rbp + 11488], 7
 mov rax, qword ptr [rip + .Lx00983_0]
 mov qword ptr [rbp + 11496], rax
 jmp xchain00979_n1_as
 xchain00979_n4_β:
 jmp xchain00979_n1_af
.Lx00983_0:
 .quad 4607182418800017408
# IR_DEREF variable -> value
 xchain00979_n5_α:
 mov rdi, qword ptr [rbp + 11440]
 mov rsi, qword ptr [rbp + 11448]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00979_n1_af
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain00979_n1_as
 xchain00979_n5_β:
 jmp xchain00979_n1_af
 xchain00979_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 11280]
 cmp eax, 100
 je .Lx00984_0
 mov eax, dword ptr [rbp + 11280]
 cmp eax, 6
 jne .Lx00984_2
.Lx00984_1:
 mov rax, 1000
 mov rcx, qword ptr [rbp + 11288]
 imul rax, rcx
 mov qword ptr [rbp + 11248], 6
 mov qword ptr [rbp + 11256], rax
 jmp xchain00979_n9_α
.Lx00984_0:
 mov rdi, qword ptr [rbp + 11312]
 mov rsi, qword ptr [rbp + 11320]
 mov rdx, qword ptr [rbp + 11280]
 mov rcx, qword ptr [rbp + 11288]
 mov r8d, 2
 lea r9, [rbp + 11248]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00979_n9_α
.Lx00984_2:
 mov rdi, qword ptr [rbp + 11312]
 mov rsi, qword ptr [rbp + 11320]
 mov rdx, qword ptr [rbp + 11280]
 mov rcx, qword ptr [rbp + 11288]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00979_n7_α
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 jmp xchain00979_n9_α
 xchain00979_n6_β:
 jmp xchain00979_n7_α
# IR_LIT_STRING
 xchain00979_n7_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx00985_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain00979_n10_α
.Lx00985_0:
 .quad .Lx00985_0_s
.Lx00985_0_s:
 .string "/dev/null"
# IR_LIT_INTEGER
 xchain00979_n8_α:
 mov qword ptr [rbp + 11408], 6
 mov rax, qword ptr [rip + .Lx00986_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain00979_n11_α
.Lx00986_0:
 .quad 1
 xchain00979_n9_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11248] -> [zr+11216]
 mov rax, qword ptr [rbp + 11248]
 mov qword ptr [rbp + 11216], rax
 mov rax, qword ptr [rbp + 11256]
 mov qword ptr [rbp + 11224], rax
  .section .rodata
  .Lrkfn3165: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3165]
 lea rsi, [rbp + 11216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 cmp eax, 99
 je xchain00979_n1_β
 jmp xchain00979_n12_α
 xchain00979_n9_β:
 jmp xchain00979_n1_β
# IR_LIT_STRING
 xchain00979_n10_α:
 mov qword ptr [rbp + 11152], 1
 mov rax, qword ptr [rip + .Lx00987_0]
 mov qword ptr [rbp + 11160], rax
 jmp xchain00979_n13_α
.Lx00987_0:
 .quad .Lx00987_0_s
.Lx00987_0_s:
 .string "w"
# IR_SUBSCRIPT x[i] variable
 xchain00979_n11_α:
 mov rdi, qword ptr [rbp + 11376]
 mov rsi, qword ptr [rbp + 11384]
 mov rdx, qword ptr [rbp + 11408]
 mov rcx, qword ptr [rbp + 11416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00979_n1_af
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp xchain00979_n5_α
# IR_ASSIGN gva
 xchain00979_n12_α:
 mov rax, qword ptr [rbp + 11200]
 mov rdx, qword ptr [rbp + 11208]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 11184], rax
 mov qword ptr [rbp + 11192], rdx
 jmp xchain00979_n7_α
 xchain00979_n13_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11120] -> [zr+11072]
 mov rax, qword ptr [rbp + 11120]
 mov qword ptr [rbp + 11072], rax
 mov rax, qword ptr [rbp + 11128]
 mov qword ptr [rbp + 11080], rax
# marshal arg1 = producer-box slot [zr+11152] -> [zr+11088]
 mov rax, qword ptr [rbp + 11152]
 mov qword ptr [rbp + 11088], rax
 mov rax, qword ptr [rbp + 11160]
 mov qword ptr [rbp + 11096], rax
  .section .rodata
  .Lrkfn3170: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3170]
 lea rsi, [rbp + 11072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11056], rax
 mov qword ptr [rbp + 11064], rdx
 cmp eax, 99
 je xchain00979_n15_α
 jmp xchain00979_n14_α
 xchain00979_n13_β:
 jmp xchain00979_n15_α
# IR_ASSIGN gva
 xchain00979_n14_α:
 mov rax, qword ptr [rbp + 11056]
 mov rdx, qword ptr [rbp + 11064]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 11040], rax
 mov qword ptr [rbp + 11048], rdx
 jmp xchain00979_n15_α
# IR_VAR
 xchain00979_n15_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 jmp xchain00979_n16_α
 xchain00979_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 11008]
 mov rdx, qword ptr [rbp + 11016]
 mov qword ptr [rbp + 11552], rax
 mov qword ptr [rbp + 11560], rdx
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain00979_n17_α
# IR_VAR
 xchain00979_n17_α:
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 10888], rax
 jmp xchain00979_n18_α
# IR_LIT_REAL
 xchain00979_n18_α:
 mov qword ptr [rbp + 10960], 7
 mov rax, qword ptr [rip + .Lx00988_0]
 mov qword ptr [rbp + 10968], rax
 jmp xchain00979_n20_α
.Lx00988_0:
 .quad 4652007308841189376
 xchain00979_n19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn3178: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3178]
 lea rsi, [rbp + 10816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 cmp eax, 99
 je xchain00979_n22_α
 jmp xchain00979_n21_α
 xchain00979_n19_β:
 jmp xchain00979_n22_α
 xchain00979_n20_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10960] -> [zr+10928]
 mov rax, qword ptr [rbp + 10960]
 mov qword ptr [rbp + 10928], rax
 mov rax, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 10936], rax
  .section .rodata
  .Lrkfn3180: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3180]
 lea rsi, [rbp + 10928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 cmp eax, 99
 je xchain00979_n19_α
 jmp xchain00979_n23_α
 xchain00979_n20_β:
 jmp xchain00979_n19_α
 xchain00979_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain00979_n22_α
# IR_LIT_INTEGER
 xchain00979_n22_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx00989_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain00979_n24_α
.Lx00989_0:
 .quad 1
 xchain00979_n23_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 11552]
 cmp eax, 100
 je .Lx00990_0
 mov eax, dword ptr [rbp + 10912]
 cmp eax, 100
 je .Lx00990_0
 mov eax, dword ptr [rbp + 11552]
 cmp eax, 6
 jne .Lx00990_2
 mov eax, dword ptr [rbp + 10912]
 cmp eax, 6
 jne .Lx00990_2
.Lx00990_1:
 mov rax, qword ptr [rbp + 11560]
 mov rcx, qword ptr [rbp + 10920]
 cmp rax, rcx
 jge xchain00979_n19_α
 mov rcx, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rcx
 mov rcx, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rcx
 jmp xchain00979_n25_α
.Lx00990_0:
 mov rdi, qword ptr [rbp + 11552]
 mov rsi, qword ptr [rbp + 11560]
 mov rdx, qword ptr [rbp + 10912]
 mov rcx, qword ptr [rbp + 10920]
 mov r8d, 5
 lea r9, [rbp + 10848]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00990_1
 cmp eax, 1
 je xchain00979_n19_α
 jmp xchain00979_n25_α
.Lx00990_2:
 mov rdi, qword ptr [rbp + 11552]
 mov rsi, qword ptr [rbp + 11560]
 mov rdx, qword ptr [rbp + 10912]
 mov rcx, qword ptr [rbp + 10920]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00979_n19_α
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rax
 jmp xchain00979_n25_α
# IR_LIT_INTEGER
 xchain00979_n24_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx00991_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain00979_n26_α
.Lx00991_0:
 .quad 5
 xchain00979_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10848]
 mov rdx, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 11552], rax
 mov qword ptr [rbp + 11560], rdx
 mov qword ptr [rbp + 10832], rax
 mov qword ptr [rbp + 10840], rdx
 jmp xchain00979_n19_α
# IR_TO
 xchain00979_n26_α:
 mov rdi, qword ptr [rbp + 10304]
 mov rsi, qword ptr [rbp + 10312]
 call to_int@PLT
 mov qword ptr [rbp + 10304], 6
 mov qword ptr [rbp + 10312], rax
 mov rdi, qword ptr [rbp + 10336]
 mov rsi, qword ptr [rbp + 10344]
 call to_int@PLT
 mov qword ptr [rbp + 10336], 6
 mov qword ptr [rbp + 10344], rax
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10288], rax
.Lx00992_0:
 mov rax, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10344]
 cmp rax, rcx
 jg xchain00979_n38_α
 mov qword ptr [rbp + 10272], 6
 mov qword ptr [rbp + 10280], rax
 jmp xchain00979_n27_α
 xchain00979_n26_β:
 inc qword ptr [rbp + 10288]
 jmp .Lx00992_0
# IR_BOUND
 xchain00979_n27_α:
 mov qword ptr [rbp + 10368], rsp
 jmp xchain00979_n28_α
# KEYWORD_read
 xchain00979_n28_α:
 mov rdi, qword ptr [rip + .Lx00993_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00979_n31_α
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 jmp xchain00979_n29_α
 xchain00979_n28_β:
 jmp xchain00979_n31_α
.Lx00993_0:
 .quad .Lx00993_0_s
.Lx00993_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain00979_n29_α:
 mov qword ptr [rbp + 10752], 1
 mov rax, qword ptr [rip + .Lx00994_0]
 mov qword ptr [rbp + 10760], rax
 jmp xchain00979_n30_α
.Lx00994_0:
 .quad .Lx00994_0_s
.Lx00994_0_s:
 .string "."
 xchain00979_n30_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10720] -> [zr+10672]
 mov rax, qword ptr [rbp + 10720]
 mov qword ptr [rbp + 10672], rax
 mov rax, qword ptr [rbp + 10728]
 mov qword ptr [rbp + 10680], rax
# marshal arg1 = producer-box slot [zr+10752] -> [zr+10688]
 mov rax, qword ptr [rbp + 10752]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 10696], rax
  .section .rodata
  .Lrkfn3193: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3193]
 lea rsi, [rbp + 10672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10656], rax
 mov qword ptr [rbp + 10664], rdx
 cmp eax, 99
 je xchain00979_n31_α
 jmp xchain00979_n31_α
 xchain00979_n30_β:
 jmp xchain00979_n31_α
# IR_VAR
 xchain00979_n31_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 10504], rax
 jmp xchain00979_n32_α
# IR_PROC_VALUE
 xchain00979_n32_α:
 mov rdi, qword ptr [rip + .Lx00995_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 10592], rax
 mov qword ptr [rbp + 10600], rdx
 jmp xchain00979_n34_α
.Lx00995_0:
 .quad .Lx00995_0_s
.Lx00995_0_s:
 .string "nothing"
# IR_UNMARK
 xchain00979_n33_α:
 mov rsp, qword ptr [rbp + 10368]
 jmp xchain00979_n26_β
# IR_VAR
 xchain00979_n34_α:
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 10624], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 10632], rax
 jmp xchain00979_n35_α
 xchain00979_n35_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 10592]
 mov rdx, qword ptr [rbp + 10600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10624]
 mov rdx, qword ptr [rbp + 10632]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00996_1
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
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 cmp eax, 99
 je xchain00979_n33_α
 jmp xchain00979_n36_α
 xchain00979_n35_β:
 jmp xchain00979_n33_α
.Lx00996_0:
 .quad .Lx00996_0_s
.Lx00996_0_s:
 .string "measure"
 xchain00979_n36_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10496] -> [zr+10448]
 mov rax, qword ptr [rbp + 10496]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 10504]
 mov qword ptr [rbp + 10456], rax
# marshal arg1 = producer-box slot [zr+10528] -> [zr+10464]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10464], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10472], rax
  .section .rodata
  .Lrkfn3205: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3205]
 lea rsi, [rbp + 10448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 cmp eax, 99
 je xchain00979_n33_α
 jmp xchain00979_n37_α
 xchain00979_n36_β:
 jmp xchain00979_n33_α
 xchain00979_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [rbp + 10424], rax
 jmp xchain00979_n33_α
xchain00979_n37_β:
 jmp xchain00979_n33_α
# IR_VAR
 xchain00979_n38_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 9848], rax
 jmp xchain00979_n39_α
 xchain00979_n39_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9840] -> [zr+9808]
 mov rax, qword ptr [rbp + 9840]
 mov qword ptr [rbp + 9808], rax
 mov rax, qword ptr [rbp + 9848]
 mov qword ptr [rbp + 9816], rax
  .section .rodata
  .Lrkfn3210: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3210]
 lea rsi, [rbp + 9808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 cmp eax, 99
 je xchain00979_n40_α
 jmp xchain00979_n41_α
 xchain00979_n39_β:
 jmp xchain00979_n40_α
# IR_VAR
 xchain00979_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain00979_n42_α
# IR_LIT_INTEGER
 xchain00979_n41_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx00997_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain00979_n44_α
.Lx00997_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00979_n42_α:
 mov qword ptr [rbp + 9712], 6
 mov rax, qword ptr [rip + .Lx00998_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain00979_n45_α
.Lx00998_0:
 .quad 10
# IR_PROC_VALUE
 xchain00979_n43_α:
 mov rdi, qword ptr [rip + .Lx00999_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain00979_n46_α
.Lx00999_0:
 .quad .Lx00999_0_s
.Lx00999_0_s:
 .string "nothing"
# IR_VAR
 xchain00979_n44_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 10136], rax
 jmp xchain00979_n47_α
 xchain00979_n45_α:
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
  .Lrkfn3219: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3219]
 lea rsi, [rbp + 9632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain00979_n43_α
 jmp xchain00979_n48_α
 xchain00979_n45_β:
 jmp xchain00979_n43_α
 xchain00979_n46_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01000_1
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
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 cmp eax, 99
 je xchain00979_n49_α
 jmp xchain00979_n49_α
 xchain00979_n46_β:
 jmp xchain00979_n49_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "report"
# IR_UNOP
 xchain00979_n47_α:
 mov rdi, qword ptr [rbp + 11536]
 mov rsi, qword ptr [rbp + 11544]
 call rt_size_d@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain00979_n50_α
# IR_LIT_STRING
 xchain00979_n48_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx01001_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain00979_n51_α
.Lx01001_0:
 .quad .Lx01001_0_s
.Lx01001_0_s:
 .string "  overhead"
# IR_PROC_VALUE
 xchain00979_n49_α:
 mov rdi, qword ptr [rip + .Lx01002_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain00979_n52_α
.Lx01002_0:
 .quad .Lx01002_0_s
.Lx01002_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain00979_n50_α:
 mov qword ptr [rbp + 10160], 6
 mov rax, qword ptr [rip + .Lx01003_0]
 mov qword ptr [rbp + 10168], rax
 jmp xchain00979_n53_α
.Lx01003_0:
 .quad 1
 xchain00979_n51_α:
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
  .Lrkfn3228: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3228]
 lea rsi, [rbp + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain00979_n43_α
 jmp xchain00979_n43_α
 xchain00979_n51_β:
 jmp xchain00979_n43_α
 xchain00979_n52_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9440]
 mov rdx, qword ptr [rbp + 9448]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01004_1
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
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain00979_n54_α
 jmp xchain00979_n54_α
 xchain00979_n52_β:
 jmp xchain00979_n54_α
.Lx01004_0:
 .quad .Lx01004_0_s
.Lx01004_0_s:
 .string "report"
# IR_COERCE_NUMERIC
 xchain00979_n53_α:
 mov eax, dword ptr [rbp + 10096]
 cmp eax, 7
 je .Lx01005_1
 cmp eax, 6
 jne .Lx01005_0
 mov eax, dword ptr [rbp + 10160]
 cmp eax, 6
 jne .Lx01005_0
.Lx01005_1:
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
 jmp xchain00979_n55_α
.Lx01005_0:
 lea rdi, [rbp + 10096]
 lea rsi, [rbp + 10160]
 lea rdx, [rbp + 10064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00979_n55_α
# IR_PROC_VALUE
 xchain00979_n54_α:
 mov rdi, qword ptr [rip + .Lx01006_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain00979_n56_α
.Lx01006_0:
 .quad .Lx01006_0_s
.Lx01006_0_s:
 .string "nothing"
 xchain00979_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 100
 je .Lx01007_0
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 6
 jne .Lx01007_2
.Lx01007_1:
 mov rax, qword ptr [rbp + 10072]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 10032], 6
 mov qword ptr [rbp + 10040], rax
 jmp xchain00979_n57_α
.Lx01007_0:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 lea r9, [rbp + 10032]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00979_n57_α
.Lx01007_2:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00979_n40_α
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 jmp xchain00979_n57_α
 xchain00979_n55_β:
 jmp xchain00979_n40_α
 xchain00979_n56_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9360]
 mov rdx, qword ptr [rbp + 9368]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01008_1
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
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain00979_n58_α
 jmp xchain00979_n58_α
 xchain00979_n56_β:
 jmp xchain00979_n58_α
.Lx01008_0:
 .quad .Lx01008_0_s
.Lx01008_0_s:
 .string "report"
# IR_LIT_INTEGER
 xchain00979_n57_α:
 mov qword ptr [rbp + 10192], 6
 mov rax, qword ptr [rip + .Lx01009_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain00979_n59_α
.Lx01009_0:
 .quad 2
# IR_PROC_VALUE
 xchain00979_n58_α:
 mov rdi, qword ptr [rip + .Lx01010_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain00979_n60_α
.Lx01010_0:
 .quad .Lx01010_0_s
.Lx01010_0_s:
 .string "globasgn"
# IR_COERCE_NUMERIC
 xchain00979_n59_α:
 mov eax, dword ptr [rbp + 10032]
 cmp eax, 7
 je .Lx01011_1
 cmp eax, 6
 jne .Lx01011_0
 mov eax, dword ptr [rbp + 10192]
 cmp eax, 6
 jne .Lx01011_0
.Lx01011_1:
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10008], rax
 jmp xchain00979_n61_α
.Lx01011_0:
 lea rdi, [rbp + 10032]
 lea rsi, [rbp + 10192]
 lea rdx, [rbp + 10000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00979_n61_α
 xchain00979_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9280]
 mov rdx, qword ptr [rbp + 9288]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01012_1
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
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain00979_n62_α
 jmp xchain00979_n62_α
 xchain00979_n60_β:
 jmp xchain00979_n62_α
.Lx01012_0:
 .quad .Lx01012_0_s
.Lx01012_0_s:
 .string "report"
 xchain00979_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 100
 je .Lx01013_0
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 6
 jne .Lx01013_2
.Lx01013_1:
 mov rax, qword ptr [rbp + 10008]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [rbp + 9968], 6
 mov qword ptr [rbp + 9976], rax
 jmp xchain00979_n63_α
.Lx01013_0:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 lea r9, [rbp + 9968]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00979_n63_α
.Lx01013_2:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00979_n40_α
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
 jmp xchain00979_n63_α
 xchain00979_n61_β:
 jmp xchain00979_n40_α
# IR_PROC_VALUE
 xchain00979_n62_α:
 mov rdi, qword ptr [rip + .Lx01014_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain00979_n64_α
.Lx01014_0:
 .quad .Lx01014_0_s
.Lx01014_0_s:
 .string "statasgn"
# IR_COERCE_NUMERIC
 xchain00979_n63_α:
 mov eax, dword ptr [rbp + 9968]
 cmp eax, 7
 je .Lx01015_1
 cmp eax, 6
 jne .Lx01015_0
 mov eax, dword ptr [rbp + 9936]
 cmp eax, 6
 jne .Lx01015_0
.Lx01015_1:
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
 jmp xchain00979_n65_α
.Lx01015_0:
 lea rdi, [rbp + 9968]
 lea rsi, [rbp + 9936]
 lea rdx, [rbp + 9904]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00979_n65_α
 xchain00979_n64_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01016_1
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
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain00979_n66_α
 jmp xchain00979_n66_α
 xchain00979_n64_β:
 jmp xchain00979_n66_α
.Lx01016_0:
 .quad .Lx01016_0_s
.Lx01016_0_s:
 .string "report"
 xchain00979_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 100
 je .Lx01017_0
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 6
 jne .Lx01017_2
.Lx01017_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 9912]
 add rax, rcx
 mov qword ptr [rbp + 9872], 6
 mov qword ptr [rbp + 9880], rax
 jmp xchain00979_n67_α
.Lx01017_0:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9872]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00979_n67_α
.Lx01017_2:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00979_n40_α
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain00979_n67_α
 xchain00979_n65_β:
 jmp xchain00979_n40_α
# IR_PROC_VALUE
 xchain00979_n66_α:
 mov rdi, qword ptr [rip + .Lx01018_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 jmp xchain00979_n68_α
.Lx01018_0:
 .quad .Lx01018_0_s
.Lx01018_0_s:
 .string "loclasgn"
# IR_SUBSCRIPT x[i] variable
 xchain00979_n67_α:
 mov rdi, qword ptr [rbp + 9792]
 mov rsi, qword ptr [rbp + 9800]
 mov rdx, qword ptr [rbp + 9872]
 mov rcx, qword ptr [rbp + 9880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00979_n40_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain00979_n69_α
 xchain00979_n68_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9120]
 mov rdx, qword ptr [rbp + 9128]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01019_1
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
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain00979_n70_α
 jmp xchain00979_n70_α
 xchain00979_n68_β:
 jmp xchain00979_n70_α
.Lx01019_0:
 .quad .Lx01019_0_s
.Lx01019_0_s:
 .string "report"
# IR_DEREF variable -> value
 xchain00979_n69_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00979_n40_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain00979_n71_α
# IR_PROC_VALUE
 xchain00979_n70_α:
 mov rdi, qword ptr [rip + .Lx01020_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain00979_n72_α
.Lx01020_0:
 .quad .Lx01020_0_s
.Lx01020_0_s:
 .string "if0"
# IR_ASSIGN gva
 xchain00979_n71_α:
 mov rax, qword ptr [rbp + 10256]
 mov rdx, qword ptr [rbp + 10264]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain00979_n40_α
 xchain00979_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01021_1
 lea rcx, [rip + .Lx01021_3]
 lea rdx, [rip + .Lx01021_4]
 jmp rax
.Lx01021_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01021_2
.Lx01021_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01021_2
.Lx01021_1:
 call rt_faildescr@PLT
.Lx01021_2:
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain00979_n73_α
 jmp xchain00979_n73_α
 xchain00979_n72_β:
 jmp xchain00979_n73_α
.Lx01021_0:
 .quad .Lx01021_0_s
.Lx01021_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n73_α:
 mov rdi, qword ptr [rip + .Lx01022_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain00979_n74_α
.Lx01022_0:
 .quad .Lx01022_0_s
.Lx01022_0_s:
 .string "case3"
 xchain00979_n74_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8960]
 mov rdx, qword ptr [rbp + 8968]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01023_1
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
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain00979_n75_α
 jmp xchain00979_n75_α
 xchain00979_n74_β:
 jmp xchain00979_n75_α
.Lx01023_0:
 .quad .Lx01023_0_s
.Lx01023_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n75_α:
 mov rdi, qword ptr [rip + .Lx01024_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain00979_n76_α
.Lx01024_0:
 .quad .Lx01024_0_s
.Lx01024_0_s:
 .string "nulltest"
 xchain00979_n76_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8880]
 mov rdx, qword ptr [rbp + 8888]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01025_1
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
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 cmp eax, 99
 je xchain00979_n77_α
 jmp xchain00979_n77_α
 xchain00979_n76_β:
 jmp xchain00979_n77_α
.Lx01025_0:
 .quad .Lx01025_0_s
.Lx01025_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n77_α:
 mov rdi, qword ptr [rip + .Lx01026_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain00979_n78_α
.Lx01026_0:
 .quad .Lx01026_0_s
.Lx01026_0_s:
 .string "typef"
 xchain00979_n78_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01027_1
 lea rcx, [rip + .Lx01027_3]
 lea rdx, [rip + .Lx01027_4]
 jmp rax
.Lx01027_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01027_2
.Lx01027_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01027_2
.Lx01027_1:
 call rt_faildescr@PLT
.Lx01027_2:
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain00979_n79_α
 jmp xchain00979_n79_α
 xchain00979_n78_β:
 jmp xchain00979_n79_α
.Lx01027_0:
 .quad .Lx01027_0_s
.Lx01027_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n79_α:
 mov rdi, qword ptr [rip + .Lx01028_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8720], rax
 mov qword ptr [rbp + 8728], rdx
 jmp xchain00979_n80_α
.Lx01028_0:
 .quad .Lx01028_0_s
.Lx01028_0_s:
 .string "imagef"
 xchain00979_n80_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8720]
 mov rdx, qword ptr [rbp + 8728]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01029_1
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
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je xchain00979_n81_α
 jmp xchain00979_n81_α
 xchain00979_n80_β:
 jmp xchain00979_n81_α
.Lx01029_0:
 .quad .Lx01029_0_s
.Lx01029_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n81_α:
 mov rdi, qword ptr [rip + .Lx01030_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain00979_n82_α
.Lx01030_0:
 .quad .Lx01030_0_s
.Lx01030_0_s:
 .string "everyto"
 xchain00979_n82_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8640]
 mov rdx, qword ptr [rbp + 8648]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01031_1
 lea rcx, [rip + .Lx01031_3]
 lea rdx, [rip + .Lx01031_4]
 jmp rax
.Lx01031_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01031_2
.Lx01031_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01031_2
.Lx01031_1:
 call rt_faildescr@PLT
.Lx01031_2:
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 cmp eax, 99
 je xchain00979_n83_α
 jmp xchain00979_n83_α
 xchain00979_n82_β:
 jmp xchain00979_n83_α
.Lx01031_0:
 .quad .Lx01031_0_s
.Lx01031_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n83_α:
 mov rdi, qword ptr [rip + .Lx01032_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 jmp xchain00979_n84_α
.Lx01032_0:
 .quad .Lx01032_0_s
.Lx01032_0_s:
 .string "everyalt"
 xchain00979_n84_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8560]
 mov rdx, qword ptr [rbp + 8568]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01033_1
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
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain00979_n85_α
 jmp xchain00979_n85_α
 xchain00979_n84_β:
 jmp xchain00979_n85_α
.Lx01033_0:
 .quad .Lx01033_0_s
.Lx01033_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n85_α:
 mov rdi, qword ptr [rip + .Lx01034_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain00979_n86_α
.Lx01034_0:
 .quad .Lx01034_0_s
.Lx01034_0_s:
 .string "conj5"
 xchain00979_n86_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8480]
 mov rdx, qword ptr [rbp + 8488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01035_1
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
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 cmp eax, 99
 je xchain00979_n87_α
 jmp xchain00979_n87_α
 xchain00979_n86_β:
 jmp xchain00979_n87_α
.Lx01035_0:
 .quad .Lx01035_0_s
.Lx01035_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n87_α:
 mov rdi, qword ptr [rip + .Lx01036_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain00979_n88_α
.Lx01036_0:
 .quad .Lx01036_0_s
.Lx01036_0_s:
 .string "nullfunc"
 xchain00979_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8400]
 mov rdx, qword ptr [rbp + 8408]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01037_1
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
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain00979_n89_α
 jmp xchain00979_n89_α
 xchain00979_n88_β:
 jmp xchain00979_n89_α
.Lx01037_0:
 .quad .Lx01037_0_s
.Lx01037_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n89_α:
 mov rdi, qword ptr [rip + .Lx01038_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain00979_n90_α
.Lx01038_0:
 .quad .Lx01038_0_s
.Lx01038_0_s:
 .string "listcall"
 xchain00979_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8320]
 mov rdx, qword ptr [rbp + 8328]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01039_1
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
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je xchain00979_n91_α
 jmp xchain00979_n91_α
 xchain00979_n90_β:
 jmp xchain00979_n91_α
.Lx01039_0:
 .quad .Lx01039_0_s
.Lx01039_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n91_α:
 mov rdi, qword ptr [rip + .Lx01040_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain00979_n92_α
.Lx01040_0:
 .quad .Lx01040_0_s
.Lx01040_0_s:
 .string "marshal"
 xchain00979_n92_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8240]
 mov rdx, qword ptr [rbp + 8248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01041_1
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
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je xchain00979_n93_α
 jmp xchain00979_n93_α
 xchain00979_n92_β:
 jmp xchain00979_n93_α
.Lx01041_0:
 .quad .Lx01041_0_s
.Lx01041_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n93_α:
 mov rdi, qword ptr [rip + .Lx01042_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain00979_n94_α
.Lx01042_0:
 .quad .Lx01042_0_s
.Lx01042_0_s:
 .string "evsusp"
 xchain00979_n94_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8160]
 mov rdx, qword ptr [rbp + 8168]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01043_1
 lea rcx, [rip + .Lx01043_3]
 lea rdx, [rip + .Lx01043_4]
 jmp rax
.Lx01043_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01043_2
.Lx01043_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01043_2
.Lx01043_1:
 call rt_faildescr@PLT
.Lx01043_2:
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 cmp eax, 99
 je xchain00979_n95_α
 jmp xchain00979_n95_α
 xchain00979_n94_β:
 jmp xchain00979_n95_α
.Lx01043_0:
 .quad .Lx01043_0_s
.Lx01043_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n95_α:
 mov rdi, qword ptr [rip + .Lx01044_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain00979_n96_α
.Lx01044_0:
 .quad .Lx01044_0_s
.Lx01044_0_s:
 .string "tointeger"
 xchain00979_n96_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8080]
 mov rdx, qword ptr [rbp + 8088]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01045_1
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
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain00979_n97_α
 jmp xchain00979_n97_α
 xchain00979_n96_β:
 jmp xchain00979_n97_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n97_α:
 mov rdi, qword ptr [rip + .Lx01046_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain00979_n98_α
.Lx01046_0:
 .quad .Lx01046_0_s
.Lx01046_0_s:
 .string "intcoerce"
 xchain00979_n98_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01047_1
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
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain00979_n99_α
 jmp xchain00979_n99_α
 xchain00979_n98_β:
 jmp xchain00979_n99_α
.Lx01047_0:
 .quad .Lx01047_0_s
.Lx01047_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n99_α:
 mov rdi, qword ptr [rip + .Lx01048_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain00979_n00001_α
.Lx01048_0:
 .quad .Lx01048_0_s
.Lx01048_0_s:
 .string "uplus"
 xchain00979_n00001_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7920]
 mov rdx, qword ptr [rbp + 7928]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01049_1
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
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 cmp eax, 99
 je xchain00979_n00002_α
 jmp xchain00979_n00002_α
 xchain00979_n00001_β:
 jmp xchain00979_n00002_α
.Lx01049_0:
 .quad .Lx01049_0_s
.Lx01049_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00002_α:
 mov rdi, qword ptr [rip + .Lx01050_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain00979_n00003_α
.Lx01050_0:
 .quad .Lx01050_0_s
.Lx01050_0_s:
 .string "tostring"
 xchain00979_n00003_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7840]
 mov rdx, qword ptr [rbp + 7848]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01051_1
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
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain00979_n01052_α
 jmp xchain00979_n01052_α
 xchain00979_n00003_β:
 jmp xchain00979_n01052_α
.Lx01051_0:
 .quad .Lx01051_0_s
.Lx01051_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01052_α:
 mov rdi, qword ptr [rip + .Lx01053_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain00979_n01054_α
.Lx01053_0:
 .quad .Lx01053_0_s
.Lx01053_0_s:
 .string "strcoerce"
 xchain00979_n01054_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01055_1
 lea rcx, [rip + .Lx01055_3]
 lea rdx, [rip + .Lx01055_4]
 jmp rax
.Lx01055_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01055_2
.Lx01055_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01055_2
.Lx01055_1:
 call rt_faildescr@PLT
.Lx01055_2:
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain00979_n01056_α
 jmp xchain00979_n01056_α
 xchain00979_n01054_β:
 jmp xchain00979_n01056_α
.Lx01055_0:
 .quad .Lx01055_0_s
.Lx01055_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01056_α:
 mov rdi, qword ptr [rip + .Lx01057_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain00979_n01058_α
.Lx01057_0:
 .quad .Lx01057_0_s
.Lx01057_0_s:
 .string "absf"
 xchain00979_n01058_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7680]
 mov rdx, qword ptr [rbp + 7688]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01059_1
 lea rcx, [rip + .Lx01059_3]
 lea rdx, [rip + .Lx01059_4]
 jmp rax
.Lx01059_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01059_2
.Lx01059_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01059_2
.Lx01059_1:
 call rt_faildescr@PLT
.Lx01059_2:
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain00979_n01060_α
 jmp xchain00979_n01060_α
 xchain00979_n01058_β:
 jmp xchain00979_n01060_α
.Lx01059_0:
 .quad .Lx01059_0_s
.Lx01059_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01060_α:
 mov rdi, qword ptr [rip + .Lx01061_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain00979_n01062_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "intadd"
 xchain00979_n01062_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01063_1
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
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain00979_n01064_α
 jmp xchain00979_n01064_α
 xchain00979_n01062_β:
 jmp xchain00979_n01064_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01064_α:
 mov rdi, qword ptr [rip + .Lx01065_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain00979_n01066_α
.Lx01065_0:
 .quad .Lx01065_0_s
.Lx01065_0_s:
 .string "addfunc"
 xchain00979_n01066_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7520]
 mov rdx, qword ptr [rbp + 7528]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01067_1
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
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain00979_n00004_α
 jmp xchain00979_n00004_α
 xchain00979_n01066_β:
 jmp xchain00979_n00004_α
.Lx01067_0:
 .quad .Lx01067_0_s
.Lx01067_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00004_α:
 mov rdi, qword ptr [rip + .Lx01068_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain00979_n01069_α
.Lx01068_0:
 .quad .Lx01068_0_s
.Lx01068_0_s:
 .string "intpow"
 xchain00979_n01069_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7440]
 mov rdx, qword ptr [rbp + 7448]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01070_1
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
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain00979_n01071_α
 jmp xchain00979_n01071_α
 xchain00979_n01069_β:
 jmp xchain00979_n01071_α
.Lx01070_0:
 .quad .Lx01070_0_s
.Lx01070_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01071_α:
 mov rdi, qword ptr [rip + .Lx01072_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain00979_n00005_α
.Lx01072_0:
 .quad .Lx01072_0_s
.Lx01072_0_s:
 .string "intcmp"
 xchain00979_n00005_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7360]
 mov rdx, qword ptr [rbp + 7368]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01073_1
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
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain00979_n01074_α
 jmp xchain00979_n01074_α
 xchain00979_n00005_β:
 jmp xchain00979_n01074_α
.Lx01073_0:
 .quad .Lx01073_0_s
.Lx01073_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01074_α:
 mov rdi, qword ptr [rip + .Lx01075_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain00979_n00006_α
.Lx01075_0:
 .quad .Lx01075_0_s
.Lx01075_0_s:
 .string "rfact0"
 xchain00979_n00006_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7280]
 mov rdx, qword ptr [rbp + 7288]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01076_1
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
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain00979_n01077_α
 jmp xchain00979_n01077_α
 xchain00979_n00006_β:
 jmp xchain00979_n01077_α
.Lx01076_0:
 .quad .Lx01076_0_s
.Lx01076_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01077_α:
 mov rdi, qword ptr [rip + .Lx01078_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain00979_n00007_α
.Lx01078_0:
 .quad .Lx01078_0_s
.Lx01078_0_s:
 .string "rfact10"
 xchain00979_n00007_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7200]
 mov rdx, qword ptr [rbp + 7208]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01079_1
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
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain00979_n01080_α
 jmp xchain00979_n01080_α
 xchain00979_n00007_β:
 jmp xchain00979_n01080_α
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01080_α:
 mov rdi, qword ptr [rip + .Lx01081_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain00979_n00008_α
.Lx01081_0:
 .quad .Lx01081_0_s
.Lx01081_0_s:
 .string "rfib5"
 xchain00979_n00008_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7120]
 mov rdx, qword ptr [rbp + 7128]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01082_1
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
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain00979_n01083_α
 jmp xchain00979_n01083_α
 xchain00979_n00008_β:
 jmp xchain00979_n01083_α
.Lx01082_0:
 .quad .Lx01082_0_s
.Lx01082_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01083_α:
 mov rdi, qword ptr [rip + .Lx01084_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain00979_n01085_α
.Lx01084_0:
 .quad .Lx01084_0_s
.Lx01084_0_s:
 .string "prslow"
 xchain00979_n01085_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7040]
 mov rdx, qword ptr [rbp + 7048]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01086_1
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
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain00979_n01087_α
 jmp xchain00979_n01087_α
 xchain00979_n01085_β:
 jmp xchain00979_n01087_α
.Lx01086_0:
 .quad .Lx01086_0_s
.Lx01086_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01087_α:
 mov rdi, qword ptr [rip + .Lx01088_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain00979_n01089_α
.Lx01088_0:
 .quad .Lx01088_0_s
.Lx01088_0_s:
 .string "toreal"
 xchain00979_n01089_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6960]
 mov rdx, qword ptr [rbp + 6968]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01090_1
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
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain00979_n01091_α
 jmp xchain00979_n01091_α
 xchain00979_n01089_β:
 jmp xchain00979_n01091_α
.Lx01090_0:
 .quad .Lx01090_0_s
.Lx01090_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01091_α:
 mov rdi, qword ptr [rip + .Lx01092_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain00979_n01093_α
.Lx01092_0:
 .quad .Lx01092_0_s
.Lx01092_0_s:
 .string "realcoerce"
 xchain00979_n01093_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6880]
 mov rdx, qword ptr [rbp + 6888]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01094_1
 lea rcx, [rip + .Lx01094_3]
 lea rdx, [rip + .Lx01094_4]
 jmp rax
.Lx01094_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01094_2
.Lx01094_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01094_2
.Lx01094_1:
 call rt_faildescr@PLT
.Lx01094_2:
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je xchain00979_n01095_α
 jmp xchain00979_n01095_α
 xchain00979_n01093_β:
 jmp xchain00979_n01095_α
.Lx01094_0:
 .quad .Lx01094_0_s
.Lx01094_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01095_α:
 mov rdi, qword ptr [rip + .Lx01096_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain00979_n01097_α
.Lx01096_0:
 .quad .Lx01096_0_s
.Lx01096_0_s:
 .string "uplusr"
 xchain00979_n01097_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6800]
 mov rdx, qword ptr [rbp + 6808]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01098_1
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
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain00979_n01099_α
 jmp xchain00979_n01099_α
 xchain00979_n01097_β:
 jmp xchain00979_n01099_α
.Lx01098_0:
 .quad .Lx01098_0_s
.Lx01098_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01099_α:
 mov rdi, qword ptr [rip + .Lx01100_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain00979_n01101_α
.Lx01100_0:
 .quad .Lx01100_0_s
.Lx01100_0_s:
 .string "rtostring"
 xchain00979_n01101_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6720]
 mov rdx, qword ptr [rbp + 6728]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01102_1
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
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain00979_n00009_α
 jmp xchain00979_n00009_α
 xchain00979_n01101_β:
 jmp xchain00979_n00009_α
.Lx01102_0:
 .quad .Lx01102_0_s
.Lx01102_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00009_α:
 mov rdi, qword ptr [rip + .Lx01103_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain00979_n01104_α
.Lx01103_0:
 .quad .Lx01103_0_s
.Lx01103_0_s:
 .string "strcoercer"
 xchain00979_n01104_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6640]
 mov rdx, qword ptr [rbp + 6648]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01105_1
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
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain00979_n01106_α
 jmp xchain00979_n01106_α
 xchain00979_n01104_β:
 jmp xchain00979_n01106_α
.Lx01105_0:
 .quad .Lx01105_0_s
.Lx01105_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01106_α:
 mov rdi, qword ptr [rip + .Lx01107_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain00979_n01108_α
.Lx01107_0:
 .quad .Lx01107_0_s
.Lx01107_0_s:
 .string "realcmp"
 xchain00979_n01108_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01109_1
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
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain00979_n01110_α
 jmp xchain00979_n01110_α
 xchain00979_n01108_β:
 jmp xchain00979_n01110_α
.Lx01109_0:
 .quad .Lx01109_0_s
.Lx01109_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01110_α:
 mov rdi, qword ptr [rip + .Lx01111_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain00979_n01112_α
.Lx01111_0:
 .quad .Lx01111_0_s
.Lx01111_0_s:
 .string "sqrtf"
 xchain00979_n01112_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6480]
 mov rdx, qword ptr [rbp + 6488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01113_1
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
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain00979_n00010_α
 jmp xchain00979_n00010_α
 xchain00979_n01112_β:
 jmp xchain00979_n00010_α
.Lx01113_0:
 .quad .Lx01113_0_s
.Lx01113_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00010_α:
 mov rdi, qword ptr [rip + .Lx01114_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00979_n01115_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "cosf"
 xchain00979_n01115_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6400]
 mov rdx, qword ptr [rbp + 6408]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01116_1
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
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain00979_n01117_α
 jmp xchain00979_n01117_α
 xchain00979_n01115_β:
 jmp xchain00979_n01117_α
.Lx01116_0:
 .quad .Lx01116_0_s
.Lx01116_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01117_α:
 mov rdi, qword ptr [rip + .Lx01118_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00979_n00011_α
.Lx01118_0:
 .quad .Lx01118_0_s
.Lx01118_0_s:
 .string "logf"
 xchain00979_n00011_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6320]
 mov rdx, qword ptr [rbp + 6328]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01119_1
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
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain00979_n01120_α
 jmp xchain00979_n01120_α
 xchain00979_n00011_β:
 jmp xchain00979_n01120_α
.Lx01119_0:
 .quad .Lx01119_0_s
.Lx01119_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01120_α:
 mov rdi, qword ptr [rip + .Lx01121_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00979_n01122_α
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "charf"
 xchain00979_n01122_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01123_1
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
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00979_n00012_α
 jmp xchain00979_n00012_α
 xchain00979_n01122_β:
 jmp xchain00979_n00012_α
.Lx01123_0:
 .quad .Lx01123_0_s
.Lx01123_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00012_α:
 mov rdi, qword ptr [rip + .Lx01124_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain00979_n01125_α
.Lx01124_0:
 .quad .Lx01124_0_s
.Lx01124_0_s:
 .string "ordf"
 xchain00979_n01125_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01126_1
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
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain00979_n00013_α
 jmp xchain00979_n00013_α
 xchain00979_n01125_β:
 jmp xchain00979_n00013_α
.Lx01126_0:
 .quad .Lx01126_0_s
.Lx01126_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00013_α:
 mov rdi, qword ptr [rip + .Lx01127_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00979_n01128_α
.Lx01127_0:
 .quad .Lx01127_0_s
.Lx01127_0_s:
 .string "strsize"
 xchain00979_n01128_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6080]
 mov rdx, qword ptr [rbp + 6088]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01129_1
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
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 cmp eax, 99
 je xchain00979_n00014_α
 jmp xchain00979_n00014_α
 xchain00979_n01128_β:
 jmp xchain00979_n00014_α
.Lx01129_0:
 .quad .Lx01129_0_s
.Lx01129_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00014_α:
 mov rdi, qword ptr [rip + .Lx01130_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00979_n01131_α
.Lx01130_0:
 .quad .Lx01130_0_s
.Lx01130_0_s:
 .string "strpick"
 xchain00979_n01131_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6000]
 mov rdx, qword ptr [rbp + 6008]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01132_1
 lea rcx, [rip + .Lx01132_3]
 lea rdx, [rip + .Lx01132_4]
 jmp rax
.Lx01132_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01132_2
.Lx01132_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01132_2
.Lx01132_1:
 call rt_faildescr@PLT
.Lx01132_2:
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 cmp eax, 99
 je xchain00979_n01133_α
 jmp xchain00979_n01133_α
 xchain00979_n01131_β:
 jmp xchain00979_n01133_α
.Lx01132_0:
 .quad .Lx01132_0_s
.Lx01132_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01133_α:
 mov rdi, qword ptr [rip + .Lx01134_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain00979_n01135_α
.Lx01134_0:
 .quad .Lx01134_0_s
.Lx01134_0_s:
 .string "strbang"
 xchain00979_n01135_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5920]
 mov rdx, qword ptr [rbp + 5928]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01136_1
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
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain00979_n01137_α
 jmp xchain00979_n01137_α
 xchain00979_n01135_β:
 jmp xchain00979_n01137_α
.Lx01136_0:
 .quad .Lx01136_0_s
.Lx01136_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01137_α:
 mov rdi, qword ptr [rip + .Lx01138_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00979_n00015_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "strsub"
 xchain00979_n00015_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01139_1
 lea rcx, [rip + .Lx01139_3]
 lea rdx, [rip + .Lx01139_4]
 jmp rax
.Lx01139_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01139_2
.Lx01139_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01139_2
.Lx01139_1:
 call rt_faildescr@PLT
.Lx01139_2:
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain00979_n00016_α
 jmp xchain00979_n00016_α
 xchain00979_n00015_β:
 jmp xchain00979_n00016_α
.Lx01139_0:
 .quad .Lx01139_0_s
.Lx01139_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00016_α:
 mov rdi, qword ptr [rip + .Lx01140_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain00979_n01141_α
.Lx01140_0:
 .quad .Lx01140_0_s
.Lx01140_0_s:
 .string "substr"
 xchain00979_n01141_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5760]
 mov rdx, qword ptr [rbp + 5768]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01142_1
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
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain00979_n00017_α
 jmp xchain00979_n00017_α
 xchain00979_n01141_β:
 jmp xchain00979_n00017_α
.Lx01142_0:
 .quad .Lx01142_0_s
.Lx01142_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00017_α:
 mov rdi, qword ptr [rip + .Lx01143_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain00979_n00018_α
.Lx01143_0:
 .quad .Lx01143_0_s
.Lx01143_0_s:
 .string "subsasg"
 xchain00979_n00018_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5680]
 mov rdx, qword ptr [rbp + 5688]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01144_1
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
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain00979_n01145_α
 jmp xchain00979_n01145_α
 xchain00979_n00018_β:
 jmp xchain00979_n01145_α
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01145_α:
 mov rdi, qword ptr [rip + .Lx01146_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00979_n01147_α
.Lx01146_0:
 .quad .Lx01146_0_s
.Lx01146_0_s:
 .string "strcmp"
 xchain00979_n01147_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5600]
 mov rdx, qword ptr [rbp + 5608]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01148_1
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
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain00979_n00019_α
 jmp xchain00979_n00019_α
 xchain00979_n01147_β:
 jmp xchain00979_n00019_α
.Lx01148_0:
 .quad .Lx01148_0_s
.Lx01148_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00019_α:
 mov rdi, qword ptr [rip + .Lx01149_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain00979_n01150_α
.Lx01149_0:
 .quad .Lx01149_0_s
.Lx01149_0_s:
 .string "strident"
 xchain00979_n01150_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5520]
 mov rdx, qword ptr [rbp + 5528]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01151_1
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
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain00979_n01152_α
 jmp xchain00979_n01152_α
 xchain00979_n01150_β:
 jmp xchain00979_n01152_α
.Lx01151_0:
 .quad .Lx01151_0_s
.Lx01151_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01152_α:
 mov rdi, qword ptr [rip + .Lx01153_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain00979_n01154_α
.Lx01153_0:
 .quad .Lx01153_0_s
.Lx01153_0_s:
 .string "concat"
 xchain00979_n01154_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5440]
 mov rdx, qword ptr [rbp + 5448]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01155_1
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
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain00979_n01156_α
 jmp xchain00979_n01156_α
 xchain00979_n01154_β:
 jmp xchain00979_n01156_α
.Lx01155_0:
 .quad .Lx01155_0_s
.Lx01155_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01156_α:
 mov rdi, qword ptr [rip + .Lx01157_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain00979_n00020_α
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "reversef"
 xchain00979_n00020_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01158_1
 lea rcx, [rip + .Lx01158_3]
 lea rdx, [rip + .Lx01158_4]
 jmp rax
.Lx01158_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01158_2
.Lx01158_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01158_2
.Lx01158_1:
 call rt_faildescr@PLT
.Lx01158_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain00979_n01159_α
 jmp xchain00979_n01159_α
 xchain00979_n00020_β:
 jmp xchain00979_n01159_α
.Lx01158_0:
 .quad .Lx01158_0_s
.Lx01158_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01159_α:
 mov rdi, qword ptr [rip + .Lx01160_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain00979_n00021_α
.Lx01160_0:
 .quad .Lx01160_0_s
.Lx01160_0_s:
 .string "trimf"
 xchain00979_n00021_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01161_1
 lea rcx, [rip + .Lx01161_3]
 lea rdx, [rip + .Lx01161_4]
 jmp rax
.Lx01161_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01161_2
.Lx01161_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01161_2
.Lx01161_1:
 call rt_faildescr@PLT
.Lx01161_2:
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain00979_n00022_α
 jmp xchain00979_n00022_α
 xchain00979_n00021_β:
 jmp xchain00979_n00022_α
.Lx01161_0:
 .quad .Lx01161_0_s
.Lx01161_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00022_α:
 mov rdi, qword ptr [rip + .Lx01162_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain00979_n01163_α
.Lx01162_0:
 .quad .Lx01162_0_s
.Lx01162_0_s:
 .string "replf"
 xchain00979_n01163_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5200]
 mov rdx, qword ptr [rbp + 5208]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01164_1
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
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain00979_n01165_α
 jmp xchain00979_n01165_α
 xchain00979_n01163_β:
 jmp xchain00979_n01165_α
.Lx01164_0:
 .quad .Lx01164_0_s
.Lx01164_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01165_α:
 mov rdi, qword ptr [rip + .Lx01166_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain00979_n01167_α
.Lx01166_0:
 .quad .Lx01166_0_s
.Lx01166_0_s:
 .string "leftf"
 xchain00979_n01167_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01168_1
 lea rcx, [rip + .Lx01168_3]
 lea rdx, [rip + .Lx01168_4]
 jmp rax
.Lx01168_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01168_2
.Lx01168_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01168_2
.Lx01168_1:
 call rt_faildescr@PLT
.Lx01168_2:
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain00979_n01169_α
 jmp xchain00979_n01169_α
 xchain00979_n01167_β:
 jmp xchain00979_n01169_α
.Lx01168_0:
 .quad .Lx01168_0_s
.Lx01168_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01169_α:
 mov rdi, qword ptr [rip + .Lx01170_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain00979_n01171_α
.Lx01170_0:
 .quad .Lx01170_0_s
.Lx01170_0_s:
 .string "centerf"
 xchain00979_n01171_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01172_1
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
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain00979_n01173_α
 jmp xchain00979_n01173_α
 xchain00979_n01171_β:
 jmp xchain00979_n01173_α
.Lx01172_0:
 .quad .Lx01172_0_s
.Lx01172_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01173_α:
 mov rdi, qword ptr [rip + .Lx01174_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain00979_n00023_α
.Lx01174_0:
 .quad .Lx01174_0_s
.Lx01174_0_s:
 .string "rightf"
 xchain00979_n00023_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01175_1
 lea rcx, [rip + .Lx01175_3]
 lea rdx, [rip + .Lx01175_4]
 jmp rax
.Lx01175_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01175_2
.Lx01175_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01175_2
.Lx01175_1:
 call rt_faildescr@PLT
.Lx01175_2:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain00979_n00024_α
 jmp xchain00979_n00024_α
 xchain00979_n00023_β:
 jmp xchain00979_n00024_α
.Lx01175_0:
 .quad .Lx01175_0_s
.Lx01175_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00024_α:
 mov rdi, qword ptr [rip + .Lx01176_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain00979_n01177_α
.Lx01176_0:
 .quad .Lx01176_0_s
.Lx01176_0_s:
 .string "entabf"
 xchain00979_n01177_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4880]
 mov rdx, qword ptr [rbp + 4888]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01178_1
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
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp eax, 99
 je xchain00979_n01179_α
 jmp xchain00979_n01179_α
 xchain00979_n01177_β:
 jmp xchain00979_n01179_α
.Lx01178_0:
 .quad .Lx01178_0_s
.Lx01178_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01179_α:
 mov rdi, qword ptr [rip + .Lx01180_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00979_n01181_α
.Lx01180_0:
 .quad .Lx01180_0_s
.Lx01180_0_s:
 .string "detabf"
 xchain00979_n01181_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01182_1
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
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain00979_n01183_α
 jmp xchain00979_n01183_α
 xchain00979_n01181_β:
 jmp xchain00979_n01183_α
.Lx01182_0:
 .quad .Lx01182_0_s
.Lx01182_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01183_α:
 mov rdi, qword ptr [rip + .Lx01184_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00979_n01185_α
.Lx01184_0:
 .quad .Lx01184_0_s
.Lx01184_0_s:
 .string "mapf"
 xchain00979_n01185_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4720]
 mov rdx, qword ptr [rbp + 4728]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01186_1
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
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain00979_n00025_α
 jmp xchain00979_n00025_α
 xchain00979_n01185_β:
 jmp xchain00979_n00025_α
.Lx01186_0:
 .quad .Lx01186_0_s
.Lx01186_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00025_α:
 mov rdi, qword ptr [rip + .Lx01187_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain00979_n01188_α
.Lx01187_0:
 .quad .Lx01187_0_s
.Lx01187_0_s:
 .string "map1"
 xchain00979_n01188_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4640]
 mov rdx, qword ptr [rbp + 4648]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01189_1
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
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain00979_n00026_α
 jmp xchain00979_n00026_α
 xchain00979_n01188_β:
 jmp xchain00979_n00026_α
.Lx01189_0:
 .quad .Lx01189_0_s
.Lx01189_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00026_α:
 mov rdi, qword ptr [rip + .Lx01190_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00979_n00027_α
.Lx01190_0:
 .quad .Lx01190_0_s
.Lx01190_0_s:
 .string "map2"
 xchain00979_n00027_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01191_1
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
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain00979_n01192_α
 jmp xchain00979_n01192_α
 xchain00979_n00027_β:
 jmp xchain00979_n01192_α
.Lx01191_0:
 .quad .Lx01191_0_s
.Lx01191_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01192_α:
 mov rdi, qword ptr [rip + .Lx01193_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00979_n01194_α
.Lx01193_0:
 .quad .Lx01193_0_s
.Lx01193_0_s:
 .string "tablemap"
 xchain00979_n01194_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01195_1
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
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain00979_n01196_α
 jmp xchain00979_n01196_α
 xchain00979_n01194_β:
 jmp xchain00979_n01196_α
.Lx01195_0:
 .quad .Lx01195_0_s
.Lx01195_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01196_α:
 mov rdi, qword ptr [rip + .Lx01197_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00979_n01198_α
.Lx01197_0:
 .quad .Lx01197_0_s
.Lx01197_0_s:
 .string "listmap"
 xchain00979_n01198_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01199_1
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
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain00979_n01200_α
 jmp xchain00979_n01200_α
 xchain00979_n01198_β:
 jmp xchain00979_n01200_α
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01200_α:
 mov rdi, qword ptr [rip + .Lx01201_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain00979_n01202_α
.Lx01201_0:
 .quad .Lx01201_0_s
.Lx01201_0_s:
 .string "nullscan"
 xchain00979_n01202_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01203_1
 lea rcx, [rip + .Lx01203_3]
 lea rdx, [rip + .Lx01203_4]
 jmp rax
.Lx01203_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01203_2
.Lx01203_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01203_2
.Lx01203_1:
 call rt_faildescr@PLT
.Lx01203_2:
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je xchain00979_n00028_α
 jmp xchain00979_n00028_α
 xchain00979_n01202_β:
 jmp xchain00979_n00028_α
.Lx01203_0:
 .quad .Lx01203_0_s
.Lx01203_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00028_α:
 mov rdi, qword ptr [rip + .Lx01204_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00979_n00029_α
.Lx01204_0:
 .quad .Lx01204_0_s
.Lx01204_0_s:
 .string "movef"
 xchain00979_n00029_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01205_1
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
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain00979_n01206_α
 jmp xchain00979_n01206_α
 xchain00979_n00029_β:
 jmp xchain00979_n01206_α
.Lx01205_0:
 .quad .Lx01205_0_s
.Lx01205_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01206_α:
 mov rdi, qword ptr [rip + .Lx01207_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00979_n01208_α
.Lx01207_0:
 .quad .Lx01207_0_s
.Lx01207_0_s:
 .string "mov11"
 xchain00979_n01208_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4160]
 mov rdx, qword ptr [rbp + 4168]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01209_1
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
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00979_n01210_α
 jmp xchain00979_n01210_α
 xchain00979_n01208_β:
 jmp xchain00979_n01210_α
.Lx01209_0:
 .quad .Lx01209_0_s
.Lx01209_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01210_α:
 mov rdi, qword ptr [rip + .Lx01211_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00979_n01212_α
.Lx01211_0:
 .quad .Lx01211_0_s
.Lx01211_0_s:
 .string "pos11"
 xchain00979_n01212_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4080]
 mov rdx, qword ptr [rbp + 4088]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01213_1
 lea rcx, [rip + .Lx01213_3]
 lea rdx, [rip + .Lx01213_4]
 jmp rax
.Lx01213_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01213_2
.Lx01213_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01213_2
.Lx01213_1:
 call rt_faildescr@PLT
.Lx01213_2:
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain00979_n01214_α
 jmp xchain00979_n01214_α
 xchain00979_n01212_β:
 jmp xchain00979_n01214_α
.Lx01213_0:
 .quad .Lx01213_0_s
.Lx01213_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01214_α:
 mov rdi, qword ptr [rip + .Lx01215_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00979_n00030_α
.Lx01215_0:
 .quad .Lx01215_0_s
.Lx01215_0_s:
 .string "tabf"
 xchain00979_n00030_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01216_1
 lea rcx, [rip + .Lx01216_3]
 lea rdx, [rip + .Lx01216_4]
 jmp rax
.Lx01216_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01216_2
.Lx01216_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01216_2
.Lx01216_1:
 call rt_faildescr@PLT
.Lx01216_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00979_n01217_α
 jmp xchain00979_n01217_α
 xchain00979_n00030_β:
 jmp xchain00979_n01217_α
.Lx01216_0:
 .quad .Lx01216_0_s
.Lx01216_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01217_α:
 mov rdi, qword ptr [rip + .Lx01218_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain00979_n00031_α
.Lx01218_0:
 .quad .Lx01218_0_s
.Lx01218_0_s:
 .string "matchf"
 xchain00979_n00031_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01219_1
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
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain00979_n00032_α
 jmp xchain00979_n00032_α
 xchain00979_n00031_β:
 jmp xchain00979_n00032_α
.Lx01219_0:
 .quad .Lx01219_0_s
.Lx01219_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00032_α:
 mov rdi, qword ptr [rip + .Lx01220_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00979_n01221_α
.Lx01220_0:
 .quad .Lx01220_0_s
.Lx01220_0_s:
 .string "tabmat"
 xchain00979_n01221_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3840]
 mov rdx, qword ptr [rbp + 3848]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01222_1
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
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je xchain00979_n01223_α
 jmp xchain00979_n01223_α
 xchain00979_n01221_β:
 jmp xchain00979_n01223_α
.Lx01222_0:
 .quad .Lx01222_0_s
.Lx01222_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01223_α:
 mov rdi, qword ptr [rip + .Lx01224_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00979_n01225_α
.Lx01224_0:
 .quad .Lx01224_0_s
.Lx01224_0_s:
 .string "posf"
 xchain00979_n01225_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3760]
 mov rdx, qword ptr [rbp + 3768]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01226_1
 lea rcx, [rip + .Lx01226_3]
 lea rdx, [rip + .Lx01226_4]
 jmp rax
.Lx01226_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01226_2
.Lx01226_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01226_2
.Lx01226_1:
 call rt_faildescr@PLT
.Lx01226_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain00979_n01227_α
 jmp xchain00979_n01227_α
 xchain00979_n01225_β:
 jmp xchain00979_n01227_α
.Lx01226_0:
 .quad .Lx01226_0_s
.Lx01226_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01227_α:
 mov rdi, qword ptr [rip + .Lx01228_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain00979_n01229_α
.Lx01228_0:
 .quad .Lx01228_0_s
.Lx01228_0_s:
 .string "anyf"
 xchain00979_n01229_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01230_1
 lea rcx, [rip + .Lx01230_3]
 lea rdx, [rip + .Lx01230_4]
 jmp rax
.Lx01230_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01230_2
.Lx01230_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01230_2
.Lx01230_1:
 call rt_faildescr@PLT
.Lx01230_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain00979_n01231_α
 jmp xchain00979_n01231_α
 xchain00979_n01229_β:
 jmp xchain00979_n01231_α
.Lx01230_0:
 .quad .Lx01230_0_s
.Lx01230_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01231_α:
 mov rdi, qword ptr [rip + .Lx01232_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00979_n00033_α
.Lx01232_0:
 .quad .Lx01232_0_s
.Lx01232_0_s:
 .string "manyf"
 xchain00979_n00033_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01233_1
 lea rcx, [rip + .Lx01233_3]
 lea rdx, [rip + .Lx01233_4]
 jmp rax
.Lx01233_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01233_2
.Lx01233_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01233_2
.Lx01233_1:
 call rt_faildescr@PLT
.Lx01233_2:
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain00979_n00034_α
 jmp xchain00979_n00034_α
 xchain00979_n00033_β:
 jmp xchain00979_n00034_α
.Lx01233_0:
 .quad .Lx01233_0_s
.Lx01233_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00034_α:
 mov rdi, qword ptr [rip + .Lx01234_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain00979_n01235_α
.Lx01234_0:
 .quad .Lx01234_0_s
.Lx01234_0_s:
 .string "uptof"
 xchain00979_n01235_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3520]
 mov rdx, qword ptr [rbp + 3528]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01236_1
 lea rcx, [rip + .Lx01236_3]
 lea rdx, [rip + .Lx01236_4]
 jmp rax
.Lx01236_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01236_2
.Lx01236_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01236_2
.Lx01236_1:
 call rt_faildescr@PLT
.Lx01236_2:
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain00979_n01237_α
 jmp xchain00979_n01237_α
 xchain00979_n01235_β:
 jmp xchain00979_n01237_α
.Lx01236_0:
 .quad .Lx01236_0_s
.Lx01236_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01237_α:
 mov rdi, qword ptr [rip + .Lx01238_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain00979_n01239_α
.Lx01238_0:
 .quad .Lx01238_0_s
.Lx01238_0_s:
 .string "findf"
 xchain00979_n01239_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01240_1
 lea rcx, [rip + .Lx01240_3]
 lea rdx, [rip + .Lx01240_4]
 jmp rax
.Lx01240_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01240_2
.Lx01240_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01240_2
.Lx01240_1:
 call rt_faildescr@PLT
.Lx01240_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00979_n01241_α
 jmp xchain00979_n01241_α
 xchain00979_n01239_β:
 jmp xchain00979_n01241_α
.Lx01240_0:
 .quad .Lx01240_0_s
.Lx01240_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01241_α:
 mov rdi, qword ptr [rip + .Lx01242_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00979_n01243_α
.Lx01242_0:
 .quad .Lx01242_0_s
.Lx01242_0_s:
 .string "balf"
 xchain00979_n01243_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01244_1
 lea rcx, [rip + .Lx01244_3]
 lea rdx, [rip + .Lx01244_4]
 jmp rax
.Lx01244_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01244_2
.Lx01244_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01244_2
.Lx01244_1:
 call rt_faildescr@PLT
.Lx01244_2:
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain00979_n00035_α
 jmp xchain00979_n00035_α
 xchain00979_n01243_β:
 jmp xchain00979_n00035_α
.Lx01244_0:
 .quad .Lx01244_0_s
.Lx01244_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00035_α:
 mov rdi, qword ptr [rip + .Lx01245_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00979_n01246_α
.Lx01245_0:
 .quad .Lx01245_0_s
.Lx01245_0_s:
 .string "tocset"
 xchain00979_n01246_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01247_1
 lea rcx, [rip + .Lx01247_3]
 lea rdx, [rip + .Lx01247_4]
 jmp rax
.Lx01247_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01247_2
.Lx01247_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01247_2
.Lx01247_1:
 call rt_faildescr@PLT
.Lx01247_2:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain00979_n00036_α
 jmp xchain00979_n00036_α
 xchain00979_n01246_β:
 jmp xchain00979_n00036_α
.Lx01247_0:
 .quad .Lx01247_0_s
.Lx01247_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00036_α:
 mov rdi, qword ptr [rip + .Lx01248_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain00979_n00037_α
.Lx01248_0:
 .quad .Lx01248_0_s
.Lx01248_0_s:
 .string "cssize"
 xchain00979_n00037_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01249_1
 lea rcx, [rip + .Lx01249_3]
 lea rdx, [rip + .Lx01249_4]
 jmp rax
.Lx01249_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01249_2
.Lx01249_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01249_2
.Lx01249_1:
 call rt_faildescr@PLT
.Lx01249_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain00979_n01250_α
 jmp xchain00979_n01250_α
 xchain00979_n00037_β:
 jmp xchain00979_n01250_α
.Lx01249_0:
 .quad .Lx01249_0_s
.Lx01249_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01250_α:
 mov rdi, qword ptr [rip + .Lx01251_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00979_n01252_α
.Lx01251_0:
 .quad .Lx01251_0_s
.Lx01251_0_s:
 .string "cscompl"
 xchain00979_n01252_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01253_1
 lea rcx, [rip + .Lx01253_3]
 lea rdx, [rip + .Lx01253_4]
 jmp rax
.Lx01253_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01253_2
.Lx01253_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01253_2
.Lx01253_1:
 call rt_faildescr@PLT
.Lx01253_2:
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00979_n01254_α
 jmp xchain00979_n01254_α
 xchain00979_n01252_β:
 jmp xchain00979_n01254_α
.Lx01253_0:
 .quad .Lx01253_0_s
.Lx01253_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01254_α:
 mov rdi, qword ptr [rip + .Lx01255_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00979_n01256_α
.Lx01255_0:
 .quad .Lx01255_0_s
.Lx01255_0_s:
 .string "lcreate"
 xchain00979_n01256_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01257_1
 lea rcx, [rip + .Lx01257_3]
 lea rdx, [rip + .Lx01257_4]
 jmp rax
.Lx01257_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01257_2
.Lx01257_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01257_2
.Lx01257_1:
 call rt_faildescr@PLT
.Lx01257_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00979_n01258_α
 jmp xchain00979_n01258_α
 xchain00979_n01256_β:
 jmp xchain00979_n01258_α
.Lx01257_0:
 .quad .Lx01257_0_s
.Lx01257_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01258_α:
 mov rdi, qword ptr [rip + .Lx01259_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain00979_n01260_α
.Lx01259_0:
 .quad .Lx01259_0_s
.Lx01259_0_s:
 .string "lconst"
 xchain00979_n01260_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01261_1
 lea rcx, [rip + .Lx01261_3]
 lea rdx, [rip + .Lx01261_4]
 jmp rax
.Lx01261_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01261_2
.Lx01261_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01261_2
.Lx01261_1:
 call rt_faildescr@PLT
.Lx01261_2:
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain00979_n00038_α
 jmp xchain00979_n00038_α
 xchain00979_n01260_β:
 jmp xchain00979_n00038_α
.Lx01261_0:
 .quad .Lx01261_0_s
.Lx01261_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00038_α:
 mov rdi, qword ptr [rip + .Lx01262_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00979_n00039_α
.Lx01262_0:
 .quad .Lx01262_0_s
.Lx01262_0_s:
 .string "lcopy"
 xchain00979_n00039_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01263_1
 lea rcx, [rip + .Lx01263_3]
 lea rdx, [rip + .Lx01263_4]
 jmp rax
.Lx01263_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01263_2
.Lx01263_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01263_2
.Lx01263_1:
 call rt_faildescr@PLT
.Lx01263_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain00979_n01264_α
 jmp xchain00979_n01264_α
 xchain00979_n00039_β:
 jmp xchain00979_n01264_α
.Lx01263_0:
 .quad .Lx01263_0_s
.Lx01263_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01264_α:
 mov rdi, qword ptr [rip + .Lx01265_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain00979_n01266_α
.Lx01265_0:
 .quad .Lx01265_0_s
.Lx01265_0_s:
 .string "lsort"
 xchain00979_n01266_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01267_1
 lea rcx, [rip + .Lx01267_3]
 lea rdx, [rip + .Lx01267_4]
 jmp rax
.Lx01267_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01267_2
.Lx01267_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01267_2
.Lx01267_1:
 call rt_faildescr@PLT
.Lx01267_2:
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain00979_n01268_α
 jmp xchain00979_n01268_α
 xchain00979_n01266_β:
 jmp xchain00979_n01268_α
.Lx01267_0:
 .quad .Lx01267_0_s
.Lx01267_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01268_α:
 mov rdi, qword ptr [rip + .Lx01269_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain00979_n00040_α
.Lx01269_0:
 .quad .Lx01269_0_s
.Lx01269_0_s:
 .string "lsize"
 xchain00979_n00040_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01270_1
 lea rcx, [rip + .Lx01270_3]
 lea rdx, [rip + .Lx01270_4]
 jmp rax
.Lx01270_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01270_2
.Lx01270_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01270_2
.Lx01270_1:
 call rt_faildescr@PLT
.Lx01270_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain00979_n01271_α
 jmp xchain00979_n01271_α
 xchain00979_n00040_β:
 jmp xchain00979_n01271_α
.Lx01270_0:
 .quad .Lx01270_0_s
.Lx01270_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01271_α:
 mov rdi, qword ptr [rip + .Lx01272_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00979_n01273_α
.Lx01272_0:
 .quad .Lx01272_0_s
.Lx01272_0_s:
 .string "lpick"
 xchain00979_n01273_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01274_1
 lea rcx, [rip + .Lx01274_3]
 lea rdx, [rip + .Lx01274_4]
 jmp rax
.Lx01274_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01274_2
.Lx01274_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01274_2
.Lx01274_1:
 call rt_faildescr@PLT
.Lx01274_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain00979_n01275_α
 jmp xchain00979_n01275_α
 xchain00979_n01273_β:
 jmp xchain00979_n01275_α
.Lx01274_0:
 .quad .Lx01274_0_s
.Lx01274_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01275_α:
 mov rdi, qword ptr [rip + .Lx01276_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00979_n01277_α
.Lx01276_0:
 .quad .Lx01276_0_s
.Lx01276_0_s:
 .string "lbang"
 xchain00979_n01277_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01278_1
 lea rcx, [rip + .Lx01278_3]
 lea rdx, [rip + .Lx01278_4]
 jmp rax
.Lx01278_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01278_2
.Lx01278_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01278_2
.Lx01278_1:
 call rt_faildescr@PLT
.Lx01278_2:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain00979_n00041_α
 jmp xchain00979_n00041_α
 xchain00979_n01277_β:
 jmp xchain00979_n00041_α
.Lx01278_0:
 .quad .Lx01278_0_s
.Lx01278_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00041_α:
 mov rdi, qword ptr [rip + .Lx01279_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain00979_n01280_α
.Lx01279_0:
 .quad .Lx01279_0_s
.Lx01279_0_s:
 .string "lsubscr"
 xchain00979_n01280_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2480]
 mov rdx, qword ptr [rbp + 2488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01281_1
 lea rcx, [rip + .Lx01281_3]
 lea rdx, [rip + .Lx01281_4]
 jmp rax
.Lx01281_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01281_2
.Lx01281_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01281_2
.Lx01281_1:
 call rt_faildescr@PLT
.Lx01281_2:
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain00979_n00042_α
 jmp xchain00979_n00042_α
 xchain00979_n01280_β:
 jmp xchain00979_n00042_α
.Lx01281_0:
 .quad .Lx01281_0_s
.Lx01281_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00042_α:
 mov rdi, qword ptr [rip + .Lx01282_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00979_n00043_α
.Lx01282_0:
 .quad .Lx01282_0_s
.Lx01282_0_s:
 .string "put1get1"
 xchain00979_n00043_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01283_1
 lea rcx, [rip + .Lx01283_3]
 lea rdx, [rip + .Lx01283_4]
 jmp rax
.Lx01283_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01283_2
.Lx01283_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01283_2
.Lx01283_1:
 call rt_faildescr@PLT
.Lx01283_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00979_n01284_α
 jmp xchain00979_n01284_α
 xchain00979_n00043_β:
 jmp xchain00979_n01284_α
.Lx01283_0:
 .quad .Lx01283_0_s
.Lx01283_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01284_α:
 mov rdi, qword ptr [rip + .Lx01285_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00979_n01286_α
.Lx01285_0:
 .quad .Lx01285_0_s
.Lx01285_0_s:
 .string "put2get2"
 xchain00979_n01286_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01287_1
 lea rcx, [rip + .Lx01287_3]
 lea rdx, [rip + .Lx01287_4]
 jmp rax
.Lx01287_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01287_2
.Lx01287_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01287_2
.Lx01287_1:
 call rt_faildescr@PLT
.Lx01287_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain00979_n01288_α
 jmp xchain00979_n01288_α
 xchain00979_n01286_β:
 jmp xchain00979_n01288_α
.Lx01287_0:
 .quad .Lx01287_0_s
.Lx01287_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01288_α:
 mov rdi, qword ptr [rip + .Lx01289_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain00979_n01290_α
.Lx01289_0:
 .quad .Lx01289_0_s
.Lx01289_0_s:
 .string "put3get3"
 xchain00979_n01290_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2240]
 mov rdx, qword ptr [rbp + 2248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01291_1
 lea rcx, [rip + .Lx01291_3]
 lea rdx, [rip + .Lx01291_4]
 jmp rax
.Lx01291_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01291_2
.Lx01291_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01291_2
.Lx01291_1:
 call rt_faildescr@PLT
.Lx01291_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain00979_n01292_α
 jmp xchain00979_n01292_α
 xchain00979_n01290_β:
 jmp xchain00979_n01292_α
.Lx01291_0:
 .quad .Lx01291_0_s
.Lx01291_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01292_α:
 mov rdi, qword ptr [rip + .Lx01293_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00979_n01294_α
.Lx01293_0:
 .quad .Lx01293_0_s
.Lx01293_0_s:
 .string "put4get4"
 xchain00979_n01294_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01295_1
 lea rcx, [rip + .Lx01295_3]
 lea rdx, [rip + .Lx01295_4]
 jmp rax
.Lx01295_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01295_2
.Lx01295_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01295_2
.Lx01295_1:
 call rt_faildescr@PLT
.Lx01295_2:
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain00979_n00044_α
 jmp xchain00979_n00044_α
 xchain00979_n01294_β:
 jmp xchain00979_n00044_α
.Lx01295_0:
 .quad .Lx01295_0_s
.Lx01295_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00044_α:
 mov rdi, qword ptr [rip + .Lx01296_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain00979_n00045_α
.Lx01296_0:
 .quad .Lx01296_0_s
.Lx01296_0_s:
 .string "pushpop"
 xchain00979_n00045_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01297_1
 lea rcx, [rip + .Lx01297_3]
 lea rdx, [rip + .Lx01297_4]
 jmp rax
.Lx01297_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01297_2
.Lx01297_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01297_2
.Lx01297_1:
 call rt_faildescr@PLT
.Lx01297_2:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain00979_n01298_α
 jmp xchain00979_n01298_α
 xchain00979_n00045_β:
 jmp xchain00979_n01298_α
.Lx01297_0:
 .quad .Lx01297_0_s
.Lx01297_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01298_α:
 mov rdi, qword ptr [rip + .Lx01299_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00979_n01300_α
.Lx01299_0:
 .quad .Lx01299_0_s
.Lx01299_0_s:
 .string "putget12"
 xchain00979_n01300_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01301_1
 lea rcx, [rip + .Lx01301_3]
 lea rdx, [rip + .Lx01301_4]
 jmp rax
.Lx01301_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01301_2
.Lx01301_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01301_2
.Lx01301_1:
 call rt_faildescr@PLT
.Lx01301_2:
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain00979_n01302_α
 jmp xchain00979_n01302_α
 xchain00979_n01300_β:
 jmp xchain00979_n01302_α
.Lx01301_0:
 .quad .Lx01301_0_s
.Lx01301_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01302_α:
 mov rdi, qword ptr [rip + .Lx01303_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00979_n01304_α
.Lx01303_0:
 .quad .Lx01303_0_s
.Lx01303_0_s:
 .string "pushpop12"
 xchain00979_n01304_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01305_1
 lea rcx, [rip + .Lx01305_3]
 lea rdx, [rip + .Lx01305_4]
 jmp rax
.Lx01305_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01305_2
.Lx01305_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01305_2
.Lx01305_1:
 call rt_faildescr@PLT
.Lx01305_2:
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain00979_n01306_α
 jmp xchain00979_n01306_α
 xchain00979_n01304_β:
 jmp xchain00979_n01306_α
.Lx01305_0:
 .quad .Lx01305_0_s
.Lx01305_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01306_α:
 mov rdi, qword ptr [rip + .Lx01307_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00979_n00046_α
.Lx01307_0:
 .quad .Lx01307_0_s
.Lx01307_0_s:
 .string "setcreate"
 xchain00979_n00046_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01308_1
 lea rcx, [rip + .Lx01308_3]
 lea rdx, [rip + .Lx01308_4]
 jmp rax
.Lx01308_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01308_2
.Lx01308_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01308_2
.Lx01308_1:
 call rt_faildescr@PLT
.Lx01308_2:
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain00979_n01309_α
 jmp xchain00979_n01309_α
 xchain00979_n00046_β:
 jmp xchain00979_n01309_α
.Lx01308_0:
 .quad .Lx01308_0_s
.Lx01308_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01309_α:
 mov rdi, qword ptr [rip + .Lx01310_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain00979_n00047_α
.Lx01310_0:
 .quad .Lx01310_0_s
.Lx01310_0_s:
 .string "setcopy"
 xchain00979_n00047_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01311_1
 lea rcx, [rip + .Lx01311_3]
 lea rdx, [rip + .Lx01311_4]
 jmp rax
.Lx01311_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01311_2
.Lx01311_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01311_2
.Lx01311_1:
 call rt_faildescr@PLT
.Lx01311_2:
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain00979_n00048_α
 jmp xchain00979_n00048_α
 xchain00979_n00047_β:
 jmp xchain00979_n00048_α
.Lx01311_0:
 .quad .Lx01311_0_s
.Lx01311_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00048_α:
 mov rdi, qword ptr [rip + .Lx01312_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00979_n01313_α
.Lx01312_0:
 .quad .Lx01312_0_s
.Lx01312_0_s:
 .string "setmember"
 xchain00979_n01313_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1680]
 mov rdx, qword ptr [rbp + 1688]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01314_1
 lea rcx, [rip + .Lx01314_3]
 lea rdx, [rip + .Lx01314_4]
 jmp rax
.Lx01314_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01314_2
.Lx01314_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01314_2
.Lx01314_1:
 call rt_faildescr@PLT
.Lx01314_2:
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain00979_n01315_α
 jmp xchain00979_n01315_α
 xchain00979_n01313_β:
 jmp xchain00979_n01315_α
.Lx01314_0:
 .quad .Lx01314_0_s
.Lx01314_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01315_α:
 mov rdi, qword ptr [rip + .Lx01316_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain00979_n01317_α
.Lx01316_0:
 .quad .Lx01316_0_s
.Lx01316_0_s:
 .string "setinsert"
 xchain00979_n01317_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01318_1
 lea rcx, [rip + .Lx01318_3]
 lea rdx, [rip + .Lx01318_4]
 jmp rax
.Lx01318_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01318_2
.Lx01318_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01318_2
.Lx01318_1:
 call rt_faildescr@PLT
.Lx01318_2:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain00979_n01319_α
 jmp xchain00979_n01319_α
 xchain00979_n01317_β:
 jmp xchain00979_n01319_α
.Lx01318_0:
 .quad .Lx01318_0_s
.Lx01318_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01319_α:
 mov rdi, qword ptr [rip + .Lx01320_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain00979_n01321_α
.Lx01320_0:
 .quad .Lx01320_0_s
.Lx01320_0_s:
 .string "setinsdel"
 xchain00979_n01321_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01322_1
 lea rcx, [rip + .Lx01322_3]
 lea rdx, [rip + .Lx01322_4]
 jmp rax
.Lx01322_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01322_2
.Lx01322_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01322_2
.Lx01322_1:
 call rt_faildescr@PLT
.Lx01322_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain00979_n01323_α
 jmp xchain00979_n01323_α
 xchain00979_n01321_β:
 jmp xchain00979_n01323_α
.Lx01322_0:
 .quad .Lx01322_0_s
.Lx01322_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01323_α:
 mov rdi, qword ptr [rip + .Lx01324_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain00979_n00049_α
.Lx01324_0:
 .quad .Lx01324_0_s
.Lx01324_0_s:
 .string "setbang"
 xchain00979_n00049_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01325_1
 lea rcx, [rip + .Lx01325_3]
 lea rdx, [rip + .Lx01325_4]
 jmp rax
.Lx01325_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01325_2
.Lx01325_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01325_2
.Lx01325_1:
 call rt_faildescr@PLT
.Lx01325_2:
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00979_n00050_α
 jmp xchain00979_n00050_α
 xchain00979_n00049_β:
 jmp xchain00979_n00050_α
.Lx01325_0:
 .quad .Lx01325_0_s
.Lx01325_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00050_α:
 mov rdi, qword ptr [rip + .Lx01326_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00979_n01327_α
.Lx01326_0:
 .quad .Lx01326_0_s
.Lx01326_0_s:
 .string "setpick"
 xchain00979_n01327_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01328_1
 lea rcx, [rip + .Lx01328_3]
 lea rdx, [rip + .Lx01328_4]
 jmp rax
.Lx01328_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01328_2
.Lx01328_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01328_2
.Lx01328_1:
 call rt_faildescr@PLT
.Lx01328_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain00979_n01329_α
 jmp xchain00979_n01329_α
 xchain00979_n01327_β:
 jmp xchain00979_n01329_α
.Lx01328_0:
 .quad .Lx01328_0_s
.Lx01328_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01329_α:
 mov rdi, qword ptr [rip + .Lx01330_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00979_n01331_α
.Lx01330_0:
 .quad .Lx01330_0_s
.Lx01330_0_s:
 .string "tblcreate"
 xchain00979_n01331_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01332_1
 lea rcx, [rip + .Lx01332_3]
 lea rdx, [rip + .Lx01332_4]
 jmp rax
.Lx01332_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01332_2
.Lx01332_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01332_2
.Lx01332_1:
 call rt_faildescr@PLT
.Lx01332_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain00979_n00051_α
 jmp xchain00979_n00051_α
 xchain00979_n01331_β:
 jmp xchain00979_n00051_α
.Lx01332_0:
 .quad .Lx01332_0_s
.Lx01332_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00051_α:
 mov rdi, qword ptr [rip + .Lx01333_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00979_n00052_α
.Lx01333_0:
 .quad .Lx01333_0_s
.Lx01333_0_s:
 .string "tblsub"
 xchain00979_n00052_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01334_1
 lea rcx, [rip + .Lx01334_3]
 lea rdx, [rip + .Lx01334_4]
 jmp rax
.Lx01334_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01334_2
.Lx01334_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01334_2
.Lx01334_1:
 call rt_faildescr@PLT
.Lx01334_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00979_n00053_α
 jmp xchain00979_n00053_α
 xchain00979_n00052_β:
 jmp xchain00979_n00053_α
.Lx01334_0:
 .quad .Lx01334_0_s
.Lx01334_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00053_α:
 mov rdi, qword ptr [rip + .Lx01335_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00979_n01336_α
.Lx01335_0:
 .quad .Lx01335_0_s
.Lx01335_0_s:
 .string "tblasgn"
 xchain00979_n01336_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01337_1
 lea rcx, [rip + .Lx01337_3]
 lea rdx, [rip + .Lx01337_4]
 jmp rax
.Lx01337_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01337_2
.Lx01337_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01337_2
.Lx01337_1:
 call rt_faildescr@PLT
.Lx01337_2:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain00979_n01338_α
 jmp xchain00979_n01338_α
 xchain00979_n01336_β:
 jmp xchain00979_n01338_α
.Lx01337_0:
 .quad .Lx01337_0_s
.Lx01337_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01338_α:
 mov rdi, qword ptr [rip + .Lx01339_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00979_n00054_α
.Lx01339_0:
 .quad .Lx01339_0_s
.Lx01339_0_s:
 .string "recconstr"
 xchain00979_n00054_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01340_1
 lea rcx, [rip + .Lx01340_3]
 lea rdx, [rip + .Lx01340_4]
 jmp rax
.Lx01340_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01340_2
.Lx01340_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01340_2
.Lx01340_1:
 call rt_faildescr@PLT
.Lx01340_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain00979_n01341_α
 jmp xchain00979_n01341_α
 xchain00979_n00054_β:
 jmp xchain00979_n01341_α
.Lx01340_0:
 .quad .Lx01340_0_s
.Lx01340_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01341_α:
 mov rdi, qword ptr [rip + .Lx01342_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00979_n00055_α
.Lx01342_0:
 .quad .Lx01342_0_s
.Lx01342_0_s:
 .string "reccopy"
 xchain00979_n00055_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01343_1
 lea rcx, [rip + .Lx01343_3]
 lea rdx, [rip + .Lx01343_4]
 jmp rax
.Lx01343_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01343_2
.Lx01343_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01343_2
.Lx01343_1:
 call rt_faildescr@PLT
.Lx01343_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00979_n00056_α
 jmp xchain00979_n00056_α
 xchain00979_n00055_β:
 jmp xchain00979_n00056_α
.Lx01343_0:
 .quad .Lx01343_0_s
.Lx01343_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00056_α:
 mov rdi, qword ptr [rip + .Lx01344_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00979_n01345_α
.Lx01344_0:
 .quad .Lx01344_0_s
.Lx01344_0_s:
 .string "recfield"
 xchain00979_n01345_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01346_1
 lea rcx, [rip + .Lx01346_3]
 lea rdx, [rip + .Lx01346_4]
 jmp rax
.Lx01346_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01346_2
.Lx01346_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01346_2
.Lx01346_1:
 call rt_faildescr@PLT
.Lx01346_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain00979_n01347_α
 jmp xchain00979_n01347_α
 xchain00979_n01345_β:
 jmp xchain00979_n01347_α
.Lx01346_0:
 .quad .Lx01346_0_s
.Lx01346_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01347_α:
 mov rdi, qword ptr [rip + .Lx01348_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00979_n01349_α
.Lx01348_0:
 .quad .Lx01348_0_s
.Lx01348_0_s:
 .string "bigfield"
 xchain00979_n01349_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01350_1
 lea rcx, [rip + .Lx01350_3]
 lea rdx, [rip + .Lx01350_4]
 jmp rax
.Lx01350_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01350_2
.Lx01350_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01350_2
.Lx01350_1:
 call rt_faildescr@PLT
.Lx01350_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00979_n01351_α
 jmp xchain00979_n01351_α
 xchain00979_n01349_β:
 jmp xchain00979_n01351_α
.Lx01350_0:
 .quad .Lx01350_0_s
.Lx01350_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01351_α:
 mov rdi, qword ptr [rip + .Lx01352_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00979_n01353_α
.Lx01352_0:
 .quad .Lx01352_0_s
.Lx01352_0_s:
 .string "readz"
 xchain00979_n01353_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01354_1
 lea rcx, [rip + .Lx01354_3]
 lea rdx, [rip + .Lx01354_4]
 jmp rax
.Lx01354_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01354_2
.Lx01354_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01354_2
.Lx01354_1:
 call rt_faildescr@PLT
.Lx01354_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain00979_n01355_α
 jmp xchain00979_n01355_α
 xchain00979_n01353_β:
 jmp xchain00979_n01355_α
.Lx01354_0:
 .quad .Lx01354_0_s
.Lx01354_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01355_α:
 mov rdi, qword ptr [rip + .Lx01356_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00979_n00057_α
.Lx01356_0:
 .quad .Lx01356_0_s
.Lx01356_0_s:
 .string "writecon"
 xchain00979_n00057_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01357_1
 lea rcx, [rip + .Lx01357_3]
 lea rdx, [rip + .Lx01357_4]
 jmp rax
.Lx01357_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01357_2
.Lx01357_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01357_2
.Lx01357_1:
 call rt_faildescr@PLT
.Lx01357_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain00979_n00058_α
 jmp xchain00979_n00058_α
 xchain00979_n00057_β:
 jmp xchain00979_n00058_α
.Lx01357_0:
 .quad .Lx01357_0_s
.Lx01357_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00058_α:
 mov rdi, qword ptr [rip + .Lx01358_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00979_n01359_α
.Lx01358_0:
 .quad .Lx01358_0_s
.Lx01358_0_s:
 .string "writestr"
 xchain00979_n01359_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01360_1
 lea rcx, [rip + .Lx01360_3]
 lea rdx, [rip + .Lx01360_4]
 jmp rax
.Lx01360_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01360_2
.Lx01360_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01360_2
.Lx01360_1:
 call rt_faildescr@PLT
.Lx01360_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00979_n01361_α
 jmp xchain00979_n01361_α
 xchain00979_n01359_β:
 jmp xchain00979_n01361_α
.Lx01360_0:
 .quad .Lx01360_0_s
.Lx01360_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01361_α:
 mov rdi, qword ptr [rip + .Lx01362_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00979_n01363_α
.Lx01362_0:
 .quad .Lx01362_0_s
.Lx01362_0_s:
 .string "cxcreate"
 xchain00979_n01363_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01364_1
 lea rcx, [rip + .Lx01364_3]
 lea rdx, [rip + .Lx01364_4]
 jmp rax
.Lx01364_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01364_2
.Lx01364_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01364_2
.Lx01364_1:
 call rt_faildescr@PLT
.Lx01364_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00979_n00059_α
 jmp xchain00979_n00059_α
 xchain00979_n01363_β:
 jmp xchain00979_n00059_α
.Lx01364_0:
 .quad .Lx01364_0_s
.Lx01364_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n00059_α:
 mov rdi, qword ptr [rip + .Lx01365_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00979_n00060_α
.Lx01365_0:
 .quad .Lx01365_0_s
.Lx01365_0_s:
 .string "cxget"
 xchain00979_n00060_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01366_1
 lea rcx, [rip + .Lx01366_3]
 lea rdx, [rip + .Lx01366_4]
 jmp rax
.Lx01366_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01366_2
.Lx01366_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01366_2
.Lx01366_1:
 call rt_faildescr@PLT
.Lx01366_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00979_n01367_α
 jmp xchain00979_n01367_α
 xchain00979_n00060_β:
 jmp xchain00979_n01367_α
.Lx01366_0:
 .quad .Lx01366_0_s
.Lx01366_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01367_α:
 mov rdi, qword ptr [rip + .Lx01368_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00979_n01369_α
.Lx01368_0:
 .quad .Lx01368_0_s
.Lx01368_0_s:
 .string "nothing"
 xchain00979_n01369_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01370_1
 lea rcx, [rip + .Lx01370_3]
 lea rdx, [rip + .Lx01370_4]
 jmp rax
.Lx01370_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01370_2
.Lx01370_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01370_2
.Lx01370_1:
 call rt_faildescr@PLT
.Lx01370_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00979_n01371_α
 jmp xchain00979_n01371_α
 xchain00979_n01369_β:
 jmp xchain00979_n01371_α
.Lx01370_0:
 .quad .Lx01370_0_s
.Lx01370_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01371_α:
 mov rdi, qword ptr [rip + .Lx01372_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00979_n00061_α
.Lx01372_0:
 .quad .Lx01372_0_s
.Lx01372_0_s:
 .string "nothing"
 xchain00979_n00061_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01373_1
 lea rcx, [rip + .Lx01373_3]
 lea rdx, [rip + .Lx01373_4]
 jmp rax
.Lx01373_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01373_2
.Lx01373_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01373_2
.Lx01373_1:
 call rt_faildescr@PLT
.Lx01373_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00979_n01374_α
 jmp xchain00979_n01374_α
 xchain00979_n00061_β:
 jmp xchain00979_n01374_α
.Lx01373_0:
 .quad .Lx01373_0_s
.Lx01373_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain00979_n01374_α:
 mov rdi, qword ptr [rip + .Lx01375_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00979_n00062_α
.Lx01375_0:
 .quad .Lx01375_0_s
.Lx01375_0_s:
 .string "nothing"
 xchain00979_n00062_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx01376_1
 lea rcx, [rip + .Lx01376_3]
 lea rdx, [rip + .Lx01376_4]
 jmp rax
.Lx01376_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx01376_2
.Lx01376_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx01376_2
.Lx01376_1:
 call rt_faildescr@PLT
.Lx01376_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain00979_n00063_α
 jmp xchain00979_n00063_α
 xchain00979_n00062_β:
 jmp xchain00979_n00063_α
.Lx01376_0:
 .quad .Lx01376_0_s
.Lx01376_0_s:
 .string "report"
# KEYWORD_read
 xchain00979_n00063_α:
 mov rdi, qword ptr [rip + .Lx01377_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je main_ω
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00979_n01378_α
 xchain00979_n00063_β:
 jmp main_ω
.Lx01377_0:
 .quad .Lx01377_0_s
.Lx01377_0_s:
 .string "&errout"
 xchain00979_n01378_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn3710: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3710]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00979_n01378_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 11528]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 11528]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
