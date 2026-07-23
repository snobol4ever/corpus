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
  mov qword ptr [rsp + 776], rsp
  mov rdi, rsp
  mov esi, 768
  mov edx, 800
  call rt_jmp_frame_lexprep2@PLT
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
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 368]
 call proc_measure_dcα
 jmp .Lx15_2
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
proc_report_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 848
 mov qword ptr [rsp + 840], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 800], r11
 lea rax, [rip + .Lx30_2]
 mov qword ptr [rbp + 808], rax
 lea rax, [rip + .Lx30_3]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 776], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 768
 mov edx, 800
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_report_α_body
.Lx30_2:
 mov rdx, qword ptr [rsp + -848]
 mov rcx, rsp
 add rcx, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx30_3:
 mov rdi, qword ptr [rsp + -848]
 mov rsi, rsp
 add rsi, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 2792], rsp
  mov rdi, rsp
  mov esi, 2784
  mov edx, 2880
  call rt_jmp_frame_lexprep2@PLT
proc_measure_α_body:
# IR_VAR
 xchain31_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2648], rax
 jmp xchain31_n1_α
# IR_LIT_INTEGER
 xchain31_n1_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain31_n3_α
.Lx34_0:
 .quad 1
# IR_LIT_INTEGER
 xchain31_n2_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain31_n4_α
.Lx35_0:
 .quad 1
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain31_n3_α:
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
 je .Lx37_7
 lea rcx, [rip + .Lx37_3]
 lea rdx, [rip + .Lx37_4]
 jmp rax
.Lx37_3:
 mov qword ptr [rbp + 2712], rsp
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx37_5
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx37_2
.Lx37_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx37_2
.Lx37_4:
 mov qword ptr [rbp + 2712], rsp
 mov rax, qword ptr [rbp + 2704]
 test rax, rax
 jne .Lx37_6
 mov qword ptr [rbp + 2704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx37_2
.Lx37_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx37_2
.Lx37_7:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 lea rdx, [rbp + 2688]
 mov ecx, 1
 lea r8, [rbp + 2704]
 call rt_call_value_gen_h@PLT
.Lx37_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain31_n2_α
 jmp xchain31_n2_α
 xchain31_n3_β:
 mov rax, qword ptr [rbp + 2704]
 cmp rax, 1
 jne .Lx37_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2712]
 jmp qword ptr [rsp]
.Lx37_8:
 lea rdi, [rbp + 2704]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain31_n2_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain31_n2_α
 jmp xchain31_n2_α
 xchain31_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain31_n5_α
# KEYWORD_read
 xchain31_n5_α:
 mov rdi, qword ptr [rip + .Lx39_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain31_n7_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain31_n6_α
 xchain31_n5_β:
 jmp xchain31_n7_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "&time"
 xchain31_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain31_n7_α
# IR_VAR
 xchain31_n7_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2488], rax
 jmp xchain31_n8_α
# IR_LIT_INTEGER
 xchain31_n8_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain31_n10_α
.Lx43_0:
 .quad 10
# IR_VAR
 xchain31_n9_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2376], rax
 jmp xchain31_n11_α
# IR_COERCE_NUMERIC
 xchain31_n10_α:
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
 jmp xchain31_n13_α
.Lx47_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 2512]
 lea rdx, [rbp + 2448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n13_α
 xchain31_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain31_n12_α
# IR_VAR
 xchain31_n12_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 2216], rax
 jmp xchain31_n14_α
 xchain31_n13_α:
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
 jmp xchain31_n16_α
.Lx51_0:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 lea r9, [rbp + 2416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n16_α
.Lx51_2:
 mov rdi, qword ptr [rbp + 2448]
 mov rsi, qword ptr [rbp + 2456]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n9_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain31_n16_α
 xchain31_n13_β:
 jmp xchain31_n9_α
# IR_VAR
 xchain31_n14_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2328], rax
 jmp xchain31_n17_α
# KEYWORD_read
 xchain31_n15_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain31_n19_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain31_n18_α
 xchain31_n15_β:
 jmp xchain31_n19_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "&time"
 xchain31_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain31_n9_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain31_n17_α:
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
 je xchain31_n15_α
 jmp xchain31_n15_α
 xchain31_n17_β:
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
 je xchain31_n15_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain31_n15_α
 jmp xchain31_n15_α
 xchain31_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain31_n19_α
# IR_VAR
 xchain31_n19_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2104], rax
 jmp xchain31_n20_α
# IR_VAR
 xchain31_n20_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2136], rax
 jmp xchain31_n22_α
# IR_DISJUNCTION_NARY
 xchain31_n21_α:
 mov qword ptr [rbp + 1712], 0
 mov qword ptr [rbp + 1720], 0
 mov dword ptr [rbp + 1728], 0
 jmp xchain31_n24_α
xchain31_n21_as:
 mov eax, dword ptr [rbp + 1728]
 cmp eax, 0
 jne .Lx64_0
 jmp xchain31_n23_α
.Lx64_0:
 jmp xchain31_n23_α
 xchain31_n21_β:
 mov eax, dword ptr [rbp + 1728]
 jmp xchain31_n7_α
xchain31_n21_af:
 add dword ptr [rbp + 1728], 1
 mov eax, dword ptr [rbp + 1728]
 jmp xchain31_n7_α
# IR_COERCE_NUMERIC
 xchain31_n22_α:
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
 jmp xchain31_n25_α
.Lx66_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 2064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n25_α
 xchain31_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1704], rax
 jmp xchain31_n7_α
xchain31_n23_β:
 jmp xchain31_n7_α
# IR_VAR
 xchain31_n24_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1784], rax
 jmp xchain31_n26_α
 xchain31_n24_β:
 jmp xchain31_n21_af
# IR_COERCE_NUMERIC
 xchain31_n25_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx71_1
 cmp eax, 6
 jne .Lx71_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx71_0
.Lx71_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2040], rax
 jmp xchain31_n27_α
.Lx71_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 2032]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n27_α
# IR_VAR
 xchain31_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1880], rax
 jmp xchain31_n28_α
 xchain31_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [rbp + 2064]
 cmp eax, 6
 jne .Lx74_2
 mov eax, dword ptr [rbp + 2032]
 cmp eax, 6
 jne .Lx74_2
.Lx74_1:
 mov rax, qword ptr [rbp + 2072]
 mov rcx, qword ptr [rbp + 2040]
 sub rax, rcx
 mov qword ptr [rbp + 2000], 6
 mov qword ptr [rbp + 2008], rax
 jmp xchain31_n29_α
.Lx74_0:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 lea r9, [rbp + 2000]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n29_α
.Lx74_2:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n21_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain31_n29_α
 xchain31_n27_β:
 jmp xchain31_n21_α
# IR_LIT_INTEGER
 xchain31_n28_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain31_n30_α
.Lx75_0:
 .quad 20
 xchain31_n29_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1976], rax
  .section .rodata
  .Lrkfn77: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn77]
 lea rsi, [rbp + 1968]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain31_n21_α
 jmp xchain31_n31_α
 xchain31_n29_β:
 jmp xchain31_n21_α
# IR_COERCE_NUMERIC
 xchain31_n30_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx79_1
 cmp eax, 6
 jne .Lx79_0
 mov eax, dword ptr [rbp + 1904]
 cmp eax, 6
 jne .Lx79_0
.Lx79_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1848], rax
 jmp xchain31_n32_α
.Lx79_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1904]
 lea rdx, [rbp + 1840]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n32_α
 xchain31_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain31_n21_α
 xchain31_n32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 100
 je .Lx81_0
 mov eax, dword ptr [rbp + 1840]
 cmp eax, 6
 jne .Lx81_2
.Lx81_1:
 mov rax, qword ptr [rbp + 1848]
 mov rcx, 20
 cqo
 idiv rcx
 mov qword ptr [rbp + 1808], 6
 mov qword ptr [rbp + 1816], rax
 jmp xchain31_n33_α
.Lx81_0:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 lea r9, [rbp + 1808]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n33_α
.Lx81_2:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n21_af
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain31_n33_α
 xchain31_n32_β:
 jmp xchain31_n21_af
 xchain31_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 100
 je .Lx82_0
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 100
 je .Lx82_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx82_2
 mov eax, dword ptr [rbp + 1808]
 cmp eax, 6
 jne .Lx82_2
.Lx82_1:
 mov rax, qword ptr [rbp + 2840]
 mov rcx, qword ptr [rbp + 1816]
 cmp rax, rcx
 jl xchain31_n21_af
 mov rcx, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rcx
 mov rcx, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rcx
 jmp xchain31_n34_α
.Lx82_0:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 lea r9, [rbp + 1744]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx82_1
 cmp eax, 1
 je xchain31_n21_af
 jmp xchain31_n34_α
.Lx82_2:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain31_n21_af
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
 jmp xchain31_n34_α
# IR_LIT_REAL
 xchain31_n34_α:
 mov qword ptr [rbp + 1520], 7
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain31_n35_α
.Lx83_0:
 .quad 4607632778762754458
# IR_VAR
 xchain31_n35_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1560], rax
 jmp xchain31_n36_α
# IR_COERCE_NUMERIC
 xchain31_n36_α:
 mov eax, dword ptr [rbp + 2848]
 cmp eax, 7
 je .Lx87_1
 cmp eax, 6
 jne .Lx87_0
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 6
 jne .Lx87_0
.Lx87_1:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 1496], rax
 jmp xchain31_n38_α
.Lx87_0:
 lea rdi, [rbp + 2848]
 lea rsi, [rbp + 1520]
 lea rdx, [rbp + 1488]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n38_α
 xchain31_n37_α:
# BOX IR_CALL collect(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn89: .string "collect"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn89]
 lea rsi, [rbp + 1184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain31_n39_α
 jmp xchain31_n39_α
 xchain31_n37_β:
 jmp xchain31_n39_α
 xchain31_n38_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1520]
 mov rsi, qword ptr [rbp + 1528]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n37_α
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain31_n40_α
# KEYWORD_read
 xchain31_n39_α:
 mov rdi, qword ptr [rip + .Lx91_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain31_n43_α
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain31_n41_α
 xchain31_n39_β:
 jmp xchain31_n43_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "&time"
# IR_VAR
 xchain31_n40_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1592], rax
 jmp xchain31_n42_α
 xchain31_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain31_n43_α
# IR_COERCE_NUMERIC
 xchain31_n42_α:
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 7
 je .Lx96_1
 cmp eax, 6
 jne .Lx96_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx96_0
.Lx96_1:
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
 jmp xchain31_n44_α
.Lx96_0:
 lea rdi, [rbp + 1456]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 1424]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n44_α
# IR_VAR
 xchain31_n43_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 1064], rax
 jmp xchain31_n45_α
# IR_COERCE_NUMERIC
 xchain31_n44_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx00001_1
 cmp eax, 6
 jne .Lx00001_0
 mov eax, dword ptr [rbp + 1456]
 cmp eax, 6
 jne .Lx00001_0
.Lx00001_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1400], rax
 jmp xchain31_n46_α
.Lx00001_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 1456]
 lea rdx, [rbp + 1392]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n46_α
# KEYWORD_read
 xchain31_n45_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain31_n43_α
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain31_n47_α
 xchain31_n45_β:
 jmp xchain31_n43_α
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "&time"
 xchain31_n46_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 100
 je .Lx00003_0
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 6
 jne .Lx00003_2
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 6
 jne .Lx00003_2
.Lx00003_1:
 mov rax, qword ptr [rbp + 1432]
 mov rcx, qword ptr [rbp + 1400]
 imul rax, rcx
 mov qword ptr [rbp + 1360], 6
 mov qword ptr [rbp + 1368], rax
 jmp xchain31_n48_α
.Lx00003_0:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 mov r8d, 2
 lea r9, [rbp + 1360]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n48_α
.Lx00003_2:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n37_α
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain31_n48_α
 xchain31_n46_β:
 jmp xchain31_n37_α
 xchain31_n47_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00004_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00004_2
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00004_2
.Lx00004_1:
 mov rax, qword ptr [rbp + 2824]
 mov rcx, qword ptr [rbp + 1096]
 cmp rax, rcx
 je xchain31_n43_α
 mov rcx, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rcx
 mov rcx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rcx
 jmp xchain31_n49_α
.Lx00004_0:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 10
 lea r9, [rbp + 1024]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00004_1
 cmp eax, 1
 je xchain31_n43_α
 jmp xchain31_n49_α
.Lx00004_2:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 mov r8d, 10
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain31_n43_α
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
 jmp xchain31_n49_α
# IR_VAR
 xchain31_n48_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 1672], rax
 jmp xchain31_n50_α
 xchain31_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain31_n51_α
 xchain31_n50_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn108: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn108]
 lea rsi, [rbp + 1632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain31_n37_α
 jmp xchain31_n52_α
 xchain31_n50_β:
 jmp xchain31_n37_α
# IR_VAR
 xchain31_n51_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 872], rax
 jmp xchain31_n53_α
# IR_COERCE_NUMERIC
 xchain31_n52_α:
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1336], rax
 jmp xchain31_n55_α
.Lx00005_0:
 lea rdi, [rbp + 1360]
 lea rsi, [rbp + 1616]
 lea rdx, [rbp + 1328]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n55_α
# IR_VAR
 xchain31_n53_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 984], rax
 jmp xchain31_n56_α
# KEYWORD_read
 xchain31_n54_α:
 mov rdi, qword ptr [rip + .Lx00006_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain31_n59_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain31_n57_α
 xchain31_n54_β:
 jmp xchain31_n59_α
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain31_n55_α:
 mov eax, dword ptr [rbp + 1616]
 cmp eax, 7
 je .Lx00007_1
 cmp eax, 6
 jne .Lx00007_0
 mov eax, dword ptr [rbp + 1360]
 cmp eax, 6
 jne .Lx00007_0
.Lx00007_1:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1304], rax
 jmp xchain31_n58_α
.Lx00007_0:
 lea rdi, [rbp + 1616]
 lea rsi, [rbp + 1360]
 lea rdx, [rbp + 1296]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n58_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain31_n56_α:
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
 je .Lx00008_7
 lea rcx, [rip + .Lx00008_3]
 lea rdx, [rip + .Lx00008_4]
 jmp rax
.Lx00008_3:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00008_5
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00008_2
.Lx00008_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00008_2
.Lx00008_4:
 mov qword ptr [rbp + 936], rsp
 mov rax, qword ptr [rbp + 928]
 test rax, rax
 jne .Lx00008_6
 mov qword ptr [rbp + 928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00008_2
.Lx00008_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00008_2
.Lx00008_7:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 lea rdx, [rbp + 912]
 mov ecx, 1
 lea r8, [rbp + 928]
 call rt_call_value_gen_h@PLT
.Lx00008_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain31_n54_α
 jmp xchain31_n54_α
 xchain31_n56_β:
 mov rax, qword ptr [rbp + 928]
 cmp rax, 1
 jne .Lx00008_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 936]
 jmp qword ptr [rsp]
.Lx00008_8:
 lea rdi, [rbp + 928]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain31_n54_α
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain31_n54_α
 jmp xchain31_n54_α
 xchain31_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain31_n59_α
 xchain31_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 1328]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [rbp + 1296]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [rbp + 1336]
 mov rcx, qword ptr [rbp + 1304]
 cqo
 idiv rcx
 mov qword ptr [rbp + 1264], 6
 mov qword ptr [rbp + 1272], rax
 jmp xchain31_n60_α
.Lx00009_0:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 lea r9, [rbp + 1264]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n60_α
.Lx00009_2:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n37_α
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain31_n60_α
 xchain31_n58_β:
 jmp xchain31_n37_α
# IR_VAR
 xchain31_n59_α:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 760], rax
 jmp xchain31_n61_α
 xchain31_n60_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn125: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn125]
 lea rsi, [rbp + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain31_n37_α
 jmp xchain31_n63_α
 xchain31_n60_β:
 jmp xchain31_n37_α
# IR_VAR
 xchain31_n61_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 792], rax
 jmp xchain31_n64_α
# IR_VAR
 xchain31_n62_α:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 488], rax
 jmp xchain31_n65_α
 xchain31_n63_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain31_n37_α
# IR_COERCE_NUMERIC
 xchain31_n64_α:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 7
 je .Lx00010_1
 cmp eax, 6
 jne .Lx00010_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00010_0
.Lx00010_1:
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 728], rax
 jmp xchain31_n67_α
.Lx00010_0:
 lea rdi, [rbp + 2864]
 lea rsi, [rbp + 2816]
 lea rdx, [rbp + 720]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n67_α
# IR_VAR
 xchain31_n65_α:
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 568], rax
 jmp xchain31_n68_α
# IR_VAR
 xchain31_n66_α:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 280], rax
 jmp xchain31_n69_α
# IR_COERCE_NUMERIC
 xchain31_n67_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00011_1
 cmp eax, 6
 jne .Lx00011_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00011_0
.Lx00011_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 696], rax
 jmp xchain31_n71_α
.Lx00011_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 2864]
 lea rdx, [rbp + 688]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n71_α
 xchain31_n68_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn140: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn140]
 lea rsi, [rbp + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain31_n66_α
 jmp xchain31_n72_α
 xchain31_n68_β:
 jmp xchain31_n66_α
# IR_LIT_INTEGER
 xchain31_n69_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain31_n73_α
.Lx00012_0:
 .quad 1000000
# IR_VAR
 xchain31_n70_α:
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 56], rax
 jmp xchain31_n74_α
 xchain31_n71_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [rbp + 688]
 cmp eax, 100
 je .Lx00013_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx00013_2
 mov eax, dword ptr [rbp + 688]
 cmp eax, 6
 jne .Lx00013_2
.Lx00013_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, qword ptr [rbp + 696]
 sub rax, rcx
 mov qword ptr [rbp + 656], 6
 mov qword ptr [rbp + 664], rax
 jmp xchain31_n75_α
.Lx00013_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 lea r9, [rbp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n75_α
.Lx00013_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n62_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain31_n75_α
 xchain31_n71_β:
 jmp xchain31_n62_α
# IR_COERCE_NUMERIC
 xchain31_n72_α:
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 7
 je .Lx00014_1
 cmp eax, 6
 jne .Lx00014_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00014_0
.Lx00014_1:
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 456], rax
 jmp xchain31_n76_α
.Lx00014_0:
 lea rdi, [rbp + 2832]
 lea rsi, [rbp + 512]
 lea rdx, [rbp + 448]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n76_α
# IR_COERCE_NUMERIC
 xchain31_n73_α:
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 7
 je .Lx00015_1
 cmp eax, 6
 jne .Lx00015_0
 mov eax, dword ptr [rbp + 304]
 cmp eax, 6
 jne .Lx00015_0
.Lx00015_1:
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 248], rax
 jmp xchain31_n77_α
.Lx00015_0:
 lea rdi, [rbp + 2816]
 lea rsi, [rbp + 304]
 lea rdx, [rbp + 240]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n77_α
# IR_RETURN
 xchain31_n74_α:
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_measure_γ
 xchain31_n75_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn151: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn151]
 lea rsi, [rbp + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain31_n62_α
 jmp xchain31_n78_α
 xchain31_n75_β:
 jmp xchain31_n62_α
# IR_COERCE_NUMERIC
 xchain31_n76_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 7
 je .Lx00016_1
 cmp eax, 6
 jne .Lx00016_0
 mov eax, dword ptr [rbp + 2832]
 cmp eax, 6
 jne .Lx00016_0
.Lx00016_1:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 424], rax
 jmp xchain31_n79_α
.Lx00016_0:
 lea rdi, [rbp + 512]
 lea rsi, [rbp + 2832]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n79_α
 xchain31_n77_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00017_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00017_2
.Lx00017_1:
 mov rax, qword ptr [rbp + 248]
 mov rcx, 1000000
 imul rax, rcx
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain31_n80_α
.Lx00017_0:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 lea r9, [rbp + 208]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n80_α
.Lx00017_2:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n70_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain31_n80_α
 xchain31_n77_β:
 jmp xchain31_n70_α
 xchain31_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain31_n62_α
 xchain31_n79_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 448]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00018_0
 mov eax, dword ptr [rbp + 448]
 cmp eax, 6
 jne .Lx00018_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00018_2
.Lx00018_1:
 mov rax, qword ptr [rbp + 456]
 mov rcx, qword ptr [rbp + 424]
 cqo
 idiv rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain31_n81_α
.Lx00018_0:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain31_n81_α
.Lx00018_2:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n66_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain31_n81_α
 xchain31_n79_β:
 jmp xchain31_n66_α
# IR_LIT_REAL
 xchain31_n80_α:
 mov qword ptr [rbp + 336], 7
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain31_n82_α
.Lx00019_0:
 .quad 4602678819172646912
 xchain31_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain31_n66_α
# IR_COERCE_NUMERIC
 xchain31_n82_α:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 7
 je .Lx00020_1
 cmp eax, 6
 jne .Lx00020_0
 mov eax, dword ptr [rbp + 336]
 cmp eax, 6
 jne .Lx00020_0
.Lx00020_1:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain31_n83_α
.Lx00020_0:
 lea rdi, [rbp + 208]
 lea rsi, [rbp + 336]
 lea rdx, [rbp + 176]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain31_n83_α
 xchain31_n83_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain31_n70_α
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain31_n84_α
 xchain31_n84_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn163: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn163]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain31_n70_α
 jmp xchain31_n85_α
 xchain31_n84_β:
 jmp xchain31_n70_α
 xchain31_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain31_n70_α
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
proc_measure_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2928
 mov qword ptr [rsp + 2920], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2880], r11
 lea rax, [rip + .Lx00021_2]
 mov qword ptr [rbp + 2888], rax
 lea rax, [rip + .Lx00021_3]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2792], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 2784
 mov edx, 2880
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_measure_α_body
.Lx00021_2:
 mov rdx, qword ptr [rsp + -2928]
 mov rcx, rsp
 add rcx, -2912
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00021_3:
 mov rdi, qword ptr [rsp + -2928]
 mov rsi, rsp
 add rsi, -2912
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 304
  mov edx, 320
  call rt_jmp_frame_lexprep2@PLT
proc_nothing_α_body:
# IR_DISJUNCTION_NARY
 xchain00022_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00022_n2_α
xchain00022_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00023_0
 jmp xchain00022_n1_α
.Lx00023_0:
 jmp xchain00022_n1_α
 xchain00022_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00022_n1_α
xchain00022_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00022_n1_α
# IR_LIT_INTEGER
 xchain00022_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00022_n3_α
.Lx00024_0:
 .quad 1
# IR_VAR
 xchain00022_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00022_n4_α
 xchain00022_n2_β:
 jmp xchain00022_n0_af
# IR_VAR
 xchain00022_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00022_n5_α
# IR_UNOP
 xchain00022_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00022_n0_af
 cmp eax, 0
 jne xchain00022_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00022_n6_α
# IR_TO
 xchain00022_n5_α:
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
.Lx00025_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nothing_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00022_n7_α
 xchain00022_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00025_0
# IR_LIT_STRING
 xchain00022_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00022_n8_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "nothing"
# IR_BOUND
 xchain00022_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00022_n9_α
# IR_RETURN
 xchain00022_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nothing_γ
# IR_UNMARK
 xchain00022_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00022_n5_β
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
proc_nothing_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 368
 mov qword ptr [rsp + 360], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 320], r11
 lea rax, [rip + .Lx00027_2]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + .Lx00027_3]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 312], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 304
 mov edx, 320
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nothing_α_body
.Lx00027_2:
 mov rdx, qword ptr [rsp + -368]
 mov rcx, rsp
 add rcx, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00027_3:
 mov rdi, qword ptr [rsp + -368]
 mov rsi, rsp
 add rsi, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 304
  mov edx, 320
  call rt_jmp_frame_lexprep2@PLT
proc_uplus_α_body:
# IR_DISJUNCTION_NARY
 xchain00028_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00028_n2_α
xchain00028_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00029_0
 jmp xchain00028_n1_α
.Lx00029_0:
 jmp xchain00028_n1_α
 xchain00028_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00028_n1_α
xchain00028_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00028_n1_α
# IR_LIT_INTEGER
 xchain00028_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00028_n3_α
.Lx00030_0:
 .quad 1
# IR_VAR
 xchain00028_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00028_n4_α
 xchain00028_n2_β:
 jmp xchain00028_n0_af
# IR_VAR
 xchain00028_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00028_n5_α
# IR_UNOP
 xchain00028_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00028_n0_af
 cmp eax, 0
 jne xchain00028_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00028_n6_α
# IR_TO
 xchain00028_n5_α:
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
.Lx00031_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplus_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00028_n7_α
 xchain00028_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00031_0
# IR_LIT_STRING
 xchain00028_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00028_n8_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "+407"
# IR_BOUND
 xchain00028_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00028_n9_α
# IR_RETURN
 xchain00028_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplus_γ
# IR_UNMARK
 xchain00028_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00028_n5_β
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
proc_uplus_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 368
 mov qword ptr [rsp + 360], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 320], r11
 lea rax, [rip + .Lx00033_2]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + .Lx00033_3]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 312], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 304
 mov edx, 320
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_uplus_α_body
.Lx00033_2:
 mov rdx, qword ptr [rsp + -368]
 mov rcx, rsp
 add rcx, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00033_3:
 mov rdi, qword ptr [rsp + -368]
 mov rsi, rsp
 add rsi, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 304
  mov edx, 320
  call rt_jmp_frame_lexprep2@PLT
proc_uplusr_α_body:
# IR_DISJUNCTION_NARY
 xchain00034_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00034_n2_α
xchain00034_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00035_0
 jmp xchain00034_n1_α
.Lx00035_0:
 jmp xchain00034_n1_α
 xchain00034_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00034_n1_α
xchain00034_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00034_n1_α
# IR_LIT_INTEGER
 xchain00034_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00034_n3_α
.Lx00036_0:
 .quad 1
# IR_VAR
 xchain00034_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00034_n4_α
 xchain00034_n2_β:
 jmp xchain00034_n0_af
# IR_VAR
 xchain00034_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00034_n5_α
# IR_UNOP
 xchain00034_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00034_n0_af
 cmp eax, 0
 jne xchain00034_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00034_n6_α
# IR_TO
 xchain00034_n5_α:
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
.Lx00037_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_uplusr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00034_n7_α
 xchain00034_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00037_0
# IR_LIT_STRING
 xchain00034_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00034_n8_α
.Lx00038_0:
 .quad .Lx00038_0_s
.Lx00038_0_s:
 .string "+7.25"
# IR_BOUND
 xchain00034_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00034_n9_α
# IR_RETURN
 xchain00034_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uplusr_γ
# IR_UNMARK
 xchain00034_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00034_n5_β
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
proc_uplusr_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 368
 mov qword ptr [rsp + 360], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 320], r11
 lea rax, [rip + .Lx00039_2]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + .Lx00039_3]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 312], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 304
 mov edx, 320
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_uplusr_α_body
.Lx00039_2:
 mov rdx, qword ptr [rsp + -368]
 mov rcx, rsp
 add rcx, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00039_3:
 mov rdi, qword ptr [rsp + -368]
 mov rsi, rsp
 add rsi, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_absf_α_body:
# IR_DISJUNCTION_NARY
 xchain00040_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00040_n2_α
xchain00040_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00041_0
 jmp xchain00040_n1_α
.Lx00041_0:
 jmp xchain00040_n1_α
 xchain00040_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00040_n1_α
xchain00040_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00040_n1_α
# IR_LIT_INTEGER
 xchain00040_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00040_n3_α
.Lx00042_0:
 .quad 1
# IR_VAR
 xchain00040_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00040_n4_α
 xchain00040_n2_β:
 jmp xchain00040_n0_af
# IR_VAR
 xchain00040_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00040_n5_α
# IR_UNOP
 xchain00040_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00040_n0_af
 cmp eax, 0
 jne xchain00040_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00040_n6_α
# IR_TO
 xchain00040_n5_α:
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
.Lx00043_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_absf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00040_n7_α
 xchain00040_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00043_0
# IR_LIT_STRING
 xchain00040_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00040_n8_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "abs(-3)"
# IR_BOUND
 xchain00040_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00040_n9_α
# IR_RETURN
 xchain00040_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_absf_γ
# IR_LIT_INTEGER
 xchain00040_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00040_n10_α
.Lx00045_0:
 .quad 18446744073709551613
 xchain00040_n10_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn237: .string "abs"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn237]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00040_n11_α
 jmp xchain00040_n11_α
 xchain00040_n10_β:
 jmp xchain00040_n11_α
# IR_UNMARK
 xchain00040_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00040_n5_β
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
proc_absf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00046_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00046_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_absf_α_body
.Lx00046_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00046_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 304
  mov edx, 320
  call rt_jmp_frame_lexprep2@PLT
proc_intadd_α_body:
# IR_DISJUNCTION_NARY
 xchain00047_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00047_n2_α
xchain00047_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00048_0
 jmp xchain00047_n1_α
.Lx00048_0:
 jmp xchain00047_n1_α
 xchain00047_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00047_n1_α
xchain00047_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00047_n1_α
# IR_LIT_INTEGER
 xchain00047_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00047_n3_α
.Lx00049_0:
 .quad 1
# IR_VAR
 xchain00047_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00047_n4_α
 xchain00047_n2_β:
 jmp xchain00047_n0_af
# IR_VAR
 xchain00047_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00047_n5_α
# IR_UNOP
 xchain00047_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00047_n0_af
 cmp eax, 0
 jne xchain00047_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00047_n6_α
# IR_TO
 xchain00047_n5_α:
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
.Lx00050_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intadd_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00047_n7_α
 xchain00047_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00050_0
# IR_LIT_STRING
 xchain00047_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00047_n8_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "4 + 7"
# IR_BOUND
 xchain00047_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00047_n9_α
# IR_RETURN
 xchain00047_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intadd_γ
# IR_UNMARK
 xchain00047_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00047_n5_β
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
proc_intadd_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 368
 mov qword ptr [rsp + 360], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 320], r11
 lea rax, [rip + .Lx00052_2]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + .Lx00052_3]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 312], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 304
 mov edx, 320
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_intadd_α_body
.Lx00052_2:
 mov rdx, qword ptr [rsp + -368]
 mov rcx, rsp
 add rcx, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00052_3:
 mov rdi, qword ptr [rsp + -368]
 mov rsi, rsp
 add rsi, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_intcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00053_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00053_n2_α
xchain00053_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00054_0
 jmp xchain00053_n1_α
.Lx00054_0:
 jmp xchain00053_n1_α
 xchain00053_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00053_n1_α
xchain00053_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00053_n1_α
# IR_LIT_INTEGER
 xchain00053_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00053_n3_α
.Lx00055_0:
 .quad 1
# IR_VAR
 xchain00053_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00053_n4_α
 xchain00053_n2_β:
 jmp xchain00053_n0_af
# IR_VAR
 xchain00053_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00053_n5_α
# IR_UNOP
 xchain00053_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00053_n0_af
 cmp eax, 0
 jne xchain00053_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00053_n6_α
# IR_TO
 xchain00053_n5_α:
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
.Lx00056_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00053_n7_α
 xchain00053_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00056_0
# IR_LIT_STRING
 xchain00053_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00053_n8_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string "4 < 7"
# IR_BOUND
 xchain00053_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00053_n9_α
# IR_RETURN
 xchain00053_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcmp_γ
# IR_LIT_INTEGER
 xchain00053_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00053_n10_α
.Lx00058_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00053_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00053_n11_α
.Lx00059_0:
 .quad 7
 xchain00053_n11_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 208]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 100
 je .Lx00060_0
 mov eax, dword ptr [rbp + 208]
 cmp eax, 6
 jne .Lx00060_2
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00060_2
.Lx00060_1:
 mov rax, qword ptr [rbp + 216]
 mov rcx, qword ptr [rbp + 248]
 cmp rax, rcx
 jge xchain00053_n12_α
 mov rcx, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rcx
 mov rcx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rcx
 jmp xchain00053_n12_α
.Lx00060_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 lea r9, [rbp + 176]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00060_1
 cmp eax, 1
 je xchain00053_n12_α
 jmp xchain00053_n12_α
.Lx00060_2:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00053_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00053_n12_α
# IR_UNMARK
 xchain00053_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00053_n5_β
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
proc_intcmp_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00061_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00061_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_intcmp_α_body
.Lx00061_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00061_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_intpow_α_body:
# IR_DISJUNCTION_NARY
 xchain00062_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00062_n2_α
xchain00062_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00063_0
 jmp xchain00062_n1_α
.Lx00063_0:
 jmp xchain00062_n1_α
 xchain00062_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00062_n1_α
xchain00062_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00062_n1_α
# IR_LIT_INTEGER
 xchain00062_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00062_n3_α
.Lx00064_0:
 .quad 1
# IR_VAR
 xchain00062_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00062_n4_α
 xchain00062_n2_β:
 jmp xchain00062_n0_af
# IR_VAR
 xchain00062_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00062_n5_α
# IR_UNOP
 xchain00062_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00062_n0_af
 cmp eax, 0
 jne xchain00062_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00062_n6_α
# IR_TO
 xchain00062_n5_α:
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
.Lx00065_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intpow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00062_n7_α
 xchain00062_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00065_0
# IR_LIT_STRING
 xchain00062_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00066_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00062_n8_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "4 ^ 7"
# IR_BOUND
 xchain00062_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00062_n9_α
# IR_RETURN
 xchain00062_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intpow_γ
# IR_LIT_INTEGER
 xchain00062_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00062_n10_α
.Lx00067_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00062_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00062_n11_α
.Lx00068_0:
 .quad 7
 xchain00062_n11_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00062_n12_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00062_n12_α
# IR_UNMARK
 xchain00062_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00062_n5_β
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
proc_intpow_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00069_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00069_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_intpow_α_body
.Lx00069_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00069_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_realcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00070_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00070_n2_α
xchain00070_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00071_0
 jmp xchain00070_n1_α
.Lx00071_0:
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00070_n1_α
xchain00070_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00070_n1_α
# IR_LIT_INTEGER
 xchain00070_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00070_n3_α
.Lx00072_0:
 .quad 1
# IR_VAR
 xchain00070_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00070_n4_α
 xchain00070_n2_β:
 jmp xchain00070_n0_af
# IR_VAR
 xchain00070_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00070_n5_α
# IR_UNOP
 xchain00070_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00070_n0_af
 cmp eax, 0
 jne xchain00070_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00070_n6_α
# IR_TO
 xchain00070_n5_α:
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
.Lx00073_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00070_n7_α
 xchain00070_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00073_0
# IR_LIT_STRING
 xchain00070_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00074_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00070_n8_α
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "1.6 < 2.7"
# IR_BOUND
 xchain00070_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00070_n9_α
# IR_RETURN
 xchain00070_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcmp_γ
# IR_LIT_REAL
 xchain00070_n9_α:
 mov qword ptr [rbp + 208], 7
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00070_n10_α
.Lx00075_0:
 .quad 4609884578576439706
# IR_LIT_REAL
 xchain00070_n10_α:
 mov qword ptr [rbp + 240], 7
 mov rax, qword ptr [rip + .Lx00076_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00070_n11_α
.Lx00076_0:
 .quad 4613262278296967578
 xchain00070_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00070_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00070_n12_α
# IR_UNMARK
 xchain00070_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00070_n5_β
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
proc_realcmp_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00077_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00077_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_realcmp_α_body
.Lx00077_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00077_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_cosf_α_body:
# IR_DISJUNCTION_NARY
 xchain00078_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00078_n2_α
xchain00078_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00079_0
 jmp xchain00078_n1_α
.Lx00079_0:
 jmp xchain00078_n1_α
 xchain00078_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00078_n1_α
xchain00078_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00078_n1_α
# IR_LIT_INTEGER
 xchain00078_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00078_n3_α
.Lx00080_0:
 .quad 1
# IR_VAR
 xchain00078_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00078_n4_α
 xchain00078_n2_β:
 jmp xchain00078_n0_af
# IR_VAR
 xchain00078_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00078_n5_α
# IR_UNOP
 xchain00078_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00078_n0_af
 cmp eax, 0
 jne xchain00078_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00078_n6_α
# IR_TO
 xchain00078_n5_α:
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
.Lx00081_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cosf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00078_n7_α
 xchain00078_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00081_0
# IR_LIT_STRING
 xchain00078_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00078_n8_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "cos(0.2)"
# IR_BOUND
 xchain00078_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00078_n9_α
# IR_RETURN
 xchain00078_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cosf_γ
# IR_LIT_REAL
 xchain00078_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00078_n10_α
.Lx00083_0:
 .quad 4596373779694328218
 xchain00078_n10_α:
# BOX IR_CALL cos(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn339: .string "cos"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00078_n11_α
 jmp xchain00078_n11_α
 xchain00078_n10_β:
 jmp xchain00078_n11_α
# IR_UNMARK
 xchain00078_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00078_n5_β
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
proc_cosf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00084_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00084_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_cosf_α_body
.Lx00084_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00084_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_sqrtf_α_body:
# IR_DISJUNCTION_NARY
 xchain00085_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00085_n2_α
xchain00085_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00086_0
 jmp xchain00085_n1_α
.Lx00086_0:
 jmp xchain00085_n1_α
 xchain00085_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00085_n1_α
xchain00085_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00085_n1_α
# IR_LIT_INTEGER
 xchain00085_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00085_n3_α
.Lx00087_0:
 .quad 1
# IR_VAR
 xchain00085_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00085_n4_α
 xchain00085_n2_β:
 jmp xchain00085_n0_af
# IR_VAR
 xchain00085_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00085_n5_α
# IR_UNOP
 xchain00085_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00085_n0_af
 cmp eax, 0
 jne xchain00085_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00085_n6_α
# IR_TO
 xchain00085_n5_α:
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
.Lx00088_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_sqrtf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00085_n7_α
 xchain00085_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00088_0
# IR_LIT_STRING
 xchain00085_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00085_n8_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "sqrt(7.4)"
# IR_BOUND
 xchain00085_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00085_n9_α
# IR_RETURN
 xchain00085_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_sqrtf_γ
# IR_LIT_REAL
 xchain00085_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00085_n10_α
.Lx00090_0:
 .quad 4620017677738023322
 xchain00085_n10_α:
# BOX IR_CALL sqrt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn360: .string "sqrt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn360]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00085_n11_α
 jmp xchain00085_n11_α
 xchain00085_n10_β:
 jmp xchain00085_n11_α
# IR_UNMARK
 xchain00085_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00085_n5_β
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
proc_sqrtf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00091_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00091_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_sqrtf_α_body
.Lx00091_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00091_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_logf_α_body:
# IR_DISJUNCTION_NARY
 xchain00092_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00092_n2_α
xchain00092_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00093_0
 jmp xchain00092_n1_α
.Lx00093_0:
 jmp xchain00092_n1_α
 xchain00092_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00092_n1_α
xchain00092_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00092_n1_α
# IR_LIT_INTEGER
 xchain00092_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00092_n3_α
.Lx00094_0:
 .quad 1
# IR_VAR
 xchain00092_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00092_n4_α
 xchain00092_n2_β:
 jmp xchain00092_n0_af
# IR_VAR
 xchain00092_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00092_n5_α
# IR_UNOP
 xchain00092_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00092_n0_af
 cmp eax, 0
 jne xchain00092_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00092_n6_α
# IR_TO
 xchain00092_n5_α:
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
.Lx00095_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_logf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00092_n7_α
 xchain00092_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00095_0
# IR_LIT_STRING
 xchain00092_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00092_n8_α
.Lx00096_0:
 .quad .Lx00096_0_s
.Lx00096_0_s:
 .string "log(25.,17.)"
# IR_BOUND
 xchain00092_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00092_n9_α
# IR_RETURN
 xchain00092_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_logf_γ
# IR_LIT_REAL
 xchain00092_n9_α:
 mov qword ptr [rbp + 240], 7
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00092_n10_α
.Lx00097_0:
 .quad 4627730092099895296
# IR_LIT_REAL
 xchain00092_n10_α:
 mov qword ptr [rbp + 272], 7
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00092_n11_α
.Lx00098_0:
 .quad 4625478292286210048
 xchain00092_n11_α:
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
  .Lrkfn382: .string "log"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn382]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00092_n12_α
 jmp xchain00092_n12_α
 xchain00092_n11_β:
 jmp xchain00092_n12_α
# IR_UNMARK
 xchain00092_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00092_n5_β
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
proc_logf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00099_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00099_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_logf_α_body
.Lx00099_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00099_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 336
  mov edx, 352
  call rt_jmp_frame_lexprep2@PLT
proc_nullfunc_α_body:
# IR_DISJUNCTION_NARY
 xchain00100_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00100_n2_α
xchain00100_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00101_0
 jmp xchain00100_n1_α
.Lx00101_0:
 jmp xchain00100_n1_α
 xchain00100_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00100_n1_α
xchain00100_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00100_n1_α
# IR_LIT_INTEGER
 xchain00100_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00100_n3_α
.Lx00102_0:
 .quad 1
# IR_VAR
 xchain00100_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00100_n4_α
 xchain00100_n2_β:
 jmp xchain00100_n0_af
# IR_VAR
 xchain00100_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00100_n5_α
# IR_UNOP
 xchain00100_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00100_n0_af
 cmp eax, 0
 jne xchain00100_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00100_n6_α
# IR_TO
 xchain00100_n5_α:
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
.Lx00103_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00100_n7_α
 xchain00100_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00103_0
# IR_LIT_STRING
 xchain00100_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00100_n8_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "p()"
# IR_BOUND
 xchain00100_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00100_n9_α
# IR_RETURN
 xchain00100_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullfunc_γ
 xchain00100_n9_α:
 call proc_nullf_dcα
 jmp .Lx00105_2
.Lx00105_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00100_n10_α
 jmp xchain00100_n10_α
 xchain00100_n9_β:
 jmp xchain00100_n10_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "nullf"
# IR_UNMARK
 xchain00100_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00100_n5_β
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
proc_nullfunc_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 400
 mov qword ptr [rsp + 392], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 352], r11
 lea rax, [rip + .Lx00106_2]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + .Lx00106_3]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 344], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 336
 mov edx, 352
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nullfunc_α_body
.Lx00106_2:
 mov rdx, qword ptr [rsp + -400]
 mov rcx, rsp
 add rcx, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00106_3:
 mov rdi, qword ptr [rsp + -400]
 mov rsi, rsp
 add rsi, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 24], rsp
  mov rdi, rsp
  mov esi, 16
  mov edx, 32
  call rt_jmp_frame_lexprep2@PLT
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
proc_nullf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 80
 mov qword ptr [rsp + 72], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 32], r11
 lea rax, [rip + .Lx00107_2]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + .Lx00107_3]
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 24], rbp
 mov rdi, rbp
 mov esi, 16
 mov edx, 32
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nullf_α_body
.Lx00107_2:
 mov rdx, qword ptr [rsp + -80]
 mov rcx, rsp
 add rcx, -64
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00107_3:
 mov rdi, qword ptr [rsp + -80]
 mov rsi, rsp
 add rsi, -64
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 624
  mov edx, 640
  call rt_jmp_frame_lexprep2@PLT
proc_listcall_α_body:
# IR_DISJUNCTION_NARY
 xchain00108_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00108_n2_α
xchain00108_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00109_0
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
 jmp xchain00108_n1_α
.Lx00109_0:
 jmp xchain00108_n1_α
 xchain00108_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00108_n1_α
xchain00108_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00108_n1_α
# IR_DISJUNCTION_NARY
 xchain00108_n1_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00108_n5_α
xchain00108_n1_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00110_0
 jmp xchain00108_n4_α
.Lx00110_0:
 jmp xchain00108_n4_α
 xchain00108_n1_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00108_n4_α
xchain00108_n1_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00108_n4_α
# IR_VAR_REF
 xchain00108_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052368
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00108_n6_α
 xchain00108_n2_β:
 jmp xchain00108_n0_af
# IR_ASSIGN gva
 xchain00108_n3_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00108_n0_as
 xchain00108_n3_β:
 jmp xchain00108_n1_α
# IR_LIT_INTEGER
 xchain00108_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00108_n7_α
.Lx00111_0:
 .quad 1
# IR_VAR
 xchain00108_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00108_n8_α
 xchain00108_n5_β:
 jmp xchain00108_n1_af
# IR_NULLTEST_VAR
 xchain00108_n6_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain00108_n0_af
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00108_n0_af
 cmp eax, 0
 jne xchain00108_n0_af
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain00108_n9_α
# IR_VAR
 xchain00108_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00108_n10_α
# IR_UNOP
 xchain00108_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00108_n1_af
 cmp eax, 0
 jne xchain00108_n1_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00108_n11_α
# IR_LIT_INTEGER
 xchain00108_n9_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00108_n12_α
.Lx00112_0:
 .quad 1
# IR_TO
 xchain00108_n10_α:
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
.Lx00113_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listcall_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00108_n13_α
 xchain00108_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00113_0
# IR_LIT_STRING
 xchain00108_n11_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00108_n14_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "p ! L"
# IR_ASSIGN_VAR
 xchain00108_n12_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00108_n0_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00108_n15_α
# IR_BOUND
 xchain00108_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00108_n16_α
# IR_RETURN
 xchain00108_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listcall_γ
# IR_MAKE_LIST
 xchain00108_n15_α:
 lea rdi, [rbp + 512]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00108_n3_α
# IR_LIT_STRING
 xchain00108_n16_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00108_n17_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "nullf"
# IR_VAR
 xchain00108_n17_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00108_n18_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00108_n18_α:
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
 je .Lx00116_7
 lea rcx, [rip + .Lx00116_3]
 lea rdx, [rip + .Lx00116_4]
 jmp rax
.Lx00116_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx00116_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00116_2
.Lx00116_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00116_2
.Lx00116_4:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx00116_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00116_2
.Lx00116_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00116_2
.Lx00116_7:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 lea r8, [rbp + 240]
 call rt_call_apply_gen_h@PLT
.Lx00116_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00108_n19_α
 jmp xchain00108_n19_α
 xchain00108_n18_β:
 mov rax, qword ptr [rbp + 240]
 cmp rax, 1
 jne .Lx00116_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx00116_8:
 lea rdi, [rbp + 240]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00108_n19_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00108_n19_α
 jmp xchain00108_n19_α
# IR_UNMARK
 xchain00108_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00108_n10_β
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
proc_listcall_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 688
 mov qword ptr [rsp + 680], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 640], r11
 lea rax, [rip + .Lx00117_2]
 mov qword ptr [rbp + 648], rax
 lea rax, [rip + .Lx00117_3]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 632], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 624
 mov edx, 640
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_listcall_α_body
.Lx00117_2:
 mov rdx, qword ptr [rsp + -688]
 mov rcx, rsp
 add rcx, -672
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00117_3:
 mov rdi, qword ptr [rsp + -688]
 mov rsi, rsp
 add rsi, -672
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_addfunc_α_body:
# IR_DISJUNCTION_NARY
 xchain00118_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00118_n2_α
xchain00118_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00119_0
 jmp xchain00118_n1_α
.Lx00119_0:
 jmp xchain00118_n1_α
 xchain00118_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00118_n1_α
xchain00118_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00118_n1_α
# IR_LIT_INTEGER
 xchain00118_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00118_n3_α
.Lx00120_0:
 .quad 1
# IR_VAR
 xchain00118_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00118_n4_α
 xchain00118_n2_β:
 jmp xchain00118_n0_af
# IR_VAR
 xchain00118_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00118_n5_α
# IR_UNOP
 xchain00118_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00118_n0_af
 cmp eax, 0
 jne xchain00118_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00118_n6_α
# IR_TO
 xchain00118_n5_α:
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
.Lx00121_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_addfunc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00118_n7_α
 xchain00118_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00121_0
# IR_LIT_STRING
 xchain00118_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00122_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00118_n8_α
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "add(4, 7)"
# IR_BOUND
 xchain00118_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00118_n9_α
# IR_RETURN
 xchain00118_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_addfunc_γ
# IR_LIT_INTEGER
 xchain00118_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00118_n10_α
.Lx00123_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00118_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00118_n11_α
.Lx00124_0:
 .quad 7
 xchain00118_n11_α:
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 272]
 call proc_add_dcα
 jmp .Lx00125_2
.Lx00125_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00118_n12_α
 jmp xchain00118_n12_α
 xchain00118_n11_β:
 jmp xchain00118_n12_α
.Lx00125_0:
 .quad .Lx00125_0_s
.Lx00125_0_s:
 .string "add"
# IR_UNMARK
 xchain00118_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00118_n5_β
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
proc_addfunc_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00126_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00126_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_addfunc_α_body
.Lx00126_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00126_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 216], rsp
  mov rdi, rsp
  mov esi, 208
  mov edx, 224
  call rt_jmp_frame_lexprep2@PLT
proc_add_α_body:
# IR_VAR
 xchain00127_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00127_n1_α
# IR_VAR
 xchain00127_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 184], rax
 jmp xchain00127_n2_α
# IR_COERCE_NUMERIC
 xchain00127_n2_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00128_1
 cmp eax, 6
 jne .Lx00128_0
 mov eax, dword ptr [rbp + 32]
 cmp eax, 6
 jne .Lx00128_0
.Lx00128_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 120], rax
 jmp xchain00127_n3_α
.Lx00128_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 32]
 lea rdx, [rbp + 112]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00127_n3_α
# IR_COERCE_NUMERIC
 xchain00127_n3_α:
 mov eax, dword ptr [rbp + 32]
 cmp eax, 7
 je .Lx00129_1
 cmp eax, 6
 jne .Lx00129_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00129_0
.Lx00129_1:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 88], rax
 jmp xchain00127_n4_α
.Lx00129_0:
 lea rdi, [rbp + 32]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 80]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00127_n4_α
 xchain00127_n4_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 112]
 cmp eax, 100
 je .Lx00130_0
 mov eax, dword ptr [rbp + 80]
 cmp eax, 100
 je .Lx00130_0
 mov eax, dword ptr [rbp + 112]
 cmp eax, 6
 jne .Lx00130_2
 mov eax, dword ptr [rbp + 80]
 cmp eax, 6
 jne .Lx00130_2
.Lx00130_1:
 mov rax, qword ptr [rbp + 120]
 mov rcx, qword ptr [rbp + 88]
 add rax, rcx
 mov qword ptr [rbp + 48], 6
 mov qword ptr [rbp + 56], rax
 jmp xchain00127_n5_α
.Lx00130_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 80]
 mov rcx, qword ptr [rbp + 88]
 mov r8d, 0
 lea r9, [rbp + 48]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00127_n5_α
.Lx00130_2:
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
 jmp xchain00127_n5_α
 xchain00127_n4_β:
 jmp proc_add_ω
# IR_RETURN
 xchain00127_n5_α:
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
proc_add_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 272
 mov qword ptr [rsp + 264], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 224], r11
 lea rax, [rip + .Lx00131_2]
 mov qword ptr [rbp + 232], rax
 lea rax, [rip + .Lx00131_3]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 216], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov rdi, rbp
 mov esi, 208
 mov edx, 224
 mov ecx, 2
 mov r8d, 2
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_add_α_body
.Lx00131_2:
 mov rdx, qword ptr [rsp + -272]
 mov rcx, rsp
 add rcx, -256
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00131_3:
 mov rdi, qword ptr [rsp + -272]
 mov rsi, rsp
 add rsi, -256
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_rfact0_α_body:
# IR_DISJUNCTION_NARY
 xchain00132_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00132_n2_α
xchain00132_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00133_0
 jmp xchain00132_n1_α
.Lx00133_0:
 jmp xchain00132_n1_α
 xchain00132_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00132_n1_α
xchain00132_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00132_n1_α
# IR_LIT_INTEGER
 xchain00132_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00132_n3_α
.Lx00134_0:
 .quad 1
# IR_VAR
 xchain00132_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00132_n4_α
 xchain00132_n2_β:
 jmp xchain00132_n0_af
# IR_VAR
 xchain00132_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00132_n5_α
# IR_UNOP
 xchain00132_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00132_n0_af
 cmp eax, 0
 jne xchain00132_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00132_n6_α
# IR_TO
 xchain00132_n5_α:
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
.Lx00135_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfact0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00132_n7_α
 xchain00132_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00135_0
# IR_LIT_STRING
 xchain00132_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00132_n8_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "rfact(0)"
# IR_BOUND
 xchain00132_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00132_n9_α
# IR_RETURN
 xchain00132_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact0_γ
# IR_LIT_INTEGER
 xchain00132_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00132_n10_α
.Lx00137_0:
 .quad 0
 xchain00132_n10_α:
 lea rsi, [rbp + 224]
 call proc_rfact_dcα
 jmp .Lx00138_2
.Lx00138_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00132_n11_α
 jmp xchain00132_n11_α
 xchain00132_n10_β:
 jmp xchain00132_n11_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "rfact"
# IR_UNMARK
 xchain00132_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00132_n5_β
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
proc_rfact0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00139_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00139_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rfact0_α_body
.Lx00139_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00139_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_rfact10_α_body:
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
 jg proc_rfact10_ω
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
 .string "rfact(10)"
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
 jmp proc_rfact10_γ
# IR_LIT_INTEGER
 xchain00140_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00140_n10_α
.Lx00145_0:
 .quad 10
 xchain00140_n10_α:
 lea rsi, [rbp + 224]
 call proc_rfact_dcα
 jmp .Lx00146_2
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
 .string "rfact"
# IR_UNMARK
 xchain00140_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00140_n5_β
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
proc_rfact10_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00147_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00147_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rfact10_α_body
.Lx00147_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00147_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 504], rsp
  mov rdi, rsp
  mov esi, 496
  mov edx, 512
  call rt_jmp_frame_lexprep2@PLT
proc_rfact_α_body:
# IR_DISJUNCTION_NARY
 xchain00148_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00148_n1_α
xchain00148_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00149_0
 jmp proc_rfact_ω
.Lx00149_0:
 cmp eax, 1
 jne .Lx00149_1
 jmp proc_rfact_ω
.Lx00149_1:
 jmp proc_rfact_ω
 xchain00148_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_rfact_ω
 jmp proc_rfact_ω
xchain00148_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00148_n2_α
 jmp proc_rfact_ω
# IR_VAR
 xchain00148_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00148_n3_α
 xchain00148_n1_β:
 jmp xchain00148_n0_af
# IR_VAR
 xchain00148_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00148_n4_α
 xchain00148_n2_β:
 jmp proc_rfact_ω
# IR_LIT_INTEGER
 xchain00148_n3_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00148_n5_α
.Lx00150_0:
 .quad 1
# IR_VAR
 xchain00148_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00148_n6_α
 xchain00148_n5_α:
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
 jge xchain00148_n0_af
 mov rcx, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rcx
 mov rcx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rcx
 jmp xchain00148_n7_α
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
 je xchain00148_n0_af
 jmp xchain00148_n7_α
.Lx00151_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00148_n0_af
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
 jmp xchain00148_n7_α
# IR_LIT_INTEGER
 xchain00148_n6_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00148_n8_α
.Lx00152_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00148_n7_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00148_n9_α
.Lx00153_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00148_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00154_1
 cmp eax, 6
 jne .Lx00154_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00154_0
.Lx00154_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00148_n10_α
.Lx00154_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 464]
 lea rdx, [rbp + 400]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00148_n10_α
# IR_RETURN
 xchain00148_n9_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfact_γ
 xchain00148_n10_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 400]
 cmp eax, 100
 je .Lx00155_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx00155_2
.Lx00155_1:
 mov rax, qword ptr [rbp + 408]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 368], 6
 mov qword ptr [rbp + 376], rax
 jmp xchain00148_n11_α
.Lx00155_0:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 mov r8d, 1
 lea r9, [rbp + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00148_n11_α
.Lx00155_2:
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
 jmp xchain00148_n11_α
 xchain00148_n10_β:
 jmp proc_rfact_ω
 xchain00148_n11_α:
 lea rsi, [rbp + 368]
 call proc_rfact_dcα
 jmp .Lx00156_2
.Lx00156_2:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_rfact_ω
 jmp xchain00148_n12_α
 xchain00148_n11_β:
 jmp proc_rfact_ω
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "rfact"
# IR_COERCE_NUMERIC
 xchain00148_n12_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00157_1
 cmp eax, 6
 jne .Lx00157_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00157_0
.Lx00157_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 264], rax
 jmp xchain00148_n13_α
.Lx00157_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 320]
 lea rdx, [rbp + 256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00148_n13_α
# IR_COERCE_NUMERIC
 xchain00148_n13_α:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 7
 je .Lx00158_1
 cmp eax, 6
 jne .Lx00158_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00158_0
.Lx00158_1:
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 232], rax
 jmp xchain00148_n14_α
.Lx00158_0:
 lea rdi, [rbp + 320]
 lea rsi, [rbp + 16]
 lea rdx, [rbp + 224]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00148_n14_α
 xchain00148_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 256]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00159_0
 mov eax, dword ptr [rbp + 256]
 cmp eax, 6
 jne .Lx00159_2
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00159_2
.Lx00159_1:
 mov rax, qword ptr [rbp + 264]
 mov rcx, qword ptr [rbp + 232]
 imul rax, rcx
 mov qword ptr [rbp + 192], 6
 mov qword ptr [rbp + 200], rax
 jmp xchain00148_n15_α
.Lx00159_0:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 2
 lea r9, [rbp + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00148_n15_α
.Lx00159_2:
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
 jmp xchain00148_n15_α
 xchain00148_n14_β:
 jmp proc_rfact_ω
# IR_RETURN
 xchain00148_n15_α:
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
proc_rfact_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 560
 mov qword ptr [rsp + 552], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 512], r11
 lea rax, [rip + .Lx00160_2]
 mov qword ptr [rbp + 520], rax
 lea rax, [rip + .Lx00160_3]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 504], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 496
 mov edx, 512
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rfact_α_body
.Lx00160_2:
 mov rdx, qword ptr [rsp + -560]
 mov rcx, rsp
 add rcx, -544
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00160_3:
 mov rdi, qword ptr [rsp + -560]
 mov rsi, rsp
 add rsi, -544
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_rfib5_α_body:
# IR_DISJUNCTION_NARY
 xchain00161_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00161_n2_α
xchain00161_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00162_0
 jmp xchain00161_n1_α
.Lx00162_0:
 jmp xchain00161_n1_α
 xchain00161_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00161_n1_α
xchain00161_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00161_n1_α
# IR_LIT_INTEGER
 xchain00161_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00161_n3_α
.Lx00163_0:
 .quad 1
# IR_VAR
 xchain00161_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00161_n4_α
 xchain00161_n2_β:
 jmp xchain00161_n0_af
# IR_VAR
 xchain00161_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00161_n5_α
# IR_UNOP
 xchain00161_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00161_n0_af
 cmp eax, 0
 jne xchain00161_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00161_n6_α
# IR_TO
 xchain00161_n5_α:
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
.Lx00164_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rfib5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00161_n7_α
 xchain00161_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00164_0
# IR_LIT_STRING
 xchain00161_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00161_n8_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "rfib(5)"
# IR_BOUND
 xchain00161_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00161_n9_α
# IR_RETURN
 xchain00161_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib5_γ
# IR_LIT_INTEGER
 xchain00161_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00161_n10_α
.Lx00166_0:
 .quad 5
 xchain00161_n10_α:
 lea rsi, [rbp + 224]
 call proc_rfib_dcα
 jmp .Lx00167_2
.Lx00167_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00161_n11_α
 jmp xchain00161_n11_α
 xchain00161_n10_β:
 jmp xchain00161_n11_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "rfib"
# IR_UNMARK
 xchain00161_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00161_n5_β
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
proc_rfib5_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00168_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00168_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rfib5_α_body
.Lx00168_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00168_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 648], rsp
  mov rdi, rsp
  mov esi, 640
  mov edx, 656
  call rt_jmp_frame_lexprep2@PLT
proc_rfib_α_body:
# IR_DISJUNCTION_NARY
 xchain00169_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00169_n1_α
xchain00169_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00170_0
 jmp proc_rfib_ω
.Lx00170_0:
 cmp eax, 1
 jne .Lx00170_1
 jmp proc_rfib_ω
.Lx00170_1:
 jmp proc_rfib_ω
 xchain00169_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_rfib_ω
 jmp proc_rfib_ω
xchain00169_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00169_n2_α
 jmp proc_rfib_ω
# IR_VAR
 xchain00169_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00169_n3_α
 xchain00169_n1_β:
 jmp xchain00169_n0_af
# IR_VAR
 xchain00169_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00169_n4_α
 xchain00169_n2_β:
 jmp proc_rfib_ω
# IR_LIT_INTEGER
 xchain00169_n3_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00169_n5_α
.Lx00171_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00169_n4_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00169_n6_α
.Lx00172_0:
 .quad 2
 xchain00169_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 16]
 cmp eax, 100
 je .Lx00173_0
 mov eax, dword ptr [rbp + 160]
 cmp eax, 100
 je .Lx00173_0
 mov eax, dword ptr [rbp + 16]
 cmp eax, 6
 jne .Lx00173_2
 mov eax, dword ptr [rbp + 160]
 cmp eax, 6
 jne .Lx00173_2
.Lx00173_1:
 mov rax, qword ptr [rbp + 24]
 mov rcx, qword ptr [rbp + 168]
 cmp rax, rcx
 jge xchain00169_n0_af
 mov rcx, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rcx
 mov rcx, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rcx
 jmp xchain00169_n7_α
.Lx00173_0:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 lea r9, [rbp + 96]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00173_1
 cmp eax, 1
 je xchain00169_n0_af
 jmp xchain00169_n7_α
.Lx00173_2:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 mov rdx, qword ptr [rbp + 160]
 mov rcx, qword ptr [rbp + 168]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00169_n0_af
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
 jmp xchain00169_n7_α
# IR_COERCE_NUMERIC
 xchain00169_n6_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00174_1
 cmp eax, 6
 jne .Lx00174_0
 mov eax, dword ptr [rbp + 432]
 cmp eax, 6
 jne .Lx00174_0
.Lx00174_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00169_n8_α
.Lx00174_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 432]
 lea rdx, [rbp + 368]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00169_n8_α
# IR_LIT_INTEGER
 xchain00169_n7_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00169_n9_α
.Lx00175_0:
 .quad 1
 xchain00169_n8_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 368]
 cmp eax, 100
 je .Lx00176_0
 mov eax, dword ptr [rbp + 368]
 cmp eax, 6
 jne .Lx00176_2
.Lx00176_1:
 mov rax, qword ptr [rbp + 376]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [rbp + 336], 6
 mov qword ptr [rbp + 344], rax
 jmp xchain00169_n10_α
.Lx00176_0:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 1
 lea r9, [rbp + 336]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00169_n10_α
.Lx00176_2:
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
 jmp xchain00169_n10_α
 xchain00169_n8_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00169_n9_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rfib_γ
 xchain00169_n10_α:
 lea rsi, [rbp + 336]
 call proc_rfib_dcα
 jmp .Lx00177_2
.Lx00177_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00169_n11_α
 xchain00169_n10_β:
 jmp proc_rfib_ω
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "rfib"
# IR_VAR
 xchain00169_n11_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 584], rax
 jmp xchain00169_n12_α
# IR_LIT_INTEGER
 xchain00169_n12_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00169_n13_α
.Lx00178_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00169_n13_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 7
 je .Lx00179_1
 cmp eax, 6
 jne .Lx00179_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00179_0
.Lx00179_1:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain00169_n14_α
.Lx00179_0:
 lea rdi, [rbp + 16]
 lea rsi, [rbp + 608]
 lea rdx, [rbp + 544]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00169_n14_α
 xchain00169_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00180_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00180_2
.Lx00180_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00169_n15_α
.Lx00180_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 1
 lea r9, [rbp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00169_n15_α
.Lx00180_2:
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
 jmp xchain00169_n15_α
 xchain00169_n14_β:
 jmp proc_rfib_ω
 xchain00169_n15_α:
 lea rsi, [rbp + 512]
 call proc_rfib_dcα
 jmp .Lx00181_2
.Lx00181_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je proc_rfib_ω
 jmp xchain00169_n16_α
 xchain00169_n15_β:
 jmp proc_rfib_ω
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "rfib"
# IR_COERCE_NUMERIC
 xchain00169_n16_α:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 7
 je .Lx00182_1
 cmp eax, 6
 jne .Lx00182_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00182_0
.Lx00182_1:
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
 jmp xchain00169_n17_α
.Lx00182_0:
 lea rdi, [rbp + 288]
 lea rsi, [rbp + 464]
 lea rdx, [rbp + 256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00169_n17_α
# IR_COERCE_NUMERIC
 xchain00169_n17_α:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 7
 je .Lx00183_1
 cmp eax, 6
 jne .Lx00183_0
 mov eax, dword ptr [rbp + 288]
 cmp eax, 6
 jne .Lx00183_0
.Lx00183_1:
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 232], rax
 jmp xchain00169_n18_α
.Lx00183_0:
 lea rdi, [rbp + 464]
 lea rsi, [rbp + 288]
 lea rdx, [rbp + 224]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00169_n18_α
 xchain00169_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 256]
 cmp eax, 100
 je .Lx00184_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00184_0
 mov eax, dword ptr [rbp + 256]
 cmp eax, 6
 jne .Lx00184_2
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00184_2
.Lx00184_1:
 mov rax, qword ptr [rbp + 264]
 mov rcx, qword ptr [rbp + 232]
 add rax, rcx
 mov qword ptr [rbp + 192], 6
 mov qword ptr [rbp + 200], rax
 jmp xchain00169_n19_α
.Lx00184_0:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 mov r8d, 0
 lea r9, [rbp + 192]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00169_n19_α
.Lx00184_2:
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
 jmp xchain00169_n19_α
 xchain00169_n18_β:
 jmp proc_rfib_ω
# IR_RETURN
 xchain00169_n19_α:
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
proc_rfib_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 704
 mov qword ptr [rsp + 696], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 656], r11
 lea rax, [rip + .Lx00185_2]
 mov qword ptr [rbp + 664], rax
 lea rax, [rip + .Lx00185_3]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 648], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 640
 mov edx, 656
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rfib_α_body
.Lx00185_2:
 mov rdx, qword ptr [rsp + -704]
 mov rcx, rsp
 add rcx, -688
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00185_3:
 mov rdi, qword ptr [rsp + -704]
 mov rsi, rsp
 add rsi, -688
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1104
  mov edx, 1152
  call rt_jmp_frame_lexprep2@PLT
proc_prslow_α_body:
# IR_DISJUNCTION_NARY
 xchain00186_n0_α:
 mov qword ptr [rbp + 976], 0
 mov qword ptr [rbp + 984], 0
 mov dword ptr [rbp + 992], 0
 jmp xchain00186_n2_α
xchain00186_n0_as:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 0
 jne .Lx00187_0
 jmp xchain00186_n1_α
.Lx00187_0:
 jmp xchain00186_n1_α
 xchain00186_n0_β:
 mov eax, dword ptr [rbp + 992]
 jmp xchain00186_n1_α
xchain00186_n0_af:
 add dword ptr [rbp + 992], 1
 mov eax, dword ptr [rbp + 992]
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
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1080], rax
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
 mov qword ptr [rbp + 1040], 0
 mov qword ptr [rbp + 1048], 0
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
 jg proc_prslow_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00186_n7_α
 xchain00186_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00189_0
# IR_LIT_STRING
 xchain00186_n6_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00186_n8_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "prslow(7)"
# IR_BOUND
 xchain00186_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00186_n9_α
# IR_RETURN
 xchain00186_n8_α:
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_prslow_γ
# IR_LIT_INTEGER
 xchain00186_n9_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00186_n10_α
.Lx00191_0:
 .quad 0
 xchain00186_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain00186_n11_α
# IR_LIT_INTEGER
 xchain00186_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00186_n12_α
.Lx00192_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00186_n12_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00186_n13_α
.Lx00193_0:
 .quad 7
# IR_TO
 xchain00186_n13_α:
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
.Lx00194_0:
 mov rax, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 280]
 cmp rax, rcx
 jg xchain00186_n36_α
 mov qword ptr [rbp + 208], 6
 mov qword ptr [rbp + 216], rax
 jmp xchain00186_n14_α
 xchain00186_n13_β:
 inc qword ptr [rbp + 224]
 jmp .Lx00194_0
 xchain00186_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00186_n15_α
# IR_BOUND
 xchain00186_n15_α:
 mov qword ptr [rbp + 304], rsp
 jmp xchain00186_n16_α
# IR_DISJUNCTION_NARY
 xchain00186_n16_α:
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 mov dword ptr [rbp + 528], 0
 jmp xchain00186_n18_α
xchain00186_n16_as:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 0
 jne .Lx00195_0
 jmp xchain00186_n17_α
.Lx00195_0:
 jmp xchain00186_n17_α
 xchain00186_n16_β:
 mov eax, dword ptr [rbp + 528]
 jmp xchain00186_n17_α
xchain00186_n16_af:
 add dword ptr [rbp + 528], 1
 mov eax, dword ptr [rbp + 528]
 jmp xchain00186_n17_α
# IR_VAR
 xchain00186_n17_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 456], rax
 jmp xchain00186_n19_α
# IR_VAR
 xchain00186_n18_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 680], rax
 jmp xchain00186_n21_α
 xchain00186_n18_β:
 jmp xchain00186_n16_af
# IR_LIT_INTEGER
 xchain00186_n19_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00186_n22_α
.Lx00196_0:
 .quad 1
# IR_UNMARK
 xchain00186_n20_α:
 mov rsp, qword ptr [rbp + 304]
 jmp xchain00186_n13_β
# IR_LIT_INTEGER
 xchain00186_n21_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00186_n23_α
.Lx00197_0:
 .quad 2
# IR_COERCE_NUMERIC
 xchain00186_n22_α:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 7
 je .Lx00198_1
 cmp eax, 6
 jne .Lx00198_0
 mov eax, dword ptr [rbp + 480]
 cmp eax, 6
 jne .Lx00198_0
.Lx00198_1:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 424], rax
 jmp xchain00186_n24_α
.Lx00198_0:
 lea rdi, [rbp + 1136]
 lea rsi, [rbp + 480]
 lea rdx, [rbp + 416]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00186_n24_α
# IR_VAR
 xchain00186_n23_α:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 840], rax
 jmp xchain00186_n25_α
 xchain00186_n24_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00199_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00199_2
.Lx00199_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 384], 6
 mov qword ptr [rbp + 392], rax
 jmp xchain00186_n26_α
.Lx00199_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 lea r9, [rbp + 384]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00186_n26_α
.Lx00199_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00186_n20_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00186_n26_α
 xchain00186_n24_β:
 jmp xchain00186_n20_α
# IR_LIT_INTEGER
 xchain00186_n25_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00186_n27_α
.Lx00200_0:
 .quad 1
 xchain00186_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00186_n28_α
# IR_COERCE_NUMERIC
 xchain00186_n27_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 7
 je .Lx00201_1
 cmp eax, 6
 jne .Lx00201_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx00201_0
.Lx00201_1:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 808], rax
 jmp xchain00186_n29_α
.Lx00201_0:
 lea rdi, [rbp + 1120]
 lea rsi, [rbp + 864]
 lea rdx, [rbp + 800]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00186_n29_α
 xchain00186_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 360], rax
 jmp xchain00186_n20_α
xchain00186_n28_β:
 jmp xchain00186_n20_α
 xchain00186_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 800]
 cmp eax, 100
 je .Lx00202_0
 mov eax, dword ptr [rbp + 800]
 cmp eax, 6
 jne .Lx00202_2
.Lx00202_1:
 mov rax, qword ptr [rbp + 808]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 768], 6
 mov qword ptr [rbp + 776], rax
 jmp xchain00186_n30_α
.Lx00202_0:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 1
 lea r9, [rbp + 768]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00186_n30_α
.Lx00202_2:
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00186_n16_af
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain00186_n30_α
 xchain00186_n29_β:
 jmp xchain00186_n16_af
# IR_TO
 xchain00186_n30_α:
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
.Lx00203_0:
 mov rax, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 776]
 cmp rax, rcx
 jg xchain00186_n16_af
 mov qword ptr [rbp + 704], 6
 mov qword ptr [rbp + 712], rax
 jmp xchain00186_n31_α
 xchain00186_n30_β:
 inc qword ptr [rbp + 720]
 jmp .Lx00203_0
# IR_COERCE_NUMERIC
 xchain00186_n31_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 7
 je .Lx00204_1
 cmp eax, 6
 jne .Lx00204_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00204_0
.Lx00204_1:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 648], rax
 jmp xchain00186_n32_α
.Lx00204_0:
 lea rdi, [rbp + 1120]
 lea rsi, [rbp + 704]
 lea rdx, [rbp + 640]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00186_n32_α
# IR_COERCE_NUMERIC
 xchain00186_n32_α:
 mov eax, dword ptr [rbp + 704]
 cmp eax, 7
 je .Lx00205_1
 cmp eax, 6
 jne .Lx00205_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx00205_0
.Lx00205_1:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
 jmp xchain00186_n33_α
.Lx00205_0:
 lea rdi, [rbp + 704]
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 608]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00186_n33_α
 xchain00186_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00206_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00206_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00206_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00206_2
.Lx00206_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 616]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [rbp + 576], 6
 mov qword ptr [rbp + 584], rax
 jmp xchain00186_n34_α
.Lx00206_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 4
 lea r9, [rbp + 576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00186_n34_α
.Lx00206_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 4
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00186_n16_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00186_n34_α
 xchain00186_n33_β:
 jmp xchain00186_n16_af
# IR_LIT_INTEGER
 xchain00186_n34_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00207_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00186_n35_α
.Lx00207_0:
 .quad 0
 xchain00186_n35_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00208_0
 mov eax, dword ptr [rbp + 896]
 cmp eax, 100
 je .Lx00208_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00208_2
 mov eax, dword ptr [rbp + 896]
 cmp eax, 6
 jne .Lx00208_2
.Lx00208_1:
 mov rax, qword ptr [rbp + 584]
 mov rcx, qword ptr [rbp + 904]
 cmp rax, rcx
 jne xchain00186_n30_β
 mov rcx, qword ptr [rbp + 896]
 mov qword ptr [rbp + 544], rcx
 mov rcx, qword ptr [rbp + 904]
 mov qword ptr [rbp + 552], rcx
 jmp xchain00186_n20_α
.Lx00208_0:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 lea r9, [rbp + 544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00208_1
 cmp eax, 1
 je xchain00186_n30_β
 jmp xchain00186_n20_α
.Lx00208_2:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00186_n30_β
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 552], rax
 jmp xchain00186_n20_α
# IR_UNMARK
 xchain00186_n36_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00186_n5_β
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
proc_prslow_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1200
 mov qword ptr [rsp + 1192], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1152], r11
 lea rax, [rip + .Lx00209_2]
 mov qword ptr [rbp + 1160], rax
 lea rax, [rip + .Lx00209_3]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1112], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1104
 mov edx, 1152
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_prslow_α_body
.Lx00209_2:
 mov rdx, qword ptr [rsp + -1200]
 mov rcx, rsp
 add rcx, -1184
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00209_3:
 mov rdi, qword ptr [rsp + -1200]
 mov rsi, rsp
 add rsi, -1184
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_if0_α_body:
# IR_DISJUNCTION_NARY
 xchain00210_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00210_n2_α
xchain00210_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00211_0
 jmp xchain00210_n1_α
.Lx00211_0:
 jmp xchain00210_n1_α
 xchain00210_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00210_n1_α
xchain00210_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00210_n1_α
# IR_LIT_INTEGER
 xchain00210_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00210_n3_α
.Lx00212_0:
 .quad 1
# IR_VAR
 xchain00210_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00210_n4_α
 xchain00210_n2_β:
 jmp xchain00210_n0_af
# IR_VAR
 xchain00210_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00210_n5_α
# IR_UNOP
 xchain00210_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00210_n0_af
 cmp eax, 0
 jne xchain00210_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00210_n6_α
# IR_TO
 xchain00210_n5_α:
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
.Lx00213_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_if0_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00210_n7_α
 xchain00210_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00213_0
# IR_LIT_STRING
 xchain00210_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00214_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00210_n8_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "if 0 then 1"
# IR_BOUND
 xchain00210_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00210_n9_α
# IR_RETURN
 xchain00210_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_if0_γ
# IR_DISJUNCTION_NARY
 xchain00210_n9_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00210_n11_α
xchain00210_n9_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00215_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00210_n10_α
.Lx00215_0:
 jmp xchain00210_n10_α
 xchain00210_n9_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00210_n10_α
xchain00210_n9_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00210_n10_α
# IR_UNMARK
 xchain00210_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00210_n5_β
# IR_LIT_INTEGER
 xchain00210_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00210_n12_α
 xchain00210_n11_β:
 jmp xchain00210_n9_af
.Lx00216_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00210_n12_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00210_n9_as
 xchain00210_n12_β:
 jmp xchain00210_n10_α
.Lx00217_0:
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
proc_if0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00218_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00218_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_if0_α_body
.Lx00218_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00218_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1000], rsp
  mov rdi, rsp
  mov esi, 992
  mov edx, 1024
  call rt_jmp_frame_lexprep2@PLT
proc_case3_α_body:
# IR_DISJUNCTION_NARY
 xchain00219_n0_α:
 mov qword ptr [rbp + 864], 0
 mov qword ptr [rbp + 872], 0
 mov dword ptr [rbp + 880], 0
 jmp xchain00219_n2_α
xchain00219_n0_as:
 mov eax, dword ptr [rbp + 880]
 cmp eax, 0
 jne .Lx00220_0
 jmp xchain00219_n1_α
.Lx00220_0:
 jmp xchain00219_n1_α
 xchain00219_n0_β:
 mov eax, dword ptr [rbp + 880]
 jmp xchain00219_n1_α
xchain00219_n0_af:
 add dword ptr [rbp + 880], 1
 mov eax, dword ptr [rbp + 880]
 jmp xchain00219_n1_α
# IR_LIT_INTEGER
 xchain00219_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00221_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00219_n3_α
.Lx00221_0:
 .quad 1
# IR_VAR
 xchain00219_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 968], rax
 jmp xchain00219_n4_α
 xchain00219_n2_β:
 jmp xchain00219_n0_af
# IR_VAR
 xchain00219_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00219_n5_α
# IR_UNOP
 xchain00219_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00219_n0_af
 cmp eax, 0
 jne xchain00219_n0_af
 mov qword ptr [rbp + 928], 0
 mov qword ptr [rbp + 936], 0
 jmp xchain00219_n6_α
# IR_TO
 xchain00219_n5_α:
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
.Lx00222_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_case3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00219_n7_α
 xchain00219_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00222_0
# IR_LIT_STRING
 xchain00219_n6_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00219_n8_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "case 3 of..."
# IR_BOUND
 xchain00219_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00219_n9_α
# IR_RETURN
 xchain00219_n8_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_case3_γ
# IR_LIT_INTEGER
 xchain00219_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00219_n10_α
.Lx00224_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00219_n10_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00219_n11_α
.Lx00225_0:
 .quad 1
 xchain00219_n11_α:
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
  .Lrkfn692: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn692]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain00219_n13_α
 jmp xchain00219_n12_α
 xchain00219_n11_β:
 jmp xchain00219_n13_α
# IR_LIT_INTEGER
 xchain00219_n12_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00226_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00219_n14_α
.Lx00226_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00219_n13_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00219_n15_α
.Lx00227_0:
 .quad 2
 xchain00219_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00219_n16_α
 xchain00219_n15_α:
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
  .Lrkfn697: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn697]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00219_n18_α
 jmp xchain00219_n17_α
 xchain00219_n15_β:
 jmp xchain00219_n18_α
# IR_VAR
 xchain00219_n16_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 184], rax
 jmp xchain00219_n19_α
# IR_LIT_INTEGER
 xchain00219_n17_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00219_n20_α
.Lx00228_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00219_n18_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00219_n21_α
.Lx00229_0:
 .quad 3
# IR_UNMARK
 xchain00219_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00219_n5_β
 xchain00219_n20_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00219_n16_α
 xchain00219_n21_α:
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
  .Lrkfn706: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn706]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00219_n23_α
 jmp xchain00219_n22_α
 xchain00219_n21_β:
 jmp xchain00219_n23_α
# IR_LIT_INTEGER
 xchain00219_n22_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00230_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00219_n24_α
.Lx00230_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00219_n23_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00219_n25_α
.Lx00231_0:
 .quad 4
 xchain00219_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00219_n16_α
 xchain00219_n25_α:
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
  .Lrkfn711: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn711]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00219_n27_α
 jmp xchain00219_n26_α
 xchain00219_n25_β:
 jmp xchain00219_n27_α
# IR_LIT_INTEGER
 xchain00219_n26_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00232_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00219_n28_α
.Lx00232_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00219_n27_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00219_n29_α
.Lx00233_0:
 .quad 0
 xchain00219_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00219_n16_α
 xchain00219_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00219_n16_α
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
proc_case3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1072
 mov qword ptr [rsp + 1064], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1024], r11
 lea rax, [rip + .Lx00234_2]
 mov qword ptr [rbp + 1032], rax
 lea rax, [rip + .Lx00234_3]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1000], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 992
 mov edx, 1024
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_case3_α_body
.Lx00234_2:
 mov rdx, qword ptr [rsp + -1072]
 mov rcx, rsp
 add rcx, -1056
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00234_3:
 mov rdi, qword ptr [rsp + -1072]
 mov rsi, rsp
 add rsi, -1056
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_nulltest_α_body:
# IR_DISJUNCTION_NARY
 xchain00235_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00235_n2_α
xchain00235_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00236_0
 jmp xchain00235_n1_α
.Lx00236_0:
 jmp xchain00235_n1_α
 xchain00235_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00235_n1_α
xchain00235_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00235_n1_α
# IR_LIT_INTEGER
 xchain00235_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00235_n3_α
.Lx00237_0:
 .quad 1
# IR_VAR
 xchain00235_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00235_n4_α
 xchain00235_n2_β:
 jmp xchain00235_n0_af
# IR_VAR
 xchain00235_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00235_n5_α
# IR_UNOP
 xchain00235_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00235_n0_af
 cmp eax, 0
 jne xchain00235_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00235_n6_α
# IR_TO
 xchain00235_n5_α:
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
.Lx00238_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nulltest_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00235_n7_α
 xchain00235_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00238_0
# IR_LIT_STRING
 xchain00235_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00235_n8_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "\\8"
# IR_BOUND
 xchain00235_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00235_n9_α
# IR_RETURN
 xchain00235_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nulltest_γ
# IR_LIT_INTEGER
 xchain00235_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00235_n10_α
.Lx00240_0:
 .quad 8
# IR_UNOP
 xchain00235_n10_α:
 mov eax, dword ptr [rbp + 208]
 cmp eax, 99
 je xchain00235_n11_α
 cmp eax, 0
 je xchain00235_n11_α
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00235_n11_α
# IR_UNMARK
 xchain00235_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00235_n5_β
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
proc_nulltest_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00241_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00241_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nulltest_α_body
.Lx00241_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00241_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_typef_α_body:
# IR_DISJUNCTION_NARY
 xchain00242_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00242_n2_α
xchain00242_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00243_0
 jmp xchain00242_n1_α
.Lx00243_0:
 jmp xchain00242_n1_α
 xchain00242_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00242_n1_α
xchain00242_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00242_n1_α
# IR_LIT_INTEGER
 xchain00242_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00242_n3_α
.Lx00244_0:
 .quad 1
# IR_VAR
 xchain00242_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00242_n4_α
 xchain00242_n2_β:
 jmp xchain00242_n0_af
# IR_VAR
 xchain00242_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00242_n5_α
# IR_UNOP
 xchain00242_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00242_n0_af
 cmp eax, 0
 jne xchain00242_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00242_n6_α
# IR_TO
 xchain00242_n5_α:
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
.Lx00245_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_typef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00242_n7_α
 xchain00242_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00245_0
# IR_LIT_STRING
 xchain00242_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00242_n8_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "type(s)"
# IR_BOUND
 xchain00242_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00242_n9_α
# IR_RETURN
 xchain00242_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_typef_γ
# IR_LIT_STRING
 xchain00242_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00242_n10_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "abcde"
 xchain00242_n10_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn754: .string "type"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn754]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00242_n11_α
 jmp xchain00242_n11_α
 xchain00242_n10_β:
 jmp xchain00242_n11_α
# IR_UNMARK
 xchain00242_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00242_n5_β
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
proc_typef_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00248_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00248_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_typef_α_body
.Lx00248_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00248_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_imagef_α_body:
# IR_DISJUNCTION_NARY
 xchain00249_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00249_n2_α
xchain00249_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00250_0
 jmp xchain00249_n1_α
.Lx00250_0:
 jmp xchain00249_n1_α
 xchain00249_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00249_n1_α
xchain00249_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00249_n1_α
# IR_LIT_INTEGER
 xchain00249_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00249_n3_α
.Lx00251_0:
 .quad 1
# IR_VAR
 xchain00249_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00249_n4_α
 xchain00249_n2_β:
 jmp xchain00249_n0_af
# IR_VAR
 xchain00249_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00249_n5_α
# IR_UNOP
 xchain00249_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00249_n0_af
 cmp eax, 0
 jne xchain00249_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00249_n6_α
# IR_TO
 xchain00249_n5_α:
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
.Lx00252_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_imagef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00249_n7_α
 xchain00249_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00252_0
# IR_LIT_STRING
 xchain00249_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00249_n8_α
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "image(s)"
# IR_BOUND
 xchain00249_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00249_n9_α
# IR_RETURN
 xchain00249_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_imagef_γ
# IR_LIT_STRING
 xchain00249_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00249_n10_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "ab\tcd"
 xchain00249_n10_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn775: .string "image"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn775]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00249_n11_α
 jmp xchain00249_n11_α
 xchain00249_n10_β:
 jmp xchain00249_n11_α
# IR_UNMARK
 xchain00249_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00249_n5_β
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
proc_imagef_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00255_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00255_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_imagef_α_body
.Lx00255_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00255_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 648], rsp
  mov rdi, rsp
  mov esi, 640
  mov edx, 656
  call rt_jmp_frame_lexprep2@PLT
proc_marshal_α_body:
# IR_DISJUNCTION_NARY
 xchain00256_n0_α:
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 mov dword ptr [rbp + 528], 0
 jmp xchain00256_n2_α
xchain00256_n0_as:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 0
 jne .Lx00257_0
 jmp xchain00256_n1_α
.Lx00257_0:
 jmp xchain00256_n1_α
 xchain00256_n0_β:
 mov eax, dword ptr [rbp + 528]
 jmp xchain00256_n1_α
xchain00256_n0_af:
 add dword ptr [rbp + 528], 1
 mov eax, dword ptr [rbp + 528]
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
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 616], rax
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
 mov qword ptr [rbp + 576], 0
 mov qword ptr [rbp + 584], 0
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
 jg proc_marshal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00256_n7_α
 xchain00256_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00259_0
# IR_LIT_STRING
 xchain00256_n6_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00256_n8_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "2(3,1,4,1,6)"
# IR_BOUND
 xchain00256_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00256_n9_α
# IR_RETURN
 xchain00256_n8_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_marshal_γ
# IR_LIT_INTEGER
 xchain00256_n9_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00256_n10_α
.Lx00261_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00256_n10_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00256_n11_α
.Lx00262_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00256_n11_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00256_n12_α
.Lx00263_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00256_n12_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00256_n13_α
.Lx00264_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00256_n13_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00256_n14_α
.Lx00265_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00256_n14_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx00266_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00256_n15_α
.Lx00266_0:
 .quad 6
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00256_n15_α:
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
 je .Lx00267_7
 lea rcx, [rip + .Lx00267_3]
 lea rdx, [rip + .Lx00267_4]
 jmp rax
.Lx00267_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00267_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00267_2
.Lx00267_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00267_2
.Lx00267_4:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00267_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00267_2
.Lx00267_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00267_2
.Lx00267_7:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 lea rdx, [rbp + 224]
 mov ecx, 5
 lea r8, [rbp + 304]
 call rt_call_value_gen_h@PLT
.Lx00267_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00256_n16_α
 jmp xchain00256_n16_α
 xchain00256_n15_β:
 mov rax, qword ptr [rbp + 304]
 cmp rax, 1
 jne .Lx00267_8
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx00267_8:
 lea rdi, [rbp + 304]
 call rt_call_value_resume_h@PLT
 cmp eax, 99
 je xchain00256_n16_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00256_n16_α
 jmp xchain00256_n16_α
# IR_UNMARK
 xchain00256_n16_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00256_n5_β
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
proc_marshal_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 704
 mov qword ptr [rsp + 696], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 656], r11
 lea rax, [rip + .Lx00268_2]
 mov qword ptr [rbp + 664], rax
 lea rax, [rip + .Lx00268_3]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 648], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 640
 mov edx, 656
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_marshal_α_body
.Lx00268_2:
 mov rdx, qword ptr [rsp + -704]
 mov rcx, rsp
 add rcx, -688
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00268_3:
 mov rdi, qword ptr [rsp + -704]
 mov rsi, rsp
 add rsi, -688
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 352
  mov edx, 368
  call rt_jmp_frame_lexprep2@PLT
proc_conj5_α_body:
# IR_DISJUNCTION_NARY
 xchain00269_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain00269_n2_α
xchain00269_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx00270_0
 jmp xchain00269_n1_α
.Lx00270_0:
 jmp xchain00269_n1_α
 xchain00269_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain00269_n1_α
xchain00269_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain00269_n1_α
# IR_LIT_INTEGER
 xchain00269_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00271_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00269_n3_α
.Lx00271_0:
 .quad 1
# IR_VAR
 xchain00269_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain00269_n4_α
 xchain00269_n2_β:
 jmp xchain00269_n0_af
# IR_VAR
 xchain00269_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00269_n5_α
# IR_UNOP
 xchain00269_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00269_n0_af
 cmp eax, 0
 jne xchain00269_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain00269_n6_α
# IR_TO
 xchain00269_n5_α:
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
.Lx00272_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_conj5_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00269_n7_α
 xchain00269_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00272_0
# IR_LIT_STRING
 xchain00269_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00269_n8_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "1&2&3&4&5"
# IR_BOUND
 xchain00269_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00269_n9_α
# IR_RETURN
 xchain00269_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_conj5_γ
# IR_LIT_INTEGER
 xchain00269_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00269_n10_α
.Lx00274_0:
 .quad 5
 xchain00269_n10_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00269_n11_α
xchain00269_n10_β:
 jmp xchain00269_n11_α
# IR_UNMARK
 xchain00269_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00269_n5_β
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
proc_conj5_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 416
 mov qword ptr [rsp + 408], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 368], r11
 lea rax, [rip + .Lx00275_2]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + .Lx00275_3]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 360], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 352
 mov edx, 368
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_conj5_α_body
.Lx00275_2:
 mov rdx, qword ptr [rsp + -416]
 mov rcx, rsp
 add rcx, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00275_3:
 mov rdi, qword ptr [rsp + -416]
 mov rsi, rsp
 add rsi, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 504], rsp
  mov rdi, rsp
  mov esi, 496
  mov edx, 512
  call rt_jmp_frame_lexprep2@PLT
proc_everyalt_α_body:
# IR_DISJUNCTION_NARY
 xchain00276_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00276_n2_α
xchain00276_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00277_0
 jmp xchain00276_n1_α
.Lx00277_0:
 jmp xchain00276_n1_α
 xchain00276_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00276_n1_α
xchain00276_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00276_n1_α
# IR_LIT_INTEGER
 xchain00276_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00276_n3_α
.Lx00278_0:
 .quad 1
# IR_VAR
 xchain00276_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain00276_n4_α
 xchain00276_n2_β:
 jmp xchain00276_n0_af
# IR_VAR
 xchain00276_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00276_n5_α
# IR_UNOP
 xchain00276_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00276_n0_af
 cmp eax, 0
 jne xchain00276_n0_af
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00276_n6_α
# IR_TO
 xchain00276_n5_α:
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
.Lx00279_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyalt_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00276_n7_α
 xchain00276_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00279_0
# IR_LIT_STRING
 xchain00276_n6_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00276_n8_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "1|2|3|4|5"
# IR_BOUND
 xchain00276_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00276_n9_α
# IR_RETURN
 xchain00276_n8_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyalt_γ
# IR_DISJUNCTION_NARY
 xchain00276_n9_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00276_n10_α
xchain00276_n9_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00281_0
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
 jmp xchain00276_n9_β
.Lx00281_0:
 cmp eax, 1
 jne .Lx00281_1
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00276_n9_β
.Lx00281_1:
 cmp eax, 2
 jne .Lx00281_2
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 184], rax
 jmp xchain00276_n9_β
.Lx00281_2:
 cmp eax, 3
 jne .Lx00281_3
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 184], rax
 jmp xchain00276_n9_β
.Lx00281_3:
 cmp eax, 4
 jne .Lx00281_4
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 184], rax
 jmp xchain00276_n9_β
.Lx00281_4:
 jmp xchain00276_n9_β
 xchain00276_n9_β:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 je xchain00276_n9_af
 cmp eax, 1
 je xchain00276_n9_af
 cmp eax, 2
 je xchain00276_n9_af
 cmp eax, 3
 je xchain00276_n9_af
 jmp xchain00276_n9_af
xchain00276_n9_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 cmp eax, 1
 je xchain00276_n11_α
 cmp eax, 2
 je xchain00276_n12_α
 cmp eax, 3
 je xchain00276_n13_α
 cmp eax, 4
 je xchain00276_n14_α
 jmp xchain00276_n15_α
# IR_LIT_INTEGER
 xchain00276_n10_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00276_n9_as
 xchain00276_n10_β:
 jmp xchain00276_n9_af
.Lx00282_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00276_n11_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00276_n9_as
 xchain00276_n11_β:
 jmp xchain00276_n9_af
.Lx00283_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00276_n12_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00276_n9_as
 xchain00276_n12_β:
 jmp xchain00276_n9_af
.Lx00284_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00276_n13_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00285_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00276_n9_as
 xchain00276_n13_β:
 jmp xchain00276_n9_af
.Lx00285_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00276_n14_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00276_n9_as
 xchain00276_n14_β:
 jmp xchain00276_n9_af
.Lx00286_0:
 .quad 5
# IR_UNMARK
 xchain00276_n15_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00276_n5_β
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
proc_everyalt_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 560
 mov qword ptr [rsp + 552], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 512], r11
 lea rax, [rip + .Lx00287_2]
 mov qword ptr [rbp + 520], rax
 lea rax, [rip + .Lx00287_3]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 504], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 496
 mov edx, 512
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_everyalt_α_body
.Lx00287_2:
 mov rdx, qword ptr [rsp + -560]
 mov rcx, rsp
 add rcx, -544
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00287_3:
 mov rdi, qword ptr [rsp + -560]
 mov rsi, rsp
 add rsi, -544
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_everyto_α_body:
# IR_DISJUNCTION_NARY
 xchain00288_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00288_n2_α
xchain00288_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00289_0
 jmp xchain00288_n1_α
.Lx00289_0:
 jmp xchain00288_n1_α
 xchain00288_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00288_n1_α
xchain00288_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00288_n1_α
# IR_LIT_INTEGER
 xchain00288_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00290_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00288_n3_α
.Lx00290_0:
 .quad 1
# IR_VAR
 xchain00288_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00288_n4_α
 xchain00288_n2_β:
 jmp xchain00288_n0_af
# IR_VAR
 xchain00288_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00288_n5_α
# IR_UNOP
 xchain00288_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00288_n0_af
 cmp eax, 0
 jne xchain00288_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00288_n6_α
# IR_TO
 xchain00288_n5_α:
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
.Lx00291_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_everyto_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00288_n7_α
 xchain00288_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00291_0
# IR_LIT_STRING
 xchain00288_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00288_n8_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "1 to 5"
# IR_BOUND
 xchain00288_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00288_n9_α
# IR_RETURN
 xchain00288_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_everyto_γ
# IR_LIT_INTEGER
 xchain00288_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00293_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00288_n10_α
.Lx00293_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00288_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00288_n11_α
.Lx00294_0:
 .quad 5
# IR_TO
 xchain00288_n11_α:
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
.Lx00295_0:
 mov rax, qword ptr [rbp + 192]
 mov rcx, qword ptr [rbp + 248]
 cmp rax, rcx
 jg xchain00288_n12_α
 mov qword ptr [rbp + 176], 6
 mov qword ptr [rbp + 184], rax
 jmp xchain00288_n11_β
 xchain00288_n11_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00295_0
# IR_UNMARK
 xchain00288_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00288_n5_β
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
proc_everyto_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00296_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00296_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_everyto_α_body
.Lx00296_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00296_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 256
  mov edx, 272
  call rt_jmp_frame_lexprep2@PLT
proc_evsusp_α_body:
# IR_DISJUNCTION_NARY
 xchain00297_n0_α:
 mov qword ptr [rbp + 128], 0
 mov qword ptr [rbp + 136], 0
 mov dword ptr [rbp + 144], 0
 jmp xchain00297_n2_α
xchain00297_n0_as:
 mov eax, dword ptr [rbp + 144]
 cmp eax, 0
 jne .Lx00298_0
 jmp xchain00297_n1_α
.Lx00298_0:
 jmp xchain00297_n1_α
 xchain00297_n0_β:
 mov eax, dword ptr [rbp + 144]
 jmp xchain00297_n1_α
xchain00297_n0_af:
 add dword ptr [rbp + 144], 1
 mov eax, dword ptr [rbp + 144]
 jmp xchain00297_n1_α
# IR_VAR
 xchain00297_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00297_n3_α
# IR_VAR
 xchain00297_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
 jmp xchain00297_n4_α
 xchain00297_n2_β:
 jmp xchain00297_n0_af
 xchain00297_n3_α:
 mov qword ptr [rbp + 64], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00299_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00299_3]
 lea rdx, [rip + .Lx00299_4]
 jmp rax
.Lx00299_3:
 mov qword ptr [rbp + 72], rsp
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00299_5
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00299_2
.Lx00299_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00299_2
.Lx00299_4:
 mov rax, qword ptr [rbp + 64]
 test rax, rax
 jne .Lx00299_6
 mov qword ptr [rbp + 64], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00299_2
.Lx00299_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00299_2
.Lx00299_1:
 call rt_faildescr@PLT
.Lx00299_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_evsusp_ω
 jmp xchain00297_n3_β
 xchain00297_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 72]
 jmp qword ptr [rsp]
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "susproc"
# IR_UNOP
 xchain00297_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00297_n0_af
 cmp eax, 0
 jne xchain00297_n0_af
 mov qword ptr [rbp + 192], 0
 mov qword ptr [rbp + 200], 0
 jmp xchain00297_n5_α
# IR_LIT_STRING
 xchain00297_n5_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00297_n6_α
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "suspend i"
# IR_RETURN
 xchain00297_n6_α:
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
proc_evsusp_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 320
 mov qword ptr [rsp + 312], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 272], r11
 lea rax, [rip + .Lx00301_2]
 mov qword ptr [rbp + 280], rax
 lea rax, [rip + .Lx00301_3]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 264], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 256
 mov edx, 272
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_evsusp_α_body
.Lx00301_2:
 mov rdx, qword ptr [rsp + -320]
 mov rcx, rsp
 add rcx, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00301_3:
 mov rdi, qword ptr [rsp + -320]
 mov rsi, rsp
 add rsi, -304
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 152], rsp
  mov rdi, rsp
  mov esi, 128
  mov edx, 160
  call rt_jmp_frame_lexprep2@PLT
proc_susproc_α_body:
lea rax, [rip + xchain00302_n3_β]
mov qword ptr [rbp + 128], rax
# IR_LIT_INTEGER
 xchain00302_n0_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00302_n1_α
.Lx00303_0:
 .quad 1
# IR_VAR
 xchain00302_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00302_n2_α
# IR_TO
 xchain00302_n2_α:
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
.Lx00304_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_susproc_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00302_n3_α
 xchain00302_n2_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00304_0
# IR_SUSPEND yield+resume
 xchain00302_n3_α:
 lea rax, [rip + xchain00302_n3_β]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_susproc_γ
 xchain00302_n3_β:
 jmp xchain00302_n2_β
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_intcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00305_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00305_n2_α
xchain00305_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00306_0
 jmp xchain00305_n1_α
.Lx00306_0:
 jmp xchain00305_n1_α
 xchain00305_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00305_n1_α
xchain00305_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00305_n1_α
# IR_LIT_INTEGER
 xchain00305_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00305_n3_α
.Lx00307_0:
 .quad 1
# IR_VAR
 xchain00305_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00305_n4_α
 xchain00305_n2_β:
 jmp xchain00305_n0_af
# IR_VAR
 xchain00305_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00305_n5_α
# IR_UNOP
 xchain00305_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00305_n0_af
 cmp eax, 0
 jne xchain00305_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00305_n6_α
# IR_TO
 xchain00305_n5_α:
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
.Lx00308_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_intcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00305_n7_α
 xchain00305_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00308_0
# IR_LIT_STRING
 xchain00305_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00305_n8_α
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "+\"407\""
# IR_BOUND
 xchain00305_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00305_n9_α
# IR_RETURN
 xchain00305_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_intcoerce_γ
# IR_LIT_STRING
 xchain00305_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00305_n10_α
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "407"
# IR_COERCE_NUMERIC
 xchain00305_n10_α:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 7
 je .Lx00311_1
 cmp eax, 6
 jne .Lx00311_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00311_0
.Lx00311_1:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 jmp xchain00305_n11_α
.Lx00311_0:
 lea rdi, [rbp + 240]
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00305_n11_α
# IR_UNOP
 xchain00305_n11_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00305_n12_α
# IR_UNMARK
 xchain00305_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00305_n5_β
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
proc_intcoerce_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00312_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00312_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_intcoerce_α_body
.Lx00312_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00312_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_realcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00313_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00313_n2_α
xchain00313_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00314_0
 jmp xchain00313_n1_α
.Lx00314_0:
 jmp xchain00313_n1_α
 xchain00313_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00313_n1_α
xchain00313_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00313_n1_α
# IR_LIT_INTEGER
 xchain00313_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00313_n3_α
.Lx00315_0:
 .quad 1
# IR_VAR
 xchain00313_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00313_n4_α
 xchain00313_n2_β:
 jmp xchain00313_n0_af
# IR_VAR
 xchain00313_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00313_n5_α
# IR_UNOP
 xchain00313_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00313_n0_af
 cmp eax, 0
 jne xchain00313_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00313_n6_α
# IR_TO
 xchain00313_n5_α:
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
.Lx00316_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_realcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00313_n7_α
 xchain00313_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00316_0
# IR_LIT_STRING
 xchain00313_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00317_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00313_n8_α
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "+\"7.25\""
# IR_BOUND
 xchain00313_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00313_n9_α
# IR_RETURN
 xchain00313_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_realcoerce_γ
# IR_LIT_STRING
 xchain00313_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00318_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00313_n10_α
.Lx00318_0:
 .quad .Lx00318_0_s
.Lx00318_0_s:
 .string "7.25"
# IR_COERCE_NUMERIC
 xchain00313_n10_α:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 7
 je .Lx00319_1
 cmp eax, 6
 jne .Lx00319_0
 mov eax, dword ptr [rbp + 240]
 cmp eax, 6
 jne .Lx00319_0
.Lx00319_1:
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 jmp xchain00313_n11_α
.Lx00319_0:
 lea rdi, [rbp + 240]
 lea rsi, [rbp + 240]
 lea rdx, [rbp + 208]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00313_n11_α
# IR_UNOP
 xchain00313_n11_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_num_pos@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00313_n12_α
# IR_UNMARK
 xchain00313_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00313_n5_β
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
proc_realcoerce_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00320_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00320_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_realcoerce_α_body
.Lx00320_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00320_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_strcoerce_α_body:
# IR_DISJUNCTION_NARY
 xchain00321_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00321_n2_α
xchain00321_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00322_0
 jmp xchain00321_n1_α
.Lx00322_0:
 jmp xchain00321_n1_α
 xchain00321_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00321_n1_α
xchain00321_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
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
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
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
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
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
 jg proc_strcoerce_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00321_n7_α
 xchain00321_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00324_0
# IR_LIT_STRING
 xchain00321_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00325_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00321_n8_α
.Lx00325_0:
 .quad .Lx00325_0_s
.Lx00325_0_s:
 .string "*407"
# IR_BOUND
 xchain00321_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00321_n9_α
# IR_RETURN
 xchain00321_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoerce_γ
# IR_LIT_INTEGER
 xchain00321_n9_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00326_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00321_n10_α
.Lx00326_0:
 .quad 407
# IR_UNOP
 xchain00321_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00321_n11_α
# IR_UNMARK
 xchain00321_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00321_n5_β
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
proc_strcoerce_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00327_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00327_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strcoerce_α_body
.Lx00327_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00327_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_strcoercer_α_body:
# IR_DISJUNCTION_NARY
 xchain00328_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00328_n2_α
xchain00328_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00329_0
 jmp xchain00328_n1_α
.Lx00329_0:
 jmp xchain00328_n1_α
 xchain00328_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00328_n1_α
xchain00328_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00328_n1_α
# IR_LIT_INTEGER
 xchain00328_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00330_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00328_n3_α
.Lx00330_0:
 .quad 1
# IR_VAR
 xchain00328_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00328_n4_α
 xchain00328_n2_β:
 jmp xchain00328_n0_af
# IR_VAR
 xchain00328_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00328_n5_α
# IR_UNOP
 xchain00328_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00328_n0_af
 cmp eax, 0
 jne xchain00328_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00328_n6_α
# IR_TO
 xchain00328_n5_α:
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
.Lx00331_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcoercer_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00328_n7_α
 xchain00328_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00331_0
# IR_LIT_STRING
 xchain00328_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00328_n8_α
.Lx00332_0:
 .quad .Lx00332_0_s
.Lx00332_0_s:
 .string "*7.25"
# IR_BOUND
 xchain00328_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00328_n9_α
# IR_RETURN
 xchain00328_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcoercer_γ
# IR_LIT_REAL
 xchain00328_n9_α:
 mov qword ptr [rbp + 208], 7
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00328_n10_α
.Lx00333_0:
 .quad 4619848792751996928
# IR_UNOP
 xchain00328_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00328_n11_α
# IR_UNMARK
 xchain00328_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00328_n5_β
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
proc_strcoercer_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00334_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00334_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strcoercer_α_body
.Lx00334_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00334_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_tointeger_α_body:
# IR_DISJUNCTION_NARY
 xchain00335_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00335_n2_α
xchain00335_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00336_0
 jmp xchain00335_n1_α
.Lx00336_0:
 jmp xchain00335_n1_α
 xchain00335_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00335_n1_α
xchain00335_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00335_n1_α
# IR_LIT_INTEGER
 xchain00335_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00337_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00335_n3_α
.Lx00337_0:
 .quad 1
# IR_VAR
 xchain00335_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00335_n4_α
 xchain00335_n2_β:
 jmp xchain00335_n0_af
# IR_VAR
 xchain00335_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00335_n5_α
# IR_UNOP
 xchain00335_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00335_n0_af
 cmp eax, 0
 jne xchain00335_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00335_n6_α
# IR_TO
 xchain00335_n5_α:
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
.Lx00338_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tointeger_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00335_n7_α
 xchain00335_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00338_0
# IR_LIT_STRING
 xchain00335_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00339_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00335_n8_α
.Lx00339_0:
 .quad .Lx00339_0_s
.Lx00339_0_s:
 .string "integer(\"407\")"
# IR_BOUND
 xchain00335_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00335_n9_α
# IR_RETURN
 xchain00335_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tointeger_γ
# IR_LIT_STRING
 xchain00335_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00340_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00335_n10_α
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "407"
 xchain00335_n10_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn994: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn994]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00335_n11_α
 jmp xchain00335_n11_α
 xchain00335_n10_β:
 jmp xchain00335_n11_α
# IR_UNMARK
 xchain00335_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00335_n5_β
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
proc_tointeger_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00341_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00341_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tointeger_α_body
.Lx00341_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00341_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_toreal_α_body:
# IR_DISJUNCTION_NARY
 xchain00342_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00342_n2_α
xchain00342_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00343_0
 jmp xchain00342_n1_α
.Lx00343_0:
 jmp xchain00342_n1_α
 xchain00342_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00342_n1_α
xchain00342_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00342_n1_α
# IR_LIT_INTEGER
 xchain00342_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00344_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00342_n3_α
.Lx00344_0:
 .quad 1
# IR_VAR
 xchain00342_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00342_n4_α
 xchain00342_n2_β:
 jmp xchain00342_n0_af
# IR_VAR
 xchain00342_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00342_n5_α
# IR_UNOP
 xchain00342_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00342_n0_af
 cmp eax, 0
 jne xchain00342_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00342_n6_α
# IR_TO
 xchain00342_n5_α:
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
.Lx00345_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_toreal_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00342_n7_α
 xchain00342_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00345_0
# IR_LIT_STRING
 xchain00342_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00346_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00342_n8_α
.Lx00346_0:
 .quad .Lx00346_0_s
.Lx00346_0_s:
 .string "real(\"7.25\")"
# IR_BOUND
 xchain00342_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00342_n9_α
# IR_RETURN
 xchain00342_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_toreal_γ
# IR_LIT_STRING
 xchain00342_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00347_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00342_n10_α
.Lx00347_0:
 .quad .Lx00347_0_s
.Lx00347_0_s:
 .string "407"
 xchain00342_n10_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1015: .string "real"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1015]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00342_n11_α
 jmp xchain00342_n11_α
 xchain00342_n10_β:
 jmp xchain00342_n11_α
# IR_UNMARK
 xchain00342_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00342_n5_β
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
proc_toreal_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00348_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00348_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_toreal_α_body
.Lx00348_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00348_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_tostring_α_body:
# IR_DISJUNCTION_NARY
 xchain00349_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00349_n2_α
xchain00349_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00350_0
 jmp xchain00349_n1_α
.Lx00350_0:
 jmp xchain00349_n1_α
 xchain00349_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00349_n1_α
xchain00349_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00349_n1_α
# IR_LIT_INTEGER
 xchain00349_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00351_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00349_n3_α
.Lx00351_0:
 .quad 1
# IR_VAR
 xchain00349_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00349_n4_α
 xchain00349_n2_β:
 jmp xchain00349_n0_af
# IR_VAR
 xchain00349_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00349_n5_α
# IR_UNOP
 xchain00349_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00349_n0_af
 cmp eax, 0
 jne xchain00349_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00349_n6_α
# IR_TO
 xchain00349_n5_α:
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
.Lx00352_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00349_n7_α
 xchain00349_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00352_0
# IR_LIT_STRING
 xchain00349_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00353_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00349_n8_α
.Lx00353_0:
 .quad .Lx00353_0_s
.Lx00353_0_s:
 .string "string(407)"
# IR_BOUND
 xchain00349_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00349_n9_α
# IR_RETURN
 xchain00349_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tostring_γ
# IR_LIT_INTEGER
 xchain00349_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00354_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00349_n10_α
.Lx00354_0:
 .quad 407
 xchain00349_n10_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1036: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1036]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00349_n11_α
 jmp xchain00349_n11_α
 xchain00349_n10_β:
 jmp xchain00349_n11_α
# IR_UNMARK
 xchain00349_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00349_n5_β
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
proc_tostring_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00355_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00355_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tostring_α_body
.Lx00355_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00355_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_rtostring_α_body:
# IR_DISJUNCTION_NARY
 xchain00356_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00356_n2_α
xchain00356_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00357_0
 jmp xchain00356_n1_α
.Lx00357_0:
 jmp xchain00356_n1_α
 xchain00356_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00356_n1_α
xchain00356_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
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
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
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
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
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
 jg proc_rtostring_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00356_n7_α
 xchain00356_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00359_0
# IR_LIT_STRING
 xchain00356_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00360_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00356_n8_α
.Lx00360_0:
 .quad .Lx00360_0_s
.Lx00360_0_s:
 .string "string(7.25)"
# IR_BOUND
 xchain00356_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00356_n9_α
# IR_RETURN
 xchain00356_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rtostring_γ
# IR_LIT_REAL
 xchain00356_n9_α:
 mov qword ptr [rbp + 224], 7
 mov rax, qword ptr [rip + .Lx00361_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00356_n10_α
.Lx00361_0:
 .quad 4619848792751996928
 xchain00356_n10_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1057: .string "string"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1057]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00356_n11_α
 jmp xchain00356_n11_α
 xchain00356_n10_β:
 jmp xchain00356_n11_α
# IR_UNMARK
 xchain00356_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00356_n5_β
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
proc_rtostring_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00362_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00362_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rtostring_α_body
.Lx00362_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00362_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_tocset_α_body:
# IR_DISJUNCTION_NARY
 xchain00363_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00363_n2_α
xchain00363_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00364_0
 jmp xchain00363_n1_α
.Lx00364_0:
 jmp xchain00363_n1_α
 xchain00363_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00363_n1_α
xchain00363_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
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
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
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
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
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
 jg proc_tocset_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00363_n7_α
 xchain00363_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00366_0
# IR_LIT_STRING
 xchain00363_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00367_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00363_n8_α
.Lx00367_0:
 .quad .Lx00367_0_s
.Lx00367_0_s:
 .string "cset(\"407\")"
# IR_BOUND
 xchain00363_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00363_n9_α
# IR_RETURN
 xchain00363_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tocset_γ
# IR_LIT_STRING
 xchain00363_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00368_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00363_n10_α
.Lx00368_0:
 .quad .Lx00368_0_s
.Lx00368_0_s:
 .string "407"
 xchain00363_n10_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1078: .string "cset"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1078]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00363_n11_α
 jmp xchain00363_n11_α
 xchain00363_n10_β:
 jmp xchain00363_n11_α
# IR_UNMARK
 xchain00363_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00363_n5_β
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
proc_tocset_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00369_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00369_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tocset_α_body
.Lx00369_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00369_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_charf_α_body:
# IR_DISJUNCTION_NARY
 xchain00370_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00370_n2_α
xchain00370_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00371_0
 jmp xchain00370_n1_α
.Lx00371_0:
 jmp xchain00370_n1_α
 xchain00370_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00370_n1_α
xchain00370_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
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
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
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
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
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
 jg proc_charf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00370_n7_α
 xchain00370_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00373_0
# IR_LIT_STRING
 xchain00370_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00374_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00370_n8_α
.Lx00374_0:
 .quad .Lx00374_0_s
.Lx00374_0_s:
 .string "char(65)"
# IR_BOUND
 xchain00370_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00370_n9_α
# IR_RETURN
 xchain00370_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_charf_γ
# IR_LIT_INTEGER
 xchain00370_n9_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx00375_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00370_n10_α
.Lx00375_0:
 .quad 65
 xchain00370_n10_α:
# BOX IR_CALL char(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1099: .string "char"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1099]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00370_n11_α
 jmp xchain00370_n11_α
 xchain00370_n10_β:
 jmp xchain00370_n11_α
# IR_UNMARK
 xchain00370_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00370_n5_β
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
proc_charf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00376_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00376_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_charf_α_body
.Lx00376_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00376_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_ordf_α_body:
# IR_DISJUNCTION_NARY
 xchain00377_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00377_n2_α
xchain00377_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00378_0
 jmp xchain00377_n1_α
.Lx00378_0:
 jmp xchain00377_n1_α
 xchain00377_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00377_n1_α
xchain00377_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00377_n1_α
# IR_LIT_INTEGER
 xchain00377_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00379_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00377_n3_α
.Lx00379_0:
 .quad 1
# IR_VAR
 xchain00377_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00377_n4_α
 xchain00377_n2_β:
 jmp xchain00377_n0_af
# IR_VAR
 xchain00377_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00377_n5_α
# IR_UNOP
 xchain00377_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00377_n0_af
 cmp eax, 0
 jne xchain00377_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00377_n6_α
# IR_TO
 xchain00377_n5_α:
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
.Lx00380_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_ordf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00377_n7_α
 xchain00377_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00380_0
# IR_LIT_STRING
 xchain00377_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00381_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00377_n8_α
.Lx00381_0:
 .quad .Lx00381_0_s
.Lx00381_0_s:
 .string "ord(\"A\")"
# IR_BOUND
 xchain00377_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00377_n9_α
# IR_RETURN
 xchain00377_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_ordf_γ
# IR_LIT_STRING
 xchain00377_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00382_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00377_n10_α
.Lx00382_0:
 .quad .Lx00382_0_s
.Lx00382_0_s:
 .string "A"
 xchain00377_n10_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1120: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1120]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00377_n11_α
 jmp xchain00377_n11_α
 xchain00377_n10_β:
 jmp xchain00377_n11_α
# IR_UNMARK
 xchain00377_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00377_n5_β
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
proc_ordf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00383_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00383_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_ordf_α_body
.Lx00383_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00383_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_strsize_α_body:
# IR_DISJUNCTION_NARY
 xchain00384_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00384_n2_α
xchain00384_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00385_0
 jmp xchain00384_n1_α
.Lx00385_0:
 jmp xchain00384_n1_α
 xchain00384_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00384_n1_α
xchain00384_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00384_n1_α
# IR_LIT_INTEGER
 xchain00384_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00386_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00384_n3_α
.Lx00386_0:
 .quad 1
# IR_VAR
 xchain00384_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00384_n4_α
 xchain00384_n2_β:
 jmp xchain00384_n0_af
# IR_VAR
 xchain00384_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00384_n5_α
# IR_UNOP
 xchain00384_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00384_n0_af
 cmp eax, 0
 jne xchain00384_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00384_n6_α
# IR_TO
 xchain00384_n5_α:
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
.Lx00387_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00384_n7_α
 xchain00384_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00387_0
# IR_LIT_STRING
 xchain00384_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00388_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00384_n8_α
.Lx00388_0:
 .quad .Lx00388_0_s
.Lx00388_0_s:
 .string "*\"abcde\""
# IR_BOUND
 xchain00384_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00384_n9_α
# IR_RETURN
 xchain00384_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsize_γ
# IR_LIT_STRING
 xchain00384_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00389_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00384_n10_α
.Lx00389_0:
 .quad .Lx00389_0_s
.Lx00389_0_s:
 .string "abcde"
# IR_UNOP
 xchain00384_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00384_n11_α
# IR_UNMARK
 xchain00384_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00384_n5_β
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
proc_strsize_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00390_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00390_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strsize_α_body
.Lx00390_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00390_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 312], rsp
  mov rdi, rsp
  mov esi, 304
  mov edx, 320
  call rt_jmp_frame_lexprep2@PLT
proc_concat_α_body:
# IR_DISJUNCTION_NARY
 xchain00391_n0_α:
 mov qword ptr [rbp + 176], 0
 mov qword ptr [rbp + 184], 0
 mov dword ptr [rbp + 192], 0
 jmp xchain00391_n2_α
xchain00391_n0_as:
 mov eax, dword ptr [rbp + 192]
 cmp eax, 0
 jne .Lx00392_0
 jmp xchain00391_n1_α
.Lx00392_0:
 jmp xchain00391_n1_α
 xchain00391_n0_β:
 mov eax, dword ptr [rbp + 192]
 jmp xchain00391_n1_α
xchain00391_n0_af:
 add dword ptr [rbp + 192], 1
 mov eax, dword ptr [rbp + 192]
 jmp xchain00391_n1_α
# IR_LIT_INTEGER
 xchain00391_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00393_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00391_n3_α
.Lx00393_0:
 .quad 1
# IR_VAR
 xchain00391_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 280], rax
 jmp xchain00391_n4_α
 xchain00391_n2_β:
 jmp xchain00391_n0_af
# IR_VAR
 xchain00391_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00391_n5_α
# IR_UNOP
 xchain00391_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00391_n0_af
 cmp eax, 0
 jne xchain00391_n0_af
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 jmp xchain00391_n6_α
# IR_TO
 xchain00391_n5_α:
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
.Lx00394_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_concat_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00391_n7_α
 xchain00391_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00394_0
# IR_LIT_STRING
 xchain00391_n6_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00395_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00391_n8_α
.Lx00395_0:
 .quad .Lx00395_0_s
.Lx00395_0_s:
 .string "\"a\" || \"b\""
# IR_BOUND
 xchain00391_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00391_n9_α
# IR_RETURN
 xchain00391_n8_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_concat_γ
# IR_UNMARK
 xchain00391_n9_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00391_n5_β
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
proc_concat_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 368
 mov qword ptr [rsp + 360], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 320], r11
 lea rax, [rip + .Lx00396_2]
 mov qword ptr [rbp + 328], rax
 lea rax, [rip + .Lx00396_3]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 312], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 304
 mov edx, 320
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_concat_α_body
.Lx00396_2:
 mov rdx, qword ptr [rsp + -368]
 mov rcx, rsp
 add rcx, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00396_3:
 mov rdi, qword ptr [rsp + -368]
 mov rsi, rsp
 add rsi, -352
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_strpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00397_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00397_n2_α
xchain00397_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00398_0
 jmp xchain00397_n1_α
.Lx00398_0:
 jmp xchain00397_n1_α
 xchain00397_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00397_n1_α
xchain00397_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00397_n1_α
# IR_LIT_INTEGER
 xchain00397_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00399_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00397_n3_α
.Lx00399_0:
 .quad 1
# IR_VAR
 xchain00397_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00397_n4_α
 xchain00397_n2_β:
 jmp xchain00397_n0_af
# IR_VAR
 xchain00397_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00397_n5_α
# IR_UNOP
 xchain00397_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00397_n0_af
 cmp eax, 0
 jne xchain00397_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00397_n6_α
# IR_TO
 xchain00397_n5_α:
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
.Lx00400_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00397_n7_α
 xchain00397_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00400_0
# IR_LIT_STRING
 xchain00397_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00401_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00397_n8_α
.Lx00401_0:
 .quad .Lx00401_0_s
.Lx00401_0_s:
 .string "?\"abcde\""
# IR_BOUND
 xchain00397_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00397_n9_α
# IR_RETURN
 xchain00397_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strpick_γ
# IR_LIT_STRING
 xchain00397_n9_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00402_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00397_n10_α
.Lx00402_0:
 .quad .Lx00402_0_s
.Lx00402_0_s:
 .string "abcde"
# IR_RANDOM
 xchain00397_n10_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00397_n12_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00397_n11_α
# IR_DEREF variable -> value
 xchain00397_n11_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00397_n12_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00397_n12_α
# IR_UNMARK
 xchain00397_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00397_n5_β
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
proc_strpick_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00403_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00403_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strpick_α_body
.Lx00403_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00403_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_strbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00404_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00404_n2_α
xchain00404_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00405_0
 jmp xchain00404_n1_α
.Lx00405_0:
 jmp xchain00404_n1_α
 xchain00404_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00404_n1_α
xchain00404_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00404_n1_α
# IR_LIT_INTEGER
 xchain00404_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00406_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00404_n3_α
.Lx00406_0:
 .quad 1
# IR_VAR
 xchain00404_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00404_n4_α
 xchain00404_n2_β:
 jmp xchain00404_n0_af
# IR_VAR
 xchain00404_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00404_n5_α
# IR_UNOP
 xchain00404_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00404_n0_af
 cmp eax, 0
 jne xchain00404_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00404_n6_α
# IR_TO
 xchain00404_n5_α:
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
.Lx00407_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00404_n7_α
 xchain00404_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00407_0
# IR_LIT_STRING
 xchain00404_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00408_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00404_n8_α
.Lx00408_0:
 .quad .Lx00408_0_s
.Lx00408_0_s:
 .string "!\"12345\""
# IR_BOUND
 xchain00404_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00404_n9_α
# IR_RETURN
 xchain00404_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strbang_γ
# IR_LIT_STRING
 xchain00404_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00409_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00404_n10_α
.Lx00409_0:
 .quad .Lx00409_0_s
.Lx00409_0_s:
 .string "12345"
# IR_LIST_BANG
 xchain00404_n10_α:
 mov qword ptr [rbp + 192], 0
.Lx00410_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00404_n11_α
 jmp xchain00404_n10_β
 xchain00404_n10_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00410_0
# IR_UNMARK
 xchain00404_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00404_n5_β
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
proc_strbang_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00411_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00411_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strbang_α_body
.Lx00411_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00411_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 424], rsp
  mov rdi, rsp
  mov esi, 416
  mov edx, 432
  call rt_jmp_frame_lexprep2@PLT
proc_strsub_α_body:
# IR_DISJUNCTION_NARY
 xchain00412_n0_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00412_n2_α
xchain00412_n0_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00413_0
 jmp xchain00412_n1_α
.Lx00413_0:
 jmp xchain00412_n1_α
 xchain00412_n0_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00412_n1_α
xchain00412_n0_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00412_n1_α
# IR_LIT_INTEGER
 xchain00412_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00414_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00412_n3_α
.Lx00414_0:
 .quad 1
# IR_VAR
 xchain00412_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00412_n4_α
 xchain00412_n2_β:
 jmp xchain00412_n0_af
# IR_VAR
 xchain00412_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00412_n5_α
# IR_UNOP
 xchain00412_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00412_n0_af
 cmp eax, 0
 jne xchain00412_n0_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00412_n6_α
# IR_TO
 xchain00412_n5_α:
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
.Lx00415_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00412_n7_α
 xchain00412_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00415_0
# IR_LIT_STRING
 xchain00412_n6_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00416_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00412_n8_α
.Lx00416_0:
 .quad .Lx00416_0_s
.Lx00416_0_s:
 .string "\"abcde\"[3]"
# IR_BOUND
 xchain00412_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00412_n9_α
# IR_RETURN
 xchain00412_n8_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strsub_γ
# IR_LIT_STRING
 xchain00412_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00417_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00412_n10_α
.Lx00417_0:
 .quad .Lx00417_0_s
.Lx00417_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00412_n10_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00418_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00412_n11_α
.Lx00418_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00412_n11_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00412_n13_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00412_n12_α
# IR_DEREF variable -> value
 xchain00412_n12_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00412_n13_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00412_n13_α
# IR_UNMARK
 xchain00412_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00412_n5_β
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
proc_strsub_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 480
 mov qword ptr [rsp + 472], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 432], r11
 lea rax, [rip + .Lx00419_2]
 mov qword ptr [rbp + 440], rax
 lea rax, [rip + .Lx00419_3]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 424], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 416
 mov edx, 432
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strsub_α_body
.Lx00419_2:
 mov rdx, qword ptr [rsp + -480]
 mov rcx, rsp
 add rcx, -464
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00419_3:
 mov rdi, qword ptr [rsp + -480]
 mov rsi, rsp
 add rsi, -464
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_substr_α_body:
# IR_DISJUNCTION_NARY
 xchain00420_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00420_n2_α
xchain00420_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00421_0
 jmp xchain00420_n1_α
.Lx00421_0:
 jmp xchain00420_n1_α
 xchain00420_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00420_n1_α
xchain00420_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00420_n1_α
# IR_LIT_INTEGER
 xchain00420_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00422_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00420_n3_α
.Lx00422_0:
 .quad 1
# IR_VAR
 xchain00420_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00420_n4_α
 xchain00420_n2_β:
 jmp xchain00420_n0_af
# IR_VAR
 xchain00420_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00420_n5_α
# IR_UNOP
 xchain00420_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00420_n0_af
 cmp eax, 0
 jne xchain00420_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00420_n6_α
# IR_TO
 xchain00420_n5_α:
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
.Lx00423_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_substr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00420_n7_α
 xchain00420_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00423_0
# IR_LIT_STRING
 xchain00420_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00424_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00420_n8_α
.Lx00424_0:
 .quad .Lx00424_0_s
.Lx00424_0_s:
 .string "\"abcde\"[2:5]"
# IR_BOUND
 xchain00420_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00420_n9_α
# IR_RETURN
 xchain00420_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_substr_γ
# IR_LIT_STRING
 xchain00420_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00425_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00420_n10_α
.Lx00425_0:
 .quad .Lx00425_0_s
.Lx00425_0_s:
 .string "abcde"
# IR_LIT_INTEGER
 xchain00420_n10_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00426_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00420_n11_α
.Lx00426_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00420_n11_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00427_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00420_n12_α
.Lx00427_0:
 .quad 5
# IR_SUBSCRIPT section
 xchain00420_n12_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8, qword ptr [rbp + 272]
 mov r9, qword ptr [rbp + 280]
 call subscript_get2@PLT
 cmp eax, 99
 je xchain00420_n13_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00420_n13_α
# IR_UNMARK
 xchain00420_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00420_n5_β
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
proc_substr_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00428_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00428_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_substr_α_body
.Lx00428_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00428_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 504], rsp
  mov rdi, rsp
  mov esi, 496
  mov edx, 528
  call rt_jmp_frame_lexprep2@PLT
proc_subsasg_α_body:
# IR_DISJUNCTION_NARY
 xchain00429_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00429_n2_α
xchain00429_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00430_0
 jmp xchain00429_n1_α
.Lx00430_0:
 jmp xchain00429_n1_α
 xchain00429_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00429_n1_α
xchain00429_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00429_n1_α
# IR_LIT_INTEGER
 xchain00429_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00431_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00429_n3_α
.Lx00431_0:
 .quad 1
# IR_VAR
 xchain00429_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 472], rax
 jmp xchain00429_n4_α
 xchain00429_n2_β:
 jmp xchain00429_n0_af
# IR_VAR
 xchain00429_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00429_n5_α
# IR_UNOP
 xchain00429_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00429_n0_af
 cmp eax, 0
 jne xchain00429_n0_af
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 jmp xchain00429_n6_α
# IR_TO
 xchain00429_n5_α:
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
.Lx00432_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_subsasg_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00429_n7_α
 xchain00429_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00432_0
# IR_LIT_STRING
 xchain00429_n6_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00433_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00429_n8_α
.Lx00433_0:
 .quad .Lx00433_0_s
.Lx00433_0_s:
 .string "s[2:5] := \"x\""
# IR_BOUND
 xchain00429_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00429_n9_α
# IR_RETURN
 xchain00429_n8_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_subsasg_γ
# IR_LIT_STRING
 xchain00429_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00434_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00429_n10_α
.Lx00434_0:
 .quad .Lx00434_0_s
.Lx00434_0_s:
 .string "abcde"
 xchain00429_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00429_n11_α
# IR_LIT_INTEGER
 xchain00429_n11_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00435_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00429_n12_α
.Lx00435_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00429_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00436_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00429_n13_α
.Lx00436_0:
 .quad 5
# IR_SUBSCRIPT section VARIABLE (ASSIGN-LV: rt_section_var tvsubs trap; FAIL routes ω)
 xchain00429_n13_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 mov r8, qword ptr [rbp + 288]
 mov r9, qword ptr [rbp + 296]
 call rt_section_var@PLT
 cmp eax, 99
 je xchain00429_n15_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00429_n14_α
# IR_LIT_STRING
 xchain00429_n14_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00437_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00429_n16_α
.Lx00437_0:
 .quad .Lx00437_0_s
.Lx00437_0_s:
 .string "x"
# IR_UNMARK
 xchain00429_n15_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00429_n5_β
# IR_ASSIGN_VAR
 xchain00429_n16_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00429_n15_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00429_n15_α
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
proc_subsasg_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 576
 mov qword ptr [rsp + 568], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 528], r11
 lea rax, [rip + .Lx00438_2]
 mov qword ptr [rbp + 536], rax
 lea rax, [rip + .Lx00438_3]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 504], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 496
 mov edx, 528
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_subsasg_α_body
.Lx00438_2:
 mov rdx, qword ptr [rsp + -576]
 mov rcx, rsp
 add rcx, -560
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00438_3:
 mov rdi, qword ptr [rsp + -576]
 mov rsi, rsp
 add rsi, -560
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_strcmp_α_body:
# IR_DISJUNCTION_NARY
 xchain00439_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00439_n2_α
xchain00439_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00440_0
 jmp xchain00439_n1_α
.Lx00440_0:
 jmp xchain00439_n1_α
 xchain00439_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00439_n1_α
xchain00439_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
 jmp xchain00439_n1_α
# IR_LIT_INTEGER
 xchain00439_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00441_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00439_n3_α
.Lx00441_0:
 .quad 1
# IR_VAR
 xchain00439_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
 jmp xchain00439_n4_α
 xchain00439_n2_β:
 jmp xchain00439_n0_af
# IR_VAR
 xchain00439_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00439_n5_α
# IR_UNOP
 xchain00439_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00439_n0_af
 cmp eax, 0
 jne xchain00439_n0_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain00439_n6_α
# IR_TO
 xchain00439_n5_α:
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
.Lx00442_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_strcmp_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00439_n7_α
 xchain00439_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00442_0
# IR_LIT_STRING
 xchain00439_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00443_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00439_n8_α
.Lx00443_0:
 .quad .Lx00443_0_s
.Lx00443_0_s:
 .string "\"abc\">>\"aaa\""
# IR_BOUND
 xchain00439_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00439_n9_α
# IR_RETURN
 xchain00439_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strcmp_γ
# IR_LIT_STRING
 xchain00439_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00444_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00439_n10_α
.Lx00444_0:
 .quad .Lx00444_0_s
.Lx00444_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00439_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00445_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00439_n11_α
.Lx00445_0:
 .quad .Lx00445_0_s
.Lx00445_0_s:
 .string "aaa"
 xchain00439_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00439_n12_α
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00439_n12_α
# IR_UNMARK
 xchain00439_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00439_n5_β
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
proc_strcmp_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00446_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00446_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strcmp_α_body
.Lx00446_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00446_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 408], rsp
  mov rdi, rsp
  mov esi, 400
  mov edx, 416
  call rt_jmp_frame_lexprep2@PLT
proc_strident_α_body:
# IR_DISJUNCTION_NARY
 xchain00447_n0_α:
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 mov dword ptr [rbp + 288], 0
 jmp xchain00447_n2_α
xchain00447_n0_as:
 mov eax, dword ptr [rbp + 288]
 cmp eax, 0
 jne .Lx00448_0
 jmp xchain00447_n1_α
.Lx00448_0:
 jmp xchain00447_n1_α
 xchain00447_n0_β:
 mov eax, dword ptr [rbp + 288]
 jmp xchain00447_n1_α
xchain00447_n0_af:
 add dword ptr [rbp + 288], 1
 mov eax, dword ptr [rbp + 288]
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
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 376], rax
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
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
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
 jg proc_strident_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00447_n7_α
 xchain00447_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00450_0
# IR_LIT_STRING
 xchain00447_n6_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00451_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00447_n8_α
.Lx00451_0:
 .quad .Lx00451_0_s
.Lx00451_0_s:
 .string "\"abc\"===\"aaa\""
# IR_BOUND
 xchain00447_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00447_n9_α
# IR_RETURN
 xchain00447_n8_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_strident_γ
# IR_LIT_STRING
 xchain00447_n9_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00452_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00447_n10_α
.Lx00452_0:
 .quad .Lx00452_0_s
.Lx00452_0_s:
 .string "abc"
# IR_LIT_STRING
 xchain00447_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00453_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00447_n11_α
.Lx00453_0:
 .quad .Lx00453_0_s
.Lx00453_0_s:
 .string "aaa"
 xchain00447_n11_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00447_n12_α
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
 jmp xchain00447_n12_α
# IR_UNMARK
 xchain00447_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00447_n5_β
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
proc_strident_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 464
 mov qword ptr [rsp + 456], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 416], r11
 lea rax, [rip + .Lx00454_2]
 mov qword ptr [rbp + 424], rax
 lea rax, [rip + .Lx00454_3]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 400
 mov edx, 416
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_strident_α_body
.Lx00454_2:
 mov rdx, qword ptr [rsp + -464]
 mov rcx, rsp
 add rcx, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00454_3:
 mov rdi, qword ptr [rsp + -464]
 mov rsi, rsp
 add rsi, -448
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_replf_α_body:
# IR_DISJUNCTION_NARY
 xchain00455_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00455_n2_α
xchain00455_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00456_0
 jmp xchain00455_n1_α
.Lx00456_0:
 jmp xchain00455_n1_α
 xchain00455_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00455_n1_α
xchain00455_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00455_n1_α
# IR_LIT_INTEGER
 xchain00455_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00457_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00455_n3_α
.Lx00457_0:
 .quad 1
# IR_VAR
 xchain00455_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00455_n4_α
 xchain00455_n2_β:
 jmp xchain00455_n0_af
# IR_VAR
 xchain00455_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00455_n5_α
# IR_UNOP
 xchain00455_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00455_n0_af
 cmp eax, 0
 jne xchain00455_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00455_n6_α
# IR_TO
 xchain00455_n5_α:
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
.Lx00458_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_replf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00455_n7_α
 xchain00455_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00458_0
# IR_LIT_STRING
 xchain00455_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00459_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00455_n8_α
.Lx00459_0:
 .quad .Lx00459_0_s
.Lx00459_0_s:
 .string "repl(\"-\",20)"
# IR_BOUND
 xchain00455_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00455_n9_α
# IR_RETURN
 xchain00455_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_replf_γ
# IR_LIT_STRING
 xchain00455_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00460_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00455_n10_α
.Lx00460_0:
 .quad .Lx00460_0_s
.Lx00460_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain00455_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00461_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00455_n11_α
.Lx00461_0:
 .quad 20
 xchain00455_n11_α:
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
  .Lrkfn1333: .string "repl"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1333]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00455_n12_α
 jmp xchain00455_n12_α
 xchain00455_n11_β:
 jmp xchain00455_n12_α
# IR_UNMARK
 xchain00455_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00455_n5_β
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
proc_replf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00462_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00462_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_replf_α_body
.Lx00462_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00462_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_reversef_α_body:
# IR_DISJUNCTION_NARY
 xchain00463_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00463_n2_α
xchain00463_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00464_0
 jmp xchain00463_n1_α
.Lx00464_0:
 jmp xchain00463_n1_α
 xchain00463_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00463_n1_α
xchain00463_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00463_n1_α
# IR_LIT_INTEGER
 xchain00463_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00465_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00463_n3_α
.Lx00465_0:
 .quad 1
# IR_VAR
 xchain00463_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00463_n4_α
 xchain00463_n2_β:
 jmp xchain00463_n0_af
# IR_VAR
 xchain00463_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00463_n5_α
# IR_UNOP
 xchain00463_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00463_n0_af
 cmp eax, 0
 jne xchain00463_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00463_n6_α
# IR_TO
 xchain00463_n5_α:
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
.Lx00466_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reversef_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00463_n7_α
 xchain00463_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00466_0
# IR_LIT_STRING
 xchain00463_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00467_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00463_n8_α
.Lx00467_0:
 .quad .Lx00467_0_s
.Lx00467_0_s:
 .string "reverse(\"a...z\")"
# IR_BOUND
 xchain00463_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00463_n9_α
# IR_RETURN
 xchain00463_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reversef_γ
# IR_LIT_STRING
 xchain00463_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00468_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00463_n10_α
.Lx00468_0:
 .quad .Lx00468_0_s
.Lx00468_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
 xchain00463_n10_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1354: .string "reverse"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1354]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00463_n11_α
 jmp xchain00463_n11_α
 xchain00463_n10_β:
 jmp xchain00463_n11_α
# IR_UNMARK
 xchain00463_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00463_n5_β
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
proc_reversef_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00469_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00469_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_reversef_α_body
.Lx00469_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00469_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_leftf_α_body:
# IR_DISJUNCTION_NARY
 xchain00470_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00470_n2_α
xchain00470_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00471_0
 jmp xchain00470_n1_α
.Lx00471_0:
 jmp xchain00470_n1_α
 xchain00470_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00470_n1_α
xchain00470_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00470_n1_α
# IR_LIT_INTEGER
 xchain00470_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00472_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00470_n3_α
.Lx00472_0:
 .quad 1
# IR_VAR
 xchain00470_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00470_n4_α
 xchain00470_n2_β:
 jmp xchain00470_n0_af
# IR_VAR
 xchain00470_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00470_n5_α
# IR_UNOP
 xchain00470_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00470_n0_af
 cmp eax, 0
 jne xchain00470_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00470_n6_α
# IR_TO
 xchain00470_n5_α:
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
.Lx00473_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_leftf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00470_n7_α
 xchain00470_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00473_0
# IR_LIT_STRING
 xchain00470_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00474_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00470_n8_α
.Lx00474_0:
 .quad .Lx00474_0_s
.Lx00474_0_s:
 .string "left(\"a\",10)"
# IR_BOUND
 xchain00470_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00470_n9_α
# IR_RETURN
 xchain00470_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_leftf_γ
# IR_LIT_STRING
 xchain00470_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00475_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00470_n10_α
.Lx00475_0:
 .quad .Lx00475_0_s
.Lx00475_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00470_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00476_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00470_n11_α
.Lx00476_0:
 .quad 10
 xchain00470_n11_α:
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
  .Lrkfn1376: .string "left"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1376]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00470_n12_α
 jmp xchain00470_n12_α
 xchain00470_n11_β:
 jmp xchain00470_n12_α
# IR_UNMARK
 xchain00470_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00470_n5_β
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
proc_leftf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00477_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00477_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_leftf_α_body
.Lx00477_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00477_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_centerf_α_body:
# IR_DISJUNCTION_NARY
 xchain00478_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00478_n2_α
xchain00478_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00479_0
 jmp xchain00478_n1_α
.Lx00479_0:
 jmp xchain00478_n1_α
 xchain00478_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00478_n1_α
xchain00478_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00478_n1_α
# IR_LIT_INTEGER
 xchain00478_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00480_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00478_n3_α
.Lx00480_0:
 .quad 1
# IR_VAR
 xchain00478_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00478_n4_α
 xchain00478_n2_β:
 jmp xchain00478_n0_af
# IR_VAR
 xchain00478_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00478_n5_α
# IR_UNOP
 xchain00478_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00478_n0_af
 cmp eax, 0
 jne xchain00478_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00478_n6_α
# IR_TO
 xchain00478_n5_α:
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
.Lx00481_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_centerf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00478_n7_α
 xchain00478_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00481_0
# IR_LIT_STRING
 xchain00478_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00482_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00478_n8_α
.Lx00482_0:
 .quad .Lx00482_0_s
.Lx00482_0_s:
 .string "center(\"a\",10)"
# IR_BOUND
 xchain00478_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00478_n9_α
# IR_RETURN
 xchain00478_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_centerf_γ
# IR_LIT_STRING
 xchain00478_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00483_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00478_n10_α
.Lx00483_0:
 .quad .Lx00483_0_s
.Lx00483_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00478_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00484_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00478_n11_α
.Lx00484_0:
 .quad 10
 xchain00478_n11_α:
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
  .Lrkfn1398: .string "center"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1398]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00478_n12_α
 jmp xchain00478_n12_α
 xchain00478_n11_β:
 jmp xchain00478_n12_α
# IR_UNMARK
 xchain00478_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00478_n5_β
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
proc_centerf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00485_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00485_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_centerf_α_body
.Lx00485_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00485_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_rightf_α_body:
# IR_DISJUNCTION_NARY
 xchain00486_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00486_n2_α
xchain00486_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00487_0
 jmp xchain00486_n1_α
.Lx00487_0:
 jmp xchain00486_n1_α
 xchain00486_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00486_n1_α
xchain00486_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00486_n1_α
# IR_LIT_INTEGER
 xchain00486_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00488_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00486_n3_α
.Lx00488_0:
 .quad 1
# IR_VAR
 xchain00486_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00486_n4_α
 xchain00486_n2_β:
 jmp xchain00486_n0_af
# IR_VAR
 xchain00486_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00486_n5_α
# IR_UNOP
 xchain00486_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00486_n0_af
 cmp eax, 0
 jne xchain00486_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00486_n6_α
# IR_TO
 xchain00486_n5_α:
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
.Lx00489_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_rightf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00486_n7_α
 xchain00486_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00489_0
# IR_LIT_STRING
 xchain00486_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00490_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00486_n8_α
.Lx00490_0:
 .quad .Lx00490_0_s
.Lx00490_0_s:
 .string "right(\"a\",10)"
# IR_BOUND
 xchain00486_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00486_n9_α
# IR_RETURN
 xchain00486_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_rightf_γ
# IR_LIT_STRING
 xchain00486_n9_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00491_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00486_n10_α
.Lx00491_0:
 .quad .Lx00491_0_s
.Lx00491_0_s:
 .string "a"
# IR_LIT_INTEGER
 xchain00486_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00492_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00486_n11_α
.Lx00492_0:
 .quad 10
 xchain00486_n11_α:
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
  .Lrkfn1420: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1420]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00486_n12_α
 jmp xchain00486_n12_α
 xchain00486_n11_β:
 jmp xchain00486_n12_α
# IR_UNMARK
 xchain00486_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00486_n5_β
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
proc_rightf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00493_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00493_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_rightf_α_body
.Lx00493_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00493_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_trimf_α_body:
# IR_DISJUNCTION_NARY
 xchain00494_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00494_n2_α
xchain00494_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00495_0
 jmp xchain00494_n1_α
.Lx00495_0:
 jmp xchain00494_n1_α
 xchain00494_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00494_n1_α
xchain00494_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00494_n1_α
# IR_LIT_INTEGER
 xchain00494_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00496_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00494_n3_α
.Lx00496_0:
 .quad 1
# IR_VAR
 xchain00494_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00494_n4_α
 xchain00494_n2_β:
 jmp xchain00494_n0_af
# IR_VAR
 xchain00494_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00494_n5_α
# IR_UNOP
 xchain00494_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00494_n0_af
 cmp eax, 0
 jne xchain00494_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00494_n6_α
# IR_TO
 xchain00494_n5_α:
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
 jg proc_trimf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00494_n7_α
 xchain00494_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00497_0
# IR_LIT_STRING
 xchain00494_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00498_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00494_n8_α
.Lx00498_0:
 .quad .Lx00498_0_s
.Lx00498_0_s:
 .string "trim(\"a  ...\")"
# IR_BOUND
 xchain00494_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00494_n9_α
# IR_RETURN
 xchain00494_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_trimf_γ
# IR_LIT_STRING
 xchain00494_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00499_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00494_n10_α
.Lx00499_0:
 .quad .Lx00499_0_s
.Lx00499_0_s:
 .string "a         "
 xchain00494_n10_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1441: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1441]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00494_n11_α
 jmp xchain00494_n11_α
 xchain00494_n10_β:
 jmp xchain00494_n11_α
# IR_UNMARK
 xchain00494_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00494_n5_β
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
proc_trimf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00500_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00500_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_trimf_α_body
.Lx00500_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00500_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_entabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00501_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00501_n2_α
xchain00501_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00502_0
 jmp xchain00501_n1_α
.Lx00502_0:
 jmp xchain00501_n1_α
 xchain00501_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00501_n1_α
xchain00501_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00501_n1_α
# IR_LIT_INTEGER
 xchain00501_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00503_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00501_n3_α
.Lx00503_0:
 .quad 1
# IR_VAR
 xchain00501_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00501_n4_α
 xchain00501_n2_β:
 jmp xchain00501_n0_af
# IR_VAR
 xchain00501_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00501_n5_α
# IR_UNOP
 xchain00501_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00501_n0_af
 cmp eax, 0
 jne xchain00501_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00501_n6_α
# IR_TO
 xchain00501_n5_α:
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
.Lx00504_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_entabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00501_n7_α
 xchain00501_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00504_0
# IR_LIT_STRING
 xchain00501_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00505_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00501_n8_α
.Lx00505_0:
 .quad .Lx00505_0_s
.Lx00505_0_s:
 .string "entab(\"a  ...\")"
# IR_BOUND
 xchain00501_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00501_n9_α
# IR_RETURN
 xchain00501_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_entabf_γ
# IR_LIT_STRING
 xchain00501_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00506_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00501_n10_α
.Lx00506_0:
 .quad .Lx00506_0_s
.Lx00506_0_s:
 .string "a         "
 xchain00501_n10_α:
# BOX IR_CALL entab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1462: .string "entab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1462]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00501_n11_α
 jmp xchain00501_n11_α
 xchain00501_n10_β:
 jmp xchain00501_n11_α
# IR_UNMARK
 xchain00501_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00501_n5_β
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
proc_entabf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00507_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00507_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_entabf_α_body
.Lx00507_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00507_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 392], rsp
  mov rdi, rsp
  mov esi, 384
  mov edx, 400
  call rt_jmp_frame_lexprep2@PLT
proc_detabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00508_n0_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00508_n2_α
xchain00508_n0_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00509_0
 jmp xchain00508_n1_α
.Lx00509_0:
 jmp xchain00508_n1_α
 xchain00508_n0_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00508_n1_α
xchain00508_n0_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00508_n1_α
# IR_LIT_INTEGER
 xchain00508_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00510_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00508_n3_α
.Lx00510_0:
 .quad 1
# IR_VAR
 xchain00508_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00508_n4_α
 xchain00508_n2_β:
 jmp xchain00508_n0_af
# IR_VAR
 xchain00508_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00508_n5_α
# IR_UNOP
 xchain00508_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00508_n0_af
 cmp eax, 0
 jne xchain00508_n0_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00508_n6_α
# IR_TO
 xchain00508_n5_α:
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
.Lx00511_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_detabf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00508_n7_α
 xchain00508_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00511_0
# IR_LIT_STRING
 xchain00508_n6_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00512_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00508_n8_α
.Lx00512_0:
 .quad .Lx00512_0_s
.Lx00512_0_s:
 .string "detab(\"a\\tb\\tc\")"
# IR_BOUND
 xchain00508_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00508_n9_α
# IR_RETURN
 xchain00508_n8_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_detabf_γ
# IR_LIT_STRING
 xchain00508_n9_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00513_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00508_n10_α
.Lx00513_0:
 .quad .Lx00513_0_s
.Lx00513_0_s:
 .string "a\tb\tc"
 xchain00508_n10_α:
# BOX IR_CALL detab(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1483: .string "detab"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1483]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00508_n11_α
 jmp xchain00508_n11_α
 xchain00508_n10_β:
 jmp xchain00508_n11_α
# IR_UNMARK
 xchain00508_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00508_n5_β
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
proc_detabf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 448
 mov qword ptr [rsp + 440], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 400], r11
 lea rax, [rip + .Lx00514_2]
 mov qword ptr [rbp + 408], rax
 lea rax, [rip + .Lx00514_3]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 392], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 384
 mov edx, 400
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_detabf_α_body
.Lx00514_2:
 mov rdx, qword ptr [rsp + -448]
 mov rcx, rsp
 add rcx, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00514_3:
 mov rdi, qword ptr [rsp + -448]
 mov rsi, rsp
 add rsi, -432
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_mapf_α_body:
# IR_DISJUNCTION_NARY
 xchain00515_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00515_n2_α
xchain00515_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00516_0
 jmp xchain00515_n1_α
.Lx00516_0:
 jmp xchain00515_n1_α
 xchain00515_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00515_n1_α
xchain00515_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00515_n1_α
# IR_LIT_INTEGER
 xchain00515_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00517_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00515_n3_α
.Lx00517_0:
 .quad 1
# IR_VAR
 xchain00515_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00515_n4_α
 xchain00515_n2_β:
 jmp xchain00515_n0_af
# IR_VAR
 xchain00515_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00515_n5_α
# IR_UNOP
 xchain00515_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00515_n0_af
 cmp eax, 0
 jne xchain00515_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00515_n6_α
# IR_TO
 xchain00515_n5_α:
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
.Lx00518_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_mapf_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00515_n7_α
 xchain00515_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00518_0
# IR_LIT_STRING
 xchain00515_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00519_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00515_n8_α
.Lx00519_0:
 .quad .Lx00519_0_s
.Lx00519_0_s:
 .string "map(\"quick brown fox\",\"a...z\",\"A...Z\")"
# IR_BOUND
 xchain00515_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00515_n9_α
# IR_RETURN
 xchain00515_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mapf_γ
# IR_LIT_STRING
 xchain00515_n9_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00520_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00515_n10_α
.Lx00520_0:
 .quad .Lx00520_0_s
.Lx00520_0_s:
 .string "quick brown fox"
# IR_LIT_STRING
 xchain00515_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00521_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00515_n11_α
.Lx00521_0:
 .quad .Lx00521_0_s
.Lx00521_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_LIT_STRING
 xchain00515_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00522_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00515_n12_α
.Lx00522_0:
 .quad .Lx00522_0_s
.Lx00522_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 xchain00515_n12_α:
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
  .Lrkfn1506: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1506]
 lea rsi, [rbp + 192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00515_n13_α
 jmp xchain00515_n13_α
 xchain00515_n12_β:
 jmp xchain00515_n13_α
# IR_UNMARK
 xchain00515_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00515_n5_β
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
proc_mapf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00523_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00523_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_mapf_α_body
.Lx00523_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00523_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_map1_α_body:
# IR_DISJUNCTION_NARY
 xchain00524_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00524_n2_α
xchain00524_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00525_0
 jmp xchain00524_n1_α
.Lx00525_0:
 jmp xchain00524_n1_α
 xchain00524_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00524_n1_α
xchain00524_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00524_n1_α
# IR_LIT_INTEGER
 xchain00524_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00526_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00524_n3_α
.Lx00526_0:
 .quad 1
# IR_VAR
 xchain00524_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00524_n4_α
 xchain00524_n2_β:
 jmp xchain00524_n0_af
# IR_VAR
 xchain00524_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00524_n5_α
# IR_UNOP
 xchain00524_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00524_n0_af
 cmp eax, 0
 jne xchain00524_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00524_n6_α
# IR_TO
 xchain00524_n5_α:
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
.Lx00527_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00524_n7_α
 xchain00524_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00527_0
# IR_LIT_STRING
 xchain00524_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00528_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00524_n8_α
.Lx00528_0:
 .quad .Lx00528_0_s
.Lx00528_0_s:
 .string "map(\"b\",\"ab\",\"ba\")"
# IR_BOUND
 xchain00524_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00524_n9_α
# IR_RETURN
 xchain00524_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map1_γ
# IR_LIT_STRING
 xchain00524_n9_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00529_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00524_n10_α
.Lx00529_0:
 .quad .Lx00529_0_s
.Lx00529_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00524_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00530_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00524_n11_α
.Lx00530_0:
 .quad .Lx00530_0_s
.Lx00530_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00524_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00531_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00524_n12_α
.Lx00531_0:
 .quad .Lx00531_0_s
.Lx00531_0_s:
 .string "ba"
 xchain00524_n12_α:
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
  .Lrkfn1529: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1529]
 lea rsi, [rbp + 192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00524_n13_α
 jmp xchain00524_n13_α
 xchain00524_n12_β:
 jmp xchain00524_n13_α
# IR_UNMARK
 xchain00524_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00524_n5_β
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
proc_map1_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00532_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00532_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_map1_α_body
.Lx00532_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00532_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 672
  mov edx, 688
  call rt_jmp_frame_lexprep2@PLT
proc_map2_α_body:
# IR_DISJUNCTION_NARY
 xchain00533_n0_α:
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 mov dword ptr [rbp + 560], 0
 jmp xchain00533_n2_α
xchain00533_n0_as:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 0
 jne .Lx00534_0
 jmp xchain00533_n1_α
.Lx00534_0:
 jmp xchain00533_n1_α
 xchain00533_n0_β:
 mov eax, dword ptr [rbp + 560]
 jmp xchain00533_n1_α
xchain00533_n0_af:
 add dword ptr [rbp + 560], 1
 mov eax, dword ptr [rbp + 560]
 jmp xchain00533_n1_α
# IR_LIT_INTEGER
 xchain00533_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00535_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00533_n3_α
.Lx00535_0:
 .quad 1
# IR_VAR
 xchain00533_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 648], rax
 jmp xchain00533_n4_α
 xchain00533_n2_β:
 jmp xchain00533_n0_af
# IR_VAR
 xchain00533_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00533_n5_α
# IR_UNOP
 xchain00533_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00533_n0_af
 cmp eax, 0
 jne xchain00533_n0_af
 mov qword ptr [rbp + 608], 0
 mov qword ptr [rbp + 616], 0
 jmp xchain00533_n6_α
# IR_TO
 xchain00533_n5_α:
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
.Lx00536_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_map2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00533_n7_α
 xchain00533_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00536_0
# IR_LIT_STRING
 xchain00533_n6_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00537_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00533_n8_α
.Lx00537_0:
 .quad .Lx00537_0_s
.Lx00537_0_s:
 .string "map(\"b\",\"ab\",\"ba\") & map(\"c\",\"dc\",\"cd\")"
# IR_BOUND
 xchain00533_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00533_n9_α
# IR_RETURN
 xchain00533_n8_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_map2_γ
# IR_LIT_STRING
 xchain00533_n9_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00538_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00533_n10_α
.Lx00538_0:
 .quad .Lx00538_0_s
.Lx00538_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00533_n10_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00539_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00533_n11_α
.Lx00539_0:
 .quad .Lx00539_0_s
.Lx00539_0_s:
 .string "ab"
# IR_LIT_STRING
 xchain00533_n11_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx00540_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00533_n12_α
.Lx00540_0:
 .quad .Lx00540_0_s
.Lx00540_0_s:
 .string "ba"
 xchain00533_n12_α:
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
  .Lrkfn1552: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1552]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00533_n14_α
 jmp xchain00533_n13_α
 xchain00533_n12_β:
 jmp xchain00533_n14_α
# IR_LIT_STRING
 xchain00533_n13_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00541_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00533_n15_α
.Lx00541_0:
 .quad .Lx00541_0_s
.Lx00541_0_s:
 .string "c"
# IR_UNMARK
 xchain00533_n14_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00533_n5_β
# IR_LIT_STRING
 xchain00533_n15_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx00542_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00533_n16_α
.Lx00542_0:
 .quad .Lx00542_0_s
.Lx00542_0_s:
 .string "dc"
# IR_LIT_STRING
 xchain00533_n16_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00543_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00533_n17_α
.Lx00543_0:
 .quad .Lx00543_0_s
.Lx00543_0_s:
 .string "cd"
 xchain00533_n17_α:
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
  .Lrkfn1559: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1559]
 lea rsi, [rbp + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00533_n14_α
 jmp xchain00533_n18_α
 xchain00533_n17_β:
 jmp xchain00533_n14_α
 xchain00533_n18_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00533_n14_α
xchain00533_n18_β:
 jmp xchain00533_n14_α
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
proc_map2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 736
 mov qword ptr [rsp + 728], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 688], r11
 lea rax, [rip + .Lx00544_2]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + .Lx00544_3]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 680], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 672
 mov edx, 688
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_map2_α_body
.Lx00544_2:
 mov rdx, qword ptr [rsp + -736]
 mov rcx, rsp
 add rcx, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00544_3:
 mov rdi, qword ptr [rsp + -736]
 mov rsi, rsp
 add rsi, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 912
  mov edx, 928
  call rt_jmp_frame_lexprep2@PLT
proc_tablemap_α_body:
# IR_DISJUNCTION_NARY
 xchain00545_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00545_n2_α
xchain00545_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00546_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 jmp xchain00545_n1_α
.Lx00546_0:
 jmp xchain00545_n1_α
 xchain00545_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00545_n1_α
xchain00545_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00545_n1_α
# IR_DISJUNCTION_NARY
 xchain00545_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00545_n5_α
xchain00545_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00547_0
 jmp xchain00545_n4_α
.Lx00547_0:
 jmp xchain00545_n4_α
 xchain00545_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00545_n4_α
xchain00545_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00545_n4_α
# IR_VAR_REF
 xchain00545_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052400
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00545_n6_α
 xchain00545_n2_β:
 jmp xchain00545_n0_af
 xchain00545_n3_α:
 jmp xchain00545_n0_as
xchain00545_n3_β:
 jmp xchain00545_n1_α
# IR_LIT_INTEGER
 xchain00545_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00548_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00545_n7_α
.Lx00548_0:
 .quad 1
# IR_VAR
 xchain00545_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00545_n8_α
 xchain00545_n5_β:
 jmp xchain00545_n1_af
# IR_NULLTEST_VAR
 xchain00545_n6_α:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 99
 je xchain00545_n0_af
 mov rdi, qword ptr [rbp + 800]
 mov rsi, qword ptr [rbp + 808]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00545_n0_af
 cmp eax, 0
 jne xchain00545_n0_af
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 840], rax
 jmp xchain00545_n9_α
# IR_VAR
 xchain00545_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00545_n10_α
# IR_UNOP
 xchain00545_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00545_n1_af
 cmp eax, 0
 jne xchain00545_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00545_n11_α
# IR_LIT_INTEGER
 xchain00545_n9_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx00549_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain00545_n12_α
.Lx00549_0:
 .quad 1
# IR_TO
 xchain00545_n10_α:
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
.Lx00550_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tablemap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00545_n13_α
 xchain00545_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00550_0
# IR_LIT_STRING
 xchain00545_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00551_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00545_n14_α
.Lx00551_0:
 .quad .Lx00551_0_s
.Lx00551_0_s:
 .string "T[\"b\"]"
# IR_ASSIGN_VAR
 xchain00545_n12_α:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00545_n0_af
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain00545_n15_α
# IR_BOUND
 xchain00545_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00545_n16_α
# IR_RETURN
 xchain00545_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tablemap_γ
 xchain00545_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1586: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1586]
 lea rsi, [rbp + 784]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain00545_n18_α
 jmp xchain00545_n17_α
 xchain00545_n15_β:
 jmp xchain00545_n18_α
# IR_VAR_REF
 xchain00545_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00545_n19_α
# IR_ASSIGN gva
 xchain00545_n17_α:
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00545_n18_α
# IR_VAR_REF
 xchain00545_n18_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00545_n20_α
# IR_LIT_STRING
 xchain00545_n19_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx00552_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00545_n21_α
.Lx00552_0:
 .quad .Lx00552_0_s
.Lx00552_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00545_n20_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx00553_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00545_n22_α
.Lx00553_0:
 .quad .Lx00553_0_s
.Lx00553_0_s:
 .string "a"
# IR_SUBSCRIPT x[i] variable
 xchain00545_n21_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00545_n24_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00545_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain00545_n22_α:
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00545_n26_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00545_n25_α
# IR_DEREF variable -> value
 xchain00545_n23_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00545_n24_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00545_n24_α
# IR_UNMARK
 xchain00545_n24_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00545_n10_β
# IR_LIT_STRING
 xchain00545_n25_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx00554_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00545_n27_α
.Lx00554_0:
 .quad .Lx00554_0_s
.Lx00554_0_s:
 .string "b"
# IR_VAR_REF
 xchain00545_n26_α:
 mov rax, 4294967305
 mov rdx, 1879052384
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00545_n28_α
# IR_ASSIGN_VAR
 xchain00545_n27_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00545_n26_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00545_n26_α
# IR_LIT_STRING
 xchain00545_n28_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00555_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00545_n29_α
.Lx00555_0:
 .quad .Lx00555_0_s
.Lx00555_0_s:
 .string "b"
# IR_SUBSCRIPT x[i] variable
 xchain00545_n29_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00545_n1_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00545_n30_α
# IR_LIT_STRING
 xchain00545_n30_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx00556_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00545_n31_α
.Lx00556_0:
 .quad .Lx00556_0_s
.Lx00556_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00545_n31_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00545_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00545_n3_α
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
proc_tablemap_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 976
 mov qword ptr [rsp + 968], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 928], r11
 lea rax, [rip + .Lx00557_2]
 mov qword ptr [rbp + 936], rax
 lea rax, [rip + .Lx00557_3]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 920], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 912
 mov edx, 928
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tablemap_α_body
.Lx00557_2:
 mov rdx, qword ptr [rsp + -976]
 mov rcx, rsp
 add rcx, -960
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00557_3:
 mov rdi, qword ptr [rsp + -976]
 mov rsi, rsp
 add rsi, -960
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1112], rsp
  mov rdi, rsp
  mov esi, 1104
  mov edx, 1120
  call rt_jmp_frame_lexprep2@PLT
proc_listmap_α_body:
# IR_DISJUNCTION_NARY
 xchain00558_n0_α:
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 mov dword ptr [rbp + 480], 0
 jmp xchain00558_n2_α
xchain00558_n0_as:
 mov eax, dword ptr [rbp + 480]
 cmp eax, 0
 jne .Lx00559_0
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 472], rax
 jmp xchain00558_n1_α
.Lx00559_0:
 jmp xchain00558_n1_α
 xchain00558_n0_β:
 mov eax, dword ptr [rbp + 480]
 jmp xchain00558_n1_α
xchain00558_n0_af:
 add dword ptr [rbp + 480], 1
 mov eax, dword ptr [rbp + 480]
 jmp xchain00558_n1_α
# IR_DISJUNCTION_NARY
 xchain00558_n1_α:
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 mov dword ptr [rbp + 352], 0
 jmp xchain00558_n5_α
xchain00558_n1_as:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 0
 jne .Lx00560_0
 jmp xchain00558_n4_α
.Lx00560_0:
 jmp xchain00558_n4_α
 xchain00558_n1_β:
 mov eax, dword ptr [rbp + 352]
 jmp xchain00558_n4_α
xchain00558_n1_af:
 add dword ptr [rbp + 352], 1
 mov eax, dword ptr [rbp + 352]
 jmp xchain00558_n4_α
# IR_VAR_REF
 xchain00558_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052432
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00558_n6_α
 xchain00558_n2_β:
 jmp xchain00558_n0_af
 xchain00558_n3_α:
 jmp xchain00558_n0_as
xchain00558_n3_β:
 jmp xchain00558_n1_α
# IR_LIT_INTEGER
 xchain00558_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00561_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00558_n7_α
.Lx00561_0:
 .quad 1
# IR_VAR
 xchain00558_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 440], rax
 jmp xchain00558_n8_α
 xchain00558_n5_β:
 jmp xchain00558_n1_af
# IR_NULLTEST_VAR
 xchain00558_n6_α:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 99
 je xchain00558_n0_af
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00558_n0_af
 cmp eax, 0
 jne xchain00558_n0_af
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00558_n9_α
# IR_VAR
 xchain00558_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00558_n10_α
# IR_UNOP
 xchain00558_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00558_n1_af
 cmp eax, 0
 jne xchain00558_n1_af
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain00558_n11_α
# IR_LIT_INTEGER
 xchain00558_n9_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00562_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00558_n12_α
.Lx00562_0:
 .quad 1
# IR_TO
 xchain00558_n10_α:
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
.Lx00563_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_listmap_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00558_n13_α
 xchain00558_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00563_0
# IR_LIT_STRING
 xchain00558_n11_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00564_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00558_n14_α
.Lx00564_0:
 .quad .Lx00564_0_s
.Lx00564_0_s:
 .string "L[ord(\"b\")]"
# IR_ASSIGN_VAR
 xchain00558_n12_α:
 mov rdi, qword ptr [rbp + 1024]
 mov rsi, qword ptr [rbp + 1032]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00558_n0_af
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00558_n15_α
# IR_BOUND
 xchain00558_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00558_n16_α
# IR_RETURN
 xchain00558_n14_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_listmap_γ
# IR_LIT_INTEGER
 xchain00558_n15_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00565_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00558_n17_α
.Lx00565_0:
 .quad 256
# IR_VAR_REF
 xchain00558_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00558_n18_α
 xchain00558_n17_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn1635: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1635]
 lea rsi, [rbp + 928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain00558_n20_α
 jmp xchain00558_n19_α
 xchain00558_n17_β:
 jmp xchain00558_n20_α
# IR_LIT_STRING
 xchain00558_n18_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx00566_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00558_n21_α
.Lx00566_0:
 .quad .Lx00566_0_s
.Lx00566_0_s:
 .string "b"
# IR_ASSIGN gva
 xchain00558_n19_α:
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00558_n20_α
# IR_VAR_REF
 xchain00558_n20_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00558_n22_α
 xchain00558_n21_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1641: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1641]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00558_n24_α
 jmp xchain00558_n23_α
 xchain00558_n21_β:
 jmp xchain00558_n24_α
# IR_LIT_STRING
 xchain00558_n22_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx00567_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain00558_n25_α
.Lx00567_0:
 .quad .Lx00567_0_s
.Lx00567_0_s:
 .string "a"
# IR_SUBSCRIPT x[i] variable
 xchain00558_n23_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00558_n24_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00558_n26_α
# IR_UNMARK
 xchain00558_n24_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00558_n10_β
 xchain00558_n25_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
  .section .rodata
  .Lrkfn1647: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1647]
 lea rsi, [rbp + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain00558_n28_α
 jmp xchain00558_n27_α
 xchain00558_n25_β:
 jmp xchain00558_n28_α
# IR_DEREF variable -> value
 xchain00558_n26_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00558_n24_α
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00558_n24_α
# IR_SUBSCRIPT x[i] variable
 xchain00558_n27_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00558_n28_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00558_n29_α
# IR_VAR_REF
 xchain00558_n28_α:
 mov rax, 4294967305
 mov rdx, 1879052416
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00558_n30_α
# IR_LIT_STRING
 xchain00558_n29_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00568_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00558_n31_α
.Lx00568_0:
 .quad .Lx00568_0_s
.Lx00568_0_s:
 .string "b"
# IR_LIT_STRING
 xchain00558_n30_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx00569_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00558_n32_α
.Lx00569_0:
 .quad .Lx00569_0_s
.Lx00569_0_s:
 .string "b"
# IR_ASSIGN_VAR
 xchain00558_n31_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 864]
 mov rcx, qword ptr [rbp + 872]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00558_n28_α
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00558_n28_α
 xchain00558_n32_α:
# BOX IR_CALL ord(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn1656: .string "ord"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1656]
 lea rsi, [rbp + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00558_n1_α
 jmp xchain00558_n33_α
 xchain00558_n32_β:
 jmp xchain00558_n1_α
# IR_SUBSCRIPT x[i] variable
 xchain00558_n33_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00558_n1_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00558_n34_α
# IR_LIT_STRING
 xchain00558_n34_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx00570_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain00558_n35_α
.Lx00570_0:
 .quad .Lx00570_0_s
.Lx00570_0_s:
 .string "a"
# IR_ASSIGN_VAR
 xchain00558_n35_α:
 mov rdi, qword ptr [rbp + 624]
 mov rsi, qword ptr [rbp + 632]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00558_n1_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00558_n3_α
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
proc_listmap_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1168
 mov qword ptr [rsp + 1160], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1120], r11
 lea rax, [rip + .Lx00571_2]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + .Lx00571_3]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1112], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1104
 mov edx, 1120
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_listmap_α_body
.Lx00571_2:
 mov rdx, qword ptr [rsp + -1168]
 mov rcx, rsp
 add rcx, -1152
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00571_3:
 mov rdi, qword ptr [rsp + -1168]
 mov rsi, rsp
 add rsi, -1152
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 456], rsp
  mov rdi, rsp
  mov esi, 448
  mov edx, 464
  call rt_jmp_frame_lexprep2@PLT
proc_nullscan_α_body:
# IR_DISJUNCTION_NARY
 xchain00572_n0_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00572_n2_α
xchain00572_n0_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00573_0
 jmp xchain00572_n1_α
.Lx00573_0:
 jmp xchain00572_n1_α
 xchain00572_n0_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00572_n1_α
xchain00572_n0_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00572_n1_α
# IR_LIT_INTEGER
 xchain00572_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00574_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00572_n3_α
.Lx00574_0:
 .quad 1
# IR_VAR
 xchain00572_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00572_n4_α
 xchain00572_n2_β:
 jmp xchain00572_n0_af
# IR_VAR
 xchain00572_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00572_n5_α
# IR_UNOP
 xchain00572_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00572_n0_af
 cmp eax, 0
 jne xchain00572_n0_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00572_n6_α
# IR_TO
 xchain00572_n5_α:
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
.Lx00575_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_nullscan_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00572_n7_α
 xchain00572_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00575_0
# IR_LIT_STRING
 xchain00572_n6_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00576_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00572_n8_α
.Lx00576_0:
 .quad .Lx00576_0_s
.Lx00576_0_s:
 .string "s ? 0"
# IR_BOUND
 xchain00572_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00572_n9_α
# IR_RETURN
 xchain00572_n8_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_nullscan_γ
# IR_LIT_STRING
 xchain00572_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00577_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00572_n10_α
.Lx00577_0:
 .quad .Lx00577_0_s
.Lx00577_0_s:
 .string "abc"
# IR_GEN_SCAN
 xchain00572_n10_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00572_n11_α
# IR_LIT_INTEGER
 xchain00572_n11_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx00578_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain00572_n12_α
.Lx00578_0:
 .quad 0
# IR_GEN_SCAN
 xchain00572_n12_α:
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
 lea rdi, [rbp + 192]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 192]
 mov r14, qword ptr [rbp + 200]
 mov r15, qword ptr [rbp + 208]
 jmp xchain00572_n13_α
 xchain00572_n12_β:
 jmp xchain00572_n13_α
# IR_UNMARK
 xchain00572_n13_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00572_n5_β
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
proc_nullscan_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 512
 mov qword ptr [rsp + 504], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 464], r11
 lea rax, [rip + .Lx00579_2]
 mov qword ptr [rbp + 472], rax
 lea rax, [rip + .Lx00579_3]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 456], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 448
 mov edx, 464
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_nullscan_α_body
.Lx00579_2:
 mov rdx, qword ptr [rsp + -512]
 mov rcx, rsp
 add rcx, -496
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00579_3:
 mov rdi, qword ptr [rsp + -512]
 mov rsi, rsp
 add rsi, -496
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_movef_α_body:
# IR_DISJUNCTION_NARY
 xchain00580_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00580_n2_α
xchain00580_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00581_0
 jmp xchain00580_n1_α
.Lx00581_0:
 jmp xchain00580_n1_α
 xchain00580_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00580_n1_α
xchain00580_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00580_n1_α
# IR_LIT_STRING
 xchain00580_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00582_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00580_n3_α
.Lx00582_0:
 .quad .Lx00582_0_s
.Lx00582_0_s:
 .string "abcde"
# IR_VAR
 xchain00580_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00580_n4_α
 xchain00580_n2_β:
 jmp xchain00580_n0_af
# IR_GEN_SCAN
 xchain00580_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00580_n5_α
# IR_UNOP
 xchain00580_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00580_n0_af
 cmp eax, 0
 jne xchain00580_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00580_n6_α
# IR_LIT_INTEGER
 xchain00580_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00583_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00580_n7_α
.Lx00583_0:
 .quad 1
# IR_LIT_STRING
 xchain00580_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00584_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00580_n8_α
.Lx00584_0:
 .quad .Lx00584_0_s
.Lx00584_0_s:
 .string "move(0)"
# IR_VAR
 xchain00580_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00580_n9_α
# IR_RETURN
 xchain00580_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_movef_γ
# IR_TO
 xchain00580_n9_α:
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
.Lx00585_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00580_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00580_n11_α
 xchain00580_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00585_0
# IR_GEN_SCAN
 xchain00580_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_movef_ω
 xchain00580_n10_β:
 jmp proc_movef_ω
# IR_BOUND
 xchain00580_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00580_n12_α
# IR_LIT_INTEGER
 xchain00580_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00586_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00580_n13_α
.Lx00586_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00580_n13_α:
 sub rsp, 16
 mov rax, 0
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00587_239
 add rsp, 16
 jmp xchain00580_n14_α
.Lx00587_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00587_240
 add rsp, 16
 jmp xchain00580_n14_α
.Lx00587_240:
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
 jmp xchain00580_n14_α
 xchain00580_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00580_n14_α
# IR_UNMARK
 xchain00580_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00580_n9_β
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
proc_movef_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00588_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00588_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_movef_α_body
.Lx00588_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00588_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 568], rsp
  mov rdi, rsp
  mov esi, 560
  mov edx, 576
  call rt_jmp_frame_lexprep2@PLT
proc_mov11_α_body:
# IR_DISJUNCTION_NARY
 xchain00589_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00589_n2_α
xchain00589_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00590_0
 jmp xchain00589_n1_α
.Lx00590_0:
 jmp xchain00589_n1_α
 xchain00589_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00589_n1_α
xchain00589_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00589_n1_α
# IR_LIT_STRING
 xchain00589_n1_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx00591_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00589_n3_α
.Lx00591_0:
 .quad .Lx00591_0_s
.Lx00591_0_s:
 .string "abcde"
# IR_VAR
 xchain00589_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 536], rax
 jmp xchain00589_n4_α
 xchain00589_n2_β:
 jmp xchain00589_n0_af
# IR_GEN_SCAN
 xchain00589_n3_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00589_n5_α
# IR_UNOP
 xchain00589_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00589_n0_af
 cmp eax, 0
 jne xchain00589_n0_af
 mov qword ptr [rbp + 496], 0
 mov qword ptr [rbp + 504], 0
 jmp xchain00589_n6_α
# IR_LIT_INTEGER
 xchain00589_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00592_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00589_n7_α
.Lx00592_0:
 .quad 1
# IR_LIT_STRING
 xchain00589_n6_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00593_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00589_n8_α
.Lx00593_0:
 .quad .Lx00593_0_s
.Lx00593_0_s:
 .string "move(1) & move(-1)"
# IR_VAR
 xchain00589_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00589_n9_α
# IR_RETURN
 xchain00589_n8_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_mov11_γ
# IR_TO
 xchain00589_n9_α:
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
.Lx00594_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00589_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00589_n11_α
 xchain00589_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00594_0
# IR_GEN_SCAN
 xchain00589_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_mov11_ω
 xchain00589_n10_β:
 jmp proc_mov11_ω
# IR_BOUND
 xchain00589_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00589_n12_α
# IR_LIT_INTEGER
 xchain00589_n12_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00595_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00589_n13_α
.Lx00595_0:
 .quad 1
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00589_n13_α:
 sub rsp, 16
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00596_239
 add rsp, 16
 jmp xchain00589_n15_α
.Lx00596_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00596_240
 add rsp, 16
 jmp xchain00589_n15_α
.Lx00596_240:
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
 jmp xchain00589_n14_α
 xchain00589_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00589_n15_α
# IR_LIT_INTEGER
 xchain00589_n14_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx00597_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain00589_n16_α
.Lx00597_0:
 .quad 18446744073709551615
# IR_UNMARK
 xchain00589_n15_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00589_n9_β
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00589_n16_α:
 sub rsp, 16
 mov rax, -1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jge .Lx00598_239
 add rsp, 16
 jmp xchain00589_n13_α
.Lx00598_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00598_240
 add rsp, 16
 jmp xchain00589_n13_α
.Lx00598_240:
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
 jmp xchain00589_n17_α
 xchain00589_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00589_n13_α
 xchain00589_n17_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00589_n15_α
xchain00589_n17_β:
 jmp xchain00589_n15_α
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
proc_mov11_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 624
 mov qword ptr [rsp + 616], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 576], r11
 lea rax, [rip + .Lx00599_2]
 mov qword ptr [rbp + 584], rax
 lea rax, [rip + .Lx00599_3]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 568], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 560
 mov edx, 576
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_mov11_α_body
.Lx00599_2:
 mov rdx, qword ptr [rsp + -624]
 mov rcx, rsp
 add rcx, -608
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00599_3:
 mov rdi, qword ptr [rsp + -624]
 mov rsi, rsp
 add rsi, -608
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_pos11_α_body:
# IR_DISJUNCTION_NARY
 xchain00600_n0_α:
 mov qword ptr [rbp + 592], 0
 mov qword ptr [rbp + 600], 0
 mov dword ptr [rbp + 608], 0
 jmp xchain00600_n2_α
xchain00600_n0_as:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 0
 jne .Lx00601_0
 jmp xchain00600_n1_α
.Lx00601_0:
 jmp xchain00600_n1_α
 xchain00600_n0_β:
 mov eax, dword ptr [rbp + 608]
 jmp xchain00600_n1_α
xchain00600_n0_af:
 add dword ptr [rbp + 608], 1
 mov eax, dword ptr [rbp + 608]
 jmp xchain00600_n1_α
# IR_LIT_STRING
 xchain00600_n1_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00602_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00600_n3_α
.Lx00602_0:
 .quad .Lx00602_0_s
.Lx00602_0_s:
 .string "abcde"
# IR_VAR
 xchain00600_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 696], rax
 jmp xchain00600_n4_α
 xchain00600_n2_β:
 jmp xchain00600_n0_af
# IR_GEN_SCAN
 xchain00600_n3_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00600_n5_α
# IR_UNOP
 xchain00600_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00600_n0_af
 cmp eax, 0
 jne xchain00600_n0_af
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 jmp xchain00600_n6_α
# IR_LIT_INTEGER
 xchain00600_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00603_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00600_n7_α
.Lx00603_0:
 .quad 1
# IR_LIT_STRING
 xchain00600_n6_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00604_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00600_n8_α
.Lx00604_0:
 .quad .Lx00604_0_s
.Lx00604_0_s:
 .string "(&pos +:= 1) & (&pos -:= 1)"
# IR_VAR
 xchain00600_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00600_n9_α
# IR_RETURN
 xchain00600_n8_α:
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pos11_γ
# IR_TO
 xchain00600_n9_α:
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
.Lx00605_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00600_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00600_n11_α
 xchain00600_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00605_0
# IR_GEN_SCAN
 xchain00600_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_pos11_ω
 xchain00600_n10_β:
 jmp proc_pos11_ω
# IR_BOUND
 xchain00600_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00600_n12_α
# KEYWORD_pos_reg [always r14+1: register cursor is the source of truth, incl. ?-less scanning callees]
 xchain00600_n12_α:
 mov qword ptr [rbp + 496], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [rbp + 504], rax
 jmp xchain00600_n13_α
 xchain00600_n12_β:
 jmp xchain00600_n16_α
# IR_LIT_INTEGER
 xchain00600_n13_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00606_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00600_n14_α
.Lx00606_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00600_n14_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 7
 je .Lx00607_1
 cmp eax, 6
 jne .Lx00607_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00607_0
.Lx00607_1:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
 jmp xchain00600_n15_α
.Lx00607_0:
 lea rdi, [rbp + 496]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 464]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00600_n15_α
 xchain00600_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 464]
 cmp eax, 100
 je .Lx00608_0
 mov eax, dword ptr [rbp + 464]
 cmp eax, 6
 jne .Lx00608_2
.Lx00608_1:
 mov rax, qword ptr [rbp + 472]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 432], 6
 mov qword ptr [rbp + 440], rax
 jmp xchain00600_n17_α
.Lx00608_0:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 lea r9, [rbp + 432]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00600_n17_α
.Lx00608_2:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00600_n16_α
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00600_n17_α
 xchain00600_n15_β:
 jmp xchain00600_n16_α
# IR_UNMARK
 xchain00600_n16_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00600_n9_β
# BOX ICN IR_KEYWORD_ASSIGN pos [unconditional two-world sync: scan_pos global + r14 delta; fail->omega; result {DT_I,pos}]
 xchain00600_n17_α:
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00600_n16_α
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 mov r14, rdx
 sub r14, 1
 jmp xchain00600_n18_α
# KEYWORD_pos_reg [always r14+1: register cursor is the source of truth, incl. ?-less scanning callees]
 xchain00600_n18_α:
 mov qword ptr [rbp + 352], 6
 mov rax, r14
 add rax, 1
 mov qword ptr [rbp + 360], rax
 jmp xchain00600_n19_α
 xchain00600_n18_β:
 jmp xchain00600_n16_α
# IR_LIT_INTEGER
 xchain00600_n19_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00609_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00600_n20_α
.Lx00609_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain00600_n20_α:
 mov eax, dword ptr [rbp + 352]
 cmp eax, 7
 je .Lx00610_1
 cmp eax, 6
 jne .Lx00610_0
 mov eax, dword ptr [rbp + 384]
 cmp eax, 6
 jne .Lx00610_0
.Lx00610_1:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
 jmp xchain00600_n21_α
.Lx00610_0:
 lea rdi, [rbp + 352]
 lea rsi, [rbp + 384]
 lea rdx, [rbp + 320]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00600_n21_α
 xchain00600_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 320]
 cmp eax, 100
 je .Lx00611_0
 mov eax, dword ptr [rbp + 320]
 cmp eax, 6
 jne .Lx00611_2
.Lx00611_1:
 mov rax, qword ptr [rbp + 328]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain00600_n22_α
.Lx00611_0:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00600_n22_α
.Lx00611_2:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00600_n16_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00600_n22_α
 xchain00600_n21_β:
 jmp xchain00600_n16_α
# BOX ICN IR_KEYWORD_ASSIGN pos [unconditional two-world sync: scan_pos global + r14 delta; fail->omega; result {DT_I,pos}]
 xchain00600_n22_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 call rt_keyword_pos_set@PLT
 cmp eax, 99
 je xchain00600_n16_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 mov r14, rdx
 sub r14, 1
 jmp xchain00600_n23_α
 xchain00600_n23_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
 jmp xchain00600_n16_α
xchain00600_n23_β:
 jmp xchain00600_n16_α
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
proc_pos11_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00612_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00612_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_pos11_α_body
.Lx00612_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00612_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_tabf_α_body:
# IR_DISJUNCTION_NARY
 xchain00613_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00613_n2_α
xchain00613_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00614_0
 jmp xchain00613_n1_α
.Lx00614_0:
 jmp xchain00613_n1_α
 xchain00613_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00613_n1_α
xchain00613_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00613_n1_α
# IR_LIT_STRING
 xchain00613_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00615_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00613_n3_α
.Lx00615_0:
 .quad .Lx00615_0_s
.Lx00615_0_s:
 .string "abcde"
# IR_VAR
 xchain00613_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00613_n4_α
 xchain00613_n2_β:
 jmp xchain00613_n0_af
# IR_GEN_SCAN
 xchain00613_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00613_n5_α
# IR_UNOP
 xchain00613_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00613_n0_af
 cmp eax, 0
 jne xchain00613_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00613_n6_α
# IR_LIT_INTEGER
 xchain00613_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00616_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00613_n7_α
.Lx00616_0:
 .quad 1
# IR_LIT_STRING
 xchain00613_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00617_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00613_n8_α
.Lx00617_0:
 .quad .Lx00617_0_s
.Lx00617_0_s:
 .string "tab(3)"
# IR_VAR
 xchain00613_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00613_n9_α
# IR_RETURN
 xchain00613_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabf_γ
# IR_TO
 xchain00613_n9_α:
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
.Lx00618_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00613_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00613_n11_α
 xchain00613_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00618_0
# IR_GEN_SCAN
 xchain00613_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabf_ω
 xchain00613_n10_β:
 jmp proc_tabf_ω
# IR_BOUND
 xchain00613_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00613_n12_α
# IR_LIT_INTEGER
 xchain00613_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00619_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00613_n13_α
.Lx00619_0:
 .quad 3
# IR_SCAN_TAB
 xchain00613_n13_α:
 sub rsp, 16
 mov rax, 3
 cmp rax, 1
 jge .Lx00620_0
 add rax, r15
 add rax, 1
.Lx00620_0:
 cmp rax, 1
 jge .Lx00620_239
 add rsp, 16
 jmp xchain00613_n14_α
.Lx00620_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00620_240
 add rsp, 16
 jmp xchain00613_n14_α
.Lx00620_240:
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
 jmp xchain00613_n14_α
 xchain00613_n13_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00613_n14_α
# IR_UNMARK
 xchain00613_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00613_n9_β
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
proc_tabf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00621_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00621_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tabf_α_body
.Lx00621_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00621_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_matchf_α_body:
# IR_DISJUNCTION_NARY
 xchain00622_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00622_n2_α
xchain00622_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00623_0
 jmp xchain00622_n1_α
.Lx00623_0:
 jmp xchain00622_n1_α
 xchain00622_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00622_n1_α
xchain00622_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00622_n1_α
# IR_LIT_STRING
 xchain00622_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00624_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00622_n3_α
.Lx00624_0:
 .quad .Lx00624_0_s
.Lx00624_0_s:
 .string "abcde"
# IR_VAR
 xchain00622_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00622_n4_α
 xchain00622_n2_β:
 jmp xchain00622_n0_af
# IR_GEN_SCAN
 xchain00622_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00622_n5_α
# IR_UNOP
 xchain00622_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00622_n0_af
 cmp eax, 0
 jne xchain00622_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00622_n6_α
# IR_LIT_INTEGER
 xchain00622_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00625_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00622_n7_α
.Lx00625_0:
 .quad 1
# IR_LIT_STRING
 xchain00622_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00626_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00622_n8_α
.Lx00626_0:
 .quad .Lx00626_0_s
.Lx00626_0_s:
 .string "match(\"abc\")"
# IR_VAR
 xchain00622_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00622_n9_α
# IR_RETURN
 xchain00622_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_matchf_γ
# IR_TO
 xchain00622_n9_α:
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
.Lx00627_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00622_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00622_n11_α
 xchain00622_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00627_0
# IR_GEN_SCAN
 xchain00622_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_matchf_ω
 xchain00622_n10_β:
 jmp proc_matchf_ω
# IR_BOUND
 xchain00622_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00622_n12_α
# IR_LIT_STRING
 xchain00622_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00628_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00622_n13_α
.Lx00628_0:
 .quad .Lx00628_0_s
.Lx00628_0_s:
 .string "abc"
# IR_SCAN_MATCH
 xchain00622_n13_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00629_239
 add rsp, 16
 jmp xchain00622_n14_α
.Lx00629_239:
 mov rdi, qword ptr [rip + .Lx00629_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00629_240
 add rsp, 16
 jmp xchain00622_n14_α
.Lx00629_240:
 mov qword ptr [rbp + 256], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 264], rax
 jmp xchain00622_n14_α
.Lx00629_0:
 .quad .Lx00629_0_s
.Lx00629_0_s:
 .string "abc"
# IR_UNMARK
 xchain00622_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00622_n9_β
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
proc_matchf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00630_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00630_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_matchf_α_body
.Lx00630_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00630_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 520], rsp
  mov rdi, rsp
  mov esi, 512
  mov edx, 528
  call rt_jmp_frame_lexprep2@PLT
proc_tabmat_α_body:
# IR_DISJUNCTION_NARY
 xchain00631_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00631_n2_α
xchain00631_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00632_0
 jmp xchain00631_n1_α
.Lx00632_0:
 jmp xchain00631_n1_α
 xchain00631_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00631_n1_α
xchain00631_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00631_n1_α
# IR_LIT_STRING
 xchain00631_n1_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00633_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00631_n3_α
.Lx00633_0:
 .quad .Lx00633_0_s
.Lx00633_0_s:
 .string "abcde"
# IR_VAR
 xchain00631_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 488], rax
 jmp xchain00631_n4_α
 xchain00631_n2_β:
 jmp xchain00631_n0_af
# IR_GEN_SCAN
 xchain00631_n3_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00631_n5_α
# IR_UNOP
 xchain00631_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00631_n0_af
 cmp eax, 0
 jne xchain00631_n0_af
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 jmp xchain00631_n6_α
# IR_LIT_INTEGER
 xchain00631_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00634_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00631_n7_α
.Lx00634_0:
 .quad 1
# IR_LIT_STRING
 xchain00631_n6_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00635_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00631_n8_α
.Lx00635_0:
 .quad .Lx00635_0_s
.Lx00635_0_s:
 .string "s1 ? =s2"
# IR_VAR
 xchain00631_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00631_n9_α
# IR_RETURN
 xchain00631_n8_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tabmat_γ
# IR_TO
 xchain00631_n9_α:
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
.Lx00636_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00631_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00631_n11_α
 xchain00631_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00636_0
# IR_GEN_SCAN
 xchain00631_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_tabmat_ω
 xchain00631_n10_β:
 jmp proc_tabmat_ω
# IR_BOUND
 xchain00631_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00631_n12_α
# IR_LIT_STRING
 xchain00631_n12_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00637_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00631_n13_α
.Lx00637_0:
 .quad .Lx00637_0_s
.Lx00637_0_s:
 .string "abd"
# IR_SCAN_MATCH
 xchain00631_n13_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jge .Lx00638_239
 add rsp, 16
 jmp xchain00631_n15_α
.Lx00638_239:
 mov rdi, qword ptr [rip + .Lx00638_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00638_240
 add rsp, 16
 jmp xchain00631_n15_α
.Lx00638_240:
 mov qword ptr [rbp + 288], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [rbp + 296], rax
 jmp xchain00631_n14_α
.Lx00638_0:
 .quad .Lx00638_0_s
.Lx00638_0_s:
 .string "abd"
# IR_SCAN_TAB
 xchain00631_n14_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 296]
 cmp rax, 1
 jge .Lx00639_0
 add rax, r15
 add rax, 1
.Lx00639_0:
 cmp rax, 1
 jge .Lx00639_239
 add rsp, 16
 jmp xchain00631_n15_α
.Lx00639_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00639_240
 add rsp, 16
 jmp xchain00631_n15_α
.Lx00639_240:
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
 jmp xchain00631_n15_α
 xchain00631_n14_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00631_n15_α
# IR_UNMARK
 xchain00631_n15_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00631_n9_β
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
proc_tabmat_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 576
 mov qword ptr [rsp + 568], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 528], r11
 lea rax, [rip + .Lx00640_2]
 mov qword ptr [rbp + 536], rax
 lea rax, [rip + .Lx00640_3]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 520], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 512
 mov edx, 528
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tabmat_α_body
.Lx00640_2:
 mov rdx, qword ptr [rsp + -576]
 mov rcx, rsp
 add rcx, -560
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00640_3:
 mov rdi, qword ptr [rsp + -576]
 mov rsi, rsp
 add rsi, -560
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_posf_α_body:
# IR_DISJUNCTION_NARY
 xchain00641_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00641_n2_α
xchain00641_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00642_0
 jmp xchain00641_n1_α
.Lx00642_0:
 jmp xchain00641_n1_α
 xchain00641_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00641_n1_α
xchain00641_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00641_n1_α
# IR_LIT_STRING
 xchain00641_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00643_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00641_n3_α
.Lx00643_0:
 .quad .Lx00643_0_s
.Lx00643_0_s:
 .string "abcde"
# IR_VAR
 xchain00641_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00641_n4_α
 xchain00641_n2_β:
 jmp xchain00641_n0_af
# IR_GEN_SCAN
 xchain00641_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00641_n5_α
# IR_UNOP
 xchain00641_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00641_n0_af
 cmp eax, 0
 jne xchain00641_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00641_n6_α
# IR_LIT_INTEGER
 xchain00641_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00644_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00641_n7_α
.Lx00644_0:
 .quad 1
# IR_LIT_STRING
 xchain00641_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00645_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00641_n8_α
.Lx00645_0:
 .quad .Lx00645_0_s
.Lx00645_0_s:
 .string "pos(-1)"
# IR_VAR
 xchain00641_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00641_n9_α
# IR_RETURN
 xchain00641_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_posf_γ
# IR_TO
 xchain00641_n9_α:
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
.Lx00646_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00641_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00641_n11_α
 xchain00641_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00646_0
# IR_GEN_SCAN
 xchain00641_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_posf_ω
 xchain00641_n10_β:
 jmp proc_posf_ω
# IR_BOUND
 xchain00641_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00641_n12_α
# IR_LIT_INTEGER
 xchain00641_n12_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00647_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00641_n13_α
.Lx00647_0:
 .quad 18446744073709551615
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00641_n13_α:
 mov rax, -1
 cmp rax, 1
 jge .Lx00648_0
 add rax, r15
 add rax, 1
.Lx00648_0:
 cmp rax, 1
 jl xchain00641_n14_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00641_n14_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00641_n14_α
 mov qword ptr [rbp + 256], 6
 mov qword ptr [rbp + 264], rax
 jmp xchain00641_n14_α
# IR_UNMARK
 xchain00641_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00641_n9_β
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
proc_posf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00649_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00649_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_posf_α_body
.Lx00649_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00649_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_anyf_α_body:
# IR_DISJUNCTION_NARY
 xchain00650_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00650_n2_α
xchain00650_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00651_0
 jmp xchain00650_n1_α
.Lx00651_0:
 jmp xchain00650_n1_α
 xchain00650_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00650_n1_α
xchain00650_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00650_n1_α
# IR_LIT_STRING
 xchain00650_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00652_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00650_n3_α
.Lx00652_0:
 .quad .Lx00652_0_s
.Lx00652_0_s:
 .string "abcde"
# IR_VAR
 xchain00650_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00650_n4_α
 xchain00650_n2_β:
 jmp xchain00650_n0_af
# IR_GEN_SCAN
 xchain00650_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00650_n5_α
# IR_UNOP
 xchain00650_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00650_n0_af
 cmp eax, 0
 jne xchain00650_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00650_n6_α
# IR_LIT_INTEGER
 xchain00650_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00653_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00650_n7_α
.Lx00653_0:
 .quad 1
# IR_LIT_STRING
 xchain00650_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00654_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00650_n8_α
.Lx00654_0:
 .quad .Lx00654_0_s
.Lx00654_0_s:
 .string "any('aeiou')"
# IR_VAR
 xchain00650_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00650_n9_α
# IR_RETURN
 xchain00650_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_anyf_γ
# IR_TO
 xchain00650_n9_α:
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
.Lx00655_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00650_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00650_n11_α
 xchain00650_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00655_0
# IR_GEN_SCAN
 xchain00650_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_anyf_ω
 xchain00650_n10_β:
 jmp proc_anyf_ω
# IR_BOUND
 xchain00650_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00650_n12_α
# IR_LIT_CHARSET
 xchain00650_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00656_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00650_n13_α
.Lx00656_0:
 .quad .Lx00656_0_s
.Lx00656_0_s:
 .string "aeiou"
# IR_SCAN_ANY
 xchain00650_n13_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain00650_n14_α
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00657_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xchain00650_n14_α
 mov qword ptr [rbp + 256], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 264], rax
 jmp xchain00650_n14_α
.Lx00657_0:
 .quad .Lx00657_0_s
.Lx00657_0_s:
 .string "aeiou"
# IR_UNMARK
 xchain00650_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00650_n9_β
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
proc_anyf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00658_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00658_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_anyf_α_body
.Lx00658_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00658_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_manyf_α_body:
# IR_DISJUNCTION_NARY
 xchain00659_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00659_n2_α
xchain00659_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00660_0
 jmp xchain00659_n1_α
.Lx00660_0:
 jmp xchain00659_n1_α
 xchain00659_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00659_n1_α
xchain00659_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00659_n1_α
# IR_LIT_STRING
 xchain00659_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00661_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00659_n3_α
.Lx00661_0:
 .quad .Lx00661_0_s
.Lx00661_0_s:
 .string "abcde"
# IR_VAR
 xchain00659_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00659_n4_α
 xchain00659_n2_β:
 jmp xchain00659_n0_af
# IR_GEN_SCAN
 xchain00659_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00659_n5_α
# IR_UNOP
 xchain00659_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00659_n0_af
 cmp eax, 0
 jne xchain00659_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00659_n6_α
# IR_LIT_INTEGER
 xchain00659_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00662_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00659_n7_α
.Lx00662_0:
 .quad 1
# IR_LIT_STRING
 xchain00659_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00663_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00659_n8_α
.Lx00663_0:
 .quad .Lx00663_0_s
.Lx00663_0_s:
 .string "many(&lcase)"
# IR_VAR
 xchain00659_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00659_n9_α
# IR_RETURN
 xchain00659_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_manyf_γ
# IR_TO
 xchain00659_n9_α:
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
.Lx00664_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00659_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00659_n11_α
 xchain00659_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00664_0
# IR_GEN_SCAN
 xchain00659_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_manyf_ω
 xchain00659_n10_β:
 jmp proc_manyf_ω
# IR_BOUND
 xchain00659_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00659_n12_α
# IR_LIT_CHARSET
 xchain00659_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00665_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00659_n13_α
.Lx00665_0:
 .quad .Lx00665_0_s
.Lx00665_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_SCAN_MANY
 xchain00659_n13_α:
 mov eax, r14d
.Lx00666_0:
 cmp eax, r15d
 jge .Lx00666_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00666_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00666_1
 add eax, 1
 jmp .Lx00666_0
.Lx00666_1:
 cmp eax, r14d
 je xchain00659_n14_α
 mov qword ptr [rbp + 256], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 264], rcx
 jmp xchain00659_n14_α
 xchain00659_n13_β:
 jmp xchain00659_n14_α
.Lx00666_2:
 .quad .Lx00666_2_s
.Lx00666_2_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_UNMARK
 xchain00659_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00659_n9_β
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
proc_manyf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00667_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00667_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_manyf_α_body
.Lx00667_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00667_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_uptof_α_body:
# IR_DISJUNCTION_NARY
 xchain00668_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00668_n2_α
xchain00668_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00669_0
 jmp xchain00668_n1_α
.Lx00669_0:
 jmp xchain00668_n1_α
 xchain00668_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00668_n1_α
xchain00668_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00668_n1_α
# IR_LIT_STRING
 xchain00668_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00670_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00668_n3_α
.Lx00670_0:
 .quad .Lx00670_0_s
.Lx00670_0_s:
 .string "abcde"
# IR_VAR
 xchain00668_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00668_n4_α
 xchain00668_n2_β:
 jmp xchain00668_n0_af
# IR_GEN_SCAN
 xchain00668_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00668_n5_α
# IR_UNOP
 xchain00668_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00668_n0_af
 cmp eax, 0
 jne xchain00668_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00668_n6_α
# IR_LIT_INTEGER
 xchain00668_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00671_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00668_n7_α
.Lx00671_0:
 .quad 1
# IR_LIT_STRING
 xchain00668_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00672_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00668_n8_α
.Lx00672_0:
 .quad .Lx00672_0_s
.Lx00672_0_s:
 .string "upto('d')"
# IR_VAR
 xchain00668_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00668_n9_α
# IR_RETURN
 xchain00668_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_uptof_γ
# IR_TO
 xchain00668_n9_α:
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
.Lx00673_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00668_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00668_n11_α
 xchain00668_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00673_0
# IR_GEN_SCAN
 xchain00668_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_uptof_ω
 xchain00668_n10_β:
 jmp proc_uptof_ω
# IR_BOUND
 xchain00668_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00668_n12_α
# IR_LIT_CHARSET
 xchain00668_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00674_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00668_n13_α
.Lx00674_0:
 .quad .Lx00674_0_s
.Lx00674_0_s:
 .string "d"
# IR_SCAN_UPTO
 xchain00668_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00675_0:
 mov rax, qword ptr [rbp + 272]
 cmp rax, r15
 jge xchain00668_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00675_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00675_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00668_n14_α
.Lx00675_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00675_0
 xchain00668_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00675_0
.Lx00675_2:
 .quad .Lx00675_2_s
.Lx00675_2_s:
 .string "d"
# IR_UNMARK
 xchain00668_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00668_n9_β
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
proc_uptof_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00676_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00676_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_uptof_α_body
.Lx00676_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00676_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_findf_α_body:
# IR_DISJUNCTION_NARY
 xchain00677_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00677_n2_α
xchain00677_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00678_0
 jmp xchain00677_n1_α
.Lx00678_0:
 jmp xchain00677_n1_α
 xchain00677_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00677_n1_α
xchain00677_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00677_n1_α
# IR_LIT_STRING
 xchain00677_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00679_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00677_n3_α
.Lx00679_0:
 .quad .Lx00679_0_s
.Lx00679_0_s:
 .string "abcde"
# IR_VAR
 xchain00677_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00677_n4_α
 xchain00677_n2_β:
 jmp xchain00677_n0_af
# IR_GEN_SCAN
 xchain00677_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00677_n5_α
# IR_UNOP
 xchain00677_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00677_n0_af
 cmp eax, 0
 jne xchain00677_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00677_n6_α
# IR_LIT_INTEGER
 xchain00677_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00680_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00677_n7_α
.Lx00680_0:
 .quad 1
# IR_LIT_STRING
 xchain00677_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00681_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00677_n8_α
.Lx00681_0:
 .quad .Lx00681_0_s
.Lx00681_0_s:
 .string "find(\"de\")"
# IR_VAR
 xchain00677_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00677_n9_α
# IR_RETURN
 xchain00677_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_findf_γ
# IR_TO
 xchain00677_n9_α:
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
.Lx00682_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00677_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00677_n11_α
 xchain00677_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00682_0
# IR_GEN_SCAN
 xchain00677_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_findf_ω
 xchain00677_n10_β:
 jmp proc_findf_ω
# IR_BOUND
 xchain00677_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00677_n12_α
# IR_LIT_STRING
 xchain00677_n12_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00683_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00677_n13_α
.Lx00683_0:
 .quad .Lx00683_0_s
.Lx00683_0_s:
 .string "de"
# IR_SCAN_FIND
 xchain00677_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00684_0:
 mov rax, qword ptr [rbp + 272]
 mov rcx, r15
 sub rcx, 2
 cmp rax, rcx
 jg xchain00677_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 100
 jne .Lx00684_1
 mov rcx, rax
 add rcx, 1
 movzx esi, byte ptr [r13+rcx]
 cmp rsi, 101
 jne .Lx00684_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00677_n14_α
.Lx00684_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00684_0
 xchain00677_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00684_0
# IR_UNMARK
 xchain00677_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00677_n9_β
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
proc_findf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00685_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00685_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_findf_α_body
.Lx00685_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00685_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 488], rsp
  mov rdi, rsp
  mov esi, 480
  mov edx, 496
  call rt_jmp_frame_lexprep2@PLT
proc_balf_α_body:
# IR_DISJUNCTION_NARY
 xchain00686_n0_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00686_n2_α
xchain00686_n0_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00687_0
 jmp xchain00686_n1_α
.Lx00687_0:
 jmp xchain00686_n1_α
 xchain00686_n0_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00686_n1_α
xchain00686_n0_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00686_n1_α
# IR_LIT_STRING
 xchain00686_n1_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00688_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00686_n3_α
.Lx00688_0:
 .quad .Lx00688_0_s
.Lx00688_0_s:
 .string "(a*b)+(c/d)"
# IR_VAR
 xchain00686_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00686_n4_α
 xchain00686_n2_β:
 jmp xchain00686_n0_af
# IR_GEN_SCAN
 xchain00686_n3_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00686_n5_α
# IR_UNOP
 xchain00686_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00686_n0_af
 cmp eax, 0
 jne xchain00686_n0_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00686_n6_α
# IR_LIT_INTEGER
 xchain00686_n5_α:
 mov qword ptr [rbp + 144], 6
 mov rax, qword ptr [rip + .Lx00689_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain00686_n7_α
.Lx00689_0:
 .quad 1
# IR_LIT_STRING
 xchain00686_n6_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00690_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00686_n8_α
.Lx00690_0:
 .quad .Lx00690_0_s
.Lx00690_0_s:
 .string "bal('+')"
# IR_VAR
 xchain00686_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00686_n9_α
# IR_RETURN
 xchain00686_n8_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_balf_γ
# IR_TO
 xchain00686_n9_α:
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
.Lx00691_0:
 mov rax, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 184]
 cmp rax, rcx
 jg xchain00686_n10_α
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain00686_n11_α
 xchain00686_n9_β:
 inc qword ptr [rbp + 128]
 jmp .Lx00691_0
# IR_GEN_SCAN
 xchain00686_n10_α:
 lea rdi, [rbp + 48]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 48]
 mov r14, qword ptr [rbp + 56]
 mov r15, qword ptr [rbp + 64]
 jmp proc_balf_ω
 xchain00686_n10_β:
 jmp proc_balf_ω
# IR_BOUND
 xchain00686_n11_α:
 mov qword ptr [rbp + 208], rsp
 jmp xchain00686_n12_α
# IR_LIT_CHARSET
 xchain00686_n12_α:
 mov qword ptr [rbp + 288], 1
 mov dword ptr [rbp + 292], -1
 mov rax, qword ptr [rip + .Lx00692_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00686_n13_α
.Lx00692_0:
 .quad .Lx00692_0_s
.Lx00692_0_s:
 .string "+"
# IR_SCAN_UPTO
 xchain00686_n13_α:
 mov qword ptr [rbp + 272], r14
.Lx00693_0:
 mov rax, qword ptr [rbp + 272]
 cmp rax, r15
 jge xchain00686_n14_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00693_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00693_1
 mov qword ptr [rbp + 256], 6
 add rax, 1
 mov qword ptr [rbp + 264], rax
 jmp xchain00686_n14_α
.Lx00693_1:
 inc qword ptr [rbp + 272]
 jmp .Lx00693_0
 xchain00686_n13_β:
 inc qword ptr [rbp + 272]
 jmp .Lx00693_0
.Lx00693_2:
 .quad .Lx00693_2_s
.Lx00693_2_s:
 .string "+"
# IR_UNMARK
 xchain00686_n14_α:
 mov rsp, qword ptr [rbp + 208]
 jmp xchain00686_n9_β
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
proc_balf_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 544
 mov qword ptr [rsp + 536], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 496], r11
 lea rax, [rip + .Lx00694_2]
 mov qword ptr [rbp + 504], rax
 lea rax, [rip + .Lx00694_3]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 488], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 480
 mov edx, 496
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_balf_α_body
.Lx00694_2:
 mov rdx, qword ptr [rsp + -544]
 mov rcx, rsp
 add rcx, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00694_3:
 mov rdi, qword ptr [rsp + -544]
 mov rsi, rsp
 add rsi, -528
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_cssize_α_body:
# IR_DISJUNCTION_NARY
 xchain00695_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00695_n2_α
xchain00695_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00696_0
 jmp xchain00695_n1_α
.Lx00696_0:
 jmp xchain00695_n1_α
 xchain00695_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00695_n1_α
xchain00695_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00695_n1_α
# IR_LIT_INTEGER
 xchain00695_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00697_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00695_n3_α
.Lx00697_0:
 .quad 1
# IR_VAR
 xchain00695_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00695_n4_α
 xchain00695_n2_β:
 jmp xchain00695_n0_af
# IR_VAR
 xchain00695_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00695_n5_α
# IR_UNOP
 xchain00695_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00695_n0_af
 cmp eax, 0
 jne xchain00695_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00695_n6_α
# IR_TO
 xchain00695_n5_α:
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
.Lx00698_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cssize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00695_n7_α
 xchain00695_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00698_0
# IR_LIT_STRING
 xchain00695_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00699_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00695_n8_α
.Lx00699_0:
 .quad .Lx00699_0_s
.Lx00699_0_s:
 .string "*&digits"
# IR_BOUND
 xchain00695_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00695_n9_α
# IR_RETURN
 xchain00695_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cssize_γ
# IR_LIT_CHARSET
 xchain00695_n9_α:
 mov qword ptr [rbp + 208], 1
 mov dword ptr [rbp + 212], -1
 mov rax, qword ptr [rip + .Lx00700_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00695_n10_α
.Lx00700_0:
 .quad .Lx00700_0_s
.Lx00700_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00695_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00695_n11_α
# IR_UNMARK
 xchain00695_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00695_n5_β
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
proc_cssize_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00701_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00701_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_cssize_α_body
.Lx00701_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00701_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 376], rsp
  mov rdi, rsp
  mov esi, 368
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_cscompl_α_body:
# IR_DISJUNCTION_NARY
 xchain00702_n0_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00702_n2_α
xchain00702_n0_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00703_0
 jmp xchain00702_n1_α
.Lx00703_0:
 jmp xchain00702_n1_α
 xchain00702_n0_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00702_n1_α
xchain00702_n0_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00702_n1_α
# IR_LIT_INTEGER
 xchain00702_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00704_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00702_n3_α
.Lx00704_0:
 .quad 1
# IR_VAR
 xchain00702_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00702_n4_α
 xchain00702_n2_β:
 jmp xchain00702_n0_af
# IR_VAR
 xchain00702_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00702_n5_α
# IR_UNOP
 xchain00702_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00702_n0_af
 cmp eax, 0
 jne xchain00702_n0_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00702_n6_α
# IR_TO
 xchain00702_n5_α:
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
.Lx00705_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cscompl_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00702_n7_α
 xchain00702_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00705_0
# IR_LIT_STRING
 xchain00702_n6_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00706_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00702_n8_α
.Lx00706_0:
 .quad .Lx00706_0_s
.Lx00706_0_s:
 .string "~&digits"
# IR_BOUND
 xchain00702_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00702_n9_α
# IR_RETURN
 xchain00702_n8_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cscompl_γ
# IR_LIT_CHARSET
 xchain00702_n9_α:
 mov qword ptr [rbp + 208], 1
 mov dword ptr [rbp + 212], -1
 mov rax, qword ptr [rip + .Lx00707_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00702_n10_α
.Lx00707_0:
 .quad .Lx00707_0_s
.Lx00707_0_s:
 .string "0123456789"
# IR_UNOP
 xchain00702_n10_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_cset_compl@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00702_n11_α
# IR_UNMARK
 xchain00702_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00702_n5_β
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
proc_cscompl_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx00708_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx00708_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 376], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 368
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_cscompl_α_body
.Lx00708_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00708_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_lcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00709_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00709_n2_α
xchain00709_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00710_0
 jmp xchain00709_n1_α
.Lx00710_0:
 jmp xchain00709_n1_α
 xchain00709_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00709_n1_α
xchain00709_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00709_n1_α
# IR_LIT_INTEGER
 xchain00709_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00711_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00709_n3_α
.Lx00711_0:
 .quad 1
# IR_VAR
 xchain00709_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00709_n4_α
 xchain00709_n2_β:
 jmp xchain00709_n0_af
# IR_VAR
 xchain00709_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00709_n5_α
# IR_UNOP
 xchain00709_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00709_n0_af
 cmp eax, 0
 jne xchain00709_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00709_n6_α
# IR_TO
 xchain00709_n5_α:
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
.Lx00712_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00709_n7_α
 xchain00709_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00712_0
# IR_LIT_STRING
 xchain00709_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00713_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00709_n8_α
.Lx00713_0:
 .quad .Lx00713_0_s
.Lx00713_0_s:
 .string "list(5,0)"
# IR_BOUND
 xchain00709_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00709_n9_α
# IR_RETURN
 xchain00709_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcreate_γ
# IR_LIT_INTEGER
 xchain00709_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx00714_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00709_n10_α
.Lx00714_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00709_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00715_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00709_n11_α
.Lx00715_0:
 .quad 0
 xchain00709_n11_α:
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
  .Lrkfn2071: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2071]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00709_n12_α
 jmp xchain00709_n12_α
 xchain00709_n11_β:
 jmp xchain00709_n12_α
# IR_UNMARK
 xchain00709_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00709_n5_β
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
proc_lcreate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx00716_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx00716_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lcreate_α_body
.Lx00716_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00716_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 584], rsp
  mov rdi, rsp
  mov esi, 576
  mov edx, 608
  call rt_jmp_frame_lexprep2@PLT
proc_lconst_α_body:
# IR_DISJUNCTION_NARY
 xchain00717_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00717_n2_α
xchain00717_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00718_0
 jmp xchain00717_n1_α
.Lx00718_0:
 jmp xchain00717_n1_α
 xchain00717_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00717_n1_α
xchain00717_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00717_n1_α
# IR_LIT_INTEGER
 xchain00717_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00719_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00717_n3_α
.Lx00719_0:
 .quad 1
# IR_VAR
 xchain00717_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 552], rax
 jmp xchain00717_n4_α
 xchain00717_n2_β:
 jmp xchain00717_n0_af
# IR_VAR
 xchain00717_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00717_n5_α
# IR_UNOP
 xchain00717_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00717_n0_af
 cmp eax, 0
 jne xchain00717_n0_af
 mov qword ptr [rbp + 512], 0
 mov qword ptr [rbp + 520], 0
 jmp xchain00717_n6_α
# IR_TO
 xchain00717_n5_α:
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
.Lx00720_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lconst_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00717_n7_α
 xchain00717_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00720_0
# IR_LIT_STRING
 xchain00717_n6_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx00721_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain00717_n8_α
.Lx00721_0:
 .quad .Lx00721_0_s
.Lx00721_0_s:
 .string "[1,2,3,4,5]"
# IR_BOUND
 xchain00717_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00717_n9_α
# IR_RETURN
 xchain00717_n8_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lconst_γ
# IR_LIT_INTEGER
 xchain00717_n9_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00722_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00717_n10_α
.Lx00722_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00717_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00723_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00717_n11_α
.Lx00723_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00717_n11_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx00724_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00717_n12_α
.Lx00724_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00717_n12_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx00725_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00717_n13_α
.Lx00725_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00717_n13_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00726_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00717_n14_α
.Lx00726_0:
 .quad 5
# IR_MAKE_LIST
 xchain00717_n14_α:
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
 jmp xchain00717_n15_α
 xchain00717_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00717_n16_α
# IR_UNMARK
 xchain00717_n16_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00717_n5_β
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
proc_lconst_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 656
 mov qword ptr [rsp + 648], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 608], r11
 lea rax, [rip + .Lx00727_2]
 mov qword ptr [rbp + 616], rax
 lea rax, [rip + .Lx00727_3]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 584], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 576
 mov edx, 608
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lconst_α_body
.Lx00727_2:
 mov rdx, qword ptr [rsp + -656]
 mov rcx, rsp
 add rcx, -640
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00727_3:
 mov rdi, qword ptr [rsp + -656]
 mov rsi, rsp
 add rsi, -640
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 808], rsp
  mov rdi, rsp
  mov esi, 800
  mov edx, 816
  call rt_jmp_frame_lexprep2@PLT
proc_lcopy_α_body:
# IR_DISJUNCTION_NARY
 xchain00728_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00728_n2_α
xchain00728_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00729_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00728_n1_α
.Lx00729_0:
 jmp xchain00728_n1_α
 xchain00728_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00728_n1_α
xchain00728_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00728_n1_α
# IR_DISJUNCTION_NARY
 xchain00728_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00728_n5_α
xchain00728_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00730_0
 jmp xchain00728_n4_α
.Lx00730_0:
 jmp xchain00728_n4_α
 xchain00728_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00728_n4_α
xchain00728_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00728_n4_α
# IR_VAR_REF
 xchain00728_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052464
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00728_n6_α
 xchain00728_n2_β:
 jmp xchain00728_n0_af
# IR_ASSIGN gva
 xchain00728_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00728_n0_as
 xchain00728_n3_β:
 jmp xchain00728_n1_α
# IR_LIT_INTEGER
 xchain00728_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00731_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00728_n7_α
.Lx00731_0:
 .quad 1
# IR_VAR
 xchain00728_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00728_n8_α
 xchain00728_n5_β:
 jmp xchain00728_n1_af
# IR_NULLTEST_VAR
 xchain00728_n6_α:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 99
 je xchain00728_n0_af
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00728_n0_af
 cmp eax, 0
 jne xchain00728_n0_af
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 728], rax
 jmp xchain00728_n9_α
# IR_VAR
 xchain00728_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00728_n10_α
# IR_UNOP
 xchain00728_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00728_n1_af
 cmp eax, 0
 jne xchain00728_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00728_n11_α
# IR_LIT_INTEGER
 xchain00728_n9_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00732_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00728_n12_α
.Lx00732_0:
 .quad 1
# IR_TO
 xchain00728_n10_α:
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
.Lx00733_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00728_n13_α
 xchain00728_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00733_0
# IR_LIT_STRING
 xchain00728_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00734_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00728_n14_α
.Lx00734_0:
 .quad .Lx00734_0_s
.Lx00734_0_s:
 .string "copy(L)"
# IR_ASSIGN_VAR
 xchain00728_n12_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00728_n0_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00728_n15_α
# IR_BOUND
 xchain00728_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00728_n16_α
# IR_RETURN
 xchain00728_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lcopy_γ
# IR_LIT_INTEGER
 xchain00728_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00735_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00728_n17_α
.Lx00735_0:
 .quad 1
# IR_VAR
 xchain00728_n16_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00728_n18_α
# IR_LIT_INTEGER
 xchain00728_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00736_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00728_n20_α
.Lx00736_0:
 .quad 2
 xchain00728_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2128: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2128]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00728_n19_α
 jmp xchain00728_n19_α
 xchain00728_n18_β:
 jmp xchain00728_n19_α
# IR_UNMARK
 xchain00728_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00728_n10_β
# IR_LIT_INTEGER
 xchain00728_n20_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00737_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00728_n21_α
.Lx00737_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00728_n21_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00738_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00728_n22_α
.Lx00738_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00728_n22_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00739_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00728_n23_α
.Lx00739_0:
 .quad 5
# IR_MAKE_LIST
 xchain00728_n23_α:
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
 jmp xchain00728_n3_α
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
proc_lcopy_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 864
 mov qword ptr [rsp + 856], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 816], r11
 lea rax, [rip + .Lx00740_2]
 mov qword ptr [rbp + 824], rax
 lea rax, [rip + .Lx00740_3]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 808], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 800
 mov edx, 816
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lcopy_α_body
.Lx00740_2:
 mov rdx, qword ptr [rsp + -864]
 mov rcx, rsp
 add rcx, -848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00740_3:
 mov rdi, qword ptr [rsp + -864]
 mov rsi, rsp
 add rsi, -848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 808], rsp
  mov rdi, rsp
  mov esi, 800
  mov edx, 816
  call rt_jmp_frame_lexprep2@PLT
proc_lsort_α_body:
# IR_DISJUNCTION_NARY
 xchain00741_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00741_n2_α
xchain00741_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00742_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00741_n1_α
.Lx00742_0:
 jmp xchain00741_n1_α
 xchain00741_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00741_n1_α
xchain00741_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00741_n1_α
# IR_DISJUNCTION_NARY
 xchain00741_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00741_n5_α
xchain00741_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00743_0
 jmp xchain00741_n4_α
.Lx00743_0:
 jmp xchain00741_n4_α
 xchain00741_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00741_n4_α
xchain00741_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00741_n4_α
# IR_VAR_REF
 xchain00741_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052496
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00741_n6_α
 xchain00741_n2_β:
 jmp xchain00741_n0_af
# IR_ASSIGN gva
 xchain00741_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain00741_n0_as
 xchain00741_n3_β:
 jmp xchain00741_n1_α
# IR_LIT_INTEGER
 xchain00741_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00744_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00741_n7_α
.Lx00744_0:
 .quad 1
# IR_VAR
 xchain00741_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00741_n8_α
 xchain00741_n5_β:
 jmp xchain00741_n1_af
# IR_NULLTEST_VAR
 xchain00741_n6_α:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 99
 je xchain00741_n0_af
 mov rdi, qword ptr [rbp + 688]
 mov rsi, qword ptr [rbp + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00741_n0_af
 cmp eax, 0
 jne xchain00741_n0_af
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 728], rax
 jmp xchain00741_n9_α
# IR_VAR
 xchain00741_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00741_n10_α
# IR_UNOP
 xchain00741_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00741_n1_af
 cmp eax, 0
 jne xchain00741_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00741_n11_α
# IR_LIT_INTEGER
 xchain00741_n9_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00745_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00741_n12_α
.Lx00745_0:
 .quad 1
# IR_TO
 xchain00741_n10_α:
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
.Lx00746_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsort_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00741_n13_α
 xchain00741_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00746_0
# IR_LIT_STRING
 xchain00741_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00747_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00741_n14_α
.Lx00747_0:
 .quad .Lx00747_0_s
.Lx00747_0_s:
 .string "sort(L)"
# IR_ASSIGN_VAR
 xchain00741_n12_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 768]
 mov rcx, qword ptr [rbp + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00741_n0_af
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00741_n15_α
# IR_BOUND
 xchain00741_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00741_n16_α
# IR_RETURN
 xchain00741_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsort_γ
# IR_LIT_INTEGER
 xchain00741_n15_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00748_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00741_n17_α
.Lx00748_0:
 .quad 2
# IR_VAR
 xchain00741_n16_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00741_n18_α
# IR_LIT_INTEGER
 xchain00741_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00749_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00741_n20_α
.Lx00749_0:
 .quad 7
 xchain00741_n18_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2164: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2164]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00741_n19_α
 jmp xchain00741_n19_α
 xchain00741_n18_β:
 jmp xchain00741_n19_α
# IR_UNMARK
 xchain00741_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00741_n10_β
# IR_LIT_INTEGER
 xchain00741_n20_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00750_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00741_n21_α
.Lx00750_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00741_n21_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00751_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00741_n22_α
.Lx00751_0:
 .quad 8
# IR_LIT_INTEGER
 xchain00741_n22_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00752_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00741_n23_α
.Lx00752_0:
 .quad 3
# IR_MAKE_LIST
 xchain00741_n23_α:
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
 jmp xchain00741_n3_α
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
proc_lsort_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 864
 mov qword ptr [rsp + 856], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 816], r11
 lea rax, [rip + .Lx00753_2]
 mov qword ptr [rbp + 824], rax
 lea rax, [rip + .Lx00753_3]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 808], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 800
 mov edx, 816
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lsort_α_body
.Lx00753_2:
 mov rdx, qword ptr [rsp + -864]
 mov rcx, rsp
 add rcx, -848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00753_3:
 mov rdi, qword ptr [rsp + -864]
 mov rsi, rsp
 add rsi, -848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 784
  mov edx, 800
  call rt_jmp_frame_lexprep2@PLT
proc_lsize_α_body:
# IR_DISJUNCTION_NARY
 xchain00754_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00754_n2_α
xchain00754_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00755_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00754_n1_α
.Lx00755_0:
 jmp xchain00754_n1_α
 xchain00754_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00754_n1_α
xchain00754_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00754_n1_α
# IR_DISJUNCTION_NARY
 xchain00754_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00754_n5_α
xchain00754_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00756_0
 jmp xchain00754_n4_α
.Lx00756_0:
 jmp xchain00754_n4_α
 xchain00754_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00754_n4_α
xchain00754_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00754_n4_α
# IR_VAR_REF
 xchain00754_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052528
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00754_n6_α
 xchain00754_n2_β:
 jmp xchain00754_n0_af
# IR_ASSIGN gva
 xchain00754_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00754_n0_as
 xchain00754_n3_β:
 jmp xchain00754_n1_α
# IR_LIT_INTEGER
 xchain00754_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00757_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00754_n7_α
.Lx00757_0:
 .quad 1
# IR_VAR
 xchain00754_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00754_n8_α
 xchain00754_n5_β:
 jmp xchain00754_n1_af
# IR_NULLTEST_VAR
 xchain00754_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00754_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00754_n0_af
 cmp eax, 0
 jne xchain00754_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00754_n9_α
# IR_VAR
 xchain00754_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00754_n10_α
# IR_UNOP
 xchain00754_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00754_n1_af
 cmp eax, 0
 jne xchain00754_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00754_n11_α
# IR_LIT_INTEGER
 xchain00754_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00758_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00754_n12_α
.Lx00758_0:
 .quad 1
# IR_TO
 xchain00754_n10_α:
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
.Lx00759_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsize_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00754_n13_α
 xchain00754_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00759_0
# IR_LIT_STRING
 xchain00754_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00760_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00754_n14_α
.Lx00760_0:
 .quad .Lx00760_0_s
.Lx00760_0_s:
 .string "*L"
# IR_ASSIGN_VAR
 xchain00754_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00754_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00754_n15_α
# IR_BOUND
 xchain00754_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00754_n16_α
# IR_RETURN
 xchain00754_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsize_γ
# IR_LIT_INTEGER
 xchain00754_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00761_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00754_n17_α
.Lx00761_0:
 .quad 1
# IR_VAR
 xchain00754_n16_α:
 mov rax, qword ptr [1879052512]
 mov rdx, qword ptr [1879052520]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00754_n18_α
# IR_LIT_INTEGER
 xchain00754_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00762_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00754_n20_α
.Lx00762_0:
 .quad 2
# IR_UNOP
 xchain00754_n18_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 call rt_size_d@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00754_n19_α
# IR_UNMARK
 xchain00754_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00754_n10_β
# IR_LIT_INTEGER
 xchain00754_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00763_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00754_n21_α
.Lx00763_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00754_n21_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00764_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00754_n22_α
.Lx00764_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00754_n22_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00765_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00754_n23_α
.Lx00765_0:
 .quad 5
# IR_MAKE_LIST
 xchain00754_n23_α:
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
 jmp xchain00754_n3_α
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
proc_lsize_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 848
 mov qword ptr [rsp + 840], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 800], r11
 lea rax, [rip + .Lx00766_2]
 mov qword ptr [rbp + 808], rax
 lea rax, [rip + .Lx00766_3]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 792], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 784
 mov edx, 800
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lsize_α_body
.Lx00766_2:
 mov rdx, qword ptr [rsp + -848]
 mov rcx, rsp
 add rcx, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00766_3:
 mov rdi, qword ptr [rsp + -848]
 mov rsi, rsp
 add rsi, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 784
  mov edx, 800
  call rt_jmp_frame_lexprep2@PLT
proc_lpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00767_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00767_n2_α
xchain00767_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00768_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00767_n1_α
.Lx00768_0:
 jmp xchain00767_n1_α
 xchain00767_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00767_n1_α
xchain00767_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00767_n1_α
# IR_DISJUNCTION_NARY
 xchain00767_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00767_n5_α
xchain00767_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00769_0
 jmp xchain00767_n4_α
.Lx00769_0:
 jmp xchain00767_n4_α
 xchain00767_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00767_n4_α
xchain00767_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00767_n4_α
# IR_VAR_REF
 xchain00767_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052560
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00767_n6_α
 xchain00767_n2_β:
 jmp xchain00767_n0_af
# IR_ASSIGN gva
 xchain00767_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00767_n0_as
 xchain00767_n3_β:
 jmp xchain00767_n1_α
# IR_LIT_INTEGER
 xchain00767_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00770_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00767_n7_α
.Lx00770_0:
 .quad 1
# IR_VAR
 xchain00767_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00767_n8_α
 xchain00767_n5_β:
 jmp xchain00767_n1_af
# IR_NULLTEST_VAR
 xchain00767_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00767_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00767_n0_af
 cmp eax, 0
 jne xchain00767_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00767_n9_α
# IR_VAR
 xchain00767_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00767_n10_α
# IR_UNOP
 xchain00767_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00767_n1_af
 cmp eax, 0
 jne xchain00767_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00767_n11_α
# IR_LIT_INTEGER
 xchain00767_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00771_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00767_n12_α
.Lx00771_0:
 .quad 1
# IR_TO
 xchain00767_n10_α:
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
.Lx00772_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00767_n13_α
 xchain00767_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00772_0
# IR_LIT_STRING
 xchain00767_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00773_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00767_n14_α
.Lx00773_0:
 .quad .Lx00773_0_s
.Lx00773_0_s:
 .string "?L"
# IR_ASSIGN_VAR
 xchain00767_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00767_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00767_n15_α
# IR_BOUND
 xchain00767_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00767_n16_α
# IR_RETURN
 xchain00767_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lpick_γ
# IR_LIT_INTEGER
 xchain00767_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00774_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00767_n17_α
.Lx00774_0:
 .quad 1
# IR_VAR_REF
 xchain00767_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052544
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00767_n18_α
# IR_LIT_INTEGER
 xchain00767_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00775_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00767_n19_α
.Lx00775_0:
 .quad 2
# IR_RANDOM
 xchain00767_n18_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00767_n21_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00767_n20_α
# IR_LIT_INTEGER
 xchain00767_n19_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00776_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00767_n22_α
.Lx00776_0:
 .quad 3
# IR_DEREF variable -> value
 xchain00767_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00767_n21_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00767_n21_α
# IR_UNMARK
 xchain00767_n21_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00767_n10_β
# IR_LIT_INTEGER
 xchain00767_n22_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00777_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00767_n23_α
.Lx00777_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00767_n23_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00778_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00767_n24_α
.Lx00778_0:
 .quad 5
# IR_MAKE_LIST
 xchain00767_n24_α:
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
 jmp xchain00767_n3_α
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
proc_lpick_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 848
 mov qword ptr [rsp + 840], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 800], r11
 lea rax, [rip + .Lx00779_2]
 mov qword ptr [rbp + 808], rax
 lea rax, [rip + .Lx00779_3]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 792], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 784
 mov edx, 800
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lpick_α_body
.Lx00779_2:
 mov rdx, qword ptr [rsp + -848]
 mov rcx, rsp
 add rcx, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00779_3:
 mov rdi, qword ptr [rsp + -848]
 mov rsi, rsp
 add rsi, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 840], rsp
  mov rdi, rsp
  mov esi, 832
  mov edx, 848
  call rt_jmp_frame_lexprep2@PLT
proc_lsubscr_α_body:
# IR_DISJUNCTION_NARY
 xchain00780_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00780_n2_α
xchain00780_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00781_0
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
 jmp xchain00780_n1_α
.Lx00781_0:
 jmp xchain00780_n1_α
 xchain00780_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00780_n1_α
xchain00780_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00780_n1_α
# IR_DISJUNCTION_NARY
 xchain00780_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00780_n5_α
xchain00780_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00782_0
 jmp xchain00780_n4_α
.Lx00782_0:
 jmp xchain00780_n4_α
 xchain00780_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00780_n4_α
xchain00780_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00780_n4_α
# IR_VAR_REF
 xchain00780_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052592
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00780_n6_α
 xchain00780_n2_β:
 jmp xchain00780_n0_af
# IR_ASSIGN gva
 xchain00780_n3_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00780_n0_as
 xchain00780_n3_β:
 jmp xchain00780_n1_α
# IR_LIT_INTEGER
 xchain00780_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00783_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00780_n7_α
.Lx00783_0:
 .quad 1
# IR_VAR
 xchain00780_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00780_n8_α
 xchain00780_n5_β:
 jmp xchain00780_n1_af
# IR_NULLTEST_VAR
 xchain00780_n6_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 99
 je xchain00780_n0_af
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00780_n0_af
 cmp eax, 0
 jne xchain00780_n0_af
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 760], rax
 jmp xchain00780_n9_α
# IR_VAR
 xchain00780_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00780_n10_α
# IR_UNOP
 xchain00780_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00780_n1_af
 cmp eax, 0
 jne xchain00780_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00780_n11_α
# IR_LIT_INTEGER
 xchain00780_n9_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00784_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00780_n12_α
.Lx00784_0:
 .quad 1
# IR_TO
 xchain00780_n10_α:
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
.Lx00785_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lsubscr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00780_n13_α
 xchain00780_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00785_0
# IR_LIT_STRING
 xchain00780_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00786_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00780_n14_α
.Lx00786_0:
 .quad .Lx00786_0_s
.Lx00786_0_s:
 .string "L[3]"
# IR_ASSIGN_VAR
 xchain00780_n12_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00780_n0_af
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00780_n15_α
# IR_BOUND
 xchain00780_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00780_n16_α
# IR_RETURN
 xchain00780_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lsubscr_γ
# IR_LIT_INTEGER
 xchain00780_n15_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00787_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00780_n17_α
.Lx00787_0:
 .quad 1
# IR_VAR_REF
 xchain00780_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052576
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00780_n18_α
# IR_LIT_INTEGER
 xchain00780_n17_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00788_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00780_n19_α
.Lx00788_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00780_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00789_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00780_n20_α
.Lx00789_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00780_n19_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00790_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00780_n21_α
.Lx00790_0:
 .quad 3
# IR_SUBSCRIPT x[i] variable
 xchain00780_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00780_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00780_n22_α
# IR_LIT_INTEGER
 xchain00780_n21_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00791_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00780_n24_α
.Lx00791_0:
 .quad 4
# IR_DEREF variable -> value
 xchain00780_n22_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00780_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00780_n23_α
# IR_UNMARK
 xchain00780_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00780_n10_β
# IR_LIT_INTEGER
 xchain00780_n24_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00792_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00780_n25_α
.Lx00792_0:
 .quad 5
# IR_MAKE_LIST
 xchain00780_n25_α:
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
 jmp xchain00780_n3_α
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
proc_lsubscr_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 896
 mov qword ptr [rsp + 888], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 848], r11
 lea rax, [rip + .Lx00793_2]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + .Lx00793_3]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 840], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 832
 mov edx, 848
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lsubscr_α_body
.Lx00793_2:
 mov rdx, qword ptr [rsp + -896]
 mov rcx, rsp
 add rcx, -880
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00793_3:
 mov rdi, qword ptr [rsp + -896]
 mov rsi, rsp
 add rsi, -880
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 792], rsp
  mov rdi, rsp
  mov esi, 784
  mov edx, 800
  call rt_jmp_frame_lexprep2@PLT
proc_lbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00794_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00794_n2_α
xchain00794_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00795_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00794_n1_α
.Lx00795_0:
 jmp xchain00794_n1_α
 xchain00794_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00794_n1_α
xchain00794_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00794_n1_α
# IR_DISJUNCTION_NARY
 xchain00794_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00794_n5_α
xchain00794_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00796_0
 jmp xchain00794_n4_α
.Lx00796_0:
 jmp xchain00794_n4_α
 xchain00794_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00794_n4_α
xchain00794_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00794_n4_α
# IR_VAR_REF
 xchain00794_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052624
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00794_n6_α
 xchain00794_n2_β:
 jmp xchain00794_n0_af
# IR_ASSIGN gva
 xchain00794_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00794_n0_as
 xchain00794_n3_β:
 jmp xchain00794_n1_α
# IR_LIT_INTEGER
 xchain00794_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00797_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00794_n7_α
.Lx00797_0:
 .quad 1
# IR_VAR
 xchain00794_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00794_n8_α
 xchain00794_n5_β:
 jmp xchain00794_n1_af
# IR_NULLTEST_VAR
 xchain00794_n6_α:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 99
 je xchain00794_n0_af
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00794_n0_af
 cmp eax, 0
 jne xchain00794_n0_af
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 712], rax
 jmp xchain00794_n9_α
# IR_VAR
 xchain00794_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00794_n10_α
# IR_UNOP
 xchain00794_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00794_n1_af
 cmp eax, 0
 jne xchain00794_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00794_n11_α
# IR_LIT_INTEGER
 xchain00794_n9_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00798_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00794_n12_α
.Lx00798_0:
 .quad 1
# IR_TO
 xchain00794_n10_α:
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
.Lx00799_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_lbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00794_n13_α
 xchain00794_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00799_0
# IR_LIT_STRING
 xchain00794_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00800_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00794_n14_α
.Lx00800_0:
 .quad .Lx00800_0_s
.Lx00800_0_s:
 .string "!L"
# IR_ASSIGN_VAR
 xchain00794_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00794_n0_af
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00794_n15_α
# IR_BOUND
 xchain00794_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00794_n16_α
# IR_RETURN
 xchain00794_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_lbang_γ
# IR_LIT_INTEGER
 xchain00794_n15_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00801_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00794_n17_α
.Lx00801_0:
 .quad 1
# IR_VAR
 xchain00794_n16_α:
 mov rax, qword ptr [1879052608]
 mov rdx, qword ptr [1879052616]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00794_n18_α
# IR_LIT_INTEGER
 xchain00794_n17_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00802_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00794_n20_α
.Lx00802_0:
 .quad 2
# IR_LIST_BANG
 xchain00794_n18_α:
 mov qword ptr [rbp + 192], 0
.Lx00803_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00794_n19_α
 jmp xchain00794_n18_β
 xchain00794_n18_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00803_0
# IR_UNMARK
 xchain00794_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00794_n10_β
# IR_LIT_INTEGER
 xchain00794_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00804_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00794_n21_α
.Lx00804_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00794_n21_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00805_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00794_n22_α
.Lx00805_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00794_n22_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00806_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00794_n23_α
.Lx00806_0:
 .quad 5
# IR_MAKE_LIST
 xchain00794_n23_α:
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
 jmp xchain00794_n3_α
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
proc_lbang_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 848
 mov qword ptr [rsp + 840], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 800], r11
 lea rax, [rip + .Lx00807_2]
 mov qword ptr [rbp + 808], rax
 lea rax, [rip + .Lx00807_3]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 792], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 784
 mov edx, 800
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_lbang_α_body
.Lx00807_2:
 mov rdx, qword ptr [rsp + -848]
 mov rcx, rsp
 add rcx, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00807_3:
 mov rdi, qword ptr [rsp + -848]
 mov rsi, rsp
 add rsi, -832
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 672
  call rt_jmp_frame_lexprep2@PLT
proc_put1get1_α_body:
# IR_DISJUNCTION_NARY
 xchain00808_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00808_n2_α
xchain00808_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00809_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00808_n1_α
.Lx00809_0:
 jmp xchain00808_n1_α
 xchain00808_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00808_n1_α
xchain00808_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00808_n1_α
# IR_DISJUNCTION_NARY
 xchain00808_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00808_n5_α
xchain00808_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00810_0
 jmp xchain00808_n4_α
.Lx00810_0:
 jmp xchain00808_n4_α
 xchain00808_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00808_n4_α
xchain00808_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00808_n4_α
# IR_VAR_REF
 xchain00808_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052656
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00808_n6_α
 xchain00808_n2_β:
 jmp xchain00808_n0_af
# IR_ASSIGN gva
 xchain00808_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00808_n0_as
 xchain00808_n3_β:
 jmp xchain00808_n1_α
# IR_LIT_INTEGER
 xchain00808_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00811_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00808_n7_α
.Lx00811_0:
 .quad 1
# IR_VAR
 xchain00808_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00808_n8_α
 xchain00808_n5_β:
 jmp xchain00808_n1_af
# IR_NULLTEST_VAR
 xchain00808_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00808_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00808_n0_af
 cmp eax, 0
 jne xchain00808_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00808_n9_α
# IR_VAR
 xchain00808_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00808_n10_α
# IR_UNOP
 xchain00808_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00808_n1_af
 cmp eax, 0
 jne xchain00808_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00808_n11_α
# IR_LIT_INTEGER
 xchain00808_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00812_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00808_n12_α
.Lx00812_0:
 .quad 1
# IR_TO
 xchain00808_n10_α:
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
.Lx00813_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put1get1_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00808_n13_α
 xchain00808_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00813_0
# IR_LIT_STRING
 xchain00808_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00814_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00808_n14_α
.Lx00814_0:
 .quad .Lx00814_0_s
.Lx00814_0_s:
 .string "get(put(L,0))"
# IR_ASSIGN_VAR
 xchain00808_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00808_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00808_n15_α
# IR_BOUND
 xchain00808_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00808_n16_α
# IR_RETURN
 xchain00808_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put1get1_γ
# IR_MAKE_LIST
 xchain00808_n15_α:
 lea rdi, [rbp + 544]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00808_n3_α
# IR_VAR
 xchain00808_n16_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00808_n17_α
# IR_LIT_INTEGER
 xchain00808_n17_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00815_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00808_n19_α
.Lx00815_0:
 .quad 0
# IR_UNMARK
 xchain00808_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00808_n10_β
 xchain00808_n19_α:
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
  .Lrkfn2349: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2349]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00808_n18_α
 jmp xchain00808_n20_α
 xchain00808_n19_β:
 jmp xchain00808_n18_α
 xchain00808_n20_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2351: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2351]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00808_n18_α
 jmp xchain00808_n18_α
 xchain00808_n20_β:
 jmp xchain00808_n18_α
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
proc_put1get1_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 720
 mov qword ptr [rsp + 712], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 672], r11
 lea rax, [rip + .Lx00816_2]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + .Lx00816_3]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 664], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 656
 mov edx, 672
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_put1get1_α_body
.Lx00816_2:
 mov rdx, qword ptr [rsp + -720]
 mov rcx, rsp
 add rcx, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00816_3:
 mov rdi, qword ptr [rsp + -720]
 mov rsi, rsp
 add rsi, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 840], rsp
  mov rdi, rsp
  mov esi, 832
  mov edx, 848
  call rt_jmp_frame_lexprep2@PLT
proc_put2get2_α_body:
# IR_DISJUNCTION_NARY
 xchain00817_n0_α:
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 mov dword ptr [rbp + 672], 0
 jmp xchain00817_n2_α
xchain00817_n0_as:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 0
 jne .Lx00818_0
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
 jmp xchain00817_n1_α
.Lx00818_0:
 jmp xchain00817_n1_α
 xchain00817_n0_β:
 mov eax, dword ptr [rbp + 672]
 jmp xchain00817_n1_α
xchain00817_n0_af:
 add dword ptr [rbp + 672], 1
 mov eax, dword ptr [rbp + 672]
 jmp xchain00817_n1_α
# IR_DISJUNCTION_NARY
 xchain00817_n1_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 mov dword ptr [rbp + 544], 0
 jmp xchain00817_n5_α
xchain00817_n1_as:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 0
 jne .Lx00819_0
 jmp xchain00817_n4_α
.Lx00819_0:
 jmp xchain00817_n4_α
 xchain00817_n1_β:
 mov eax, dword ptr [rbp + 544]
 jmp xchain00817_n4_α
xchain00817_n1_af:
 add dword ptr [rbp + 544], 1
 mov eax, dword ptr [rbp + 544]
 jmp xchain00817_n4_α
# IR_VAR_REF
 xchain00817_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052688
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00817_n6_α
 xchain00817_n2_β:
 jmp xchain00817_n0_af
# IR_ASSIGN gva
 xchain00817_n3_α:
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
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
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 632], rax
 jmp xchain00817_n8_α
 xchain00817_n5_β:
 jmp xchain00817_n1_af
# IR_NULLTEST_VAR
 xchain00817_n6_α:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 99
 je xchain00817_n0_af
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00817_n0_af
 cmp eax, 0
 jne xchain00817_n0_af
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 760], rax
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
 mov qword ptr [rbp + 592], 0
 mov qword ptr [rbp + 600], 0
 jmp xchain00817_n11_α
# IR_LIT_INTEGER
 xchain00817_n9_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00821_0]
 mov qword ptr [rbp + 808], rax
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
 jg proc_put2get2_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00817_n13_α
 xchain00817_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00822_0
# IR_LIT_STRING
 xchain00817_n11_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00823_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00817_n14_α
.Lx00823_0:
 .quad .Lx00823_0_s
.Lx00823_0_s:
 .string "put(L,1,2) & [2x] get(L)"
# IR_ASSIGN_VAR
 xchain00817_n12_α:
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00817_n0_af
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00817_n15_α
# IR_BOUND
 xchain00817_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00817_n16_α
# IR_RETURN
 xchain00817_n14_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put2get2_γ
# IR_MAKE_LIST
 xchain00817_n15_α:
 lea rdi, [rbp + 720]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00817_n3_α
# IR_VAR
 xchain00817_n16_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00817_n17_α
# IR_LIT_INTEGER
 xchain00817_n17_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx00824_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00817_n19_α
.Lx00824_0:
 .quad 1
# IR_UNMARK
 xchain00817_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00817_n10_β
# IR_LIT_INTEGER
 xchain00817_n19_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00825_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00817_n20_α
.Lx00825_0:
 .quad 2
 xchain00817_n20_α:
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
  .Lrkfn2384: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2384]
 lea rsi, [rbp + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00817_n18_α
 jmp xchain00817_n21_α
 xchain00817_n20_β:
 jmp xchain00817_n18_α
# IR_VAR
 xchain00817_n21_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00817_n22_α
 xchain00817_n22_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2387: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2387]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00817_n18_α
 jmp xchain00817_n23_α
 xchain00817_n22_β:
 jmp xchain00817_n18_α
# IR_VAR
 xchain00817_n23_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00817_n24_α
 xchain00817_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2390: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2390]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00817_n18_α
 jmp xchain00817_n25_α
 xchain00817_n24_β:
 jmp xchain00817_n18_α
 xchain00817_n25_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00817_n18_α
xchain00817_n25_β:
 jmp xchain00817_n18_α
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
proc_put2get2_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 896
 mov qword ptr [rsp + 888], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 848], r11
 lea rax, [rip + .Lx00826_2]
 mov qword ptr [rbp + 856], rax
 lea rax, [rip + .Lx00826_3]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 840], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 832
 mov edx, 848
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_put2get2_α_body
.Lx00826_2:
 mov rdx, qword ptr [rsp + -896]
 mov rcx, rsp
 add rcx, -880
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00826_3:
 mov rdi, qword ptr [rsp + -896]
 mov rsi, rsp
 add rsi, -880
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 968], rsp
  mov rdi, rsp
  mov esi, 960
  mov edx, 976
  call rt_jmp_frame_lexprep2@PLT
proc_put3get3_α_body:
# IR_DISJUNCTION_NARY
 xchain00827_n0_α:
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 mov dword ptr [rbp + 800], 0
 jmp xchain00827_n2_α
xchain00827_n0_as:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 jne .Lx00828_0
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 jmp xchain00827_n1_α
.Lx00828_0:
 jmp xchain00827_n1_α
 xchain00827_n0_β:
 mov eax, dword ptr [rbp + 800]
 jmp xchain00827_n1_α
xchain00827_n0_af:
 add dword ptr [rbp + 800], 1
 mov eax, dword ptr [rbp + 800]
 jmp xchain00827_n1_α
# IR_DISJUNCTION_NARY
 xchain00827_n1_α:
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 mov dword ptr [rbp + 672], 0
 jmp xchain00827_n5_α
xchain00827_n1_as:
 mov eax, dword ptr [rbp + 672]
 cmp eax, 0
 jne .Lx00829_0
 jmp xchain00827_n4_α
.Lx00829_0:
 jmp xchain00827_n4_α
 xchain00827_n1_β:
 mov eax, dword ptr [rbp + 672]
 jmp xchain00827_n4_α
xchain00827_n1_af:
 add dword ptr [rbp + 672], 1
 mov eax, dword ptr [rbp + 672]
 jmp xchain00827_n4_α
# IR_VAR_REF
 xchain00827_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052720
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00827_n6_α
 xchain00827_n2_β:
 jmp xchain00827_n0_af
# IR_ASSIGN gva
 xchain00827_n3_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00827_n0_as
 xchain00827_n3_β:
 jmp xchain00827_n1_α
# IR_LIT_INTEGER
 xchain00827_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00830_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00827_n7_α
.Lx00830_0:
 .quad 1
# IR_VAR
 xchain00827_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 760], rax
 jmp xchain00827_n8_α
 xchain00827_n5_β:
 jmp xchain00827_n1_af
# IR_NULLTEST_VAR
 xchain00827_n6_α:
 mov eax, dword ptr [rbp + 848]
 cmp eax, 99
 je xchain00827_n0_af
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00827_n0_af
 cmp eax, 0
 jne xchain00827_n0_af
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 888], rax
 jmp xchain00827_n9_α
# IR_VAR
 xchain00827_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00827_n10_α
# IR_UNOP
 xchain00827_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00827_n1_af
 cmp eax, 0
 jne xchain00827_n1_af
 mov qword ptr [rbp + 720], 0
 mov qword ptr [rbp + 728], 0
 jmp xchain00827_n11_α
# IR_LIT_INTEGER
 xchain00827_n9_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00831_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00827_n12_α
.Lx00831_0:
 .quad 1
# IR_TO
 xchain00827_n10_α:
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
.Lx00832_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put3get3_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00827_n13_α
 xchain00827_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00832_0
# IR_LIT_STRING
 xchain00827_n11_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx00833_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00827_n14_α
.Lx00833_0:
 .quad .Lx00833_0_s
.Lx00833_0_s:
 .string "put(L,1,2,3) & [3x] get(L)"
# IR_ASSIGN_VAR
 xchain00827_n12_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00827_n0_af
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00827_n15_α
# IR_BOUND
 xchain00827_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00827_n16_α
# IR_RETURN
 xchain00827_n14_α:
 mov rax, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put3get3_γ
# IR_MAKE_LIST
 xchain00827_n15_α:
 lea rdi, [rbp + 848]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00827_n3_α
# IR_VAR
 xchain00827_n16_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00827_n17_α
# IR_LIT_INTEGER
 xchain00827_n17_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx00834_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00827_n19_α
.Lx00834_0:
 .quad 1
# IR_UNMARK
 xchain00827_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00827_n10_β
# IR_LIT_INTEGER
 xchain00827_n19_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00835_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00827_n20_α
.Lx00835_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00827_n20_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00836_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00827_n21_α
.Lx00836_0:
 .quad 3
 xchain00827_n21_α:
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
  .Lrkfn2425: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2425]
 lea rsi, [rbp + 448]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00827_n18_α
 jmp xchain00827_n22_α
 xchain00827_n21_β:
 jmp xchain00827_n18_α
# IR_VAR
 xchain00827_n22_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00827_n23_α
 xchain00827_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn2428: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2428]
 lea rsi, [rbp + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00827_n18_α
 jmp xchain00827_n24_α
 xchain00827_n23_β:
 jmp xchain00827_n18_α
# IR_VAR
 xchain00827_n24_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00827_n25_α
 xchain00827_n25_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2431: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2431]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00827_n18_α
 jmp xchain00827_n26_α
 xchain00827_n25_β:
 jmp xchain00827_n18_α
# IR_VAR
 xchain00827_n26_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00827_n27_α
 xchain00827_n27_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2434: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2434]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00827_n18_α
 jmp xchain00827_n28_α
 xchain00827_n27_β:
 jmp xchain00827_n18_α
 xchain00827_n28_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00827_n18_α
xchain00827_n28_β:
 jmp xchain00827_n18_α
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
proc_put3get3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1024
 mov qword ptr [rsp + 1016], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 976], r11
 lea rax, [rip + .Lx00837_2]
 mov qword ptr [rbp + 984], rax
 lea rax, [rip + .Lx00837_3]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 968], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 960
 mov edx, 976
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_put3get3_α_body
.Lx00837_2:
 mov rdx, qword ptr [rsp + -1024]
 mov rcx, rsp
 add rcx, -1008
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00837_3:
 mov rdi, qword ptr [rsp + -1024]
 mov rsi, rsp
 add rsi, -1008
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1096], rsp
  mov rdi, rsp
  mov esi, 1088
  mov edx, 1104
  call rt_jmp_frame_lexprep2@PLT
proc_put4get4_α_body:
# IR_DISJUNCTION_NARY
 xchain00838_n0_α:
 mov qword ptr [rbp + 912], 0
 mov qword ptr [rbp + 920], 0
 mov dword ptr [rbp + 928], 0
 jmp xchain00838_n2_α
xchain00838_n0_as:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 0
 jne .Lx00839_0
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
 jmp xchain00838_n1_α
.Lx00839_0:
 jmp xchain00838_n1_α
 xchain00838_n0_β:
 mov eax, dword ptr [rbp + 928]
 jmp xchain00838_n1_α
xchain00838_n0_af:
 add dword ptr [rbp + 928], 1
 mov eax, dword ptr [rbp + 928]
 jmp xchain00838_n1_α
# IR_DISJUNCTION_NARY
 xchain00838_n1_α:
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 mov dword ptr [rbp + 800], 0
 jmp xchain00838_n5_α
xchain00838_n1_as:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 jne .Lx00840_0
 jmp xchain00838_n4_α
.Lx00840_0:
 jmp xchain00838_n4_α
 xchain00838_n1_β:
 mov eax, dword ptr [rbp + 800]
 jmp xchain00838_n4_α
xchain00838_n1_af:
 add dword ptr [rbp + 800], 1
 mov eax, dword ptr [rbp + 800]
 jmp xchain00838_n4_α
# IR_VAR_REF
 xchain00838_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052752
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00838_n6_α
 xchain00838_n2_β:
 jmp xchain00838_n0_af
# IR_ASSIGN gva
 xchain00838_n3_α:
 mov rax, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 mov qword ptr [1879052736], rax
 mov qword ptr [1879052744], rdx
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00838_n0_as
 xchain00838_n3_β:
 jmp xchain00838_n1_α
# IR_LIT_INTEGER
 xchain00838_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00841_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00838_n7_α
.Lx00841_0:
 .quad 1
# IR_VAR
 xchain00838_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 888], rax
 jmp xchain00838_n8_α
 xchain00838_n5_β:
 jmp xchain00838_n1_af
# IR_NULLTEST_VAR
 xchain00838_n6_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain00838_n0_af
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00838_n0_af
 cmp eax, 0
 jne xchain00838_n0_af
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00838_n9_α
# IR_VAR
 xchain00838_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00838_n10_α
# IR_UNOP
 xchain00838_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00838_n1_af
 cmp eax, 0
 jne xchain00838_n1_af
 mov qword ptr [rbp + 848], 0
 mov qword ptr [rbp + 856], 0
 jmp xchain00838_n11_α
# IR_LIT_INTEGER
 xchain00838_n9_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00842_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00838_n12_α
.Lx00842_0:
 .quad 1
# IR_TO
 xchain00838_n10_α:
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
.Lx00843_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_put4get4_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00838_n13_α
 xchain00838_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00843_0
# IR_LIT_STRING
 xchain00838_n11_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00844_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00838_n14_α
.Lx00844_0:
 .quad .Lx00844_0_s
.Lx00844_0_s:
 .string "put(L,1,2,3,4) & [4x] get(L)"
# IR_ASSIGN_VAR
 xchain00838_n12_α:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1056]
 mov rcx, qword ptr [rbp + 1064]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00838_n0_af
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00838_n15_α
# IR_BOUND
 xchain00838_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00838_n16_α
# IR_RETURN
 xchain00838_n14_α:
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_put4get4_γ
# IR_MAKE_LIST
 xchain00838_n15_α:
 lea rdi, [rbp + 976]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00838_n3_α
# IR_VAR
 xchain00838_n16_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00838_n17_α
# IR_LIT_INTEGER
 xchain00838_n17_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00845_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00838_n19_α
.Lx00845_0:
 .quad 1
# IR_UNMARK
 xchain00838_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00838_n10_β
# IR_LIT_INTEGER
 xchain00838_n19_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00846_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00838_n20_α
.Lx00846_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00838_n20_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00847_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00838_n21_α
.Lx00847_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00838_n21_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx00848_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00838_n22_α
.Lx00848_0:
 .quad 4
 xchain00838_n22_α:
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
  .Lrkfn2470: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2470]
 lea rsi, [rbp + 528]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain00838_n18_α
 jmp xchain00838_n23_α
 xchain00838_n22_β:
 jmp xchain00838_n18_α
# IR_VAR
 xchain00838_n23_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00838_n24_α
 xchain00838_n24_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn2473: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2473]
 lea rsi, [rbp + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain00838_n18_α
 jmp xchain00838_n25_α
 xchain00838_n24_β:
 jmp xchain00838_n18_α
# IR_VAR
 xchain00838_n25_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00838_n26_α
 xchain00838_n26_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn2476: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2476]
 lea rsi, [rbp + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain00838_n18_α
 jmp xchain00838_n27_α
 xchain00838_n26_β:
 jmp xchain00838_n18_α
# IR_VAR
 xchain00838_n27_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00838_n28_α
 xchain00838_n28_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn2479: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2479]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00838_n18_α
 jmp xchain00838_n29_α
 xchain00838_n28_β:
 jmp xchain00838_n18_α
# IR_VAR
 xchain00838_n29_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00838_n30_α
 xchain00838_n30_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn2482: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2482]
 lea rsi, [rbp + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain00838_n18_α
 jmp xchain00838_n31_α
 xchain00838_n30_β:
 jmp xchain00838_n18_α
 xchain00838_n31_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 184], rax
 jmp xchain00838_n18_α
xchain00838_n31_β:
 jmp xchain00838_n18_α
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
proc_put4get4_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1152
 mov qword ptr [rsp + 1144], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1104], r11
 lea rax, [rip + .Lx00849_2]
 mov qword ptr [rbp + 1112], rax
 lea rax, [rip + .Lx00849_3]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1096], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1088
 mov edx, 1104
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_put4get4_α_body
.Lx00849_2:
 mov rdx, qword ptr [rsp + -1152]
 mov rcx, rsp
 add rcx, -1136
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00849_3:
 mov rdi, qword ptr [rsp + -1152]
 mov rsi, rsp
 add rsi, -1136
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 672
  call rt_jmp_frame_lexprep2@PLT
proc_pushpop_α_body:
# IR_DISJUNCTION_NARY
 xchain00850_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00850_n2_α
xchain00850_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00851_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00850_n1_α
.Lx00851_0:
 jmp xchain00850_n1_α
 xchain00850_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00850_n1_α
xchain00850_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00850_n1_α
# IR_DISJUNCTION_NARY
 xchain00850_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00850_n5_α
xchain00850_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00852_0
 jmp xchain00850_n4_α
.Lx00852_0:
 jmp xchain00850_n4_α
 xchain00850_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00850_n4_α
xchain00850_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00850_n4_α
# IR_VAR_REF
 xchain00850_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052784
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00850_n6_α
 xchain00850_n2_β:
 jmp xchain00850_n0_af
# IR_ASSIGN gva
 xchain00850_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00850_n0_as
 xchain00850_n3_β:
 jmp xchain00850_n1_α
# IR_LIT_INTEGER
 xchain00850_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00853_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00850_n7_α
.Lx00853_0:
 .quad 1
# IR_VAR
 xchain00850_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00850_n8_α
 xchain00850_n5_β:
 jmp xchain00850_n1_af
# IR_NULLTEST_VAR
 xchain00850_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00850_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00850_n0_af
 cmp eax, 0
 jne xchain00850_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00850_n9_α
# IR_VAR
 xchain00850_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00850_n10_α
# IR_UNOP
 xchain00850_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00850_n1_af
 cmp eax, 0
 jne xchain00850_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00850_n11_α
# IR_LIT_INTEGER
 xchain00850_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00854_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00850_n12_α
.Lx00854_0:
 .quad 1
# IR_TO
 xchain00850_n10_α:
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
.Lx00855_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00850_n13_α
 xchain00850_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00855_0
# IR_LIT_STRING
 xchain00850_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00856_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00850_n14_α
.Lx00856_0:
 .quad .Lx00856_0_s
.Lx00856_0_s:
 .string "pop(push(L,0))"
# IR_ASSIGN_VAR
 xchain00850_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00850_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00850_n15_α
# IR_BOUND
 xchain00850_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00850_n16_α
# IR_RETURN
 xchain00850_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop_γ
# IR_MAKE_LIST
 xchain00850_n15_α:
 lea rdi, [rbp + 544]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00850_n3_α
# IR_VAR
 xchain00850_n16_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00850_n17_α
# IR_LIT_INTEGER
 xchain00850_n17_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00857_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00850_n19_α
.Lx00857_0:
 .quad 0
# IR_UNMARK
 xchain00850_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00850_n10_β
 xchain00850_n19_α:
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
  .Lrkfn2515: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2515]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00850_n18_α
 jmp xchain00850_n20_α
 xchain00850_n19_β:
 jmp xchain00850_n18_α
 xchain00850_n20_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2517: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2517]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00850_n18_α
 jmp xchain00850_n18_α
 xchain00850_n20_β:
 jmp xchain00850_n18_α
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
proc_pushpop_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 720
 mov qword ptr [rsp + 712], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 672], r11
 lea rax, [rip + .Lx00858_2]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + .Lx00858_3]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 664], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 656
 mov edx, 672
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_pushpop_α_body
.Lx00858_2:
 mov rdx, qword ptr [rsp + -720]
 mov rcx, rsp
 add rcx, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00858_3:
 mov rdi, qword ptr [rsp + -720]
 mov rsi, rsp
 add rsi, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1232
  mov edx, 1248
  call rt_jmp_frame_lexprep2@PLT
proc_putget12_α_body:
# IR_DISJUNCTION_NARY
 xchain00859_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00859_n2_α
xchain00859_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00860_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00859_n1_α
.Lx00860_0:
 jmp xchain00859_n1_α
 xchain00859_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00859_n1_α
xchain00859_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00859_n1_α
# IR_DISJUNCTION_NARY
 xchain00859_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00859_n5_α
xchain00859_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00861_0
 jmp xchain00859_n4_α
.Lx00861_0:
 jmp xchain00859_n4_α
 xchain00859_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00859_n4_α
xchain00859_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00859_n4_α
# IR_VAR_REF
 xchain00859_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052816
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00859_n6_α
 xchain00859_n2_β:
 jmp xchain00859_n0_af
# IR_ASSIGN gva
 xchain00859_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00859_n0_as
 xchain00859_n3_β:
 jmp xchain00859_n1_α
# IR_LIT_INTEGER
 xchain00859_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00862_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00859_n7_α
.Lx00862_0:
 .quad 1
# IR_VAR
 xchain00859_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00859_n8_α
 xchain00859_n5_β:
 jmp xchain00859_n1_af
# IR_NULLTEST_VAR
 xchain00859_n6_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 99
 je xchain00859_n0_af
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00859_n0_af
 cmp eax, 0
 jne xchain00859_n0_af
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00859_n9_α
# IR_VAR
 xchain00859_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00859_n10_α
# IR_UNOP
 xchain00859_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00859_n1_af
 cmp eax, 0
 jne xchain00859_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00859_n11_α
# IR_LIT_INTEGER
 xchain00859_n9_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00863_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00859_n12_α
.Lx00863_0:
 .quad 1
# IR_TO
 xchain00859_n10_α:
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
.Lx00864_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_putget12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00859_n13_α
 xchain00859_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00864_0
# IR_LIT_STRING
 xchain00859_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00865_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00859_n14_α
.Lx00865_0:
 .quad .Lx00865_0_s
.Lx00865_0_s:
 .string "get(put(L12,0))"
# IR_ASSIGN_VAR
 xchain00859_n12_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00859_n0_af
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00859_n15_α
# IR_BOUND
 xchain00859_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00859_n16_α
# IR_RETURN
 xchain00859_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_putget12_γ
# IR_LIT_INTEGER
 xchain00859_n15_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00866_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00859_n17_α
.Lx00866_0:
 .quad 3
# IR_VAR
 xchain00859_n16_α:
 mov rax, qword ptr [1879052800]
 mov rdx, qword ptr [1879052808]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00859_n18_α
# IR_LIT_INTEGER
 xchain00859_n17_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00867_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00859_n20_α
.Lx00867_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00859_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00868_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00859_n21_α
.Lx00868_0:
 .quad 0
# IR_UNMARK
 xchain00859_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00859_n10_β
# IR_LIT_INTEGER
 xchain00859_n20_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00869_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00859_n22_α
.Lx00869_0:
 .quad 4
 xchain00859_n21_α:
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
  .Lrkfn2550: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2550]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00859_n19_α
 jmp xchain00859_n23_α
 xchain00859_n21_β:
 jmp xchain00859_n19_α
# IR_LIT_INTEGER
 xchain00859_n22_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00870_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00859_n24_α
.Lx00870_0:
 .quad 1
 xchain00859_n23_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2553: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2553]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00859_n19_α
 jmp xchain00859_n19_α
 xchain00859_n23_β:
 jmp xchain00859_n19_α
# IR_LIT_INTEGER
 xchain00859_n24_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00871_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00859_n25_α
.Lx00871_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00859_n25_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00872_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00859_n26_α
.Lx00872_0:
 .quad 9
# IR_LIT_INTEGER
 xchain00859_n26_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00873_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00859_n27_α
.Lx00873_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00859_n27_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00874_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00859_n28_α
.Lx00874_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00859_n28_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00875_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00859_n29_α
.Lx00875_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00859_n29_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00876_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00859_n30_α
.Lx00876_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00859_n30_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00877_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00859_n31_α
.Lx00877_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00859_n31_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx00878_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00859_n32_α
.Lx00878_0:
 .quad 8
# IR_MAKE_LIST
 xchain00859_n32_α:
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
 jmp xchain00859_n3_α
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
proc_putget12_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1296
 mov qword ptr [rsp + 1288], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1248], r11
 lea rax, [rip + .Lx00879_2]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + .Lx00879_3]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1240], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1232
 mov edx, 1248
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_putget12_α_body
.Lx00879_2:
 mov rdx, qword ptr [rsp + -1296]
 mov rcx, rsp
 add rcx, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00879_3:
 mov rdi, qword ptr [rsp + -1296]
 mov rsi, rsp
 add rsi, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 1240], rsp
  mov rdi, rsp
  mov esi, 1232
  mov edx, 1248
  call rt_jmp_frame_lexprep2@PLT
proc_pushpop12_α_body:
# IR_DISJUNCTION_NARY
 xchain00880_n0_α:
 mov qword ptr [rbp + 480], 0
 mov qword ptr [rbp + 488], 0
 mov dword ptr [rbp + 496], 0
 jmp xchain00880_n2_α
xchain00880_n0_as:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 0
 jne .Lx00881_0
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 488], rax
 jmp xchain00880_n1_α
.Lx00881_0:
 jmp xchain00880_n1_α
 xchain00880_n0_β:
 mov eax, dword ptr [rbp + 496]
 jmp xchain00880_n1_α
xchain00880_n0_af:
 add dword ptr [rbp + 496], 1
 mov eax, dword ptr [rbp + 496]
 jmp xchain00880_n1_α
# IR_DISJUNCTION_NARY
 xchain00880_n1_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00880_n5_α
xchain00880_n1_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00882_0
 jmp xchain00880_n4_α
.Lx00882_0:
 jmp xchain00880_n4_α
 xchain00880_n1_β:
 mov eax, dword ptr [rbp + 368]
 jmp xchain00880_n4_α
xchain00880_n1_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 jmp xchain00880_n4_α
# IR_VAR_REF
 xchain00880_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052848
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain00880_n6_α
 xchain00880_n2_β:
 jmp xchain00880_n0_af
# IR_ASSIGN gva
 xchain00880_n3_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00880_n0_as
 xchain00880_n3_β:
 jmp xchain00880_n1_α
# IR_LIT_INTEGER
 xchain00880_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00883_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00880_n7_α
.Lx00883_0:
 .quad 1
# IR_VAR
 xchain00880_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 456], rax
 jmp xchain00880_n8_α
 xchain00880_n5_β:
 jmp xchain00880_n1_af
# IR_NULLTEST_VAR
 xchain00880_n6_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 99
 je xchain00880_n0_af
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00880_n0_af
 cmp eax, 0
 jne xchain00880_n0_af
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00880_n9_α
# IR_VAR
 xchain00880_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00880_n10_α
# IR_UNOP
 xchain00880_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00880_n1_af
 cmp eax, 0
 jne xchain00880_n1_af
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 jmp xchain00880_n11_α
# IR_LIT_INTEGER
 xchain00880_n9_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx00884_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00880_n12_α
.Lx00884_0:
 .quad 1
# IR_TO
 xchain00880_n10_α:
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
.Lx00885_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_pushpop12_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00880_n13_α
 xchain00880_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00885_0
# IR_LIT_STRING
 xchain00880_n11_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx00886_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain00880_n14_α
.Lx00886_0:
 .quad .Lx00886_0_s
.Lx00886_0_s:
 .string "pop(push(L12,0))"
# IR_ASSIGN_VAR
 xchain00880_n12_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00880_n0_af
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00880_n15_α
# IR_BOUND
 xchain00880_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00880_n16_α
# IR_RETURN
 xchain00880_n14_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_pushpop12_γ
# IR_LIT_INTEGER
 xchain00880_n15_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx00887_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00880_n17_α
.Lx00887_0:
 .quad 3
# IR_VAR
 xchain00880_n16_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain00880_n18_α
# IR_LIT_INTEGER
 xchain00880_n17_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00888_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00880_n20_α
.Lx00888_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00880_n18_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx00889_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00880_n21_α
.Lx00889_0:
 .quad 0
# IR_UNMARK
 xchain00880_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00880_n10_β
# IR_LIT_INTEGER
 xchain00880_n20_α:
 mov qword ptr [rbp + 800], 6
 mov rax, qword ptr [rip + .Lx00890_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain00880_n22_α
.Lx00890_0:
 .quad 4
 xchain00880_n21_α:
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
  .Lrkfn2596: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2596]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00880_n19_α
 jmp xchain00880_n23_α
 xchain00880_n21_β:
 jmp xchain00880_n19_α
# IR_LIT_INTEGER
 xchain00880_n22_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx00891_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain00880_n24_α
.Lx00891_0:
 .quad 1
 xchain00880_n23_α:
# BOX IR_CALL pop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2599: .string "pop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2599]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00880_n19_α
 jmp xchain00880_n19_α
 xchain00880_n23_β:
 jmp xchain00880_n19_α
# IR_LIT_INTEGER
 xchain00880_n24_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00892_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00880_n25_α
.Lx00892_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00880_n25_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx00893_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00880_n26_α
.Lx00893_0:
 .quad 9
# IR_LIT_INTEGER
 xchain00880_n26_α:
 mov qword ptr [rbp + 928], 6
 mov rax, qword ptr [rip + .Lx00894_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00880_n27_α
.Lx00894_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00880_n27_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx00895_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain00880_n28_α
.Lx00895_0:
 .quad 6
# IR_LIT_INTEGER
 xchain00880_n28_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx00896_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00880_n29_α
.Lx00896_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00880_n29_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx00897_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain00880_n30_α
.Lx00897_0:
 .quad 3
# IR_LIT_INTEGER
 xchain00880_n30_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx00898_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00880_n31_α
.Lx00898_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00880_n31_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx00899_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00880_n32_α
.Lx00899_0:
 .quad 8
# IR_MAKE_LIST
 xchain00880_n32_α:
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
 jmp xchain00880_n3_α
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
proc_pushpop12_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1296
 mov qword ptr [rsp + 1288], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1248], r11
 lea rax, [rip + .Lx00900_2]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + .Lx00900_3]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1240], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 1232
 mov edx, 1248
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_pushpop12_α_body
.Lx00900_2:
 mov rdx, qword ptr [rsp + -1296]
 mov rcx, rsp
 add rcx, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00900_3:
 mov rdi, qword ptr [rsp + -1296]
 mov rsi, rsp
 add rsi, -1280
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 336
  mov edx, 352
  call rt_jmp_frame_lexprep2@PLT
proc_setcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00901_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00901_n2_α
xchain00901_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00902_0
 jmp xchain00901_n1_α
.Lx00902_0:
 jmp xchain00901_n1_α
 xchain00901_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00901_n1_α
xchain00901_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00901_n1_α
# IR_LIT_INTEGER
 xchain00901_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00903_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00901_n3_α
.Lx00903_0:
 .quad 1
# IR_VAR
 xchain00901_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00901_n4_α
 xchain00901_n2_β:
 jmp xchain00901_n0_af
# IR_VAR
 xchain00901_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00901_n5_α
# IR_UNOP
 xchain00901_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00901_n0_af
 cmp eax, 0
 jne xchain00901_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00901_n6_α
# IR_TO
 xchain00901_n5_α:
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
.Lx00904_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00901_n7_α
 xchain00901_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00904_0
# IR_LIT_STRING
 xchain00901_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00905_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00901_n8_α
.Lx00905_0:
 .quad .Lx00905_0_s
.Lx00905_0_s:
 .string "set()"
# IR_BOUND
 xchain00901_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00901_n9_α
# IR_RETURN
 xchain00901_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcreate_γ
 xchain00901_n9_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2627: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2627]
 lea rsi, [rbp + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00901_n10_α
 jmp xchain00901_n10_α
 xchain00901_n9_β:
 jmp xchain00901_n10_α
# IR_UNMARK
 xchain00901_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00901_n5_β
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
proc_setcreate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 400
 mov qword ptr [rsp + 392], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 352], r11
 lea rax, [rip + .Lx00906_2]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + .Lx00906_3]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 344], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 336
 mov edx, 352
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setcreate_α_body
.Lx00906_2:
 mov rdx, qword ptr [rsp + -400]
 mov rcx, rsp
 add rcx, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00906_3:
 mov rdi, qword ptr [rsp + -400]
 mov rsi, rsp
 add rsi, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 672
  mov edx, 688
  call rt_jmp_frame_lexprep2@PLT
proc_setcopy_α_body:
# IR_DISJUNCTION_NARY
 xchain00907_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain00907_n2_α
xchain00907_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx00908_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain00907_n1_α
.Lx00908_0:
 jmp xchain00907_n1_α
 xchain00907_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain00907_n1_α
xchain00907_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain00907_n1_α
# IR_DISJUNCTION_NARY
 xchain00907_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain00907_n5_α
xchain00907_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx00909_0
 jmp xchain00907_n4_α
.Lx00909_0:
 jmp xchain00907_n4_α
 xchain00907_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain00907_n4_α
xchain00907_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain00907_n4_α
# IR_VAR_REF
 xchain00907_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052880
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00907_n6_α
 xchain00907_n2_β:
 jmp xchain00907_n0_af
 xchain00907_n3_α:
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
  .Lrkfn2639: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2639]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00907_n1_α
 jmp xchain00907_n0_as
 xchain00907_n3_β:
 jmp xchain00907_n1_α
# IR_LIT_INTEGER
 xchain00907_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00910_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00907_n7_α
.Lx00910_0:
 .quad 1
# IR_VAR
 xchain00907_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain00907_n8_α
 xchain00907_n5_β:
 jmp xchain00907_n1_af
# IR_NULLTEST_VAR
 xchain00907_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain00907_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00907_n0_af
 cmp eax, 0
 jne xchain00907_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain00907_n9_α
# IR_VAR
 xchain00907_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00907_n10_α
# IR_UNOP
 xchain00907_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00907_n1_af
 cmp eax, 0
 jne xchain00907_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain00907_n11_α
# IR_LIT_INTEGER
 xchain00907_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx00911_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain00907_n12_α
.Lx00911_0:
 .quad 1
# IR_TO
 xchain00907_n10_α:
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
.Lx00912_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setcopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00907_n13_α
 xchain00907_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00912_0
# IR_LIT_STRING
 xchain00907_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00913_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00907_n14_α
.Lx00913_0:
 .quad .Lx00913_0_s
.Lx00913_0_s:
 .string "copy(S)"
# IR_ASSIGN_VAR
 xchain00907_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00907_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00907_n15_α
# IR_BOUND
 xchain00907_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00907_n16_α
# IR_RETURN
 xchain00907_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setcopy_γ
 xchain00907_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2656: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2656]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00907_n1_α
 jmp xchain00907_n17_α
 xchain00907_n15_β:
 jmp xchain00907_n1_α
# IR_VAR
 xchain00907_n16_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00907_n18_α
# IR_ASSIGN gva
 xchain00907_n17_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00907_n20_α
 xchain00907_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2660: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2660]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00907_n19_α
 jmp xchain00907_n19_α
 xchain00907_n18_β:
 jmp xchain00907_n19_α
# IR_UNMARK
 xchain00907_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00907_n10_β
# IR_LIT_INTEGER
 xchain00907_n20_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00914_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00907_n3_α
.Lx00914_0:
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
proc_setcopy_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 736
 mov qword ptr [rsp + 728], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 688], r11
 lea rax, [rip + .Lx00915_2]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + .Lx00915_3]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 680], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 672
 mov edx, 688
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setcopy_α_body
.Lx00915_2:
 mov rdx, qword ptr [rsp + -736]
 mov rcx, rsp
 add rcx, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00915_3:
 mov rdi, qword ptr [rsp + -736]
 mov rsi, rsp
 add rsi, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_setinsert_α_body:
# IR_DISJUNCTION_NARY
 xchain00916_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00916_n2_α
xchain00916_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00917_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00916_n1_α
.Lx00917_0:
 jmp xchain00916_n1_α
 xchain00916_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00916_n1_α
xchain00916_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00916_n1_α
# IR_DISJUNCTION_NARY
 xchain00916_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00916_n5_α
xchain00916_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00918_0
 jmp xchain00916_n4_α
.Lx00918_0:
 jmp xchain00916_n4_α
 xchain00916_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00916_n4_α
xchain00916_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00916_n4_α
# IR_VAR_REF
 xchain00916_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052912
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00916_n6_α
 xchain00916_n2_β:
 jmp xchain00916_n0_af
 xchain00916_n3_α:
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
  .Lrkfn2673: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2673]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00916_n1_α
 jmp xchain00916_n0_as
 xchain00916_n3_β:
 jmp xchain00916_n1_α
# IR_LIT_INTEGER
 xchain00916_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00919_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00916_n7_α
.Lx00919_0:
 .quad 1
# IR_VAR
 xchain00916_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00916_n8_α
 xchain00916_n5_β:
 jmp xchain00916_n1_af
# IR_NULLTEST_VAR
 xchain00916_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00916_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00916_n0_af
 cmp eax, 0
 jne xchain00916_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00916_n9_α
# IR_VAR
 xchain00916_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00916_n10_α
# IR_UNOP
 xchain00916_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00916_n1_af
 cmp eax, 0
 jne xchain00916_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00916_n11_α
# IR_LIT_INTEGER
 xchain00916_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00920_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00916_n12_α
.Lx00920_0:
 .quad 1
# IR_TO
 xchain00916_n10_α:
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
.Lx00921_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsert_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00916_n13_α
 xchain00916_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00921_0
# IR_LIT_STRING
 xchain00916_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00922_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00916_n14_α
.Lx00922_0:
 .quad .Lx00922_0_s
.Lx00922_0_s:
 .string "insert(S,5)"
# IR_ASSIGN_VAR
 xchain00916_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00916_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00916_n15_α
# IR_BOUND
 xchain00916_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00916_n16_α
# IR_RETURN
 xchain00916_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsert_γ
 xchain00916_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2690: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2690]
 lea rsi, [rbp + 560]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00916_n1_α
 jmp xchain00916_n17_α
 xchain00916_n15_β:
 jmp xchain00916_n1_α
# IR_VAR
 xchain00916_n16_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00916_n18_α
# IR_ASSIGN gva
 xchain00916_n17_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00916_n20_α
# IR_LIT_INTEGER
 xchain00916_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00923_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00916_n21_α
.Lx00923_0:
 .quad 5
# IR_UNMARK
 xchain00916_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00916_n10_β
# IR_LIT_INTEGER
 xchain00916_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00924_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00916_n3_α
.Lx00924_0:
 .quad 5
 xchain00916_n21_α:
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
  .Lrkfn2698: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2698]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00916_n19_α
 jmp xchain00916_n19_α
 xchain00916_n21_β:
 jmp xchain00916_n19_α
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
proc_setinsert_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00925_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00925_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setinsert_α_body
.Lx00925_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00925_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_setmember_α_body:
# IR_DISJUNCTION_NARY
 xchain00926_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain00926_n2_α
xchain00926_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx00927_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain00926_n1_α
.Lx00927_0:
 jmp xchain00926_n1_α
 xchain00926_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain00926_n1_α
xchain00926_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain00926_n1_α
# IR_DISJUNCTION_NARY
 xchain00926_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00926_n5_α
xchain00926_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00928_0
 jmp xchain00926_n4_α
.Lx00928_0:
 jmp xchain00926_n4_α
 xchain00926_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00926_n4_α
xchain00926_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00926_n4_α
# IR_VAR_REF
 xchain00926_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052944
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00926_n6_α
 xchain00926_n2_β:
 jmp xchain00926_n0_af
 xchain00926_n3_α:
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
  .Lrkfn2708: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2708]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00926_n1_α
 jmp xchain00926_n0_as
 xchain00926_n3_β:
 jmp xchain00926_n1_α
# IR_LIT_INTEGER
 xchain00926_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00929_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00926_n7_α
.Lx00929_0:
 .quad 1
# IR_VAR
 xchain00926_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00926_n8_α
 xchain00926_n5_β:
 jmp xchain00926_n1_af
# IR_NULLTEST_VAR
 xchain00926_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00926_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00926_n0_af
 cmp eax, 0
 jne xchain00926_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00926_n9_α
# IR_VAR
 xchain00926_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00926_n10_α
# IR_UNOP
 xchain00926_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00926_n1_af
 cmp eax, 0
 jne xchain00926_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00926_n11_α
# IR_LIT_INTEGER
 xchain00926_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00930_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00926_n12_α
.Lx00930_0:
 .quad 1
# IR_TO
 xchain00926_n10_α:
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
.Lx00931_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setmember_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00926_n13_α
 xchain00926_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00931_0
# IR_LIT_STRING
 xchain00926_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx00932_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00926_n14_α
.Lx00932_0:
 .quad .Lx00932_0_s
.Lx00932_0_s:
 .string "member(S,5)"
# IR_ASSIGN_VAR
 xchain00926_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00926_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00926_n15_α
# IR_BOUND
 xchain00926_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00926_n16_α
# IR_RETURN
 xchain00926_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setmember_γ
 xchain00926_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2725: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2725]
 lea rsi, [rbp + 560]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain00926_n1_α
 jmp xchain00926_n17_α
 xchain00926_n15_β:
 jmp xchain00926_n1_α
# IR_VAR
 xchain00926_n16_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00926_n18_α
# IR_ASSIGN gva
 xchain00926_n17_α:
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [1879052928], rax
 mov qword ptr [1879052936], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00926_n20_α
# IR_LIT_INTEGER
 xchain00926_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx00933_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00926_n21_α
.Lx00933_0:
 .quad 5
# IR_UNMARK
 xchain00926_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00926_n10_β
# IR_LIT_INTEGER
 xchain00926_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00934_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00926_n3_α
.Lx00934_0:
 .quad 5
 xchain00926_n21_α:
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
  .Lrkfn2733: .string "member"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2733]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00926_n19_α
 jmp xchain00926_n19_α
 xchain00926_n21_β:
 jmp xchain00926_n19_α
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
proc_setmember_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00935_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00935_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setmember_α_body
.Lx00935_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00935_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_setinsdel_α_body:
# IR_DISJUNCTION_NARY
 xchain00936_n0_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 mov dword ptr [rbp + 544], 0
 jmp xchain00936_n2_α
xchain00936_n0_as:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 0
 jne .Lx00937_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
 jmp xchain00936_n1_α
.Lx00937_0:
 jmp xchain00936_n1_α
 xchain00936_n0_β:
 mov eax, dword ptr [rbp + 544]
 jmp xchain00936_n1_α
xchain00936_n0_af:
 add dword ptr [rbp + 544], 1
 mov eax, dword ptr [rbp + 544]
 jmp xchain00936_n1_α
# IR_DISJUNCTION_NARY
 xchain00936_n1_α:
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 mov dword ptr [rbp + 416], 0
 jmp xchain00936_n5_α
xchain00936_n1_as:
 mov eax, dword ptr [rbp + 416]
 cmp eax, 0
 jne .Lx00938_0
 jmp xchain00936_n4_α
.Lx00938_0:
 jmp xchain00936_n4_α
 xchain00936_n1_β:
 mov eax, dword ptr [rbp + 416]
 jmp xchain00936_n4_α
xchain00936_n1_af:
 add dword ptr [rbp + 416], 1
 mov eax, dword ptr [rbp + 416]
 jmp xchain00936_n4_α
# IR_VAR_REF
 xchain00936_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052976
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00936_n6_α
 xchain00936_n2_β:
 jmp xchain00936_n0_af
# IR_ASSIGN gva
 xchain00936_n3_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00936_n0_as
 xchain00936_n3_β:
 jmp xchain00936_n1_α
# IR_LIT_INTEGER
 xchain00936_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00939_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00936_n7_α
.Lx00939_0:
 .quad 1
# IR_VAR
 xchain00936_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain00936_n8_α
 xchain00936_n5_β:
 jmp xchain00936_n1_af
# IR_NULLTEST_VAR
 xchain00936_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00936_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00936_n0_af
 cmp eax, 0
 jne xchain00936_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00936_n9_α
# IR_VAR
 xchain00936_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00936_n10_α
# IR_UNOP
 xchain00936_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00936_n1_af
 cmp eax, 0
 jne xchain00936_n1_af
 mov qword ptr [rbp + 464], 0
 mov qword ptr [rbp + 472], 0
 jmp xchain00936_n11_α
# IR_LIT_INTEGER
 xchain00936_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00940_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00936_n12_α
.Lx00940_0:
 .quad 1
# IR_TO
 xchain00936_n10_α:
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
.Lx00941_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setinsdel_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00936_n13_α
 xchain00936_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00941_0
# IR_LIT_STRING
 xchain00936_n11_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx00942_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain00936_n14_α
.Lx00942_0:
 .quad .Lx00942_0_s
.Lx00942_0_s:
 .string "insert+delete"
# IR_ASSIGN_VAR
 xchain00936_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00936_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00936_n15_α
# IR_BOUND
 xchain00936_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00936_n16_α
# IR_RETURN
 xchain00936_n14_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setinsdel_γ
 xchain00936_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2759: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2759]
 lea rsi, [rbp + 592]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain00936_n1_α
 jmp xchain00936_n3_α
 xchain00936_n15_β:
 jmp xchain00936_n1_α
# IR_VAR
 xchain00936_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00936_n17_α
# IR_LIT_INTEGER
 xchain00936_n17_α:
 mov qword ptr [rbp + 336], 6
 mov rax, qword ptr [rip + .Lx00943_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00936_n19_α
.Lx00943_0:
 .quad 5
# IR_UNMARK
 xchain00936_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00936_n10_β
 xchain00936_n19_α:
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
  .Lrkfn2765: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2765]
 lea rsi, [rbp + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain00936_n18_α
 jmp xchain00936_n20_α
 xchain00936_n19_β:
 jmp xchain00936_n18_α
# IR_LIT_INTEGER
 xchain00936_n20_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx00944_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00936_n21_α
.Lx00944_0:
 .quad 5
 xchain00936_n21_α:
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
  .Lrkfn2768: .string "delete"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2768]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00936_n18_α
 jmp xchain00936_n18_α
 xchain00936_n21_β:
 jmp xchain00936_n18_α
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
proc_setinsdel_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00945_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00945_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setinsdel_α_body
.Lx00945_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00945_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 672
  call rt_jmp_frame_lexprep2@PLT
proc_setpick_α_body:
# IR_DISJUNCTION_NARY
 xchain00946_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00946_n2_α
xchain00946_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00947_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain00946_n1_α
.Lx00947_0:
 jmp xchain00946_n1_α
 xchain00946_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00946_n1_α
xchain00946_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00946_n1_α
# IR_DISJUNCTION_NARY
 xchain00946_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00946_n5_α
xchain00946_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00948_0
 jmp xchain00946_n4_α
.Lx00948_0:
 jmp xchain00946_n4_α
 xchain00946_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00946_n4_α
xchain00946_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00946_n4_α
# IR_VAR_REF
 xchain00946_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053008
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00946_n6_α
 xchain00946_n2_β:
 jmp xchain00946_n0_af
 xchain00946_n3_α:
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
  .Lrkfn2778: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2778]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00946_n1_α
 jmp xchain00946_n0_as
 xchain00946_n3_β:
 jmp xchain00946_n1_α
# IR_LIT_INTEGER
 xchain00946_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00949_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00946_n7_α
.Lx00949_0:
 .quad 1
# IR_VAR
 xchain00946_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00946_n8_α
 xchain00946_n5_β:
 jmp xchain00946_n1_af
# IR_NULLTEST_VAR
 xchain00946_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain00946_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00946_n0_af
 cmp eax, 0
 jne xchain00946_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain00946_n9_α
# IR_VAR
 xchain00946_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00946_n10_α
# IR_UNOP
 xchain00946_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00946_n1_af
 cmp eax, 0
 jne xchain00946_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00946_n11_α
# IR_LIT_INTEGER
 xchain00946_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx00950_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00946_n12_α
.Lx00950_0:
 .quad 1
# IR_TO
 xchain00946_n10_α:
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
.Lx00951_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setpick_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00946_n13_α
 xchain00946_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00951_0
# IR_LIT_STRING
 xchain00946_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00952_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00946_n14_α
.Lx00952_0:
 .quad .Lx00952_0_s
.Lx00952_0_s:
 .string "?S"
# IR_ASSIGN_VAR
 xchain00946_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00946_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00946_n15_α
# IR_BOUND
 xchain00946_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00946_n16_α
# IR_RETURN
 xchain00946_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setpick_γ
 xchain00946_n15_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2795: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2795]
 lea rsi, [rbp + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00946_n1_α
 jmp xchain00946_n17_α
 xchain00946_n15_β:
 jmp xchain00946_n1_α
# IR_VAR_REF
 xchain00946_n16_α:
 mov rax, 4294967305
 mov rdx, 1879052992
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00946_n18_α
# IR_ASSIGN gva
 xchain00946_n17_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00946_n19_α
# IR_RANDOM
 xchain00946_n18_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00946_n21_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00946_n20_α
# IR_LIT_INTEGER
 xchain00946_n19_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx00953_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain00946_n3_α
.Lx00953_0:
 .quad 5
# IR_DEREF variable -> value
 xchain00946_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00946_n21_α
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00946_n21_α
# IR_UNMARK
 xchain00946_n21_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00946_n10_β
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
proc_setpick_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 720
 mov qword ptr [rsp + 712], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 672], r11
 lea rax, [rip + .Lx00954_2]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + .Lx00954_3]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 664], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 656
 mov edx, 672
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setpick_α_body
.Lx00954_2:
 mov rdx, qword ptr [rsp + -720]
 mov rcx, rsp
 add rcx, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00954_3:
 mov rdi, qword ptr [rsp + -720]
 mov rsi, rsp
 add rsi, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_setbang_α_body:
# IR_DISJUNCTION_NARY
 xchain00955_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain00955_n2_α
xchain00955_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx00956_0
 jmp xchain00955_n1_α
.Lx00956_0:
 jmp xchain00955_n1_α
 xchain00955_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain00955_n1_α
xchain00955_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain00955_n1_α
# IR_DISJUNCTION_NARY
 xchain00955_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00955_n4_α
xchain00955_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00957_0
 jmp xchain00955_n3_α
.Lx00957_0:
 jmp xchain00955_n3_α
 xchain00955_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain00955_n3_α
xchain00955_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain00955_n3_α
# IR_VAR_REF
 xchain00955_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053040
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00955_n5_α
 xchain00955_n2_β:
 jmp xchain00955_n0_af
# IR_LIT_INTEGER
 xchain00955_n3_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00958_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00955_n6_α
.Lx00958_0:
 .quad 1
# IR_VAR
 xchain00955_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain00955_n7_α
 xchain00955_n4_β:
 jmp xchain00955_n1_af
# IR_NULLTEST_VAR
 xchain00955_n5_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00955_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00955_n0_af
 cmp eax, 0
 jne xchain00955_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00955_n8_α
# IR_VAR
 xchain00955_n6_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00955_n9_α
# IR_UNOP
 xchain00955_n7_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00955_n1_af
 cmp eax, 0
 jne xchain00955_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain00955_n10_α
# IR_LIT_INTEGER
 xchain00955_n8_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00959_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00955_n11_α
.Lx00959_0:
 .quad 1
# IR_TO
 xchain00955_n9_α:
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
.Lx00960_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_setbang_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00955_n12_α
 xchain00955_n9_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00960_0
# IR_LIT_STRING
 xchain00955_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00961_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00955_n13_α
.Lx00961_0:
 .quad .Lx00961_0_s
.Lx00961_0_s:
 .string "!S"
# IR_ASSIGN_VAR
 xchain00955_n11_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00955_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00955_n14_α
# IR_BOUND
 xchain00955_n12_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00955_n15_α
# IR_RETURN
 xchain00955_n13_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_setbang_γ
 xchain00955_n14_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2828: .string "set"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2828]
 lea rsi, [rbp + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain00955_n1_α
 jmp xchain00955_n16_α
 xchain00955_n14_β:
 jmp xchain00955_n1_α
# IR_VAR
 xchain00955_n15_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain00955_n17_α
# IR_ASSIGN gva
 xchain00955_n16_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain00955_n19_α
# IR_LIST_BANG
 xchain00955_n17_α:
 mov qword ptr [rbp + 192], 0
.Lx00962_0:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 192]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp rax, 99
 je xchain00955_n18_α
 jmp xchain00955_n17_β
 xchain00955_n17_β:
 inc qword ptr [rbp + 192]
 jmp .Lx00962_0
# IR_UNMARK
 xchain00955_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00955_n9_β
# IR_LIT_INTEGER
 xchain00955_n19_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx00963_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain00955_n20_α
.Lx00963_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00955_n20_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00964_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00955_n21_α
.Lx00964_0:
 .quad 5
# IR_TO
 xchain00955_n21_α:
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
.Lx00965_0:
 mov rax, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 584]
 cmp rax, rcx
 jg xchain00955_n1_α
 mov qword ptr [rbp + 512], 6
 mov qword ptr [rbp + 520], rax
 jmp xchain00955_n22_α
 xchain00955_n21_β:
 inc qword ptr [rbp + 528]
 jmp .Lx00965_0
 xchain00955_n22_α:
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
  .Lrkfn2840: .string "insert"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2840]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain00955_n21_β
 jmp xchain00955_n21_β
 xchain00955_n22_β:
 jmp xchain00955_n21_β
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
proc_setbang_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00966_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00966_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_setbang_α_body
.Lx00966_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00966_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 344], rsp
  mov rdi, rsp
  mov esi, 336
  mov edx, 352
  call rt_jmp_frame_lexprep2@PLT
proc_tblcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain00967_n0_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00967_n2_α
xchain00967_n0_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00968_0
 jmp xchain00967_n1_α
.Lx00968_0:
 jmp xchain00967_n1_α
 xchain00967_n0_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00967_n1_α
xchain00967_n0_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00967_n1_α
# IR_LIT_INTEGER
 xchain00967_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00969_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00967_n3_α
.Lx00969_0:
 .quad 1
# IR_VAR
 xchain00967_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 312], rax
 jmp xchain00967_n4_α
 xchain00967_n2_β:
 jmp xchain00967_n0_af
# IR_VAR
 xchain00967_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00967_n5_α
# IR_UNOP
 xchain00967_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00967_n0_af
 cmp eax, 0
 jne xchain00967_n0_af
 mov qword ptr [rbp + 272], 0
 mov qword ptr [rbp + 280], 0
 jmp xchain00967_n6_α
# IR_TO
 xchain00967_n5_α:
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
.Lx00970_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00967_n7_α
 xchain00967_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00970_0
# IR_LIT_STRING
 xchain00967_n6_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00971_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00967_n8_α
.Lx00971_0:
 .quad .Lx00971_0_s
.Lx00971_0_s:
 .string "table()"
# IR_BOUND
 xchain00967_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00967_n9_α
# IR_RETURN
 xchain00967_n8_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblcreate_γ
 xchain00967_n9_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2858: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2858]
 lea rsi, [rbp + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00967_n10_α
 jmp xchain00967_n10_α
 xchain00967_n9_β:
 jmp xchain00967_n10_α
# IR_UNMARK
 xchain00967_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00967_n5_β
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
proc_tblcreate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 400
 mov qword ptr [rsp + 392], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 352], r11
 lea rax, [rip + .Lx00972_2]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + .Lx00972_3]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 344], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 336
 mov edx, 352
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tblcreate_α_body
.Lx00972_2:
 mov rdx, qword ptr [rsp + -400]
 mov rcx, rsp
 add rcx, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00972_3:
 mov rdi, qword ptr [rsp + -400]
 mov rsi, rsp
 add rsi, -384
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 760], rsp
  mov rdi, rsp
  mov esi, 752
  mov edx, 768
  call rt_jmp_frame_lexprep2@PLT
proc_tblasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain00973_n0_α:
 mov qword ptr [rbp + 448], 0
 mov qword ptr [rbp + 456], 0
 mov dword ptr [rbp + 464], 0
 jmp xchain00973_n2_α
xchain00973_n0_as:
 mov eax, dword ptr [rbp + 464]
 cmp eax, 0
 jne .Lx00974_0
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
 jmp xchain00973_n1_α
.Lx00974_0:
 jmp xchain00973_n1_α
 xchain00973_n0_β:
 mov eax, dword ptr [rbp + 464]
 jmp xchain00973_n1_α
xchain00973_n0_af:
 add dword ptr [rbp + 464], 1
 mov eax, dword ptr [rbp + 464]
 jmp xchain00973_n1_α
# IR_DISJUNCTION_NARY
 xchain00973_n1_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain00973_n5_α
xchain00973_n1_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx00975_0
 jmp xchain00973_n4_α
.Lx00975_0:
 jmp xchain00973_n4_α
 xchain00973_n1_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain00973_n4_α
xchain00973_n1_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain00973_n4_α
# IR_VAR_REF
 xchain00973_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053072
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00973_n6_α
 xchain00973_n2_β:
 jmp xchain00973_n0_af
# IR_ASSIGN_VAR
 xchain00973_n3_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00973_n1_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00973_n0_as
 xchain00973_n3_β:
 jmp xchain00973_n1_α
# IR_LIT_INTEGER
 xchain00973_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00976_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00973_n7_α
.Lx00976_0:
 .quad 1
# IR_VAR
 xchain00973_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain00973_n8_α
 xchain00973_n5_β:
 jmp xchain00973_n1_af
# IR_NULLTEST_VAR
 xchain00973_n6_α:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 99
 je xchain00973_n0_af
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00973_n0_af
 cmp eax, 0
 jne xchain00973_n0_af
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 680], rax
 jmp xchain00973_n9_α
# IR_VAR
 xchain00973_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00973_n10_α
# IR_UNOP
 xchain00973_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00973_n1_af
 cmp eax, 0
 jne xchain00973_n1_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain00973_n11_α
# IR_LIT_INTEGER
 xchain00973_n9_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx00977_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00973_n12_α
.Lx00977_0:
 .quad 1
# IR_TO
 xchain00973_n10_α:
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
.Lx00978_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00973_n13_α
 xchain00973_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00978_0
# IR_LIT_STRING
 xchain00973_n11_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx00979_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain00973_n14_α
.Lx00979_0:
 .quad .Lx00979_0_s
.Lx00979_0_s:
 .string "T[5] := 1"
# IR_ASSIGN_VAR
 xchain00973_n12_α:
 mov rdi, qword ptr [rbp + 672]
 mov rsi, qword ptr [rbp + 680]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00973_n0_af
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00973_n15_α
# IR_BOUND
 xchain00973_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00973_n16_α
# IR_RETURN
 xchain00973_n14_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblasgn_γ
 xchain00973_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2886: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2886]
 lea rsi, [rbp + 512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain00973_n1_α
 jmp xchain00973_n17_α
 xchain00973_n15_β:
 jmp xchain00973_n1_α
# IR_VAR_REF
 xchain00973_n16_α:
 mov rax, 4294967305
 mov rdx, 1879053056
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00973_n18_α
# IR_ASSIGN gva
 xchain00973_n17_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain00973_n19_α
# IR_LIT_INTEGER
 xchain00973_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00980_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00973_n20_α
.Lx00980_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00973_n19_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx00981_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain00973_n21_α
.Lx00981_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00973_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00973_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00973_n22_α
# IR_SUBSCRIPT x[i] variable
 xchain00973_n21_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00973_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00973_n24_α
# IR_LIT_INTEGER
 xchain00973_n22_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00982_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00973_n25_α
.Lx00982_0:
 .quad 1
# IR_UNMARK
 xchain00973_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00973_n10_β
# IR_LIT_INTEGER
 xchain00973_n24_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00983_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00973_n3_α
.Lx00983_0:
 .quad 1
# IR_ASSIGN_VAR
 xchain00973_n25_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00973_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00973_n23_α
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
proc_tblasgn_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 816
 mov qword ptr [rsp + 808], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 768], r11
 lea rax, [rip + .Lx00984_2]
 mov qword ptr [rbp + 776], rax
 lea rax, [rip + .Lx00984_3]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 760], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 752
 mov edx, 768
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tblasgn_α_body
.Lx00984_2:
 mov rdx, qword ptr [rsp + -816]
 mov rcx, rsp
 add rcx, -800
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00984_3:
 mov rdi, qword ptr [rsp + -816]
 mov rsi, rsp
 add rsi, -800
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_tblsub_α_body:
# IR_DISJUNCTION_NARY
 xchain00985_n0_α:
 mov qword ptr [rbp + 416], 0
 mov qword ptr [rbp + 424], 0
 mov dword ptr [rbp + 432], 0
 jmp xchain00985_n2_α
xchain00985_n0_as:
 mov eax, dword ptr [rbp + 432]
 cmp eax, 0
 jne .Lx00986_0
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 424], rax
 jmp xchain00985_n1_α
.Lx00986_0:
 jmp xchain00985_n1_α
 xchain00985_n0_β:
 mov eax, dword ptr [rbp + 432]
 jmp xchain00985_n1_α
xchain00985_n0_af:
 add dword ptr [rbp + 432], 1
 mov eax, dword ptr [rbp + 432]
 jmp xchain00985_n1_α
# IR_DISJUNCTION_NARY
 xchain00985_n1_α:
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 mov dword ptr [rbp + 304], 0
 jmp xchain00985_n5_α
xchain00985_n1_as:
 mov eax, dword ptr [rbp + 304]
 cmp eax, 0
 jne .Lx00987_0
 jmp xchain00985_n4_α
.Lx00987_0:
 jmp xchain00985_n4_α
 xchain00985_n1_β:
 mov eax, dword ptr [rbp + 304]
 jmp xchain00985_n4_α
xchain00985_n1_af:
 add dword ptr [rbp + 304], 1
 mov eax, dword ptr [rbp + 304]
 jmp xchain00985_n4_α
# IR_VAR_REF
 xchain00985_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053104
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00985_n6_α
 xchain00985_n2_β:
 jmp xchain00985_n0_af
# IR_ASSIGN_VAR
 xchain00985_n3_α:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00985_n1_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00985_n0_as
 xchain00985_n3_β:
 jmp xchain00985_n1_α
# IR_LIT_INTEGER
 xchain00985_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00988_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00985_n7_α
.Lx00988_0:
 .quad 1
# IR_VAR
 xchain00985_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 392], rax
 jmp xchain00985_n8_α
 xchain00985_n5_β:
 jmp xchain00985_n1_af
# IR_NULLTEST_VAR
 xchain00985_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain00985_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00985_n0_af
 cmp eax, 0
 jne xchain00985_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain00985_n9_α
# IR_VAR
 xchain00985_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00985_n10_α
# IR_UNOP
 xchain00985_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00985_n1_af
 cmp eax, 0
 jne xchain00985_n1_af
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 jmp xchain00985_n11_α
# IR_LIT_INTEGER
 xchain00985_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx00989_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain00985_n12_α
.Lx00989_0:
 .quad 1
# IR_TO
 xchain00985_n10_α:
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
.Lx00990_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_tblsub_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00985_n13_α
 xchain00985_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00990_0
# IR_LIT_STRING
 xchain00985_n11_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00991_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00985_n14_α
.Lx00991_0:
 .quad .Lx00991_0_s
.Lx00991_0_s:
 .string "T[5]"
# IR_ASSIGN_VAR
 xchain00985_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00985_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00985_n15_α
# IR_BOUND
 xchain00985_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00985_n16_α
# IR_RETURN
 xchain00985_n14_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_tblsub_γ
 xchain00985_n15_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2924: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2924]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00985_n1_α
 jmp xchain00985_n17_α
 xchain00985_n15_β:
 jmp xchain00985_n1_α
# IR_VAR_REF
 xchain00985_n16_α:
 mov rax, 4294967305
 mov rdx, 1879053088
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain00985_n18_α
# IR_ASSIGN gva
 xchain00985_n17_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00985_n19_α
# IR_LIT_INTEGER
 xchain00985_n18_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx00992_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain00985_n20_α
.Lx00992_0:
 .quad 5
# IR_LIT_INTEGER
 xchain00985_n19_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx00993_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00985_n21_α
.Lx00993_0:
 .quad 5
# IR_SUBSCRIPT x[i] variable
 xchain00985_n20_α:
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00985_n23_α
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain00985_n22_α
# IR_SUBSCRIPT x[i] variable
 xchain00985_n21_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00985_n1_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00985_n24_α
# IR_DEREF variable -> value
 xchain00985_n22_α:
 mov rdi, qword ptr [rbp + 240]
 mov rsi, qword ptr [rbp + 248]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00985_n23_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain00985_n23_α
# IR_UNMARK
 xchain00985_n23_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00985_n10_β
# IR_LIT_INTEGER
 xchain00985_n24_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00994_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00985_n3_α
.Lx00994_0:
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
proc_tblsub_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx00995_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx00995_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_tblsub_α_body
.Lx00995_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx00995_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_recconstr_α_body:
# IR_DISJUNCTION_NARY
 xchain00996_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain00996_n2_α
xchain00996_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx00997_0
 jmp xchain00996_n1_α
.Lx00997_0:
 jmp xchain00996_n1_α
 xchain00996_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain00996_n1_α
xchain00996_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain00996_n1_α
# IR_LIT_INTEGER
 xchain00996_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx00998_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00996_n3_α
.Lx00998_0:
 .quad 1
# IR_VAR
 xchain00996_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain00996_n4_α
 xchain00996_n2_β:
 jmp xchain00996_n0_af
# IR_VAR
 xchain00996_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain00996_n5_α
# IR_UNOP
 xchain00996_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain00996_n0_af
 cmp eax, 0
 jne xchain00996_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain00996_n6_α
# IR_TO
 xchain00996_n5_α:
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
.Lx00999_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recconstr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain00996_n7_α
 xchain00996_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx00999_0
# IR_LIT_STRING
 xchain00996_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx01000_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain00996_n8_α
.Lx01000_0:
 .quad .Lx01000_0_s
.Lx01000_0_s:
 .string "record(4,7)"
# IR_BOUND
 xchain00996_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain00996_n9_α
# IR_RETURN
 xchain00996_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recconstr_γ
# IR_LIT_INTEGER
 xchain00996_n9_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx01001_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00996_n10_α
.Lx01001_0:
 .quad 4
# IR_LIT_INTEGER
 xchain00996_n10_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx01002_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00996_n11_α
.Lx01002_0:
 .quad 7
 xchain00996_n11_α:
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
  .Lrkfn2955: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2955]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00996_n12_α
 jmp xchain00996_n12_α
 xchain00996_n11_β:
 jmp xchain00996_n12_α
# IR_UNMARK
 xchain00996_n12_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain00996_n5_β
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
proc_recconstr_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx01003_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx01003_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_recconstr_α_body
.Lx01003_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01003_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 672
  mov edx, 688
  call rt_jmp_frame_lexprep2@PLT
proc_reccopy_α_body:
# IR_DISJUNCTION_NARY
 xchain01004_n0_α:
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 mov dword ptr [rbp + 400], 0
 jmp xchain01004_n2_α
xchain01004_n0_as:
 mov eax, dword ptr [rbp + 400]
 cmp eax, 0
 jne .Lx01005_0
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 392], rax
 jmp xchain01004_n1_α
.Lx01005_0:
 jmp xchain01004_n1_α
 xchain01004_n0_β:
 mov eax, dword ptr [rbp + 400]
 jmp xchain01004_n1_α
xchain01004_n0_af:
 add dword ptr [rbp + 400], 1
 mov eax, dword ptr [rbp + 400]
 jmp xchain01004_n1_α
# IR_DISJUNCTION_NARY
 xchain01004_n1_α:
 mov qword ptr [rbp + 256], 0
 mov qword ptr [rbp + 264], 0
 mov dword ptr [rbp + 272], 0
 jmp xchain01004_n5_α
xchain01004_n1_as:
 mov eax, dword ptr [rbp + 272]
 cmp eax, 0
 jne .Lx01006_0
 jmp xchain01004_n4_α
.Lx01006_0:
 jmp xchain01004_n4_α
 xchain01004_n1_β:
 mov eax, dword ptr [rbp + 272]
 jmp xchain01004_n4_α
xchain01004_n1_af:
 add dword ptr [rbp + 272], 1
 mov eax, dword ptr [rbp + 272]
 jmp xchain01004_n4_α
# IR_VAR_REF
 xchain01004_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053136
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain01004_n6_α
 xchain01004_n2_β:
 jmp xchain01004_n0_af
# IR_ASSIGN gva
 xchain01004_n3_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain01004_n0_as
 xchain01004_n3_β:
 jmp xchain01004_n1_α
# IR_LIT_INTEGER
 xchain01004_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01007_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01004_n7_α
.Lx01007_0:
 .quad 1
# IR_VAR
 xchain01004_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 360], rax
 jmp xchain01004_n8_α
 xchain01004_n5_β:
 jmp xchain01004_n1_af
# IR_NULLTEST_VAR
 xchain01004_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain01004_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01004_n0_af
 cmp eax, 0
 jne xchain01004_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain01004_n9_α
# IR_VAR
 xchain01004_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01004_n10_α
# IR_UNOP
 xchain01004_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01004_n1_af
 cmp eax, 0
 jne xchain01004_n1_af
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 jmp xchain01004_n11_α
# IR_LIT_INTEGER
 xchain01004_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx01008_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain01004_n12_α
.Lx01008_0:
 .quad 1
# IR_TO
 xchain01004_n10_α:
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
.Lx01009_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_reccopy_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01004_n13_α
 xchain01004_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01009_0
# IR_LIT_STRING
 xchain01004_n11_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx01010_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain01004_n14_α
.Lx01010_0:
 .quad .Lx01010_0_s
.Lx01010_0_s:
 .string "copy(R)"
# IR_ASSIGN_VAR
 xchain01004_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01004_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain01004_n15_α
# IR_BOUND
 xchain01004_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01004_n16_α
# IR_RETURN
 xchain01004_n14_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_reccopy_γ
# IR_LIT_INTEGER
 xchain01004_n15_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx01011_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain01004_n17_α
.Lx01011_0:
 .quad 4
# IR_VAR
 xchain01004_n16_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain01004_n18_α
# IR_LIT_INTEGER
 xchain01004_n17_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx01012_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain01004_n20_α
.Lx01012_0:
 .quad 7
 xchain01004_n18_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn2986: .string "copy"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2986]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain01004_n19_α
 jmp xchain01004_n19_α
 xchain01004_n18_β:
 jmp xchain01004_n19_α
# IR_UNMARK
 xchain01004_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01004_n10_β
 xchain01004_n20_α:
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
  .Lrkfn2990: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2990]
 lea rsi, [rbp + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain01004_n1_α
 jmp xchain01004_n3_α
 xchain01004_n20_β:
 jmp xchain01004_n1_α
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
proc_reccopy_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 736
 mov qword ptr [rsp + 728], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 688], r11
 lea rax, [rip + .Lx01013_2]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + .Lx01013_3]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 680], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 672
 mov edx, 688
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_reccopy_α_body
.Lx01013_2:
 mov rdx, qword ptr [rsp + -736]
 mov rcx, rsp
 add rcx, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01013_3:
 mov rdi, qword ptr [rsp + -736]
 mov rsi, rsp
 add rsi, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 664], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 672
  call rt_jmp_frame_lexprep2@PLT
proc_recfield_α_body:
# IR_DISJUNCTION_NARY
 xchain01014_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain01014_n2_α
xchain01014_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx01015_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain01014_n1_α
.Lx01015_0:
 jmp xchain01014_n1_α
 xchain01014_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain01014_n1_α
xchain01014_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain01014_n1_α
# IR_DISJUNCTION_NARY
 xchain01014_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain01014_n5_α
xchain01014_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx01016_0
 jmp xchain01014_n4_α
.Lx01016_0:
 jmp xchain01014_n4_α
 xchain01014_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain01014_n4_α
xchain01014_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain01014_n4_α
# IR_VAR_REF
 xchain01014_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053168
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain01014_n6_α
 xchain01014_n2_β:
 jmp xchain01014_n0_af
# IR_ASSIGN gva
 xchain01014_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain01014_n0_as
 xchain01014_n3_β:
 jmp xchain01014_n1_α
# IR_LIT_INTEGER
 xchain01014_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01017_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01014_n7_α
.Lx01017_0:
 .quad 1
# IR_VAR
 xchain01014_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain01014_n8_α
 xchain01014_n5_β:
 jmp xchain01014_n1_af
# IR_NULLTEST_VAR
 xchain01014_n6_α:
 mov eax, dword ptr [rbp + 544]
 cmp eax, 99
 je xchain01014_n0_af
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01014_n0_af
 cmp eax, 0
 jne xchain01014_n0_af
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 584], rax
 jmp xchain01014_n9_α
# IR_VAR
 xchain01014_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01014_n10_α
# IR_UNOP
 xchain01014_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01014_n1_af
 cmp eax, 0
 jne xchain01014_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain01014_n11_α
# IR_LIT_INTEGER
 xchain01014_n9_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx01018_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain01014_n12_α
.Lx01018_0:
 .quad 1
# IR_TO
 xchain01014_n10_α:
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
.Lx01019_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_recfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01014_n13_α
 xchain01014_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01019_0
# IR_LIT_STRING
 xchain01014_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx01020_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain01014_n14_α
.Lx01020_0:
 .quad .Lx01020_0_s
.Lx01020_0_s:
 .string "R.f"
# IR_ASSIGN_VAR
 xchain01014_n12_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01014_n0_af
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain01014_n15_α
# IR_BOUND
 xchain01014_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01014_n16_α
# IR_RETURN
 xchain01014_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_recfield_γ
# IR_LIT_INTEGER
 xchain01014_n15_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx01021_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain01014_n17_α
.Lx01021_0:
 .quad 4
# IR_VAR
 xchain01014_n16_α:
 mov rax, qword ptr [1879053152]
 mov rdx, qword ptr [1879053160]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain01014_n18_α
# IR_LIT_INTEGER
 xchain01014_n17_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx01022_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain01014_n20_α
.Lx01022_0:
 .quad 7
# IR_FIELD_GET
 xchain01014_n18_α:
 mov rdi, qword ptr [rip + .Lx01023_0]
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01014_n19_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain01014_n19_α
.Lx01023_0:
 .quad .Lx01023_0_s
.Lx01023_0_s:
 .string "y"
# IR_UNMARK
 xchain01014_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01014_n10_β
 xchain01014_n20_α:
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
  .Lrkfn3022: .string "point"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3022]
 lea rsi, [rbp + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain01014_n1_α
 jmp xchain01014_n3_α
 xchain01014_n20_β:
 jmp xchain01014_n1_α
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
proc_recfield_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 720
 mov qword ptr [rsp + 712], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 672], r11
 lea rax, [rip + .Lx01024_2]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + .Lx01024_3]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 664], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 656
 mov edx, 672
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_recfield_α_body
.Lx01024_2:
 mov rdx, qword ptr [rsp + -720]
 mov rcx, rsp
 add rcx, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01024_3:
 mov rdi, qword ptr [rsp + -720]
 mov rsi, rsp
 add rsi, -704
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 568], rsp
  mov rdi, rsp
  mov esi, 560
  mov edx, 576
  call rt_jmp_frame_lexprep2@PLT
proc_bigfield_α_body:
# IR_DISJUNCTION_NARY
 xchain01025_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain01025_n2_α
xchain01025_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx01026_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain01025_n1_α
.Lx01026_0:
 jmp xchain01025_n1_α
 xchain01025_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain01025_n1_α
xchain01025_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain01025_n1_α
# IR_DISJUNCTION_NARY
 xchain01025_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain01025_n5_α
xchain01025_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx01027_0
 jmp xchain01025_n4_α
.Lx01027_0:
 jmp xchain01025_n4_α
 xchain01025_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain01025_n4_α
xchain01025_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain01025_n4_α
# IR_VAR_REF
 xchain01025_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053200
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain01025_n6_α
 xchain01025_n2_β:
 jmp xchain01025_n0_af
# IR_ASSIGN gva
 xchain01025_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain01025_n0_as
 xchain01025_n3_β:
 jmp xchain01025_n1_α
# IR_LIT_INTEGER
 xchain01025_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01028_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01025_n7_α
.Lx01028_0:
 .quad 1
# IR_VAR
 xchain01025_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain01025_n8_α
 xchain01025_n5_β:
 jmp xchain01025_n1_af
# IR_NULLTEST_VAR
 xchain01025_n6_α:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 99
 je xchain01025_n0_af
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01025_n0_af
 cmp eax, 0
 jne xchain01025_n0_af
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 488], rax
 jmp xchain01025_n9_α
# IR_VAR
 xchain01025_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01025_n10_α
# IR_UNOP
 xchain01025_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01025_n1_af
 cmp eax, 0
 jne xchain01025_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain01025_n11_α
# IR_LIT_INTEGER
 xchain01025_n9_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx01029_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain01025_n12_α
.Lx01029_0:
 .quad 1
# IR_TO
 xchain01025_n10_α:
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
.Lx01030_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_bigfield_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01025_n13_α
 xchain01025_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01030_0
# IR_LIT_STRING
 xchain01025_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx01031_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain01025_n14_α
.Lx01031_0:
 .quad .Lx01031_0_s
.Lx01031_0_s:
 .string "R2.f"
# IR_ASSIGN_VAR
 xchain01025_n12_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01025_n0_af
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain01025_n15_α
# IR_BOUND
 xchain01025_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01025_n16_α
# IR_RETURN
 xchain01025_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_bigfield_γ
 xchain01025_n15_α:
# BOX IR_CALL bigrec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn3048: .string "bigrec"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3048]
 lea rsi, [rbp + 432]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain01025_n1_α
 jmp xchain01025_n3_α
 xchain01025_n15_β:
 jmp xchain01025_n1_α
# IR_VAR
 xchain01025_n16_α:
 mov rax, qword ptr [1879053184]
 mov rdx, qword ptr [1879053192]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain01025_n17_α
# IR_FIELD_GET
 xchain01025_n17_α:
 mov rdi, qword ptr [rip + .Lx01032_0]
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain01025_n18_α
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain01025_n18_α
.Lx01032_0:
 .quad .Lx01032_0_s
.Lx01032_0_s:
 .string "horatio"
# IR_UNMARK
 xchain01025_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01025_n10_β
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
proc_bigfield_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 624
 mov qword ptr [rsp + 616], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 576], r11
 lea rax, [rip + .Lx01033_2]
 mov qword ptr [rbp + 584], rax
 lea rax, [rip + .Lx01033_3]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 568], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 560
 mov edx, 576
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_bigfield_α_body
.Lx01033_2:
 mov rdx, qword ptr [rsp + -624]
 mov rcx, rsp
 add rcx, -608
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01033_3:
 mov rdi, qword ptr [rsp + -624]
 mov rsi, rsp
 add rsi, -608
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 352
  mov edx, 368
  call rt_jmp_frame_lexprep2@PLT
proc_globasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain01034_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain01034_n2_α
xchain01034_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx01035_0
 jmp xchain01034_n1_α
.Lx01035_0:
 jmp xchain01034_n1_α
 xchain01034_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain01034_n1_α
xchain01034_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain01034_n1_α
# IR_LIT_INTEGER
 xchain01034_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01036_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01034_n3_α
.Lx01036_0:
 .quad 1
# IR_VAR
 xchain01034_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain01034_n4_α
 xchain01034_n2_β:
 jmp xchain01034_n0_af
# IR_VAR
 xchain01034_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01034_n5_α
# IR_UNOP
 xchain01034_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01034_n0_af
 cmp eax, 0
 jne xchain01034_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain01034_n6_α
# IR_TO
 xchain01034_n5_α:
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
.Lx01037_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_globasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01034_n7_α
 xchain01034_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01037_0
# IR_LIT_STRING
 xchain01034_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx01038_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain01034_n8_α
.Lx01038_0:
 .quad .Lx01038_0_s
.Lx01038_0_s:
 .string "global := 1"
# IR_BOUND
 xchain01034_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01034_n9_α
# IR_RETURN
 xchain01034_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_globasgn_γ
# IR_LIT_INTEGER
 xchain01034_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx01039_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain01034_n10_α
.Lx01039_0:
 .quad 1
# IR_ASSIGN gva
 xchain01034_n10_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain01034_n11_α
# IR_UNMARK
 xchain01034_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01034_n5_β
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
proc_globasgn_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 416
 mov qword ptr [rsp + 408], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 368], r11
 lea rax, [rip + .Lx01040_2]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + .Lx01040_3]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 360], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 352
 mov edx, 368
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_globasgn_α_body
.Lx01040_2:
 mov rdx, qword ptr [rsp + -416]
 mov rcx, rsp
 add rcx, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01040_3:
 mov rdi, qword ptr [rsp + -416]
 mov rsi, rsp
 add rsi, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 352
  mov edx, 384
  call rt_jmp_frame_lexprep2@PLT
proc_loclasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain01041_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain01041_n2_α
xchain01041_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx01042_0
 jmp xchain01041_n1_α
.Lx01042_0:
 jmp xchain01041_n1_α
 xchain01041_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain01041_n1_α
xchain01041_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain01041_n1_α
# IR_LIT_INTEGER
 xchain01041_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01043_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01041_n3_α
.Lx01043_0:
 .quad 1
# IR_VAR
 xchain01041_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain01041_n4_α
 xchain01041_n2_β:
 jmp xchain01041_n0_af
# IR_VAR
 xchain01041_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01041_n5_α
# IR_UNOP
 xchain01041_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01041_n0_af
 cmp eax, 0
 jne xchain01041_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain01041_n6_α
# IR_TO
 xchain01041_n5_α:
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
.Lx01044_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_loclasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01041_n7_α
 xchain01041_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01044_0
# IR_LIT_STRING
 xchain01041_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx01045_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain01041_n8_α
.Lx01045_0:
 .quad .Lx01045_0_s
.Lx01045_0_s:
 .string "local := 1"
# IR_BOUND
 xchain01041_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01041_n9_α
# IR_RETURN
 xchain01041_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_loclasgn_γ
# IR_LIT_INTEGER
 xchain01041_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx01046_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain01041_n10_α
.Lx01046_0:
 .quad 1
 xchain01041_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain01041_n11_α
# IR_UNMARK
 xchain01041_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01041_n5_β
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
proc_loclasgn_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 432
 mov qword ptr [rsp + 424], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 384], r11
 lea rax, [rip + .Lx01047_2]
 mov qword ptr [rbp + 392], rax
 lea rax, [rip + .Lx01047_3]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 360], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 352
 mov edx, 384
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_loclasgn_α_body
.Lx01047_2:
 mov rdx, qword ptr [rsp + -432]
 mov rcx, rsp
 add rcx, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01047_3:
 mov rdi, qword ptr [rsp + -432]
 mov rsi, rsp
 add rsi, -416
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 360], rsp
  mov rdi, rsp
  mov esi, 352
  mov edx, 368
  call rt_jmp_frame_lexprep2@PLT
proc_statasgn_α_body:
# IR_DISJUNCTION_NARY
 xchain01048_n0_α:
 mov qword ptr [rbp + 224], 0
 mov qword ptr [rbp + 232], 0
 mov dword ptr [rbp + 240], 0
 jmp xchain01048_n2_α
xchain01048_n0_as:
 mov eax, dword ptr [rbp + 240]
 cmp eax, 0
 jne .Lx01049_0
 jmp xchain01048_n1_α
.Lx01049_0:
 jmp xchain01048_n1_α
 xchain01048_n0_β:
 mov eax, dword ptr [rbp + 240]
 jmp xchain01048_n1_α
xchain01048_n0_af:
 add dword ptr [rbp + 240], 1
 mov eax, dword ptr [rbp + 240]
 jmp xchain01048_n1_α
# IR_LIT_INTEGER
 xchain01048_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01050_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01048_n3_α
.Lx01050_0:
 .quad 1
# IR_VAR
 xchain01048_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 328], rax
 jmp xchain01048_n4_α
 xchain01048_n2_β:
 jmp xchain01048_n0_af
# IR_VAR
 xchain01048_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01048_n5_α
# IR_UNOP
 xchain01048_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01048_n0_af
 cmp eax, 0
 jne xchain01048_n0_af
 mov qword ptr [rbp + 288], 0
 mov qword ptr [rbp + 296], 0
 jmp xchain01048_n6_α
# IR_TO
 xchain01048_n5_α:
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
.Lx01051_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_statasgn_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01048_n7_α
 xchain01048_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01051_0
# IR_LIT_STRING
 xchain01048_n6_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx01052_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain01048_n8_α
.Lx01052_0:
 .quad .Lx01052_0_s
.Lx01052_0_s:
 .string "static := 1"
# IR_BOUND
 xchain01048_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01048_n9_α
# IR_RETURN
 xchain01048_n8_α:
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_statasgn_γ
# IR_LIT_INTEGER
 xchain01048_n9_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx01053_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain01048_n10_α
.Lx01053_0:
 .quad 1
# IR_ASSIGN gva
 xchain01048_n10_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain01048_n11_α
# IR_UNMARK
 xchain01048_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01048_n5_β
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
proc_statasgn_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 416
 mov qword ptr [rsp + 408], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 368], r11
 lea rax, [rip + .Lx01054_2]
 mov qword ptr [rbp + 376], rax
 lea rax, [rip + .Lx01054_3]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 360], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 352
 mov edx, 368
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_statasgn_α_body
.Lx01054_2:
 mov rdx, qword ptr [rsp + -416]
 mov rcx, rsp
 add rcx, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01054_3:
 mov rdi, qword ptr [rsp + -416]
 mov rsi, rsp
 add rsi, -400
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 720
  mov edx, 736
  call rt_jmp_frame_lexprep2@PLT
proc_readz_α_body:
# IR_DISJUNCTION_NARY
 xchain01055_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain01055_n2_α
xchain01055_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx01056_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain01055_n1_α
.Lx01056_0:
 jmp xchain01055_n1_α
 xchain01055_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain01055_n1_α
xchain01055_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain01055_n1_α
# IR_DISJUNCTION_NARY
 xchain01055_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain01055_n5_α
xchain01055_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx01057_0
 jmp xchain01055_n4_α
.Lx01057_0:
 jmp xchain01055_n4_α
 xchain01055_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain01055_n4_α
xchain01055_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain01055_n4_α
# IR_VAR_REF
 xchain01055_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053248
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain01055_n6_α
 xchain01055_n2_β:
 jmp xchain01055_n0_af
# IR_ASSIGN gva
 xchain01055_n3_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain01055_n0_as
 xchain01055_n3_β:
 jmp xchain01055_n1_α
# IR_LIT_INTEGER
 xchain01055_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01058_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01055_n7_α
.Lx01058_0:
 .quad 1
# IR_VAR
 xchain01055_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain01055_n8_α
 xchain01055_n5_β:
 jmp xchain01055_n1_af
# IR_NULLTEST_VAR
 xchain01055_n6_α:
 mov eax, dword ptr [rbp + 608]
 cmp eax, 99
 je xchain01055_n0_af
 mov rdi, qword ptr [rbp + 608]
 mov rsi, qword ptr [rbp + 616]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01055_n0_af
 cmp eax, 0
 jne xchain01055_n0_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 648], rax
 jmp xchain01055_n9_α
# IR_VAR
 xchain01055_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01055_n10_α
# IR_UNOP
 xchain01055_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01055_n1_af
 cmp eax, 0
 jne xchain01055_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain01055_n11_α
# IR_LIT_INTEGER
 xchain01055_n9_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx01059_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain01055_n12_α
.Lx01059_0:
 .quad 1
# IR_TO
 xchain01055_n10_α:
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
.Lx01060_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_readz_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01055_n13_α
 xchain01055_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01060_0
# IR_LIT_STRING
 xchain01055_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx01061_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain01055_n14_α
.Lx01061_0:
 .quad .Lx01061_0_s
.Lx01061_0_s:
 .string "reads(zero,8)"
# IR_ASSIGN_VAR
 xchain01055_n12_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01055_n0_af
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain01055_n15_α
# IR_BOUND
 xchain01055_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01055_n16_α
# IR_RETURN
 xchain01055_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_readz_γ
# IR_LIT_STRING
 xchain01055_n15_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx01062_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain01055_n17_α
.Lx01062_0:
 .quad .Lx01062_0_s
.Lx01062_0_s:
 .string "/dev/zero"
# IR_VAR
 xchain01055_n16_α:
 mov rax, qword ptr [1879053232]
 mov rdx, qword ptr [1879053240]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain01055_n18_α
# IR_LIT_STRING
 xchain01055_n17_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx01063_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain01055_n20_α
.Lx01063_0:
 .quad .Lx01063_0_s
.Lx01063_0_s:
 .string "ru"
# IR_LIT_INTEGER
 xchain01055_n18_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx01064_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain01055_n21_α
.Lx01064_0:
 .quad 8
# IR_UNMARK
 xchain01055_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01055_n10_β
 xchain01055_n20_α:
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
  .Lrkfn3144: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3144]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain01055_n1_α
 jmp xchain01055_n3_α
 xchain01055_n20_β:
 jmp xchain01055_n1_α
 xchain01055_n21_α:
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
  .Lrkfn3146: .string "reads"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3146]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain01055_n19_α
 jmp xchain01055_n19_α
 xchain01055_n21_β:
 jmp xchain01055_n19_α
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
proc_readz_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 784
 mov qword ptr [rsp + 776], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 736], r11
 lea rax, [rip + .Lx01065_2]
 mov qword ptr [rbp + 744], rax
 lea rax, [rip + .Lx01065_3]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 728], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 720
 mov edx, 736
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_readz_α_body
.Lx01065_2:
 mov rdx, qword ptr [rsp + -784]
 mov rcx, rsp
 add rcx, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01065_3:
 mov rdi, qword ptr [rsp + -784]
 mov rsi, rsp
 add rsi, -768
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 432
  mov edx, 448
  call rt_jmp_frame_lexprep2@PLT
proc_writecon_α_body:
# IR_DISJUNCTION_NARY
 xchain01066_n0_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain01066_n2_α
xchain01066_n0_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx01067_0
 jmp xchain01066_n1_α
.Lx01067_0:
 jmp xchain01066_n1_α
 xchain01066_n0_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain01066_n1_α
xchain01066_n0_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain01066_n1_α
# IR_LIT_INTEGER
 xchain01066_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01068_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01066_n3_α
.Lx01068_0:
 .quad 1
# IR_VAR
 xchain01066_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain01066_n4_α
 xchain01066_n2_β:
 jmp xchain01066_n0_af
# IR_VAR
 xchain01066_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01066_n5_α
# IR_UNOP
 xchain01066_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01066_n0_af
 cmp eax, 0
 jne xchain01066_n0_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain01066_n6_α
# IR_TO
 xchain01066_n5_α:
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
.Lx01069_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writecon_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01066_n7_α
 xchain01066_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01069_0
# IR_LIT_STRING
 xchain01066_n6_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx01070_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain01066_n8_α
.Lx01070_0:
 .quad .Lx01070_0_s
.Lx01070_0_s:
 .string "write(\"a...z\")"
# IR_BOUND
 xchain01066_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01066_n9_α
# IR_RETURN
 xchain01066_n8_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writecon_γ
# IR_VAR
 xchain01066_n9_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain01066_n10_α
# IR_LIT_STRING
 xchain01066_n10_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx01071_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain01066_n12_α
.Lx01071_0:
 .quad .Lx01071_0_s
.Lx01071_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_UNMARK
 xchain01066_n11_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01066_n5_β
 xchain01066_n12_α:
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
  .Lrkfn3168: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3168]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain01066_n11_α
 jmp xchain01066_n11_α
 xchain01066_n12_β:
 jmp xchain01066_n11_α
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
proc_writecon_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 496
 mov qword ptr [rsp + 488], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 448], r11
 lea rax, [rip + .Lx01072_2]
 mov qword ptr [rbp + 456], rax
 lea rax, [rip + .Lx01072_3]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 440], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 432
 mov edx, 448
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_writecon_α_body
.Lx01072_2:
 mov rdx, qword ptr [rsp + -496]
 mov rcx, rsp
 add rcx, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01072_3:
 mov rdi, qword ptr [rsp + -496]
 mov rsi, rsp
 add rsi, -480
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 624
  mov edx, 640
  call rt_jmp_frame_lexprep2@PLT
proc_writestr_α_body:
# IR_DISJUNCTION_NARY
 xchain01073_n0_α:
 mov qword ptr [rbp + 432], 0
 mov qword ptr [rbp + 440], 0
 mov dword ptr [rbp + 448], 0
 jmp xchain01073_n2_α
xchain01073_n0_as:
 mov eax, dword ptr [rbp + 448]
 cmp eax, 0
 jne .Lx01074_0
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
 jmp xchain01073_n1_α
.Lx01074_0:
 jmp xchain01073_n1_α
 xchain01073_n0_β:
 mov eax, dword ptr [rbp + 448]
 jmp xchain01073_n1_α
xchain01073_n0_af:
 add dword ptr [rbp + 448], 1
 mov eax, dword ptr [rbp + 448]
 jmp xchain01073_n1_α
# IR_DISJUNCTION_NARY
 xchain01073_n1_α:
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 mov dword ptr [rbp + 320], 0
 jmp xchain01073_n5_α
xchain01073_n1_as:
 mov eax, dword ptr [rbp + 320]
 cmp eax, 0
 jne .Lx01075_0
 jmp xchain01073_n4_α
.Lx01075_0:
 jmp xchain01073_n4_α
 xchain01073_n1_β:
 mov eax, dword ptr [rbp + 320]
 jmp xchain01073_n4_α
xchain01073_n1_af:
 add dword ptr [rbp + 320], 1
 mov eax, dword ptr [rbp + 320]
 jmp xchain01073_n4_α
# IR_VAR_REF
 xchain01073_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053280
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain01073_n6_α
 xchain01073_n2_β:
 jmp xchain01073_n0_af
# IR_ASSIGN gva
 xchain01073_n3_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain01073_n0_as
 xchain01073_n3_β:
 jmp xchain01073_n1_α
# IR_LIT_INTEGER
 xchain01073_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01076_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01073_n7_α
.Lx01076_0:
 .quad 1
# IR_VAR
 xchain01073_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 408], rax
 jmp xchain01073_n8_α
 xchain01073_n5_β:
 jmp xchain01073_n1_af
# IR_NULLTEST_VAR
 xchain01073_n6_α:
 mov eax, dword ptr [rbp + 512]
 cmp eax, 99
 je xchain01073_n0_af
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01073_n0_af
 cmp eax, 0
 jne xchain01073_n0_af
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 552], rax
 jmp xchain01073_n9_α
# IR_VAR
 xchain01073_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01073_n10_α
# IR_UNOP
 xchain01073_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01073_n1_af
 cmp eax, 0
 jne xchain01073_n1_af
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 jmp xchain01073_n11_α
# IR_LIT_INTEGER
 xchain01073_n9_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx01077_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain01073_n12_α
.Lx01077_0:
 .quad 1
# IR_TO
 xchain01073_n10_α:
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
.Lx01078_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_writestr_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01073_n13_α
 xchain01073_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01078_0
# IR_LIT_STRING
 xchain01073_n11_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx01079_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain01073_n14_α
.Lx01079_0:
 .quad .Lx01079_0_s
.Lx01079_0_s:
 .string "write(s)"
# IR_ASSIGN_VAR
 xchain01073_n12_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01073_n0_af
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain01073_n15_α
# IR_BOUND
 xchain01073_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01073_n16_α
# IR_RETURN
 xchain01073_n14_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_writestr_γ
# IR_LIT_STRING
 xchain01073_n15_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx01080_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain01073_n3_α
.Lx01080_0:
 .quad .Lx01080_0_s
.Lx01080_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_VAR
 xchain01073_n16_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain01073_n17_α
# IR_VAR
 xchain01073_n17_α:
 mov rax, qword ptr [1879053264]
 mov rdx, qword ptr [1879053272]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain01073_n19_α
# IR_UNMARK
 xchain01073_n18_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01073_n10_β
 xchain01073_n19_α:
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
  .Lrkfn3199: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3199]
 lea rsi, [rbp + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain01073_n18_α
 jmp xchain01073_n18_α
 xchain01073_n19_β:
 jmp xchain01073_n18_α
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
proc_writestr_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 688
 mov qword ptr [rsp + 680], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 640], r11
 lea rax, [rip + .Lx01081_2]
 mov qword ptr [rbp + 648], rax
 lea rax, [rip + .Lx01081_3]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 632], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 624
 mov edx, 640
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_writestr_α_body
.Lx01081_2:
 mov rdx, qword ptr [rsp + -688]
 mov rcx, rsp
 add rcx, -672
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01081_3:
 mov rdi, qword ptr [rsp + -688]
 mov rsi, rsp
 add rsi, -672
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 456], rsp
  mov rdi, rsp
  mov esi, 448
  mov edx, 464
  call rt_jmp_frame_lexprep2@PLT
proc_cxcreate_α_body:
# IR_DISJUNCTION_NARY
 xchain01082_n0_α:
 mov qword ptr [rbp + 320], 0
 mov qword ptr [rbp + 328], 0
 mov dword ptr [rbp + 336], 0
 jmp xchain01082_n2_α
xchain01082_n0_as:
 mov eax, dword ptr [rbp + 336]
 cmp eax, 0
 jne .Lx01083_0
 jmp xchain01082_n1_α
.Lx01083_0:
 jmp xchain01082_n1_α
 xchain01082_n0_β:
 mov eax, dword ptr [rbp + 336]
 jmp xchain01082_n1_α
xchain01082_n0_af:
 add dword ptr [rbp + 336], 1
 mov eax, dword ptr [rbp + 336]
 jmp xchain01082_n1_α
# IR_LIT_INTEGER
 xchain01082_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01084_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01082_n3_α
.Lx01084_0:
 .quad 1
# IR_VAR
 xchain01082_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 424], rax
 jmp xchain01082_n4_α
 xchain01082_n2_β:
 jmp xchain01082_n0_af
# IR_VAR
 xchain01082_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01082_n5_α
# IR_UNOP
 xchain01082_n4_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01082_n0_af
 cmp eax, 0
 jne xchain01082_n0_af
 mov qword ptr [rbp + 384], 0
 mov qword ptr [rbp + 392], 0
 jmp xchain01082_n6_α
# IR_TO
 xchain01082_n5_α:
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
.Lx01085_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxcreate_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01082_n7_α
 xchain01082_n5_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01085_0
# IR_LIT_STRING
 xchain01082_n6_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx01086_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain01082_n8_α
.Lx01086_0:
 .quad .Lx01086_0_s
.Lx01086_0_s:
 .string "create |\"a\""
# IR_BOUND
 xchain01082_n7_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01082_n9_α
# IR_RETURN
 xchain01082_n8_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxcreate_γ
# IR_CREATE
 xchain01082_n9_α:
 mov qword ptr [rbp + 192], r12
 mov qword ptr [rbp + 200], r13
 mov qword ptr [rbp + 208], r14
 mov qword ptr [rbp + 216], r15
 mov qword ptr [rbp + 224], rbx
 mov qword ptr [rbp + 232], rbp
 lea rdi, [rip + xchain01082_n11_α]
 lea rsi, [rbp + 192]
 mov edx, 496
 call scrip_coexpr_create@PLT
 mov qword ptr [rbp + 176], rax
 jmp xchain01082_n10_α
# IR_UNMARK
 xchain01082_n10_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01082_n5_β
 xchain01082_n11_α:
# IR_REPALT clear
 mov qword ptr [rbp + 272], 0
jmp xchain01082_n13_α
xchain01082_n11_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
 mov qword ptr [rbp + 272], 1
jmp xchain01082_n12_α
xchain01082_n11_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 272]
 cmp rax, 1
je xchain01082_n11_α
jmp xchain01082_n14_α
xchain01082_n11_β:
jmp xchain01082_n11_rt
# IR_CORET yield
 xchain01082_n12_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01082_n11_β
# IR_LIT_STRING
 xchain01082_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx01087_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain01082_n11_ry
 xchain01082_n13_β:
 jmp xchain01082_n11_rt
.Lx01087_0:
 .quad .Lx01087_0_s
.Lx01087_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain01082_n14_α:
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
proc_cxcreate_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 512
 mov qword ptr [rsp + 504], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 464], r11
 lea rax, [rip + .Lx01088_2]
 mov qword ptr [rbp + 472], rax
 lea rax, [rip + .Lx01088_3]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 456], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 448
 mov edx, 464
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_cxcreate_α_body
.Lx01088_2:
 mov rdx, qword ptr [rsp + -512]
 mov rcx, rsp
 add rcx, -496
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01088_3:
 mov rdi, qword ptr [rsp + -512]
 mov rsi, rsp
 add rsi, -496
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 672
  mov edx, 688
  call rt_jmp_frame_lexprep2@PLT
proc_cxget_α_body:
# IR_DISJUNCTION_NARY
 xchain01089_n0_α:
 mov qword ptr [rbp + 368], 0
 mov qword ptr [rbp + 376], 0
 mov dword ptr [rbp + 384], 0
 jmp xchain01089_n2_α
xchain01089_n0_as:
 mov eax, dword ptr [rbp + 384]
 cmp eax, 0
 jne .Lx01090_0
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 376], rax
 jmp xchain01089_n1_α
.Lx01090_0:
 jmp xchain01089_n1_α
 xchain01089_n0_β:
 mov eax, dword ptr [rbp + 384]
 jmp xchain01089_n1_α
xchain01089_n0_af:
 add dword ptr [rbp + 384], 1
 mov eax, dword ptr [rbp + 384]
 jmp xchain01089_n1_α
# IR_DISJUNCTION_NARY
 xchain01089_n1_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain01089_n5_α
xchain01089_n1_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx01091_0
 jmp xchain01089_n4_α
.Lx01091_0:
 jmp xchain01089_n4_α
 xchain01089_n1_β:
 mov eax, dword ptr [rbp + 256]
 jmp xchain01089_n4_α
xchain01089_n1_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 jmp xchain01089_n4_α
# IR_VAR_REF
 xchain01089_n2_α:
 mov rax, 4294967305
 mov rdx, 1879053312
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain01089_n6_α
 xchain01089_n2_β:
 jmp xchain01089_n0_af
# IR_ASSIGN gva
 xchain01089_n3_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain01089_n0_as
 xchain01089_n3_β:
 jmp xchain01089_n1_α
# IR_LIT_INTEGER
 xchain01089_n4_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx01092_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain01089_n7_α
.Lx01092_0:
 .quad 1
# IR_VAR
 xchain01089_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 344], rax
 jmp xchain01089_n8_α
 xchain01089_n5_β:
 jmp xchain01089_n1_af
# IR_NULLTEST_VAR
 xchain01089_n6_α:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 99
 je xchain01089_n0_af
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01089_n0_af
 cmp eax, 0
 jne xchain01089_n0_af
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 600], rax
 jmp xchain01089_n9_α
# IR_VAR
 xchain01089_n7_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 104], rax
 jmp xchain01089_n10_α
# IR_UNOP
 xchain01089_n8_α:
 mov eax, dword ptr [rbp + 16]
 cmp eax, 99
 je xchain01089_n1_af
 cmp eax, 0
 jne xchain01089_n1_af
 mov qword ptr [rbp + 304], 0
 mov qword ptr [rbp + 312], 0
 jmp xchain01089_n11_α
# IR_LIT_INTEGER
 xchain01089_n9_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx01093_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain01089_n12_α
.Lx01093_0:
 .quad 1
# IR_TO
 xchain01089_n10_α:
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
.Lx01094_0:
 mov rax, qword ptr [rbp + 48]
 mov rcx, qword ptr [rbp + 104]
 cmp rax, rcx
 jg proc_cxget_ω
 mov qword ptr [rbp + 32], 6
 mov qword ptr [rbp + 40], rax
 jmp xchain01089_n13_α
 xchain01089_n10_β:
 inc qword ptr [rbp + 48]
 jmp .Lx01094_0
# IR_LIT_STRING
 xchain01089_n11_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx01095_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain01089_n14_α
.Lx01095_0:
 .quad .Lx01095_0_s
.Lx01095_0_s:
 .string "@C"
# IR_ASSIGN_VAR
 xchain01089_n12_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 640]
 mov rcx, qword ptr [rbp + 648]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain01089_n0_af
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain01089_n15_α
# IR_BOUND
 xchain01089_n13_α:
 mov qword ptr [rbp + 128], rsp
 jmp xchain01089_n16_α
# IR_RETURN
 xchain01089_n14_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_cxget_γ
# IR_CREATE
 xchain01089_n15_α:
 mov qword ptr [rbp + 432], r12
 mov qword ptr [rbp + 440], r13
 mov qword ptr [rbp + 448], r14
 mov qword ptr [rbp + 456], r15
 mov qword ptr [rbp + 464], rbx
 mov qword ptr [rbp + 472], rbp
 lea rdi, [rip + xchain01089_n17_α]
 lea rsi, [rbp + 432]
 mov edx, 720
 call scrip_coexpr_create@PLT
 mov qword ptr [rbp + 416], rax
 jmp xchain01089_n3_α
# IR_VAR
 xchain01089_n16_α:
 mov rax, qword ptr [1879053296]
 mov rdx, qword ptr [1879053304]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain01089_n18_α
 xchain01089_n17_α:
# IR_REPALT clear
 mov qword ptr [rbp + 512], 0
jmp xchain01089_n21_α
xchain01089_n17_ry:
# IR_REPALT yield
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 504], rax
 mov qword ptr [rbp + 512], 1
jmp xchain01089_n20_α
xchain01089_n17_rt:
# IR_REPALT test
 mov rax, qword ptr [rbp + 512]
 cmp rax, 1
je xchain01089_n17_α
jmp xchain01089_n22_α
xchain01089_n17_β:
jmp xchain01089_n17_rt
# IR_ACTIVATE
 xchain01089_n18_α:
 mov rdi, qword ptr [rbp + 208]
 xor esi, esi
 xor edx, edx
 lea rcx, [rbp + 176]
 call scrip_coexpr_activate@PLT
 test rax, rax
 je xchain01089_n19_α
 jmp xchain01089_n19_α
# IR_UNMARK
 xchain01089_n19_α:
 mov rsp, qword ptr [rbp + 128]
 jmp xchain01089_n10_β
# IR_CORET yield
 xchain01089_n20_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 xor edx, edx
 call scrip_coret@PLT
 jmp xchain01089_n17_β
# IR_LIT_STRING
 xchain01089_n21_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx01096_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain01089_n17_ry
 xchain01089_n21_β:
 jmp xchain01089_n17_rt
.Lx01096_0:
 .quad .Lx01096_0_s
.Lx01096_0_s:
 .string "a"
# IR_COFAIL exhausted
 xchain01089_n22_α:
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
proc_cxget_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 736
 mov qword ptr [rsp + 728], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 688], r11
 lea rax, [rip + .Lx01097_2]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + .Lx01097_3]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 680], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 672
 mov edx, 688
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_cxget_α_body
.Lx01097_2:
 mov rdx, qword ptr [rsp + -736]
 mov rcx, rsp
 add rcx, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx01097_3:
 mov rdi, qword ptr [rsp + -736]
 mov rsi, rsp
 add rsi, -720
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
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
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_report_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_measure_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_nothing_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_uplus_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_uplusr_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_absf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_intadd_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_intcmp_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_intpow_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_realcmp_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_cosf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_sqrtf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_logf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_nullfunc_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_nullf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_listcall_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_addfunc_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_add_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_rfact0_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_rfact10_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_rfact_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_rfib5_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + proc_rfib_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname23]
  lea rsi, [rip + proc_prslow_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname24]
  lea rsi, [rip + proc_if0_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname25]
  lea rsi, [rip + proc_case3_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname26]
  lea rsi, [rip + proc_nulltest_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname27]
  lea rsi, [rip + proc_typef_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname28]
  lea rsi, [rip + proc_imagef_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname29]
  lea rsi, [rip + proc_marshal_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname30]
  lea rsi, [rip + proc_conj5_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname31]
  lea rsi, [rip + proc_everyalt_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname32]
  lea rsi, [rip + proc_everyto_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname33]
  lea rsi, [rip + proc_evsusp_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname35]
  lea rsi, [rip + proc_intcoerce_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname36]
  lea rsi, [rip + proc_realcoerce_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname37]
  lea rsi, [rip + proc_strcoerce_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname38]
  lea rsi, [rip + proc_strcoercer_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname39]
  lea rsi, [rip + proc_tointeger_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname40]
  lea rsi, [rip + proc_toreal_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname41]
  lea rsi, [rip + proc_tostring_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname42]
  lea rsi, [rip + proc_rtostring_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname43]
  lea rsi, [rip + proc_tocset_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname44]
  lea rsi, [rip + proc_charf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname45]
  lea rsi, [rip + proc_ordf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname46]
  lea rsi, [rip + proc_strsize_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname47]
  lea rsi, [rip + proc_concat_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname48]
  lea rsi, [rip + proc_strpick_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname49]
  lea rsi, [rip + proc_strbang_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname50]
  lea rsi, [rip + proc_strsub_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname51]
  lea rsi, [rip + proc_substr_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname52]
  lea rsi, [rip + proc_subsasg_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname53]
  lea rsi, [rip + proc_strcmp_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname54]
  lea rsi, [rip + proc_strident_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname55]
  lea rsi, [rip + proc_replf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname56]
  lea rsi, [rip + proc_reversef_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname57]
  lea rsi, [rip + proc_leftf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname58]
  lea rsi, [rip + proc_centerf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname59]
  lea rsi, [rip + proc_rightf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname60]
  lea rsi, [rip + proc_trimf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname61]
  lea rsi, [rip + proc_entabf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname62]
  lea rsi, [rip + proc_detabf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname63]
  lea rsi, [rip + proc_mapf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname64]
  lea rsi, [rip + proc_map1_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname65]
  lea rsi, [rip + proc_map2_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname66]
  lea rsi, [rip + proc_tablemap_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname67]
  lea rsi, [rip + proc_listmap_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname68]
  lea rsi, [rip + proc_nullscan_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname69]
  lea rsi, [rip + proc_movef_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname70]
  lea rsi, [rip + proc_mov11_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + proc_pos11_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + proc_tabf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + proc_matchf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + proc_tabmat_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + proc_posf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + proc_anyf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + proc_manyf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + proc_uptof_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + proc_findf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + proc_balf_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + proc_cssize_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + proc_cscompl_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + proc_lcreate_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + proc_lconst_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + proc_lcopy_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + proc_lsort_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + proc_lsize_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + proc_lpick_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + proc_lsubscr_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + proc_lbang_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + proc_put1get1_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + proc_put2get2_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + proc_put3get3_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + proc_put4get4_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + proc_pushpop_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + proc_putget12_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + proc_pushpop12_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + proc_setcreate_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + proc_setcopy_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + proc_setinsert_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + proc_setmember_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + proc_setinsdel_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + proc_setpick_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + proc_setbang_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + proc_tblcreate_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + proc_tblasgn_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + proc_tblsub_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + proc_recconstr_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + proc_reccopy_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + proc_recfield_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + proc_bigfield_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + proc_globasgn_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname113]
  lea rsi, [rip + proc_loclasgn_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname114]
  lea rsi, [rip + proc_statasgn_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname115]
  lea rsi, [rip + proc_readz_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname116]
  lea rsi, [rip + proc_writecon_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname117]
  lea rsi, [rip + proc_writestr_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname118]
  lea rsi, [rip + proc_cxcreate_dcα]
  call rt_proc_set_dcfn@PLT
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
  lea rdi, [rip + .Lstartup_pname119]
  lea rsi, [rip + proc_cxget_dcα]
  call rt_proc_set_dcfn@PLT
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
 xchain01098_n0_α:
 mov qword ptr [rbp + 11312], 6
 mov rax, qword ptr [rip + .Lx01099_0]
 mov qword ptr [rbp + 11320], rax
 jmp xchain01098_n1_α
.Lx01099_0:
 .quad 1000
# IR_DISJUNCTION_NARY
 xchain01098_n1_α:
 mov qword ptr [rbp + 11344], 0
 mov qword ptr [rbp + 11352], 0
 mov dword ptr [rbp + 11360], 0
 jmp xchain01098_n3_α
xchain01098_n1_as:
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 0
 jne .Lx01100_0
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11344], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11352], rax
 jmp xchain01098_n2_α
.Lx01100_0:
 cmp eax, 1
 jne .Lx01100_1
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 11344], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 11352], rax
 jmp xchain01098_n2_α
.Lx01100_1:
 jmp xchain01098_n2_α
 xchain01098_n1_β:
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 0
 je xchain01098_n1_af
 jmp xchain01098_n1_af
xchain01098_n1_af:
 add dword ptr [rbp + 11360], 1
 mov eax, dword ptr [rbp + 11360]
 cmp eax, 1
 je xchain01098_n4_α
 jmp xchain01098_n7_α
# IR_COERCE_NUMERIC
 xchain01098_n2_α:
 mov eax, dword ptr [rbp + 11344]
 cmp eax, 7
 je .Lx01101_1
 cmp eax, 6
 jne .Lx01101_0
 mov eax, dword ptr [rbp + 11312]
 cmp eax, 6
 jne .Lx01101_0
.Lx01101_1:
 mov rax, qword ptr [rbp + 11344]
 mov qword ptr [rbp + 11280], rax
 mov rax, qword ptr [rbp + 11352]
 mov qword ptr [rbp + 11288], rax
 jmp xchain01098_n6_α
.Lx01101_0:
 lea rdi, [rbp + 11344]
 lea rsi, [rbp + 11312]
 lea rdx, [rbp + 11280]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain01098_n6_α
# IR_VAR_REF
 xchain01098_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 jmp xchain01098_n8_α
 xchain01098_n3_β:
 jmp xchain01098_n1_af
# IR_LIT_REAL
 xchain01098_n4_α:
 mov qword ptr [rbp + 11488], 7
 mov rax, qword ptr [rip + .Lx01102_0]
 mov qword ptr [rbp + 11496], rax
 jmp xchain01098_n1_as
 xchain01098_n4_β:
 jmp xchain01098_n1_af
.Lx01102_0:
 .quad 4607182418800017408
# IR_DEREF variable -> value
 xchain01098_n5_α:
 mov rdi, qword ptr [rbp + 11440]
 mov rsi, qword ptr [rbp + 11448]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01098_n1_af
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain01098_n1_as
 xchain01098_n5_β:
 jmp xchain01098_n1_af
 xchain01098_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 11280]
 cmp eax, 100
 je .Lx01103_0
 mov eax, dword ptr [rbp + 11280]
 cmp eax, 6
 jne .Lx01103_2
.Lx01103_1:
 mov rax, 1000
 mov rcx, qword ptr [rbp + 11288]
 imul rax, rcx
 mov qword ptr [rbp + 11248], 6
 mov qword ptr [rbp + 11256], rax
 jmp xchain01098_n9_α
.Lx01103_0:
 mov rdi, qword ptr [rbp + 11312]
 mov rsi, qword ptr [rbp + 11320]
 mov rdx, qword ptr [rbp + 11280]
 mov rcx, qword ptr [rbp + 11288]
 mov r8d, 2
 lea r9, [rbp + 11248]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain01098_n9_α
.Lx01103_2:
 mov rdi, qword ptr [rbp + 11312]
 mov rsi, qword ptr [rbp + 11320]
 mov rdx, qword ptr [rbp + 11280]
 mov rcx, qword ptr [rbp + 11288]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01098_n7_α
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 jmp xchain01098_n9_α
 xchain01098_n6_β:
 jmp xchain01098_n7_α
# IR_LIT_STRING
 xchain01098_n7_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx01104_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain01098_n10_α
.Lx01104_0:
 .quad .Lx01104_0_s
.Lx01104_0_s:
 .string "/dev/null"
# IR_LIT_INTEGER
 xchain01098_n8_α:
 mov qword ptr [rbp + 11408], 6
 mov rax, qword ptr [rip + .Lx01105_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain01098_n11_α
.Lx01105_0:
 .quad 1
 xchain01098_n9_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11248] -> [zr+11216]
 mov rax, qword ptr [rbp + 11248]
 mov qword ptr [rbp + 11216], rax
 mov rax, qword ptr [rbp + 11256]
 mov qword ptr [rbp + 11224], rax
  .section .rodata
  .Lrkfn3284: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3284]
 lea rsi, [rbp + 11216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 cmp eax, 99
 je xchain01098_n1_β
 jmp xchain01098_n12_α
 xchain01098_n9_β:
 jmp xchain01098_n1_β
# IR_LIT_STRING
 xchain01098_n10_α:
 mov qword ptr [rbp + 11152], 1
 mov rax, qword ptr [rip + .Lx01106_0]
 mov qword ptr [rbp + 11160], rax
 jmp xchain01098_n13_α
.Lx01106_0:
 .quad .Lx01106_0_s
.Lx01106_0_s:
 .string "w"
# IR_SUBSCRIPT x[i] variable
 xchain01098_n11_α:
 mov rdi, qword ptr [rbp + 11376]
 mov rsi, qword ptr [rbp + 11384]
 mov rdx, qword ptr [rbp + 11408]
 mov rcx, qword ptr [rbp + 11416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01098_n1_af
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp xchain01098_n5_α
# IR_ASSIGN gva
 xchain01098_n12_α:
 mov rax, qword ptr [rbp + 11200]
 mov rdx, qword ptr [rbp + 11208]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 11184], rax
 mov qword ptr [rbp + 11192], rdx
 jmp xchain01098_n7_α
 xchain01098_n13_α:
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
  .Lrkfn3289: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3289]
 lea rsi, [rbp + 11072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11056], rax
 mov qword ptr [rbp + 11064], rdx
 cmp eax, 99
 je xchain01098_n15_α
 jmp xchain01098_n14_α
 xchain01098_n13_β:
 jmp xchain01098_n15_α
# IR_ASSIGN gva
 xchain01098_n14_α:
 mov rax, qword ptr [rbp + 11056]
 mov rdx, qword ptr [rbp + 11064]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 11040], rax
 mov qword ptr [rbp + 11048], rdx
 jmp xchain01098_n15_α
# IR_VAR
 xchain01098_n15_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 jmp xchain01098_n16_α
 xchain01098_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 11008]
 mov rdx, qword ptr [rbp + 11016]
 mov qword ptr [rbp + 11552], rax
 mov qword ptr [rbp + 11560], rdx
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain01098_n17_α
# IR_VAR
 xchain01098_n17_α:
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 10880], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 10888], rax
 jmp xchain01098_n18_α
# IR_LIT_REAL
 xchain01098_n18_α:
 mov qword ptr [rbp + 10960], 7
 mov rax, qword ptr [rip + .Lx01107_0]
 mov qword ptr [rbp + 10968], rax
 jmp xchain01098_n20_α
.Lx01107_0:
 .quad 4652007308841189376
 xchain01098_n19_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn3297: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3297]
 lea rsi, [rbp + 10816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 cmp eax, 99
 je xchain01098_n22_α
 jmp xchain01098_n21_α
 xchain01098_n19_β:
 jmp xchain01098_n22_α
 xchain01098_n20_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10960] -> [zr+10928]
 mov rax, qword ptr [rbp + 10960]
 mov qword ptr [rbp + 10928], rax
 mov rax, qword ptr [rbp + 10968]
 mov qword ptr [rbp + 10936], rax
  .section .rodata
  .Lrkfn3299: .string "integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3299]
 lea rsi, [rbp + 10928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 cmp eax, 99
 je xchain01098_n19_α
 jmp xchain01098_n23_α
 xchain01098_n20_β:
 jmp xchain01098_n19_α
 xchain01098_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain01098_n22_α
# IR_LIT_INTEGER
 xchain01098_n22_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx01108_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain01098_n24_α
.Lx01108_0:
 .quad 1
 xchain01098_n23_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 11552]
 cmp eax, 100
 je .Lx01109_0
 mov eax, dword ptr [rbp + 10912]
 cmp eax, 100
 je .Lx01109_0
 mov eax, dword ptr [rbp + 11552]
 cmp eax, 6
 jne .Lx01109_2
 mov eax, dword ptr [rbp + 10912]
 cmp eax, 6
 jne .Lx01109_2
.Lx01109_1:
 mov rax, qword ptr [rbp + 11560]
 mov rcx, qword ptr [rbp + 10920]
 cmp rax, rcx
 jge xchain01098_n19_α
 mov rcx, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rcx
 mov rcx, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rcx
 jmp xchain01098_n25_α
.Lx01109_0:
 mov rdi, qword ptr [rbp + 11552]
 mov rsi, qword ptr [rbp + 11560]
 mov rdx, qword ptr [rbp + 10912]
 mov rcx, qword ptr [rbp + 10920]
 mov r8d, 5
 lea r9, [rbp + 10848]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx01109_1
 cmp eax, 1
 je xchain01098_n19_α
 jmp xchain01098_n25_α
.Lx01109_2:
 mov rdi, qword ptr [rbp + 11552]
 mov rsi, qword ptr [rbp + 11560]
 mov rdx, qword ptr [rbp + 10912]
 mov rcx, qword ptr [rbp + 10920]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain01098_n19_α
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rax
 jmp xchain01098_n25_α
# IR_LIT_INTEGER
 xchain01098_n24_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx01110_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain01098_n26_α
.Lx01110_0:
 .quad 5
 xchain01098_n25_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 10848]
 mov rdx, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 11552], rax
 mov qword ptr [rbp + 11560], rdx
 mov qword ptr [rbp + 10832], rax
 mov qword ptr [rbp + 10840], rdx
 jmp xchain01098_n19_α
# IR_TO
 xchain01098_n26_α:
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
.Lx01111_0:
 mov rax, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10344]
 cmp rax, rcx
 jg xchain01098_n38_α
 mov qword ptr [rbp + 10272], 6
 mov qword ptr [rbp + 10280], rax
 jmp xchain01098_n27_α
 xchain01098_n26_β:
 inc qword ptr [rbp + 10288]
 jmp .Lx01111_0
# IR_BOUND
 xchain01098_n27_α:
 mov qword ptr [rbp + 10368], rsp
 jmp xchain01098_n28_α
# KEYWORD_read
 xchain01098_n28_α:
 mov rdi, qword ptr [rip + .Lx01112_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain01098_n31_α
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 jmp xchain01098_n29_α
 xchain01098_n28_β:
 jmp xchain01098_n31_α
.Lx01112_0:
 .quad .Lx01112_0_s
.Lx01112_0_s:
 .string "&errout"
# IR_LIT_STRING
 xchain01098_n29_α:
 mov qword ptr [rbp + 10752], 1
 mov rax, qword ptr [rip + .Lx01113_0]
 mov qword ptr [rbp + 10760], rax
 jmp xchain01098_n30_α
.Lx01113_0:
 .quad .Lx01113_0_s
.Lx01113_0_s:
 .string "."
 xchain01098_n30_α:
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
  .Lrkfn3312: .string "writes"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3312]
 lea rsi, [rbp + 10672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10656], rax
 mov qword ptr [rbp + 10664], rdx
 cmp eax, 99
 je xchain01098_n31_α
 jmp xchain01098_n31_α
 xchain01098_n30_β:
 jmp xchain01098_n31_α
# IR_VAR
 xchain01098_n31_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 10504], rax
 jmp xchain01098_n32_α
# IR_PROC_VALUE
 xchain01098_n32_α:
 mov rdi, qword ptr [rip + .Lx01114_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 10592], rax
 mov qword ptr [rbp + 10600], rdx
 jmp xchain01098_n34_α
.Lx01114_0:
 .quad .Lx01114_0_s
.Lx01114_0_s:
 .string "nothing"
# IR_UNMARK
 xchain01098_n33_α:
 mov rsp, qword ptr [rbp + 10368]
 jmp xchain01098_n26_β
# IR_VAR
 xchain01098_n34_α:
 mov rax, qword ptr [rbp + 11552]
 mov qword ptr [rbp + 10624], rax
 mov rax, qword ptr [rbp + 11560]
 mov qword ptr [rbp + 10632], rax
 jmp xchain01098_n35_α
 xchain01098_n35_α:
 lea rsi, [rbp + 10592]
 lea rdx, [rbp + 10624]
 call proc_measure_dcα
 jmp .Lx01115_2
.Lx01115_2:
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 cmp eax, 99
 je xchain01098_n33_α
 jmp xchain01098_n36_α
 xchain01098_n35_β:
 jmp xchain01098_n33_α
.Lx01115_0:
 .quad .Lx01115_0_s
.Lx01115_0_s:
 .string "measure"
 xchain01098_n36_α:
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
  .Lrkfn3324: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3324]
 lea rsi, [rbp + 10448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 cmp eax, 99
 je xchain01098_n33_α
 jmp xchain01098_n37_α
 xchain01098_n36_β:
 jmp xchain01098_n33_α
 xchain01098_n37_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [rbp + 10416], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [rbp + 10424], rax
 jmp xchain01098_n33_α
xchain01098_n37_β:
 jmp xchain01098_n33_α
# IR_VAR
 xchain01098_n38_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 9848], rax
 jmp xchain01098_n39_α
 xchain01098_n39_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9840] -> [zr+9808]
 mov rax, qword ptr [rbp + 9840]
 mov qword ptr [rbp + 9808], rax
 mov rax, qword ptr [rbp + 9848]
 mov qword ptr [rbp + 9816], rax
  .section .rodata
  .Lrkfn3329: .string "sort"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3329]
 lea rsi, [rbp + 9808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 cmp eax, 99
 je xchain01098_n40_α
 jmp xchain01098_n41_α
 xchain01098_n39_β:
 jmp xchain01098_n40_α
# IR_VAR
 xchain01098_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain01098_n42_α
# IR_LIT_INTEGER
 xchain01098_n41_α:
 mov qword ptr [rbp + 9936], 6
 mov rax, qword ptr [rip + .Lx01116_0]
 mov qword ptr [rbp + 9944], rax
 jmp xchain01098_n44_α
.Lx01116_0:
 .quad 1
# IR_LIT_INTEGER
 xchain01098_n42_α:
 mov qword ptr [rbp + 9712], 6
 mov rax, qword ptr [rip + .Lx01117_0]
 mov qword ptr [rbp + 9720], rax
 jmp xchain01098_n45_α
.Lx01117_0:
 .quad 10
# IR_PROC_VALUE
 xchain01098_n43_α:
 mov rdi, qword ptr [rip + .Lx01118_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain01098_n46_α
.Lx01118_0:
 .quad .Lx01118_0_s
.Lx01118_0_s:
 .string "nothing"
# IR_VAR
 xchain01098_n44_α:
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 10136], rax
 jmp xchain01098_n47_α
 xchain01098_n45_α:
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
  .Lrkfn3338: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3338]
 lea rsi, [rbp + 9632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain01098_n43_α
 jmp xchain01098_n48_α
 xchain01098_n45_β:
 jmp xchain01098_n43_α
 xchain01098_n46_α:
 lea rsi, [rbp + 9520]
 call proc_report_dcα
 jmp .Lx01119_2
.Lx01119_2:
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 cmp eax, 99
 je xchain01098_n49_α
 jmp xchain01098_n49_α
 xchain01098_n46_β:
 jmp xchain01098_n49_α
.Lx01119_0:
 .quad .Lx01119_0_s
.Lx01119_0_s:
 .string "report"
# IR_UNOP
 xchain01098_n47_α:
 mov rdi, qword ptr [rbp + 11536]
 mov rsi, qword ptr [rbp + 11544]
 call rt_size_d@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain01098_n50_α
# IR_LIT_STRING
 xchain01098_n48_α:
 mov qword ptr [rbp + 9744], 1
 mov rax, qword ptr [rip + .Lx01120_0]
 mov qword ptr [rbp + 9752], rax
 jmp xchain01098_n51_α
.Lx01120_0:
 .quad .Lx01120_0_s
.Lx01120_0_s:
 .string "  overhead"
# IR_PROC_VALUE
 xchain01098_n49_α:
 mov rdi, qword ptr [rip + .Lx01121_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain01098_n52_α
.Lx01121_0:
 .quad .Lx01121_0_s
.Lx01121_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain01098_n50_α:
 mov qword ptr [rbp + 10160], 6
 mov rax, qword ptr [rip + .Lx01122_0]
 mov qword ptr [rbp + 10168], rax
 jmp xchain01098_n53_α
.Lx01122_0:
 .quad 1
 xchain01098_n51_α:
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
  .Lrkfn3347: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3347]
 lea rsi, [rbp + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain01098_n43_α
 jmp xchain01098_n43_α
 xchain01098_n51_β:
 jmp xchain01098_n43_α
 xchain01098_n52_α:
 lea rsi, [rbp + 9440]
 call proc_report_dcα
 jmp .Lx01123_2
.Lx01123_2:
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain01098_n54_α
 jmp xchain01098_n54_α
 xchain01098_n52_β:
 jmp xchain01098_n54_α
.Lx01123_0:
 .quad .Lx01123_0_s
.Lx01123_0_s:
 .string "report"
# IR_COERCE_NUMERIC
 xchain01098_n53_α:
 mov eax, dword ptr [rbp + 10096]
 cmp eax, 7
 je .Lx01124_1
 cmp eax, 6
 jne .Lx01124_0
 mov eax, dword ptr [rbp + 10160]
 cmp eax, 6
 jne .Lx01124_0
.Lx01124_1:
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
 jmp xchain01098_n55_α
.Lx01124_0:
 lea rdi, [rbp + 10096]
 lea rsi, [rbp + 10160]
 lea rdx, [rbp + 10064]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain01098_n55_α
# IR_PROC_VALUE
 xchain01098_n54_α:
 mov rdi, qword ptr [rip + .Lx01125_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain01098_n56_α
.Lx01125_0:
 .quad .Lx01125_0_s
.Lx01125_0_s:
 .string "nothing"
 xchain01098_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 100
 je .Lx01126_0
 mov eax, dword ptr [rbp + 10064]
 cmp eax, 6
 jne .Lx01126_2
.Lx01126_1:
 mov rax, qword ptr [rbp + 10072]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 10032], 6
 mov qword ptr [rbp + 10040], rax
 jmp xchain01098_n57_α
.Lx01126_0:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 lea r9, [rbp + 10032]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain01098_n57_α
.Lx01126_2:
 mov rdi, qword ptr [rbp + 10064]
 mov rsi, qword ptr [rbp + 10072]
 mov rdx, qword ptr [rbp + 10160]
 mov rcx, qword ptr [rbp + 10168]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01098_n40_α
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 jmp xchain01098_n57_α
 xchain01098_n55_β:
 jmp xchain01098_n40_α
 xchain01098_n56_α:
 lea rsi, [rbp + 9360]
 call proc_report_dcα
 jmp .Lx01127_2
.Lx01127_2:
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 cmp eax, 99
 je xchain01098_n58_α
 jmp xchain01098_n58_α
 xchain01098_n56_β:
 jmp xchain01098_n58_α
.Lx01127_0:
 .quad .Lx01127_0_s
.Lx01127_0_s:
 .string "report"
# IR_LIT_INTEGER
 xchain01098_n57_α:
 mov qword ptr [rbp + 10192], 6
 mov rax, qword ptr [rip + .Lx01128_0]
 mov qword ptr [rbp + 10200], rax
 jmp xchain01098_n59_α
.Lx01128_0:
 .quad 2
# IR_PROC_VALUE
 xchain01098_n58_α:
 mov rdi, qword ptr [rip + .Lx01129_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain01098_n60_α
.Lx01129_0:
 .quad .Lx01129_0_s
.Lx01129_0_s:
 .string "globasgn"
# IR_COERCE_NUMERIC
 xchain01098_n59_α:
 mov eax, dword ptr [rbp + 10032]
 cmp eax, 7
 je .Lx01130_1
 cmp eax, 6
 jne .Lx01130_0
 mov eax, dword ptr [rbp + 10192]
 cmp eax, 6
 jne .Lx01130_0
.Lx01130_1:
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10000], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10008], rax
 jmp xchain01098_n61_α
.Lx01130_0:
 lea rdi, [rbp + 10032]
 lea rsi, [rbp + 10192]
 lea rdx, [rbp + 10000]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain01098_n61_α
 xchain01098_n60_α:
 lea rsi, [rbp + 9280]
 call proc_report_dcα
 jmp .Lx01131_2
.Lx01131_2:
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain01098_n62_α
 jmp xchain01098_n62_α
 xchain01098_n60_β:
 jmp xchain01098_n62_α
.Lx01131_0:
 .quad .Lx01131_0_s
.Lx01131_0_s:
 .string "report"
 xchain01098_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 100
 je .Lx01132_0
 mov eax, dword ptr [rbp + 10000]
 cmp eax, 6
 jne .Lx01132_2
.Lx01132_1:
 mov rax, qword ptr [rbp + 10008]
 mov rcx, 2
 cqo
 idiv rcx
 mov qword ptr [rbp + 9968], 6
 mov qword ptr [rbp + 9976], rax
 jmp xchain01098_n63_α
.Lx01132_0:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 lea r9, [rbp + 9968]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain01098_n63_α
.Lx01132_2:
 mov rdi, qword ptr [rbp + 10000]
 mov rsi, qword ptr [rbp + 10008]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01098_n40_α
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
 jmp xchain01098_n63_α
 xchain01098_n61_β:
 jmp xchain01098_n40_α
# IR_PROC_VALUE
 xchain01098_n62_α:
 mov rdi, qword ptr [rip + .Lx01133_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain01098_n64_α
.Lx01133_0:
 .quad .Lx01133_0_s
.Lx01133_0_s:
 .string "statasgn"
# IR_COERCE_NUMERIC
 xchain01098_n63_α:
 mov eax, dword ptr [rbp + 9968]
 cmp eax, 7
 je .Lx01134_1
 cmp eax, 6
 jne .Lx01134_0
 mov eax, dword ptr [rbp + 9936]
 cmp eax, 6
 jne .Lx01134_0
.Lx01134_1:
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
 jmp xchain01098_n65_α
.Lx01134_0:
 lea rdi, [rbp + 9968]
 lea rsi, [rbp + 9936]
 lea rdx, [rbp + 9904]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain01098_n65_α
 xchain01098_n64_α:
 lea rsi, [rbp + 9200]
 call proc_report_dcα
 jmp .Lx01135_2
.Lx01135_2:
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je xchain01098_n66_α
 jmp xchain01098_n66_α
 xchain01098_n64_β:
 jmp xchain01098_n66_α
.Lx01135_0:
 .quad .Lx01135_0_s
.Lx01135_0_s:
 .string "report"
 xchain01098_n65_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 100
 je .Lx01136_0
 mov eax, dword ptr [rbp + 9904]
 cmp eax, 6
 jne .Lx01136_2
.Lx01136_1:
 mov rax, 1
 mov rcx, qword ptr [rbp + 9912]
 add rax, rcx
 mov qword ptr [rbp + 9872], 6
 mov qword ptr [rbp + 9880], rax
 jmp xchain01098_n67_α
.Lx01136_0:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9872]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain01098_n67_α
.Lx01136_2:
 mov rdi, qword ptr [rbp + 9936]
 mov rsi, qword ptr [rbp + 9944]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain01098_n40_α
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain01098_n67_α
 xchain01098_n65_β:
 jmp xchain01098_n40_α
# IR_PROC_VALUE
 xchain01098_n66_α:
 mov rdi, qword ptr [rip + .Lx01137_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 jmp xchain01098_n68_α
.Lx01137_0:
 .quad .Lx01137_0_s
.Lx01137_0_s:
 .string "loclasgn"
# IR_SUBSCRIPT x[i] variable
 xchain01098_n67_α:
 mov rdi, qword ptr [rbp + 9792]
 mov rsi, qword ptr [rbp + 9800]
 mov rdx, qword ptr [rbp + 9872]
 mov rcx, qword ptr [rbp + 9880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain01098_n40_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain01098_n69_α
 xchain01098_n68_α:
 lea rsi, [rbp + 9120]
 call proc_report_dcα
 jmp .Lx01138_2
.Lx01138_2:
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain01098_n70_α
 jmp xchain01098_n70_α
 xchain01098_n68_β:
 jmp xchain01098_n70_α
.Lx01138_0:
 .quad .Lx01138_0_s
.Lx01138_0_s:
 .string "report"
# IR_DEREF variable -> value
 xchain01098_n69_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain01098_n40_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain01098_n71_α
# IR_PROC_VALUE
 xchain01098_n70_α:
 mov rdi, qword ptr [rip + .Lx01139_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain01098_n72_α
.Lx01139_0:
 .quad .Lx01139_0_s
.Lx01139_0_s:
 .string "if0"
# IR_ASSIGN gva
 xchain01098_n71_α:
 mov rax, qword ptr [rbp + 10256]
 mov rdx, qword ptr [rbp + 10264]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain01098_n40_α
 xchain01098_n72_α:
 lea rsi, [rbp + 9040]
 call proc_report_dcα
 jmp .Lx01140_2
.Lx01140_2:
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain01098_n73_α
 jmp xchain01098_n73_α
 xchain01098_n72_β:
 jmp xchain01098_n73_α
.Lx01140_0:
 .quad .Lx01140_0_s
.Lx01140_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n73_α:
 mov rdi, qword ptr [rip + .Lx01141_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain01098_n74_α
.Lx01141_0:
 .quad .Lx01141_0_s
.Lx01141_0_s:
 .string "case3"
 xchain01098_n74_α:
 lea rsi, [rbp + 8960]
 call proc_report_dcα
 jmp .Lx01142_2
.Lx01142_2:
 mov qword ptr [rbp + 8912], rax
 mov qword ptr [rbp + 8920], rdx
 cmp eax, 99
 je xchain01098_n75_α
 jmp xchain01098_n75_α
 xchain01098_n74_β:
 jmp xchain01098_n75_α
.Lx01142_0:
 .quad .Lx01142_0_s
.Lx01142_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n75_α:
 mov rdi, qword ptr [rip + .Lx01143_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain01098_n76_α
.Lx01143_0:
 .quad .Lx01143_0_s
.Lx01143_0_s:
 .string "nulltest"
 xchain01098_n76_α:
 lea rsi, [rbp + 8880]
 call proc_report_dcα
 jmp .Lx01144_2
.Lx01144_2:
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 cmp eax, 99
 je xchain01098_n77_α
 jmp xchain01098_n77_α
 xchain01098_n76_β:
 jmp xchain01098_n77_α
.Lx01144_0:
 .quad .Lx01144_0_s
.Lx01144_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n77_α:
 mov rdi, qword ptr [rip + .Lx01145_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain01098_n78_α
.Lx01145_0:
 .quad .Lx01145_0_s
.Lx01145_0_s:
 .string "typef"
 xchain01098_n78_α:
 lea rsi, [rbp + 8800]
 call proc_report_dcα
 jmp .Lx01146_2
.Lx01146_2:
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain01098_n79_α
 jmp xchain01098_n79_α
 xchain01098_n78_β:
 jmp xchain01098_n79_α
.Lx01146_0:
 .quad .Lx01146_0_s
.Lx01146_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n79_α:
 mov rdi, qword ptr [rip + .Lx01147_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8720], rax
 mov qword ptr [rbp + 8728], rdx
 jmp xchain01098_n80_α
.Lx01147_0:
 .quad .Lx01147_0_s
.Lx01147_0_s:
 .string "imagef"
 xchain01098_n80_α:
 lea rsi, [rbp + 8720]
 call proc_report_dcα
 jmp .Lx01148_2
.Lx01148_2:
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 cmp eax, 99
 je xchain01098_n81_α
 jmp xchain01098_n81_α
 xchain01098_n80_β:
 jmp xchain01098_n81_α
.Lx01148_0:
 .quad .Lx01148_0_s
.Lx01148_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n81_α:
 mov rdi, qword ptr [rip + .Lx01149_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain01098_n82_α
.Lx01149_0:
 .quad .Lx01149_0_s
.Lx01149_0_s:
 .string "everyto"
 xchain01098_n82_α:
 lea rsi, [rbp + 8640]
 call proc_report_dcα
 jmp .Lx01150_2
.Lx01150_2:
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 cmp eax, 99
 je xchain01098_n83_α
 jmp xchain01098_n83_α
 xchain01098_n82_β:
 jmp xchain01098_n83_α
.Lx01150_0:
 .quad .Lx01150_0_s
.Lx01150_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n83_α:
 mov rdi, qword ptr [rip + .Lx01151_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 jmp xchain01098_n84_α
.Lx01151_0:
 .quad .Lx01151_0_s
.Lx01151_0_s:
 .string "everyalt"
 xchain01098_n84_α:
 lea rsi, [rbp + 8560]
 call proc_report_dcα
 jmp .Lx01152_2
.Lx01152_2:
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain01098_n85_α
 jmp xchain01098_n85_α
 xchain01098_n84_β:
 jmp xchain01098_n85_α
.Lx01152_0:
 .quad .Lx01152_0_s
.Lx01152_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n85_α:
 mov rdi, qword ptr [rip + .Lx01153_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain01098_n86_α
.Lx01153_0:
 .quad .Lx01153_0_s
.Lx01153_0_s:
 .string "conj5"
 xchain01098_n86_α:
 lea rsi, [rbp + 8480]
 call proc_report_dcα
 jmp .Lx01154_2
.Lx01154_2:
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 cmp eax, 99
 je xchain01098_n87_α
 jmp xchain01098_n87_α
 xchain01098_n86_β:
 jmp xchain01098_n87_α
.Lx01154_0:
 .quad .Lx01154_0_s
.Lx01154_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n87_α:
 mov rdi, qword ptr [rip + .Lx01155_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain01098_n88_α
.Lx01155_0:
 .quad .Lx01155_0_s
.Lx01155_0_s:
 .string "nullfunc"
 xchain01098_n88_α:
 lea rsi, [rbp + 8400]
 call proc_report_dcα
 jmp .Lx01156_2
.Lx01156_2:
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain01098_n89_α
 jmp xchain01098_n89_α
 xchain01098_n88_β:
 jmp xchain01098_n89_α
.Lx01156_0:
 .quad .Lx01156_0_s
.Lx01156_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n89_α:
 mov rdi, qword ptr [rip + .Lx01157_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain01098_n90_α
.Lx01157_0:
 .quad .Lx01157_0_s
.Lx01157_0_s:
 .string "listcall"
 xchain01098_n90_α:
 lea rsi, [rbp + 8320]
 call proc_report_dcα
 jmp .Lx01158_2
.Lx01158_2:
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 cmp eax, 99
 je xchain01098_n91_α
 jmp xchain01098_n91_α
 xchain01098_n90_β:
 jmp xchain01098_n91_α
.Lx01158_0:
 .quad .Lx01158_0_s
.Lx01158_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n91_α:
 mov rdi, qword ptr [rip + .Lx01159_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain01098_n92_α
.Lx01159_0:
 .quad .Lx01159_0_s
.Lx01159_0_s:
 .string "marshal"
 xchain01098_n92_α:
 lea rsi, [rbp + 8240]
 call proc_report_dcα
 jmp .Lx01160_2
.Lx01160_2:
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je xchain01098_n93_α
 jmp xchain01098_n93_α
 xchain01098_n92_β:
 jmp xchain01098_n93_α
.Lx01160_0:
 .quad .Lx01160_0_s
.Lx01160_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n93_α:
 mov rdi, qword ptr [rip + .Lx01161_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain01098_n94_α
.Lx01161_0:
 .quad .Lx01161_0_s
.Lx01161_0_s:
 .string "evsusp"
 xchain01098_n94_α:
 lea rsi, [rbp + 8160]
 call proc_report_dcα
 jmp .Lx01162_2
.Lx01162_2:
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 cmp eax, 99
 je xchain01098_n95_α
 jmp xchain01098_n95_α
 xchain01098_n94_β:
 jmp xchain01098_n95_α
.Lx01162_0:
 .quad .Lx01162_0_s
.Lx01162_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n95_α:
 mov rdi, qword ptr [rip + .Lx01163_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain01098_n96_α
.Lx01163_0:
 .quad .Lx01163_0_s
.Lx01163_0_s:
 .string "tointeger"
 xchain01098_n96_α:
 lea rsi, [rbp + 8080]
 call proc_report_dcα
 jmp .Lx01164_2
.Lx01164_2:
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain01098_n97_α
 jmp xchain01098_n97_α
 xchain01098_n96_β:
 jmp xchain01098_n97_α
.Lx01164_0:
 .quad .Lx01164_0_s
.Lx01164_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n97_α:
 mov rdi, qword ptr [rip + .Lx01165_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain01098_n98_α
.Lx01165_0:
 .quad .Lx01165_0_s
.Lx01165_0_s:
 .string "intcoerce"
 xchain01098_n98_α:
 lea rsi, [rbp + 8000]
 call proc_report_dcα
 jmp .Lx01166_2
.Lx01166_2:
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain01098_n99_α
 jmp xchain01098_n99_α
 xchain01098_n98_β:
 jmp xchain01098_n99_α
.Lx01166_0:
 .quad .Lx01166_0_s
.Lx01166_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n99_α:
 mov rdi, qword ptr [rip + .Lx01167_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain01098_n00001_α
.Lx01167_0:
 .quad .Lx01167_0_s
.Lx01167_0_s:
 .string "uplus"
 xchain01098_n00001_α:
 lea rsi, [rbp + 7920]
 call proc_report_dcα
 jmp .Lx01168_2
.Lx01168_2:
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 cmp eax, 99
 je xchain01098_n00002_α
 jmp xchain01098_n00002_α
 xchain01098_n00001_β:
 jmp xchain01098_n00002_α
.Lx01168_0:
 .quad .Lx01168_0_s
.Lx01168_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00002_α:
 mov rdi, qword ptr [rip + .Lx01169_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain01098_n00003_α
.Lx01169_0:
 .quad .Lx01169_0_s
.Lx01169_0_s:
 .string "tostring"
 xchain01098_n00003_α:
 lea rsi, [rbp + 7840]
 call proc_report_dcα
 jmp .Lx01170_2
.Lx01170_2:
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain01098_n00004_α
 jmp xchain01098_n00004_α
 xchain01098_n00003_β:
 jmp xchain01098_n00004_α
.Lx01170_0:
 .quad .Lx01170_0_s
.Lx01170_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00004_α:
 mov rdi, qword ptr [rip + .Lx01171_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain01098_n01172_α
.Lx01171_0:
 .quad .Lx01171_0_s
.Lx01171_0_s:
 .string "strcoerce"
 xchain01098_n01172_α:
 lea rsi, [rbp + 7760]
 call proc_report_dcα
 jmp .Lx01173_2
.Lx01173_2:
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain01098_n01174_α
 jmp xchain01098_n01174_α
 xchain01098_n01172_β:
 jmp xchain01098_n01174_α
.Lx01173_0:
 .quad .Lx01173_0_s
.Lx01173_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01174_α:
 mov rdi, qword ptr [rip + .Lx01175_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain01098_n01176_α
.Lx01175_0:
 .quad .Lx01175_0_s
.Lx01175_0_s:
 .string "absf"
 xchain01098_n01176_α:
 lea rsi, [rbp + 7680]
 call proc_report_dcα
 jmp .Lx01177_2
.Lx01177_2:
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 cmp eax, 99
 je xchain01098_n01178_α
 jmp xchain01098_n01178_α
 xchain01098_n01176_β:
 jmp xchain01098_n01178_α
.Lx01177_0:
 .quad .Lx01177_0_s
.Lx01177_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01178_α:
 mov rdi, qword ptr [rip + .Lx01179_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 jmp xchain01098_n01180_α
.Lx01179_0:
 .quad .Lx01179_0_s
.Lx01179_0_s:
 .string "intadd"
 xchain01098_n01180_α:
 lea rsi, [rbp + 7600]
 call proc_report_dcα
 jmp .Lx01181_2
.Lx01181_2:
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain01098_n01182_α
 jmp xchain01098_n01182_α
 xchain01098_n01180_β:
 jmp xchain01098_n01182_α
.Lx01181_0:
 .quad .Lx01181_0_s
.Lx01181_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01182_α:
 mov rdi, qword ptr [rip + .Lx01183_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain01098_n01184_α
.Lx01183_0:
 .quad .Lx01183_0_s
.Lx01183_0_s:
 .string "addfunc"
 xchain01098_n01184_α:
 lea rsi, [rbp + 7520]
 call proc_report_dcα
 jmp .Lx01185_2
.Lx01185_2:
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain01098_n01186_α
 jmp xchain01098_n01186_α
 xchain01098_n01184_β:
 jmp xchain01098_n01186_α
.Lx01185_0:
 .quad .Lx01185_0_s
.Lx01185_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01186_α:
 mov rdi, qword ptr [rip + .Lx01187_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain01098_n00005_α
.Lx01187_0:
 .quad .Lx01187_0_s
.Lx01187_0_s:
 .string "intpow"
 xchain01098_n00005_α:
 lea rsi, [rbp + 7440]
 call proc_report_dcα
 jmp .Lx01188_2
.Lx01188_2:
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 cmp eax, 99
 je xchain01098_n01189_α
 jmp xchain01098_n01189_α
 xchain01098_n00005_β:
 jmp xchain01098_n01189_α
.Lx01188_0:
 .quad .Lx01188_0_s
.Lx01188_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01189_α:
 mov rdi, qword ptr [rip + .Lx01190_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain01098_n01191_α
.Lx01190_0:
 .quad .Lx01190_0_s
.Lx01190_0_s:
 .string "intcmp"
 xchain01098_n01191_α:
 lea rsi, [rbp + 7360]
 call proc_report_dcα
 jmp .Lx01192_2
.Lx01192_2:
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain01098_n00006_α
 jmp xchain01098_n00006_α
 xchain01098_n01191_β:
 jmp xchain01098_n00006_α
.Lx01192_0:
 .quad .Lx01192_0_s
.Lx01192_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00006_α:
 mov rdi, qword ptr [rip + .Lx01193_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain01098_n01194_α
.Lx01193_0:
 .quad .Lx01193_0_s
.Lx01193_0_s:
 .string "rfact0"
 xchain01098_n01194_α:
 lea rsi, [rbp + 7280]
 call proc_report_dcα
 jmp .Lx01195_2
.Lx01195_2:
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain01098_n00007_α
 jmp xchain01098_n00007_α
 xchain01098_n01194_β:
 jmp xchain01098_n00007_α
.Lx01195_0:
 .quad .Lx01195_0_s
.Lx01195_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00007_α:
 mov rdi, qword ptr [rip + .Lx01196_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain01098_n01197_α
.Lx01196_0:
 .quad .Lx01196_0_s
.Lx01196_0_s:
 .string "rfact10"
 xchain01098_n01197_α:
 lea rsi, [rbp + 7200]
 call proc_report_dcα
 jmp .Lx01198_2
.Lx01198_2:
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain01098_n00008_α
 jmp xchain01098_n00008_α
 xchain01098_n01197_β:
 jmp xchain01098_n00008_α
.Lx01198_0:
 .quad .Lx01198_0_s
.Lx01198_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00008_α:
 mov rdi, qword ptr [rip + .Lx01199_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain01098_n01200_α
.Lx01199_0:
 .quad .Lx01199_0_s
.Lx01199_0_s:
 .string "rfib5"
 xchain01098_n01200_α:
 lea rsi, [rbp + 7120]
 call proc_report_dcα
 jmp .Lx01201_2
.Lx01201_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain01098_n00009_α
 jmp xchain01098_n00009_α
 xchain01098_n01200_β:
 jmp xchain01098_n00009_α
.Lx01201_0:
 .quad .Lx01201_0_s
.Lx01201_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00009_α:
 mov rdi, qword ptr [rip + .Lx01202_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain01098_n01203_α
.Lx01202_0:
 .quad .Lx01202_0_s
.Lx01202_0_s:
 .string "prslow"
 xchain01098_n01203_α:
 lea rsi, [rbp + 7040]
 call proc_report_dcα
 jmp .Lx01204_2
.Lx01204_2:
 mov qword ptr [rbp + 6992], rax
 mov qword ptr [rbp + 7000], rdx
 cmp eax, 99
 je xchain01098_n01205_α
 jmp xchain01098_n01205_α
 xchain01098_n01203_β:
 jmp xchain01098_n01205_α
.Lx01204_0:
 .quad .Lx01204_0_s
.Lx01204_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01205_α:
 mov rdi, qword ptr [rip + .Lx01206_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6960], rax
 mov qword ptr [rbp + 6968], rdx
 jmp xchain01098_n01207_α
.Lx01206_0:
 .quad .Lx01206_0_s
.Lx01206_0_s:
 .string "toreal"
 xchain01098_n01207_α:
 lea rsi, [rbp + 6960]
 call proc_report_dcα
 jmp .Lx01208_2
.Lx01208_2:
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain01098_n01209_α
 jmp xchain01098_n01209_α
 xchain01098_n01207_β:
 jmp xchain01098_n01209_α
.Lx01208_0:
 .quad .Lx01208_0_s
.Lx01208_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01209_α:
 mov rdi, qword ptr [rip + .Lx01210_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain01098_n01211_α
.Lx01210_0:
 .quad .Lx01210_0_s
.Lx01210_0_s:
 .string "realcoerce"
 xchain01098_n01211_α:
 lea rsi, [rbp + 6880]
 call proc_report_dcα
 jmp .Lx01212_2
.Lx01212_2:
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 cmp eax, 99
 je xchain01098_n01213_α
 jmp xchain01098_n01213_α
 xchain01098_n01211_β:
 jmp xchain01098_n01213_α
.Lx01212_0:
 .quad .Lx01212_0_s
.Lx01212_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01213_α:
 mov rdi, qword ptr [rip + .Lx01214_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain01098_n01215_α
.Lx01214_0:
 .quad .Lx01214_0_s
.Lx01214_0_s:
 .string "uplusr"
 xchain01098_n01215_α:
 lea rsi, [rbp + 6800]
 call proc_report_dcα
 jmp .Lx01216_2
.Lx01216_2:
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 cmp eax, 99
 je xchain01098_n01217_α
 jmp xchain01098_n01217_α
 xchain01098_n01215_β:
 jmp xchain01098_n01217_α
.Lx01216_0:
 .quad .Lx01216_0_s
.Lx01216_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01217_α:
 mov rdi, qword ptr [rip + .Lx01218_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain01098_n01219_α
.Lx01218_0:
 .quad .Lx01218_0_s
.Lx01218_0_s:
 .string "rtostring"
 xchain01098_n01219_α:
 lea rsi, [rbp + 6720]
 call proc_report_dcα
 jmp .Lx01220_2
.Lx01220_2:
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 cmp eax, 99
 je xchain01098_n01221_α
 jmp xchain01098_n01221_α
 xchain01098_n01219_β:
 jmp xchain01098_n01221_α
.Lx01220_0:
 .quad .Lx01220_0_s
.Lx01220_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01221_α:
 mov rdi, qword ptr [rip + .Lx01222_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 jmp xchain01098_n00010_α
.Lx01222_0:
 .quad .Lx01222_0_s
.Lx01222_0_s:
 .string "strcoercer"
 xchain01098_n00010_α:
 lea rsi, [rbp + 6640]
 call proc_report_dcα
 jmp .Lx01223_2
.Lx01223_2:
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain01098_n01224_α
 jmp xchain01098_n01224_α
 xchain01098_n00010_β:
 jmp xchain01098_n01224_α
.Lx01223_0:
 .quad .Lx01223_0_s
.Lx01223_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01224_α:
 mov rdi, qword ptr [rip + .Lx01225_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain01098_n01226_α
.Lx01225_0:
 .quad .Lx01225_0_s
.Lx01225_0_s:
 .string "realcmp"
 xchain01098_n01226_α:
 lea rsi, [rbp + 6560]
 call proc_report_dcα
 jmp .Lx01227_2
.Lx01227_2:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain01098_n01228_α
 jmp xchain01098_n01228_α
 xchain01098_n01226_β:
 jmp xchain01098_n01228_α
.Lx01227_0:
 .quad .Lx01227_0_s
.Lx01227_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01228_α:
 mov rdi, qword ptr [rip + .Lx01229_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain01098_n01230_α
.Lx01229_0:
 .quad .Lx01229_0_s
.Lx01229_0_s:
 .string "sqrtf"
 xchain01098_n01230_α:
 lea rsi, [rbp + 6480]
 call proc_report_dcα
 jmp .Lx01231_2
.Lx01231_2:
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain01098_n01232_α
 jmp xchain01098_n01232_α
 xchain01098_n01230_β:
 jmp xchain01098_n01232_α
.Lx01231_0:
 .quad .Lx01231_0_s
.Lx01231_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01232_α:
 mov rdi, qword ptr [rip + .Lx01233_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain01098_n00011_α
.Lx01233_0:
 .quad .Lx01233_0_s
.Lx01233_0_s:
 .string "cosf"
 xchain01098_n00011_α:
 lea rsi, [rbp + 6400]
 call proc_report_dcα
 jmp .Lx01234_2
.Lx01234_2:
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain01098_n01235_α
 jmp xchain01098_n01235_α
 xchain01098_n00011_β:
 jmp xchain01098_n01235_α
.Lx01234_0:
 .quad .Lx01234_0_s
.Lx01234_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01235_α:
 mov rdi, qword ptr [rip + .Lx01236_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain01098_n01237_α
.Lx01236_0:
 .quad .Lx01236_0_s
.Lx01236_0_s:
 .string "logf"
 xchain01098_n01237_α:
 lea rsi, [rbp + 6320]
 call proc_report_dcα
 jmp .Lx01238_2
.Lx01238_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain01098_n00012_α
 jmp xchain01098_n00012_α
 xchain01098_n01237_β:
 jmp xchain01098_n00012_α
.Lx01238_0:
 .quad .Lx01238_0_s
.Lx01238_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00012_α:
 mov rdi, qword ptr [rip + .Lx01239_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain01098_n01240_α
.Lx01239_0:
 .quad .Lx01239_0_s
.Lx01239_0_s:
 .string "charf"
 xchain01098_n01240_α:
 lea rsi, [rbp + 6240]
 call proc_report_dcα
 jmp .Lx01241_2
.Lx01241_2:
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain01098_n01242_α
 jmp xchain01098_n01242_α
 xchain01098_n01240_β:
 jmp xchain01098_n01242_α
.Lx01241_0:
 .quad .Lx01241_0_s
.Lx01241_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01242_α:
 mov rdi, qword ptr [rip + .Lx01243_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain01098_n00013_α
.Lx01243_0:
 .quad .Lx01243_0_s
.Lx01243_0_s:
 .string "ordf"
 xchain01098_n00013_α:
 lea rsi, [rbp + 6160]
 call proc_report_dcα
 jmp .Lx01244_2
.Lx01244_2:
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je xchain01098_n01245_α
 jmp xchain01098_n01245_α
 xchain01098_n00013_β:
 jmp xchain01098_n01245_α
.Lx01244_0:
 .quad .Lx01244_0_s
.Lx01244_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01245_α:
 mov rdi, qword ptr [rip + .Lx01246_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain01098_n00014_α
.Lx01246_0:
 .quad .Lx01246_0_s
.Lx01246_0_s:
 .string "strsize"
 xchain01098_n00014_α:
 lea rsi, [rbp + 6080]
 call proc_report_dcα
 jmp .Lx01247_2
.Lx01247_2:
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 cmp eax, 99
 je xchain01098_n01248_α
 jmp xchain01098_n01248_α
 xchain01098_n00014_β:
 jmp xchain01098_n01248_α
.Lx01247_0:
 .quad .Lx01247_0_s
.Lx01247_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01248_α:
 mov rdi, qword ptr [rip + .Lx01249_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain01098_n00015_α
.Lx01249_0:
 .quad .Lx01249_0_s
.Lx01249_0_s:
 .string "strpick"
 xchain01098_n00015_α:
 lea rsi, [rbp + 6000]
 call proc_report_dcα
 jmp .Lx01250_2
.Lx01250_2:
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 cmp eax, 99
 je xchain01098_n01251_α
 jmp xchain01098_n01251_α
 xchain01098_n00015_β:
 jmp xchain01098_n01251_α
.Lx01250_0:
 .quad .Lx01250_0_s
.Lx01250_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01251_α:
 mov rdi, qword ptr [rip + .Lx01252_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain01098_n01253_α
.Lx01252_0:
 .quad .Lx01252_0_s
.Lx01252_0_s:
 .string "strbang"
 xchain01098_n01253_α:
 lea rsi, [rbp + 5920]
 call proc_report_dcα
 jmp .Lx01254_2
.Lx01254_2:
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain01098_n01255_α
 jmp xchain01098_n01255_α
 xchain01098_n01253_β:
 jmp xchain01098_n01255_α
.Lx01254_0:
 .quad .Lx01254_0_s
.Lx01254_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01255_α:
 mov rdi, qword ptr [rip + .Lx01256_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain01098_n01257_α
.Lx01256_0:
 .quad .Lx01256_0_s
.Lx01256_0_s:
 .string "strsub"
 xchain01098_n01257_α:
 lea rsi, [rbp + 5840]
 call proc_report_dcα
 jmp .Lx01258_2
.Lx01258_2:
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain01098_n00016_α
 jmp xchain01098_n00016_α
 xchain01098_n01257_β:
 jmp xchain01098_n00016_α
.Lx01258_0:
 .quad .Lx01258_0_s
.Lx01258_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00016_α:
 mov rdi, qword ptr [rip + .Lx01259_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain01098_n00017_α
.Lx01259_0:
 .quad .Lx01259_0_s
.Lx01259_0_s:
 .string "substr"
 xchain01098_n00017_α:
 lea rsi, [rbp + 5760]
 call proc_report_dcα
 jmp .Lx01260_2
.Lx01260_2:
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain01098_n01261_α
 jmp xchain01098_n01261_α
 xchain01098_n00017_β:
 jmp xchain01098_n01261_α
.Lx01260_0:
 .quad .Lx01260_0_s
.Lx01260_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01261_α:
 mov rdi, qword ptr [rip + .Lx01262_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain01098_n00018_α
.Lx01262_0:
 .quad .Lx01262_0_s
.Lx01262_0_s:
 .string "subsasg"
 xchain01098_n00018_α:
 lea rsi, [rbp + 5680]
 call proc_report_dcα
 jmp .Lx01263_2
.Lx01263_2:
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain01098_n00019_α
 jmp xchain01098_n00019_α
 xchain01098_n00018_β:
 jmp xchain01098_n00019_α
.Lx01263_0:
 .quad .Lx01263_0_s
.Lx01263_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00019_α:
 mov rdi, qword ptr [rip + .Lx01264_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain01098_n01265_α
.Lx01264_0:
 .quad .Lx01264_0_s
.Lx01264_0_s:
 .string "strcmp"
 xchain01098_n01265_α:
 lea rsi, [rbp + 5600]
 call proc_report_dcα
 jmp .Lx01266_2
.Lx01266_2:
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain01098_n01267_α
 jmp xchain01098_n01267_α
 xchain01098_n01265_β:
 jmp xchain01098_n01267_α
.Lx01266_0:
 .quad .Lx01266_0_s
.Lx01266_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01267_α:
 mov rdi, qword ptr [rip + .Lx01268_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain01098_n00020_α
.Lx01268_0:
 .quad .Lx01268_0_s
.Lx01268_0_s:
 .string "strident"
 xchain01098_n00020_α:
 lea rsi, [rbp + 5520]
 call proc_report_dcα
 jmp .Lx01269_2
.Lx01269_2:
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain01098_n01270_α
 jmp xchain01098_n01270_α
 xchain01098_n00020_β:
 jmp xchain01098_n01270_α
.Lx01269_0:
 .quad .Lx01269_0_s
.Lx01269_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01270_α:
 mov rdi, qword ptr [rip + .Lx01271_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain01098_n01272_α
.Lx01271_0:
 .quad .Lx01271_0_s
.Lx01271_0_s:
 .string "concat"
 xchain01098_n01272_α:
 lea rsi, [rbp + 5440]
 call proc_report_dcα
 jmp .Lx01273_2
.Lx01273_2:
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain01098_n01274_α
 jmp xchain01098_n01274_α
 xchain01098_n01272_β:
 jmp xchain01098_n01274_α
.Lx01273_0:
 .quad .Lx01273_0_s
.Lx01273_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01274_α:
 mov rdi, qword ptr [rip + .Lx01275_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain01098_n01276_α
.Lx01275_0:
 .quad .Lx01275_0_s
.Lx01275_0_s:
 .string "reversef"
 xchain01098_n01276_α:
 lea rsi, [rbp + 5360]
 call proc_report_dcα
 jmp .Lx01277_2
.Lx01277_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain01098_n00021_α
 jmp xchain01098_n00021_α
 xchain01098_n01276_β:
 jmp xchain01098_n00021_α
.Lx01277_0:
 .quad .Lx01277_0_s
.Lx01277_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00021_α:
 mov rdi, qword ptr [rip + .Lx01278_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain01098_n00022_α
.Lx01278_0:
 .quad .Lx01278_0_s
.Lx01278_0_s:
 .string "trimf"
 xchain01098_n00022_α:
 lea rsi, [rbp + 5280]
 call proc_report_dcα
 jmp .Lx01279_2
.Lx01279_2:
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain01098_n01280_α
 jmp xchain01098_n01280_α
 xchain01098_n00022_β:
 jmp xchain01098_n01280_α
.Lx01279_0:
 .quad .Lx01279_0_s
.Lx01279_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01280_α:
 mov rdi, qword ptr [rip + .Lx01281_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain01098_n00023_α
.Lx01281_0:
 .quad .Lx01281_0_s
.Lx01281_0_s:
 .string "replf"
 xchain01098_n00023_α:
 lea rsi, [rbp + 5200]
 call proc_report_dcα
 jmp .Lx01282_2
.Lx01282_2:
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 cmp eax, 99
 je xchain01098_n00024_α
 jmp xchain01098_n00024_α
 xchain01098_n00023_β:
 jmp xchain01098_n00024_α
.Lx01282_0:
 .quad .Lx01282_0_s
.Lx01282_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00024_α:
 mov rdi, qword ptr [rip + .Lx01283_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain01098_n01284_α
.Lx01283_0:
 .quad .Lx01283_0_s
.Lx01283_0_s:
 .string "leftf"
 xchain01098_n01284_α:
 lea rsi, [rbp + 5120]
 call proc_report_dcα
 jmp .Lx01285_2
.Lx01285_2:
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je xchain01098_n01286_α
 jmp xchain01098_n01286_α
 xchain01098_n01284_β:
 jmp xchain01098_n01286_α
.Lx01285_0:
 .quad .Lx01285_0_s
.Lx01285_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01286_α:
 mov rdi, qword ptr [rip + .Lx01287_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain01098_n01288_α
.Lx01287_0:
 .quad .Lx01287_0_s
.Lx01287_0_s:
 .string "centerf"
 xchain01098_n01288_α:
 lea rsi, [rbp + 5040]
 call proc_report_dcα
 jmp .Lx01289_2
.Lx01289_2:
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 cmp eax, 99
 je xchain01098_n01290_α
 jmp xchain01098_n01290_α
 xchain01098_n01288_β:
 jmp xchain01098_n01290_α
.Lx01289_0:
 .quad .Lx01289_0_s
.Lx01289_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01290_α:
 mov rdi, qword ptr [rip + .Lx01291_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain01098_n01292_α
.Lx01291_0:
 .quad .Lx01291_0_s
.Lx01291_0_s:
 .string "rightf"
 xchain01098_n01292_α:
 lea rsi, [rbp + 4960]
 call proc_report_dcα
 jmp .Lx01293_2
.Lx01293_2:
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain01098_n01294_α
 jmp xchain01098_n01294_α
 xchain01098_n01292_β:
 jmp xchain01098_n01294_α
.Lx01293_0:
 .quad .Lx01293_0_s
.Lx01293_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01294_α:
 mov rdi, qword ptr [rip + .Lx01295_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp xchain01098_n00025_α
.Lx01295_0:
 .quad .Lx01295_0_s
.Lx01295_0_s:
 .string "entabf"
 xchain01098_n00025_α:
 lea rsi, [rbp + 4880]
 call proc_report_dcα
 jmp .Lx01296_2
.Lx01296_2:
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp eax, 99
 je xchain01098_n00026_α
 jmp xchain01098_n00026_α
 xchain01098_n00025_β:
 jmp xchain01098_n00026_α
.Lx01296_0:
 .quad .Lx01296_0_s
.Lx01296_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00026_α:
 mov rdi, qword ptr [rip + .Lx01297_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain01098_n01298_α
.Lx01297_0:
 .quad .Lx01297_0_s
.Lx01297_0_s:
 .string "detabf"
 xchain01098_n01298_α:
 lea rsi, [rbp + 4800]
 call proc_report_dcα
 jmp .Lx01299_2
.Lx01299_2:
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain01098_n01300_α
 jmp xchain01098_n01300_α
 xchain01098_n01298_β:
 jmp xchain01098_n01300_α
.Lx01299_0:
 .quad .Lx01299_0_s
.Lx01299_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01300_α:
 mov rdi, qword ptr [rip + .Lx01301_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain01098_n01302_α
.Lx01301_0:
 .quad .Lx01301_0_s
.Lx01301_0_s:
 .string "mapf"
 xchain01098_n01302_α:
 lea rsi, [rbp + 4720]
 call proc_report_dcα
 jmp .Lx01303_2
.Lx01303_2:
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain01098_n01304_α
 jmp xchain01098_n01304_α
 xchain01098_n01302_β:
 jmp xchain01098_n01304_α
.Lx01303_0:
 .quad .Lx01303_0_s
.Lx01303_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01304_α:
 mov rdi, qword ptr [rip + .Lx01305_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain01098_n01306_α
.Lx01305_0:
 .quad .Lx01305_0_s
.Lx01305_0_s:
 .string "map1"
 xchain01098_n01306_α:
 lea rsi, [rbp + 4640]
 call proc_report_dcα
 jmp .Lx01307_2
.Lx01307_2:
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 cmp eax, 99
 je xchain01098_n00027_α
 jmp xchain01098_n00027_α
 xchain01098_n01306_β:
 jmp xchain01098_n00027_α
.Lx01307_0:
 .quad .Lx01307_0_s
.Lx01307_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00027_α:
 mov rdi, qword ptr [rip + .Lx01308_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain01098_n00028_α
.Lx01308_0:
 .quad .Lx01308_0_s
.Lx01308_0_s:
 .string "map2"
 xchain01098_n00028_α:
 lea rsi, [rbp + 4560]
 call proc_report_dcα
 jmp .Lx01309_2
.Lx01309_2:
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain01098_n01310_α
 jmp xchain01098_n01310_α
 xchain01098_n00028_β:
 jmp xchain01098_n01310_α
.Lx01309_0:
 .quad .Lx01309_0_s
.Lx01309_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01310_α:
 mov rdi, qword ptr [rip + .Lx01311_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain01098_n00029_α
.Lx01311_0:
 .quad .Lx01311_0_s
.Lx01311_0_s:
 .string "tablemap"
 xchain01098_n00029_α:
 lea rsi, [rbp + 4480]
 call proc_report_dcα
 jmp .Lx01312_2
.Lx01312_2:
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain01098_n00030_α
 jmp xchain01098_n00030_α
 xchain01098_n00029_β:
 jmp xchain01098_n00030_α
.Lx01312_0:
 .quad .Lx01312_0_s
.Lx01312_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00030_α:
 mov rdi, qword ptr [rip + .Lx01313_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain01098_n01314_α
.Lx01313_0:
 .quad .Lx01313_0_s
.Lx01313_0_s:
 .string "listmap"
 xchain01098_n01314_α:
 lea rsi, [rbp + 4400]
 call proc_report_dcα
 jmp .Lx01315_2
.Lx01315_2:
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain01098_n01316_α
 jmp xchain01098_n01316_α
 xchain01098_n01314_β:
 jmp xchain01098_n01316_α
.Lx01315_0:
 .quad .Lx01315_0_s
.Lx01315_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01316_α:
 mov rdi, qword ptr [rip + .Lx01317_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain01098_n01318_α
.Lx01317_0:
 .quad .Lx01317_0_s
.Lx01317_0_s:
 .string "nullscan"
 xchain01098_n01318_α:
 lea rsi, [rbp + 4320]
 call proc_report_dcα
 jmp .Lx01319_2
.Lx01319_2:
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je xchain01098_n01320_α
 jmp xchain01098_n01320_α
 xchain01098_n01318_β:
 jmp xchain01098_n01320_α
.Lx01319_0:
 .quad .Lx01319_0_s
.Lx01319_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01320_α:
 mov rdi, qword ptr [rip + .Lx01321_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain01098_n01322_α
.Lx01321_0:
 .quad .Lx01321_0_s
.Lx01321_0_s:
 .string "movef"
 xchain01098_n01322_α:
 lea rsi, [rbp + 4240]
 call proc_report_dcα
 jmp .Lx01323_2
.Lx01323_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain01098_n01324_α
 jmp xchain01098_n01324_α
 xchain01098_n01322_β:
 jmp xchain01098_n01324_α
.Lx01323_0:
 .quad .Lx01323_0_s
.Lx01323_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01324_α:
 mov rdi, qword ptr [rip + .Lx01325_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain01098_n00031_α
.Lx01325_0:
 .quad .Lx01325_0_s
.Lx01325_0_s:
 .string "mov11"
 xchain01098_n00031_α:
 lea rsi, [rbp + 4160]
 call proc_report_dcα
 jmp .Lx01326_2
.Lx01326_2:
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain01098_n00032_α
 jmp xchain01098_n00032_α
 xchain01098_n00031_β:
 jmp xchain01098_n00032_α
.Lx01326_0:
 .quad .Lx01326_0_s
.Lx01326_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00032_α:
 mov rdi, qword ptr [rip + .Lx01327_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain01098_n01328_α
.Lx01327_0:
 .quad .Lx01327_0_s
.Lx01327_0_s:
 .string "pos11"
 xchain01098_n01328_α:
 lea rsi, [rbp + 4080]
 call proc_report_dcα
 jmp .Lx01329_2
.Lx01329_2:
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain01098_n01330_α
 jmp xchain01098_n01330_α
 xchain01098_n01328_β:
 jmp xchain01098_n01330_α
.Lx01329_0:
 .quad .Lx01329_0_s
.Lx01329_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01330_α:
 mov rdi, qword ptr [rip + .Lx01331_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain01098_n01332_α
.Lx01331_0:
 .quad .Lx01331_0_s
.Lx01331_0_s:
 .string "tabf"
 xchain01098_n01332_α:
 lea rsi, [rbp + 4000]
 call proc_report_dcα
 jmp .Lx01333_2
.Lx01333_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain01098_n01334_α
 jmp xchain01098_n01334_α
 xchain01098_n01332_β:
 jmp xchain01098_n01334_α
.Lx01333_0:
 .quad .Lx01333_0_s
.Lx01333_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01334_α:
 mov rdi, qword ptr [rip + .Lx01335_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain01098_n01336_α
.Lx01335_0:
 .quad .Lx01335_0_s
.Lx01335_0_s:
 .string "matchf"
 xchain01098_n01336_α:
 lea rsi, [rbp + 3920]
 call proc_report_dcα
 jmp .Lx01337_2
.Lx01337_2:
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain01098_n00033_α
 jmp xchain01098_n00033_α
 xchain01098_n01336_β:
 jmp xchain01098_n00033_α
.Lx01337_0:
 .quad .Lx01337_0_s
.Lx01337_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00033_α:
 mov rdi, qword ptr [rip + .Lx01338_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain01098_n00034_α
.Lx01338_0:
 .quad .Lx01338_0_s
.Lx01338_0_s:
 .string "tabmat"
 xchain01098_n00034_α:
 lea rsi, [rbp + 3840]
 call proc_report_dcα
 jmp .Lx01339_2
.Lx01339_2:
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je xchain01098_n01340_α
 jmp xchain01098_n01340_α
 xchain01098_n00034_β:
 jmp xchain01098_n01340_α
.Lx01339_0:
 .quad .Lx01339_0_s
.Lx01339_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01340_α:
 mov rdi, qword ptr [rip + .Lx01341_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain01098_n00035_α
.Lx01341_0:
 .quad .Lx01341_0_s
.Lx01341_0_s:
 .string "posf"
 xchain01098_n00035_α:
 lea rsi, [rbp + 3760]
 call proc_report_dcα
 jmp .Lx01342_2
.Lx01342_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain01098_n00036_α
 jmp xchain01098_n00036_α
 xchain01098_n00035_β:
 jmp xchain01098_n00036_α
.Lx01342_0:
 .quad .Lx01342_0_s
.Lx01342_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00036_α:
 mov rdi, qword ptr [rip + .Lx01343_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain01098_n01344_α
.Lx01343_0:
 .quad .Lx01343_0_s
.Lx01343_0_s:
 .string "anyf"
 xchain01098_n01344_α:
 lea rsi, [rbp + 3680]
 call proc_report_dcα
 jmp .Lx01345_2
.Lx01345_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain01098_n01346_α
 jmp xchain01098_n01346_α
 xchain01098_n01344_β:
 jmp xchain01098_n01346_α
.Lx01345_0:
 .quad .Lx01345_0_s
.Lx01345_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01346_α:
 mov rdi, qword ptr [rip + .Lx01347_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain01098_n01348_α
.Lx01347_0:
 .quad .Lx01347_0_s
.Lx01347_0_s:
 .string "manyf"
 xchain01098_n01348_α:
 lea rsi, [rbp + 3600]
 call proc_report_dcα
 jmp .Lx01349_2
.Lx01349_2:
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain01098_n01350_α
 jmp xchain01098_n01350_α
 xchain01098_n01348_β:
 jmp xchain01098_n01350_α
.Lx01349_0:
 .quad .Lx01349_0_s
.Lx01349_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01350_α:
 mov rdi, qword ptr [rip + .Lx01351_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain01098_n01352_α
.Lx01351_0:
 .quad .Lx01351_0_s
.Lx01351_0_s:
 .string "uptof"
 xchain01098_n01352_α:
 lea rsi, [rbp + 3520]
 call proc_report_dcα
 jmp .Lx01353_2
.Lx01353_2:
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain01098_n01354_α
 jmp xchain01098_n01354_α
 xchain01098_n01352_β:
 jmp xchain01098_n01354_α
.Lx01353_0:
 .quad .Lx01353_0_s
.Lx01353_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01354_α:
 mov rdi, qword ptr [rip + .Lx01355_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain01098_n00037_α
.Lx01355_0:
 .quad .Lx01355_0_s
.Lx01355_0_s:
 .string "findf"
 xchain01098_n00037_α:
 lea rsi, [rbp + 3440]
 call proc_report_dcα
 jmp .Lx01356_2
.Lx01356_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain01098_n00038_α
 jmp xchain01098_n00038_α
 xchain01098_n00037_β:
 jmp xchain01098_n00038_α
.Lx01356_0:
 .quad .Lx01356_0_s
.Lx01356_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00038_α:
 mov rdi, qword ptr [rip + .Lx01357_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain01098_n01358_α
.Lx01357_0:
 .quad .Lx01357_0_s
.Lx01357_0_s:
 .string "balf"
 xchain01098_n01358_α:
 lea rsi, [rbp + 3360]
 call proc_report_dcα
 jmp .Lx01359_2
.Lx01359_2:
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je xchain01098_n01360_α
 jmp xchain01098_n01360_α
 xchain01098_n01358_β:
 jmp xchain01098_n01360_α
.Lx01359_0:
 .quad .Lx01359_0_s
.Lx01359_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01360_α:
 mov rdi, qword ptr [rip + .Lx01361_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain01098_n01362_α
.Lx01361_0:
 .quad .Lx01361_0_s
.Lx01361_0_s:
 .string "tocset"
 xchain01098_n01362_α:
 lea rsi, [rbp + 3280]
 call proc_report_dcα
 jmp .Lx01363_2
.Lx01363_2:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain01098_n01364_α
 jmp xchain01098_n01364_α
 xchain01098_n01362_β:
 jmp xchain01098_n01364_α
.Lx01363_0:
 .quad .Lx01363_0_s
.Lx01363_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01364_α:
 mov rdi, qword ptr [rip + .Lx01365_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain01098_n01366_α
.Lx01365_0:
 .quad .Lx01365_0_s
.Lx01365_0_s:
 .string "cssize"
 xchain01098_n01366_α:
 lea rsi, [rbp + 3200]
 call proc_report_dcα
 jmp .Lx01367_2
.Lx01367_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain01098_n00039_α
 jmp xchain01098_n00039_α
 xchain01098_n01366_β:
 jmp xchain01098_n00039_α
.Lx01367_0:
 .quad .Lx01367_0_s
.Lx01367_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00039_α:
 mov rdi, qword ptr [rip + .Lx01368_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain01098_n00040_α
.Lx01368_0:
 .quad .Lx01368_0_s
.Lx01368_0_s:
 .string "cscompl"
 xchain01098_n00040_α:
 lea rsi, [rbp + 3120]
 call proc_report_dcα
 jmp .Lx01369_2
.Lx01369_2:
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain01098_n01370_α
 jmp xchain01098_n01370_α
 xchain01098_n00040_β:
 jmp xchain01098_n01370_α
.Lx01369_0:
 .quad .Lx01369_0_s
.Lx01369_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01370_α:
 mov rdi, qword ptr [rip + .Lx01371_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain01098_n00041_α
.Lx01371_0:
 .quad .Lx01371_0_s
.Lx01371_0_s:
 .string "lcreate"
 xchain01098_n00041_α:
 lea rsi, [rbp + 3040]
 call proc_report_dcα
 jmp .Lx01372_2
.Lx01372_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain01098_n00042_α
 jmp xchain01098_n00042_α
 xchain01098_n00041_β:
 jmp xchain01098_n00042_α
.Lx01372_0:
 .quad .Lx01372_0_s
.Lx01372_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00042_α:
 mov rdi, qword ptr [rip + .Lx01373_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain01098_n01374_α
.Lx01373_0:
 .quad .Lx01373_0_s
.Lx01373_0_s:
 .string "lconst"
 xchain01098_n01374_α:
 lea rsi, [rbp + 2960]
 call proc_report_dcα
 jmp .Lx01375_2
.Lx01375_2:
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain01098_n01376_α
 jmp xchain01098_n01376_α
 xchain01098_n01374_β:
 jmp xchain01098_n01376_α
.Lx01375_0:
 .quad .Lx01375_0_s
.Lx01375_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01376_α:
 mov rdi, qword ptr [rip + .Lx01377_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain01098_n01378_α
.Lx01377_0:
 .quad .Lx01377_0_s
.Lx01377_0_s:
 .string "lcopy"
 xchain01098_n01378_α:
 lea rsi, [rbp + 2880]
 call proc_report_dcα
 jmp .Lx01379_2
.Lx01379_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain01098_n01380_α
 jmp xchain01098_n01380_α
 xchain01098_n01378_β:
 jmp xchain01098_n01380_α
.Lx01379_0:
 .quad .Lx01379_0_s
.Lx01379_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01380_α:
 mov rdi, qword ptr [rip + .Lx01381_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain01098_n01382_α
.Lx01381_0:
 .quad .Lx01381_0_s
.Lx01381_0_s:
 .string "lsort"
 xchain01098_n01382_α:
 lea rsi, [rbp + 2800]
 call proc_report_dcα
 jmp .Lx01383_2
.Lx01383_2:
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain01098_n01384_α
 jmp xchain01098_n01384_α
 xchain01098_n01382_β:
 jmp xchain01098_n01384_α
.Lx01383_0:
 .quad .Lx01383_0_s
.Lx01383_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01384_α:
 mov rdi, qword ptr [rip + .Lx01385_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain01098_n00043_α
.Lx01385_0:
 .quad .Lx01385_0_s
.Lx01385_0_s:
 .string "lsize"
 xchain01098_n00043_α:
 lea rsi, [rbp + 2720]
 call proc_report_dcα
 jmp .Lx01386_2
.Lx01386_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain01098_n00044_α
 jmp xchain01098_n00044_α
 xchain01098_n00043_β:
 jmp xchain01098_n00044_α
.Lx01386_0:
 .quad .Lx01386_0_s
.Lx01386_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00044_α:
 mov rdi, qword ptr [rip + .Lx01387_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain01098_n01388_α
.Lx01387_0:
 .quad .Lx01387_0_s
.Lx01387_0_s:
 .string "lpick"
 xchain01098_n01388_α:
 lea rsi, [rbp + 2640]
 call proc_report_dcα
 jmp .Lx01389_2
.Lx01389_2:
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain01098_n01390_α
 jmp xchain01098_n01390_α
 xchain01098_n01388_β:
 jmp xchain01098_n01390_α
.Lx01389_0:
 .quad .Lx01389_0_s
.Lx01389_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01390_α:
 mov rdi, qword ptr [rip + .Lx01391_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain01098_n01392_α
.Lx01391_0:
 .quad .Lx01391_0_s
.Lx01391_0_s:
 .string "lbang"
 xchain01098_n01392_α:
 lea rsi, [rbp + 2560]
 call proc_report_dcα
 jmp .Lx01393_2
.Lx01393_2:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain01098_n00045_α
 jmp xchain01098_n00045_α
 xchain01098_n01392_β:
 jmp xchain01098_n00045_α
.Lx01393_0:
 .quad .Lx01393_0_s
.Lx01393_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00045_α:
 mov rdi, qword ptr [rip + .Lx01394_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain01098_n01395_α
.Lx01394_0:
 .quad .Lx01394_0_s
.Lx01394_0_s:
 .string "lsubscr"
 xchain01098_n01395_α:
 lea rsi, [rbp + 2480]
 call proc_report_dcα
 jmp .Lx01396_2
.Lx01396_2:
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain01098_n01397_α
 jmp xchain01098_n01397_α
 xchain01098_n01395_β:
 jmp xchain01098_n01397_α
.Lx01396_0:
 .quad .Lx01396_0_s
.Lx01396_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01397_α:
 mov rdi, qword ptr [rip + .Lx01398_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain01098_n01399_α
.Lx01398_0:
 .quad .Lx01398_0_s
.Lx01398_0_s:
 .string "put1get1"
 xchain01098_n01399_α:
 lea rsi, [rbp + 2400]
 call proc_report_dcα
 jmp .Lx01400_2
.Lx01400_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain01098_n01401_α
 jmp xchain01098_n01401_α
 xchain01098_n01399_β:
 jmp xchain01098_n01401_α
.Lx01400_0:
 .quad .Lx01400_0_s
.Lx01400_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01401_α:
 mov rdi, qword ptr [rip + .Lx01402_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain01098_n00046_α
.Lx01402_0:
 .quad .Lx01402_0_s
.Lx01402_0_s:
 .string "put2get2"
 xchain01098_n00046_α:
 lea rsi, [rbp + 2320]
 call proc_report_dcα
 jmp .Lx01403_2
.Lx01403_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain01098_n00047_α
 jmp xchain01098_n00047_α
 xchain01098_n00046_β:
 jmp xchain01098_n00047_α
.Lx01403_0:
 .quad .Lx01403_0_s
.Lx01403_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00047_α:
 mov rdi, qword ptr [rip + .Lx01404_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain01098_n01405_α
.Lx01404_0:
 .quad .Lx01404_0_s
.Lx01404_0_s:
 .string "put3get3"
 xchain01098_n01405_α:
 lea rsi, [rbp + 2240]
 call proc_report_dcα
 jmp .Lx01406_2
.Lx01406_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain01098_n00048_α
 jmp xchain01098_n00048_α
 xchain01098_n01405_β:
 jmp xchain01098_n00048_α
.Lx01406_0:
 .quad .Lx01406_0_s
.Lx01406_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00048_α:
 mov rdi, qword ptr [rip + .Lx01407_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain01098_n00049_α
.Lx01407_0:
 .quad .Lx01407_0_s
.Lx01407_0_s:
 .string "put4get4"
 xchain01098_n00049_α:
 lea rsi, [rbp + 2160]
 call proc_report_dcα
 jmp .Lx01408_2
.Lx01408_2:
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain01098_n01409_α
 jmp xchain01098_n01409_α
 xchain01098_n00049_β:
 jmp xchain01098_n01409_α
.Lx01408_0:
 .quad .Lx01408_0_s
.Lx01408_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01409_α:
 mov rdi, qword ptr [rip + .Lx01410_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain01098_n01411_α
.Lx01410_0:
 .quad .Lx01410_0_s
.Lx01410_0_s:
 .string "pushpop"
 xchain01098_n01411_α:
 lea rsi, [rbp + 2080]
 call proc_report_dcα
 jmp .Lx01412_2
.Lx01412_2:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain01098_n01413_α
 jmp xchain01098_n01413_α
 xchain01098_n01411_β:
 jmp xchain01098_n01413_α
.Lx01412_0:
 .quad .Lx01412_0_s
.Lx01412_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01413_α:
 mov rdi, qword ptr [rip + .Lx01414_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain01098_n01415_α
.Lx01414_0:
 .quad .Lx01414_0_s
.Lx01414_0_s:
 .string "putget12"
 xchain01098_n01415_α:
 lea rsi, [rbp + 2000]
 call proc_report_dcα
 jmp .Lx01416_2
.Lx01416_2:
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain01098_n01417_α
 jmp xchain01098_n01417_α
 xchain01098_n01415_β:
 jmp xchain01098_n01417_α
.Lx01416_0:
 .quad .Lx01416_0_s
.Lx01416_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01417_α:
 mov rdi, qword ptr [rip + .Lx01418_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain01098_n01419_α
.Lx01418_0:
 .quad .Lx01418_0_s
.Lx01418_0_s:
 .string "pushpop12"
 xchain01098_n01419_α:
 lea rsi, [rbp + 1920]
 call proc_report_dcα
 jmp .Lx01420_2
.Lx01420_2:
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain01098_n00050_α
 jmp xchain01098_n00050_α
 xchain01098_n01419_β:
 jmp xchain01098_n00050_α
.Lx01420_0:
 .quad .Lx01420_0_s
.Lx01420_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00050_α:
 mov rdi, qword ptr [rip + .Lx01421_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain01098_n00051_α
.Lx01421_0:
 .quad .Lx01421_0_s
.Lx01421_0_s:
 .string "setcreate"
 xchain01098_n00051_α:
 lea rsi, [rbp + 1840]
 call proc_report_dcα
 jmp .Lx01422_2
.Lx01422_2:
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain01098_n01423_α
 jmp xchain01098_n01423_α
 xchain01098_n00051_β:
 jmp xchain01098_n01423_α
.Lx01422_0:
 .quad .Lx01422_0_s
.Lx01422_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01423_α:
 mov rdi, qword ptr [rip + .Lx01424_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain01098_n01425_α
.Lx01424_0:
 .quad .Lx01424_0_s
.Lx01424_0_s:
 .string "setcopy"
 xchain01098_n01425_α:
 lea rsi, [rbp + 1760]
 call proc_report_dcα
 jmp .Lx01426_2
.Lx01426_2:
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain01098_n01427_α
 jmp xchain01098_n01427_α
 xchain01098_n01425_β:
 jmp xchain01098_n01427_α
.Lx01426_0:
 .quad .Lx01426_0_s
.Lx01426_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01427_α:
 mov rdi, qword ptr [rip + .Lx01428_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain01098_n01429_α
.Lx01428_0:
 .quad .Lx01428_0_s
.Lx01428_0_s:
 .string "setmember"
 xchain01098_n01429_α:
 lea rsi, [rbp + 1680]
 call proc_report_dcα
 jmp .Lx01430_2
.Lx01430_2:
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain01098_n01431_α
 jmp xchain01098_n01431_α
 xchain01098_n01429_β:
 jmp xchain01098_n01431_α
.Lx01430_0:
 .quad .Lx01430_0_s
.Lx01430_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01431_α:
 mov rdi, qword ptr [rip + .Lx01432_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain01098_n00052_α
.Lx01432_0:
 .quad .Lx01432_0_s
.Lx01432_0_s:
 .string "setinsert"
 xchain01098_n00052_α:
 lea rsi, [rbp + 1600]
 call proc_report_dcα
 jmp .Lx01433_2
.Lx01433_2:
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain01098_n00053_α
 jmp xchain01098_n00053_α
 xchain01098_n00052_β:
 jmp xchain01098_n00053_α
.Lx01433_0:
 .quad .Lx01433_0_s
.Lx01433_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00053_α:
 mov rdi, qword ptr [rip + .Lx01434_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain01098_n01435_α
.Lx01434_0:
 .quad .Lx01434_0_s
.Lx01434_0_s:
 .string "setinsdel"
 xchain01098_n01435_α:
 lea rsi, [rbp + 1520]
 call proc_report_dcα
 jmp .Lx01436_2
.Lx01436_2:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain01098_n00054_α
 jmp xchain01098_n00054_α
 xchain01098_n01435_β:
 jmp xchain01098_n00054_α
.Lx01436_0:
 .quad .Lx01436_0_s
.Lx01436_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00054_α:
 mov rdi, qword ptr [rip + .Lx01437_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain01098_n00055_α
.Lx01437_0:
 .quad .Lx01437_0_s
.Lx01437_0_s:
 .string "setbang"
 xchain01098_n00055_α:
 lea rsi, [rbp + 1440]
 call proc_report_dcα
 jmp .Lx01438_2
.Lx01438_2:
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain01098_n01439_α
 jmp xchain01098_n01439_α
 xchain01098_n00055_β:
 jmp xchain01098_n01439_α
.Lx01438_0:
 .quad .Lx01438_0_s
.Lx01438_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01439_α:
 mov rdi, qword ptr [rip + .Lx01440_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain01098_n01441_α
.Lx01440_0:
 .quad .Lx01440_0_s
.Lx01440_0_s:
 .string "setpick"
 xchain01098_n01441_α:
 lea rsi, [rbp + 1360]
 call proc_report_dcα
 jmp .Lx01442_2
.Lx01442_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain01098_n01443_α
 jmp xchain01098_n01443_α
 xchain01098_n01441_β:
 jmp xchain01098_n01443_α
.Lx01442_0:
 .quad .Lx01442_0_s
.Lx01442_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01443_α:
 mov rdi, qword ptr [rip + .Lx01444_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain01098_n01445_α
.Lx01444_0:
 .quad .Lx01444_0_s
.Lx01444_0_s:
 .string "tblcreate"
 xchain01098_n01445_α:
 lea rsi, [rbp + 1280]
 call proc_report_dcα
 jmp .Lx01446_2
.Lx01446_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain01098_n01447_α
 jmp xchain01098_n01447_α
 xchain01098_n01445_β:
 jmp xchain01098_n01447_α
.Lx01446_0:
 .quad .Lx01446_0_s
.Lx01446_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01447_α:
 mov rdi, qword ptr [rip + .Lx01448_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain01098_n01449_α
.Lx01448_0:
 .quad .Lx01448_0_s
.Lx01448_0_s:
 .string "tblsub"
 xchain01098_n01449_α:
 lea rsi, [rbp + 1200]
 call proc_report_dcα
 jmp .Lx01450_2
.Lx01450_2:
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain01098_n00056_α
 jmp xchain01098_n00056_α
 xchain01098_n01449_β:
 jmp xchain01098_n00056_α
.Lx01450_0:
 .quad .Lx01450_0_s
.Lx01450_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00056_α:
 mov rdi, qword ptr [rip + .Lx01451_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain01098_n00057_α
.Lx01451_0:
 .quad .Lx01451_0_s
.Lx01451_0_s:
 .string "tblasgn"
 xchain01098_n00057_α:
 lea rsi, [rbp + 1120]
 call proc_report_dcα
 jmp .Lx01452_2
.Lx01452_2:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain01098_n01453_α
 jmp xchain01098_n01453_α
 xchain01098_n00057_β:
 jmp xchain01098_n01453_α
.Lx01452_0:
 .quad .Lx01452_0_s
.Lx01452_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01453_α:
 mov rdi, qword ptr [rip + .Lx01454_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain01098_n01455_α
.Lx01454_0:
 .quad .Lx01454_0_s
.Lx01454_0_s:
 .string "recconstr"
 xchain01098_n01455_α:
 lea rsi, [rbp + 1040]
 call proc_report_dcα
 jmp .Lx01456_2
.Lx01456_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain01098_n01457_α
 jmp xchain01098_n01457_α
 xchain01098_n01455_β:
 jmp xchain01098_n01457_α
.Lx01456_0:
 .quad .Lx01456_0_s
.Lx01456_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01457_α:
 mov rdi, qword ptr [rip + .Lx01458_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain01098_n00058_α
.Lx01458_0:
 .quad .Lx01458_0_s
.Lx01458_0_s:
 .string "reccopy"
 xchain01098_n00058_α:
 lea rsi, [rbp + 960]
 call proc_report_dcα
 jmp .Lx01459_2
.Lx01459_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain01098_n00059_α
 jmp xchain01098_n00059_α
 xchain01098_n00058_β:
 jmp xchain01098_n00059_α
.Lx01459_0:
 .quad .Lx01459_0_s
.Lx01459_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00059_α:
 mov rdi, qword ptr [rip + .Lx01460_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain01098_n00060_α
.Lx01460_0:
 .quad .Lx01460_0_s
.Lx01460_0_s:
 .string "recfield"
 xchain01098_n00060_α:
 lea rsi, [rbp + 880]
 call proc_report_dcα
 jmp .Lx01461_2
.Lx01461_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain01098_n01462_α
 jmp xchain01098_n01462_α
 xchain01098_n00060_β:
 jmp xchain01098_n01462_α
.Lx01461_0:
 .quad .Lx01461_0_s
.Lx01461_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01462_α:
 mov rdi, qword ptr [rip + .Lx01463_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain01098_n01464_α
.Lx01463_0:
 .quad .Lx01463_0_s
.Lx01463_0_s:
 .string "bigfield"
 xchain01098_n01464_α:
 lea rsi, [rbp + 800]
 call proc_report_dcα
 jmp .Lx01465_2
.Lx01465_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain01098_n00061_α
 jmp xchain01098_n00061_α
 xchain01098_n01464_β:
 jmp xchain01098_n00061_α
.Lx01465_0:
 .quad .Lx01465_0_s
.Lx01465_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00061_α:
 mov rdi, qword ptr [rip + .Lx01466_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain01098_n00062_α
.Lx01466_0:
 .quad .Lx01466_0_s
.Lx01466_0_s:
 .string "readz"
 xchain01098_n00062_α:
 lea rsi, [rbp + 720]
 call proc_report_dcα
 jmp .Lx01467_2
.Lx01467_2:
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain01098_n01468_α
 jmp xchain01098_n01468_α
 xchain01098_n00062_β:
 jmp xchain01098_n01468_α
.Lx01467_0:
 .quad .Lx01467_0_s
.Lx01467_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01468_α:
 mov rdi, qword ptr [rip + .Lx01469_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain01098_n00063_α
.Lx01469_0:
 .quad .Lx01469_0_s
.Lx01469_0_s:
 .string "writecon"
 xchain01098_n00063_α:
 lea rsi, [rbp + 640]
 call proc_report_dcα
 jmp .Lx01470_2
.Lx01470_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain01098_n00064_α
 jmp xchain01098_n00064_α
 xchain01098_n00063_β:
 jmp xchain01098_n00064_α
.Lx01470_0:
 .quad .Lx01470_0_s
.Lx01470_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00064_α:
 mov rdi, qword ptr [rip + .Lx01471_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain01098_n01472_α
.Lx01471_0:
 .quad .Lx01471_0_s
.Lx01471_0_s:
 .string "writestr"
 xchain01098_n01472_α:
 lea rsi, [rbp + 560]
 call proc_report_dcα
 jmp .Lx01473_2
.Lx01473_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain01098_n01474_α
 jmp xchain01098_n01474_α
 xchain01098_n01472_β:
 jmp xchain01098_n01474_α
.Lx01473_0:
 .quad .Lx01473_0_s
.Lx01473_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01474_α:
 mov rdi, qword ptr [rip + .Lx01475_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain01098_n01476_α
.Lx01475_0:
 .quad .Lx01475_0_s
.Lx01475_0_s:
 .string "cxcreate"
 xchain01098_n01476_α:
 lea rsi, [rbp + 480]
 call proc_report_dcα
 jmp .Lx01477_2
.Lx01477_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain01098_n01478_α
 jmp xchain01098_n01478_α
 xchain01098_n01476_β:
 jmp xchain01098_n01478_α
.Lx01477_0:
 .quad .Lx01477_0_s
.Lx01477_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01478_α:
 mov rdi, qword ptr [rip + .Lx01479_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain01098_n01480_α
.Lx01479_0:
 .quad .Lx01479_0_s
.Lx01479_0_s:
 .string "cxget"
 xchain01098_n01480_α:
 lea rsi, [rbp + 400]
 call proc_report_dcα
 jmp .Lx01481_2
.Lx01481_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain01098_n01482_α
 jmp xchain01098_n01482_α
 xchain01098_n01480_β:
 jmp xchain01098_n01482_α
.Lx01481_0:
 .quad .Lx01481_0_s
.Lx01481_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01482_α:
 mov rdi, qword ptr [rip + .Lx01483_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain01098_n00065_α
.Lx01483_0:
 .quad .Lx01483_0_s
.Lx01483_0_s:
 .string "nothing"
 xchain01098_n00065_α:
 lea rsi, [rbp + 320]
 call proc_report_dcα
 jmp .Lx01484_2
.Lx01484_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain01098_n00066_α
 jmp xchain01098_n00066_α
 xchain01098_n00065_β:
 jmp xchain01098_n00066_α
.Lx01484_0:
 .quad .Lx01484_0_s
.Lx01484_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n00066_α:
 mov rdi, qword ptr [rip + .Lx01485_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain01098_n01486_α
.Lx01485_0:
 .quad .Lx01485_0_s
.Lx01485_0_s:
 .string "nothing"
 xchain01098_n01486_α:
 lea rsi, [rbp + 240]
 call proc_report_dcα
 jmp .Lx01487_2
.Lx01487_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain01098_n01488_α
 jmp xchain01098_n01488_α
 xchain01098_n01486_β:
 jmp xchain01098_n01488_α
.Lx01487_0:
 .quad .Lx01487_0_s
.Lx01487_0_s:
 .string "report"
# IR_PROC_VALUE
 xchain01098_n01488_α:
 mov rdi, qword ptr [rip + .Lx01489_0]
 call rt_proc_value@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain01098_n01490_α
.Lx01489_0:
 .quad .Lx01489_0_s
.Lx01489_0_s:
 .string "nothing"
 xchain01098_n01490_α:
 lea rsi, [rbp + 160]
 call proc_report_dcα
 jmp .Lx01491_2
.Lx01491_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain01098_n00067_α
 jmp xchain01098_n00067_α
 xchain01098_n01490_β:
 jmp xchain01098_n00067_α
.Lx01491_0:
 .quad .Lx01491_0_s
.Lx01491_0_s:
 .string "report"
# KEYWORD_read
 xchain01098_n00067_α:
 mov rdi, qword ptr [rip + .Lx01492_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je main_ω
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain01098_n00068_α
 xchain01098_n00067_β:
 jmp main_ω
.Lx01492_0:
 .quad .Lx01492_0_s
.Lx01492_0_s:
 .string "&errout"
 xchain01098_n00068_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn3829: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn3829]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain01098_n00068_β:
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
